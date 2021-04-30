`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2021 04:41:52 PM
// Design Name: 
// Module Name: wayPredict_tb
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


module wayPredict_tb();
    reg [3:0] tag;
    reg [2:0] way;
    
    wire outFlag;
    
   wayPredict WP(tag, way, outFlag);
   
   initial begin
   
   // way prediction guess succeded
   // comment out when testing way prediction fail
   way <= 3'b000;
   tag <= 4'b0111;
   
   
   // way prediction guess fail
   // comment out when testing way prediction success
   way <= 3'b000;
   tag <= 4'b0001;
   
   
   end
    
endmodule
