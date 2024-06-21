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
                    #      Define printans_0 [] -> printans_ret_0 
    .globl printans
    .type printans,@function
printans:
                    #mem layout:|ra_printans:8|s0_printans:8|temp_0:4|temp_1:4|i:4|temp_2:4|temp_3:1|none:3|temp_4:200|none:4|temp_5:8|temp_6:4|temp_7:4|temp_8:1|none:3|temp_9:4
    addi    sp,sp,-264
    sd      ra,256(sp)
    sd      s0,248(sp)
    addi    s0,sp,264
                    #      alloc i32 temp_0_19 
                    #      alloc i32 temp_1_19 
                    #      alloc i32 i_19 
                    #      alloc i32 temp_2_22 
                    #      alloc i1 temp_3_22 
                    #      alloc Array:i32:[Some(50_0)] temp_4_24 
                    #      alloc ptr->i32 temp_5_24 
                    #      alloc i32 temp_6_24 
                    #      alloc i32 temp_7_26 
                    #      alloc i1 temp_8_26 
                    #      alloc i32 temp_9_24 
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_0_19:i32 
                    #      temp_0_19 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a0, sum
                    #occupy reg a0 with *sum_0
    lw      a1,0(a0)
                    #      new_var temp_1_19:i32 
                    #      temp_1_19 = Add i32 temp_0_19, 1_0 
    li      a2, 1
    add     a3,a1,a2
                    #      store temp_1_19:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a4, sum
                    #occupy reg a4 with *sum_0
    sd      a3,0(a4)
                    #      i_19 = i32 1_0 
    li      a5, 1
                    #      jump label: while.head_23 
    j       .while.head_23
                    #      label while.head_23: 
.while.head_23:
                    #      new_var temp_2_22:i32 
                    #      temp_2_22 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    lw      a2,0(a0)
                    #      new_var temp_3_22:i1 
                    #      temp_3_22 = icmp i32 Sle i_19, temp_2_22 
    slt     a4,a2,a5
    xori    a4,a4,1
                    #      br i1 temp_3_22, label while.body_23, label while.exit_23 
    bnez    a4, .while.body_23
    j       .while.exit_23
                    #      label while.body_23: 
.while.body_23:
                    #      new_var temp_4_24:Array:i32:[Some(50_0)] 
                    #      temp_4_24 = load *ans_0:ptr->i32 
                    #   load label ans as ptr to reg
    la      a0, ans
                    #occupy reg a0 with *ans_0
    lw      a6,0(a0)
                    #      new_var temp_5_24:ptr->i32 
                    #      new_var temp_6_24:i32 
                    #      temp_5_24 = getelementptr temp_4_24:Array:i32:[Some(50_0)] [Some(i_19)] 
    li      a7, 0
    li      s1, 1
    add     a7,a7,a6
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_6_24 = load temp_5_24:ptr->i32 
    lw      s2,0(a7)
                    #       Call void putint_0(temp_6_24) 
                    #saved register dumping to mem
    sw      s2,12(sp)
                    #saved register dumped to mem
                    #arg load start
    lw      a0,12(sp)
                    #arg load ended
    call    putint
                    #      jump label: L6_0 
    j       .L6_0
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_7_26:i32 
                    #      temp_7_26 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    lw      s1,0(a0)
                    #      new_var temp_8_26:i1 
                    #      temp_8_26 = icmp i32 Eq i_19, temp_7_26 
    xor     s2,a5,s1
    seqz    s2, s2
                    #      br i1 temp_8_26, label branch_true_27, label branch_false_27 
    bnez    s2, .branch_true_27
    j       .branch_false_27
                    #      label branch_true_27: 
