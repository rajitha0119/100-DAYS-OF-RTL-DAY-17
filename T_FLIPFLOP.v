`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2023 18:01:14
// Design Name: 
// Module Name: T_FLIPFLOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module T_FLIPFLOP(
    input t,
    input clk,
    input reset,
    output reg q
    );
  always@(posedge clk,negedge clk)
  begin
  if(reset)
  q<=1'b0;
  else
  begin
  if(t)
  q<=~q;
  else
  q<=q;
  end
  end
  endmodule
