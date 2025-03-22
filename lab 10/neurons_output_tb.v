`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:38:04 03/21/2025
// Design Name:   neurons_output
// Module Name:   E:/Documents and Settings/student/EE533_Lab10/neurons_output_tb.v
// Project Name:  EE533_Lab10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: neurons_output
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module neurons_output_tb;

	// Inputs
	reg clk;
	reg rst;
	reg wen;
	reg en;
	reg [15:0] weight_in;
	reg [1:0] weight_addr;
	reg [15:0] ReLu_1;
	reg [15:0] ReLu_2;
	reg [15:0] ReLu_3;

	// Outputs
	wire [15:0] Prediction_score;

	// Instantiate the Unit Under Test (UUT)
	neurons_output uut (
		.clk(clk), 
		.rst(rst), 
		.wen(wen), 
		.en(en),
		.weight_in(weight_in), 
		.weight_addr(weight_addr), 
		.ReLu_1(ReLu_1), 
		.ReLu_2(ReLu_2), 
		.ReLu_3(ReLu_3), 
		.Prediction_score(Prediction_score)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		wen = 0;
		en = 0;
		weight_in = 0;
		weight_addr = 0;
		ReLu_1 = 0;
		ReLu_2 = 0;
		ReLu_3 = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
        
		// Add stimulus here
		rst = 0;
		wen = 1;
		weight_addr = 2'd0; weight_in = 16'hb820; @(posedge clk);
		weight_addr = 2'd1; weight_in = 16'h3d26; @(posedge clk);
		weight_addr = 2'd2; weight_in = 16'h3d92; @(posedge clk);

		wen = 0;
		weight_addr = 2'd0; weight_in = 16'h0000; @(posedge clk);
		
		en = 1;
		weight_addr = 2'd0; weight_in = 16'h0000;
		ReLu_1 = 16'h0000; ReLu_2 = 16'h0000; ReLu_3 = 16'h3c30; @(posedge clk);
		ReLu_1 = 16'h0000; ReLu_2 = 16'h0000; ReLu_3 = 16'h0000; @(posedge clk);
		ReLu_1 = 16'h0000; ReLu_2 = 16'h0000; ReLu_3 = 16'h3ddc; @(posedge clk);

		@(posedge clk);
		$stop;

	end
      
endmodule

