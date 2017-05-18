`timescale 1ns / 1ps

module dff(input D, input clk, input rst, output reg Q);	//dff module
	always @(posedge(rst), posedge(clk)) begin
		if (rst == 1) begin
			Q <= 1'b0;										//reset signal
		end
		else begin
         Q <= D;											//dff working
		end
	end  
endmodule