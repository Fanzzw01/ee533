`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:50:19 03/21/2025
// Design Name:   ReLu
// Module Name:   E:/Documents and Settings/student/EE533_Lab10/ReLu_tb.v
// Project Name:  EE533_Lab10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ReLu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ReLu_tb;

	// Inputs
	reg [15:0] neurons_1;
	reg [15:0] neurons_2;
	reg [15:0] neurons_3;

	// Instantiate the Unit Under Test (UUT)
	ReLu uut (
		.neurons_1(neurons_1), 
		.neurons_2(neurons_2),
		.neurons_3(neurons_3)
	);

	initial begin
		// Initialize Inputs
		neurons_1 = 0;
		neurons_2 = 0;
		neurons_3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		neurons_1 = 16'hC3A0; neurons_2 = 16'hC3A0; neurons_3 = 16'h3C30; #100;
		neurons_1 = 16'h0000; neurons_2 = 16'h0000; neurons_3 = 16'h0000; #100;
		neurons_1 = 16'hC4F0; neurons_2 = 16'hC58E; neurons_3 = 16'h3DDC; #100;

		$stop;

	end
      
endmodule

