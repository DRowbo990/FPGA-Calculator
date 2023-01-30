`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2022 08:34:56 AM
// Design Name: 
// Module Name: NewSevenSegment
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


module NewSevenSegment(
    input [3:0] d,
    output [6:0] seg
    );
    wire [15:0] o;
    decoder4_16 D(.d(d), .o(o));
    
    assign seg [0] = ~| (16'hB7EB& o);
    assign seg [1] = ~| (16'hF9E4& o);
    assign seg [2] = ~| (16'hDFF4& o);
    assign seg [3] = ~| (16'hB6DE& o);
    assign seg [4] = ~| (16'hA2BF& o);
    assign seg [5] = ~| (16'h8EFB& o);
    assign seg [6] = ~| (16'h3EF7& o);
endmodule
