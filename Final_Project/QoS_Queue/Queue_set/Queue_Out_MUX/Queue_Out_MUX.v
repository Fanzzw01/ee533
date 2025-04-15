`timescale 1ns / 1ps

module Queue_Out_MUX
(
    input [31:0] queue_0_out,
    input [31:0] queue_1_out,
    input total_queue_out_en,
    input [1:0] queue_out_en,

    output [31:0] total_queue_out
);

    wire queue_out_select_ctrl;

    assign queue_out_select_ctrl = total_queue_out_en && (queue_out_en[1] == 1'b1 && queue_out_en[0] == 1'b0);

    assign total_queue_out = queue_out_select_ctrl ? queue_1_out : queue_0_out;

endmodule