# DIGITAL-FILTER-DESIGN

*Company* : CODTECH IT SOLUTIONS PVT.LTD

*Name* : Neelisetty RUSHI KESAVA DARBAR

*Intern ID* : CT06DH221

*Domain* : VLSI

*Duration* : 6 Weeks

*Mentor* : NEELA SANTOSH

## Description
Designed a 4-tap FIR filter in Verilog with coefficients [1, 2, 3, 4].  
Each output sample is computed as:
y[n] = x[n]*1 + x[n-1]*2 + x[n-2]*3 + x[n-3]*4

## How to Run
1. Paste code in EdaPlayground
2. Use Icarus Verilog
3. Simulate and observe output

## Output Evaluation

The output values were validated using the FIR formula:
y[n] = 1x[n] + 2x[n-1] + 3x[n-2] + 4x[n-3]


| Time | Input | Expected Output | Simulated Output |
|------|--------|------------------|-------------------|
| 10   | 1      | 1                |  1              |
| 20   | 2      | 4                |  4              |
| 30   | 3      | 10               |  10             |
| 40   | 4      | 20               |  20             |
| 50   | 5      | 30               |  30             |
| 60   | 6      | 40               |  40             |
