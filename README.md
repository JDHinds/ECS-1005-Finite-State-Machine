# ECS 1005: Finite State Machine Project

The following was a project completed in Stage 1 of Electrical and Electronic Engineering. It contains two verilog files, one module file and a testbench, and a complete write up complete with a gate diagram. Enjoy!

## Problem Statement 
The Finite State Machine Project 1 is a four-bit password checker, checking four binary values, applied one at a time to the FSM. The FSM must only reset once all four bits have been input, even if the bits are wrong.  

Two possible passwords exist: 0101 and 1001 (or 5 and 9). If either of these numbers are detected, then it outputs a “true”, a single bit 1. Otherwise, it outputs 0. 

For this, I have assumed that every single input with be a 0 or 1 and have not accounted for undeclared or invalid bits. Also, the FSM will continue to check for a correct code, even after the correct code has been entered.
