`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 04:38:12 PM
// Design Name: 
// Module Name: top
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


module top(
output[15:0]led,
    input [15:0]sw,
    output[6:0]seg,
    input btnC, btnU, btnL, btnR, btnD,
    output [3:0] an,
    input clk
    );

    wire [3:0] bicks;
    assign an = ~bicks;

    FSM tig (.bu(btnU),.br(btnR),.bl(btnL),.bd(btnD),
             .reset(btnC),.a(sw[15:8]),.b(sw[7:0]),.clk(clk),.led(led));

    DoubleSevenSegment biddies (.clk(clk),.a(led[15:12]),.b(led[11:8]),.c(led[7:4]),.d(led[3:0]), .an(bicks), .out(seg));

endmodule
