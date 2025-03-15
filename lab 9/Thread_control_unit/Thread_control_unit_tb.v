`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:51:08 03/14/2025
// Design Name:   Thread_control_unit
// Module Name:   E:/Documents and Settings/student/EE533_Lab9/EE533_Lab_9/Thread_control_unit_tb.v
// Project Name:  EE533_Lab_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Thread_control_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Thread_control_unit_tb;

	// Inputs
	reg [1:0] thread_ID;
	reg PC_ctrl;

	// Outputs
	wire PC0_ctrl;
	wire PC1_ctrl;
	wire PC2_ctrl;
	wire PC3_ctrl;

	// Instantiate the Unit Under Test (UUT)
	Thread_control_unit uut (
		.thread_ID(thread_ID), 
		.PC_ctrl(PC_ctrl), 
		.PC0_ctrl(PC0_ctrl), 
		.PC1_ctrl(PC1_ctrl), 
		.PC2_ctrl(PC2_ctrl), 
		.PC3_ctrl(PC3_ctrl)
	);

	initial begin
		// Initialize Inputs
		thread_ID = 0;
		PC_ctrl = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		thread_ID = 2'b00;
		PC_ctrl = 1;
		#100;

		thread_ID = 2'b01;
		PC_ctrl = 0;
		#100;

		thread_ID = 2'b10;
		PC_ctrl = 0;
		#100;

		thread_ID = 2'b11;
		PC_ctrl = 0;
		#100;

		thread_ID = 2'b00;
		PC_ctrl = 0;
		#100;

		thread_ID = 2'b01;
		PC_ctrl = 1;
		#100;

		thread_ID = 2'b10;
		PC_ctrl = 0;
		#100;

		thread_ID = 2'b11;
		PC_ctrl = 0;
		#100;

		thread_ID = 2'b00;
		PC_ctrl = 0;
		#100;

		thread_ID = 2'b01;
		PC_ctrl = 0;
		#100;

		thread_ID = 2'b10;
		PC_ctrl = 1;
		#100;

		thread_ID = 2'b11;
		PC_ctrl = 0;
		#100;

		thread_ID = 2'b00;
		PC_ctrl = 0;
		#100;

		thread_ID = 2'b01;
		PC_ctrl = 0;
		#100;

		thread_ID = 2'b10;
		PC_ctrl = 0;
		#100;

		thread_ID = 2'b11;
		PC_ctrl = 1;
		#100;

		$stop;

	end
      
endmodule

