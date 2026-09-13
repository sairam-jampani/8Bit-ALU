# 8-Bit Arithmetic Logic Unit (ALU) Design & Simulation

An 8-Bit Arithmetic Logic Unit (ALU) designed in Verilog HDL, targeted for Xilinx Artix-7 FPGA architecture. This project focuses on the complete front-end digital design flow: RTL coding, testbench verification, synthesis schematic generation, and waveform simulation.

---

### 📖 Project Description
This repository contains the digital logic design and verification for a modular 8-bit ALU. An ALU is the computational heart of any processor, responsible for executing mathematical and logical instructions. The design is written in Verilog, verified via Vivado XSim, and synthesized to evaluate general logic gate (LUT) usage targeting the `xc7a100tcsg324-1` FPGA.

### ✨ Features of the Project
*   **Arithmetic Operations:** Addition, Subtraction, Multiplication, Increment, and Decrement.
*   **Logical Operations:** Bitwise AND, OR, XOR, NAND, NOR, and NOT.
*   **Shift Operations:** Logical Left Shift and Logical Right Shift.
*   **Status Flags:** Computes critical output flags including **Zero (Z)**, **Carry (C)**, and **Overflow (V)**.
*   **Parameter-Driven:** Utilizes a central Multiplexer (MUX) controlled by a 4-bit Opcode to route the correct operational result to the output bus.

---

### 🔄 Development Flow
Because this project is evaluated via simulation rather than physical hardware, it follows a strict front-end verification flow:

1. **Design Code (RTL):** Writing the structural and behavioral Verilog code for the ALU modules.
2. **Testbench Code:** Creating a robust Verilog testbench to inject various input combinations (stimuli) and opcodes into the design.
3. **RTL Synthesis & Schematic:** Compiling the code in Xilinx Vivado to generate a hardware schematic mapping the code to logic gates.
4. **Simulation Wave:** Running the testbench in Vivado XSim to visualize the logic transitions over time.

---

### 🧪 Verification & Simulation Results

#### 1. RTL Schematic
*(Below is the synthesized schematic showing how Vivado maps the Verilog code into physical Multiplexers, Adders, and Logic Gates).*

![Schematic Placeholder](link-to-your-schematic-screenshot.png) 
*> Add your schematic screenshot above*

#### 2. Waveform Analysis (How to Read It)
To ensure the design works perfectly, we simulate it. The waveform screenshot below shows the inputs changing over time and the ALU reacting instantly:
*   **`A` and `B`:** These are the two 8-bit input numbers.
*   **`Opcode`:** The 4-bit command telling the ALU what to do (e.g., `0000` for Add, `0001` for Subtract).
*   **`Result`:** The final 8-bit answer computed by the ALU.
*   **Example from Waveform:** If you look at the point where `Opcode` is `0000`, `A` is `00000101` (5) and `B` is `00000011` (3), you will see the `Result` instantly update to `00001000` (8).

![Waveform Placeholder](link-to-your-waveform-screenshot.png)
*> Add your Vivado simulation waveform screenshot above*

---

### 🎯 Learning Objectives
By completing this project, the following skills were developed:
*   Writing modular, behavioral Verilog HDL code.
*   Designing instruction-controlled multiplexer logic.
*   Developing comprehensive testbenches to verify all edge cases (like overflow and zero flags).
*   Generating and analyzing RTL schematics and timing waveforms in Xilinx Vivado.
*   Understanding FPGA part nomenclature (e.g., `xc7a100tcsg324-1` representing the Artix-7 family, 100K logic cells, and a 324-pin CSG package).

---

### 📫 Connect with Me
- **GitHub:** [github.com/sairam-jampani](https://github.com/sairam-jampani)
- **LinkedIn:** [linkedin.com/in/sai-ram-jampani04](https://www.linkedin.com/in/sai-ram-jampani04/)

---
⭐ If you found this project useful, consider giving it a star.
