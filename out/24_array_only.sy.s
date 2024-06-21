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
                    #      Define inc_impl_0 [x_17, rec_17] -> inc_impl_ret_0 
    .globl inc_impl
    .type inc_impl,@function
inc_impl:
                    #mem layout:|ra_inc_impl:8|s0_inc_impl:8|x:8|rec:4|temp_0:1|none:3|temp_1:8|temp_2:8|temp_3:4|temp_4:4|temp_5:8|temp_6:8|temp_7:4|temp_8:4|temp_9:4|none:4
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,72(sp)
    addi    s0,sp,88
                    #      new_var x_17:ptr->i32 
                    #      alloc i1 temp_0_20 
                    #      alloc ptr->i32 temp_1_22 
                    #      alloc ptr->i32 temp_2_22 
                    #      alloc i32 temp_3_22 
                    #      alloc i32 temp_4_22 
                    #      alloc ptr->i32 temp_5_24 
                    #      alloc ptr->i32 temp_6_24 
                    #      alloc i32 temp_7_24 
                    #      alloc i32 temp_8_24 
                    #      alloc i32 temp_9_24 
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_0_20:i1 
                    #      temp_0_20 = icmp i32 Eq rec_17, 0_0 
    li      a2, 0
    xor     a3,a1,a2
    seqz    a3, a3
                    #      br i1 temp_0_20, label branch_true_21, label branch_false_21 
    bnez    a3, .branch_true_21
    j       .branch_false_21
                    #      label branch_true_21: 
.branch_true_21:
                    #      new_var temp_1_22:ptr->i32 
                    #      temp_1_22 = getelementptr x_17:ptr->i32 [Some(0_0)] 
    li      a2, 0
    li      a4, 1
    li      a5, 0
    add     a2,a2,a0
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      new_var temp_2_22:ptr->i32 
                    #      new_var temp_3_22:i32 
                    #      temp_2_22 = getelementptr x_17:ptr->i32 [Some(0_0)] 
    li      a6, 0
                    #found literal reg Some(a4) already exist with 1_0
                    #found literal reg Some(a5) already exist with 0_0
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_3_22 = load temp_2_22:ptr->i32 
    lw      a7,0(a6)
                    #      new_var temp_4_22:i32 
                    #      temp_4_22 = Add i32 temp_3_22, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     s1,a7,a4
                    #      store temp_4_22:i32 temp_1_22:ptr->i32 
    sd      s1,0(a2)
                    #      mu x_17:54 
                    #      x_17 = chi x_17:54 
                    #      jump label: L10_0 
    j       .L10_0
                    #      label branch_false_21: 
