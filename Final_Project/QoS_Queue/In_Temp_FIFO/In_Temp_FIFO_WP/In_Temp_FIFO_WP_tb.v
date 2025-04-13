`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:27:38 04/12/2025
// Design Name:   In_Temp_FIFO_WP
// Module Name:   E:/Documents and Settings/student/Final_Project_Verilog/In_Temp_FIFO_WP_tb.v
// Project Name:  Final_Project_Verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: In_Temp_FIFO_WP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module In_Temp_FIFO_WP_tb;

	// Inputs
	reg clk;
	reg rst;
	reg WP_en;
	reg FIFO_FULL;

	// Outputs
	wire [7:0] WP;

	// Instantiate the Unit Under Test (UUT)
	In_Temp_FIFO_WP uut (
		.clk(clk), 
		.rst(rst), 
		.WP_en(WP_en), 
		.FIFO_FULL(FIFO_FULL), 
		.WP(WP)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		WP_en = 0;
		FIFO_FULL = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
        
		// Add stimulus here
		rst = 0;
		@(posedge clk);

		WP_en = 1;
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);

		FIFO_FULL = 1;
		@(posedge clk);
		@(posedge clk);

		WP_en = 0;
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);

		FIFO_FULL = 0;
		@(posedge clk);
		@(posedge clk);

		$stop;

	end
      
endmodule

