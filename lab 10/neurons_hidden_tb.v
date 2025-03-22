`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:59:51 03/21/2025
// Design Name:   neurons_hidden
// Module Name:   E:/Documents and Settings/student/EE533_Lab10/neurons_hidden_tb.v
// Project Name:  EE533_Lab10
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
	reg rst;
	reg wen;
	reg en;
	reg [15:0] weight_in;
	reg [5:0] weight_addr;
	reg [63:0] image;

	// Outputs
	wire [15:0] neurons_output;

	// Instantiate the Unit Under Test (UUT)
	neurons_hidden uut (
		.clk(clk), 
		.rst(rst), 
		.wen(wen), 
		.en(en),
		.weight_in(weight_in), 
		.weight_addr(weight_addr), 
		.image(image), 
		.neurons_output(neurons_output)
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
		image = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
        
		// Add stimulus here
		rst = 0;
		wen = 1;
		weight_addr = 6'd0;  weight_in = 16'h2c72; @(posedge clk);
		weight_addr = 6'd1;  weight_in = 16'h2932; @(posedge clk);
		weight_addr = 6'd2;  weight_in = 16'he4e3; @(posedge clk);
		weight_addr = 6'd3;  weight_in = 16'he49f; @(posedge clk);
		weight_addr = 6'd4;  weight_in = 16'hedb5; @(posedge clk);
		weight_addr = 6'd5;  weight_in = 16'he6a1; @(posedge clk);
		weight_addr = 6'd6;  weight_in = 16'hd3f4; @(posedge clk);
		weight_addr = 6'd7;  weight_in = 16'h3b55; @(posedge clk);
		weight_addr = 6'd8;  weight_in = 16'h21c4; @(posedge clk);
		weight_addr = 6'd9;  weight_in = 16'heccd; @(posedge clk);
		weight_addr = 6'd10; weight_in = 16'hd5a7; @(posedge clk);
		weight_addr = 6'd11; weight_in = 16'hd6c1; @(posedge clk);
		weight_addr = 6'd12; weight_in = 16'hdaac; @(posedge clk);
		weight_addr = 6'd13; weight_in = 16'hecc7; @(posedge clk);
		weight_addr = 6'd14; weight_in = 16'hd977; @(posedge clk);
		weight_addr = 6'd15; weight_in = 16'h3a2c; @(posedge clk);
		weight_addr = 6'd16; weight_in = 16'heef2; @(posedge clk);
		weight_addr = 6'd17; weight_in = 16'hda95; @(posedge clk);
		weight_addr = 6'd18; weight_in = 16'h3a50; @(posedge clk);
		weight_addr = 6'd19; weight_in = 16'h3a25; @(posedge clk);
		weight_addr = 6'd20; weight_in = 16'h3a10; @(posedge clk);
		weight_addr = 6'd21; weight_in = 16'hd73b; @(posedge clk);
		weight_addr = 6'd22; weight_in = 16'h3a3e; @(posedge clk);
		weight_addr = 6'd23; weight_in = 16'h21f0; @(posedge clk);
		weight_addr = 6'd24; weight_in = 16'h3a11; @(posedge clk);
		weight_addr = 6'd25; weight_in = 16'h2a80; @(posedge clk);
		weight_addr = 6'd26; weight_in = 16'h3a15; @(posedge clk);
		weight_addr = 6'd27; weight_in = 16'h2b4d; @(posedge clk);
		weight_addr = 6'd28; weight_in = 16'he4c2; @(posedge clk);
		weight_addr = 6'd29; weight_in = 16'heea3; @(posedge clk);
		weight_addr = 6'd30; weight_in = 16'h2d35; @(posedge clk);
		weight_addr = 6'd31; weight_in = 16'h3b80; @(posedge clk);
		weight_addr = 6'd32; weight_in = 16'h3b15; @(posedge clk);
		weight_addr = 6'd33; weight_in = 16'h3b40; @(posedge clk);
		weight_addr = 6'd34; weight_in = 16'hdaad; @(posedge clk);
		weight_addr = 6'd35; weight_in = 16'h3a80; @(posedge clk);
		weight_addr = 6'd36; weight_in = 16'h3a92; @(posedge clk);
		weight_addr = 6'd37; weight_in = 16'h3ab0; @(posedge clk);
		weight_addr = 6'd38; weight_in = 16'hd9f2; @(posedge clk);
		weight_addr = 6'd39; weight_in = 16'hdc34; @(posedge clk);
		weight_addr = 6'd40; weight_in = 16'h3a50; @(posedge clk);
		weight_addr = 6'd41; weight_in = 16'hd5d0; @(posedge clk);
		weight_addr = 6'd42; weight_in = 16'hd8b0; @(posedge clk);
		weight_addr = 6'd43; weight_in = 16'h3a1f; @(posedge clk);
		weight_addr = 6'd44; weight_in = 16'hd8d5; @(posedge clk);
		weight_addr = 6'd45; weight_in = 16'hd7b4; @(posedge clk);
		weight_addr = 6'd46; weight_in = 16'hd7e0; @(posedge clk);
		weight_addr = 6'd47; weight_in = 16'h3f90; @(posedge clk);
		weight_addr = 6'd48; weight_in = 16'h3c80; @(posedge clk);
		weight_addr = 6'd49; weight_in = 16'h3a3d; @(posedge clk);
		weight_addr = 6'd50; weight_in = 16'h3aa0; @(posedge clk);
		weight_addr = 6'd51; weight_in = 16'h3b02; @(posedge clk);
		weight_addr = 6'd52; weight_in = 16'h3ac0; @(posedge clk);
		weight_addr = 6'd53; weight_in = 16'h3c50; @(posedge clk);
		weight_addr = 6'd54; weight_in = 16'h3a4d; @(posedge clk);
		weight_addr = 6'd55; weight_in = 16'h3b65; @(posedge clk);
		weight_addr = 6'd56; weight_in = 16'h2d20; @(posedge clk);
		weight_addr = 6'd57; weight_in = 16'h0000; @(posedge clk);
		weight_addr = 6'd58; weight_in = 16'hedbf; @(posedge clk);
		weight_addr = 6'd59; weight_in = 16'heed8; @(posedge clk);
		weight_addr = 6'd60; weight_in = 16'h3c10; @(posedge clk);
		weight_addr = 6'd61; weight_in = 16'h3b05; @(posedge clk);
		weight_addr = 6'd62; weight_in = 16'h3a9f; @(posedge clk);
		weight_addr = 6'd63; weight_in = 16'h3a80; @(posedge clk);

		wen = 0;
		weight_addr = 6'd0; weight_in = 16'h0000;
		@(posedge clk);

		en = 1;
		image = 64'h1830403030303c1c; @(posedge clk);
		image = 64'h201000e080c0f0f0; @(posedge clk);
		image = 64'h103010306030f0f0; @(posedge clk);
		image = 64'h20203c5020606060; @(posedge clk);
		image = 64'h7030281078d87060; @(posedge clk);
		image = 64'h7030281078d87060; @(posedge clk);
		image = 64'h70a0908010d0f010; @(posedge clk);
		image = 64'h3038383e30f01060; @(posedge clk);
		image = 64'h303e3e6c6c58b030; @(posedge clk);
		image = 64'h04040404143c0c04; @(posedge clk);

		@(posedge clk);
		$stop;

	end
      
endmodule

