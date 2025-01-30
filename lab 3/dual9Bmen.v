`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:51 01/29/2025 
// Design Name: 
// Module Name:    dual9Bmen 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dual9Bmen(
	input wire clka,
	input wire clkb,
	input wire wea,
	input wire [7:0] addra,
	input wire [7:0] addrb,
	input wire [71:0] dina,
	output reg [71:0] out_fifo
    );
	 
	reg [71:0] ram[255:0];
	
	always @(posedge clka)
	begin
		if (wea)
			ram[addra] <= dina;
	end
		
	always @(posedge clkb)
	begin
		out_fifo <= ram[addrb];
	end


endmodule
