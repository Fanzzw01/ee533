////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : wordmatch.vf
// /___/   /\     Timestamp : 01/29/2025 16:24:53
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/EE533_Lab3/wordmatch.sch" wordmatch.vf
//Design Name: wordmatch
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale  100 ps / 10 ps

module OR8_HXILINX_wordmatch (O, I0, I1, I2, I3, I4, I5, I6, I7);
    

   output O;

   input I0;
   input I1;
   input I2;
   input I3;
   input I4;
   input I5;
   input I6;
   input I7;

assign O = (I0 || I1 || I2 || I3 || I4 || I5 || I6 || I7);

endmodule
`timescale 1ns / 1ps

module wordmatch(datacomp, 
                 datain, 
                 windcard, 
                 match);

    input [55:0] datacomp;
    input [111:0] datain;
    input [6:0] windcard;
   output match;
   
   wire XLXN_28;
   wire XLXN_29;
   wire XLXN_30;
   wire XLXN_31;
   wire XLXN_32;
   wire XLXN_33;
   wire XLXN_34;
   wire XLXN_35;
   
   comparator XLXI_1 (.A(datacomp[55:0]), 
                      .amask(windcard[6:0]), 
                      .B(datain[55:0]), 
                      .match(XLXN_28));
   comparator XLXI_2 (.A(datacomp[55:0]), 
                      .amask(windcard[6:0]), 
                      .B(datain[63:8]), 
                      .match(XLXN_29));
   comparator XLXI_3 (.A(datacomp[55:0]), 
                      .amask(windcard[6:0]), 
                      .B(datain[71:16]), 
                      .match(XLXN_30));
   comparator XLXI_4 (.A(datacomp[55:0]), 
                      .amask(windcard[6:0]), 
                      .B(datain[79:24]), 
                      .match(XLXN_31));
   comparator XLXI_9 (.A(datacomp[55:0]), 
                      .amask(windcard[6:0]), 
                      .B(datain[87:32]), 
                      .match(XLXN_32));
   comparator XLXI_10 (.A(datacomp[55:0]), 
                       .amask(windcard[6:0]), 
                       .B(datain[95:40]), 
                       .match(XLXN_33));
   comparator XLXI_11 (.A(datacomp[55:0]), 
                       .amask(windcard[6:0]), 
                       .B(datain[103:48]), 
                       .match(XLXN_34));
   comparator XLXI_12 (.A(datacomp[55:0]), 
                       .amask(windcard[6:0]), 
                       .B(datain[111:56]), 
                       .match(XLXN_35));
   OR8_HXILINX_wordmatch XLXI_25 (.I0(XLXN_35), 
                                  .I1(XLXN_34), 
                                  .I2(XLXN_33), 
                                  .I3(XLXN_32), 
                                  .I4(XLXN_31), 
                                  .I5(XLXN_30), 
                                  .I6(XLXN_29), 
                                  .I7(XLXN_28), 
                                  .O(match));
   // synthesis attribute HU_SET of XLXI_25 is "XLXI_25_0"
endmodule
