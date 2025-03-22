`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:55:17 03/22/2025
// Design Name:   prediction_output
// Module Name:   E:/Documents and Settings/student/EE533_Lab10/prediction_output_tb.v
// Project Name:  EE533_Lab10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: prediction_output
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module prediction_output_tb;

	// Inputs
	reg [15:0] neurons_output;

	// Instantiate the Unit Under Test (UUT)
	prediction_output uut (
		.neurons_output(neurons_output)
	);

	initial begin
		// Initialize Inputs
		neurons_output = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

