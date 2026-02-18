# FPGA Traffic Light Controller 🚦

## 📌 Project Description
This project implements a Traffic Light Controller using Verilog HDL in Xilinx Vivado.  
The system controls traffic signals using a Finite State Machine (FSM) design approach and is verified through simulation.

## 🛠 Tools Used
- Verilog HDL
- Xilinx Vivado
- FPGA Development Environment

## ⚙️ Design Overview
The traffic controller operates based on clock-driven state transitions.  
Each state represents a traffic light condition (Red, Yellow, Green), and the controller changes signals according to timing logic.

## 📂 Project Files

### 🔹 Design Source
- `traffic_controller.v` – Main traffic control logic module

### 🔹 Simulation Source
- `traffic_tb.v` – Testbench file for simulation and verification

## ▶️ Simulation
The design was simulated using Vivado Behavioral Simulation.  
The waveform output verifies correct state transitions and signal timing.

https://github.com/saipravalikavarma/FPGA_Traffic-controller/blob/main/WhatsApp%20Image%202026-02-18%20at%209.12.12%20PM.jpeg

## 🚀 How to Run the Project

1. Open Xilinx Vivado
2. Create a new RTL Project
3. Add `traffic_controller.v` under Design Sources
4. Add `traffic_tb.v` under Simulation Sources
5. Set `traffic_tb.v` as top simulation module
6. Run Behavioral Simulation

## 🎯 Applications
- Smart Traffic Systems
- Digital Control Systems
- FPGA-based Embedded Systems

## 👩‍💻 Author
Appani Saipravalika  
Electronics and Communication Engineering
