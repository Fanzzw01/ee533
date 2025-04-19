`timescale 1ns / 1ps

module Adder
(
    input [31:0] IP_Core_rdata,

    output [31:0] IP_Core_wdata
);

    assign IP_Core_wdata = IP_Core_rdata + 32'd1;

endmodule