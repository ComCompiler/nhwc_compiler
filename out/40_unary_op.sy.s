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
                    #mem layout:|ra_main:8|s0_main:8|a:4|temp_0:1|temp_1:1|temp_2:1|temp_3:1|temp_4:1|temp_5:1|temp_6:1|none:5
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    #      alloc i32 a_17 
                    #      alloc i1 temp_0_20 
                    #      alloc i1 temp_1_20 
                    #      alloc i1 temp_2_20 
                    #      alloc i1 temp_3_20 
                    #      alloc i1 temp_4_20 
                    #      alloc i1 temp_5_20 
                    #      alloc i1 temp_6_20 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_17:i32 
                    #      a_17 = i32 10_0 
    li      a0, 10
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_0_20:i1 
                    #      temp_0_20 = icmp i1 Ne a_17, 0_0 
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
                    #      new_var temp_1_20:i1 
                    #      temp_1_20 = xor i1 temp_0_20, true 
    seqz    a3, a2
                    #      new_var temp_2_20:i1 
                    #      new_var temp_3_20:i1 
                    #      temp_3_20 = xor i1 temp_2_20, true 
    seqz    a5, a4
                    #      new_var temp_4_20:i1 
                    #      new_var temp_5_20:i1 
                    #      temp_5_20 = xor i1 temp_4_20, true 
    seqz    a7, a6
                    #      new_var temp_6_20:i1 
                    #      temp_6_20 = Sub i1 0_0, temp_5_20 
                    #found literal reg Some(a1) already exist with 0_0
    sub     s1,a1,a7
                    #      br i1 temp_6_20, label branch_true_21, label branch_false_21 
    bnez    s1, .branch_true_21
    j       .branch_false_21
                    #      label branch_true_21: 
.branch_true_21:
                    #      a_17 = i32 -1_0 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label branch_false_21: 
.branch_false_21:
                    #      a_17 = i32 0_0 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      label L3_0: 
.L3_0:
                    #      ret a_17 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    addi    sp,sp,32
    ret
