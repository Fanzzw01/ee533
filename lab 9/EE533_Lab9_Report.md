# EE533_Lab9_Report

## 1. 4 Packet Processing Software Programs in C



## 2. Hardware Augmentation

### 2.1 New Introduced Components in Pipeline

#### 2.1.1 PCX

* PC0

  * Verilog

  ```verilog
  `timescale 1ns / 1ps
  
  module PC0
  (
      input clk,
      input rst,
      input PC_ctrl,
      input [6:0] PC_next,
      input [1:0] thread,
      input [1:0] thread_ID,
  
      output reg [6:0] PC
  );
  
      always @(posedge clk) begin
          if (rst)
              PC <= 0;
          else if ((thread == 2'b00) || ((thread_ID == 2'b00) && PC_ctrl))
              PC <= PC_next;
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
  // Create Date:   16:05:28 03/13/2025
  // Design Name:   PC0
  // Module Name:   E:/Documents and Settings/student/EE533_Lab9/EE533_Lab_9/PC0_tb.v
  // Project Name:  EE533_Lab_9
  // Target Device:  
  // Tool versions:  
  // Description: 
  //
  // Verilog Test Fixture created by ISE for module: PC0
  //
  // Dependencies:
  // 
  // Revision:
  // Revision 0.01 - File Created
  // Additional Comments:
  // 
  ////////////////////////////////////////////////////////////////////////////////
  
  module PC0_tb;
  
  	// Inputs
  	reg clk;
  	reg rst;
  	reg PC_ctrl;
  	reg [6:0] PC_next;
  	reg [1:0] thread;
  	reg [1:0] thread_ID;
  
  	// Outputs
  	wire [6:0] PC;
  
  	// Instantiate the Unit Under Test (UUT)
  	PC0 uut (
  		.clk(clk), 
  		.rst(rst), 
  		.PC_ctrl(PC_ctrl), 
  		.PC_next(PC_next), 
  		.thread(thread), 
  		.thread_ID(thread_ID), 
  		.PC(PC)
  	);
  
  	always #50 clk = ~clk;
  
  	initial begin
  		// Initialize Inputs
  		clk = 1;
  		rst = 1;
  		PC_ctrl = 0;
  		PC_next = 0;
  		thread = 0;
  		thread_ID = 0;
  
  		// Wait 100 ns for global reset to finish
  		@(posedge clk);
  		rst = 0;
          
  		// Add stimulus here
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd1;
  		thread = 2'b00;
  		thread_ID = 2'b11;
  
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd2;
  		thread = 2'b01;
  		thread_ID = 2'b00;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd3;
  		thread = 2'b10;
  		thread_ID = 2'b01;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd4;
  		thread = 2'b11;
  		thread_ID = 2'b10;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd5;
  		thread = 2'b00;
  		thread_ID = 2'b11;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd6;
  		thread = 2'b01;
  		thread_ID = 2'b00;
  
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd7;
  		thread = 2'b10;
  		thread_ID = 2'b01;
  
  		@(posedge clk);
  		$stop;
  
  
  
  	end
        
  endmodule
  ```

  * Waveform

  ![Screenshot 2025-03-13 173455](C:\Users\StepF\Documents\GitHub\ee533\lab 9\Pic\Screenshot 2025-03-13 173455.png)

* PC1

  * Verilog

  ```verilog
  `timescale 1ns / 1ps
  
  module PC1
  (
      input clk,
      input rst,
      input PC_ctrl,
      input [6:0] PC_next,
      input [1:0] thread,
      input [1:0] thread_ID,
  
      output reg [6:0] PC
  );
  
      always @(posedge clk) begin
          if (rst)
              PC <= 0;
          else if ((thread == 2'b01) || ((thread_ID == 2'b01) && PC_ctrl))
              PC <= PC_next;
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
  // Create Date:   16:27:57 03/13/2025
  // Design Name:   PC1
  // Module Name:   E:/Documents and Settings/student/EE533_Lab9/EE533_Lab_9/PC1_tb.v
  // Project Name:  EE533_Lab_9
  // Target Device:  
  // Tool versions:  
  // Description: 
  //
  // Verilog Test Fixture created by ISE for module: PC1
  //
  // Dependencies:
  // 
  // Revision:
  // Revision 0.01 - File Created
  // Additional Comments:
  // 
  ////////////////////////////////////////////////////////////////////////////////
  
  module PC1_tb;
  
  	// Inputs
  	reg clk;
  	reg rst;
  	reg PC_ctrl;
  	reg [6:0] PC_next;
  	reg [1:0] thread;
  	reg [1:0] thread_ID;
  
  	// Outputs
  	wire [6:0] PC;
  
  	// Instantiate the Unit Under Test (UUT)
  	PC1 uut (
  		.clk(clk), 
  		.rst(rst), 
  		.PC_ctrl(PC_ctrl), 
  		.PC_next(PC_next), 
  		.thread(thread), 
  		.thread_ID(thread_ID), 
  		.PC(PC)
  	);
  
  	always #50 clk = ~clk;
  
  	initial begin
  		// Initialize Inputs
  		clk = 1;
  		rst = 1;
  		PC_ctrl = 0;
  		PC_next = 0;
  		thread = 0;
  		thread_ID = 0;
  
  		// Wait 100 ns for global reset to finish
  		@(posedge clk);
  		rst = 0;
          
  		// Add stimulus here
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd1;
  		thread = 2'b00;
  		thread_ID = 2'b11;
  
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd2;
  		thread = 2'b01;
  		thread_ID = 2'b00;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd3;
  		thread = 2'b10;
  		thread_ID = 2'b01;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd4;
  		thread = 2'b11;
  		thread_ID = 2'b10;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd5;
  		thread = 2'b00;
  		thread_ID = 2'b11;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd6;
  		thread = 2'b01;
  		thread_ID = 2'b00;
  
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd7;
  		thread = 2'b10;
  		thread_ID = 2'b01;
  
  		@(posedge clk);
  		$stop;
  
  	end
        
  endmodule
  ```

  * Waveform

  ![Screenshot 2025-03-13 174232](C:\Users\StepF\Documents\GitHub\ee533\lab 9\Pic\Screenshot 2025-03-13 174232.png)

