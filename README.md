# AES-128 Round Accelerator ASIC

<p align="center">
  <img src="images/final_layout.png" width="700">
</p>

<p align="center">
RTL → Synthesis → Floorplanning → Placement → CTS → Routing → GDSII
</p>

---

## Overview

This project presents the complete ASIC implementation of an AES-128 Round Accelerator using the SkyWater SKY130 HD standard cell library.

The accelerator was designed completely in Verilog RTL and implemented through the entire digital ASIC design flow using the OpenROAD toolchain.

The project includes:

- RTL Design
- Functional Verification
- Logic Synthesis
- Static Timing Analysis
- Floorplanning
- Placement
- Clock Tree Synthesis
- Global & Detailed Routing
- Physical Verification
- GDSII Generation

---

# Architecture

(Insert architecture diagram here)

```
Plaintext
      │
      ▼
 AddRoundKey
      │
      ▼
  SubBytes
      │
      ▼
 ShiftRows
      │
      ▼
 MixColumns
      │
      ▼
 AddRoundKey
      │
      ▼
 Ciphertext
```

---

# RTL Modules

| Module | Description |
|---------|-------------|
| aes_top | Top-level AES Round Accelerator |
| aes_controller | Controls encryption sequence |
| key_expansion | AES Key Expansion |
| key_schedule_core | Key Scheduling |
| addroundkey | XOR with Round Key |
| subbytes | Byte Substitution |
| shiftrows | AES ShiftRows |
| mixcolumns | AES MixColumns |
| mixcolumn | Single Column Transform |
| gf_multiplier | GF(2⁸) Arithmetic |
| sbox | AES S-Box ROM |
| rcon | Round Constants |
| rotword | Word Rotation |
| subword | Word Substitution |
| state_register | AES State Register |

---

# Design Flow

```
RTL
 │
 ▼
Simulation
 │
 ▼
Yosys Synthesis
 │
 ▼
OpenROAD
 │
 ├── Floorplan
 ├── Placement
 ├── CTS
 ├── Routing
 ├── DRC
 └── GDSII
 │
 ▼
Final ASIC Layout
```

---

# Toolchain

| Tool | Purpose |
|------|---------|
| Verilog HDL | RTL Design |
| Icarus Verilog | Simulation |
| GTKWave | Waveform Viewing |
| Yosys | Logic Synthesis |
| OpenROAD | Physical Design |
| OpenSTA | Timing Analysis |
| Magic VLSI | Layout Visualization |
| KLayout | GDSII Viewer |
| Sky130 HD | Standard Cell Library |

---

# ASIC Results

| Metric | Value |
|---------|-------|
| Technology | Sky130 HD |
| Clock Period | 10 ns |
| Total Cells | 2822 |
| Sequential Cells | 135 D Flip-Flops |
| Total Wires | 2702 |
| Wire Bits | 3083 |
| Chip Area | 22,569.15 µm² |
| Sequential Area | 3404.52 µm² |
| Sequential Logic | 15.08 % |

---

# Physical Design Results

## Floorplan

<p align="center">
<img src="<img width="780" height="668" alt="Screenshot from 2026-08-04 23-06-08" src="https://github.com/user-attachments/assets/77662348-3d87-4add-a755-913b89ed5f90" />
" width="700">
</p>

---

## Placement

<p align="center">
<img src="<img width="1099" height="1099" alt="image" src="https://github.com/user-attachments/assets/52352c3e-de66-41d3-9b57-56ce932ef473" />
" width="700">
</p>

---

## Routing Congestion

<p align="center">
<img src="<img width="1099" height="1099" alt="image" src="https://github.com/user-attachments/assets/786aecaa-18df-4495-933c-f77e3ce5cffd" />
" width="700">
</p>

---

## Clock Tree

<p align="center">
<img src="<img width="952" height="954" alt="Screenshot from 2026-08-04 23-10-33" src="https://github.com/user-attachments/assets/b4055b56-2eb1-489b-b80b-187382593128" />
" width="700">
</p>

