`timescale 1ns / 1ps

module Queue_Matcher
# (
    parameter IP_LENGTH = 32,
    parameter MATCHER_REG_NUMBER = 4
)
(
    input clk,
    input rst,
    input defined_source_ip_wen,
    input [IP_LENGTH * MATCHER_REG_NUMBER - 1:0] defined_source_ip_in,
    input fifo_out,
    input [IP_LENGTH - 1:0] fifo_temp_source_ip,

    output reg match
);

    integer i;
    reg [IP_LENGTH - 1:0] defined_source_ip [MATCHER_REG_NUMBER - 1:0];
    reg [IP_LENGTH - 1:0] fifo_temp_source_ip_reg;

    always @(*) begin
        if (fifo_out == 1) begin
            fifo_temp_source_ip_reg = fifo_temp_source_ip;
        end
        match = (fifo_out == 1) &&
                    (
                        (defined_source_ip[0] == fifo_temp_source_ip_reg) ||
                        (defined_source_ip[1] == fifo_temp_source_ip_reg) ||
                        (defined_source_ip[2] == fifo_temp_source_ip_reg) ||
                        (defined_source_ip[3] == fifo_temp_source_ip_reg)
                    );
    end

    always @(posedge clk) begin
        if (rst) begin
            for (i = 0; i < 4; i = i + 1) begin
                defined_source_ip[i] <= 32'b0;
            end
        end
        else if (defined_source_ip_wen) begin
            for (i = 0; i < 4; i = i + 1) begin
                defined_source_ip[i] <= defined_source_ip_in[i * 32 +: 32];
            end
        end
    end

endmodule