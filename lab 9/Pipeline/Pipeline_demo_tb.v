`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:03:45 03/13/2025
// Design Name:   Pipeline_demo
// Module Name:   E:/Documents and Settings/student/EE533_Lab9/EE533_Lab_9/Pipeline_demo_tb.v
// Project Name:  EE533_Lab_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Pipeline_demo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Pipeline_demo_tb;

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
	wire ADDI_ID;
	wire [3:0] ALU_OP_ID;
	wire BEQ_ID;
	wire BGT_ID;
	wire BLT_ID;
	wire [6:0] BTA;
	wire [7:0] depth;
	wire FIFO_almost_EMPTY;
	wire FIFO_almost_FULL;
	wire [31:0] Instruction;
	wire J_ID;
	wire LW_ID;
	wire MOVI_ID;
	wire NOOP_ID;
	wire [63:0] Offset_ID;
	wire [6:0] ONE;
	wire [8:0] PC;
	wire [6:0] PC0;
	wire [6:0] PC0_next;
	wire [6:0] PC0_plus_1;
	wire [6:0] PC1;
	wire [6:0] PC1_next;
	wire [6:0] PC1_plus_1;
	wire [6:0] PC2;
	wire [6:0] PC2_next_out;
	wire [6:0] PC2_plus_1;
	wire [6:0] PC3;
	wire [6:0] PC3_next_out;
	wire [6:0] PC3_plus_1;
	wire [63:0] pkt_out;
	wire [63:0] RF_WB_Din;
	wire [63:0] rs_data_ID;
	wire [63:0] rt_data_ID;
	wire [4:0] rt_ID;
	wire [2:0] rt_WB;
	wire SUBI_ID;
	wire SW_ID;
	wire WME_ID;
	wire WRE_ID;

	// Instantiate the Unit Under Test (UUT)
	Pipeline_demo uut (
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
		.ADDI_ID(ADDI_ID), 
		.ALU_OP_ID(ALU_OP_ID), 
		.BEQ_ID(BEQ_ID), 
		.BGT_ID(BGT_ID), 
		.BLT_ID(BLT_ID), 
		.BTA(BTA), 
		.depth(depth), 
		.FIFO_almost_EMPTY(FIFO_almost_EMPTY), 
		.FIFO_almost_FULL(FIFO_almost_FULL), 
		.Instruction(Instruction), 
		.J_ID(J_ID), 
		.LW_ID(LW_ID), 
		.MOVI_ID(MOVI_ID), 
		.NOOP_ID(NOOP_ID), 
		.Offset_ID(Offset_ID), 
		.ONE(ONE), 
		.PC(PC), 
		.PC0(PC0), 
		.PC0_next(PC0_next), 
		.PC0_plus_1(PC0_plus_1), 
		.PC1(PC1), 
		.PC1_next(PC1_next), 
		.PC1_plus_1(PC1_plus_1), 
		.PC2(PC2), 
		.PC2_next_out(PC2_next_out), 
		.PC2_plus_1(PC2_plus_1), 
		.PC3(PC3), 
		.PC3_next_out(PC3_next_out), 
		.PC3_plus_1(PC3_plus_1), 
		.pkt_out(pkt_out), 
		.RF_WB_Din(RF_WB_Din), 
		.rs_data_ID(rs_data_ID), 
		.rt_data_ID(rt_data_ID), 
		.rt_ID(rt_ID), 
		.rt_WB(rt_WB), 
		.SUBI_ID(SUBI_ID), 
		.SW_ID(SW_ID), 
		.WME_ID(WME_ID), 
		.WRE_ID(WRE_ID)
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
		Instr_IN = 32'h10200000;
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
		Instr_IN = 32'h1C220005;
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
		Instr_IN = 32'h1C220005;
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

