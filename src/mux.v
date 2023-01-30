`timescale 1ns / 1ps
module MUX(
    input [1:0]i,
    input sel,
    output o
    );

    assign o = (sel & i[1]) | (~sel & i[0]);
endmodule
