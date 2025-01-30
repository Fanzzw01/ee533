# EE533_Lab3_Report

## 1. Schematic & Verilog Capture

### 1.1 Components' Schematic & Verilog

#### 1.1.1 busmerge

* Verilog

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

#### 1.1.7 dual9Bmen

* Verilog

![Screenshot 2025-01-29 163529](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-29 163529.png)

```verilog
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:51 01/29/2025 
// Design Name: 
// Module Name:    dual9Bmen 
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
module dual9Bmen(
	input wire clka,
	input wire clkb,
	input wire wea,
	input wire [7:0] addra,
	input wire [7:0] addrb,
	input wire [71:0] dina,
	output reg [71:0] out_fifo
    );
	 
	reg [71:0] ram[255:0];
	
	always @(posedge clka)
	begin
		if (wea)
			ram[addra] <= dina;
	end
		
	always @(posedge clkb)
	begin
		out_fifo <= ram[addrb];
	end


endmodule

```

#### 1.1.8 dropfifo

* Schematic

![Screenshot 2025-01-29 165532](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-29 165532.png)

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
// /___/   /\     Timestamp : 01/29/2025 16:54:58
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/EE533_Lab3/dropfifo.sch" dropfifo.vf
//Design Name: dropfifo
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 100 ps / 10 ps

module FD8CE_HXILINX_dropfifo(Q, C, CE, CLR, D);

   
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
`timescale 100 ps / 10 ps

module CB8CLE_HXILINX_dropfifo(CEO, Q, TC, C, CE, CLR, D, L);
   
   parameter TERMINAL_COUNT = 8'b1111_1111;
   
   output             CEO;
   output [7:0]       Q;
   output             TC;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   input  [7:0]       D;
   input              L;
   
   reg    [7:0]       Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
        else if (L)
          Q <= D;
	else if (CE)
	  Q <= Q + 1;
     end
   
   assign CEO = TC & CE;
   assign TC = Q == TERMINAL_COUNT;
   
endmodule
`timescale 100 ps / 10 ps

module CB8CE_HXILINX_dropfifo(CEO, Q, TC, C, CE, CLR);
   
   parameter TERMINAL_COUNT = 8'b1111_1111;
   
   output             CEO;
   output [7:0]       Q;
   output             TC;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   
   reg   [7:0]        Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
	else if (CE)
	  Q <= Q + 1;
     end
   
   assign CEO = TC & CE;
   assign TC = Q == TERMINAL_COUNT;
   
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
   wire XLXN_14;
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
              .Q(XLXN_14));
   defparam XLXI_3.INIT = 1'b0;
   FD XLXI_4 (.C(CLK), 
              .D(drop_pkt), 
              .Q(XLXN_37));
   defparam XLXI_4.INIT = 1'b0;
   FD8CE_HXILINX_dropfifo XLXI_5 (.C(CLK), 
                                  .CE(XLXN_18), 
                                  .CLR(rst), 
                                  .D(XLXN_21[7:0]), 
                                  .Q(XLXN_15[7:0]));
   // synthesis attribute HU_SET of XLXI_5 is "XLXI_5_0"
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
   CB8CLE_HXILINX_dropfifo XLXI_9 (.C(CLK), 
                                   .CE(XLXN_14), 
                                   .CLR(rst), 
                                   .D(XLXN_15[7:0]), 
                                   .L(XLXN_37), 
                                   .CEO(), 
                                   .Q(XLXN_21[7:0]), 
                                   .TC());
   // synthesis attribute HU_SET of XLXI_9 is "XLXI_9_1"
   CB8CE_HXILINX_dropfifo XLXI_10 (.C(CLK), 
                                   .CE(XLXN_32), 
                                   .CLR(rst), 
                                   .CEO(), 
                                   .Q(XLXN_23[7:0]), 
                                   .TC());
   // synthesis attribute HU_SET of XLXI_10 is "XLXI_10_2"
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
   dual9Bmen XLXI_15 (.addra(XLXN_21[7:0]), 
                      .addrb(XLXN_23[7:0]), 
                      .clka(CLK), 
                      .clkb(CLK), 
                      .dina(XLXN_39[71:0]), 
                      .wea(XLXN_14), 
                      .out_fifo(out_fifo[71:0]));
   VCC XLXI_31 (.P(XLXN_76));
endmodule

```

### 1.2 New IP Core component

* Verilog

![Screenshot 2025-01-29 163529](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-29 163529.png)

```verilog
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:51 01/29/2025 
// Design Name: 
// Module Name:    dual9Bmen 
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
module dual9Bmen(
	input wire clka,
	input wire clkb,
	input wire wea,
	input wire [7:0] addra,
	input wire [7:0] addrb,
	input wire [71:0] dina,
	output reg [71:0] out_fifo
    );
	 
	reg [71:0] ram[255:0];
	
	always @(posedge clka)
	begin
		if (wea)
			ram[addra] <= dina;
	end
		
	always @(posedge clkb)
	begin
		out_fifo <= ram[addrb];
	end


endmodule

```

* Schematic symbol

![Screenshot 2025-01-29 171605](C:\Users\StepF\Documents\GitHub\ee533\lab 3\Pic\Screenshot 2025-01-29 171605.png)

### 1.3 Take a look at the created Verilog.

* Do they make sense?
  * Yes

* Which do you think easier: entering the schematics or writing Verilog? Why? In which cases might you do the other?
  * Entering the schematic is easier.
  * The logic is visible, and the workflow is more like human thinking and design process.
  * For large project, the Verilog is better because it's easier to debug.

### 1.5 Download the lab5_mini_ids_scr.zip file

#### 1.5.1 Simulate the mini-IDS with testbench



## 2. Submission and Demonstration

### 2.1 Explain the pattern matching algorithm



### 2.2 Include the answers about the questions below

#### 2.2.1 What is the purpose of AMASK[6:0]?



#### 2.2.2 What exactly does busmerge.v do?



#### 2.2.3 What do the comp8 modules do in this schematic?



#### 2.2.4 What is the purpose of dual9Bmen in dropfifo.sch?

