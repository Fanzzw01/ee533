`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:58:47 03/24/2025
// Design Name:   neurons_hidden
// Module Name:   E:/Documents and Settings/student/EE533_Lab_10/neurons_hidden_tb.v
// Project Name:  EE533_Lab_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: neurons_hidden
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module neurons_hidden_tb;

	// Inputs
	reg clk;
	reg en;
	reg [63:0] image_in;
	reg image_load;
	reg rst;
	reg [1023:0] weight_in;
	reg weight_wen;

	// Outputs
	wire [15:0] fp16_adder_b_in;
	wire [5:0] i;
	wire image_i;
	wire [15:0] neurons_hidden_out;
	wire [15:0] weight_i_out;

	// Instantiate the Unit Under Test (UUT)
	neurons_hidden uut (
		.clk(clk), 
		.en(en), 
		.image_in(image_in), 
		.image_load(image_load), 
		.rst(rst), 
		.weight_in(weight_in), 
		.weight_wen(weight_wen), 
		.fp16_adder_b_in(fp16_adder_b_in), 
		.i(i), 
		.image_i(image_i), 
		.neurons_hidden_out(neurons_hidden_out), 
		.weight_i_out(weight_i_out)
	);

	always #50 clk = ~clk;

    initial begin
        clk = 1;
        en = 0;
        image_in = 0;
        image_load = 0;
        rst = 1;
        weight_in = 0;
        weight_wen = 0;
        @(posedge clk);

        rst = 0;
        weight_wen = 1;
        weight_in = 1024'h3a80_3a9f_3b05_3c10_eed8_edbf_0000_2d20_3b65_3a4d_3c50_3ac0_3b02_3aa0_3a3d_3c80_3f90_d7e0_d7b4_d8d5_3a1f_d8b0_d5d0_3a50_dc34_d9f2_3ab0_3a92_3a80_daad_3b40_3b15_3b80_2d35_eea3_e4c2_2b4d_3a15_2a80_3a11_21f0_3a3e_d73b_3a10_3a25_3a50_da95_eef2_3a2c_d977_ecc7_daac_d6c1_d5a7_eccd_21c4_3b55_d3f4_e6a1_edb5_e49f_e4e3_2932_2c72;
        @(posedge clk);

        weight_wen = 0;
        image_load = 1;
        image_in = 64'h1830403030303c1c;
        @(posedge clk);

        image_load = 0;
        en = 1;
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
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        $stop;
    end
      
endmodule

