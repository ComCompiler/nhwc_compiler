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
                    #mem layout:|ra_main:8|s0_main:8|i:4|sum:4|temp_0:1|temp_1:1|none:2|temp_2:4|temp_3:4|temp_4:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 i_17 
                    #      alloc i32 sum_17 
                    #      alloc i1 temp_0_22 
                    #      alloc i1 temp_1_25 
                    #      alloc i32 temp_2_27 
                    #      alloc i32 temp_3_24 
                    #      alloc i32 temp_4_24 
                    #      label L0_0: 
.L0_0:
                    #      new_var i_17:i32 
                    #      i_17 = i32 0_0 
    li      a0, 0
                    #      new_var sum_17:i32 
                    #      sum_17 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_23 
    j       .while.head_23
                    #      label while.head_23: 
.while.head_23:
                    #      new_var temp_0_22:i1 
                    #      temp_0_22 = icmp i32 Slt i_17, 100_0 
    li      a2, 100
    slt     a3,a0,a2
                    #      br i1 temp_0_22, label while.body_23, label while.exit_23 
    bnez    a3, .while.body_23
    j       .while.exit_23
                    #      label while.body_23: 
.while.body_23:
                    #      new_var temp_1_25:i1 
                    #      temp_1_25 = icmp i32 Eq i_17, 50_0 
    li      a4, 50
    xor     a5,a0,a4
    seqz    a5, a5
                    #      br i1 temp_1_25, label branch_true_26, label branch_false_26 
    bnez    a5, .branch_true_26
    j       .branch_false_26
                    #      label branch_true_26: 
.branch_true_26:
                    #      new_var temp_2_27:i32 
                    #      temp_2_27 = Add i32 i_17, 1_0 
    li      a6, 1
    add     a7,a0,a6
                    #      i_17 = i32 temp_2_27 
                    #      jump label: while.exit_23 
    j       .while.exit_23
                    #      label branch_false_26: 
.branch_false_26:
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_3_24:i32 
                    #      temp_3_24 = Add i32 sum_17, i_17 
    add     s1,a1,a0
                    #      sum_17 = i32 temp_3_24 
                    #      new_var temp_4_24:i32 
                    #      temp_4_24 = Add i32 i_17, 1_0 
                    #found literal reg Some(a6) already exist with 1_0
    add     s2,a0,a6
                    #      i_17 = i32 temp_4_24 
                    #      jump label: while.head_23 
    j       .while.head_23
                    #      label while.exit_23: 
.while.exit_23:
                    #      ret sum_17 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a1,16(sp)
    sw      a0,20(sp)
    addi    sp,sp,40
    ret
