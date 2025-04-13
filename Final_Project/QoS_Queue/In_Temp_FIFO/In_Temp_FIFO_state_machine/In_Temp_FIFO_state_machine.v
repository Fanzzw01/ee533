`timescale 1ns / 1ps

module In_Temp_FIFO_state_machine
# (
    parameter FIFO_in = 1'b0,
    parameter FIFO_out = 1'b1
)
(
    input clk,
    input rst,
    input [7:0] RP,
    input pkt_begin,
    input pkt_end,

    output reg [7:0] RP_plus_3,
    output FIFO_IN,
    output FIFO_OUT
);

    reg current_state;
    reg next_state;

    assign FIFO_IN = ~next_state;
    assign FIFO_OUT = next_state;

    always @(posedge clk) begin
        if (rst) begin
            current_state <= FIFO_in;
            RP_plus_3 <= 8'b0;
        end
        else begin
            if (current_state == FIFO_in && pkt_end) begin
                RP_plus_3 <= RP + 8'd3;
            end
            current_state <= next_state;
        end
    end

    always @(*) begin
        case(current_state)
            FIFO_in: begin
                if (pkt_end) begin
                    next_state = FIFO_out;
                end
            end
            FIFO_out: begin
                if (pkt_begin) begin
                    next_state = FIFO_in;
                end
            end
            default: begin
                next_state = FIFO_in;
            end
        endcase
    end

endmodule