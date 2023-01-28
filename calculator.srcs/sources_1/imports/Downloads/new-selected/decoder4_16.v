`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2022 09:57:40 AM
// Design Name: 
// Module Name: decoder4_16
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
module decoder4_16(
    input [3:0]d,
    output [15:0]o

    );
    wire en1, en2;
    assign en1 = d[3];
    assign en2 = ~d[3];

    decoder3_8 low ( 
        .en(en1),
        .d(d),
        .o(o[7:0])
        );
    decoder3_8 high(
        .en(en2),
        .d(d),
        .o(o[15:8])
        );
endmodule