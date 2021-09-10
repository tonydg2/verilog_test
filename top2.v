`timescale 1ns / 1ps  
module top2 (
  input               clk,
  input               rst,
  input               in1,
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