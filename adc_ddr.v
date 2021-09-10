`timescale 1ns / 1ps  
module adc_ddr (
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
  wire  [ 7:0]    adc_ibuf;
  wire  [ 7:0]    adc_idelay;
  wire  [15:0]    adc_data_w;
  // reg
  reg   [15:0]    adc_data_r;

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



  //-----------------------------------------------------------------------------
  // ADC DDR data
  //-----------------------------------------------------------------------------

  // IBUFDS
  genvar i;
  generate
    for (i = 0; i < 8; i = i + 1) begin
      IBUFDS adc_ibufds (
        .O(adc_ibuf[i]),
        .I(adc_p[i]),
        .IB(adc_n[i])
      );
    end 
  endgenerate

  // IDELAY
  generate
    for (i = 0; i < 8; i = i + 1) begin  
      IDELAYE3 #(
        .CASCADE("NONE"),
        .DELAY_FORMAT("COUNT"),
        .DELAY_SRC("IDATAIN"),
        .DELAY_TYPE("FIXED"),
        .DELAY_VALUE(0),
        .IS_CLK_INVERTED(1'b0),
        .IS_RST_INVERTED(1'b0),
        .REFCLK_FREQUENCY(300.0),
        .SIM_DEVICE("ULTRASCALE_PLUS"),
        .UPDATE_MODE("ASYNC")
      ) IDELAYE3_inst (
        .CASC_OUT(),
        .CNTVALUEOUT(),
        .DATAOUT(adc_idelay[i]),
        .CASC_IN(1'b0),
        .CASC_RETURN(1'b0),
        .CE(1'b0),
        .CLK(clk),
        .CNTVALUEIN(1'b0),
        .DATAIN(1'b0),
        .EN_VTC(1'b0),
        .IDATAIN(adc_ibuf[i]),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(rst)
      );
    end 
  endgenerate


  // IDDR
  generate
    for (i = 0; i < 8; i = i + 1) begin  
      IDDRE1 #(
        .DDR_CLK_EDGE("SAME_EDGE"), // IDDRE1 mode (OPPOSITE_EDGE, SAME_EDGE, SAME_EDGE_PIPELINED)
        .IS_CB_INVERTED(1'b0),  // Optional inversion for CB
        .IS_C_INVERTED(1'b0)    // Optional inversion for C
      )
      IDDRE1_inst (
        .Q1(adc_data_w[2*i]),     // 1-bit output: Registered parallel output 1
        .Q2(adc_data_w[2*i + 1]), // 1-bit output: Registered parallel output 2
        .C(clk),                // 1-bit input: High-speed clock
        .CB(~clk),              // 1-bit input: Inversion of High-speed clock C
        .D(adc_idelay[i]),      // 1-bit input: Serial Data Input
        .R(rst)                 // 1-bit input: Active-High Async Reset
      );
    end 
  endgenerate

  //assign adc_data_r = adc_data_w;

  always @(posedge clk) begin
    adc_data <= adc_data_w;
  end

endmodule