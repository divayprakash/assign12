`timescale 1ns / 1ps
 
module tb;
	// Inputs
    reg clk;
    reg rst;
 
    // Outputs
    wire f_out;

    // Instantiate the Unit Under Test (UUT)
	clk_divider_3hz uut(clk, rst, f_out); 	
 
    always
        #1 clk = ~clk;
 
    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 1;
        #10 rst = 0; 
        // Wait 100 ns for global reset to finish
        #100;
    end
endmodule