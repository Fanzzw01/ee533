`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:35:16 03/13/2025
// Design Name:   I_MEM
// Module Name:   E:/Documents and Settings/student/EE533_Lab9/I_MEM_tb.v
// Project Name:  EE533_Lab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: I_MEM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module I_MEM_tb;

	// Inputs
	reg [8:0] addra;
	reg [8:0] addrb;
	reg clka;
	reg clkb;
	reg [31:0] dinb;
	reg web;

	// Outputs
	wire [31:0] douta;

	// Instantiate the Unit Under Test (UUT)
	I_MEM uut (
		.addra(addra), 
		.addrb(addrb), 
		.clka(clka), 
		.clkb(clkb), 
		.dinb(dinb), 
		.douta(douta), 
		.web(web)
	);
	
	always #50 clka = ~clka;
	always #50 clkb = ~clkb;

	initial begin
		// Initialize Inputs
		addra = 0;
		addrb = 0;
		clka = 1;
		clkb = 1;
		dinb = 0;
		web = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clka);
		web = 1;
        
		// Add stimulus here
		@(posedge clka);
		addra = 9'd0;
		addrb = 9'd0;
		dinb = 32'h0C010000;
		
		@(posedge clka);
		addra = 9'd0;
		addrb = 9'd1;
		dinb = 32'h04210001;
		
		@(posedge clka);
		addra = 9'd1;
		addrb = 9'd2;
		dinb = 32'h04210001;
		
		@(posedge clka);
		addra = 9'd2;
		
		@(posedge clka);
		$stop;
		

	end
      
endmodule

