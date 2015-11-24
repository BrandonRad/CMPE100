`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:17 05/08/2014 
// Design Name: 
// Module Name:    Hex7Seg 
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
module Hex7Seg(N, CA, CB, CC, CD, CE, CF, CG);
    input [3:0] N;
    output CA;
    output CB;
    output CC;
    output CD;
    output CE;
    output CF;
    output CG;
	 
	assign CA = (~N[3]&~N[2]&~N[1]&N[0])|(~N[3]&N[2]&~N[1]&~N[0])|(N[3]&~N[2]&N[1]&N[0])|(N[3]&N[2]&~N[1]&N[0]);
	assign CB = (~N[3]&N[2]&~N[1]&N[0])|(~N[3]&N[2]&N[1]&~N[0])|(N[3]&~N[2]&N[1]&N[0])|(N[3]&N[2]&~N[1]&~N[0])|(N[3]&N[2]&N[1]&~N[0])|(N[3]&N[2]&N[1]&N[0]);
	assign CC = (~N[3]&~N[2]&N[1]&~N[0])|(N[3]&N[2]&~N[1]&~N[0])|(N[3]&N[2]&N[1]&~N[0])|(N[3]&N[2]&N[1]&N[0]);
	assign CD = (~N[3]&~N[2]&~N[1]&N[0])|(~N[3]&N[2]&~N[1]&~N[0])|(~N[3]&N[2]&N[1]&N[0])|(N[3]&~N[2]&N[1]&~N[0])|(N[3]&N[2]&N[1]&N[0]);
	assign CE = (~N[3]&~N[2]&~N[1]&N[0])|(~N[3]&~N[2]&N[1]&N[0])|(~N[3]&N[2]&~N[1]&~N[0])|(~N[3]&N[2]&~N[1]&N[0])|(~N[3]&N[2]&N[1]&N[0])|(N[3]&~N[2]&~N[1]&N[0]);
	assign CF = (~N[3]&~N[2]&~N[1]&N[0])|(~N[3]&~N[2]&N[1]&~N[0])|(~N[3]&~N[2]&N[1]&N[0])|(~N[3]&N[2]&N[1]&N[0])|(N[3]&N[2]&~N[1]&N[0]);
	assign CG = (~N[3]&~N[2]&~N[1]&~N[0])|(~N[3]&~N[2]&~N[1]&N[0])|(~N[3]&N[2]&N[1]&N[0])|(N[3]&N[2]&~N[1]&~N[0]);



endmodule