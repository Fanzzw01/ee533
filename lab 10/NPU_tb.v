`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:46:56 03/22/2025
// Design Name:   NPU
// Module Name:   E:/Documents and Settings/student/EE533_Lab10/EE533_Lab_10/NPU_tb.v
// Project Name:  EE533_Lab_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NPU_tb;

	// Inputs
	reg clk;
	reg en;
	reg [63:0] image;
	reg [5:0] neurons_hidden_weight_addr;
	reg neurons_hidden_wen;
	reg [15:0] neurons_hidden_0_weight_in;
	reg [15:0] neurons_hidden_1_weight_in;
	reg [15:0] neurons_hidden_2_weight_in;
	reg [1:0] neurons_output_weight_addr;
	reg neurons_output_wen;
	reg [15:0] neurons_output_0_weight_in;
	reg [15:0] neurons_output_1_weight_in;
	reg [15:0] neurons_output_2_weight_in;
	reg [15:0] neurons_output_3_weight_in;
	reg [15:0] neurons_output_4_weight_in;
	reg [15:0] neurons_output_5_weight_in;
	reg [15:0] neurons_output_6_weight_in;
	reg [15:0] neurons_output_7_weight_in;
	reg [15:0] neurons_output_8_weight_in;
	reg [15:0] neurons_output_9_weight_in;
	reg rst;

	// Outputs
	wire [3:0] prediction_class;
	wire [15:0] prediction_score;

	// Instantiate the Unit Under Test (UUT)
	NPU uut (
		.clk(clk), 
		.en(en),
		.image(image), 
		.neurons_hidden_weight_addr(neurons_hidden_weight_addr), 
		.neurons_hidden_wen(neurons_hidden_wen), 
		.neurons_hidden_0_weight_in(neurons_hidden_0_weight_in), 
		.neurons_hidden_1_weight_in(neurons_hidden_1_weight_in), 
		.neurons_hidden_2_weight_in(neurons_hidden_2_weight_in), 
		.neurons_output_weight_addr(neurons_output_weight_addr), 
		.neurons_output_wen(neurons_output_wen), 
		.neurons_output_0_weight_in(neurons_output_0_weight_in), 
		.neurons_output_1_weight_in(neurons_output_1_weight_in), 
		.neurons_output_2_weight_in(neurons_output_2_weight_in), 
		.neurons_output_3_weight_in(neurons_output_3_weight_in), 
		.neurons_output_4_weight_in(neurons_output_4_weight_in), 
		.neurons_output_5_weight_in(neurons_output_5_weight_in), 
		.neurons_output_6_weight_in(neurons_output_6_weight_in), 
		.neurons_output_7_weight_in(neurons_output_7_weight_in), 
		.neurons_output_8_weight_in(neurons_output_8_weight_in), 
		.neurons_output_9_weight_in(neurons_output_9_weight_in), 
		.rst(rst), 
		.prediction_class(prediction_class), 
		.prediction_score(prediction_score)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		en = 0;
		image = 0;
		neurons_hidden_weight_addr = 0;
		neurons_hidden_wen = 0;
		neurons_hidden_0_weight_in = 0;
		neurons_hidden_1_weight_in = 0;
		neurons_hidden_2_weight_in = 0;
		neurons_output_weight_addr = 0;
		neurons_output_wen = 0;
		neurons_output_0_weight_in = 0;
		neurons_output_1_weight_in = 0;
		neurons_output_2_weight_in = 0;
		neurons_output_3_weight_in = 0;
		neurons_output_4_weight_in = 0;
		neurons_output_5_weight_in = 0;
		neurons_output_6_weight_in = 0;
		neurons_output_7_weight_in = 0;
		neurons_output_8_weight_in = 0;
		neurons_output_9_weight_in = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
        
		// Add stimulus here
		rst = 0;
		neurons_hidden_wen = 1;
		neurons_hidden_weight_addr = 6'd0; neurons_hidden_0_weight_in = 16'h2c72; neurons_hidden_1_weight_in = 16'hf99e; neurons_hidden_2_weight_in = 16'hf9f2;

		neurons_output_wen = 1;
		neurons_output_weight_addr = 2'd0;
		neurons_output_0_weight_in = 16'hb820;
		neurons_output_1_weight_in = 16'h4240;
		neurons_output_2_weight_in = 16'h3d90;
		neurons_output_3_weight_in = 16'hbb00;
		neurons_output_4_weight_in = 16'h3b80;
		neurons_output_5_weight_in = 16'hbd2e;
		neurons_output_6_weight_in = 16'h3d88;
		neurons_output_7_weight_in = 16'hbd80;
		neurons_output_8_weight_in = 16'h3da0;
		neurons_output_9_weight_in = 16'hbbd0;
		@(posedge clk);

		neurons_hidden_weight_addr = 6'd1; neurons_hidden_0_weight_in = 16'h2932; neurons_hidden_1_weight_in = 16'hf7fe; neurons_hidden_2_weight_in = 16'hf8e4;
		
		neurons_output_weight_addr = 2'd1;
		neurons_output_0_weight_in = 16'h3d26;
		neurons_output_1_weight_in = 16'hbd6a;
		neurons_output_2_weight_in = 16'hbdc0;
		neurons_output_3_weight_in = 16'hbcf2;
		neurons_output_4_weight_in = 16'h3ce4;
		neurons_output_5_weight_in = 16'h3c20;
		neurons_output_6_weight_in = 16'h3a00;
		neurons_output_7_weight_in = 16'h4280;
		neurons_output_8_weight_in = 16'hbc52;
		neurons_output_9_weight_in = 16'h3380;
		@(posedge clk);

		neurons_hidden_weight_addr = 6'd2; neurons_hidden_0_weight_in = 16'he4e3; neurons_hidden_1_weight_in = 16'hd1aa; neurons_hidden_2_weight_in = 16'h2b20;

		neurons_output_weight_addr = 2'd2;
		neurons_output_0_weight_in = 16'h3d92;
		neurons_output_1_weight_in = 16'hbc4a;
		neurons_output_2_weight_in = 16'h3b98;
		neurons_output_3_weight_in = 16'h3d98;
		neurons_output_4_weight_in = 16'hc5f2;
		neurons_output_5_weight_in = 16'h3d4a;
		neurons_output_6_weight_in = 16'hac00;
		neurons_output_7_weight_in = 16'hbc9a;
		neurons_output_8_weight_in = 16'h3280;
		neurons_output_9_weight_in = 16'h3cfe;
		@(posedge clk);

		neurons_hidden_weight_addr = 6'd3; neurons_hidden_0_weight_in = 16'he49f; neurons_hidden_1_weight_in = 16'h3af8; neurons_hidden_2_weight_in = 16'h3a50;

		neurons_output_wen = 0;
		neurons_output_weight_addr = 2'd0;
		neurons_output_0_weight_in = 0;
		neurons_output_1_weight_in = 0;
		neurons_output_2_weight_in = 0;
		neurons_output_3_weight_in = 0;
		neurons_output_4_weight_in = 0;
		neurons_output_5_weight_in = 0;
		neurons_output_6_weight_in = 0;
		neurons_output_7_weight_in = 0;
		neurons_output_8_weight_in = 0;
		neurons_output_9_weight_in = 0;
		@(posedge clk);

		neurons_hidden_weight_addr = 6'd4; neurons_hidden_0_weight_in = 16'hedb5; neurons_hidden_1_weight_in = 16'hf9d9; neurons_hidden_2_weight_in = 16'h2b10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd5; neurons_hidden_0_weight_in = 16'he6a1; neurons_hidden_1_weight_in = 16'hf89f; neurons_hidden_2_weight_in = 16'hf8c0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd6; neurons_hidden_0_weight_in = 16'hd3f4; neurons_hidden_1_weight_in = 16'h3a90; neurons_hidden_2_weight_in = 16'h3b10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd7; neurons_hidden_0_weight_in = 16'h3b55; neurons_hidden_1_weight_in = 16'h3a40; neurons_hidden_2_weight_in = 16'hf7f0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd8; neurons_hidden_0_weight_in = 16'h21c4; neurons_hidden_1_weight_in = 16'hf9a9; neurons_hidden_2_weight_in = 16'hf8d4; @(posedge clk);
		neurons_hidden_weight_addr = 6'd9; neurons_hidden_0_weight_in = 16'heccd; neurons_hidden_1_weight_in = 16'h3a60; neurons_hidden_2_weight_in = 16'h3a70; @(posedge clk);
		neurons_hidden_weight_addr = 6'd10; neurons_hidden_0_weight_in = 16'hd5a7; neurons_hidden_1_weight_in = 16'h3a04; neurons_hidden_2_weight_in = 16'h3a90; @(posedge clk);
		neurons_hidden_weight_addr = 6'd11; neurons_hidden_0_weight_in = 16'hd6c1; neurons_hidden_1_weight_in = 16'h3a10; neurons_hidden_2_weight_in = 16'hf8b0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd12; neurons_hidden_0_weight_in = 16'hdaac; neurons_hidden_1_weight_in = 16'h3a80; neurons_hidden_2_weight_in = 16'h3a20; @(posedge clk);
		neurons_hidden_weight_addr = 6'd13; neurons_hidden_0_weight_in = 16'hecc7; neurons_hidden_1_weight_in = 16'hf89d; neurons_hidden_2_weight_in = 16'h3a10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd14; neurons_hidden_0_weight_in = 16'hd977; neurons_hidden_1_weight_in = 16'h3a20; neurons_hidden_2_weight_in = 16'hf8d0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd15; neurons_hidden_0_weight_in = 16'h3a2c; neurons_hidden_1_weight_in = 16'hf8f0; neurons_hidden_2_weight_in = 16'h3a00; @(posedge clk);
		neurons_hidden_weight_addr = 6'd16; neurons_hidden_0_weight_in = 16'heef2; neurons_hidden_1_weight_in = 16'hf8f4; neurons_hidden_2_weight_in = 16'h3a40; @(posedge clk);
		neurons_hidden_weight_addr = 6'd17; neurons_hidden_0_weight_in = 16'hda95; neurons_hidden_1_weight_in = 16'hd1a2; neurons_hidden_2_weight_in = 16'h3a10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd18; neurons_hidden_0_weight_in = 16'h3a50; neurons_hidden_1_weight_in = 16'hf95e; neurons_hidden_2_weight_in = 16'h3a20; @(posedge clk);
		neurons_hidden_weight_addr = 6'd19; neurons_hidden_0_weight_in = 16'h3a25; neurons_hidden_1_weight_in = 16'hf9fe; neurons_hidden_2_weight_in = 16'hd1a0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd20; neurons_hidden_0_weight_in = 16'h3a10; neurons_hidden_1_weight_in = 16'hc1c5; neurons_hidden_2_weight_in = 16'hf9c0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd21; neurons_hidden_0_weight_in = 16'hd73b; neurons_hidden_1_weight_in = 16'hf9f1; neurons_hidden_2_weight_in = 16'h3a10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd22; neurons_hidden_0_weight_in = 16'h3a3e; neurons_hidden_1_weight_in = 16'hf8d4; neurons_hidden_2_weight_in = 16'hf8d0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd23; neurons_hidden_0_weight_in = 16'h21f0; neurons_hidden_1_weight_in = 16'h3a40; neurons_hidden_2_weight_in = 16'h3a20; @(posedge clk);
		neurons_hidden_weight_addr = 6'd24; neurons_hidden_0_weight_in = 16'h3a11; neurons_hidden_1_weight_in = 16'hf9e2; neurons_hidden_2_weight_in = 16'hf8e4; @(posedge clk);
		neurons_hidden_weight_addr = 6'd25; neurons_hidden_0_weight_in = 16'h2a80; neurons_hidden_1_weight_in = 16'hf7e1; neurons_hidden_2_weight_in = 16'hf7f8; @(posedge clk);
		neurons_hidden_weight_addr = 6'd26; neurons_hidden_0_weight_in = 16'h3a15; neurons_hidden_1_weight_in = 16'h3a10; neurons_hidden_2_weight_in = 16'h3a10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd27; neurons_hidden_0_weight_in = 16'h2b4d; neurons_hidden_1_weight_in = 16'hf8d2; neurons_hidden_2_weight_in = 16'hf8c0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd28; neurons_hidden_0_weight_in = 16'he4c2; neurons_hidden_1_weight_in = 16'hf9a1; neurons_hidden_2_weight_in = 16'hf9a8; @(posedge clk);
		neurons_hidden_weight_addr = 6'd29; neurons_hidden_0_weight_in = 16'heea3; neurons_hidden_1_weight_in = 16'hf901; neurons_hidden_2_weight_in = 16'hf9d0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd30; neurons_hidden_0_weight_in = 16'h2d35; neurons_hidden_1_weight_in = 16'h3b90; neurons_hidden_2_weight_in = 16'h3a70; @(posedge clk);
		neurons_hidden_weight_addr = 6'd31; neurons_hidden_0_weight_in = 16'h3b80; neurons_hidden_1_weight_in = 16'hf9fd; neurons_hidden_2_weight_in = 16'hf8e0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd32; neurons_hidden_0_weight_in = 16'h3b15; neurons_hidden_1_weight_in = 16'hf9f9; neurons_hidden_2_weight_in = 16'h3a20; @(posedge clk);
		neurons_hidden_weight_addr = 6'd33; neurons_hidden_0_weight_in = 16'h3b40; neurons_hidden_1_weight_in = 16'h3b50; neurons_hidden_2_weight_in = 16'h3a80; @(posedge clk);
		neurons_hidden_weight_addr = 6'd34; neurons_hidden_0_weight_in = 16'hdaad; neurons_hidden_1_weight_in = 16'h3a90; neurons_hidden_2_weight_in = 16'h3a10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd35; neurons_hidden_0_weight_in = 16'h3a80; neurons_hidden_1_weight_in = 16'h3ab4; neurons_hidden_2_weight_in = 16'hf8e4; @(posedge clk);
		neurons_hidden_weight_addr = 6'd36; neurons_hidden_0_weight_in = 16'h3a92; neurons_hidden_1_weight_in = 16'hf8c8; neurons_hidden_2_weight_in = 16'h3a10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd37; neurons_hidden_0_weight_in = 16'h3ab0; neurons_hidden_1_weight_in = 16'h3a30; neurons_hidden_2_weight_in = 16'hf8c0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd38; neurons_hidden_0_weight_in = 16'hd9f2; neurons_hidden_1_weight_in = 16'hf8d6; neurons_hidden_2_weight_in = 16'h3a10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd39; neurons_hidden_0_weight_in = 16'hdc34; neurons_hidden_1_weight_in = 16'h3a20; neurons_hidden_2_weight_in = 16'h3a30; @(posedge clk);
		neurons_hidden_weight_addr = 6'd40; neurons_hidden_0_weight_in = 16'h3a50; neurons_hidden_1_weight_in = 16'h3a80; neurons_hidden_2_weight_in = 16'h3a40; @(posedge clk);
		neurons_hidden_weight_addr = 6'd41; neurons_hidden_0_weight_in = 16'hd5d0; neurons_hidden_1_weight_in = 16'h3a10; neurons_hidden_2_weight_in = 16'h3a10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd42; neurons_hidden_0_weight_in = 16'hd8b0; neurons_hidden_1_weight_in = 16'h3a50; neurons_hidden_2_weight_in = 16'h3a20; @(posedge clk);
		neurons_hidden_weight_addr = 6'd43; neurons_hidden_0_weight_in = 16'h3a1f; neurons_hidden_1_weight_in = 16'h3a80; neurons_hidden_2_weight_in = 16'hf8d0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd44; neurons_hidden_0_weight_in = 16'hd8d5; neurons_hidden_1_weight_in = 16'h3a10; neurons_hidden_2_weight_in = 16'h3a00; @(posedge clk);
		neurons_hidden_weight_addr = 6'd45; neurons_hidden_0_weight_in = 16'hd7b4; neurons_hidden_1_weight_in = 16'h3a80; neurons_hidden_2_weight_in = 16'hf8e4; @(posedge clk);
		neurons_hidden_weight_addr = 6'd46; neurons_hidden_0_weight_in = 16'hd7e0; neurons_hidden_1_weight_in = 16'h3a10; neurons_hidden_2_weight_in = 16'hf8d0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd47; neurons_hidden_0_weight_in = 16'h3f90; neurons_hidden_1_weight_in = 16'h3a50; neurons_hidden_2_weight_in = 16'h3a20; @(posedge clk);
		neurons_hidden_weight_addr = 6'd48; neurons_hidden_0_weight_in = 16'h3c80; neurons_hidden_1_weight_in = 16'h3a10; neurons_hidden_2_weight_in = 16'hf8e4; @(posedge clk);
		neurons_hidden_weight_addr = 6'd49; neurons_hidden_0_weight_in = 16'h3a3d; neurons_hidden_1_weight_in = 16'h3ab0; neurons_hidden_2_weight_in = 16'h3a10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd50; neurons_hidden_0_weight_in = 16'h3aa0; neurons_hidden_1_weight_in = 16'h3ac0; neurons_hidden_2_weight_in = 16'h3a20; @(posedge clk);
		neurons_hidden_weight_addr = 6'd51; neurons_hidden_0_weight_in = 16'h3b02; neurons_hidden_1_weight_in = 16'h3c50; neurons_hidden_2_weight_in = 16'h3a10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd52; neurons_hidden_0_weight_in = 16'h3ac0; neurons_hidden_1_weight_in = 16'h3a4d; neurons_hidden_2_weight_in = 16'h3a30; @(posedge clk);
		neurons_hidden_weight_addr = 6'd53; neurons_hidden_0_weight_in = 16'h3c50; neurons_hidden_1_weight_in = 16'h3b65; neurons_hidden_2_weight_in = 16'h3a40; @(posedge clk);
		neurons_hidden_weight_addr = 6'd54; neurons_hidden_0_weight_in = 16'h3a4d; neurons_hidden_1_weight_in = 16'h2d20; neurons_hidden_2_weight_in = 16'h3a10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd55; neurons_hidden_0_weight_in = 16'h3b65; neurons_hidden_1_weight_in = 16'h0000; neurons_hidden_2_weight_in = 16'h3a50; @(posedge clk);
		neurons_hidden_weight_addr = 6'd56; neurons_hidden_0_weight_in = 16'h2d20; neurons_hidden_1_weight_in = 16'hedbf; neurons_hidden_2_weight_in = 16'hf9e0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd57; neurons_hidden_0_weight_in = 16'h0000; neurons_hidden_1_weight_in = 16'heed8; neurons_hidden_2_weight_in = 16'h3a10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd58; neurons_hidden_0_weight_in = 16'hedbf; neurons_hidden_1_weight_in = 16'h3c10; neurons_hidden_2_weight_in = 16'h3a20; @(posedge clk);
		neurons_hidden_weight_addr = 6'd59; neurons_hidden_0_weight_in = 16'heed8; neurons_hidden_1_weight_in = 16'h3b05; neurons_hidden_2_weight_in = 16'hf8d0; @(posedge clk);
		neurons_hidden_weight_addr = 6'd60; neurons_hidden_0_weight_in = 16'h3c10; neurons_hidden_1_weight_in = 16'h3a9f; neurons_hidden_2_weight_in = 16'h3a20; @(posedge clk);
		neurons_hidden_weight_addr = 6'd61; neurons_hidden_0_weight_in = 16'h3b05; neurons_hidden_1_weight_in = 16'h3a80; neurons_hidden_2_weight_in = 16'h3a10; @(posedge clk);
		neurons_hidden_weight_addr = 6'd62; neurons_hidden_0_weight_in = 16'h3a9f; neurons_hidden_1_weight_in = 16'hf89d; neurons_hidden_2_weight_in = 16'h3a30; @(posedge clk);
		neurons_hidden_weight_addr = 6'd63; neurons_hidden_0_weight_in = 16'h3a80; neurons_hidden_1_weight_in = 16'hf8f0; neurons_hidden_2_weight_in = 16'hf9d0; @(posedge clk);

		neurons_hidden_wen = 0;
		neurons_hidden_weight_addr = 6'd0; neurons_hidden_0_weight_in = 16'h0000; neurons_hidden_1_weight_in = 16'h0000; neurons_hidden_2_weight_in = 16'h0000; @(posedge clk);

		en = 1;
		image = 64'h1C3C0C0C0C041818; @(posedge clk);
		image = 64'h3C30203804000438; @(posedge clk);
		image = 64'h3C360C180C040438; @(posedge clk);
		image = 64'h081818287E380808; @(posedge clk);
		image = 64'h18382C3C14043C1C; @(posedge clk);
		image = 64'h18382C3C14043C1C; @(posedge clk);
		image = 64'h18382C380C040438; @(posedge clk);
		image = 64'h18103C207E180808; @(posedge clk);
		image = 64'h081836267C7C0C0C; @(posedge clk);
		image = 64'h040C3C2404040404; @(posedge clk);

		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		$stop;


	end
      
endmodule

