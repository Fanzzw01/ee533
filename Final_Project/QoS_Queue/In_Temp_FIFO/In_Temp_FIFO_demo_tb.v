`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:07:27 04/13/2025
// Design Name:   In_Temp_FIFO_demo
// Module Name:   E:/Documents and Settings/student/Final_Project/In_Temp_FIFO_demo_tb.v
// Project Name:  Final_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: In_Temp_FIFO_demo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module In_Temp_FIFO_demo_tb;

	// Inputs
	reg clk;
	reg pkt_begin;
	reg pkt_end;
	reg [31:0] pkt_in;
	reg rst;

	// Outputs
	wire [7:0] depth;
	wire FIFO_OUT;
	wire [31:0] pkt_out;
	wire [31:0] source_IP;

	// Instantiate the Unit Under Test (UUT)
	In_Temp_FIFO_demo uut (
		.clk(clk), 
		.pkt_begin(pkt_begin), 
		.pkt_end(pkt_end), 
		.pkt_in(pkt_in), 
		.rst(rst), 
		.depth(depth), 
		.FIFO_OUT(FIFO_OUT), 
		.pkt_out(pkt_out), 
		.source_IP(source_IP)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		pkt_begin = 0;
		pkt_end = 0;
		pkt_in = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
        
		// Add stimulus here
		rst = 0;
		pkt_end = 0;
		pkt_begin = 1;
		pkt_in = 32'd100;
		@(posedge clk);

		pkt_begin = 0;
		pkt_in = 32'd200;
		@(posedge clk);

		pkt_in = 32'd50;
		@(posedge clk);

		pkt_in = 32'd25;
		@(posedge clk);

		pkt_end = 1;
		pkt_in = 32'd500;
		@(posedge clk);

		pkt_end = 0;
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);

		pkt_begin = 1;
		pkt_in = 32'd11;
		@(posedge clk);

		pkt_begin = 0;
		pkt_in = 32'd12;
		@(posedge clk);

		pkt_in = 32'd13;
		@(posedge clk);

		pkt_in = 32'd14;
		@(posedge clk);

		pkt_in = 32'd15;
		@(posedge clk);

		pkt_in = 32'd16;
		@(posedge clk);

		pkt_in = 32'd17;
		@(posedge clk);

		pkt_end = 1;
		@(posedge clk);

		pkt_end = 0;
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);

		$stop;

	end
      
endmodule