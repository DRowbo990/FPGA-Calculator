`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2022 01:06:51 PM
// Design Name: 
// Module Name: DoubleSevenSegment
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


module DoubleSevenSegment(
    input clk,
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    output [6:0] out,
    output [0:3] an
    );
    wire sel, sel2;

    wire [3:0] d1, d2, d3;

    ClockDivider #(.PRESCALER(25000)) CDK(
                    .clkin(clk),
                    .clkout(sel)
                    );
    ClockDivider #(.PRESCALER (50001)) CDK1(
                     .clkin(clk),
                    .clkout(sel2)
    );

    MUXarray run1 (.a(a), .b(c), .sel(sel), .o(d1));
    MUXarray run2 (.a(b), .b(d), .sel(sel), .o(d2));
    MUXarray run3 (.a(d1), .b(d2), .sel(sel2), .o(d3));

    NewSevenSegment run4 (.d(d3), .seg(out));
   assign an[0] = ~sel & ~sel2;
   assign an[1] = sel & ~sel2;
   assign an[2] = ~sel & sel2;
   assign an[3] = sel & sel2;
endmodule
