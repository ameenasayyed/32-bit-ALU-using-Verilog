# 32-bit Arithmetic Logic Unit (ALU) using Verilog HDL

## Overview

This project implements a **32-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL**. The ALU is a fundamental component of a processor that performs arithmetic, logical, and shift operations on 32-bit input operands. The design was developed and verified using **Xilinx Vivado** through behavioral simulation.

---

## Features

- 32-bit ALU design
- Behavioral Verilog implementation
- Arithmetic operations
  - Addition
  - Subtraction
  - Increment
  - Decrement
- Logical operations
  - AND
  - OR
  - XOR
  - NOT
- Shift operations
  - Left Shift
  - Right Shift
- Status flag generation
  - Carry Flag
  - Zero Flag
  - Overflow Flag

---

## Operations

| Selection (`sel`) | Operation |
|-------------------|-----------|
| 0000 | Addition |
| 0001 | Subtraction |
| 0010 | AND |
| 0011 | OR |
| 0100 | XOR |
| 0101 | NOT |
| 0110 | Left Shift |
| 0111 | Right Shift |
| 1000 | Increment |
| 1001 | Decrement |

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Visual studio code
- GTKWave
- Icarus verilog

---

## Project Structure

```
32-bit-ALU-using-Verilog/
│── alu32.v
│── alu32_tb.v
│── 32-bit_ALU_Project_Report.pdf
│── simulation_waveform.png
│── rtl_schematic.png
└── README.md
```

---

## Simulation

The ALU was successfully simulated using **GTKWave**. The simulation verified the correct functionality of all arithmetic, logical, and shift operations. Status flags (Carry, Zero, and Overflow) were also validated.

![simulation waveform]
(simulation_waveform.png)
---

## Project Report

The complete project documentation, including the Verilog source code, testbench, RTL schematic, and simulation results, is available in the **32-bit_ALU_Project_Report.pdf** file.

---

## Author

**Ameena Sayyed**

Department of Electrical and Electronics Engineering (EEE)

Rajiv Gandhi University of Knowledge Technologies (RGUKT), Nuzvid

Academic Year: **2024–2028**

---
