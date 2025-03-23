`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:06:37 03/22/2025
// Design Name:   fp16_adder
// Module Name:   E:/Documents and Settings/student/EE533_Lab10/EE533_Lab_10/fp16_adder_tb.v
// Project Name:  EE533_Lab_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fp16_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fp16_adder_tb;

	// Inputs
	reg clk;
	reg en;
	reg [15:0] a;
	reg [15:0] b;

	// Outputs
	wire [15:0] sum;

	// Instantiate the Unit Under Test (UUT)
	fp16_adder uut (
		.clk(clk), 
		.en(en), 
		.a(a), 
		.b(b), 
		.sum(sum)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		en = 0;
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
        
		// Add stimulus here
		en = 1;
		a = 16'h3c00; b = 16'h3c00; @(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);

		en = 1;
		a = 16'h3e00; b = 16'hbc00; @(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);

		en = 1;
		a = 16'h3a00; b = 16'h3800; @(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);

		$stop;


	end
      
endmodule

