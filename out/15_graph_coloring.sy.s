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


.section        .text
    .align 4
                    #      Define printSolution_0 [color_19] -> printSolution_ret_0 
    .globl printSolution
    .type printSolution,@function
printSolution:
                    #mem layout:|ra_printSolution:8|s0_printSolution:8|color:8
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      new_var color_19:ptr->i32 
                    #      label L32_0: 
.L32_0:
                    #      jump label: L33_0 
    j       .L33_0
                    #      label L33_0: 
.L33_0:
                    #      label L34_0: 
.L34_0:
                    #      jump label: L33_0 
    j       .L33_0
                    #      label L35_0: 
.L35_0:
                    #      Define printMessage_0 [] -> printMessage_ret_0 
    .globl printMessage
    .type printMessage,@function
printMessage:
                    #mem layout:|ra_printMessage:8|s0_printMessage:8
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
                    #      label L31_0: 
.L31_0:
                    #      new_var temp_0_41:i32 
                    #      label L21_0: 
.L21_0:
                    #      jump label: L22_0 
    j       .L22_0
                    #      label L22_0: 
.L22_0:
                    #      label L23_0: 
.L23_0:
                    #      jump label: L24_0 
    j       .L24_0
                    #      label L24_0: 
.L24_0:
                    #      label L25_0: 
.L25_0:
                    #      label L26_0: 
.L26_0:
                    #      jump label: L27_0 
    j       .L27_0
                    #      label L27_0: 
.L27_0:
                    #      label L28_0: 
.L28_0:
                    #      jump label: L24_0 
    j       .L24_0
                    #      label L29_0: 
.L29_0:
                    #      jump label: L22_0 
    j       .L22_0
                    #      label L30_0: 
.L30_0:
                    #      label L7_0: 
.L7_0:
                    #      label L8_0: 
.L8_0:
                    #      label L9_0: 
.L9_0:
                    #      jump label: L10_0 
    j       .L10_0
                    #      label L10_0: 
.L10_0:
                    #      label L11_0: 
.L11_0:
                    #      jump label: L12_0 
    j       .L12_0
                    #      label L12_0: 
.L12_0:
                    #      label L13_0: 
.L13_0:
                    #      jump label: L14_0 
    j       .L14_0
                    #      label L14_0: 
.L14_0:
                    #      label L15_0: 
.L15_0:
                    #      jump label: L16_0 
    j       .L16_0
                    #      label L16_0: 
.L16_0:
                    #      label L17_0: 
.L17_0:
                    #      jump label: L18_0 
    j       .L18_0
                    #      label L18_0: 
.L18_0:
                    #      label L19_0: 
.L19_0:
                    #      jump label: L14_0 
    j       .L14_0
                    #      label L20_0: 
.L20_0:
                    #      label L0_0: 
.L0_0:
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      label L2_0: 
.L2_0:
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L3_0: 
.L3_0:
                    #      label L4_0: 
.L4_0:
                    #      jump label: L5_0 
    j       .L5_0
                    #      label L5_0: 
.L5_0:
                    #      label L6_0: 
.L6_0:
.section        .data
    .align 4
    .globl LF
                    #      global i32 LF_0 
    .type LF,@object
LF:
    .word 10
    .align 4
    .globl space
                    #      global i32 space_0 
    .type space,@object
space:
    .word 32
    .align 4
    .globl V
                    #      global i32 V_0 
    .type V,@object
V:
    .word 4
