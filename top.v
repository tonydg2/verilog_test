`timescale 1ns / 1ps  
module top #(      // # is used for parameters in module declaration and instantiation
  parameter par1 = 0, // parameter (generic)
  parameter par2 = 0,  
  parameter par3 = 0
) (
  input       clk,
  input       rst,
  input       in1,
  output  reg out1,
  output  reg out2
);


  // localparam

  // wire

  // reg

  //-----------------------------------------------------------------------------
  // instantiations
  //-----------------------------------------------------------------------------


  //-----------------------------------------------------------------------------
  // logic
  //-----------------------------------------------------------------------------

  always @ (posedge clk) // sync reset
  begin
    if (rst)
      out1 <= 0;
    else begin
      out1 <= in1;
    end
  end 



endmodule