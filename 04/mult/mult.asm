// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// initialize result = 0
    @R2
    M=0

// while multiplier R1 > 0:
(multiply)
    @R1
    D=M
    @product
    0;JEQ
// load subtotal R2 to D
    @R2
    D=M
// add multiplicand R0 to subtotal in D
    @R0
    D=D+M
// store new subtotal R2
    @R2
    M=D
// decrement multiplier R1
    @R1
    M=M-1
// loop
    @multiply
    0;JMP

(product)
    @product
    0;JMP
