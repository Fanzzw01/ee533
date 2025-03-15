`timescale 1ns / 1ps

module Thread_control_unit
(
    input [1:0] thread_ID,
    input PC_ctrl,

    output PC0_ctrl,
    output PC1_ctrl,
    output PC2_ctrl,
    output PC3_ctrl
);

    assign PC0_ctrl = ((thread_ID == 2'b00) && PC_ctrl) ? 1 : 0;
    assign PC1_ctrl = ((thread_ID == 2'b01) && PC_ctrl) ? 1 : 0;
    assign PC2_ctrl = ((thread_ID == 2'b10) && PC_ctrl) ? 1 : 0;
    assign PC3_ctrl = ((thread_ID == 2'b11) && PC_ctrl) ? 1 : 0;

endmodule