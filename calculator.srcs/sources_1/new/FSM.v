`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 03:54:55 PM
// Design Name: 
// Module Name: FSM
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


module FSM(
    input bu, br, bl, bd, reset,
    input [7:0]a,b,
    input clk,
    output reg [15:0]led
    );
    
    reg[3:0]state;
    
    initial begin
    state = 0;
    led = 0;
    end
    always @(posedge clk) begin
        case(state)
        4'b0000:begin
            if(bu ==1)begin
                state <=1;
                led <= a+b;
            end
            else if(br ==1)begin
                state <=2;
                led <= a-b;
            end
             else if(bd ==1)begin
                state <=3;
                led <=a*b;
            end
             else if(bl ==1 && b != 0)begin
                state <=4;
                led <=a/b;
            end
            else if(bl ==1 && b == 0)begin
                state <=4;
                led <=0;
            end
            else if(reset == 1)begin
                state <= 0;
                led <= 0;
            end
        end
        4'b0001:begin
            if (bl ==1) begin
                led <= led << 1;
                state <= 5;
               // led <= led*2;
            end
            else if(br ==1)begin
                led <= led >> 1;
                state <= 6;
                //led <=led/2;
            end
            else if(bd ==1)begin
                led <= a|b;
                state <= 7;
            end
            if(reset ==1)begin
                state <=0;
                led <=0;
                end
        end
        4'b0010:begin
            if(reset ==1)begin
                state <=0;
                led <=0;
            end
            if(reset ==1)begin
                state <=0;
                led <=0;
                end
        end
        //and
        4'b0011:begin
            if(bu ==1) begin
                led <=a&b;
                state <= 8;
            end
            if(reset ==1)begin
                state <=0;
                led <=0;
                end
        end
        4'b0100:begin
            if(reset ==1)begin
                state <=0;
                led <=0;
            end
        end
         4'b0101:begin
            if(reset ==1)begin
                state <=0;
                led <=0;
            end
        end
         4'b0110:begin
            if(reset ==1)begin
                state <=0;
                led <=0;
            end
        end
         4'b0111:begin
            if(reset ==1)begin
                state <=0;
                led <=0;
            end
        end
         4'b1000:begin
            if(reset ==1)begin
                state <=0;
                led <=0;
            end
        end
        default:begin
            state <= 0;
            led <=0;
        end
    
   endcase
   end     
        
            
            
            
endmodule