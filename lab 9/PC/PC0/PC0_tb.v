`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:05:28 03/13/2025
// Design Name:   PC0
// Module Name:   E:/Documents and Settings/student/EE533_Lab9/EE533_Lab_9/PC0_tb.v
// Project Name:  EE533_Lab_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC0
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC0_tb;

	// Inputs
	reg clk;
	reg rst;
	reg PC_ctrl;
	reg [6:0] PC_next;
	reg [1:0] thread;
	reg [1:0] thread_ID;

	// Outputs
	wire [6:0] PC;

	// Instantiate the Unit Under Test (UUT)
	PC0 uut (
		.clk(clk), 
		.rst(rst), 
		.PC_ctrl(PC_ctrl), 
		.PC_next(PC_next), 
		.thread(thread), 
		.thread_ID(thread_ID), 
		.PC(PC)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		PC_ctrl = 0;
		PC_next = 0;
		thread = 0;
		thread_ID = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
		rst = 0;
        
		// Add stimulus here
		@(posedge clk);
		PC_ctrl = 0;
		PC_next = 7'd1;
		thread = 2'b00;
		thread_ID = 2'b11;

		@(posedge clk);
		PC_ctrl = 0;
		PC_next = 7'd2;
		thread = 2'b01;
		thread_ID = 2'b00;

		@(posedge clk);
		PC_ctrl = 1;
		PC_next = 7'd3;
		thread = 2'b10;
		thread_ID = 2'b01;

		@(posedge clk);
		PC_ctrl = 1;
		PC_next = 7'd4;
		thread = 2'b11;
		thread_ID = 2'b10;

		@(posedge clk);
		PC_ctrl = 1;
		PC_next = 7'd5;
		thread = 2'b00;
		thread_ID = 2'b11;

		@(posedge clk);
		PC_ctrl = 1;
		PC_next = 7'd6;
		thread = 2'b01;
		thread_ID = 2'b00;

		@(posedge clk);
		PC_ctrl = 0;
		PC_next = 7'd7;
		thread = 2'b10;
		thread_ID = 2'b01;

		@(posedge clk);
		$stop;

	end
      
endmodule

