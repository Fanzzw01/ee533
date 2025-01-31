# EE533_Lab3_Report

## 1. Schematic & Verilog Capture

### 1.1 Components' Schematic & Verilog

#### 1.1.1 busmerge

* Verilog

```verilog
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:01:23 01/29/2025 
// Design Name: 
// Module Name:    busmerge 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module busmerge(da, db, q);

	input [47:0] da;
	input [63:0] db;
	output [111:0] q;
	assign q = {da, db}

endmodule

```

![Screenshot 2025-01-29 141357](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-29 141357.png)

* Schematic symbol

![Screenshot 2025-01-29 183120](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-29 183120.png)

#### 1.1.2 comp8

* Schematic

![Screenshot 2025-01-29 141604](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-29 141604.png)

* Verilog

```verilog
////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : comp8.vf
// /___/   /\     Timestamp : 01/29/2025 16:24:49
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/EE533_Lab3/comp8.sch" comp8.vf
//Design Name: comp8
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module comp8(A, 
             B, 
             EQ);

    input [7:0] A;
    input [7:0] B;
   output EQ;
   
   wire XLXN_3;
   wire XLXN_4;
   wire XLXN_5;
   wire XLXN_6;
   wire XLXN_7;
   wire XLXN_8;
   wire XLXN_9;
   wire XLXN_10;
   wire XLXN_11;
   wire XLXN_12;
   
   XNOR2 XLXI_1 (.I0(B[0]), 
                 .I1(A[0]), 
                 .O(XLXN_3));
   XNOR2 XLXI_2 (.I0(B[1]), 
                 .I1(A[1]), 
                 .O(XLXN_4));
   XNOR2 XLXI_3 (.I0(B[2]), 
                 .I1(A[2]), 
                 .O(XLXN_5));
   XNOR2 XLXI_4 (.I0(B[3]), 
                 .I1(A[3]), 
                 .O(XLXN_6));
   XNOR2 XLXI_5 (.I0(B[4]), 
                 .I1(A[4]), 
                 .O(XLXN_7));
   XNOR2 XLXI_6 (.I0(B[5]), 
                 .I1(A[5]), 
                 .O(XLXN_8));
   XNOR2 XLXI_7 (.I0(B[6]), 
                 .I1(A[6]), 
                 .O(XLXN_9));
   XNOR2 XLXI_8 (.I0(B[7]), 
                 .I1(A[7]), 
                 .O(XLXN_10));
   AND4 XLXI_9 (.I0(XLXN_6), 
                .I1(XLXN_5), 
                .I2(XLXN_4), 
                .I3(XLXN_3), 
                .O(XLXN_11));
   AND4 XLXI_10 (.I0(XLXN_10), 
                 .I1(XLXN_9), 
                 .I2(XLXN_8), 
                 .I3(XLXN_7), 
                 .O(XLXN_12));
   AND2 XLXI_11 (.I0(XLXN_12), 
                 .I1(XLXN_11), 
                 .O(EQ));
endmodule

```

#### 1.1.3 comparator

* Schematic

![Screenshot 2025-01-29 143011](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-29 143011.png)

* Verilog

```verilog
////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : comparator.vf
// /___/   /\     Timestamp : 01/29/2025 16:24:50
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/EE533_Lab3/comparator.sch" comparator.vf
//Design Name: comparator
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale  100 ps / 10 ps

module AND7_HXILINX_comparator (O, I0, I1, I2, I3, I4, I5, I6);
    

   output O;

   input I0;
   input I1;
   input I2;
   input I3;
   input I4;
   input I5;
   input I6;

assign O = I0 && I1 && I2 && I3 && I4 && I5 && I6;

endmodule
`timescale 1ns / 1ps

