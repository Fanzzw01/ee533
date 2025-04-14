`timescale 1ns / 1ps

module Queue_Matcher
(
    input clk,
    input rst,
    input defined_source_ip_wen,
    input [31:0] defined_source_ip_in,
    input [1:0] defined_source_ip_addr,
    input fifo_out,
    input [31:0] fifo_temp_source_ip,

    output reg match
);

    integer i;
    reg [31:0] defined_source_ip [3:0];

    always @(*) begin
        match = (fifo_out == 1) &&
                    (
                        (defined_source_ip[0] == fifo_temp_source_ip) ||
                        (defined_source_ip[1] == fifo_temp_source_ip) ||
                        (defined_source_ip[2] == fifo_temp_source_ip) ||
                        (defined_source_ip[3] == fifo_temp_source_ip)
                    );
    end

    always @(posedge clk) begin
        if (rst) begin
            for (i = 0; i < 4; i = i + 1) begin
                defined_source_ip[i] <= 32'b0;
            end
        end
        else if (defined_source_ip_wen) begin
            defined_source_ip[defined_source_ip_addr] <= defined_source_ip_in;
        end
    end

endmodule