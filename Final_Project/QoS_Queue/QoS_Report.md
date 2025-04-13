# EE533 Group8 QoS Part 1 Report

## 1. Packet Definition

### 1.1 Packet Format Definition

* Header Definition

![Packet_Format_Definition](Pic\Packet_Format_Definition.png)

* Sample Packet

![Sample_Packet](Pic\Sample_Packet.png)

## 2. Code Part

### 2.1 In_Temp_FIFO

#### 2.1.1 Schematic

![Screenshot 2025-04-13 004904](Pic\Screenshot 2025-04-13 004904.png)

#### 2.1.2 Verilog

* In_Temp_FIFO_CU

```verilog
`timescale 1ns / 1ps

module In_Temp_FIFO_CU #(
    parameter FIFO_SIZE = 256,
    parameter FIFO_FULL_THREAD = 240,
    parameter FIFO_EMPTY_THREAD = 16
)
(
    input clk,
    input rst,
    input [7:0] WP,
    input [7:0] RP,

    output [7:0] depth,
    output FIFO_FULL,
    output FIFO_EMPTY
);

    reg FIFO_almost_full;
    reg FIFO_almost_empty;

    assign FIFO_EMPTY = (WP == RP) && FIFO_almost_empty;
    assign FIFO_FULL = (WP == RP) && FIFO_almost_full;
    assign depth = (WP >= RP) ? (WP - RP) : (WP - RP + FIFO_SIZE);

    always @(posedge clk) begin
        if (rst) begin
            FIFO_almost_empty <= 0;
            FIFO_almost_full <= 0;
        end
        else begin
            FIFO_almost_empty <= (depth < FIFO_EMPTY_THREAD) ? 1 : 0;
            FIFO_almost_full <= (depth > FIFO_FULL_THREAD) ? 1 : 0;
        end
    end

endmodule
```

* In_Temp_FIFO_Reg

```verilog
`timescale 1ns / 1ps

module In_Temp_FIFO_Reg
(
    input clk,
    input rst,
    input [7:0] WP,
    input [7:0] RP,
    input [7:0] RP_plus_3,
    input [31:0] pkt_in,

    output [31:0] pkt_out,
    output [31:0] source_IP
);

    reg [31:0] pkt_temp [255:0];

    assign source_IP = pkt_temp[RP_plus_3];
    assign pkt_out = pkt_temp[RP];

    always @(posedge clk) begin
        pkt_temp[WP] <= pkt_in;
    end

endmodule
```

* In_Temp_FIFO_RP

```verilog
`timescale 1ns / 1ps

module In_Temp_FIFO_RP
(
    input clk,
    input rst,
    input RP_en,
    input FIFO_EMPTY,

    output reg [7:0] RP
);

    always @(posedge clk) begin
        if (rst) begin
            RP <= 8'b0;
        end
        else if (RP_en && ~FIFO_EMPTY) begin
            RP <= RP + 1;
        end
    end

endmodule
```

* In_Temp_FIFO_state_machine

```verilog
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
```

* In_Temp_FIFO_WP

```verilog
`timescale 1ns / 1ps

module In_Temp_FIFO_WP
(
    input clk,
    input rst,
    input WP_en,
    input FIFO_FULL,

    output reg [7:0] WP
);

    always @(posedge clk) begin
        if (rst) begin
            WP <= 8'b0;
        end
        else if (WP_en && ~FIFO_FULL) begin
            WP <= WP + 1;
        end
    end

endmodule
```

* In_Temp_FIFO_demo

