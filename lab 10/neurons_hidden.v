`timescale 1ns / 1ps

module neurons_hidden
(
    input clk,
    input rst,
    input wen,
    input en,
    input [15:0] weight_in,
    input [5:0] weight_addr,
    input [63:0] image,

    output reg [15:0] neurons_output
);

    localparam IDLE = 2'b00;
    localparam ADD = 2'b01;
    localparam DONE = 2'b10;
    integer j;

    reg [1:0] state;

    reg [15:0] weight [63:0];

    reg [15:0] temp_sum;
    reg [5:0] i;
    reg adding;

    reg fp16_adder_en;

    wire [15:0] fp16_adder_sum;
    
    fp16_adder fp16_adder_inside (
        .clk(clk),
        .en(fp16_adder_en),
        .a(temp_sum),
        .b(image[i] ? weight[i] : 16'b0),
        .sum(fp16_adder_sum)
    );

    always @(posedge clk) begin
        if (rst) begin
            state <= IDLE;
            sum <= 16'b0;
            neurons_output <= 16'b0;
            temp_sum <= 16'b0;
            i <= 6'd0;
            adding <= 0;
            fp16_adder_en <= 0;
            for (j = 0; j < 64; j = j + 1) begin
                weight[j] <= 16'b0;
            end
        end
        else if (wen) begin
            weight[weight_addr] <= weight_in;
        end
        else begin
            case (state)
                IDLE: begin
                    fp16_adder_en <= 0;
                    if (en) begin
                        temp_sum <= 0;
                        i <= 0;
                        state <= ADD;
                    end
                end
                ADD: begin
                    fp16_adder_en <= 1;
                    temp_sum <= fp16_adder_sum;
                    fp16_adder_en <= 0;
                    if (i < 6'd64) begin
                        i <= i + 1;
                    end
                    else begin
                        state <= DONE;
                    end
                end
                DONE: begin
                    neurons_output <= temp_sum;
                    state <= IDLE;
                end
                default: state <= IDLE;
            endcase
        end
    end

endmodule