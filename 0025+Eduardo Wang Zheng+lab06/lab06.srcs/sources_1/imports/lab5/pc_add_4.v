`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/16 14:00:17
// Design Name: 
// Module Name: pc_add_4
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


module pc_add_4(
    input [31:0] pc,
    output reg [31:0] pcAdd4
    );
    initial pcAdd4=0;
    
    always @ (pc)
    begin
        pcAdd4=pc+4;
    end
    
endmodule
