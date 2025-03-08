`timescale 1ns / 1ps

module WME_OR
(
    input WME_EX,
    input WP_en,

    output WME
);

    assign WME = WME_EX || WP_en;

endmodule