module comp8_MUSER_comparator(A, 
                              B, 
                              EQ);

    input [7:0] A;
    input [7:0] B;
   output EQ;
   
   wire AB0;
   wire AB1;
   wire AB2;
   wire AB3;
   wire AB4;
   wire AB5;
   wire AB6;
   wire AB7;
   wire AB03;
   wire AB47;
   
   AND4 I_36_32 (.I0(AB7), 
                 .I1(AB6), 
                 .I2(AB5), 
                 .I3(AB4), 
                 .O(AB47));
   XNOR2 I_36_33 (.I0(B[6]), 
                  .I1(A[6]), 
                  .O(AB6));
   XNOR2 I_36_34 (.I0(B[7]), 
                  .I1(A[7]), 
                  .O(AB7));
   XNOR2 I_36_35 (.I0(B[5]), 
                  .I1(A[5]), 
                  .O(AB5));
   XNOR2 I_36_36 (.I0(B[4]), 
                  .I1(A[4]), 
                  .O(AB4));
   AND4 I_36_41 (.I0(AB3), 
                 .I1(AB2), 
                 .I2(AB1), 
                 .I3(AB0), 
                 .O(AB03));
   XNOR2 I_36_42 (.I0(B[2]), 
                  .I1(A[2]), 
                  .O(AB2));
   XNOR2 I_36_43 (.I0(B[3]), 
                  .I1(A[3]), 
                  .O(AB3));
   XNOR2 I_36_44 (.I0(B[1]), 
                  .I1(A[1]), 
                  .O(AB1));
   XNOR2 I_36_45 (.I0(B[0]), 
                  .I1(A[0]), 
                  .O(AB0));
   AND2 I_36_50 (.I0(AB47), 
                 .I1(AB03), 
                 .O(EQ));
endmodule
`timescale 1ns / 1ps

module comparator(A, 
                  amask, 
                  B, 
                  match);

    input [55:0] A;
    input [6:0] amask;
    input [55:0] B;
   output match;
   
   wire XLXN_1;
   wire XLXN_2;
   wire XLXN_3;
   wire XLXN_4;
   wire XLXN_5;
   wire XLXN_6;
   wire XLXN_7;
   wire XLXN_34;
   wire XLXN_35;
   wire XLXN_36;
   wire XLXN_37;
   wire XLXN_38;
   wire XLXN_39;
   wire XLXN_40;
   
   comp8_MUSER_comparator XLXI_1 (.A(A[55:48]), 
                                  .B(B[55:48]), 
                                  .EQ(XLXN_1));
   comp8_MUSER_comparator XLXI_2 (.A(A[47:40]), 
                                  .B(B[47:40]), 
                                  .EQ(XLXN_2));
   comp8_MUSER_comparator XLXI_3 (.A(A[39:32]), 
                                  .B(B[39:32]), 
                                  .EQ(XLXN_3));
   comp8_MUSER_comparator XLXI_4 (.A(A[31:24]), 
                                  .B(B[31:24]), 
                                  .EQ(XLXN_4));
   comp8_MUSER_comparator XLXI_5 (.A(A[23:16]), 
                                  .B(B[23:16]), 
                                  .EQ(XLXN_5));
   comp8_MUSER_comparator XLXI_6 (.A(A[15:8]), 
                                  .B(B[15:8]), 
                                  .EQ(XLXN_6));
   comp8_MUSER_comparator XLXI_7 (.A(A[7:0]), 
                                  .B(B[7:0]), 
                                  .EQ(XLXN_7));
   OR2B1 XLXI_8 (.I0(amask[6]), 
                 .I1(XLXN_1), 
                 .O(XLXN_34));
   OR2B1 XLXI_9 (.I0(amask[5]), 
                 .I1(XLXN_2), 
                 .O(XLXN_35));
   OR2B1 XLXI_10 (.I0(amask[4]), 
                  .I1(XLXN_3), 
                  .O(XLXN_36));
   OR2B1 XLXI_11 (.I0(amask[3]), 
                  .I1(XLXN_4), 
                  .O(XLXN_37));
   OR2B1 XLXI_12 (.I0(amask[2]), 
                  .I1(XLXN_5), 
                  .O(XLXN_38));
   OR2B1 XLXI_13 (.I0(amask[1]), 
                  .I1(XLXN_6), 
                  .O(XLXN_39));
   OR2B1 XLXI_14 (.I0(amask[0]), 
                  .I1(XLXN_7), 
                  .O(XLXN_40));
   AND7_HXILINX_comparator XLXI_15 (.I0(XLXN_40), 
                                    .I1(XLXN_39), 
                                    .I2(XLXN_38), 
                                    .I3(XLXN_37), 
                                    .I4(XLXN_36), 
                                    .I5(XLXN_35), 
                                    .I6(XLXN_34), 
                                    .O(match));
   // synthesis attribute HU_SET of XLXI_15 is "XLXI_15_0"
endmodule

```

#### 1.1.4 reg9B

* Schematic

![Screenshot 2025-01-29 145146](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-29 145146.png)

* Verilog

