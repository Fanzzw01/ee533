`timescale 1ns / 1ps

module RF_DEMUX
(
    input [1:0] thread_WB,

    input [2:0] waddr,
    input [63:0] wdata,
    input WRE_WB,

    output [2:0] waddr_DEMUX_out,
    output [63:0] wdata_DEMUX_out,
    output RF0_WRE_WB,
    output RF1_WRE_WB,
    output RF2_WRE_WB,
    output RF3_WRE_WB
);

    assign waddr_DEMUX_out = waddr;
    assign wdata_DEMUX_out = wdata;
    assign RF0_WRE_WB = ((thread_WB == 2'b00) && WRE_WB) ? 1 : 0;
    assign RF1_WRE_WB = ((thread_WB == 2'b01) && WRE_WB) ? 1 : 0;
    assign RF2_WRE_WB = ((thread_WB == 2'b10) && WRE_WB) ? 1 : 0;
    assign RF3_WRE_WB = ((thread_WB == 2'b11) && WRE_WB) ? 1 : 0;

endmodule