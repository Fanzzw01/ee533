`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:22:43 04/14/2025
// Design Name:   Queue_set
// Module Name:   E:/Documents and Settings/student/Final_Project/Queue_set_tb.v
// Project Name:  Final_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Queue_set
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Queue_set_tb;

	// Inputs
	reg clk;
	reg [127:0] defined_source_ip_in_0;
	reg [127:0] defined_source_ip_in_1;
	reg defined_source_ip_wen;
	reg pkt_end;
	reg [31:0] queue_in;
	reg queue_set_out_en;
	reg rst;
	reg temp_fifo_out;
	reg [31:0] temp_fifo_source_ip;
	reg [39:0] weight_in;
	reg weight_in_wen;

	// Outputs
	wire [31:0] queue_set_out;

	// Instantiate the Unit Under Test (UUT)
	Queue_set uut (
		.clk(clk), 
		.defined_source_ip_in_0(defined_source_ip_in_0), 
		.defined_source_ip_in_1(defined_source_ip_in_1), 
		.defined_source_ip_wen(defined_source_ip_wen), 
		.pkt_end(pkt_end), 
		.queue_in(queue_in), 
		.queue_set_out_en(queue_set_out_en), 
		.rst(rst), 
		.temp_fifo_out(temp_fifo_out), 
		.temp_fifo_source_ip(temp_fifo_source_ip), 
		.weight_in(weight_in), 
		.weight_in_wen(weight_in_wen), 
		.queue_set_out(queue_set_out)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		defined_source_ip_in_0 = 0;
		defined_source_ip_in_1 = 0;
		defined_source_ip_wen = 0;
		pkt_end = 0;
		queue_in = 0;
		queue_set_out_en = 0;
		rst = 1;
		temp_fifo_out = 0;
		temp_fifo_source_ip = 0;
		weight_in = 0;
		weight_in_wen = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
        
		// Add stimulus here
		rst = 0;
		defined_source_ip_wen = 1;
		defined_source_ip_in_0 = 128'h00000001000000020000000300000004; // Source IP == 1 or 2 or 3 or 4's packet would write into queue 0
		defined_source_ip_in_1 = 128'h00000005000000060000000700000008; // Source IP == 5 or 6 or 7 or 8's packet would write into queue 1
		weight_in_wen = 1;
		weight_in = 40'hFD961BA750; // Queue 1 weight (depth = 4 ~ 0) = 15, 13, 9, 6, 1; Queue 0 weight (depth = 4 ~ 0) = 11, 10, 7, 5, 0
		@(posedge clk);

		defined_source_ip_wen = 0;
		defined_source_ip_in_0 = 128'd0;
		defined_source_ip_in_1 = 128'd0;
		weight_in_wen = 0;
		weight_in = 40'd0;

		temp_fifo_out = 1;

		// First packet input
		temp_fifo_source_ip = 32'd1; // Source IP == 1, so this packet would be stored into queue 0
		queue_in = 32'd10;
		@(posedge clk);

		queue_in = 32'd20;
		@(posedge clk);

		queue_in = 32'd30;
		@(posedge clk);

		queue_in = 32'd1; // Source IP == 1, so this packet would be stored into queue 0
		@(posedge clk);

		queue_in = 32'd40;
		@(posedge clk);

		pkt_end = 1;
		queue_in = 32'd50;
		@(posedge clk);

		// Second packet input
		pkt_end = 0;
		temp_fifo_source_ip = 32'd5; // Source IP == 5, so this packet would be stored into queue 1
		queue_in = 32'd100;
		@(posedge clk);

		queue_in = 32'd200;
		@(posedge clk);

		queue_in = 32'd300;
		@(posedge clk);

		queue_in = 32'd5;
		@(posedge clk);

		queue_in = 32'd400;
		@(posedge clk);

		queue_in = 32'd500;
		@(posedge clk);

		queue_in = 32'd600;
		@(posedge clk);

		pkt_end = 1;
		queue_in = 32'd700;
		@(posedge clk);

		// Thrid packet input
		pkt_end = 0;
		temp_fifo_source_ip = 32'd2; // Source IP == 2, so this packet would be stored into queue 0
		queue_in = 32'd12;
		@(posedge clk);

		queue_in = 32'd24;
		@(posedge clk);

		queue_in = 32'd36;
		@(posedge clk);

		queue_in = 32'd2;
		@(posedge clk);

		queue_in = 32'd48;
		@(posedge clk);

		pkt_end = 1;
		queue_in = 32'd60;
		@(posedge clk);

		// Stop write in Queue Set
		pkt_end = 0;
		temp_fifo_source_ip = 32'd0;
		temp_fifo_out = 0;
		@(posedge clk);

		// Start read out Queue Set
		queue_set_out_en = 1;
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

