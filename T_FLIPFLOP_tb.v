`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2023 09:28:34
// Design Name: 
// Module Name: T_FLIPFLOP_tb
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


module T_FLIPFLOP_tb();
reg clk,reset,t;
wire q;
T_FLIPFLOP ert(t,clk,reset,q);
initial begin
clk=0;
t=0;
forever #5 clk=~clk;
end
initial 
begin
$monitor(t,clk,reset,q);
end
initial
begin
reset=1;
#5 reset=0;
repeat(3)

begin
#10 t=1'b1;
#20 t=1'b0;
end
$finish;
end
endmodule
