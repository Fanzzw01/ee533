`timescale 1ns / 1ps

module In_Temp_FIFO_Reg
(
    input clk,
    input rst,
    input [7:0] WP,
    input [7:0] RP,
    input [7:0] RP_plus_3,
    input [31:0] pkt_in,

    output [31:0] pkt_out,
    output [31:0] source_IP
);

    reg [31:0] pkt_temp [255:0];

    assign source_IP = pkt_temp[RP_plus_3];
    assign pkt_out = pkt_temp[RP];

    always @(posedge clk) begin
        pkt_temp[WP] <= pkt_in;
    end

endmodule