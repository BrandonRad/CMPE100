`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:19:09 05/22/2014 
// Design Name: 
// Module Name:    edgelogic 
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
module edgelogic(row,col,r7,r6,r5,r4,c7,c6,c5,c4);
	input [15:0] row; // y
	input [15:0] col; // x
	
	output r7;
	output r6;
	output r5;
	output r4;
	
	output c7;
	output c6;
	output c5;
	output c4;
	
	assign r7 = row[2]&~row[1]&~row[0];
	assign r6 = ~row[2]&row[1]&row[0] | row[2]&~row[1]&~row[0] | row[2]&~row[1]&row[0];
	assign r5 = ~(~row[2]&~row[1]&~row[0] | ~row[2]&~row[1]&row[0] | row[2]&row[1]&row[0]); 
	assign r4 = ~(~row[2]&~row[1]&~row[0]);
	
	assign c7 = col[2]&~col[1]&~col[0];
	assign c6 = ~col[2]&col[1]&col[0] | col[2]&~col[1]&~col[0] | col[2]&~col[1]&col[0];
	assign c5 = ~( ~col[2]&~col[1]&~col[0] | ~col[2]&~col[1]&col[0] | col[2]&col[1]&col[0]); 
	assign c4 = ~(~col[2]&~col[1]&~col[0]);

endmodule
