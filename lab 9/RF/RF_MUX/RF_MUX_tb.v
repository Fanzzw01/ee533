`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:03:34 03/13/2025
// Design Name:   RF_MUX
// Module Name:   E:/Documents and Settings/student/EE533_Lab9/RF_MUX_tb.v
// Project Name:  EE533_Lab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RF_MUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RF_MUX_tb;

	// Inputs
	reg [2:0] thread_ID;
	reg [63:0] RF0_r0data;
	reg [63:0] RF0_r1data;
	reg [63:0] RF1_r0data;
	reg [63:0] RF1_r1data;
	reg [63:0] RF2_r0data;
	reg [63:0] RF2_r1data;
	reg [63:0] RF3_r0data;
	reg [63:0] RF3_r1data;

	// Outputs
	wire [63:0] r0data;
	wire [63:0] r1data;

	// Instantiate the Unit Under Test (UUT)
	RF_MUX uut (
		.thread_ID(thread_ID), 
		.RF0_r0data(RF0_r0data), 
		.RF0_r1data(RF0_r1data), 
		.RF1_r0data(RF1_r0data), 
		.RF1_r1data(RF1_r1data), 
		.RF2_r0data(RF2_r0data), 
		.RF2_r1data(RF2_r1data), 
		.RF3_r0data(RF3_r0data), 
		.RF3_r1data(RF3_r1data), 
		.r0data(r0data), 
		.r1data(r1data)
	);

	initial begin
		// Initialize Inputs
		thread_ID = 2'b00;
		RF0_r0data = 64'd1;
		RF0_r1data = 64'd2;
		RF1_r0data = 64'd3;
		RF1_r1data = 64'd4;
		RF2_r0data = 64'd5;
		RF2_r1data = 64'd6;
		RF3_r0data = 64'd7;
		RF3_r1data = 64'd8;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		thread_ID = 2'b01;
		#100;

		thread_ID = 2'b10;
		#100;

		thread_ID = 2'b11;
		#100;

		#100;
		$stop;


	end
      
endmodule

