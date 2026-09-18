1. Objectives

The purpose of this lab is to design a single digit Binary Coded Decimal (BCD) to 7-segment module in Verilog to use in tandem with our 4-bit adder module and new 2-to-1 Mux and Binary-to-BCD modules. The ultimate goal of the lab is to instantiate the aforementioned modules in a top module with inputs A & B (4-bit wide binary numbers to be added), Cin (a single bit carry in) and MS (Mux selector bit), and outputs Anode (4-bit wide signal clarifying which digit to illuminate) and Seg (7-bit wide signal that dictates what decimal digit is displayed).

2. Introduction

The 7-segment Display (7SD) is a useful part of the Basys 3 FPGA that allows decimal/hexadecimal values to be displayed in a recognizable form (0-9 for decimal digits, and A-F for the additional hexadecimal representations). As the name implies, the 7SD requires a 7-bit binary input (referred to as Seg, with each bit representing a single LED of the display digit) that is used to illuminate the individual digit LEDs. Because the digits are controlled by a common anode, Seg utilizes active low logic, with 0 bits indicating an active/illuminated diode.

Within the top level module, a 4-bit CLA (and its Full Adder module), 2-to-1 Mux, and BCDto7SD decoder can be instantiated to program an adder with decimal/hexadecimal output representation. In our top module, we define the inputs and outputs listed in the Objectives section alongside intermediate wires S (4-bit wide adder sum), Cout (single bit carry out bit), CoutExt (4-bit wide 0-extended carry out), and MO (4-bit wide Mux output). As we only use a single digit to output our sum, we hardcode the Anode signal to the rightmost 7SD digit. The CLA is then passed Cin, A, and B, and produces S and Cout. Cout is then concatenated/sign extended to 4-bits. Next, both S and CoutExt are passed to a 2-to-1 Mux, with MS selecting either to be assigned to MO. MO is then decoded into the 7-bit wide Seg signal, which displays as a decimal/hexadecimal signal on the FPGA board.

This hierarchical design allows us to reuse existing modules and simplify the work needed to generate the 7SD signal required to visually represent decimal/hexadecimal numbers. The top level module requires little logical programming and instead serves as a hub for connecting previously written code.


3. Additional Sources

https://hilite.me/ - Used to format Appendix code in Lab Report
