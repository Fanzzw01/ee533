`timescale 1ns / 1ps

module Inner_CU #(
    parameter FIFO_SIZE = 256,
    parameter FIFO_FULL_THREAD = 240,
    parameter FIFO_EMPTY_THREAD = 16
)
(
    input clk,
    input rst,
    input [7:0] WP,
    input [7:0] RP,
    input inner_queue_in,
    input inner_queue_out,

    output [8:0] depth,
    output WP_en,
    output RP_en
);

    reg FIFO_almost_full;
    reg FIFO_almost_empty;
    wire FIFO_FULL;
    wire FIFO_EMPTY;

    assign FIFO_EMPTY = (WP == RP) && FIFO_almost_empty;
    assign FIFO_FULL = (WP == RP) && FIFO_almost_full;
    assign depth = (WP >= RP) ? (WP - RP) : (WP - RP + FIFO_SIZE);

    assign WP_en = inner_queue_in && ~FIFO_FULL;
    assign RP_en = inner_queue_out && ~FIFO_EMPTY;

    always @(posedge clk) begin
        if (rst) begin
            FIFO_almost_empty <= 0;
            FIFO_almost_full <= 0;
        end
        else begin
            FIFO_almost_empty <= (depth < FIFO_EMPTY_THREAD) ? 1 : 0;
            FIFO_almost_full <= (depth > FIFO_FULL_THREAD) ? 1 : 0;
        end
    end

endmodule