`timescale 1ns / 1ps

module clk_divider_3hz(input clk, input rst, output f_out); 	//clk divider to divide internal 50MHz FPGA clock to 2.98Hz ~ 3Hz
	wire [23:0] din;											//input wire for dff
	wire [23:0] clkdiv; 										//output wire for dff
	dff dff_inst0(din[0], clk, rst, clkdiv[0]);					//cascaded dffs
	dff dff_inst1(din[1], clkdiv[0], rst, clkdiv[1]);
	dff dff_inst2(din[2], clkdiv[1], rst, clkdiv[2]);
	dff dff_inst3(din[3], clkdiv[2], rst, clkdiv[3]);
	dff dff_inst4(din[4], clkdiv[3], rst, clkdiv[4]);
	dff dff_inst5(din[5], clkdiv[4], rst, clkdiv[5]);
	dff dff_inst6(din[6], clkdiv[5], rst, clkdiv[6]);
	dff dff_inst7(din[7], clkdiv[6], rst, clkdiv[7]);
	dff dff_inst8(din[8], clkdiv[7], rst, clkdiv[8]);
	dff dff_inst9(din[9], clkdiv[8], rst, clkdiv[9]);
	dff dff_inst10(din[10], clkdiv[9], rst, clkdiv[10]);
	dff dff_inst11(din[11], clkdiv[10], rst, clkdiv[11]);
	dff dff_inst12(din[12], clkdiv[11], rst, clkdiv[12]);
	dff dff_inst13(din[13], clkdiv[12], rst, clkdiv[13]);
	dff dff_inst14(din[14], clkdiv[13], rst, clkdiv[14]);
	dff dff_inst15(din[15], clkdiv[14], rst, clkdiv[15]);
	dff dff_inst16(din[16], clkdiv[15], rst, clkdiv[16]);
	dff dff_inst17(din[17], clkdiv[16], rst, clkdiv[17]);
	dff dff_inst18(din[18], clkdiv[17], rst, clkdiv[18]);
	dff dff_inst19(din[19], clkdiv[18], rst, clkdiv[19]);
	dff dff_inst20(din[20], clkdiv[19], rst, clkdiv[20]);
	dff dff_inst21(din[21], clkdiv[20], rst, clkdiv[21]);
	dff dff_inst22(din[22], clkdiv[21], rst, clkdiv[22]);
	dff dff_inst23(din[23], clkdiv[22], rst, clkdiv[23]);
	assign din = ~clkdiv;										//inverters for dff inputs	
	assign f_out = clkdiv[23];									//final frequency output
endmodule