---

## Global Routing

<p align="center">
<img src="<img width="1099" height="1099" alt="image" src="https://github.com/user-attachments/assets/ebbe0b7f-fc30-4b66-b3d5-497918ad822e" />
" width="700">
</p>

---

## IR Drop Analysis

<p align="center">
<img src="<img width="1099" height="1099" alt="image" src="https://github.com/user-attachments/assets/1113c6fc-6f66-4827-9eae-5e8a6c713dbe" />
" width="700">
</p>

---

## Critical Timing Path

<p align="center">
<img src="<img width="1099" height="1099" alt="image" src="https://github.com/user-attachments/assets/3e29081a-4bd2-4dbf-aaea-83cc0d12433c" />
" width="700">
</p>

---

## Final GDSII Layout

<p align="center">
<img src="<img width="1022" height="875" alt="Screenshot from 2026-08-04 22-45-45" src="https://github.com/user-attachments/assets/0598f606-e29e-450d-b615-0f4c67f44973" />
" width="900">
</p>

---

# Repository Structure

```
AES128_ASIC/
│
├── rtl/
├── tb/
├── synthesis/
├── constraints/
├── scripts/
├── images/
└── README.md
```

---

# Verification

✔ RTL Simulation

✔ Functional Verification

✔ Synthesis

✔ Timing Analysis

✔ Physical Design

✔ GDSII Generation

---

# Future Improvements

- Full AES-128 (10 Rounds)
- Pipeline Architecture
- Power Optimization
- DFT Support
- Scan Chain
- MBIST Integration
- Side Channel Resistance
- Hardware Trojan Detection

---

# Author

**Vamsi Krishna Theegela**

Electronics & Communication Engineering (VLSI)

Manipal Institute of Technology

---

# Acknowledgements

- SkyWater SKY130 PDK
- OpenROAD Project
- Yosys
- Magic VLSI
- KLayout# 🔐 RTL-to-GDSII Implementation of an AES-128 Round Accelerator using Sky130 PDK

