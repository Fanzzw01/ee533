////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : detect7B.vf
// /___/   /\     Timestamp : 01/29/2025 16:24:51
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/EE533_Lab3/detect7B.sch" detect7B.vf
//Design Name: detect7B
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module detect7B(CE, 
                CLK, 
                hwregA, 
                match_en, 
                mrst, 
                pipe1, 
                match);

    input CE;
    input CLK;
    input [63:0] hwregA;
    input match_en;
    input mrst;
    input [71:0] pipe1;
   output match;
   
   wire [71:0] pipe0;
   wire XLXN_4;
   wire XLXN_8;
   wire XLXN_12;
   wire [111:0] XLXN_17;
   wire match_DUMMY;
   
   assign match = match_DUMMY;
   reg9B XLXI_1 (.CE(CE), 
                 .CLK(CLK), 
                 .CLR(XLXN_4), 
                 .D(pipe1[71:0]), 
                 .Q(pipe0[71:0]));
   busmerge XLXI_2 (.da(pipe0[47:0]), 
                    .db(pipe1[63:0]), 
                    .q(XLXN_17[111:0]));
   wordmatch XLXI_3 (.datacomp(hwregA[55:0]), 
                     .datain(XLXN_17[111:0]), 
                     .windcard(hwregA[62:56]), 
                     .match(XLXN_8));
   AND3B1 XLXI_4 (.I0(match_DUMMY), 
                  .I1(match_en), 
                  .I2(XLXN_8), 
                  .O(XLXN_12));
   FD XLXI_5 (.C(CLK), 
              .D(mrst), 
              .Q(XLXN_4));
   defparam XLXI_5.INIT = 1'b0;
   FDCE XLXI_6 (.C(CLK), 
                .CE(XLXN_12), 
                .CLR(XLXN_4), 
                .D(XLXN_12), 
                .Q(match_DUMMY));
   defparam XLXI_6.INIT = 1'b0;
endmodule
