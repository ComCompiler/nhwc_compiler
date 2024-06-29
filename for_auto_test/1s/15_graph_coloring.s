# Built-in library
 .text
 .align 4
 .globl starttime
 .type starttime, @function
 starttime:
 mv a0, zero
 tail _sysy_starttime
 
 .text
 .align 4
 .globl stoptime
 .type stoptime, @function
 stoptime:
 mv a0, zero
 tail _sysy_stoptime


.section ___func
    .text
    .align 4
    .globl printSolution
    .type printSolution,@function
printSolution:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L32_0:
    j       .L33_0
.L33_0:
.L34_0:
    j       .L33_0
.L35_0:
    .globl printMessage
    .type printMessage,@function
printMessage:
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
.L31_0:
.L21_0:
    j       .L22_0
.L22_0:
.L23_0:
    j       .L24_0
.L24_0:
.L25_0:
.L26_0:
    j       .L27_0
.L27_0:
.L28_0:
    j       .L24_0
.L29_0:
    j       .L22_0
.L30_0:
.L7_0:
.L8_0:
.L9_0:
    j       .L10_0
.L10_0:
.L11_0:
    j       .L12_0
.L12_0:
.L13_0:
    j       .L14_0
.L14_0:
.L15_0:
    j       .L16_0
.L16_0:
.L17_0:
    j       .L18_0
.L18_0:
.L19_0:
    j       .L14_0
.L20_0:
.L0_0:
    j       .L1_0
.L1_0:
.L2_0:
    j       .L1_0
.L3_0:
.L4_0:
    j       .L5_0
.L5_0:
.L6_0:
.section ___var
    .data
    .align 4
    .globl LF
    .type LF,@object
LF:
    .word 10
    .align 4
    .globl space
    .type space,@object
space:
    .word 32
    .align 4
    .globl V
    .type V,@object
V:
    .word 4