```verilog
////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : reg9B.vf
// /___/   /\     Timestamp : 01/29/2025 16:24:52
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/EE533_Lab3/reg9B.sch" reg9B.vf
//Design Name: reg9B
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 100 ps / 10 ps

module FD8CE_HXILINX_reg9B(Q, C, CE, CLR, D);

   
   output [7:0]       Q;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   input  [7:0]       D;
   
   reg    [7:0]       Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
	else if (CE)
          Q <= D;
     end
   
   
endmodule
`timescale 1ns / 1ps

module reg9B(CE, 
             CLK, 
             CLR, 
             D, 
             Q);

    input CE;
    input CLK;
    input CLR;
    input [71:0] D;
   output [71:0] Q;
   
   
   FD8CE_HXILINX_reg9B XLXI_1 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[71:64]), 
                               .Q(Q[71:64]));
   // synthesis attribute HU_SET of XLXI_1 is "XLXI_1_0"
   FD8CE_HXILINX_reg9B XLXI_2 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[63:56]), 
                               .Q(Q[63:56]));
   // synthesis attribute HU_SET of XLXI_2 is "XLXI_2_1"
   FD8CE_HXILINX_reg9B XLXI_3 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[55:48]), 
                               .Q(Q[55:48]));
   // synthesis attribute HU_SET of XLXI_3 is "XLXI_3_2"
   FD8CE_HXILINX_reg9B XLXI_4 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[47:40]), 
                               .Q(Q[47:40]));
   // synthesis attribute HU_SET of XLXI_4 is "XLXI_4_3"
   FD8CE_HXILINX_reg9B XLXI_5 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[39:32]), 
                               .Q(Q[39:32]));
   // synthesis attribute HU_SET of XLXI_5 is "XLXI_5_4"
   FD8CE_HXILINX_reg9B XLXI_6 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[31:24]), 
                               .Q(Q[31:24]));
   // synthesis attribute HU_SET of XLXI_6 is "XLXI_6_5"
   FD8CE_HXILINX_reg9B XLXI_7 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[23:16]), 
                               .Q(Q[23:16]));
   // synthesis attribute HU_SET of XLXI_7 is "XLXI_7_6"
   FD8CE_HXILINX_reg9B XLXI_8 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[15:8]), 
                               .Q(Q[15:8]));
   // synthesis attribute HU_SET of XLXI_8 is "XLXI_8_7"
   FD8CE_HXILINX_reg9B XLXI_9 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[7:0]), 
                               .Q(Q[7:0]));
   // synthesis attribute HU_SET of XLXI_9 is "XLXI_9_8"
endmodule

```

#### 1.1.5 wordmatch

* Schematic

![Screenshot 2025-01-29 153813](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-29 153813.png)

* Verilog

```verilog
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

```

#### 1.1.6 detect7B

* Schematic

![Screenshot 2025-01-29 153701](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-29 153701.png)

* Verilog

```verilog
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

```

#### 1.1.7 dropfifo

* Schematic

![Screenshot 2025-01-29 191724](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-29 191724.png)

* Verilog

```verilog
////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : dropfifo.vf
// /___/   /\     Timestamp : 01/29/2025 19:14:29
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "E:/Documents and Settings/student/EE533_Lab3/dropfifo.sch" dropfifo.vf
//Design Name: dropfifo
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module FTCE_MXILINX_dropfifo(C, 
                             CE, 
                             CLR, 
                             T, 
                             Q);

    input C;
    input CE;
    input CLR;
    input T;
   output Q;
   
   wire TQ;
   wire Q_DUMMY;
   
   assign Q = Q_DUMMY;
   XOR2 I_36_32 (.I0(T), 
                 .I1(Q_DUMMY), 
                 .O(TQ));
   FDCE I_36_35 (.C(C), 
                 .CE(CE), 
                 .CLR(CLR), 
                 .D(TQ), 
                 .Q(Q_DUMMY));
   // synthesis attribute RLOC of I_36_35 is "X0Y0"
   defparam I_36_35.INIT = 1'b0;