.branch_false_21:
                    #      new_var temp_5_24:ptr->i32 
                    #      temp_5_24 = getelementptr x_17:ptr->i32 [Some(0_0)] 
    li      a2, 0
    li      a4, 1
    li      a5, 0
    add     a2,a2,a0
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      new_var temp_6_24:ptr->i32 
                    #      new_var temp_7_24:i32 
                    #      temp_6_24 = getelementptr x_17:ptr->i32 [Some(0_0)] 
    li      a6, 0
                    #found literal reg Some(a4) already exist with 1_0
                    #found literal reg Some(a5) already exist with 0_0
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_7_24 = load temp_6_24:ptr->i32 
    lw      a7,0(a6)
                    #      new_var temp_8_24:i32 
                    #      temp_8_24 = Mul i32 temp_7_24, 2_0 
    li      s1, 2
    mul     s2,a7,s1
                    #      store temp_8_24:i32 temp_5_24:ptr->i32 
    sd      s2,0(a2)
                    #      mu x_17:69 
                    #      x_17 = chi x_17:69 
                    #      new_var temp_9_24:i32 
                    #      temp_9_24 = Sub i32 rec_17, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    sub     s3,a1,a4
                    #       Call void inc_impl_0(x_17, temp_9_24) 
                    #saved register dumping to mem
    sw      s2,8(sp)
    sw      s3,4(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,64(sp)
    ld      a0,64(sp)
    sw      a1,60(sp)
    lw      a1,4(sp)
                    #arg load ended
    call    inc_impl
                    #      jump label: L10_0 
    sw      a7,12(sp)
    lw      a7,36(sp)
    ld      a0,64(sp)
    lw      s1,32(sp)
    sd      a6,16(sp)
    ld      a6,40(sp)
    lw      a1,60(sp)
    sd      a2,24(sp)
    ld      a2,48(sp)
    j       .L10_0
                    #      label L10_0: 
.L10_0:
                    #      Define inc_0 [x_27] -> inc_ret_0 
    .globl inc
    .type inc,@function
inc:
                    #mem layout:|ra_inc:8|s0_inc:8|x:8|temp_10:4|none:4|temp_11:8|temp_12:4|none:4
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      new_var x_27:ptr->i32 
                    #      alloc Array:i32:[Some(1_0)] temp_10_29 
                    #      alloc ptr->i32 temp_11_29 
                    #      alloc i32 temp_12_29 
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_10_29:Array:i32:[Some(1_0)] 
                    #      temp_10_29 = load *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a1, k
                    #occupy reg a1 with *k_0
    lw      a2,0(a1)
                    #      new_var temp_11_29:ptr->i32 
                    #      new_var temp_12_29:i32 
                    #      temp_11_29 = getelementptr temp_10_29:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      a3, 0
    li      a4, 1
    li      a5, 0
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_12_29 = load temp_11_29:ptr->i32 
    lw      a6,0(a3)
                    #       Call void inc_impl_0(x_27, temp_12_29) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sd      a0,24(sp)
    ld      a0,24(sp)
    mv      a1, a6
                    #arg load ended
    call    inc_impl
                    #      Define add_impl_0 [x_31, y_31, rec_31] -> add_impl_ret_0 
    .globl add_impl
    .type add_impl,@function
add_impl:
                    #mem layout:|ra_add_impl:8|s0_add_impl:8|x:8|y:8|rec:4|temp_13:1|none:3|temp_14:8|temp_15:8|temp_16:4|none:4|temp_17:8|temp_18:4|temp_19:4|temp_20:8|temp_21:8|temp_22:4|temp_23:4|temp_24:4|none:4
    addi    sp,sp,-112
    sd      ra,104(sp)
    sd      s0,96(sp)
    addi    s0,sp,112
                    #      new_var x_31:ptr->i32 
                    #      new_var y_31:ptr->i32 
                    #      alloc i1 temp_13_34 
                    #      alloc ptr->i32 temp_14_36 
                    #      alloc ptr->i32 temp_15_36 
                    #      alloc i32 temp_16_36 
                    #      alloc ptr->i32 temp_17_36 
                    #      alloc i32 temp_18_36 
                    #      alloc i32 temp_19_36 
                    #      alloc ptr->i32 temp_20_38 
                    #      alloc ptr->i32 temp_21_38 
                    #      alloc i32 temp_22_38 
                    #      alloc i32 temp_23_38 
                    #      alloc i32 temp_24_38 
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_13_34:i1 
                    #      temp_13_34 = icmp i32 Eq rec_31, 0_0 
    li      a3, 0
    xor     a4,a2,a3
    seqz    a4, a4
                    #      br i1 temp_13_34, label branch_true_35, label branch_false_35 
    bnez    a4, .branch_true_35
    j       .branch_false_35
                    #      label branch_true_35: 
.branch_true_35:
                    #      new_var temp_14_36:ptr->i32 
                    #      temp_14_36 = getelementptr x_31:ptr->i32 [Some(0_0)] 
    li      a3, 0
    li      a5, 1
    li      a6, 0
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
                    #      new_var temp_15_36:ptr->i32 
                    #      new_var temp_16_36:i32 
                    #      temp_15_36 = getelementptr y_31:ptr->i32 [Some(0_0)] 
    li      a7, 0
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(a6) already exist with 0_0
    add     a7,a7,a1
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_16_36 = load temp_15_36:ptr->i32 
    lw      s1,0(a7)
                    #      new_var temp_17_36:ptr->i32 
                    #      new_var temp_18_36:i32 
                    #      temp_17_36 = getelementptr x_31:ptr->i32 [Some(0_0)] 
    li      s2, 0
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(a6) already exist with 0_0
    add     s2,s2,a0
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_18_36 = load temp_17_36:ptr->i32 
    lw      s3,0(s2)
                    #      new_var temp_19_36:i32 
                    #      temp_19_36 = Add i32 temp_18_36, temp_16_36 
    add     s4,s3,s1
                    #      store temp_19_36:i32 temp_14_36:ptr->i32 
    sd      s4,0(a3)
                    #      mu x_31:110 
                    #      x_31 = chi x_31:110 
                    #      jump label: L7_0 
    j       .L7_0
                    #      label branch_false_35: 
.branch_false_35:
                    #      new_var temp_20_38:ptr->i32 
                    #      temp_20_38 = getelementptr x_31:ptr->i32 [Some(0_0)] 
    li      a3, 0
    li      a5, 1
    li      a6, 0
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
                    #      new_var temp_21_38:ptr->i32 
                    #      new_var temp_22_38:i32 
                    #      temp_21_38 = getelementptr x_31:ptr->i32 [Some(0_0)] 
    li      a7, 0
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(a6) already exist with 0_0
    add     a7,a7,a0
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_22_38 = load temp_21_38:ptr->i32 
    lw      s1,0(a7)
                    #      new_var temp_23_38:i32 
                    #      temp_23_38 = Mul i32 temp_22_38, 2_0 
    li      s2, 2
    mul     s3,s1,s2
                    #      store temp_23_38:i32 temp_20_38:ptr->i32 
    sd      s3,0(a3)
                    #      mu x_31:125 
                    #      x_31 = chi x_31:125 
                    #      new_var temp_24_38:i32 
                    #      temp_24_38 = Sub i32 rec_31, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    sub     s4,a2,a5
                    #       Call void add_impl_0(x_31, y_31, temp_24_38) 
                    #saved register dumping to mem
    sw      s1,12(sp)
    sw      s3,8(sp)
    sw      s4,4(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,88(sp)
    ld      a0,88(sp)
    sd      a1,80(sp)
    ld      a1,80(sp)
    sw      a2,76(sp)
    lw      a2,4(sp)
                    #arg load ended
    call    add_impl
                    #      jump label: L7_0 
    sd      a7,16(sp)
    ld      a7,56(sp)
    sd      a3,24(sp)
    ld      a3,64(sp)
    ld      a0,88(sp)
    lw      s1,52(sp)
    ld      a1,80(sp)
    ld      s2,40(sp)
    lw      s4,32(sp)
    lw      s3,36(sp)
    lw      a2,76(sp)
    j       .L7_0
                    #      label L7_0: 
.L7_0:
                    #      Define add_0 [x_41, y_41] -> add_ret_0 
    .globl add
    .type add,@function
add:
                    #mem layout:|ra_add:8|s0_add:8|x:8|y:8|temp_25:4|none:4|temp_26:8|temp_27:4|none:4
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      new_var x_41:ptr->i32 
                    #      new_var y_41:ptr->i32 
                    #      alloc Array:i32:[Some(1_0)] temp_25_43 
                    #      alloc ptr->i32 temp_26_43 
                    #      alloc i32 temp_27_43 
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_25_43:Array:i32:[Some(1_0)] 
                    #      temp_25_43 = load *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a2, k
                    #occupy reg a2 with *k_0
    lw      a3,0(a2)
                    #      new_var temp_26_43:ptr->i32 
                    #      new_var temp_27_43:i32 
                    #      temp_26_43 = getelementptr temp_25_43:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      a4, 0
    li      a5, 1
    li      a6, 0
    add     a4,a4,a3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_27_43 = load temp_26_43:ptr->i32 
    lw      a7,0(a4)
                    #       Call void add_impl_0(x_41, y_41, temp_27_43) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sd      a0,32(sp)
    ld      a0,32(sp)
    sd      a1,24(sp)
    ld      a1,24(sp)
    mv      a2, a7
                    #arg load ended
    call    add_impl
                    #      Define sub_impl_0 [x_45, y_45, rec_45] -> sub_impl_ret_0 
    .globl sub_impl
    .type sub_impl,@function
sub_impl:
                    #mem layout:|ra_sub_impl:8|s0_sub_impl:8|x:8|y:8|rec:4|temp_28:1|none:3|temp_29:8|temp_30:8|temp_31:4|none:4|temp_32:8|temp_33:4|temp_34:4|temp_35:8|temp_36:8|temp_37:4|temp_38:4|temp_39:4|none:4
    addi    sp,sp,-112
    sd      ra,104(sp)
    sd      s0,96(sp)
    addi    s0,sp,112
                    #      new_var x_45:ptr->i32 
                    #      new_var y_45:ptr->i32 
                    #      alloc i1 temp_28_48 
                    #      alloc ptr->i32 temp_29_50 
                    #      alloc ptr->i32 temp_30_50 
                    #      alloc i32 temp_31_50 
                    #      alloc ptr->i32 temp_32_50 
                    #      alloc i32 temp_33_50 
                    #      alloc i32 temp_34_50 
                    #      alloc ptr->i32 temp_35_52 
                    #      alloc ptr->i32 temp_36_52 
                    #      alloc i32 temp_37_52 
                    #      alloc i32 temp_38_52 
                    #      alloc i32 temp_39_52 
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_28_48:i1 
                    #      temp_28_48 = icmp i32 Eq rec_45, 0_0 
    li      a3, 0
    xor     a4,a2,a3
    seqz    a4, a4
                    #      br i1 temp_28_48, label branch_true_49, label branch_false_49 
    bnez    a4, .branch_true_49
    j       .branch_false_49
                    #      label branch_true_49: 
.branch_true_49:
                    #      new_var temp_29_50:ptr->i32 
                    #      temp_29_50 = getelementptr x_45:ptr->i32 [Some(0_0)] 
    li      a3, 0
    li      a5, 1
    li      a6, 0
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
                    #      new_var temp_30_50:ptr->i32 
                    #      new_var temp_31_50:i32 
                    #      temp_30_50 = getelementptr y_45:ptr->i32 [Some(0_0)] 
    li      a7, 0
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(a6) already exist with 0_0
    add     a7,a7,a1
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_31_50 = load temp_30_50:ptr->i32 
    lw      s1,0(a7)
                    #      new_var temp_32_50:ptr->i32 
                    #      new_var temp_33_50:i32 
                    #      temp_32_50 = getelementptr x_45:ptr->i32 [Some(0_0)] 
    li      s2, 0
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(a6) already exist with 0_0
    add     s2,s2,a0
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_33_50 = load temp_32_50:ptr->i32 
    lw      s3,0(s2)
                    #      new_var temp_34_50:i32 
                    #      temp_34_50 = Sub i32 temp_33_50, temp_31_50 
    sub     s4,s3,s1
                    #      store temp_34_50:i32 temp_29_50:ptr->i32 
    sd      s4,0(a3)
                    #      mu x_45:166 
                    #      x_45 = chi x_45:166 
                    #      jump label: L4_0 
    j       .L4_0
                    #      label branch_false_49: 
.branch_false_49:
                    #      new_var temp_35_52:ptr->i32 
                    #      temp_35_52 = getelementptr x_45:ptr->i32 [Some(0_0)] 
    li      a3, 0
    li      a5, 1
    li      a6, 0
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
                    #      new_var temp_36_52:ptr->i32 
                    #      new_var temp_37_52:i32 
                    #      temp_36_52 = getelementptr x_45:ptr->i32 [Some(0_0)] 
    li      a7, 0
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(a6) already exist with 0_0
    add     a7,a7,a0
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_37_52 = load temp_36_52:ptr->i32 
    lw      s1,0(a7)
                    #      new_var temp_38_52:i32 
                    #      temp_38_52 = Mul i32 temp_37_52, 2_0 
    li      s2, 2
    mul     s3,s1,s2
                    #      store temp_38_52:i32 temp_35_52:ptr->i32 
    sd      s3,0(a3)
                    #      mu x_45:181 
                    #      x_45 = chi x_45:181 
                    #      new_var temp_39_52:i32 
                    #      temp_39_52 = Sub i32 rec_45, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    sub     s4,a2,a5
                    #       Call void sub_impl_0(x_45, y_45, temp_39_52) 
                    #saved register dumping to mem
    sw      s1,12(sp)
    sw      s3,8(sp)
    sw      s4,4(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,88(sp)
    ld      a0,88(sp)
    sd      a1,80(sp)
    ld      a1,80(sp)
    sw      a2,76(sp)
    lw      a2,4(sp)
                    #arg load ended
    call    sub_impl
                    #      jump label: L4_0 
    sd      a3,24(sp)
    ld      a3,64(sp)
    ld      a0,88(sp)
    sd      a7,16(sp)
    ld      a7,56(sp)
    lw      s4,32(sp)
    ld      s2,40(sp)
    lw      s1,52(sp)
    ld      a1,80(sp)
    lw      s3,36(sp)
    lw      a2,76(sp)
    j       .L4_0
                    #      label L4_0: 
.L4_0:
                    #      Define sub_0 [x_55, y_55] -> sub_ret_0 
    .globl sub
    .type sub,@function
sub:
                    #mem layout:|ra_sub:8|s0_sub:8|x:8|y:8|temp_40:4|none:4|temp_41:8|temp_42:4|none:4
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      new_var x_55:ptr->i32 
                    #      new_var y_55:ptr->i32 
                    #      alloc Array:i32:[Some(1_0)] temp_40_57 
                    #      alloc ptr->i32 temp_41_57 
                    #      alloc i32 temp_42_57 
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_40_57:Array:i32:[Some(1_0)] 
                    #      temp_40_57 = load *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a2, k
                    #occupy reg a2 with *k_0
    lw      a3,0(a2)
                    #      new_var temp_41_57:ptr->i32 
                    #      new_var temp_42_57:i32 
                    #      temp_41_57 = getelementptr temp_40_57:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      a4, 0
    li      a5, 1
    li      a6, 0
    add     a4,a4,a3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_42_57 = load temp_41_57:ptr->i32 
    lw      a7,0(a4)
                    #       Call void sub_impl_0(x_55, y_55, temp_42_57) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sd      a0,32(sp)
    ld      a0,32(sp)
    sd      a1,24(sp)
    ld      a1,24(sp)
    mv      a2, a7
                    #arg load ended
    call    sub_impl
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|j:4|y:4|temp_43:8|z:8|temp_44:8|temp_45:4|none:4|temp_46:8|temp_47:4|none:4|temp_48:8|temp_49:8|temp_50:4|none:4|temp_51:8|temp_52:4|temp_53:1|none:3|temp_54:8|temp_55:8|temp_56:4|none:4|temp_57:8|temp_58:4|temp_59:1|none:3|temp_60:4|none:4|temp_61:8|temp_62:4|none:4|temp_63:8|temp_64:4|none:4|temp_65:8|temp_66:4|none:4|temp_67:8|temp_68:4|none:4|temp_69:8|temp_70:8|temp_71:8|temp_72:8|temp_73:4|temp_74:4|temp_75:8|temp_76:8|temp_77:8|temp_78:4|temp_79:4|temp_80:8|temp_81:4|temp_82:1|none:3
    addi    sp,sp,-312
    sd      ra,304(sp)
    sd      s0,296(sp)
    addi    s0,sp,312
                    #      alloc Array:i32:[Some(1_0)] j_60 
                    #      alloc Array:i32:[Some(1_0)] y_60 
                    #      alloc ptr->i32 temp_43_60 
                    #      alloc Array:i32:[Some(1_0), Some(2_0)] z_60 
                    #      alloc ptr->i32 temp_44_60 
                    #      alloc i32 temp_45_60 
                    #      alloc ptr->i32 temp_46_60 
                    #      alloc i32 temp_47_60 
                    #      alloc ptr->i32 temp_48_60 
                    #      alloc Array:i32:[Some(2_0)] temp_49_60 
                    #      alloc i32 temp_50_60 
                    #      alloc ptr->i32 temp_51_65 
                    #      alloc i32 temp_52_65 
                    #      alloc i1 temp_53_1797 
                    #      alloc ptr->i32 temp_54_67 
                    #      alloc ptr->i32 temp_55_67 
                    #      alloc i32 temp_56_67 
                    #      alloc ptr->i32 temp_57_69 
                    #      alloc i32 temp_58_69 
                    #      alloc i1 temp_59_69 
                    #      alloc Array:i32:[Some(1_0)] temp_60_71 
                    #      alloc ptr->i32 temp_61_71 
                    #      alloc i32 temp_62_71 
                    #      alloc ptr->i32 temp_63_71 
                    #      alloc i32 temp_64_71 
                    #      alloc ptr->i32 temp_65_71 
                    #      alloc i32 temp_66_71 
                    #      alloc ptr->i32 temp_67_71 
                    #      alloc i32 temp_68_71 
                    #      alloc ptr->i32 temp_69_71 
                    #      alloc Array:i32:[Some(2_0)] temp_70_71 
                    #      alloc ptr->i32 temp_71_71 
                    #      alloc Array:i32:[Some(2_0)] temp_72_71 
                    #      alloc Array:i32:[Some(1_0)] temp_73_67 
                    #      alloc Array:i32:[Some(1_0)] temp_74_67 
                    #      alloc ptr->i32 temp_75_67 
                    #      alloc Array:i32:[Some(2_0)] temp_76_67 
                    #      alloc ptr->i32 temp_77_81 
                    #      alloc i32 temp_78_81 
                    #      alloc Array:i32:[Some(1_0)] temp_79_81 
                    #      alloc ptr->i32 temp_80_81 
                    #      alloc i32 temp_81_81 
                    #      alloc i1 temp_82_81 
                    #      label L0_0: 
.L0_0:
                    #      new_var j_60:Array:i32:[Some(1_0)] 
                    #      new_var y_60:Array:i32:[Some(1_0)] 
                    #      new_var z_60:Array:i32:[Some(1_0), Some(2_0)] 
                    #      new_var temp_43_60:ptr->i32 
                    #      temp_43_60 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0), Some(0_0)] 
    li      a0, 0
    li      a1, 2
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
                    #found literal reg Some(a2) already exist with 0_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store -1_0:i32 temp_43_60:ptr->Array:i32:[Some(2_0)] 
    li      a5, -1
    sd      a5,0(a0)
                    #      mu z_60:206 
                    #      z_60 = chi z_60:206 
                    #      new_var temp_44_60:ptr->i32 
                    #      temp_44_60 = getelementptr k_0:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      a6, 0
                    #found literal reg Some(a4) already exist with 1_0
                    #found literal reg Some(a2) already exist with 0_0
    mul     a7,a4,a2
                    #occupy reg a7 with k_0
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,a6
                    #      new_var temp_45_60:i32 
                    #      temp_45_60 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sd      a0,280(sp)
    sw      a0,260(sp)
                    #      store temp_45_60:i32 temp_44_60:ptr->i32 
    sd      a0,0(a6)
                    #      mu k_0:216 
                    #      k_0 = chi k_0:216 
                    #      new_var temp_46_60:ptr->i32 
                    #      temp_46_60 = getelementptr y_60:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      s1, 0
                    #found literal reg Some(a4) already exist with 1_0
                    #found literal reg Some(a2) already exist with 0_0
    mul     s2,a4,a2
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      new_var temp_47_60:i32 
                    #      temp_47_60 =  Call i32 getint_0() 
                    #saved register dumping to mem
    sd      s1,248(sp)
    sw      s2,288(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,260(sp)
    sw      a0,244(sp)
                    #      store temp_47_60:i32 temp_46_60:ptr->i32 
    sd      a0,0(s1)
                    #      mu y_60:225 
                    #      y_60 = chi y_60:225 
                    #      new_var temp_48_60:ptr->i32 
                    #      new_var temp_49_60:Array:i32:[Some(2_0)] 
                    #      temp_48_60 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0)] 
    li      s2, 0
                    #found literal reg Some(a1) already exist with 2_0
                    #found literal reg Some(a2) already exist with 0_0
    add     s2,s2,a3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_49_60 = load temp_48_60:ptr->i32 
    lw      s3,0(s2)
                    #      new_var temp_50_60:i32 
                    #      temp_50_60 =  Call i32 getarray_0(temp_49_60) 
                    #saved register dumping to mem
    sd      s1,248(sp)
    sd      s2,232(sp)
    sw      s3,228(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,244(sp)
    lw      a0,228(sp)
                    #arg load ended
    call    getarray
    sw      a0,220(sp)
                    #      jump label: while.head_66 
    j       .while.head_66
                    #      label while.head_66: 
.while.head_66:
                    #      new_var temp_51_65:ptr->i32 
                    #      new_var temp_52_65:i32 
                    #      temp_51_65 = getelementptr y_60:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      a1, 0
    li      a2, 1
    li      a4, 0
    mul     a5,a2,a4
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_52_65 = load temp_51_65:ptr->i32 
    lw      a7,0(a1)
                    #      new_var temp_53_1797:i1 
                    #      temp_53_1797 = icmp i32 Ne temp_52_65, 0_0 
                    #found literal reg Some(a4) already exist with 0_0
    xor     s1,a7,a4
    snez    s1, s1
                    #      br i1 temp_53_1797, label while.body_66, label while.exit_66 
    bnez    s1, .while.body_66
    j       .while.exit_66
                    #      label while.body_66: 
.while.body_66:
                    #      new_var temp_54_67:ptr->i32 
                    #      temp_54_67 = getelementptr j_60:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      a2, 0
    li      a4, 1
    li      s2, 0
    mul     s3,a4,s2
    add     a2,a2,s3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      new_var temp_55_67:ptr->i32 
                    #      new_var temp_56_67:i32 
                    #      temp_55_67 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0), Some(0_0)] 
    li      s4, 0
    li      s5, 2
                    #found literal reg Some(s2) already exist with 0_0
    add     s4,s4,a3
                    #found literal reg Some(a4) already exist with 1_0
                    #found literal reg Some(s2) already exist with 0_0
    add     s4,s4,a3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_56_67 = load temp_55_67:ptr->i32 
    lw      s6,0(s4)
                    #      store temp_56_67:i32 temp_54_67:ptr->i32 
    sd      s6,0(a2)
                    #      mu j_60:260 
                    #      j_60 = chi j_60:260 
                    #      jump label: while.head_70 
    j       .while.head_70
                    #      label while.head_70: 
.while.head_70:
                    #      new_var temp_57_69:ptr->i32 
                    #      new_var temp_58_69:i32 
                    #      temp_57_69 = getelementptr j_60:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      a4, 0
    li      s2, 1
    li      s5, 0
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_58_69 = load temp_57_69:ptr->i32 
    lw      s7,0(a4)
                    #      new_var temp_59_69:i1 
                    #      temp_59_69 = icmp i32 Slt temp_58_69, 5_0 
    li      s8, 5
    slt     s9,s7,s8
                    #      br i1 temp_59_69, label while.body_70, label while.exit_70 
    bnez    s9, .while.body_70
    j       .while.exit_70
                    #      label while.body_70: 
.while.body_70:
                    #      new_var temp_60_71:Array:i32:[Some(1_0)] 
                    #      temp_60_71 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s2, i
                    #occupy reg s2 with *i_0
    lw      s5,0(s2)
                    #      new_var temp_61_71:ptr->i32 
                    #      new_var temp_62_71:i32 
                    #      temp_61_71 = getelementptr temp_60_71:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      s8, 0
    li      s10, 1
    li      s11, 0
    add     s8,s8,s5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_62_71 = load temp_61_71:ptr->i32 
    lw      s2,0(s8)
                    #       Call void putint_0(temp_62_71) 
                    #saved register dumping to mem
    sb      s1,203(sp)
    sw      s2,140(sp)
    sw      s3,292(sp)
    sd      s4,184(sp)
    sw      s5,156(sp)
    sw      s6,180(sp)
    sw      s7,164(sp)
    sd      s8,144(sp)
    sb      s9,163(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,220(sp)
    lw      a0,140(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_63_71:ptr->i32 
                    #      new_var temp_64_71:i32 
                    #      temp_63_71 = getelementptr j_60:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      a0, 0
    li      s1, 1
    li      s2, 0
    mul     s3,s1,s2
    add     a0,a0,s3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_64_71 = load temp_63_71:ptr->i32 
    lw      s4,0(a0)
                    #       Call void putint_0(temp_64_71) 
                    #saved register dumping to mem
    sw      s3,292(sp)
    sw      s4,124(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,128(sp)
    lw      a0,124(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_65_71:ptr->i32 
                    #      new_var temp_66_71:i32 
                    #      temp_65_71 = getelementptr y_60:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      a0, 0
    li      s1, 1
    li      s2, 0
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_66_71 = load temp_65_71:ptr->i32 
    lw      s3,0(a0)
                    #       Call void putint_0(temp_66_71) 
                    #saved register dumping to mem
    sw      s3,108(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,112(sp)
    lw      a0,108(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_67_71:ptr->i32 
                    #      new_var temp_68_71:i32 
                    #      temp_67_71 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0), Some(0_0)] 
    li      a0, 0
    li      s1, 2
    li      s2, 0
    add     a0,a0,a3
    li      s3, 1
                    #found literal reg Some(s2) already exist with 0_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_68_71 = load temp_67_71:ptr->i32 
    lw      s4,0(a0)
                    #       Call void putint_0(temp_68_71) 
                    #saved register dumping to mem
    sw      s4,92(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,96(sp)
    lw      a0,92(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_69_71:ptr->i32 
                    #      new_var temp_70_71:Array:i32:[Some(2_0)] 
                    #      temp_69_71 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0)] 
    li      a0, 0
    li      s1, 2
    li      s2, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_70_71 = load temp_69_71:ptr->i32 
    lw      s3,0(a0)
                    #       Call void add_0(temp_70_71, y_60) 
                    #saved register dumping to mem
    sw      s3,76(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,80(sp)
    lw      a0,76(sp)
    sd      a1,208(sp)
    mv      a1, a5
                    #arg load ended
    call    add
                    #       Call void add_0(j_60, y_60) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,292(sp)
    mv      a1, a5
                    #arg load ended
    call    add
                    #      new_var temp_71_71:ptr->i32 
                    #      new_var temp_72_71:Array:i32:[Some(2_0)] 
                    #      temp_71_71 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0)] 
    li      a0, 0
    li      a1, 2
    li      s1, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_72_71 = load temp_71_71:ptr->i32 
    lw      s2,0(a0)
                    #       Call void sub_0(temp_72_71, y_60) 
                    #saved register dumping to mem
    sw      s2,60(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,64(sp)
    lw      a0,60(sp)
    mv      a1, a5
                    #arg load ended
    call    sub
                    #      jump label: while.head_70 
    lw      s6,180(sp)
    lb      s1,203(sp)
    ld      s4,184(sp)
    lw      s3,292(sp)
    lw      a0,220(sp)
    sd      a4,168(sp)
    ld      a1,208(sp)
    j       .while.head_70
                    #      label while.exit_70: 
.while.exit_70:
                    #      new_var temp_73_67:Array:i32:[Some(1_0)] 
                    #      temp_73_67 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s2, i
                    #occupy reg s2 with *i_0
    lw      s5,0(s2)
                    #       Call void inc_0(temp_73_67) 
                    #saved register dumping to mem
    sb      s1,203(sp)
    sw      s3,292(sp)
    sd      s4,184(sp)
    sw      s5,52(sp)
    sw      s6,180(sp)
    sw      s7,164(sp)
    sb      s9,163(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,220(sp)
    lw      a0,52(sp)
                    #arg load ended
    call    inc
                    #      new_var temp_74_67:Array:i32:[Some(1_0)] 
                    #      temp_74_67 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a0, i
                    #occupy reg a0 with *i_0
    lw      s1,0(a0)
                    #      new_var temp_75_67:ptr->i32 
                    #      new_var temp_76_67:Array:i32:[Some(2_0)] 
                    #      temp_75_67 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0)] 
    li      s2, 0
    li      s3, 2
    li      s4, 0
    add     s2,s2,a3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_76_67 = load temp_75_67:ptr->i32 
    lw      s5,0(s2)
                    #       Call void add_0(temp_74_67, temp_76_67) 
                    #saved register dumping to mem
    sw      s1,48(sp)
    sd      s2,40(sp)
    sw      s5,36(sp)
                    #saved register dumped to mem
                    #arg load start
    lw      a0,48(sp)
    sd      a1,208(sp)
    lw      a1,36(sp)
                    #arg load ended
    call    add
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_77_81:ptr->i32 
                    #      new_var temp_78_81:i32 
                    #      temp_77_81 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0), Some(1_0)] 
    li      a0, 0
    li      a1, 2
    li      s1, 0
    add     a0,a0,a3
    li      s2, 1
    li      s3, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_78_81 = load temp_77_81:ptr->i32 
    lw      s4,0(a0)
                    #      new_var temp_79_81:Array:i32:[Some(1_0)] 
                    #      temp_79_81 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s5, i
                    #occupy reg s5 with *i_0
    lw      s6,0(s5)
                    #      new_var temp_80_81:ptr->i32 
                    #      new_var temp_81_81:i32 
                    #      temp_80_81 = getelementptr temp_79_81:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      s7, 0
                    #found literal reg Some(s2) already exist with 1_0
                    #found literal reg Some(s1) already exist with 0_0
    add     s7,s7,s6
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_81_81 = load temp_80_81:ptr->i32 
    lw      s8,0(s7)
                    #      new_var temp_82_81:i1 
                    #      temp_82_81 = icmp i32 Eq temp_81_81, temp_78_81 
    xor     s9,s8,s4
    seqz    s9, s9
                    #      br i1 temp_82_81, label branch_true_82, label branch_false_82 
    bnez    s9, .branch_true_82
    j       .branch_false_82
                    #      label branch_true_82: 
.branch_true_82:
                    #      jump label: while.exit_70 
    sw      s6,16(sp)
    lw      s6,180(sp)
    lb      s1,203(sp)
    sw      s8,4(sp)
    sb      s9,3(sp)
    lb      s9,163(sp)
    sw      s4,20(sp)
    ld      s4,184(sp)
    lw      s3,292(sp)
    sd      a0,24(sp)
    lw      a0,220(sp)
    sd      s7,8(sp)
    lw      s7,164(sp)
    ld      a1,208(sp)
    j       .while.exit_70
                    #      label branch_false_82: 
.branch_false_82:
                    #      jump label: while.head_66 
    sw      s6,16(sp)
    sd      a2,192(sp)
    sw      s8,4(sp)
    sw      a7,204(sp)
    sb      s9,3(sp)
    sw      s4,20(sp)
    sw      a5,288(sp)
    sd      a0,24(sp)
    lw      a0,220(sp)
    sd      a4,168(sp)
    sd      s7,8(sp)
    j       .while.head_66
                    #      label while.exit_66: 
.while.exit_66:
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
    sb      s1,203(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,220(sp)
    li      a0, 10
                    #arg load ended
    call    putch
                    #      ret 0_0 
    ld      ra,304(sp)
    ld      s0,296(sp)
    li      a0, 0
    addi    sp,sp,312
    ret
.section        .data
    .align 4
    .globl k
                    #      global Array:i32:[Some(1_0)] k_0 
    .type k,@object
k:
    .zero 4
    .align 4
    .globl i
                    #      global Array:i32:[Some(1_0)] i_0 
    .type i,@object
i:
    .zero 4
