`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:21:00 04/12/2025
// Design Name:   In_Temp_FIFO_RP
// Module Name:   E:/Documents and Settings/student/Final_Project_Verilog/In_Temp_FIFO_RP_tb.v
// Project Name:  Final_Project_Verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: In_Temp_FIFO_RP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module In_Temp_FIFO_RP_tb;

	// Inputs
	reg clk;
	reg rst;
	reg RP_en;
	reg FIFO_EMPTY;

	// Outputs
	wire [7:0] RP;

	// Instantiate the Unit Under Test (UUT)
	In_Temp_FIFO_RP uut (
		.clk(clk), 
		.rst(rst), 
		.RP_en(RP_en), 
		.FIFO_EMPTY(FIFO_EMPTY), 
		.RP(RP)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		RP_en = 0;
		FIFO_EMPTY = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
        
		// Add stimulus here
		rst = 0;
		RP_en = 1;
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);

		RP_en = 0;
		@(posedge clk);

		@(posedge clk);
		@(posedge clk);

		RP_en = 1;
		@(posedge clk);

		@(posedge clk);

		FIFO_EMPTY = 1;
		@(posedge clk);

		RP_en = 0;
		@(posedge clk);

		@(posedge clk);

		$stop;

	end
      
endmodule