endmodule
`timescale 1ns / 1ps

module CB8CE_MXILINX_dropfifo(C, 
                              CE, 
                              CLR, 
                              CEO, 
                              Q, 
                              TC);

    input C;
    input CE;
    input CLR;
   output CEO;
   output [7:0] Q;
   output TC;
   
   wire T2;
   wire T3;
   wire T4;
   wire T5;
   wire T6;
   wire T7;
   wire XLXN_1;
   wire [7:0] Q_DUMMY;
   wire TC_DUMMY;
   
   assign Q[7:0] = Q_DUMMY[7:0];
   assign TC = TC_DUMMY;
   FTCE_MXILINX_dropfifo I_Q0 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(XLXN_1), 
                               .Q(Q_DUMMY[0]));
   // synthesis attribute HU_SET of I_Q0 is "I_Q0_6"
   FTCE_MXILINX_dropfifo I_Q1 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(Q_DUMMY[0]), 
                               .Q(Q_DUMMY[1]));
   // synthesis attribute HU_SET of I_Q1 is "I_Q1_7"
   FTCE_MXILINX_dropfifo I_Q2 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(T2), 
                               .Q(Q_DUMMY[2]));
   // synthesis attribute HU_SET of I_Q2 is "I_Q2_3"
   FTCE_MXILINX_dropfifo I_Q3 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(T3), 
                               .Q(Q_DUMMY[3]));
   // synthesis attribute HU_SET of I_Q3 is "I_Q3_4"
   FTCE_MXILINX_dropfifo I_Q4 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(T4), 
                               .Q(Q_DUMMY[4]));
   // synthesis attribute HU_SET of I_Q4 is "I_Q4_5"
   FTCE_MXILINX_dropfifo I_Q5 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(T5), 
                               .Q(Q_DUMMY[5]));
   // synthesis attribute HU_SET of I_Q5 is "I_Q5_2"
   FTCE_MXILINX_dropfifo I_Q6 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(T6), 
                               .Q(Q_DUMMY[6]));
   // synthesis attribute HU_SET of I_Q6 is "I_Q6_1"
   FTCE_MXILINX_dropfifo I_Q7 (.C(C), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .T(T7), 
                               .Q(Q_DUMMY[7]));
   // synthesis attribute HU_SET of I_Q7 is "I_Q7_0"
   AND5 I_36_1 (.I0(Q_DUMMY[7]), 
                .I1(Q_DUMMY[6]), 
                .I2(Q_DUMMY[5]), 
                .I3(Q_DUMMY[4]), 
                .I4(T4), 
                .O(TC_DUMMY));
   AND2 I_36_2 (.I0(Q_DUMMY[4]), 
                .I1(T4), 
                .O(T5));
   AND3 I_36_11 (.I0(Q_DUMMY[5]), 
                 .I1(Q_DUMMY[4]), 
                 .I2(T4), 
                 .O(T6));
   AND4 I_36_15 (.I0(Q_DUMMY[3]), 
                 .I1(Q_DUMMY[2]), 
                 .I2(Q_DUMMY[1]), 
                 .I3(Q_DUMMY[0]), 
                 .O(T4));
   VCC I_36_16 (.P(XLXN_1));
   AND2 I_36_24 (.I0(Q_DUMMY[1]), 
                 .I1(Q_DUMMY[0]), 
                 .O(T2));
   AND3 I_36_26 (.I0(Q_DUMMY[2]), 
                 .I1(Q_DUMMY[1]), 
                 .I2(Q_DUMMY[0]), 
                 .O(T3));
   AND4 I_36_28 (.I0(Q_DUMMY[6]), 
                 .I1(Q_DUMMY[5]), 
                 .I2(Q_DUMMY[4]), 
                 .I3(T4), 
                 .O(T7));
   AND2 I_36_31 (.I0(CE), 
                 .I1(TC_DUMMY), 
                 .O(CEO));
endmodule
`timescale 1ns / 1ps

module M2_1_MXILINX_dropfifo(D0, 
                             D1, 
                             S0, 
                             O);

    input D0;
    input D1;
    input S0;
   output O;
   
   wire M0;
   wire M1;
   
   AND2B1 I_36_7 (.I0(S0), 
                  .I1(D0), 
                  .O(M0));
   OR2 I_36_8 (.I0(M1), 
               .I1(M0), 
               .O(O));
   AND2 I_36_9 (.I0(D1), 
                .I1(S0), 
                .O(M1));
