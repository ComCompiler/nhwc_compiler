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
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|none:8|s0_main:8|none:4|a:4|temp_0:1|none:7
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,16(sp)
    addi    s0,sp,-40
    addi    s0,sp,40
                    #      alloc i32 a_17 
                    #      alloc i1 temp_0_19 
                    #      label L0_0: 
.L0_0:
                    #      a_17 = i32 0x7fff_0 
    li      a0, 0x7fff
    mv      a1, a0
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_0_19:i1 
                    #      temp_0_19 = icmp i32 Sgt a_17, 0x6fff_0 
    li      a2, 0x6fff
    slt     a3,a2,a1
                    #      br i1 temp_0_19, label branch_true_20, label branch_false_20 
    bnez    a3, .branch_true_20
    j       .branch_false_20
                    #      label branch_true_20: 
.branch_true_20:
                    #      a_17 = i32 3_0 
    li      a4, 3
                    #      jump label: branch_false_20 
    j       .branch_false_20
                    #      label branch_false_20: 
.branch_false_20:
