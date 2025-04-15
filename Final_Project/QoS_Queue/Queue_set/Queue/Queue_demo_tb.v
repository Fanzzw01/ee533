`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:33:34 04/14/2025
// Design Name:   Queue_demo
// Module Name:   E:/Documents and Settings/student/Final_Project/Queue_demo_tb.v
// Project Name:  Final_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Queue_demo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Queue_demo_tb;

	// Inputs
	reg clk;
	reg [127:0] defined_source_ip_in;
	reg defined_source_ip_wen;
	reg pkt_end;
	reg [31:0] Queue_in;
	reg rst;
	reg temp_fifo_out;
	reg [31:0] temp_fifo_source_ip;
	reg total_queue_out_en;

	// Outputs
	wire [31:0] Queue_out;
	wire [2:0] depth_outer_out;

	// Instantiate the Unit Under Test (UUT)
	Queue_demo uut (
		.clk(clk), 
		.defined_source_ip_in(defined_source_ip_in), 
		.defined_source_ip_wen(defined_source_ip_wen), 
		.pkt_end(pkt_end), 
		.Queue_in(Queue_in), 
		.rst(rst), 
		.temp_fifo_out(temp_fifo_out), 
		.temp_fifo_source_ip(temp_fifo_source_ip), 
		.total_queue_out_en(total_queue_out_en), 
		.Queue_out(Queue_out),
		.depth_outer_out(depth_outer_out)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		defined_source_ip_in = 0;
		defined_source_ip_wen = 0;
		pkt_end = 0;
		Queue_in = 0;
		rst = 1;
		temp_fifo_out = 0;
		temp_fifo_source_ip = 0;
		total_queue_out_en = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
        
		// Add stimulus here
		// Initialize the defined match packet source IP state
		rst = 0;
		defined_source_ip_wen = 1;
		defined_source_ip_in = 128'h00000001000000100000001100000020; // defined matched IP address: 1, 16, 17, 32
		@(posedge clk);

		// Packet start input from In_Temp_FIFO
		defined_source_ip_wen = 0;
		defined_source_ip_in = 128'd0;
		temp_fifo_out = 1;
		temp_fifo_source_ip = 32'd1; // Source IP = 1
		Queue_in = 32'd10;
		@(posedge clk);

		Queue_in = 32'd20;
		@(posedge clk);

		Queue_in = 32'd30;
		@(posedge clk);

		Queue_in = 32'd1; // Source IP = 1
		@(posedge clk);

		Queue_in = 32'd40;
		@(posedge clk);

		Queue_in = 32'd50;
		pkt_end = 1;
		@(posedge clk);

		Queue_in = 32'd0;
		pkt_end = 0;
		temp_fifo_out = 0;
		@(posedge clk);

		temp_fifo_out = 1;
		temp_fifo_source_ip = 32'd16; // Source IP = 16
		Queue_in = 32'd100;
		@(posedge clk);

		Queue_in = 32'd200;
		@(posedge clk);

		Queue_in = 32'd300;
		@(posedge clk);

		Queue_in = 32'd16; // Source IP = 16
		@(posedge clk);

		Queue_in = 32'd400;
		@(posedge clk);

		Queue_in = 32'd500;
		@(posedge clk);

		Queue_in = 32'd600;
		pkt_end = 1;
		@(posedge clk);

		temp_fifo_out = 0;
		pkt_end = 0;
		@(posedge clk);

		// Packet start output from queue
		total_queue_out_en = 1;
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		total_queue_out_en = 0;
		@(posedge clk);
		total_queue_out_en = 1;
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
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