endmodule
`timescale 1ns / 1ps

module FTCLEX_MXILINX_dropfifo(C, 
                               CE, 
                               CLR, 
                               D, 
                               L, 
                               T, 
                               Q);

    input C;
    input CE;
    input CLR;
    input D;
    input L;
    input T;
   output Q;
   
   wire MD;
   wire TQ;
   wire Q_DUMMY;
   
   assign Q = Q_DUMMY;
   M2_1_MXILINX_dropfifo I_36_30 (.D0(TQ), 
                                  .D1(D), 
                                  .S0(L), 
                                  .O(MD));
   // synthesis attribute HU_SET of I_36_30 is "I_36_30_8"
   XOR2 I_36_32 (.I0(T), 
                 .I1(Q_DUMMY), 
                 .O(TQ));
   FDCE I_36_35 (.C(C), 
                 .CE(CE), 
                 .CLR(CLR), 
                 .D(MD), 
                 .Q(Q_DUMMY));
   // synthesis attribute RLOC of I_36_35 is "X0Y0"
   defparam I_36_35.INIT = 1'b0;
endmodule
`timescale 1ns / 1ps

module CB8CLE_MXILINX_dropfifo(C, 
                               CE, 
                               CLR, 
                               D, 
                               L, 
                               CEO, 
                               Q, 
                               TC);

    input C;
    input CE;
    input CLR;
    input [7:0] D;
    input L;
   output CEO;
   output [7:0] Q;
   output TC;
   
   wire OR_CE_L;
   wire T2;
   wire T3;
   wire T4;
   wire T5;
   wire T6;
   wire T7;
   wire XLXN_1;
   wire [7:0] Q_DUMMY;
   wire TC_DUMMY;
   
   assign Q[7:0] = Q_DUMMY[7:0];
   assign TC = TC_DUMMY;
   FTCLEX_MXILINX_dropfifo I_Q0 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[0]), 
                                 .L(L), 
                                 .T(XLXN_1), 
                                 .Q(Q_DUMMY[0]));
   // synthesis attribute HU_SET of I_Q0 is "I_Q0_9"
   FTCLEX_MXILINX_dropfifo I_Q1 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[1]), 
                                 .L(L), 
                                 .T(Q_DUMMY[0]), 
                                 .Q(Q_DUMMY[1]));
   // synthesis attribute HU_SET of I_Q1 is "I_Q1_10"
   FTCLEX_MXILINX_dropfifo I_Q2 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[2]), 
                                 .L(L), 
                                 .T(T2), 
                                 .Q(Q_DUMMY[2]));
   // synthesis attribute HU_SET of I_Q2 is "I_Q2_11"
   FTCLEX_MXILINX_dropfifo I_Q3 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[3]), 
                                 .L(L), 
                                 .T(T3), 
                                 .Q(Q_DUMMY[3]));
   // synthesis attribute HU_SET of I_Q3 is "I_Q3_12"
   FTCLEX_MXILINX_dropfifo I_Q4 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[4]), 
                                 .L(L), 
                                 .T(T4), 
                                 .Q(Q_DUMMY[4]));
   // synthesis attribute HU_SET of I_Q4 is "I_Q4_13"
   FTCLEX_MXILINX_dropfifo I_Q5 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[5]), 
                                 .L(L), 
                                 .T(T5), 
                                 .Q(Q_DUMMY[5]));
   // synthesis attribute HU_SET of I_Q5 is "I_Q5_14"
   FTCLEX_MXILINX_dropfifo I_Q6 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[6]), 
                                 .L(L), 
                                 .T(T6), 
                                 .Q(Q_DUMMY[6]));
   // synthesis attribute HU_SET of I_Q6 is "I_Q6_15"
   FTCLEX_MXILINX_dropfifo I_Q7 (.C(C), 
                                 .CE(OR_CE_L), 
                                 .CLR(CLR), 
                                 .D(D[7]), 
                                 .L(L), 
                                 .T(T7), 
                                 .Q(Q_DUMMY[7]));
   // synthesis attribute HU_SET of I_Q7 is "I_Q7_16"
   AND3 I_36_8 (.I0(Q_DUMMY[5]), 
                .I1(Q_DUMMY[4]), 
                .I2(T4), 
                .O(T6));
   AND2 I_36_11 (.I0(Q_DUMMY[4]), 
                 .I1(T4), 
                 .O(T5));
   VCC I_36_12 (.P(XLXN_1));
   AND2 I_36_19 (.I0(Q_DUMMY[1]), 
                 .I1(Q_DUMMY[0]), 
                 .O(T2));
   AND3 I_36_21 (.I0(Q_DUMMY[2]), 
                 .I1(Q_DUMMY[1]), 
                 .I2(Q_DUMMY[0]), 
                 .O(T3));
   AND4 I_36_23 (.I0(Q_DUMMY[3]), 
                 .I1(Q_DUMMY[2]), 
                 .I2(Q_DUMMY[1]), 
                 .I3(Q_DUMMY[0]), 
                 .O(T4));
   AND4 I_36_25 (.I0(Q_DUMMY[6]), 
                 .I1(Q_DUMMY[5]), 
                 .I2(Q_DUMMY[4]), 
                 .I3(T4), 
                 .O(T7));
   AND5 I_36_29 (.I0(Q_DUMMY[7]), 
                 .I1(Q_DUMMY[6]), 
                 .I2(Q_DUMMY[5]), 
                 .I3(Q_DUMMY[4]), 
                 .I4(T4), 
                 .O(TC_DUMMY));
   AND2 I_36_33 (.I0(CE), 
                 .I1(TC_DUMMY), 
                 .O(CEO));
   OR2 I_36_49 (.I0(CE), 
                .I1(L), 
                .O(OR_CE_L));
