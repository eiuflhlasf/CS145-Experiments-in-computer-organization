`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    2020/06/07 10:30:31 
// Design Name: 
// Module Name:    instMemory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module instMemory(
		//input clock_in,
		input [31:0] addr,
		output reg[31:0] inst
		);
		reg [31:0] instRegFile[0:255];
		//assign inst = instRegFile[addr];
		always @ (addr or inst)
		begin
			assign inst = instRegFile[addr>>2];
		end
		
		initial
		begin
			$readmemb("C:/mem_inst.txt", instRegFile, 8'h0);
		end

endmodule
