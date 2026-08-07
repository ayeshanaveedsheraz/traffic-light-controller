# Traffic Light Controller with Pedestrian Crossing

## Overview

A Verilog-based **Traffic Light Controller with Pedestrian Crossing** designed using a **Finite State Machine (FSM)**. The system controls vehicle traffic lights and provides a safe pedestrian crossing phase.

## Features

* Red, Yellow, and Green traffic lights
* Pedestrian crossing control
* FSM-based design
* Verilog HDL implementation
* Testbench for simulation and verification

## Files

* `traffic_light.v` – Main traffic light controller
* `tb_traffic_light.v` – Testbench for simulation
* `README.md` – Project documentation

## Working

The controller follows a predefined sequence of traffic light states. When the pedestrian crossing is activated, traffic is stopped and the pedestrian crossing phase is enabled before normal traffic operation resumes.

## Tools

* Verilog HDL
* Xilinx Vivado
* FPGA

## Result

The design was successfully simulated and verified using the testbench.