endmodule
`timescale 1ns / 1ps

module comp8_MUSER_dropfifo(A, 
                            B, 
                            EQ);

    input [7:0] A;
    input [7:0] B;
   output EQ;
   
   wire AB0;
   wire AB1;
   wire AB2;
   wire AB3;
   wire AB4;
   wire AB5;
   wire AB6;
   wire AB7;
   wire AB03;
   wire AB47;
   
   AND4 I_36_32 (.I0(AB7), 
                 .I1(AB6), 
                 .I2(AB5), 
                 .I3(AB4), 
                 .O(AB47));
   XNOR2 I_36_33 (.I0(B[6]), 
                  .I1(A[6]), 
                  .O(AB6));
   XNOR2 I_36_34 (.I0(B[7]), 
                  .I1(A[7]), 
                  .O(AB7));
   XNOR2 I_36_35 (.I0(B[5]), 
                  .I1(A[5]), 
                  .O(AB5));
   XNOR2 I_36_36 (.I0(B[4]), 
                  .I1(A[4]), 
                  .O(AB4));
   AND4 I_36_41 (.I0(AB3), 
                 .I1(AB2), 
                 .I2(AB1), 
                 .I3(AB0), 
                 .O(AB03));
   XNOR2 I_36_42 (.I0(B[2]), 
                  .I1(A[2]), 
                  .O(AB2));
   XNOR2 I_36_43 (.I0(B[3]), 
                  .I1(A[3]), 
                  .O(AB3));
   XNOR2 I_36_44 (.I0(B[1]), 
                  .I1(A[1]), 
                  .O(AB1));
   XNOR2 I_36_45 (.I0(B[0]), 
                  .I1(A[0]), 
                  .O(AB0));
   AND2 I_36_50 (.I0(AB47), 
                 .I1(AB03), 
                 .O(EQ));
endmodule
`timescale 1ns / 1ps

module FD8CE_MXILINX_dropfifo(C, 
                              CE, 
                              CLR, 
                              D, 
                              Q);

    input C;
    input CE;
    input CLR;
    input [7:0] D;
   output [7:0] Q;
   
   
   FDCE I_Q0 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[0]), 
              .Q(Q[0]));
   defparam I_Q0.INIT = 1'b0;
   FDCE I_Q1 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[1]), 
              .Q(Q[1]));
   defparam I_Q1.INIT = 1'b0;
   FDCE I_Q2 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[2]), 
              .Q(Q[2]));
   defparam I_Q2.INIT = 1'b0;
   FDCE I_Q3 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[3]), 
              .Q(Q[3]));
   defparam I_Q3.INIT = 1'b0;
   FDCE I_Q4 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[4]), 
              .Q(Q[4]));
   defparam I_Q4.INIT = 1'b0;
   FDCE I_Q5 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[5]), 
              .Q(Q[5]));
   defparam I_Q5.INIT = 1'b0;
   FDCE I_Q6 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[6]), 
              .Q(Q[6]));
   defparam I_Q6.INIT = 1'b0;
   FDCE I_Q7 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[7]), 
              .Q(Q[7]));
   defparam I_Q7.INIT = 1'b0;
