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
                    #mem layout:|ra_main:8|s0_main:8|a:4|b:4|c:4|d:4|result:4|temp_0:4|temp_1:4|temp_2:1|none:3|temp_3:4|temp_4:1|temp_5:1|none:2|temp_6:4|temp_7:1|temp_8:1|none:2|temp_9:4|temp_10:4|temp_11:1|none:3|temp_12:4|temp_13:1|temp_14:1|none:2|temp_15:4|temp_16:4|temp_17:1|temp_18:1|none:2
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i32 c_17 
                    #      alloc i32 d_17 
                    #      alloc i32 result_17 
                    #      alloc i32 temp_0_28 
                    #      alloc i32 temp_1_28 
                    #      alloc i1 temp_2_28 
                    #      alloc i32 temp_3_28 
                    #      alloc i1 temp_4_28 
                    #      alloc i1 temp_5_28 
                    #      alloc i32 temp_6_28 
                    #      alloc i1 temp_7_28 
                    #      alloc i1 temp_8_28 
                    #      alloc i32 temp_9_32 
                    #      alloc i32 temp_10_32 
                    #      alloc i1 temp_11_32 
                    #      alloc i32 temp_12_32 
                    #      alloc i1 temp_13_32 
                    #      alloc i1 temp_14_32 
                    #      alloc i32 temp_15_32 
                    #      alloc i32 temp_16_32 
                    #      alloc i1 temp_17_32 
                    #      alloc i1 temp_18_32 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_17:i32 
                    #      new_var b_17:i32 
                    #      new_var c_17:i32 
                    #      new_var d_17:i32 
                    #      new_var result_17:i32 
                    #      a_17 = i32 5_0 
    li      a0, 5
                    #      b_17 = i32 5_0 
    li      a1, 5
                    #      c_17 = i32 1_0 
    li      a2, 1
                    #      d_17 = i32 -2_0 
    li      a3, -2
                    #      result_17 = i32 2_0 
    li      a4, 2
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_0_28:i32 
                    #      temp_0_28 = Add i32 c_17, 3_0 
    li      a5, 3
    add     a6,a2,a5
                    #      new_var temp_1_28:i32 
                    #      temp_1_28 = Mod i32 temp_0_28, 2_0 
    li      a7, 2
    rem     s1,a6,a7
                    #      new_var temp_2_28:i1 
                    #      temp_2_28 = icmp i32 Ne temp_1_28, 0_0 
    li      s2, 0
    xor     s3,s1,s2
    snez    s3, s3
                    #      new_var temp_3_28:i32 
                    #      temp_3_28 = Sub i32 a_17, b_17 
    sub     s4,a0,a1
                    #      new_var temp_4_28:i1 
                    #      temp_4_28 = icmp i32 Ne temp_3_28, 0_0 
                    #found literal reg Some(s2) already exist with 0_0
    xor     s5,s4,s2
    snez    s5, s5
                    #      new_var temp_5_28:i1 
                    #      temp_5_28 = And i1 temp_4_28, temp_2_28 
    and     s6,s5,s3
                    #      new_var temp_6_28:i32 
                    #      temp_6_28 = Div i32 2_0, d_17 
                    #found literal reg Some(a7) already exist with 2_0
    div     s7,a7,a3
                    #      new_var temp_7_28:i1 
                    #      temp_7_28 = icmp i32 Slt temp_6_28, 0_0 
                    #found literal reg Some(s2) already exist with 0_0
    slt     s8,s7,s2
                    #      new_var temp_8_28:i1 
                    #      temp_8_28 = Or i1 temp_7_28, temp_5_28 
                    #      br i1 temp_8_28, label branch_true_29, label branch_false_29 
    bnez    s9, .branch_true_29
    j       .branch_false_29
                    #      label branch_true_29: 
