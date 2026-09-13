# 8-Bit Arithmetic Logic Unit (ALU) Design & FPGA Implementation

An 8-Bit Arithmetic Logic Unit (ALU) designed in Verilog HDL, targeted for Xilinx Artix-7 FPGA architecture, synthesized and implemented using Xilinx Vivado.

---

### 📌 Project Overview
The 8-Bit ALU performs fundamental arithmetic operations (Addition, Subtraction, Multiplication, Incrementation, Decrementation) and bitwise logical operations (AND, OR, XOR, NOT, Shifts). The design is written in modular Verilog HDL, validated through simulation testbenches, and synthesized to evaluate hardware utilization, timing constraints, and power consumption.

---

### ⚙️ Target Hardware & Device Specifications

* **Target FPGA Device:** `xc7a100tcsg324-1`

#### 🔬 Device Naming Breakdown (`xc7a100tcsg324-1`)

| Component | Nomenclature | Technical Meaning |
| :--- | :--- | :--- |
| **`xc7a`** | Family Architecture | **Xilinx Artix-7 Series** (Optimized for low power, high transceiver performance, and cost-effective digital logic design). |
| **`100t`** | Logic Density / Capacity | **100K Logic Cells** (~101,440 logic cells, 15,850 Slice LABs, and 63,400 6-input LUTs). |
| **`csg324`** | Package Type & Pin Count | **Chip Scale BGA (CSG) Package with 324 Pins** (0.8mm ball pitch footprint). |
| **`-1`** | Speed Grade | **Speed Grade -1** (Standard performance grade; lower numbers like -1 reflect baseline switching speed compared to -2 or -3). |

---

### 🔄 RTL-to-Bitstream Implementation Flow

The design lifecycle follows the standard Xilinx Vivado digital system implementation flow:

1. **RTL Specification & Coding:** 
   * Designed modular 8-bit arithmetic and logic sub-blocks using behavioral Verilog HDL.
   * Constructed an internal multiplexer tree to route functional outputs based on control select lines.

2. **Functional Behavioral Simulation:**
   * Written a comprehensive testbench to generate stimulus vectors for all arithmetic and logic opcodes.
   * Verified output flags (Zero, Carry, Overflow) and bus values using the Vivado XSim simulator.

3. **RTL Synthesis:**
   * Transformed Verilog code into generic logic gates and hardware primitives using Xilinx Vivado Synthesis engine.
   * Generated schematic representations and mapped logic to Artix-7 6-input LUTs and Flip-Flops.

4. **Design Implementation (Place & Route):**
   * **Opt Design:** Optimized netlist logic to remove redundant paths.
   * **Place Design:** Positioned LUTs, Multiplexers, and I/O Buffers into physical Slice locations on the `xc7a100t` die.
   * **Route Design:** Configured internal routing channels to interconnect logic blocks while meeting setup and hold timing constraints.

5. **Static Timing Analysis (STA) & Resource Utilization:**
   * Generated synthesis and implementation reports to evaluate total Look-Up Table (LUT) usage, Flip-Flop (FF) count, and On-Chip Power consumption.

---

### 🛠️ Hardware Tools & Tech Stack
- 💻 **HDL:** Verilog HDL / SystemVerilog
- 🧰 **EDA Suite:** Xilinx Vivado Design Suite
- 🔬 **Simulation:** Vivado XSim / ModelSim
- 🎯 **Target FPGA:** Xilinx Artix-7 (`xc7a100tcsg324-1`)

---

### 📁 Repository Structure
```text
├── rtl/
│   └── alu_8bit.v        # Main 8-bit ALU Top Module
├── testbench/
│   └── tb_alu_8bit.v     # Behavioral Testbench & Stimulus
├── constraints/
│   └── alu_artix7.xdc    # Xilinx Design Constraints (Pin Mapping & Clocks)
├── docs/
│   └── synthesis_report  # Resource Utilization & Timing Summaries
└── README.md