endmodule
`timescale 1ns / 1ps

module dropfifo(CLK, 
                drop_pkt, 
                fiforead, 
                fifowrite, 
                firstword, 
                in_fifo, 
                lastword, 
                rst, 
                out_fifo, 
                valid_data);

    input CLK;
    input drop_pkt;
    input fiforead;
    input fifowrite;
    input firstword;
    input [71:0] in_fifo;
    input lastword;
    input rst;
   output [71:0] out_fifo;
   output valid_data;
   
   wire XLXN_7;
   wire XLXN_8;
   wire XLXN_9;
   wire [7:0] XLXN_15;
   wire XLXN_18;
   wire [7:0] XLXN_21;
   wire [7:0] XLXN_23;
   wire XLXN_30;
   wire XLXN_31;
   wire XLXN_32;
   wire XLXN_37;
   wire [71:0] XLXN_39;
   wire XLXN_76;
   wire XLXN_79;
   
   FD XLXI_1 (.C(CLK), 
              .D(firstword), 
              .Q(XLXN_7));
   defparam XLXI_1.INIT = 1'b0;
   FD XLXI_2 (.C(CLK), 
              .D(lastword), 
              .Q(XLXN_8));
   defparam XLXI_2.INIT = 1'b0;
   FD XLXI_3 (.C(CLK), 
              .D(fifowrite), 
              .Q(XLXN_79));
   defparam XLXI_3.INIT = 1'b0;
   FD XLXI_4 (.C(CLK), 
              .D(drop_pkt), 
              .Q(XLXN_37));
   defparam XLXI_4.INIT = 1'b0;
   FD8CE_MXILINX_dropfifo XLXI_5 (.C(CLK), 
                                  .CE(XLXN_18), 
                                  .CLR(rst), 
                                  .D(XLXN_21[7:0]), 
                                  .Q(XLXN_15[7:0]));
   // synthesis attribute HU_SET of XLXI_5 is "XLXI_5_17"
   comp8_MUSER_dropfifo XLXI_6 (.A(XLXN_21[7:0]), 
                                .B(XLXN_23[7:0]), 
                                .EQ(XLXN_30));
   comp8_MUSER_dropfifo XLXI_7 (.A(XLXN_23[7:0]), 
                                .B(XLXN_15[7:0]), 
                                .EQ(XLXN_31));
   reg9B XLXI_8 (.CE(XLXN_76), 
                 .CLK(CLK), 
                 .CLR(rst), 
                 .D(in_fifo[71:0]), 
                 .Q(XLXN_39[71:0]));
   CB8CLE_MXILINX_dropfifo XLXI_9 (.C(CLK), 
                                   .CE(XLXN_79), 
                                   .CLR(rst), 
                                   .D(XLXN_15[7:0]), 
                                   .L(XLXN_37), 
                                   .CEO(), 
                                   .Q(XLXN_21[7:0]), 
                                   .TC());
   // synthesis attribute HU_SET of XLXI_9 is "XLXI_9_18"
   CB8CE_MXILINX_dropfifo XLXI_10 (.C(CLK), 
                                   .CE(XLXN_32), 
                                   .CLR(rst), 
                                   .CEO(), 
                                   .Q(XLXN_23[7:0]), 
                                   .TC());
   // synthesis attribute HU_SET of XLXI_10 is "XLXI_10_19"
   FDC XLXI_11 (.C(CLK), 
                .CLR(rst), 
                .D(XLXN_32), 
                .Q(valid_data));
   defparam XLXI_11.INIT = 1'b0;
   OR2 XLXI_12 (.I0(XLXN_8), 
                .I1(XLXN_7), 
                .O(XLXN_9));
   AND2B1 XLXI_13 (.I0(XLXN_37), 
                   .I1(XLXN_9), 
                   .O(XLXN_18));
   AND3B2 XLXI_14 (.I0(XLXN_31), 
                   .I1(XLXN_30), 
                   .I2(fiforead), 
                   .O(XLXN_32));
   VCC XLXI_31 (.P(XLXN_76));
   ip_core XLXI_32 (.addra(XLXN_21[7:0]), 
                    .addrb(XLXN_23[7:0]), 
                    .clka(CLK), 
                    .clkb(CLK), 
                    .dina(XLXN_39[71:0]), 
                    .wea(XLXN_79), 
                    .doutb(out_fifo[71:0]));
endmodule

```

### 1.2 New IP Core component

* Screenshot

![Screenshot 2025-01-29 191129](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-29 191129.png)

* Verilog