<p align="center">

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![ASIC](https://img.shields.io/badge/ASIC-RTL--to--GDSII-success)
![PDK](https://img.shields.io/badge/PDK-SKY130-orange)
![OpenROAD](https://img.shields.io/badge/OpenROAD-Flow-red)
![Yosys](https://img.shields.io/badge/Synthesis-Yosys-yellow)
![License](https://img.shields.io/badge/License-MIT-green)

</p>

<p align="center">
<img src="images/layout/final_layout.png" width="900">
</p>

<p align="center">
Complete ASIC Implementation of an AES-128 Round Accelerator using the OpenROAD Flow and SkyWater SKY130 PDK
</p>

---

# 📖 Overview

This project presents the complete **RTL-to-GDSII implementation** of an **AES-128 Round Accelerator** using the open-source ASIC design flow.

The design starts from synthesizable Verilog RTL and progresses through every major stage of digital ASIC implementation including:

- RTL Design
- Functional Verification
- Logic Synthesis
- Static Timing Analysis
- Floorplanning
- Placement
- Clock Tree Synthesis
- Global Routing
- Detailed Routing
- Physical Verification
- Final GDSII Generation

The final output is a manufacturable **GDSII layout** implemented using the **SkyWater SKY130 HD Standard Cell Library**.

---

# 🔒 What is AES?

The **Advanced Encryption Standard (AES)** is a symmetric-key block cipher standardized by the **National Institute of Standards and Technology (NIST)** under **FIPS-197**.

AES is one of the most widely deployed encryption standards worldwide and protects digital communication across countless applications.

AES provides:

- Confidentiality
- High Security
- Fast Hardware Implementation
- Resistance against known cryptographic attacks

AES is used in:

- Secure Internet Communication (TLS/SSL)
- Banking Systems
- Military Communication
- Government Networks
- SSD Encryption
- Smartphones
- Cloud Computing
- Automotive ECUs
- IoT Devices
- Embedded Systems

---

# ❓ Why Hardware AES?

Software implementations of AES consume processor cycles and generally introduce higher latency.

Dedicated ASIC implementations offer:

- Lower Latency
- Higher Throughput
- Lower Power Consumption
- Better Performance
- Deterministic Execution
- Improved Security

This is why modern processors and SoCs often integrate dedicated cryptographic accelerators.

---

# 🎯 Project Objective

The objective of this project is to implement one complete **AES-128 encryption round** as an Application Specific Integrated Circuit (ASIC).

The implementation includes:

- Synthesizable RTL
- Functional Verification
- Logic Synthesis
- Timing Closure
- Physical Design
- Manufacturable GDSII Layout

using an entirely open-source ASIC toolchain.

---

# ⭐ What Makes This Project Unique?

Unlike many AES implementations that stop after RTL simulation or FPGA deployment, this project demonstrates a **complete ASIC implementation**.

### Project Highlights

✅ Complete RTL-to-GDSII Flow

✅ Synthesized using Yosys

✅ Physical Design using OpenROAD

✅ Sky130 HD Standard Cell Library

✅ Static Timing Analysis

✅ Floorplanning

✅ Standard Cell Placement

✅ Clock Tree Synthesis (CTS)

✅ Global Routing

✅ Detailed Routing

✅ DRC-aware Physical Design

✅ Final Manufacturable GDSII

This closely resembles the digital implementation flow followed in semiconductor companies.

---

# 🏗 AES Round Architecture

```
            Plaintext
                │
                ▼
         AddRoundKey
                │
                ▼
          SubBytes
                │
                ▼
          ShiftRows
                │
                ▼
          MixColumns
                │
                ▼
         AddRoundKey
                │
                ▼
            Ciphertext
```

---

# 🧩 RTL Modules

| Module | Description |
|---------|-------------|
| aes_top | Top-level AES Round Accelerator |
| aes_controller | Controls encryption sequence |
| addroundkey | Performs XOR with Round Key |
| subbytes | Implements AES Byte Substitution |
| shiftrows | Performs AES Row Shifting |
| mixcolumns | Implements AES MixColumns Transformation |
| mixcolumn | Single Column Transformation |
| gf_multiplier | GF(2⁸) Arithmetic Unit |
| key_expansion | AES Key Expansion |
| key_schedule_core | Round Key Generation |
| rotword | Word Rotation |
| subword | Word Substitution |
| rcon | AES Round Constants |
| sbox | AES S-Box Lookup Table |
| state_register | AES State Storage |

---

# ⚙ ASIC Design Flow

```
RTL Design
     │
     ▼
Functional Verification
     │
     ▼
Logic Synthesis (Yosys)
     │
     ▼
Static Timing Analysis
     │
     ▼
Floorplanning
     │
     ▼
Placement
     │
     ▼
Clock Tree Synthesis
     │
     ▼
Global Routing
     │
     ▼
Detailed Routing
     │
     ▼
Physical Verification
     │
     ▼
GDSII Generation
```

---

# 🛠 Toolchain

| Tool | Purpose |
|------|---------|
| Verilog HDL | RTL Design |
| Icarus Verilog | Simulation |
| GTKWave | Waveform Analysis |
| Yosys | Logic Synthesis |
| OpenROAD | Physical Design |
| OpenSTA | Static Timing Analysis |
| Magic VLSI | Layout Visualization |
| KLayout | GDS Viewer |
| Sky130 HD | Standard Cell Library |

---

# 📊 ASIC Implementation Results

| Parameter | Value |
|------------|--------|
| Technology | Sky130 HD |
| RTL Language | Verilog HDL |
| Clock Period | 10 ns |
| Total Standard Cells | **2822** |
| Sequential Cells | **135 D Flip-Flops** |
| Total Wires | **2702** |
| Wire Bits | **3083** |
| Chip Area | **22,569.15 μm²** |
| Sequential Area | **3404.52 μm²** |
| Sequential Logic | **15.08%** |
| Final Output | GDSII Generated Successfully |

---

# 📈 Synthesis Summary

The synthesized design contains:

- 2822 Standard Cells
- 2702 Wires
- 135 Sequential Elements
- Optimized Combinational Logic
- Successfully Mapped to Sky130 HD Standard Cells

Dominant standard cells include:

- XOR Gates
- XNOR Gates
- NAND Gates
- NOR Gates
- Buffers
- D Flip-Flops

The high number of XOR/XNOR gates reflects the arithmetic and substitution operations inherent to the AES encryption algorithm.

---

# 📷 Physical Design Results

## Floorplan & Placement

<p align="center">
<img src="images/reports/final_placement.webp" width="900">
</p>

---

## Routing Congestion

<p align="center">
<img src="images/reports/final_congestion.webp" width="900">
</p>

---

## Clock Tree Synthesis

<p align="center">
<img src="images/reports/final_clocks.webp" width="900">
</p>

---

## Routing

<p align="center">
<img src="images/reports/final_routing.webp" width="900">
</p>

---

## IR Drop Analysis

<p align="center">
<img src="images/reports/final_ir_drop.webp" width="900">
</p>

---

## Critical Timing Path

<p align="center">
<img src="images/reports/final_worst_path.webp" width="900">
</p>

---

## Final GDSII Layout

<p align="center">
<img src="images/layout/final_layout.png" width="900">
</p>

---

# 🧪 Verification

Every RTL module was individually verified using dedicated Verilog testbenches.

Modules verified include:

- AES Controller
- AddRoundKey
- Key Expansion
- Key Schedule Core
- MixColumns
- ShiftRows
- SubBytes
- S-Box
- GF Multiplier
- RCON
- RotWord
- SubWord
- AES Top

Waveforms were analyzed using GTKWave before synthesis.

---

# 📂 Repository Structure

```
AES128_ASIC
│
├── rtl
├── tb
├── constraints
├── synthesis
├── scripts
├── images
│   ├── flow
│   ├── layout
│   ├── reports
│   └── waveforms
├── README.md
```

---

# 💡 Skills Demonstrated

This project demonstrates practical experience in:

- Digital ASIC Design
- RTL Design (Verilog)
- Functional Verification
- Cryptographic Hardware Design
- Logic Synthesis
- Static Timing Analysis
- Floorplanning
- Placement
- Clock Tree Synthesis
- Global Routing
- Detailed Routing
- GDSII Generation
- Physical Design
- OpenROAD Flow
- Sky130 PDK
- Magic VLSI
- KLayout

---

# 🚀 Future Improvements

Future enhancements for this project include:

- Full 10-Round AES-128 Encryption Engine
- Fully Pipelined Architecture
- AES-192 and AES-256 Support
- Throughput Optimization
- Clock Gating
- Power Optimization
- Design for Testability (DFT)
- Scan Chain Insertion
- Memory Built-In Self Test (MBIST)
- Hardware Trojan Detection
- Side-Channel Attack Protection
- Formal Verification
- Multi-Corner Multi-Mode (MCMM) Timing Analysis

---

# 🙏 Acknowledgements

This project was made possible using the following open-source tools and technologies:

- SkyWater SKY130 Open PDK
- OpenROAD Project
- Yosys
- OpenSTA
- Magic VLSI
- KLayout
- Icarus Verilog
- GTKWave

---

# 👨‍💻 Author

**Vamsi Krishna Theegela**

B.Tech Electronics and Communication Engineering (VLSI)

Manipal Institute of Technology

GitHub: https://github.com/vamsikrishnatheegela

---

# ⭐ If you found this project useful, consider giving it a star!
