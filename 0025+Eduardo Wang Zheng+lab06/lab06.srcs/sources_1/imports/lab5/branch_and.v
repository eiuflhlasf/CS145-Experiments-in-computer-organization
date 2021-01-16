`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/16 14:00:17
// Design Name: 
// Module Name: branch_and
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


module branch_and(
    input branchMEM,
    input zeroMEM,
    output reg branchRes
    );
    initial branchRes=0;
    
    always @ (branchMEM or zeroMEM)
    begin
        branchRes=branchMEM && zeroMEM;
    end
    
endmodule