```verilog
/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used             *
*     solely for design, simulation, implementation and creation of            *
*     design files limited to Xilinx devices or technologies. Use              *
*     with non-Xilinx devices or technologies is expressly prohibited          *
*     and immediately terminates your license.                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"            *
*     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                  *
*     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION          *
*     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION              *
*     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS                *
*     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                  *
*     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE         *
*     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY                 *
*     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                  *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS          *
*     FOR A PARTICULAR PURPOSE.                                                *
*                                                                              *
*     Xilinx products are not intended for use in life support                 *
*     appliances, devices, or systems. Use in such applications are            *
*     expressly prohibited.                                                    *
*                                                                              *
*     (c) Copyright 1995-2007 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/
// The synthesis directives "translate_off/translate_on" specified below are
// supported by Xilinx, Mentor Graphics and Synplicity synthesis
// tools. Ensure they are correct for your synthesis tool(s).

// You must compile the wrapper file ip_core.v when simulating
// the core, ip_core. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

`timescale 1ns/1ps

module ip_core(
	addra,
	addrb,
	clka,
	clkb,
	dina,
	doutb,
	wea);


input [7 : 0] addra;
input [7 : 0] addrb;
input clka;
input clkb;
input [71 : 0] dina;
output [71 : 0] doutb;
input wea;

// synthesis translate_off

      BLKMEMDP_V6_3 #(
		.c_addra_width(8),
		.c_addrb_width(8),
		.c_default_data("0"),
		.c_depth_a(256),
		.c_depth_b(256),
		.c_enable_rlocs(0),
		.c_has_default_data(1),
		.c_has_dina(1),
		.c_has_dinb(0),
		.c_has_douta(0),
		.c_has_doutb(1),
		.c_has_ena(0),
		.c_has_enb(0),
		.c_has_limit_data_pitch(0),
		.c_has_nda(0),
		.c_has_ndb(0),
		.c_has_rdya(0),
		.c_has_rdyb(0),
		.c_has_rfda(0),
		.c_has_rfdb(0),
		.c_has_sinita(0),
		.c_has_sinitb(0),
		.c_has_wea(1),
		.c_has_web(0),
		.c_limit_data_pitch(18),
		.c_mem_init_file("mif_file_16_1"),
		.c_pipe_stages_a(0),
		.c_pipe_stages_b(0),
		.c_reg_inputsa(0),
		.c_reg_inputsb(0),
		.c_sim_collision_check("NONE"),
		.c_sinita_value("0"),
		.c_sinitb_value("0"),
		.c_width_a(72),
		.c_width_b(72),
		.c_write_modea(2),
		.c_write_modeb(0),
		.c_ybottom_addr("0"),
		.c_yclka_is_rising(1),
		.c_yclkb_is_rising(1),
		.c_yena_is_high(1),
		.c_yenb_is_high(1),
		.c_yhierarchy("hierarchy1"),
		.c_ymake_bmm(0),
		.c_yprimitive_type("16kx1"),
		.c_ysinita_is_high(1),
		.c_ysinitb_is_high(1),
		.c_ytop_addr("1024"),
		.c_yuse_single_primitive(0),
		.c_ywea_is_high(1),
		.c_yweb_is_high(1),
		.c_yydisable_warnings(1))
	inst (
		.ADDRA(addra),
		.ADDRB(addrb),
		.CLKA(clka),
		.CLKB(clkb),
		.DINA(dina),
		.DOUTB(doutb),
		.WEA(wea),
		.DINB(),
		.DOUTA(),
		.ENA(),
		.ENB(),
		.NDA(),
		.NDB(),
		.RFDA(),
		.RFDB(),
		.RDYA(),
		.RDYB(),
		.SINITA(),
		.SINITB(),
		.WEB());


// synthesis translate_on

// XST black box declaration
// box_type "black_box"
// synthesis attribute box_type of ip_core is "black_box"

endmodule


```

### 1.3 Take a look at the created Verilog.

* Do they make sense?
  * Yes

* Which do you think easier: entering the schematics or writing Verilog? Why? In which cases might you do the other?
  * Entering the schematic is easier.
  * The logic is visible, and the workflow is more like human thinking and design process.
  * For large project, the Verilog is better because it's easier to debug.

### 1.5 Download the lab5_mini_ids_scr.zip file

#### 1.5.1 Simulate the mini-IDS with testbench

![Screenshot 2025-01-30 163908](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-30 163908.png)

## 2. Submission and Demonstration

### 2.1 Explain the pattern matching algorithm



### 2.2 Include the answers about the questions below

#### 2.2.1 What is the purpose of AMASK[6:0]?



#### 2.2.2 What exactly does busmerge.v do?



#### 2.2.3 What do the comp8 modules do in this schematic?



#### 2.2.4 What is the purpose of dual9Bmen in dropfifo.sch?

