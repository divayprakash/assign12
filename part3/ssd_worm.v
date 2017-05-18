`timescale 1ns / 1ps

module ssd_worm(input clk, input rst, output reg an, output reg[7:0] ss);
	reg[3:0] counter;
	wire f_out;
	
	clk_divider_3hz clk0(clk, rst, f_out);
	
	initial begin
		counter = 4'b0000;
		an = 1'b1;
	end
	
	always @(f_out) begin
		an = 1'b1;
		if (counter == 0) begin
			ss = 8'b01111111;
			counter = 4'b0001;
		end
		else if (counter == 1) begin
			ss = 8'b11111011;
			counter = 4'b0010;
		end
		else if (counter == 2) begin
			ss = 8'b11110111;
			counter = 4'b0011;
		end
		else if (counter == 3) begin
			ss = 8'b11101111;
			counter = 4'b0100;
		end
		else if (counter == 4) begin
			ss = 8'b11011111;
			counter = 4'b0101;
		end
		else if (counter == 5) begin
			ss = 8'b10111111;
			counter = 4'b0000;
		end
	end

endmodule
