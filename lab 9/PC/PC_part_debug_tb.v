`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:54:25 03/14/2025
// Design Name:   PC_part_debug
// Module Name:   E:/Documents and Settings/student/EE533_Lab9/EE533_Lab_9/PC_part_debug_tb.v
// Project Name:  EE533_Lab_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC_part_debug
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_part_debug_tb;

	// Inputs
	reg [6:0] BTA;
	reg clk;
	reg [6:0] ONE;
	reg PC_ctrl;
	reg rst;
	reg [1:0] thread_ID;
	reg [1:0] thread_IF;

	// Outputs
	wire [8:0] PC;
	wire [6:0] PC0;
	wire [6:0] PC1;
	wire [6:0] PC2;
	wire [6:0] PC3;

	// Instantiate the Unit Under Test (UUT)
	PC_part_debug uut (
		.BTA(BTA), 
		.clk(clk), 
		.ONE(ONE), 
		.PC_ctrl(PC_ctrl), 
		.rst(rst), 
		.thread_ID(thread_ID), 
		.thread_IF(thread_IF), 
		.PC(PC), 
		.PC0(PC0), 
		.PC1(PC1), 
		.PC2(PC2), 
		.PC3(PC3)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		BTA = 0;
		clk = 1;
		ONE = 7'd1;
		PC_ctrl = 0;
		rst = 1;
		thread_ID = 0;
		thread_IF = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
        
		// Add stimulus here
		rst = 0;
		BTA = 7'd5;
		PC_ctrl = 0;
		thread_IF = 2'b00;
		thread_ID = 2'b11;
		@(posedge clk);

		BTA = 7'd5;
		PC_ctrl = 0;
		thread_IF = 2'b01;
		thread_ID = 2'b00;
		@(posedge clk);

		BTA = 7'd5;
		PC_ctrl = 0;
		thread_IF = 2'b10;
		thread_ID = 2'b01;
		@(posedge clk);

		BTA = 7'd5;
		PC_ctrl = 0;
		thread_IF = 2'b11;
		thread_ID = 2'b10;
		@(posedge clk);

		BTA = 7'd5;
		PC_ctrl = 0;
		thread_IF = 2'b00;
		thread_ID = 2'b11;
		@(posedge clk);

		BTA = 7'd6;
		PC_ctrl = 1;
		thread_IF = 2'b01;
		thread_ID = 2'b00;
		@(posedge clk);

		BTA = 7'd7;
		PC_ctrl = 1;
		thread_IF = 2'b10;
		thread_ID = 2'b01;
		@(posedge clk);

		BTA = 7'd8;
		PC_ctrl = 1;
		thread_IF = 2'b11;
		thread_ID = 2'b10;
		@(posedge clk);

		BTA = 7'd9;
		PC_ctrl = 1;
		thread_IF = 2'b00;
		thread_ID = 2'b11;
		@(posedge clk);

		BTA = 7'd10;
		PC_ctrl = 0;
		thread_IF = 2'b01;
		thread_ID = 2'b00;
		@(posedge clk);

		BTA = 7'd11;
		PC_ctrl = 0;
		thread_IF = 2'b10;
		thread_ID = 2'b01;
		@(posedge clk);

		BTA = 7'd12;
		PC_ctrl = 0;
		thread_IF = 2'b11;
		thread_ID = 2'b10;
		@(posedge clk);
		$stop;

	end
      
endmodule

