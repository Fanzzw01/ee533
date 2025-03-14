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



## 4. Packet Part