.branch_true_29:
                    #       Call void putint_0(result_17) 
                    #saved register dumping to mem
    sw      s1,52(sp)
    sb      s3,51(sp)
    sw      s4,44(sp)
    sb      s5,43(sp)
    sb      s6,42(sp)
    sw      s7,36(sp)
    sb      s8,35(sp)
    sb      s9,34(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,76(sp)
    mv      a0, a4
                    #arg load ended
    call    putint
                    #      jump label: branch_false_29 
    lb      s6,42(sp)
    lb      s9,34(sp)
    lb      s8,35(sp)
    lb      s5,43(sp)
    lw      s1,52(sp)
    lb      s3,51(sp)
    lw      s7,36(sp)
    lw      s4,44(sp)
    lw      a0,76(sp)
    j       .branch_false_29
                    #      label branch_false_29: 
.branch_false_29:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_9_32:i32 
                    #      temp_9_32 = Add i32 c_17, 2_0 
    li      a5, 2
    add     a7,a2,a5
                    #      new_var temp_10_32:i32 
                    #      temp_10_32 = Mod i32 temp_9_32, 2_0 
                    #found literal reg Some(a5) already exist with 2_0
    rem     s2,a7,a5
                    #      new_var temp_11_32:i1 
                    #      temp_11_32 = icmp i32 Ne temp_10_32, 0_0 
    li      s10, 0
    xor     s11,s2,s10
    snez    s11, s11
                    #      new_var temp_12_32:i32 
                    #      temp_12_32 = Sub i32 a_17, b_17 
    sub     a5,a0,a1
                    #      new_var temp_13_32:i1 
                    #      temp_13_32 = icmp i32 Ne temp_12_32, 0_0 
                    #found literal reg Some(s10) already exist with 0_0
    sw      a0,76(sp)
    xor     a0,a5,s10
    snez    a0, a0
                    #      new_var temp_14_32:i1 
                    #      temp_14_32 = And i1 temp_13_32, temp_11_32 
    and     s10,a0,s11
                    #      new_var temp_15_32:i32 
                    #      temp_15_32 = Mod i32 d_17, 2_0 
    sb      a0,15(sp)
    li      a0, 2
    sw      a1,72(sp)
    rem     a1,a3,a0
                    #      new_var temp_16_32:i32 
                    #      temp_16_32 = Add i32 temp_15_32, 67_0 
    li      a0, 67
    sw      a2,68(sp)
    add     a2,a1,a0
                    #      new_var temp_17_32:i1 
                    #      temp_17_32 = icmp i32 Slt temp_16_32, 0_0 
    li      a0, 0
    sw      a1,8(sp)
    slt     a1,a2,a0
                    #      new_var temp_18_32:i1 
                    #      temp_18_32 = Or i1 temp_17_32, temp_14_32 
                    #      br i1 temp_18_32, label branch_true_33, label branch_false_33 
    bnez    a0, .branch_true_33
    j       .branch_false_33
                    #      label branch_true_33: 
.branch_true_33:
                    #      result_17 = i32 4_0 
                    #       Call void putint_0(result_17) 
                    #saved register dumping to mem
    sw      s1,52(sp)
    sw      s2,24(sp)
    sb      s3,51(sp)
    sw      s4,44(sp)
    sb      s5,43(sp)
    sb      s6,42(sp)
    sw      s7,36(sp)
    sb      s8,35(sp)
    sb      s9,34(sp)
    sb      s10,14(sp)
    sb      s11,23(sp)
                    #saved register dumped to mem
                    #arg load start
    sb      a0,2(sp)
    mv      a0, a4
                    #arg load ended
    call    putint
                    #      jump label: branch_false_33 
    lb      s6,42(sp)
    lb      s11,23(sp)
    lw      s2,24(sp)
    lb      s9,34(sp)
    lb      s8,35(sp)
    lb      s10,14(sp)
    lb      s5,43(sp)
    lw      s1,52(sp)
    lb      s3,51(sp)
    lw      s7,36(sp)
    lw      s4,44(sp)
    lb      a0,2(sp)
    j       .branch_false_33
                    #      label branch_false_33: 
.branch_false_33:
                    #      label L3_0: 
.L3_0:
                    #      ret 0_0 
    ld      ra,88(sp)
    ld      s0,80(sp)
    sb      a0,2(sp)
    li      a0, 0
    addi    sp,sp,96
    ret