```verilog
////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : In_Temp_FIFO_demo.vf
// /___/   /\     Timestamp : 04/13/2025 01:06:01
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "E:/Documents and Settings/student/Final_Project/In_Temp_FIFO_demo.sch" In_Temp_FIFO_demo.vf
//Design Name: In_Temp_FIFO_demo
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module In_Temp_FIFO_demo(clk, 
                         pkt_begin, 
                         pkt_end, 
                         pkt_in, 
                         rst, 
                         depth, 
                         FIFO_OUT, 
                         pkt_out, 
                         source_IP);

    input clk;
    input pkt_begin;
    input pkt_end;
    input [31:0] pkt_in;
    input rst;
   output [7:0] depth;
   output FIFO_OUT;
   output [31:0] pkt_out;
   output [31:0] source_IP;
   
   wire FIFO_EMPTY;
   wire FIFO_FULL;
   wire FIFO_IN;
   wire [7:0] RP;
   wire [7:0] RP_plus_3;
   wire [7:0] WP;
   wire FIFO_OUT_DUMMY;
   
   assign FIFO_OUT = FIFO_OUT_DUMMY;
   In_Temp_FIFO_CU XLXI_2 (.clk(clk), 
                           .RP(RP[7:0]), 
                           .rst(rst), 
                           .WP(WP[7:0]), 
                           .depth(depth[7:0]), 
                           .FIFO_EMPTY(FIFO_EMPTY), 
                           .FIFO_FULL(FIFO_FULL));
   In_Temp_FIFO_RP XLXI_3 (.clk(clk), 
                           .FIFO_EMPTY(FIFO_EMPTY), 
                           .RP_en(FIFO_OUT_DUMMY), 
                           .rst(rst), 
                           .RP(RP[7:0]));
   In_Temp_FIFO_WP XLXI_4 (.clk(clk), 
                           .FIFO_FULL(FIFO_FULL), 
                           .rst(rst), 
                           .WP_en(FIFO_IN), 
                           .WP(WP[7:0]));
   In_Temp_FIFO_state_machine XLXI_5 (.clk(clk), 
                                      .pkt_begin(pkt_begin), 
                                      .pkt_end(pkt_end), 
                                      .RP(RP[7:0]), 
                                      .rst(rst), 
                                      .FIFO_IN(FIFO_IN), 
                                      .FIFO_OUT(FIFO_OUT_DUMMY), 
                                      .RP_plus_3(RP_plus_3[7:0]));
   In_Temp_FIFO_Reg XLXI_6 (.clk(clk), 
                            .pkt_in(pkt_in[31:0]), 
                            .RP(RP[7:0]), 
                            .RP_plus_3(RP_plus_3[7:0]), 
                            .rst(rst), 
                            .WP(WP[7:0]), 
                            .pkt_out(pkt_out[31:0]), 
                            .source_IP(source_IP[31:0]));
endmodule
```

#### 2.1.3 Testbench

```verilog
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:07:27 04/13/2025
// Design Name:   In_Temp_FIFO_demo
// Module Name:   E:/Documents and Settings/student/Final_Project/In_Temp_FIFO_demo_tb.v
// Project Name:  Final_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: In_Temp_FIFO_demo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module In_Temp_FIFO_demo_tb;

	// Inputs
	reg clk;
	reg pkt_begin;
	reg pkt_end;
	reg [31:0] pkt_in;
	reg rst;

	// Outputs
	wire [7:0] depth;
	wire FIFO_OUT;
	wire [31:0] pkt_out;
	wire [31:0] source_IP;

	// Instantiate the Unit Under Test (UUT)
	In_Temp_FIFO_demo uut (
		.clk(clk), 
		.pkt_begin(pkt_begin), 
		.pkt_end(pkt_end), 
		.pkt_in(pkt_in), 
		.rst(rst), 
		.depth(depth), 
		.FIFO_OUT(FIFO_OUT), 
		.pkt_out(pkt_out), 
		.source_IP(source_IP)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		pkt_begin = 0;
		pkt_end = 0;
		pkt_in = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
        
		// Add stimulus here
		rst = 0;
		pkt_end = 0;
		pkt_begin = 1;
		pkt_in = 32'd100;
		@(posedge clk);

		pkt_begin = 0;
		pkt_in = 32'd200;
		@(posedge clk);

		pkt_in = 32'd50;
		@(posedge clk);

		pkt_in = 32'd25;
		@(posedge clk);

		pkt_end = 1;
		pkt_in = 32'd500;
		@(posedge clk);

		pkt_end = 0;
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);

		pkt_begin = 1;
		pkt_in = 32'd11;
		@(posedge clk);

		pkt_begin = 0;
		pkt_in = 32'd12;
		@(posedge clk);

		pkt_in = 32'd13;
		@(posedge clk);

		pkt_in = 32'd14;
		@(posedge clk);

		pkt_in = 32'd15;
		@(posedge clk);

		pkt_in = 32'd16;
		@(posedge clk);

		pkt_in = 32'd17;
		@(posedge clk);

		pkt_end = 1;
		@(posedge clk);

		pkt_end = 0;
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);

		$stop;

	end
      
endmodule
```

