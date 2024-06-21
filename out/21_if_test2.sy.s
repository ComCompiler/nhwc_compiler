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
                    #      Define ifElseIf_0 [] -> ifElseIf_ret_0 
    .globl ifElseIf
    .type ifElseIf,@function
ifElseIf:
                    #mem layout:|ra_ifElseIf:8|s0_ifElseIf:8|a:4|b:4|temp_0:1|temp_1:1|temp_2:1|temp_3:1|temp_4:1|temp_5:1|temp_6:1|temp_7:1|temp_8:1|none:3|temp_9:4|temp_10:4|none:4
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i1 temp_0_22 
                    #      alloc i1 temp_1_22 
                    #      alloc i1 temp_2_22 
                    #      alloc i1 temp_3_27 
                    #      alloc i1 temp_4_27 
                    #      alloc i1 temp_5_27 
                    #      alloc i1 temp_6_30 
                    #      alloc i1 temp_7_30 
                    #      alloc i1 temp_8_30 
                    #      alloc i32 temp_9_30 
                    #      alloc i32 temp_10_30 
                    #      label L1_0: 
.L1_0:
                    #      new_var a_17:i32 
                    #      a_17 = i32 5_0 
    li      a0, 5
                    #      new_var b_17:i32 
                    #      b_17 = i32 10_0 
    li      a1, 10
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_0_22:i1 
                    #      temp_0_22 = icmp i32 Eq b_17, 0xb_0 
    li      a2, 0xb
    xor     a3,a1,a2
    seqz    a3, a3
                    #      new_var temp_1_22:i1 
                    #      temp_1_22 = icmp i32 Eq a_17, 6_0 
    li      a4, 6
    xor     a5,a0,a4
    seqz    a5, a5
                    #      new_var temp_2_22:i1 
                    #      temp_2_22 = Or i1 temp_1_22, temp_0_22 
                    #      br i1 temp_2_22, label branch_true_23, label branch_false_23 
    bnez    a6, .branch_true_23
    j       .branch_false_23
                    #      label branch_true_23: 
.branch_true_23:
                    #      ret a_17 
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a0,28(sp)
    addi    sp,sp,48
    ret
                    #      label branch_false_23: 
.branch_false_23:
                    #      new_var temp_3_27:i1 
                    #      temp_3_27 = icmp i32 Eq a_17, 1_0 
    li      a2, 1
    xor     a4,a0,a2
    seqz    a4, a4
                    #      new_var temp_4_27:i1 
                    #      temp_4_27 = icmp i32 Eq b_17, 10_0 
    li      a7, 10
    xor     s1,a1,a7
    seqz    s1, s1
                    #      new_var temp_5_27:i1 
                    #      temp_5_27 = And i1 temp_4_27, temp_3_27 
    and     s2,s1,a4
                    #      br i1 temp_5_27, label branch_true_28, label branch_false_28 
    bnez    s2, .branch_true_28
    j       .branch_false_28
                    #      label branch_true_28: 
.branch_true_28:
                    #      a_17 = i32 25_0 
                    #      jump label: L4_0 
    j       .L4_0
                    #      label branch_false_28: 
.branch_false_28:
                    #      new_var temp_6_30:i1 
                    #      temp_6_30 = icmp i32 Eq a_17, -5_0 
    li      a2, -5
    xor     a7,a0,a2
    seqz    a7, a7
                    #      new_var temp_7_30:i1 
                    #      temp_7_30 = icmp i32 Eq b_17, 10_0 
    li      s3, 10
    xor     s4,a1,s3
    seqz    s4, s4
                    #      new_var temp_8_30:i1 
                    #      temp_8_30 = And i1 temp_7_30, temp_6_30 
    and     s5,s4,a7
                    #      br i1 temp_8_30, label branch_true_31, label branch_false_31 
    bnez    s5, .branch_true_31
    j       .branch_false_31
                    #      label branch_true_31: 
.branch_true_31:
                    #      new_var temp_9_30:i32 
                    #      temp_9_30 = Add i32 a_17, 15_0 
    li      a2, 15
    add     s3,a0,a2
                    #      a_17 = i32 temp_9_30 
                    #      jump label: L3_0 
    j       .L3_0
                    #      label branch_false_31: 
.branch_false_31:
                    #      new_var temp_10_30:i32 
                    #      temp_10_30 = Sub i32 0_0, a_17 
    li      a2, 0
    sub     s3,a2,a0
                    #      a_17 = i32 temp_10_30 
                    #      jump label: L3_0 
    sw      s3,4(sp)
    lw      s3,8(sp)
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      label L4_0: 
.L4_0:
                    #      label L5_0: 
.L5_0:
                    #      label L6_0: 
.L6_0:
                    #      ret a_17 
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a0,28(sp)
    addi    sp,sp,48
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_11:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_11_36 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_11_36:i32 
                    #      temp_11_36 =  Call i32 ifElseIf_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    ifElseIf
    sw      a0,4(sp)
                    #       Call void putint_0(temp_11_36) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
    lw      a0,4(sp)
                    #arg load ended
    call    putint
                    #      ret 0_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
