`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:51:48 05/28/2014 
// Design Name: 
// Module Name:    ElevatorControl 
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
module ElevatorControl(E,done,nextElev,middle);
	input [9:0] E;
	
	output done;
	output nextElev;
	output middle;
	
	assign done = ~E[0]&~E[1]&~E[2]&~E[3]&~E[4]&~E[5]&~E[6]&~E[7]&~E[8]&~E[9];
	assign nextElev = ~E[0]&~E[1]&~E[2]&~E[3]&~E[4]&~E[5]&E[6]&~E[7]&E[8]&~E[9];
	assign Middle = ~E[0]&~E[1]&~E[2]&~E[3]&E[4]&E[5]&E[6]&E[7]&~E[8]&~E[9];

endmodule
