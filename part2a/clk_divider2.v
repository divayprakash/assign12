`timescale 1ns / 1ps

module clk_divider2(input clk, input rst, output f_out_final); 
	wire f_out;
	clk_divider_3hz clk_orig(clk, rst, f_out);					//dividing 50MHz FPGA clock to 3Hz
	wire din;													//dff input
	wire clkdiv; 												//dff output
	dff dff_inst0(din, f_out, rst, clkdiv);						
	assign din = ~clkdiv;										//inverter for dff input
	assign f_out_final = clkdiv;								//final frequency output f0/2
endmodule