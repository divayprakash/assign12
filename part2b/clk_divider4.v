`timescale 1ns / 1ps

module clk_divider4(input clk, input rst, output f_out); 		//using previous divider to obtain f0/2
	clk_divider2 clk_orig(clk, rst, f_out);
	wire din;													//dff input	
	wire clkdiv; 												//dff output
	dff dff_inst0(din, clk, rst, clkdiv);
	assign din = ~clkdiv;										//inverter for dff input		
	assign f_out = clkdiv;										//final frequency output to obtain f0/4
endmodule