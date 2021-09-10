`timescale 1ns / 1ps  
module top #(      // # is used for parameters in module declaration and instantiation
  parameter par1 = 0, // parameter (generic)
  parameter par2 = 0,  
  parameter par3 = 0
) (
  input               clk,
  input               rst,
  input               in1,
  input               adc_clk,
  input       [ 7:0]  adc_p,  // ddr data interface, ibuf -> idelay -> iddr
  input       [ 7:0]  adc_n,
  output  reg [15:0]  adc_data,
  output  reg         out1,
  output  reg         out2
);


  // localparam (local constant)

  // wire

  // reg
  
  // xilinx attribute ASYNC_REG : ensure the flops are placed closely together (UG912)
  (* ASYNC_REG = "TRUE" *) reg [1:0]   sync_reg_sr;

  //-----------------------------------------------------------------------------
  // instantiations
  //-----------------------------------------------------------------------------
  adc_ddr adc_ddr(
    .clk        (clk),
    //.refclk     (ref_clk300),
    .rst        (rst),
    .in1        (1'b0),
    .adc_clk    (clk),
    .adc_p      (adc_p),
    .adc_n      (adc_n),
    .adc_data   (),
    .out1       (), // unconnected (open)
    .out2       () 
  );

  //-----------------------------------------------------------------------------
  // logic
  //-----------------------------------------------------------------------------

  // shift reg
  always @ (posedge clk) // sync reset
  begin
    if (rst)
      sync_reg_sr <= 0;
    else 
      sync_reg_sr <= {sync_reg_sr[0], in1};
  end 

  
  always @ (posedge clk) // sync reset
  begin
    if (rst)
      out1 <= 0;
    else 
      out1 <= in1;
  end 






endmodule