* PC2

  * Verilog

  ```verilog
  `timescale 1ns / 1ps
  
  module PC2
  (
      input clk,
      input rst,
      input PC_ctrl,
      input [6:0] PC_next,
      input [1:0] thread,
      input [1:0] thread_ID,
  
      output reg [6:0] PC
  );
  
      always @(posedge clk) begin
          if (rst)
              PC <= 0;
          else if ((thread == 2'b10) || ((thread_ID == 2'b10) && PC_ctrl))
              PC <= PC_next;
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
  // Create Date:   16:28:12 03/13/2025
  // Design Name:   PC2
  // Module Name:   E:/Documents and Settings/student/EE533_Lab9/EE533_Lab_9/PC2_tb.v
  // Project Name:  EE533_Lab_9
  // Target Device:  
  // Tool versions:  
  // Description: 
  //
  // Verilog Test Fixture created by ISE for module: PC2
  //
  // Dependencies:
  // 
  // Revision:
  // Revision 0.01 - File Created
  // Additional Comments:
  // 
  ////////////////////////////////////////////////////////////////////////////////
  
  module PC2_tb;
  
  	// Inputs
  	reg clk;
  	reg rst;
  	reg PC_ctrl;
  	reg [6:0] PC_next;
  	reg [1:0] thread;
  	reg [1:0] thread_ID;
  
  	// Outputs
  	wire [6:0] PC;
  
  	// Instantiate the Unit Under Test (UUT)
  	PC2 uut (
  		.clk(clk), 
  		.rst(rst), 
  		.PC_ctrl(PC_ctrl), 
  		.PC_next(PC_next), 
  		.thread(thread), 
  		.thread_ID(thread_ID), 
  		.PC(PC)
  	);
  
  	always #50 clk = ~clk;
  
  	initial begin
  		// Initialize Inputs
  		clk = 1;
  		rst = 1;
  		PC_ctrl = 0;
  		PC_next = 0;
  		thread = 0;
  		thread_ID = 0;
  
  		// Wait 100 ns for global reset to finish
  		@(posedge clk);
  		rst = 0;
          
  		// Add stimulus here
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd1;
  		thread = 2'b00;
  		thread_ID = 2'b11;
  
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd2;
  		thread = 2'b01;
  		thread_ID = 2'b00;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd3;
  		thread = 2'b10;
  		thread_ID = 2'b01;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd4;
  		thread = 2'b11;
  		thread_ID = 2'b10;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd5;
  		thread = 2'b00;
  		thread_ID = 2'b11;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd6;
  		thread = 2'b01;
  		thread_ID = 2'b00;
  
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd7;
  		thread = 2'b10;
  		thread_ID = 2'b01;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd8;
  		thread = 2'b11;
  		thread_ID = 2'b10;
  
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd9;
  		thread = 2'b00;
  		thread_ID = 2'b11;
  
  		@(posedge clk);
  		$stop;
  
  	end
        
  endmodule
  ```

  * Waveform

  ![Screenshot 2025-03-13 174849](C:\Users\StepF\Documents\GitHub\ee533\lab 9\Pic\Screenshot 2025-03-13 174849.png)

* PC3

  * Verilog

  ```verilog
  `timescale 1ns / 1ps
  
  module PC3
  (
      input clk,
      input rst,
      input PC_ctrl,
      input [6:0] PC_next,
      input [1:0] thread,
      input [1:0] thread_ID,
  
      output reg [6:0] PC
  );
  
      always @(posedge clk) begin
          if (rst)
              PC <= 0;
          else if ((thread == 2'b11) || ((thread_ID == 2'b11) && PC_ctrl))
              PC <= PC_next;
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
  // Create Date:   16:28:23 03/13/2025
  // Design Name:   PC3
  // Module Name:   E:/Documents and Settings/student/EE533_Lab9/EE533_Lab_9/PC3_tb.v
  // Project Name:  EE533_Lab_9
  // Target Device:  
  // Tool versions:  
  // Description: 
  //
  // Verilog Test Fixture created by ISE for module: PC3
  //
  // Dependencies:
  // 
  // Revision:
  // Revision 0.01 - File Created
  // Additional Comments:
  // 
  ////////////////////////////////////////////////////////////////////////////////
  
  module PC3_tb;
  
  	// Inputs
  	reg clk;
  	reg rst;
  	reg PC_ctrl;
  	reg [6:0] PC_next;
  	reg [1:0] thread;
  	reg [1:0] thread_ID;
  
  	// Outputs
  	wire [6:0] PC;
  
  	// Instantiate the Unit Under Test (UUT)
  	PC3 uut (
  		.clk(clk), 
  		.rst(rst), 
  		.PC_ctrl(PC_ctrl), 
  		.PC_next(PC_next), 
  		.thread(thread), 
  		.thread_ID(thread_ID), 
  		.PC(PC)
  	);
  
  	always #50 clk = ~clk;
  
  	initial begin
  		// Initialize Inputs
  		clk = 1;
  		rst = 1;
  		PC_ctrl = 0;
  		PC_next = 0;
  		thread = 0;
  		thread_ID = 0;
  
  		// Wait 100 ns for global reset to finish
  		@(posedge clk);
  		rst = 0;
          
  		// Add stimulus here
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd1;
  		thread = 2'b00;
  		thread_ID = 2'b11;
  
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd2;
  		thread = 2'b01;
  		thread_ID = 2'b00;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd3;
  		thread = 2'b10;
  		thread_ID = 2'b01;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd4;
  		thread = 2'b11;
  		thread_ID = 2'b10;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd5;
  		thread = 2'b00;
  		thread_ID = 2'b11;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd6;
  		thread = 2'b01;
  		thread_ID = 2'b00;
  
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd7;
  		thread = 2'b10;
  		thread_ID = 2'b01;
  
  		@(posedge clk);
  		PC_ctrl = 1;
  		PC_next = 7'd8;
  		thread = 2'b11;
  		thread_ID = 2'b10;
  
  		@(posedge clk);
  		PC_ctrl = 0;
  		PC_next = 7'd9;
  		thread = 2'b00;
  		thread_ID = 2'b11;
  
  		@(posedge clk);
  		$stop;
  
  	end
        
  endmodule
  ```

  * Waveform

  ![Screenshot 2025-03-13 175048](C:\Users\StepF\Documents\GitHub\ee533\lab 9\Pic\Screenshot 2025-03-13 175048.png)

