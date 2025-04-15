`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:28:58 04/13/2025
// Design Name:   Queue_Matcher
// Module Name:   E:/Documents and Settings/student/Final_Project/Queue_Matcher_tb.v
// Project Name:  Final_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Queue_Matcher
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Queue_Matcher_tb;

	// Inputs
	reg clk;
	reg rst;
	reg defined_source_ip_wen;
	reg [127:0] defined_source_ip_in;
	reg fifo_out;
	reg [31:0] fifo_temp_source_ip;

	// Outputs
	wire match;

	// Instantiate the Unit Under Test (UUT)
	Queue_Matcher uut (
		.clk(clk), 
		.rst(rst), 
		.defined_source_ip_wen(defined_source_ip_wen), 
		.defined_source_ip_in(defined_source_ip_in), 
		.fifo_out(fifo_out), 
		.fifo_temp_source_ip(fifo_temp_source_ip), 
		.match(match)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		defined_source_ip_wen = 0;
		defined_source_ip_in = 0;
		fifo_out = 0;
		fifo_temp_source_ip = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);        
		// Add stimulus here
		rst = 0;
		defined_source_ip_wen = 1;
		defined_source_ip_in = 128'h00000003000000590000001900000018;
		@(posedge clk);

		defined_source_ip_wen = 0;
		defined_source_ip_in = 128'd0;
		@(posedge clk);

		fifo_out = 1;
		fifo_temp_source_ip = 32'd20;
		@(posedge clk);

		fifo_temp_source_ip = 32'd25;
		@(posedge clk);

		fifo_temp_source_ip = 32'd22;
		@(posedge clk);

		fifo_temp_source_ip = 32'd89;
		@(posedge clk);

		fifo_temp_source_ip = 32'd26;
		@(posedge clk);

		fifo_temp_source_ip = 32'd3;
		@(posedge clk);

		$stop;

	end
      
endmodule

