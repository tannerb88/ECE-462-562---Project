`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2021 08:08:22 PM
// Design Name: 
// Module Name: wayPredict
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


module wayPredict(tag, way, outFlag);

input [3:0] tag;
input [2:0] way;
output reg outFlag;
wire [3:0] way1tag = 4'b0111;
wire [3:0] way2tag = 4'b0110;
wire [3:0] way3tag = 4'b0100;
wire [3:0] way4tag = 4'b0001;


always @ (tag, way)
begin

if (way == 3'b000) begin
    // way prediction was correct so only check one way
    if (tag == way1tag) begin
        outFlag = 1;
    end
    
    // way prediction was incorrect so check all 4 tags and have it match on the last one so you get
    // the full energy it takes to search all ways
    else begin
        if (tag == way2tag) begin
            outFlag = 1;
        end
        
        else if (tag == way3tag) begin
            outFlag = 1;
        end
        
        else if (tag == way4tag) begin
            outFlag = 1;
        end
    end
end

end

    
endmodule
