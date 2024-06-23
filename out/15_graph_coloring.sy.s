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
              #                    regtab 
              #                          Define printSolution_0 [color_19] -> printSolution_ret_0 
    .globl printSolution
    .type printSolution,@function
printSolution:
              #                    mem layout:|ra_printSolution:8 at 16|s0_printSolution:8 at 8|color:8 at 0
    addi    sp,sp,-24
              #                    store to ra_printSolution_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_printSolution_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          new_var color_19:ptr->i32 
              #                    regtab     a0:Freed { symidx: color_19, tracked: true } | 
              #                          label L32_0: 
.L32_0:
              #                          jump label: L33_0 
    j       .L33_0
              #                    regtab     a0:Freed { symidx: color_19, tracked: true } | 
              #                          label L33_0: 
.L33_0:
              #                    regtab     a0:Freed { symidx: color_19, tracked: true } | 
              #                          label L34_0: 
.L34_0:
              #                          jump label: L33_0 
    j       .L33_0
              #                    regtab     a0:Freed { symidx: color_19, tracked: true } | 
              #                          label L35_0: 
.L35_0:
              #                    regtab     a0:Freed { symidx: color_19, tracked: true } | 
              #                    regtab 
              #                          Define printMessage_0 [] -> printMessage_ret_0 
    .globl printMessage
    .type printMessage,@function
printMessage:
              #                    mem layout:|ra_printMessage:8 at 8|s0_printMessage:8 at 0
    addi    sp,sp,-16
              #                    store to ra_printMessage_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_printMessage_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                    regtab 
              #                          label L31_0: 
.L31_0:
              #                    regtab 
              #                    regtab 
              #                          new_var temp_0_ptr2globl_41:i32 
              #                    regtab 
              #                          label L21_0: 
.L21_0:
              #                          jump label: L22_0 
    j       .L22_0
              #                    regtab 
              #                          label L22_0: 
.L22_0:
              #                    regtab 
              #                          label L23_0: 
.L23_0:
              #                          jump label: L24_0 
    j       .L24_0
              #                    regtab 
              #                          label L24_0: 
.L24_0:
              #                    regtab 
              #                          label L25_0: 
.L25_0:
              #                    regtab 
              #                          label L26_0: 
.L26_0:
              #                          jump label: L27_0 
    j       .L27_0
              #                    regtab 
              #                          label L27_0: 
.L27_0:
              #                    regtab 
              #                          label L28_0: 
.L28_0:
              #                          jump label: L24_0 
    j       .L24_0
              #                    regtab 
              #                          label L29_0: 
.L29_0:
              #                          jump label: L22_0 
    j       .L22_0
              #                    regtab 
              #                          label L30_0: 
.L30_0:
              #                    regtab 
              #                    regtab 
              #                    regtab 
              #                          label L7_0: 
.L7_0:
              #                    regtab 
              #                          label L8_0: 
.L8_0:
              #                    regtab 
              #                          label L9_0: 
.L9_0:
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab 
              #                          label L10_0: 
.L10_0:
              #                    regtab 
              #                          label L11_0: 
.L11_0:
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab 
              #                          label L12_0: 
.L12_0:
              #                    regtab 
              #                          label L13_0: 
.L13_0:
              #                          jump label: L14_0 
    j       .L14_0
              #                    regtab 
              #                          label L14_0: 
.L14_0:
              #                    regtab 
              #                          label L15_0: 
.L15_0:
              #                          jump label: L16_0 
    j       .L16_0
              #                    regtab 
              #                          label L16_0: 
.L16_0:
              #                    regtab 
              #                          label L17_0: 
.L17_0:
              #                          jump label: L18_0 
    j       .L18_0
              #                    regtab 
              #                          label L18_0: 
.L18_0:
              #                    regtab 
              #                          label L19_0: 
.L19_0:
              #                          jump label: L14_0 
    j       .L14_0
              #                    regtab 
              #                          label L20_0: 
.L20_0:
              #                    regtab 
              #                    regtab 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                    regtab 
              #                          label L2_0: 
.L2_0:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab 
              #                          label L3_0: 
.L3_0:
              #                    regtab 
              #                          label L4_0: 
.L4_0:
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab 
              #                          label L5_0: 
.L5_0:
              #                    regtab 
              #                          label L6_0: 
.L6_0:
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl LF
              #                          global i32 LF_0 
    .type LF,@object
LF:
    .word 10
    .align 4
    .globl space
              #                          global i32 space_0 
    .type space,@object
space:
    .word 32
    .align 4
    .globl V
              #                          global i32 V_0 
    .type V,@object
V:
    .word 4
