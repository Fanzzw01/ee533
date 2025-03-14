`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:46:34 03/13/2025
// Design Name:   PC_Thread_MUX
// Module Name:   E:/Documents and Settings/student/EE533_Lab9/EE533_Lab_9/PC_Thread_MUX_tb.v
// Project Name:  EE533_Lab_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC_Thread_MUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_Thread_MUX_tb;

	// Inputs
	reg [1:0] thread;
	reg [6:0] PC0;
	reg [6:0] PC1;
	reg [6:0] PC2;
	reg [6:0] PC3;

	// Outputs
	wire [8:0] PC;

	// Instantiate the Unit Under Test (UUT)
	PC_Thread_MUX uut (
		.thread(thread), 
		.PC0(PC0), 
		.PC1(PC1), 
		.PC2(PC2), 
		.PC3(PC3), 
		.PC(PC)
	);

	initial begin
		// Initialize Inputs
		thread = 0;
		PC0 = 0;
		PC1 = 0;
		PC2 = 0;
		PC3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		PC0 = 7'd1;
		PC1 = 7'd2;
		PC2 = 7'd3;
		PC3 = 7'd4;
        
		// Add stimulus here
		#100;
		thread = 2'b00;

		#100;
		thread = 2'b01;

		#100;
		thread = 2'b10;

		#100;
		thread = 2'b11;

		#100;
		thread = 2'b00;

		#100;
		$stop;

	end
      
endmodule

