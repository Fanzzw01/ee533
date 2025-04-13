`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:13:21 04/12/2025
// Design Name:   In_Temp_FIFO_state_machine
// Module Name:   E:/Documents and Settings/student/Final_Project/In_Temp_FIFO_state_machine_tb.v
// Project Name:  Final_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: In_Temp_FIFO_state_machine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module In_Temp_FIFO_state_machine_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [7:0] RP;
	reg pkt_begin;
	reg pkt_end;

	// Outputs
	wire [7:0] RP_plus_3;
	wire FIFO_IN;
	wire FIFO_OUT;

	// Instantiate the Unit Under Test (UUT)
	In_Temp_FIFO_state_machine uut (
		.clk(clk), 
		.rst(rst), 
		.RP(RP), 
		.pkt_begin(pkt_begin), 
		.pkt_end(pkt_end), 
		.RP_plus_3(RP_plus_3),
		.FIFO_IN(FIFO_IN),
		.FIFO_OUT(FIFO_OUT)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		RP = 0;
		pkt_begin = 0;
		pkt_end = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
        
		// Add stimulus here
		rst = 0;
		RP = 8'd1;
		pkt_begin = 1;
		@(posedge clk);

		pkt_begin = 0;
		@(posedge clk);

		RP = 8'd5;
		@(posedge clk);

		RP = 8'd7;
		pkt_end = 1;
		@(posedge clk);

		RP = 8'd2;
		pkt_end = 0;
		@(posedge clk);

		@(posedge clk);

		RP = 8'd3;
		pkt_begin = 1;
		@(posedge clk);

		RP = 8'd4;
		pkt_begin = 0;
		pkt_end = 1;
		@(posedge clk);

		RP = 8'd8;
		pkt_begin = 1;
		pkt_end = 0;
		@(posedge clk);

		pkt_begin = 0;
		@(posedge clk);

		RP = 8'd5;
		pkt_end = 1;
		@(posedge clk);

		pkt_end = 0;
		@(posedge clk);

		@(posedge clk);

		$stop;

	end
      
endmodule

