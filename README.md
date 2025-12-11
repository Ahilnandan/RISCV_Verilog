
# RISC‑V RV32I Processor

A single‑core, non‑pipelined RISC‑V processor implementation in Verilog that executes the RV32I instruction set.

## Quick Start

1. Open the `.qpf` file in Quartus.
2. Edit the testbench (`tb`) as needed for your test cases.
3. Simulate and verify the processor behavior.

## Running Simulation in Quartus

### Step 1: Open the project

```bash
quartus RISCV_Verilog.qpf &
```

(Replace `RISCV_Verilog.qpf` with your actual project file name.)

### Step 2: Edit the testbench (optional)

Navigate to the testbench file in the project and modify test cases as needed.

### Step 3: Run simulation

In Quartus:
1. Click **Tools** → **Run Simulation** (or press **Ctrl+Shift+S**).
2. Select the testbench as the top‑level entity if prompted.
3. Click **Run**.

The waveform viewer will open showing signal behavior during simulation.

## Project Structure

- `src/` – Verilog source files for the processor core.
- `tb/` – Testbench files for simulation.

## Overview

This project implements a basic RV32I processor with a simple, single‑cycle datapath suitable for learning and experimentation.

## Notes

- Modify the testbench to test different instruction sequences and processor behavior.
- Inspect waveforms in the Quartus waveform viewer to debug and understand the datapath.
