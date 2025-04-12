`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:59:27 03/24/2025
// Design Name:   weight_Reg
// Module Name:   E:/Documents and Settings/student/EE533_Lab10/EE533_Lab_10/weight_Reg_tb.v
// Project Name:  EE533_Lab_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: weight_Reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module weight_Reg_tb;

	// Inputs
	reg clk;
	reg rst;
	reg wen;
	reg [1023:0] weight_in;
	reg [5:0] weight_addr;

	// Outputs
	wire [15:0] weight_out;

	// Instantiate the Unit Under Test (UUT)
	weight_Reg uut (
		.clk(clk), 
		.rst(rst), 
		.wen(wen), 
		.weight_in(weight_in), 
		.weight_addr(weight_addr), 
		.weight_out(weight_out)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		wen = 0;
		weight_in = 0;
		weight_addr = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
        
		// Add stimulus here
		rst = 0;
		wen = 1;
		weight_in = 1024'h3a80_3a9f_3b05_3c10_eed8_edbf_0000_2d20_3b65_3a4d_3c50_3ac0_3b02_3aa0_3a3d_3c80_3f90_d7e0_d7b4_d8d5_3a1f_d8b0_d5d0_3a50_dc34_d9f2_3ab0_3a92_3a80_daad_3b40_3b15_3b80_2d35_eea3_e4c2_2b4d_3a15_2a80_3a11_21f0_3a3e_d73b_3a10_3a25_3a50_da95_eef2_3a2c_d977_ecc7_daac_d6c1_d5a7_eccd_21c4_3b55_d3f4_e6a1_edb5_e49f_e4e3_2932_2c72;
		@(posedge clk);

		wen = 0;
		weight_addr = 6'd0; @(posedge clk);
		weight_addr = 6'd1; @(posedge clk);
		weight_addr = 6'd2; @(posedge clk);
		weight_addr = 6'd3; @(posedge clk);
		weight_addr = 6'd4; @(posedge clk);
		weight_addr = 6'd5; @(posedge clk);
		weight_addr = 6'd6; @(posedge clk);
		weight_addr = 6'd7; @(posedge clk);
		weight_addr = 6'd8; @(posedge clk);
		weight_addr = 6'd9; @(posedge clk);
		weight_addr = 6'd10; @(posedge clk);
		weight_addr = 6'd11; @(posedge clk);
		weight_addr = 6'd63; @(posedge clk);

		$stop;

	end
      
endmodule

