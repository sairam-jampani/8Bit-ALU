# 8-Bit Arithmetic Logic Unit (ALU) Design

<p align="left">
  <img src="https://img.shields.io/badge/Language-SystemVerilog-blue.svg" alt="Language">
  <img src="https://img.shields.io/badge/Tool-Xilinx%20Vivado%202020.1-orange.svg" alt="Tool">
  <img src="https://img.shields.io/badge/Design%20Flow-Front--End-brightgreen.svg" alt="Flow">
</p>

---

## 📖 Project Description
This project implements an 8-bit Arithmetic Logic Unit (ALU) using SystemVerilog. The ALU is a fundamental building block of any central processing unit (CPU), responsible for performing integer arithmetic and bitwise logical operations. This repository demonstrates the complete front-end digital design flow, focusing on RTL design, testbench creation, synthesis, and behavioral simulation.

---

## ⚙️ Target Hardware & Device Specifications

* **Target FPGA Device:** `xc7a100tcsg324-1`

| Component | Nomenclature | Technical Meaning |
| :--- | :--- | :--- |
| **`xc7a`** | Family Architecture | **Xilinx Artix-7 Series** (Optimized for low power and high performance). |
| **`100t`** | Logic Capacity | **100K Logic Cells** (~101,440 logic cells). |
| **`csg324`** | Package Type | **Chip Scale BGA (CSG) Package with 324 Pins**. |
| **`-1`** | Speed Grade | **Speed Grade -1** (Standard performance grade). |

---

## 🚀 Features
The ALU supports the following parameter-driven operations routed via a multiplexer:

| Select (`sel`) | Operation |
| :--- | :--- |
| `000` | Addition (A + B) |
| `001` | Subtraction (A - B) |
| `010` | Bitwise AND |
| `011` | Bitwise OR |
| `100` | Bitwise XOR |
| `101` | Bitwise NOT (~A) |
| `110` | Left Shift (A << 1) |
| `111` | Right Shift (A >> 1) |

---

## 📂 Project Files

* **`alu.sv`** → ALU Design Module
* **`alu_tb.sv`** → Testbench for Verification

---

## 🛠️ Tools Used
* **Verilog HDL / SystemVerilog**
* **Xilinx Vivado 2020.1**
* **Behavioral Simulation** (Vivado XSim)

---

## 🔄 Design & Verification Flow
1. **Design Code (RTL):** Development of the structural and behavioral code defining the ALU operations.
2. **Testbench Code:** Creation of a robust testbench designed to inject diverse input combinations.
3. **RTL Synthesis & Schematic:** Compiling the RTL code in Xilinx Vivado to generate a hardware schematic.
4. **Simulation Waveform:** Executing the testbench to visualize and verify logic transitions.

---

## 🧪 Simulation Results

The following test cases were applied to verify the ALU functionality (using `A = 20`, `B = 10`):

| Operation | Result |
| :--- | :--- |
| 20 + 10 | 30 |
| 20 - 10 | 10 |
| 20 AND 10 | 0 |
| 20 OR 10 | 30 |
| 20 XOR 10 | 30 |
| NOT 20 | 235 |
| 20 << 1 | 40 |
| 20 >> 1 | 10 |

**All operations were successfully verified through behavioral simulation.**

### RTL Schematic


<img width="1920" height="1080" alt="Screenshot 2026-09-13 123519" src="https://github.com/user-attachments/assets/c5b3895d-4c76-4bce-9603-b953516ba186" />

### Waveform Analysis
> *(Insert your Vivado simulation waveform screenshot here)*
![Simulation Waveform](link_to_waveform_image.png)

---

## 🎯 Learning Objectives
* Writing modular and behavioral SystemVerilog/Verilog HDL code for digital systems.
* Designing instruction-controlled multiplexer logic.
* Developing comprehensive testbenches to verify arithmetic and logical operations.
* Generating, navigating, and analyzing RTL schematics and timing waveforms using the Xilinx Vivado Design Suite.
* Understanding FPGA part nomenclature and target device specifications.

---

## 📫 Connect with Me
- **GitHub:** [github.com/sairam-jampani](https://github.com/sairam-jampani)
- **LinkedIn:** [linkedin.com/in/sai-ram-jampani04](https://www.linkedin.com/in/sai-ram-jampani04/)

<br>

⭐ *If you found this project useful, consider giving it a star.*
