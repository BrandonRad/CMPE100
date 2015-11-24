`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:36:21 05/28/2014 
// Design Name: 
// Module Name:    GameLogic 
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
module GameLogic(MIDDLE,PB0,PB2,SPIKE,LIFE,TC,PS,NS,HALT,RESET,RELOAD,GAME,LOADLIFE,LOADPLAY,DEAD,GAMEOVER);

input MIDDLE;
input PB0;
input PB2;
input SPIKE;
input LIFE;
input TC;
input [5:0] PS;
output [5:0] NS;
output HALT;
output RESET;
output GAME;
output RELOAD;
output LOADLIFE;
output LOADPLAY;
output DEAD;
output GAMEOVER;

assign NS[0] = PS[5]&TC;
assign NS[1] = PS[0] | PS[1]&~MIDDLE | PS[4]&TC;
assign NS[2] = (PS[1]|PS[2])&MIDDLE & ~PS[3]&(~PB0|~PB2);
assign NS[3] = PS[2]&(PB0|PB2) | PS[3]&~SPIKE | (PS[3]&~LIFE)&(PB0|PB2);
assign NS[4] = PS[3]&SPIKE&~LIFE | PS[4]&~TC;
assign NS[5] = PS[3]&SPIKE&LIFE | PS[5]&~TC;

assign HALT 		= PS[2]|PS[4]|PS[5];
assign RESET 		= PS[5]&TC;
assign RELOAD 		= PS[4]&TC;
assign GAME 		= ~PS[0]&~PS[1]&~PS[5];
assign LOADPLAY	= PS[2];
assign LOADLIFE 	= PS[0];
assign DEAD 		= PS[4]|PS[5];
assign GAMEOVER	= PS[5]&~TC&LIFE;

endmodule
