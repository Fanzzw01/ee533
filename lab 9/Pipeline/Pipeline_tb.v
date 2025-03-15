`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:41:55 03/14/2025
// Design Name:   Pipeline
// Module Name:   E:/Documents and Settings/student/EE533_Lab9/EE533_Lab_9/Pipeline_tb.v
// Project Name:  EE533_Lab_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Pipeline_tb;

	// Inputs
	reg clk;
	reg [63:0] HLEN;
	reg [31:0] Instr_IN;
	reg [8:0] Instr_IN_addr;
	reg Instr_IN_en;
	reg [1:0] mode_code;
	reg [63:0] pkt_in;
	reg rst;
	reg rst_FIFO;
	reg [1:0] thread_IF;

	// Outputs
	wire FIFO_EMPTY;
	wire FIFO_FULL;
	wire [63:0] pkt_out;

	// Instantiate the Unit Under Test (UUT)
	Pipeline uut (
		.clk(clk), 
		.HLEN(HLEN), 
		.Instr_IN(Instr_IN), 
		.Instr_IN_addr(Instr_IN_addr), 
		.Instr_IN_en(Instr_IN_en), 
		.mode_code(mode_code), 
		.pkt_in(pkt_in), 
		.rst(rst), 
		.rst_FIFO(rst_FIFO), 
		.thread_IF(thread_IF), 
		.FIFO_EMPTY(FIFO_EMPTY), 
		.FIFO_FULL(FIFO_FULL), 
		.pkt_out(pkt_out)
	);

	always #50 clk = ~clk;
	// always #100 thread_IF[0] = ~thread_IF[0];
	// always #200 thread_IF[1] = ~thread_IF[1];

	initial begin
		// Initialize Inputs
		clk = 1;
		HLEN = 64'd3;
		Instr_IN = 0;
		Instr_IN_addr = 0;
		Instr_IN_en = 0;
		mode_code = 2'b11;
		pkt_in = 0;
		rst = 1;
		rst_FIFO = 1;
		thread_IF = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
		rst_FIFO = 0;
        
		// Add stimulus here
		// FIFO_in mode begin
		@(posedge clk);
		Instr_IN = 32'h0C010000;
		Instr_IN_addr = 9'b000000000;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h460000481C464000;
		
		@(posedge clk);
		Instr_IN = 32'h04210001;
		Instr_IN_addr = 9'b000000001;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h04062A6D0A000D03;

		@(posedge clk);
		Instr_IN = 32'h10010000;
		Instr_IN_addr = 9'b000000010;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0A000E0300000000;

		@(posedge clk);
		Instr_IN = 32'h0C010001;
		Instr_IN_addr = 9'b010000000;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0000000000000003;

		@(posedge clk);
		Instr_IN = 32'h24210001;
		Instr_IN_addr = 9'b010000001;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0000000000000004;

		@(posedge clk);
		Instr_IN = 32'h10010001;
		Instr_IN_addr = 9'b010000010;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0000000000000003;

		@(posedge clk);
		Instr_IN = 32'h0C010002;
		Instr_IN_addr = 9'b100000000;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0000000000000002;

		@(posedge clk);
		Instr_IN = 32'h0C020003;
		Instr_IN_addr = 9'b100000001;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0000000000000001;

		@(posedge clk);
		Instr_IN = 32'h18220005;
		Instr_IN_addr = 9'b100000010;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0000000000000002;

		@(posedge clk);
		Instr_IN = 32'h10010003;
		Instr_IN_addr = 9'b100000011;
		Instr_IN_en = 1;
		mode_code = 2'b11;
		pkt_in = 64'h0000000000000000;

		@(posedge clk);
		Instr_IN = 32'h10020002;
		Instr_IN_addr = 9'b100000100;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h00000000;
		Instr_IN_addr = 9'b100000101;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h0C010004;
		Instr_IN_addr = 9'b110000000;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h0C020005;
		Instr_IN_addr = 9'b110000001;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h18220005;
		Instr_IN_addr = 9'b110000010;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h10010005;
		Instr_IN_addr = 9'b110000011;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h10020004;
		Instr_IN_addr = 9'b110000100;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h00000000;
		Instr_IN_addr = 9'b110000101;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		// Thread Processing Begin
		@(posedge clk);
        Instr_IN_en = 0;
		thread_IF = 2'b00;
		mode_code = 2'b10;
		rst = 0;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		// FIFO_out mode begin
		@(posedge clk);
		mode_code = 2'b01;

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

