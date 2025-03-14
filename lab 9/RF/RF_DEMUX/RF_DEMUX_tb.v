`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:15:14 03/13/2025
// Design Name:   RF_DEMUX
// Module Name:   E:/Documents and Settings/student/EE533_Lab9/RF_DEMUX_tb.v
// Project Name:  EE533_Lab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RF_DEMUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RF_DEMUX_tb;

	// Inputs
	reg [1:0] thread_WB;
	reg [2:0] waddr;
	reg [63:0] wdata;
	reg WRE_WB;

	// Outputs
	wire [2:0] waddr_DEMUX_out;
	wire [63:0] wdata_DEMUX_out;
	wire RF0_WRE_WB;
	wire RF1_WRE_WB;
	wire RF2_WRE_WB;
	wire RF3_WRE_WB;

	// Instantiate the Unit Under Test (UUT)
	RF_DEMUX uut (
		.thread_WB(thread_WB), 
		.waddr(waddr), 
		.wdata(wdata), 
		.WRE_WB(WRE_WB), 
		.waddr_DEMUX_out(waddr_DEMUX_out), 
		.wdata_DEMUX_out(wdata_DEMUX_out), 
		.RF0_WRE_WB(RF0_WRE_WB), 
		.RF1_WRE_WB(RF1_WRE_WB), 
		.RF2_WRE_WB(RF2_WRE_WB), 
		.RF3_WRE_WB(RF3_WRE_WB)
	);

	initial begin
		// Initialize Inputs
		thread_WB = 2'b00;
		waddr = 3'd1;
		wdata = 3'd2;
		WRE_WB = 0;

		// Wait 100 ns for global reset to finish
		#100;
		WRE_WB = 1;
        
		// Add stimulus here
		#100;
		thread_WB = 2'b01;

		#100;
		thread_WB = 2'b10;

		#100;
		thread_WB = 2'b11;

		#100;
		WRE_WB = 0;

		#100;
		thread_WB = 2'b00;

		#100;
		thread_WB = 2'b01;

		#100;
		thread_WB = 2'b10;

		#100;
		thread_WB = 2'b11;

		#100;
		$stop;

	end
      
endmodule