#### 2.1.2 PC_Thread_MUX

* Verilog

```verilog
`timescale 1ns / 1ps

module PC_Thread_MUX
(
    input [1:0] thread,

    input [6:0] PC0,
    input [6:0] PC1,
    input [6:0] PC2,
    input [6:0] PC3,

    output [8:0] PC
);

    assign PC = (thread == 2'b00) ? {thread, PC0} :
                (thread == 2'b01) ? {thread, PC1} :
                (thread == 2'b10) ? {thread, PC2} :
                {thread, PC3};

endmodule
```

* Testbench

```verilog
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:24:50 03/13/2025
// Design Name:   PC_Thread_MUX
// Module Name:   E:/Documents and Settings/student/EE533_Lab9/PC_Thread_MUX_tb.v
// Project Name:  EE533_Lab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC_Thread_MUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_Thread_MUX_tb;

	// Inputs
	reg [1:0] thread;
	reg [8:0] PC0;
	reg [8:0] PC1;
	reg [8:0] PC2;
	reg [8:0] PC3;

	// Outputs
	wire [8:0] PC;

	// Instantiate the Unit Under Test (UUT)
	PC_Thread_MUX uut (
		.thread(thread), 
		.PC0(PC0), 
		.PC1(PC1), 
		.PC2(PC2), 
		.PC3(PC3), 
		.PC(PC)
	);

	initial begin
		// Initialize Inputs
		thread = 0;
		PC0 = 0;
		PC1 = 0;
		PC2 = 0;
		PC3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		PC0 = 7'd1;
		PC1 = 7'd2;
		PC2 = 7'd3;
		PC3 = 7'd4;
        
		// Add stimulus here
		#100;
		thread = 2'b00;

		#100;
		thread = 2'b01;

		#100;
		thread = 2'b10;

		#100;
		thread = 2'b11;

		#100;

		#100;
		$stop;

	end
      
endmodule
```

* Waveform

![Screenshot 2025-03-13 175922](C:\Users\StepF\Documents\GitHub\ee533\lab 9\Pic\Screenshot 2025-03-13 175922.png)

#### 2.1.3 RF_DEMUX

* Verilog

```verilog
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
```

* Testbench

```verilog
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:15:14 03/13/2025
// Design Name:   RF_DEMUX
// Module Name:   E:/Documents and Settings/student/EE533_Lab9/RF_DEMUX_tb.v
// Project Name:  EE533_Lab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RF_DEMUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RF_DEMUX_tb;

	// Inputs
	reg [1:0] thread_WB;
	reg [2:0] waddr;
	reg [63:0] wdata;
	reg WRE_WB;

	// Outputs
	wire [2:0] waddr_DEMUX_out;
	wire [63:0] wdata_DEMUX_out;
	wire RF0_WRE_WB;
	wire RF1_WRE_WB;
	wire RF2_WRE_WB;
	wire RF3_WRE_WB;

	// Instantiate the Unit Under Test (UUT)
	RF_DEMUX uut (
		.thread_WB(thread_WB), 
		.waddr(waddr), 
		.wdata(wdata), 
		.WRE_WB(WRE_WB), 
		.waddr_DEMUX_out(waddr_DEMUX_out), 
		.wdata_DEMUX_out(wdata_DEMUX_out), 
		.RF0_WRE_WB(RF0_WRE_WB), 
		.RF1_WRE_WB(RF1_WRE_WB), 
		.RF2_WRE_WB(RF2_WRE_WB), 
		.RF3_WRE_WB(RF3_WRE_WB)
	);

	initial begin
		// Initialize Inputs
		thread_WB = 2'b00;
		waddr = 3'd1;
		wdata = 3'd2;
		WRE_WB = 0;

		// Wait 100 ns for global reset to finish
		#100;
		WRE_WB = 1;
        
		// Add stimulus here
		#100;
		thread_WB = 2'b01;

		#100;
		thread_WB = 2'b10;

		#100;
		thread_WB = 2'b11;

		#100;
		WRE_WB = 0;

		#100;
		thread_WB = 2'b00;

		#100;
		thread_WB = 2'b01;

		#100;
		thread_WB = 2'b10;

		#100;
		thread_WB = 2'b11;

		#100;
		$stop;

	end
      
endmodule
```

* Waveform

![Screenshot 2025-03-13 180551](C:\Users\StepF\Documents\GitHub\ee533\lab 9\Pic\Screenshot 2025-03-13 180551.png)

#### 2.1.4 RF_MUX

* Verilog

```verilog
`timescale 1ns / 1ps

module RF_MUX
(
    input [1:0] thread_ID,

    input [63:0] RF0_r0data,
    input [63:0] RF0_r1data,
    input [63:0] RF1_r0data,
    input [63:0] RF1_r1data,
    input [63:0] RF2_r0data,
    input [63:0] RF2_r1data,
    input [63:0] RF3_r0data,
    input [63:0] RF3_r1data,

    output [63:0] r0data,
    output [63:0] r1data
);

    assign r0data = (thread_ID == 2'b00) ? RF0_r0data :
                    (thread_ID == 2'b01) ? RF1_r0data :
                    (thread_ID == 2'b10) ? RF2_r0data :
                    RF3_r0data;
    
    assign r1data = (thread_ID == 2'b00) ? RF0_r1data :
                    (thread_ID == 2'b01) ? RF1_r1data :
                    (thread_ID == 2'b10) ? RF2_r1data :
                    RF3_r1data;

endmodule
```

* Testbench

```verilog
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:03:34 03/13/2025
// Design Name:   RF_MUX
// Module Name:   E:/Documents and Settings/student/EE533_Lab9/RF_MUX_tb.v
// Project Name:  EE533_Lab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RF_MUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RF_MUX_tb;

	// Inputs
	reg [2:0] thread_ID;
	reg [63:0] RF0_r0data;
	reg [63:0] RF0_r1data;
	reg [63:0] RF1_r0data;
	reg [63:0] RF1_r1data;
	reg [63:0] RF2_r0data;
	reg [63:0] RF2_r1data;
	reg [63:0] RF3_r0data;
	reg [63:0] RF3_r1data;

	// Outputs
	wire [63:0] r0data;
	wire [63:0] r1data;

	// Instantiate the Unit Under Test (UUT)
	RF_MUX uut (
		.thread_ID(thread_ID), 
		.RF0_r0data(RF0_r0data), 
		.RF0_r1data(RF0_r1data), 
		.RF1_r0data(RF1_r0data), 
		.RF1_r1data(RF1_r1data), 
		.RF2_r0data(RF2_r0data), 
		.RF2_r1data(RF2_r1data), 
		.RF3_r0data(RF3_r0data), 
		.RF3_r1data(RF3_r1data), 
		.r0data(r0data), 
		.r1data(r1data)
	);

	initial begin
		// Initialize Inputs
		thread_ID = 2'b00;
		RF0_r0data = 64'd1;
		RF0_r1data = 64'd2;
		RF1_r0data = 64'd3;
		RF1_r1data = 64'd4;
		RF2_r0data = 64'd5;
		RF2_r1data = 64'd6;
		RF3_r0data = 64'd7;
		RF3_r1data = 64'd8;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		thread_ID = 2'b01;
		#100;

		thread_ID = 2'b10;
		#100;

		thread_ID = 2'b11;
		#100;

		#100;
		$stop;


	end
      
endmodule
```

* Waveform

![Screenshot 2025-03-13 181155](C:\Users\StepF\Documents\GitHub\ee533\lab 9\Pic\Screenshot 2025-03-13 181155.png)

### 2.2 Other changes summary

#### 2.2.1 StageReg

* Added 2 bits for every stage register with:
  * thread_STAGE[1:0]

## 3. Instruction Part

### 3.1 Instruction Format Definition

* OP_CODE Lookup table

| Instr | OP Code [31:26] |
| :---: | :-------------: |
| NOOP  |     000000      |
| ADDI  |     000001      |
| MOVI  |     000010      |
|  LW   |     000011      |
|  SW   |     000100      |
|  BEQ  |     000101      |
|  BGT  |     000110      |
|  BLT  |     000111      |
|   J   |     001000      |
| SUBI  |     001001      |

### 3.2 Thread 0

* Purpose
  * First element in payload + 1

* Instruction Table

| Addr | Label |      Instr      | OP Code [31:26] | Rs [25:21] | Rt [20:16] | Offset [15:0] |
| :--: | :---: | :-------------: | :-------------: | :--------: | :--------: | :-----------: |
|  0   |       |  LW R1, #0(R0)  |     000011      |    5'd0    |    5'd1    |     16'd0     |
|  1   |       | ADDI R1, R1, #1 |     000001      |    5'd1    |    5'd1    |     16'd1     |
|  2   |       |  SW R1, #0(R0)  |     000100      |    5'd0    |    5'd1    |     16'd0     |

* Instruction Initilaization File / Vector File

```
000011 00000 00001 0000000000000000 = 0000 1100 0000 0001 0000 0000 0000 0000 = 0C010000
000001 00001 00001 0000000000000001 = 0000 0100 0010 0001 0000 0000 0000 0001 = 04210001
000100 00001 00000 0000000000000000 = 0001 0000 0010 0000 0000 0000 0000 0000 = 10200000
```

### 3.3 Thread 1

* Purpose
  * Second element in payload - 1
* Instruction Table

| Addr | Label |      Instr      | OP Code [31:26] | Rs [25:21] | Rt [20:16] | Offset [15:0] |
| :--: | :---: | :-------------: | :-------------: | :--------: | :--------: | :-----------: |
|  0   |       |  LW R1, #1(R0)  |     000011      |    5'd0    |    5'd1    |     16'd1     |
|  1   |       | SUBI R1, R1, #1 |     001001      |    5'd1    |    5'd1    |     16'd1     |
|  2   |       |  SW R1, #1(R0)  |     000100      |    5'd0    |    5'd1    |     16'd1     |

* Instruction Initilaization File / Vector File

```
000011 00000 00001 0000000000000001 = 0000 1100 0000 0001 0000 0000 0000 0001 = 0C010001
001001 00001 00001 0000000000000001 = 0010 0100 0010 0001 0000 0000 0000 0001 = 24210001
000100 00000 00001 0000000000000001 = 0001 0000 0000 0001 0000 0000 0000 0001 = 10010001
```

### 3.4 Thread 2

* Purpose
  * Load word third element and forth element, if third element >= forth element, then swap them; otherwise don't do anything.
* Instruction Table

| Addr |  Label  |        Instr        | OP Code [31:26] | Rs [25:21] | Rt [20:16] | Offset [15:0] |
| :--: | :-----: | :-----------------: | :-------------: | :--------: | :--------: | :-----------: |
|  0   |         |    LW R1, #2(R0)    |     000011      |    5'd0    |    5'd1    |     16'd2     |
|  1   |         |    LW R2, #3(R0)    |     000011      |    5'd0    |    5'd2    |     16'd3     |
|  2   |         | BLT R1, R2, no_swap |     000111      |    5'd1    |    5'd2    |     16'd5     |
|  3   |         |    SW R1, #3(R0)    |     000100      |    5'd0    |    5'd1    |     16'd3     |
|  4   |         |    SW R2, #2(R0)    |     000100      |    5'd0    |    5'd2    |     16'd2     |
|  5   | no_swap |        NOOP         |     000000      |    5'd0    |    5'd0    |     16'd0     |

* Instruction Initilaization File / Vector File

```
000011 00000 00001 0000000000000010 = 0000 1100 0000 0001 0000 0000 0000 0010 = 0C010002
000011 00000 00010 0000000000000011 = 0000 1100 0000 0010 0000 0000 0000 0011 = 0C020003
000111 00001 00010 0000000000000101 = 0001 1100 0010 0010 0000 0000 0000 0101 = 1C220005
000100 00000 00001 0000000000000011 = 0001 0000 0000 0001 0000 0000 0000 0011 = 10010003
000100 00000 00010 0000000000000010 = 0001 0000 0000 0010 0000 0000 0000 0010 = 10020002
000000 00000 00000 0000000000000000 = 0000 0000 0000 0000 0000 0000 0000 0000 = 00000000
```

### 3.5 Thread 3

* Purpose
  * Load word fifth element and sixth element, if fifth element >= sixth element, then swap them; otherwise don't do anything.
* Instruction Table

| Addr |  Label  |        Instr        | OP Code [31:26] | Rs [25:21] | Rt [20:16] | Offset [15:0] |
| :--: | :-----: | :-----------------: | :-------------: | :--------: | :--------: | :-----------: |
|  0   |         |    LW R1, #4(R0)    |     000011      |    5'd0    |    5'd1    |     16'd4     |
|  1   |         |    LW R2, #5(R0)    |     000011      |    5'd0    |    5'd2    |     16'd5     |
|  2   |         | BLT R1, R2, no_swap |     000111      |    5'd1    |    5'd2    |     16'd5     |
|  3   |         |    SW R1, #5(R0)    |     000100      |    5'd0    |    5'd1    |     16'd5     |
|  4   |         |    SW R2, #4(R0)    |     000100      |    5'd0    |    5'd2    |     16'd4     |
|  5   | no_swap |        NOOP         |     000000      |    5'd0    |    5'd0    |     16'd0     |

* Instruction Initilaization File / Vector File

```
000011 00000 00001 0000000000000100 = 0000 1100 0000 0001 0000 0000 0000 0100 = 0C010004
000011 00000 00010 0000000000000101 = 0000 1100 0000 0010 0000 0000 0000 0101 = 0C020005
000111 00001 00010 0000000000000101 = 0001 1100 0010 0010 0000 0000 0000 0101 = 1C220005
000100 00000 00001 0000000000000101 = 0001 0000 0000 0001 0000 0000 0000 0101 = 10010005
000100 00000 00010 0000000000000100 = 0001 0000 0000 0010 0000 0000 0000 0100 = 10020004
000000 00000 00000 0000000000000000 = 0000 0000 0000 0000 0000 0000 0000 0000 = 00000000
```

## 4. Packet Part

### 4.1 Purpose

* Use four independent threads to change the packet payload field.

### 4.2 Packet Header Definition

![Packet_Format](C:\Users\StepF\Documents\GitHub\ee533\lab 9\Pic\Packet_Format.png)

### 4.3 Initial Packet

![Packet_Initial](C:\Users\StepF\Documents\GitHub\ee533\lab 9\Pic\Packet_Initial.png)

* Packet Initialization File / Vector File

```
0100 0110 0000 0000 0000 0000 0100 1000 0001 1100 0100 0110 0100 0000 0000 0000 = 460000481C464000
0000 0100 0000 0110 0010 1010 0110 1101 0000 1010 0000 0000 0000 1101 0000 0011 = 04062A6D0A000D03
0000 1010 0000 0000 0000 1110 0000 0011 0000 0000 0000 0000 0000 0000 0000 0000 = 0A000E0300000000
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0011 = 0000000000000003
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0100 = 0000000000000004
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0011 = 0000000000000003
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0010 = 0000000000000002
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0001 = 0000000000000001
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0010 = 0000000000000002
```

### 4.4 Packet Expected after Processing

![Packet_after_processing](C:\Users\StepF\Documents\GitHub\ee533\lab 9\Pic\Packet_after_processing.png)

* Packet Initialization File / Vector File

```
0100 0110 0000 0000 0000 0000 0100 1000 0001 1100 0100 0110 0100 0000 0000 0000
0000 0100 0000 0110 0010 1010 0110 1101 0000 1010 0000 0000 0000 1101 0000 0011
0000 1010 0000 0000 0000 1110 0000 0011 0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0100
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0011
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0010
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0011
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0001
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0010
```

## 5. Pipeline

### 5.1 Verilog



### 5.2 Testbench

```verilog
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:55:09 03/13/2025
// Design Name:   Pipeline_demo
// Module Name:   E:/Documents and Settings/student/EE533_Lab9/EE533_Lab_9/Pipeline_demo_tb.v
// Project Name:  EE533_Lab_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Pipeline_demo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Pipeline_demo_tb;

	// Inputs
	reg clk;
	reg [63:0] HLEN;
	reg [31:0] Instr_IN;
	reg [8:0] Instr_IN_addr;
	reg Instr_IN_en;
	reg [1:0] mode_code;
	reg [63:0] pkt_in;
	reg rst;
	reg rst_FIFO;
	reg [1:0] thread_IF;

	// Outputs
	wire ADDI_ID;
	wire [3:0] ALU_OP_ID;
	wire BEQ_ID;
	wire BGT_ID;
	wire BLT_ID;
	wire [7:0] depth;
	wire FIFO_almost_EMPTY;
	wire FIFO_almost_FULL;
	wire [31:0] Instruction;
	wire J_ID;
	wire LW_ID;
	wire MOVI_ID;
	wire NOOP_ID;
	wire [63:0] Offset_ID;
	wire [6:0] ONE;
	wire [8:0] PC;
	wire [6:0] PC0;
	wire [6:0] PC0_next;
	wire [6:0] PC1;
	wire [6:0] PC1_next;
	wire [6:0] PC2;
	wire [6:0] PC2_next_out;
	wire [6:0] PC3;
	wire [6:0] PC3_next_out;
	wire [63:0] pkt_out;
	wire [63:0] rs_data_ID;
	wire [63:0] rt_data_ID;
	wire [4:0] rt_ID;
	wire SUBI_ID;
	wire SW_ID;
	wire WME_ID;
	wire WRE_ID;

	// Instantiate the Unit Under Test (UUT)
	Pipeline_demo uut (
		.clk(clk), 
		.HLEN(HLEN), 
		.Instr_IN(Instr_IN), 
		.Instr_IN_addr(Instr_IN_addr), 
		.Instr_IN_en(Instr_IN_en), 
		.mode_code(mode_code), 
		.pkt_in(pkt_in), 
		.rst(rst), 
		.rst_FIFO(rst_FIFO), 
		.thread_IF(thread_IF), 
		.ADDI_ID(ADDI_ID), 
		.ALU_OP_ID(ALU_OP_ID), 
		.BEQ_ID(BEQ_ID), 
		.BGT_ID(BGT_ID), 
		.BLT_ID(BLT_ID), 
		.depth(depth), 
		.FIFO_almost_EMPTY(FIFO_almost_EMPTY), 
		.FIFO_almost_FULL(FIFO_almost_FULL), 
		.Instruction(Instruction), 
		.J_ID(J_ID), 
		.LW_ID(LW_ID), 
		.MOVI_ID(MOVI_ID), 
		.NOOP_ID(NOOP_ID), 
		.Offset_ID(Offset_ID), 
		.ONE(ONE), 
		.PC(PC), 
		.PC0(PC0), 
		.PC0_next(PC0_next), 
		.PC1(PC1), 
		.PC1_next(PC1_next), 
		.PC2(PC2), 
		.PC2_next_out(PC2_next_out), 
		.PC3(PC3), 
		.PC3_next_out(PC3_next_out), 
		.pkt_out(pkt_out), 
		.rs_data_ID(rs_data_ID), 
		.rt_data_ID(rt_data_ID), 
		.rt_ID(rt_ID), 
		.SUBI_ID(SUBI_ID), 
		.SW_ID(SW_ID), 
		.WME_ID(WME_ID), 
		.WRE_ID(WRE_ID)
	);

	always #50 clk = ~clk;
	// always #100 thread_IF[0] = ~thread_IF[0];
	// always #200 thread_IF[1] = ~thread_IF[1];

	initial begin
		// Initialize Inputs
		clk = 1;
		HLEN = 64'd3;
		Instr_IN = 0;
		Instr_IN_addr = 0;
		Instr_IN_en = 0;
		mode_code = 2'b11;
		pkt_in = 0;
		rst = 1;
		rst_FIFO = 1;
		thread_IF = 0;

		// Wait 100 ns for global reset to finish
		@(posedge clk);
		rst_FIFO = 0;
        
		// Add stimulus here
		// FIFO_in mode begin
		@(posedge clk);
		Instr_IN = 32'h0C010000;
		Instr_IN_addr = 9'b000000000;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h460000481C464000;
		
		@(posedge clk);
		Instr_IN = 32'h04210001;
		Instr_IN_addr = 9'b000000001;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h04062A6D0A000D03;

		@(posedge clk);
		Instr_IN = 32'h10200000;
		Instr_IN_addr = 9'b000000010;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0A000E0300000000;

		@(posedge clk);
		Instr_IN = 32'h0C010001;
		Instr_IN_addr = 9'b010000000;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0000000000000003;

		@(posedge clk);
		Instr_IN = 32'h24210001;
		Instr_IN_addr = 9'b010000001;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0000000000000004;

		@(posedge clk);
		Instr_IN = 32'h10010001;
		Instr_IN_addr = 9'b010000010;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0000000000000003;

		@(posedge clk);
		Instr_IN = 32'h0C010002;
		Instr_IN_addr = 9'b100000000;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0000000000000002;

		@(posedge clk);
		Instr_IN = 32'h0C020003;
		Instr_IN_addr = 9'b100000001;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0000000000000001;

		@(posedge clk);
		Instr_IN = 32'h1C220005;
		Instr_IN_addr = 9'b100000010;
		Instr_IN_en = 1;
		mode_code = 2'b00;
		pkt_in = 64'h0000000000000002;

		@(posedge clk);
		Instr_IN = 32'h10010003;
		Instr_IN_addr = 9'b100000011;
		Instr_IN_en = 1;
		mode_code = 2'b11;
		pkt_in = 64'h0000000000000000;

		@(posedge clk);
		Instr_IN = 32'h10020002;
		Instr_IN_addr = 9'b100000100;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h00000000;
		Instr_IN_addr = 9'b100000101;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h0C010004;
		Instr_IN_addr = 9'b110000000;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h0C020005;
		Instr_IN_addr = 9'b110000001;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h1C220005;
		Instr_IN_addr = 9'b110000010;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h10010005;
		Instr_IN_addr = 9'b110000011;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h10020004;
		Instr_IN_addr = 9'b110000100;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		@(posedge clk);
		Instr_IN = 32'h00000000;
		Instr_IN_addr = 9'b110000101;
		Instr_IN_en = 1;
		mode_code = 2'b11;

		// Thread Processing Begin
		@(posedge clk);
		thread_IF = 2'b00;
		mode_code = 2'b10;
		rst = 0;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		@(posedge clk);
		thread_IF = 2'b00;

		@(posedge clk);
		thread_IF = 2'b01;

		@(posedge clk);
		thread_IF = 2'b10;

		@(posedge clk);
		thread_IF = 2'b11;

		// FIFO_out mode begin
		@(posedge clk);
		mode_code = 2'b01;

		@(posedge clk);

		@(posedge clk);

		@(posedge clk);

		@(posedge clk);

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

