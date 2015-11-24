`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:27 05/28/2014 
// Design Name: 
// Module Name:    HitDetect 
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
module HitDetect(playTop,playBottom,playLeft,playRight,borderTop,borderBottom,borderLeft,borderRight,hitDetect);
	input [9:0] playTop;
	input [9:0] playBottom;
	input [9:0] playLeft;
	input [9:0] playRight;
	
	input [9:0] borderTop;
	input [9:0] borderBottom;
	input [9:0] borderLeft;
	input [9:0] borderRight;
	
	
	output hitDetect;
	assign hitDetect = (playBottom == borderTop) | (playTop== borderBottom) | (playLeft == borderLeft) | (playRight == borderRight);

endmodule
