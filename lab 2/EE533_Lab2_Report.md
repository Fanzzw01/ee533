# EE533_Lab2_Report

## 1. Xilinx ISE 10.1 In-Depth Tutorial

### 1.1 Download and Install Tutorial ova file in VMWare

* Download ova file

![Screenshot 2025-01-25 141912](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 141912.png)

*  Import the VM in VMWare workstation

![Screenshot 2025-01-25 142708](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 142708.png)

![Screenshot 2025-01-25 142817](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 142817.png)

![Screenshot 2025-01-25 143543](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 143543.png)

### 1.2 Create the Project file

![Screenshot 2025-01-25 144914](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 144914.png)

![Screenshot 2025-01-25 150340](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 150340.png)

## 2. Design and Simulating Synchronous 8-bit Adder

### 2.1 Schematic for 1-bit Full Adder

![Screenshot 2025-01-25 154857](C:\Users\StepF\Pictures\Screenshots\Screenshot 2025-01-25 154857.png)

### 2.2 Schematic for 8-bit Adder

![Screenshot 2025-01-25 164524](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 164524.png)

### 2.3 Schematic & Waveform for 8-bit Sync Adder

* Schematic

![Screenshot 2025-01-25 193420](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 193420.png)

* Waveform

![Screenshot 2025-01-25 193340](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 193340.png)

## 3. Extending Adder into 32-bit ALU

### 3.1 32-bit Adder

* Schematic

![Screenshot 2025-01-25 195829](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 195829.png)

* For the 32 bit FF, I use 4 8-bit FF to generate it

![Screenshot 2025-01-25 195847](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 195847.png)

* Waveform

![Screenshot 2025-01-25 195740](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 195740.png)

### 3.2 Subtractor with 32-bit Full Adder

* Schematic

![Screenshot 2025-01-25 204452](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 204452.png)

* XOR32

![Screenshot 2025-01-25 204500](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 204500.png)

* Waveform

![Screenshot 2025-01-25 204443](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 204443.png)

### 3.3 Shifter

* Schematic

![Screenshot 2025-01-25 233224](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 233224.png)

* Waveform
  * Would left shift for 1 bit

![Screenshot 2025-01-25 230135](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 230135.png)

### 3.4 Counter

* Description
  * This 32-bit counter could count from 0 to 2^32 - 1 in every CLK if it's enabled.
  * It could be cleared if CLR is 1.

* Schematic

![Screenshot 2025-01-25 213841](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 213841.png)

* Waveform

![Screenshot 2025-01-25 213847](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 213847.png)

### 3.5 Comparator

* Description
  * This comparator could compare 2 32-bit signed number.
    * If Cout = 0, then A >= B
    * If Cout = 1, then A < B

* Schematic

![Screenshot 2025-01-25 220243](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 220243.png)

* Waveform

![Screenshot 2025-01-25 220224](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 220224.png)

### 3.6 Verilog

* Verilog and Testbench code

![Screenshot 2025-01-25 233420](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 233420.png)

![Screenshot 2025-01-25 233435](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 233435.png)

![Screenshot 2025-01-25 233444](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 233444.png)

![Screenshot 2025-01-25 233450](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 233450.png)

![Screenshot 2025-01-25 233457](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 233457.png)

* Waveform

![Screenshot 2025-01-25 230349](C:\Users\StepF\Documents\GitHub\ee533\lab 2\Pic\Screenshot 2025-01-25 230349.png)

* Log file
  * I cannot find it...
* The number of gates in Verilog is much less than in the schematic, for example, if I want to operate AND with 32bit A and 32bit B, I should include 32 AND gates, but in Verilog, I only need to write OUT = A & B.

## 4. GitHub link

* This lab's details and progress could be found under the link:
  * https://github.com/Fanzzw01/ee533.git