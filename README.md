# 8-Bit Arithmetic Logic Unit (ALU) Design

<p align="left">
  <img src="https://img.shields.io/badge/Language-Verilog-blue.svg" alt="Language">
  <img src="https://img.shields.io/badge/Tool-Xilinx%20Vivado-orange.svg" alt="Tool">
  <img src="https://img.shields.io/badge/Design%20Flow-Front--End-brightgreen.svg" alt="Flow">
</p>

---

## 📖 Project Description
This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU is a fundamental building block of any central processing unit (CPU), responsible for performing integer arithmetic and bitwise logical operations. This repository demonstrates the complete front-end digital design flow, focusing exclusively on RTL design, testbench creation, synthesis, and waveform simulation.

---

## ✨ Features
* **Arithmetic Operations:** Addition, Subtraction, Multiplication, Increment, and Decrement.
* **Logical Operations:** Bitwise AND, OR, XOR, NAND, NOR, and NOT.
* **Shift Operations:** Logical Left Shift and Logical Right Shift.
* **Status Flags:** Accurately computes critical output flags including **Zero (Z)**, **Carry (C)**, and **Overflow (V)**.
* **Parameter-Driven Routing:** Utilizes a central Multiplexer (MUX) controlled by a 4-bit Opcode to route the correct operational result to the output bus.

---

## 🔄 Design & Verification Flow
Because this project focuses on design and simulation rather than hardware implementation, it strictly follows a front-end verification methodology:

1. **Design Code (RTL):** Development of the structural and behavioral Verilog code defining the ALU operations.
2. **Testbench Code:** Creation of a robust Verilog testbench designed to inject diverse input combinations (stimuli) and opcodes to thoroughly test the module.
3. **RTL Synthesis & Schematic:** Compiling the RTL code in Xilinx Vivado to generate a hardware schematic, mapping the behavioral code to generic logic gates.
4. **Simulation Waveform:** Executing the testbench in Vivado XSim to visualize and verify the logic transitions and timing over time.

---

## 🧪 Simulation & Results

### 1. RTL Schematic
The generated schematic visualizes how the Verilog code is synthesized into physical digital components like adders, logic gates, and multiplexers.

> *(Insert your RTL schematic screenshot here)*
![RTL Schematic](link_to_schematic_image.png)

### 2. Waveform Analysis
To ensure functional correctness, the design is simulated. The waveform below illustrates the inputs changing over time and the ALU's immediate response:

* **`A` and `B`:** The two 8-bit input operands.
* **`Opcode`:** The 4-bit control signal commanding the ALU's operation (e.g., `0000` for Addition, `0001` for Subtraction).
* **`Result`:** The final 8-bit computed answer.

**How to read the waveform:** 
For example, when the `Opcode` is set to `0000` (Add), and input `A` is `00000101` (5) with input `B` as `00000011` (3), the `Result` bus will instantly transition to `00001000` (8).

> *(Insert your Vivado simulation waveform screenshot here)*
![Simulation Waveform](link_to_waveform_image.png)

---

## 🎯 Learning Objectives
* Writing modular and behavioral Verilog HDL code for digital systems.
* Designing instruction-controlled multiplexer logic.
* Developing comprehensive testbenches to verify edge cases, including carry and overflow generation.
* Generating, navigating, and analyzing RTL schematics and timing waveforms using the Xilinx Vivado Design Suite.

---

## 📫 Connect with Me
- **GitHub:** [github.com/sairam-jampani](https://github.com/sairam-jampani)
- **LinkedIn:** [linkedin.com/in/sai-ram-jampani04](https://www.linkedin.com/in/sai-ram-jampani04/)

<br>

⭐ *If you found this project useful, consider giving it a star.*
