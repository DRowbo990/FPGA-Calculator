`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 08:29:32 AM
// Design Name: 
// Module Name: testbench
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


module testbench;
    
reg [4:0]btn;
reg clk;
reg [7:0] a, b;
wire [15:0]led;
integer butts;

FSM butts2(.bu(btn[1]), .br(btn[2]), .bl(btn[4]), .bd(btn[3]),. reset(btn[0]), .a(a), .b(b), .clk(clk), .led(led)); 
initial begin
btn = 0;
a = 12;
b = 24;
clk = 0;
butts = 0;

forever #10 begin
clk = ~clk;
end
end
always @ (posedge clk)begin
//rst
if(butts == 0)begin
btn <= 5'b00001;
butts <= butts +1;
end
//add
else if(butts == 1)begin
btn <= 5'b00010;
butts <= butts +1;
end
//rst
else if(butts == 2)begin
btn <= 5'b00001;
butts <= butts +1; 
end
//sub
else if(butts == 3)begin
btn <=  5'b00100;
butts <= butts +1; 
end
//rst
else if(butts == 4)begin
btn <= 5'b00001;
butts <= butts +1; 
end
//multiply
else if(butts == 5)begin
btn <= 5'b01000;
butts <= butts +1; 
end
//rst
else if(butts == 6)begin
btn <= 5'b00001;
butts <= butts +1; 
end
//divide
else if(butts == 7)begin
btn <= 5'b10000;
butts <= butts +1; 
end
//rst
else if(butts == 8)begin
btn <= 5'b00001;
butts <= butts +1; 
end
//r shift
else if(butts == 9)begin
btn <= 5'b00010;
butts <= butts +1; 
end
else if(butts == 10)begin
btn <= 5'b00100;
butts <= butts +1; 
end
//rst
else if(butts == 11)begin
btn <= 5'b00001;
butts <= butts +1; 
end
//or
else if(butts == 12)begin
btn <= 5'b00010;
butts <= butts +1; 
end
else if(butts == 13)begin
btn <= 5'b01000;
butts <= butts +1; 
end
//rst
else if(butts == 14)begin
btn <= 5'b00001;
butts <= butts +1; 
end
//l shift
else if(butts == 15)begin
btn <= 5'b00010;
butts <= butts +1; 
end
else if(butts == 16)begin
btn <= 5'b10000;
butts <= butts +1; 
end
//rst
else if(butts == 17)begin
btn <= 5'b00001;
butts <= butts +1; 
end
//&
else if(butts == 18)begin
btn <= 5'b01000;
butts <= butts +1; 
end
else if(butts == 19)begin
btn <= 5'b00010;
butts <= butts +1; 
end
//rst
else if(butts == 20)begin
btn <= 5'b00001;
butts <= butts +1; 
end
end

endmodule













