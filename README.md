1. Objectives

The purpose of this lab is to design, simulate, and analyze two implementations of a 4-bit adder. Specifically, we will explore the Ripple Carry Adder (RCA) and Carry Lookahead Adder (CLA) designs. To do so, we will write 6 Verilog files: the RCA and CLA 1-bit adder modules, the full 4-bit RCA and CLA designs, and their respective testbenches. In the lab, we will first run the simulation in Vivado to verify the functionality of our testbenches, then perform the synthesis and run the program on the physical Basys 3 FPGA.

2. Introduction

Adders are a fundamental aspect of computer arithmetic, present in both simple circuits and complex circuits alike. They perform all types of computing work, from basic incremental counting to the complex arithmetic required by a CPU’s arithmetic logic unit (ALU). 

In its simplest form, addition can be represented by a half adder (HA) that takes in two 1-bit inputs to generate a sum and a carry out, both equal to either 0 or 1 depending on inputs’ values. By adding an additional input, a carry in bit, the HA can be transformed into a full adder (FA). This form of the adder has the added possibility of both the sum and carry out bit equalling 1, representing the number 3 (as 2 plus a carried 1). 

Multiple FA’s may be chained together to create multi-bit adders, in the form of Ripple Carry Adders (RCA) or Carry Lookahead Adders (CLA), that allow larger calculations to be performed. The RCA simply links the carry out bit of the previous FA to the carry in bit of the subsequent FA, in ascending bit order (0, 1, 2, etc.).Generally, this implementation is slow for larger bit width calculations due to carry propagation, but uses minimal hardware/physical area. In contrast, the CLA creates 2 additional output signals, a propagate and generate signal, that are used to calculate carry bits in advance. This allows for faster propagation of carry bits and quicker overall calculation times, at the cost of additional hardware.

3. Additional Sources

https://hilite.me/ - Used to format Appendix code in Lab Report
