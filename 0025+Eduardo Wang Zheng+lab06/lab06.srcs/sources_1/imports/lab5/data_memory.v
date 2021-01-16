`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/16 14:00:17
// Design Name: 
// Module Name: data_memory
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


module data_memory(
    input clk,
    input memRead,
    input memWr,
    input [31:0] address,
    input [31:0] writeData,
    output reg [31:0] readData
    );
    
    reg [31:0] memFile[31:0];
    
    initial begin
    $readmemh("C:/mem_data.txt",memFile);
    readData=0;
    end
    
    always @ (memRead or address)
    begin
        if(memRead==1)
            readData=memFile[address>>2];
    end
    
    always @ (negedge clk)
    begin
        if(memWr==1)
            memFile[address>>2]=writeData;
    end
    
    
endmodule