.branch_true_27:
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
    sw      s1,8(sp)
    sb      s2,7(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      ret 
    ld      ra,256(sp)
    ld      s0,248(sp)
    addi    sp,sp,264
    ret
                    #      label branch_false_27: 
.branch_false_27:
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
    sw      s1,8(sp)
    sb      s2,7(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #      jump label: L7_0 
    j       .L7_0
                    #      label L7_0: 
.L7_0:
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_9_24:i32 
                    #      temp_9_24 = Add i32 i_19, 1_0 
    li      a0, 1
    add     s1,a5,a0
                    #      i_19 = i32 temp_9_24 
    mv      a5, s1
                    #      jump label: while.head_23 
    sw      a6,224(sp)
    sb      a4,231(sp)
    sw      a2,232(sp)
    sd      a7,16(sp)
    sw      s1,0(sp)
    j       .while.head_23
                    #      label while.exit_23: 
.while.exit_23:
                    #      Define f_0 [step_33] -> f_ret_0 
    .globl f
    .type f,@function
f:
                    #mem layout:|ra_f:8|s0_f:8|step:4|i:4|temp_10:4|temp_11:1|none:3|temp_12:4|temp_13:4|temp_14:4|temp_15:400|none:4|temp_16:8|temp_17:4|temp_18:1|temp_19:1|none:2|temp_20:4|temp_21:200|none:4|temp_22:8|temp_23:4|temp_24:1|temp_25:1|none:2|temp_26:200|temp_27:8|temp_28:4|temp_29:1|temp_30:1|none:2|temp_31:8|temp_32:4|temp_33:1|none:3|temp_34:8|temp_35:4|none:4|temp_36:8|temp_37:4|temp_38:4|temp_39:4|none:4|temp_40:8|temp_41:4|none:4|temp_42:8|temp_43:4|none:4|temp_44:8|temp_45:4|temp_46:4|temp_47:4|none:4|temp_48:8|temp_49:4|none:4
    addi    sp,sp,-1032
    sd      ra,1024(sp)
    sd      s0,1016(sp)
    addi    s0,sp,1032
                    #      alloc i32 i_35 
                    #      alloc i32 temp_10_37 
                    #      alloc i1 temp_11_37 
                    #      alloc i32 temp_12_40 
                    #      alloc i32 temp_13_40 
                    #      alloc i32 temp_14_40 
                    #      alloc Array:i32:[Some(100_0)] temp_15_40 
                    #      alloc ptr->i32 temp_16_40 
                    #      alloc i32 temp_17_40 
                    #      alloc i1 temp_18_40 
                    #      alloc i1 temp_19_40 
                    #      alloc i32 temp_20_40 
                    #      alloc Array:i32:[Some(50_0)] temp_21_40 
                    #      alloc ptr->i32 temp_22_40 
                    #      alloc i32 temp_23_40 
                    #      alloc i1 temp_24_40 
                    #      alloc i1 temp_25_40 
                    #      alloc Array:i32:[Some(50_0)] temp_26_40 
                    #      alloc ptr->i32 temp_27_40 
                    #      alloc i32 temp_28_40 
                    #      alloc i1 temp_29_40 
                    #      alloc i1 temp_30_40 
                    #      alloc ptr->i32 temp_31_42 
                    #      alloc i32 temp_32_44 
                    #      alloc i1 temp_33_44 
                    #      alloc ptr->i32 temp_34_42 
                    #      alloc i32 temp_35_42 
                    #      alloc ptr->i32 temp_36_42 
                    #      alloc i32 temp_37_42 
                    #      alloc i32 temp_38_42 
                    #      alloc i32 temp_39_42 
                    #      alloc ptr->i32 temp_40_42 
                    #      alloc i32 temp_41_42 
                    #      alloc ptr->i32 temp_42_42 
                    #      alloc i32 temp_43_42 
                    #      alloc ptr->i32 temp_44_42 
                    #      alloc i32 temp_45_42 
                    #      alloc i32 temp_46_42 
                    #      alloc i32 temp_47_42 
                    #      alloc ptr->i32 temp_48_42 
                    #      alloc i32 temp_49_39 
                    #      label L1_0: 
.L1_0:
                    #      i_35 = i32 1_0 
    li      a1, 1
                    #      jump label: while.head_38 
    j       .while.head_38
                    #      label while.head_38: 
.while.head_38:
                    #      new_var temp_10_37:i32 
                    #      temp_10_37 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a2, n
                    #occupy reg a2 with *n_0
    lw      a3,0(a2)
                    #      new_var temp_11_37:i1 
                    #      temp_11_37 = icmp i32 Sle i_35, temp_10_37 
    slt     a4,a3,a1
    xori    a4,a4,1
                    #      br i1 temp_11_37, label while.body_38, label while.exit_38 
    bnez    a4, .while.body_38
    j       .while.exit_38
                    #      label while.body_38: 
.while.body_38:
                    #      new_var temp_12_40:i32 
                    #      temp_12_40 = Sub i32 step_33, i_35 
    sub     a2,a0,a1
                    #      new_var temp_13_40:i32 
                    #      temp_13_40 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a5, n
                    #occupy reg a5 with *n_0
    lw      a6,0(a5)
                    #      new_var temp_14_40:i32 
                    #      temp_14_40 = Add i32 temp_13_40, temp_12_40 
    add     a7,a6,a2
                    #      new_var temp_15_40:Array:i32:[Some(100_0)] 
                    #      temp_15_40 = load *line2_0:ptr->i32 
                    #   load label line2 as ptr to reg
    la      s1, line2
                    #occupy reg s1 with *line2_0
    lw      s2,0(s1)
                    #      new_var temp_16_40:ptr->i32 
                    #      new_var temp_17_40:i32 
                    #      temp_16_40 = getelementptr temp_15_40:Array:i32:[Some(100_0)] [Some(temp_14_40)] 
    li      s3, 0
    li      s4, 1
    add     s3,s3,s2
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_17_40 = load temp_16_40:ptr->i32 
    lw      s5,0(s3)
                    #      new_var temp_18_40:i1 
                    #      temp_18_40 = icmp i1 Ne temp_17_40, 0_0 
    li      s6, 0
    xor     s7,s5,s6
    snez    s7, s7
                    #      new_var temp_19_40:i1 
                    #      temp_19_40 = xor i1 temp_18_40, true 
    seqz    s8, s7
                    #      new_var temp_20_40:i32 
                    #      temp_20_40 = Add i32 step_33, i_35 
    add     s9,a0,a1
                    #      new_var temp_21_40:Array:i32:[Some(50_0)] 
                    #      temp_21_40 = load *line1_0:ptr->i32 
                    #   load label line1 as ptr to reg
    la      s10, line1
                    #occupy reg s10 with *line1_0
    lw      s11,0(s10)
                    #      new_var temp_22_40:ptr->i32 
                    #      new_var temp_23_40:i32 
                    #      temp_22_40 = getelementptr temp_21_40:Array:i32:[Some(50_0)] [Some(temp_20_40)] 
    li      a5, 0
                    #found literal reg Some(s4) already exist with 1_0
    add     a5,a5,s11
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_23_40 = load temp_22_40:ptr->i32 
    lw      s1,0(a5)
                    #      new_var temp_24_40:i1 
                    #      temp_24_40 = icmp i32 Eq temp_23_40, 0_0 
                    #found literal reg Some(s6) already exist with 0_0
    xor     s4,s1,s6
    seqz    s4, s4
                    #      new_var temp_25_40:i1 
                    #      temp_25_40 = And i1 temp_24_40, temp_19_40 
    and     s6,s4,s8
                    #      new_var temp_26_40:Array:i32:[Some(50_0)] 
                    #      temp_26_40 = load *row_0:ptr->i32 
                    #   load label row as ptr to reg
    la      s10, row
                    #occupy reg s10 with *row_0
    sw      a0,1012(sp)
    lw      a0,0(s10)
                    #      new_var temp_27_40:ptr->i32 
                    #      new_var temp_28_40:i32 
                    #      temp_27_40 = getelementptr temp_26_40:Array:i32:[Some(50_0)] [Some(i_35)] 
    li      s10, 0
    sw      a0,340(sp)
    li      a0, 1
    sw      a2,996(sp)
    mul     a2,a0,a1
    add     s10,s10,a2
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_28_40 = load temp_27_40:ptr->i32 
    lw      a0,0(s10)
                    #      new_var temp_29_40:i1 
                    #      temp_29_40 = icmp i32 Ne temp_28_40, 1_0 
    sw      a1,1008(sp)
    li      a1, 1
    sw      a2,340(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      new_var temp_30_40:i1 
                    #      temp_30_40 = And i1 temp_29_40, temp_25_40 
    and     a1,a2,s6
                    #      br i1 temp_30_40, label branch_true_41, label branch_false_41 
    bnez    a1, .branch_true_41
    j       .branch_false_41
                    #      label branch_true_41: 
.branch_true_41:
                    #      new_var temp_31_42:ptr->i32 
                    #      temp_31_42 = getelementptr ans_0:Array:i32:[Some(50_0)] [Some(step_33)] 
    sw      a0,132(sp)
    li      a0, 0
    sb      a1,130(sp)
    li      a1, 1
    sb      a2,131(sp)
    sw      a3,1004(sp)
    mul     a3,a1,a2
                    #occupy reg a3 with ans_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      store i_35:i32 temp_31_42:ptr->i32 
    sd      a1,0(a0)
                    #      mu ans_0:152 
                    #      ans_0 = chi ans_0:152 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_32_44:i32 
                    #      temp_32_44 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a3, n
                    #occupy reg a3 with *n_0
    sd      a0,120(sp)
    lw      a0,0(a3)
                    #      new_var temp_33_44:i1 
                    #      temp_33_44 = icmp i32 Eq step_33, temp_32_44 
    xor     a3,a2,a0
    seqz    a3, a3
                    #      br i1 temp_33_44, label branch_true_45, label branch_false_45 
    bnez    a3, .branch_true_45
    j       .branch_false_45
                    #      label branch_true_45: 
.branch_true_45:
                    #       Call void printans_0() 
                    #saved register dumping to mem
    sw      s1,348(sp)
    sw      s2,984(sp)
    sd      s3,576(sp)
    sb      s4,347(sp)
    sw      s5,572(sp)
    sb      s6,346(sp)
    sb      s7,571(sp)
    sb      s8,570(sp)
    sw      s9,564(sp)
    sd      s10,136(sp)
    sw      s11,560(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    printans
                    #      jump label: branch_false_45 
    lw      s5,572(sp)
    lb      s8,570(sp)
    lb      s7,571(sp)
    lw      s11,560(sp)
    lw      s2,984(sp)
    lb      s4,347(sp)
    ld      s3,576(sp)
    lb      s6,346(sp)
    lw      s1,348(sp)
    ld      s10,136(sp)
    lw      s9,564(sp)
    j       .branch_false_45
                    #      label branch_false_45: 
.branch_false_45:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_34_42:ptr->i32 
                    #      temp_34_42 = getelementptr row_0:Array:i32:[Some(50_0)] [Some(i_35)] 
    sw      a0,116(sp)
    li      a0, 0
    sw      a1,1008(sp)
    li      a1, 1
    sw      a2,1012(sp)
    sb      a3,115(sp)
    mul     a3,a1,a2
                    #occupy reg a3 with row_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      store 1_0:i32 temp_34_42:ptr->i32 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a1,0(a0)
                    #      mu row_0:168 
                    #      row_0 = chi row_0:168 
                    #      new_var temp_35_42:i32 
                    #      temp_35_42 = Add i32 step_33, i_35 
    add     a3,a1,a2
                    #      new_var temp_36_42:ptr->i32 
                    #      temp_36_42 = getelementptr line1_0:Array:i32:[Some(50_0)] [Some(temp_35_42)] 
    sd      a0,104(sp)
    li      a0, 0
    sw      a1,1012(sp)
    li      a1, 1
    sw      a2,1008(sp)
    mul     a2,a1,a3
                    #occupy reg a2 with line1_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
                    #      store 1_0:i32 temp_36_42:ptr->i32 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a1,0(a0)
                    #      mu line1_0:177 
                    #      line1_0 = chi line1_0:177 
                    #      new_var temp_37_42:i32 
                    #      temp_37_42 = Sub i32 step_33, i_35 
    sd      a0,88(sp)
    sub     a0,a1,a2
                    #      new_var temp_38_42:i32 
                    #      temp_38_42 = load *n_0:ptr->i32 
    sw      a0,84(sp)
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    sw      a1,1012(sp)
    lw      a1,0(a0)
                    #      new_var temp_39_42:i32 
                    #      temp_39_42 = Add i32 temp_38_42, temp_37_42 
    sw      a2,1008(sp)
    add     a2,a1,a0
                    #      new_var temp_40_42:ptr->i32 
                    #      temp_40_42 = getelementptr line2_0:Array:i32:[Some(100_0)] [Some(temp_39_42)] 
    sw      a0,84(sp)
    li      a0, 0
    sw      a1,80(sp)
    li      a1, 1
    sw      a3,100(sp)
    mul     a3,a1,a2
                    #occupy reg a3 with line2_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      store 1_0:i32 temp_40_42:ptr->i32 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a1,0(a0)
                    #      mu line2_0:192 
                    #      line2_0 = chi line2_0:192 
                    #      new_var temp_41_42:i32 
                    #      temp_41_42 = Add i32 step_33, 1_0 
    li      a3, 1
    sd      a0,64(sp)
    add     a0,a1,a3
                    #       Call void f_0(temp_41_42) 
                    #saved register dumping to mem
    sw      s1,348(sp)
    sw      s2,984(sp)
    sd      s3,576(sp)
    sb      s4,347(sp)
    sw      s5,572(sp)
    sb      s6,346(sp)
    sb      s7,571(sp)
    sb      s8,570(sp)
    sw      s9,564(sp)
    sd      s10,136(sp)
    sw      s11,560(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,60(sp)
    lw      a0,60(sp)
                    #arg load ended
    call    f
                    #      new_var temp_42_42:ptr->i32 
                    #      temp_42_42 = getelementptr row_0:Array:i32:[Some(50_0)] [Some(i_35)] 
    li      a0, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s2,a3,s1
                    #occupy reg s2 with row_0
    add     a0,a0,s2
    slli a0,a0,2
    add     a0,a0,a0
                    #      store 0_0:i32 temp_42_42:ptr->i32 
    li      s3, 0
    sd      s3,0(a0)
                    #      mu row_0:202 
                    #      row_0 = chi row_0:202 
                    #      new_var temp_43_42:i32 
                    #      temp_43_42 = Add i32 step_33, i_35 
    add     s4,a1,s1
                    #      new_var temp_44_42:ptr->i32 
                    #      temp_44_42 = getelementptr line1_0:Array:i32:[Some(50_0)] [Some(temp_43_42)] 
    li      s5, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s6,a3,s4
                    #occupy reg s6 with line1_0
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,s5
                    #      store 0_0:i32 temp_44_42:ptr->i32 
                    #found literal reg Some(s3) already exist with 0_0
    sd      s3,0(s5)
                    #      mu line1_0:211 
                    #      line1_0 = chi line1_0:211 
                    #      new_var temp_45_42:i32 
                    #      temp_45_42 = Sub i32 step_33, i_35 
    sub     s7,a1,s1
                    #      new_var temp_46_42:i32 
                    #      temp_46_42 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      s8, n
                    #occupy reg s8 with *n_0
    lw      s9,0(s8)
                    #      new_var temp_47_42:i32 
                    #      temp_47_42 = Add i32 temp_46_42, temp_45_42 
    add     s10,s9,s7
                    #      new_var temp_48_42:ptr->i32 
                    #      temp_48_42 = getelementptr line2_0:Array:i32:[Some(100_0)] [Some(temp_47_42)] 
    li      s11, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s2,a3,s10
                    #occupy reg s2 with line2_0
    add     s11,s11,s2
    slli s11,s11,2
    add     s11,s11,s11
                    #      store 0_0:i32 temp_48_42:ptr->i32 
                    #found literal reg Some(s3) already exist with 0_0
    sd      s3,0(s11)
                    #      mu line2_0:226 
                    #      line2_0 = chi line2_0:226 
                    #      jump label: branch_false_41 
    sd      s5,32(sp)
    lw      s5,572(sp)
    lb      s8,570(sp)
    sw      a1,1012(sp)
    lb      a1,130(sp)
    sw      a2,76(sp)
    lb      a2,131(sp)
    sw      s7,28(sp)
    lb      s7,571(sp)
    sd      s11,8(sp)
    lw      s11,560(sp)
    lw      s2,984(sp)
    sw      s4,44(sp)
    lb      s4,347(sp)
    ld      s3,576(sp)
    lw      a3,1004(sp)
    lb      s6,346(sp)
    sd      a0,48(sp)
    lw      a0,132(sp)
    sw      s1,1008(sp)
    lw      s1,348(sp)
    sw      s10,20(sp)
    ld      s10,136(sp)
    sw      s9,24(sp)
    lw      s9,564(sp)
    j       .branch_false_41
                    #      label branch_false_41: 
.branch_false_41:
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_49_39:i32 
                    #      temp_49_39 = Add i32 i_35, 1_0 
    sw      a0,132(sp)
    sb      a1,130(sp)
    li      a1, 1
    sb      a2,131(sp)
    add     a2,a0,a1
                    #      i_35 = i32 temp_49_39 
    mv      a0, a2
                    #      jump label: while.head_38 
    sw      s5,572(sp)
    sw      a7,988(sp)
    sb      s8,570(sp)
    mv      a1, a0
    sw      a2,4(sp)
    sb      s7,571(sp)
    sw      s11,560(sp)
    sd      a5,352(sp)
    sw      s2,984(sp)
    sb      s4,347(sp)
    sw      a6,992(sp)
    sd      s3,576(sp)
    sw      a3,1004(sp)
    sb      s6,346(sp)
    sw      a0,1008(sp)
    lw      a0,1012(sp)
    sb      a4,1003(sp)
    sw      s1,348(sp)
    sd      s10,136(sp)
    sw      s9,564(sp)
    j       .while.head_38
                    #      label while.exit_38: 
.while.exit_38:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_50:4|N:4|temp_51:1|none:3|temp_52:4|temp_53:4|temp_54:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 temp_50_56 
                    #      alloc i32 N_56 
                    #      alloc i1 temp_51_58 
                    #      alloc i32 temp_52_60 
                    #      alloc i32 temp_53_60 
                    #      alloc i32 temp_54_56 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_50_56:i32 
                    #      temp_50_56 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,20(sp)
                    #      N_56 = i32 temp_50_56 
    mv      a1, a0
                    #      jump label: while.head_59 
    j       .while.head_59
                    #      label while.head_59: 
.while.head_59:
                    #      new_var temp_51_58:i1 
                    #      temp_51_58 = icmp i32 Sgt N_56, 0_0 
    li      a2, 0
    slt     a3,a2,a1
                    #      br i1 temp_51_58, label while.body_59, label while.exit_59 
    bnez    a3, .while.body_59
    j       .while.exit_59
                    #      label while.body_59: 
.while.body_59:
                    #      new_var temp_52_60:i32 
                    #      temp_52_60 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,20(sp)
    sw      a0,8(sp)
                    #      store temp_52_60:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a2, n
                    #occupy reg a2 with *n_0
    sd      a0,0(a2)
                    #       Call void f_0(1_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,8(sp)
    li      a0, 1
                    #arg load ended
    call    f
                    #      new_var temp_53_60:i32 
                    #      temp_53_60 = Sub i32 N_56, 1_0 
    li      a0, 1
    sub     a4,a1,a0
                    #      N_56 = i32 temp_53_60 
    mv      a1, a4
                    #      jump label: while.head_59 
    sw      a4,4(sp)
    lw      a0,20(sp)
    sb      a3,15(sp)
    j       .while.head_59
                    #      label while.exit_59: 
.while.exit_59:
                    #      new_var temp_54_56:i32 
                    #      temp_54_56 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a2, sum
                    #occupy reg a2 with *sum_0
    lw      a4,0(a2)
                    #      ret temp_54_56 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a4,0(sp)
    sw      a0,20(sp)
    addi    sp,sp,40
    ret
.section        .data
    .align 4
    .globl line2
                    #      global Array:i32:[Some(100_0)] line2_0 
    .type line2,@object
line2:
    .zero 400
    .align 4
    .globl line1
                    #      global Array:i32:[Some(50_0)] line1_0 
    .type line1,@object
line1:
    .zero 200
    .align 4
    .globl row
                    #      global Array:i32:[Some(50_0)] row_0 
    .type row,@object
row:
    .zero 200
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl sum
                    #      global i32 sum_0 
    .type sum,@object
sum:
    .word 0
    .align 4
    .globl ans
                    #      global Array:i32:[Some(50_0)] ans_0 
    .type ans,@object
ans:
    .zero 200