#### 2.1.4 Simulation

![Screenshot 2025-04-13 000941](Pic\Screenshot 2025-04-13 000941.png)

### 2.2 Queue_Matcher

* Verilog

```verilog
`timescale 1ns / 1ps

module Queue_Matcher
(
    input clk,
    input rst,
    input defined_source_ip_wen,
    input [31:0] defined_source_ip_in,
    input [1:0] defined_source_ip_addr,
    input fifo_out,
    input [31:0] fifo_temp_source_ip,

    output match
);

    integer i;
    reg [31:0] defined_source_ip [3:0];

    assign match = (fifo_out == 1) &&
                    (
                        (defined_source_ip[0] == fifo_temp_source_ip) ||
                        (defined_source_ip[1] == fifo_temp_source_ip) ||
                        (defined_source_ip[2] == fifo_temp_source_ip) ||
                        (defined_source_ip[3] == fifo_temp_source_ip)
                    );

    always @(posedge clk) begin
        if (rst) begin
            for (i = 0; i < 4; i = i + 1) begin
                defined_source_ip[i] <= 32'b0;
            end
        end
        else if (defined_source_ip_wen) begin
            defined_source_ip[defined_source_ip_addr] <= defined_source_ip_in;
        end
    end

endmodule
```

* Testbench

```verilog
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:28:58 04/13/2025
// Design Name:   Queue_Matcher
// Module Name:   E:/Documents and Settings/student/Final_Project/Queue_Matcher_tb.v
// Project Name:  Final_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Queue_Matcher
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Queue_Matcher_tb;

	// Inputs
	reg clk;
	reg rst;
	reg defined_source_ip_wen;
	reg [31:0] defined_source_ip_in;
	reg [1:0] defined_source_ip_addr;
	reg fifo_out;
	reg [31:0] fifo_temp_source_ip;

	// Outputs
	wire match;

	// Instantiate the Unit Under Test (UUT)
	Queue_Matcher uut (
		.clk(clk), 
		.rst(rst), 
		.defined_source_ip_wen(defined_source_ip_wen), 
		.defined_source_ip_in(defined_source_ip_in), 
		.defined_source_ip_addr(defined_source_ip_addr), 
		.fifo_out(fifo_out), 
		.fifo_temp_source_ip(fifo_temp_source_ip), 
		.match(match)
	);

	always #50 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		defined_source_ip_wen = 0;
		defined_source_ip_in = 0;
		defined_source_ip_addr = 0;
		fifo_out = 0;
		fifo_temp_source_ip = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);        
		// Add stimulus here
		rst = 0;
		defined_source_ip_wen = 1;
		defined_source_ip_addr = 2'b00;
		defined_source_ip_in = 32'd24;
		@(posedge clk);

		defined_source_ip_addr = 2'b01;
		defined_source_ip_in = 32'd25;
		@(posedge clk);

		defined_source_ip_addr = 2'b10;
		defined_source_ip_in = 32'd89;
		@(posedge clk);

		defined_source_ip_addr = 2'b11;
		defined_source_ip_in = 32'd3;
		@(posedge clk);

		defined_source_ip_wen = 0;
		@(posedge clk);

		fifo_out = 1;
		fifo_temp_source_ip = 32'd20;
		@(posedge clk);

		fifo_temp_source_ip = 32'd25;
		@(posedge clk);

		fifo_temp_source_ip = 32'd22;
		@(posedge clk);

		fifo_temp_source_ip = 32'd89;
		@(posedge clk);

		fifo_temp_source_ip = 32'd26;
		@(posedge clk);

		fifo_temp_source_ip = 32'd3;
		@(posedge clk);

		$stop;

	end
      
endmodule
```

* Simulation

![Screenshot 2025-04-13 004642](Pic\Screenshot 2025-04-13 004642.png)

### 2.3 Queue



## 3. Future Work

