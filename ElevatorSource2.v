`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:23 05/29/2014 
// Design Name: 
// Module Name:    ElevatorSource2 
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
module ElevatorSource2(elev1Top,elev1Bot,elev1L,elev1R,elev2Top,elev2Bot,elev2L,elev2R,elev3Top,elev3Bot,elev3L,elev3R,pt,pb,pl,pr,hit,in_gap,inc_score);

	input [9:0] elev1Top;
	input [9:0] elev1Bot;
	input [9:0] elev1L;
	input [9:0] elev1R;

	input [9:0] elev2Top;
	input [9:0] elev2Bot;
	input [9:0] elev2L;
	input [9:0] elev2R;

	input [9:0] elev3Top;
	input [9:0] elev3Bot;
	input [9:0] elev3L;
	input [9:0] elev3R;

	input [9:0] pt; // player top
	input [9:0] pb; // player bottom
	input [9:0] pl; // player left
	input [9:0] pr; // player right
	
	
	
	output hit;
	output in_gap;
	output inc_score;
	
	assign hit = ((pt >= elev1Bot) & (pt < elev1Top)) | ((pt >= elev2Bot) & (pt < elev2Top)) | ((pt >= elev3Bot) & (pt < elev3Top));
	assign in_gap = ((pl == elev1L) & (pr == elev1R) &(pt >= elev1Bot) & (pb <= elev1Top)) | ((pl == elev2L) & (pr == elev2R)&(pt >= elev2Bot) & (pb <= elev2Top)) | ((pl == elev3L) & (pr == elev3R)&(pt >= elev3Bot) & (pb <= elev3Top));
	assign inc_score = (pb == elev1Top) |(pb == elev2Top)|(pb == elev3Top);
	
endmodule
