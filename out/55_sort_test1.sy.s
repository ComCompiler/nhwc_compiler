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
                    #      Define bubblesort_0 [arr_17] -> bubblesort_ret_0 
    .globl bubblesort
    .type bubblesort,@function
bubblesort:
                    #mem layout:|ra_bubblesort:8|s0_bubblesort:8|arr:8|i:4|j:4|temp_0:4|temp_1:4|temp_2:1|none:3|temp_3:4|temp_4:4|temp_5:4|temp_6:1|none:3|temp_7:4|temp_8:8|temp_9:4|none:4|temp_10:8|temp_11:4|temp_12:1|none:3|tmp:4|temp_13:4|temp_14:8|temp_15:4|temp_16:4|temp_17:8|temp_18:8|temp_19:4|none:4|temp_20:8|temp_21:4|temp_22:4
    addi    sp,sp,-160
    sd      ra,152(sp)
    sd      s0,144(sp)
    addi    s0,sp,160
                    #      new_var arr_17:ptr->i32 
                    #      alloc i32 i_19 
                    #      alloc i32 j_19 
                    #      alloc i32 temp_0_23 
                    #      alloc i32 temp_1_23 
                    #      alloc i1 temp_2_23 
                    #      alloc i32 temp_3_27 
                    #      alloc i32 temp_4_27 
                    #      alloc i32 temp_5_27 
                    #      alloc i1 temp_6_27 
                    #      alloc i32 temp_7_30 
                    #      alloc ptr->i32 temp_8_30 
                    #      alloc i32 temp_9_30 
                    #      alloc ptr->i32 temp_10_30 
                    #      alloc i32 temp_11_30 
                    #      alloc i1 temp_12_30 
                    #      alloc i32 tmp_32 
                    #      alloc i32 temp_13_32 
                    #      alloc ptr->i32 temp_14_32 
                    #      alloc i32 temp_15_32 
                    #      alloc i32 temp_16_32 
                    #      alloc ptr->i32 temp_17_32 
                    #      alloc ptr->i32 temp_18_32 
                    #      alloc i32 temp_19_32 
                    #      alloc ptr->i32 temp_20_32 
                    #      alloc i32 temp_21_29 
                    #      alloc i32 temp_22_25 
                    #      label L1_0: 
.L1_0:
                    #      new_var i_19:i32 
                    #      new_var j_19:i32 
                    #      i_19 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_24 
    j       .while.head_24
                    #      label while.head_24: 
.while.head_24:
                    #      new_var temp_0_23:i32 
                    #      temp_0_23 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a2, n
                    #occupy reg a2 with *n_0
    lw      a3,0(a2)
                    #      new_var temp_1_23:i32 
                    #      temp_1_23 = Sub i32 temp_0_23, 1_0 
    li      a4, 1
    sub     a5,a3,a4
                    #      new_var temp_2_23:i1 
                    #      temp_2_23 = icmp i32 Slt i_19, temp_1_23 
    slt     a6,a1,a5
                    #      br i1 temp_2_23, label while.body_24, label while.exit_24 
    bnez    a6, .while.body_24
    j       .while.exit_24
                    #      label while.body_24: 
.while.body_24:
                    #      j_19 = i32 0_0 
    li      a2, 0
                    #      jump label: while.head_28 
    j       .while.head_28
                    #      label while.head_28: 
.while.head_28:
                    #      new_var temp_3_27:i32 
                    #      temp_3_27 = Sub i32 i_19, 1_0 
    li      a4, 1
    sub     a7,a1,a4
                    #      new_var temp_4_27:i32 
                    #      temp_4_27 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      s1, n
                    #occupy reg s1 with *n_0
    lw      s2,0(s1)
                    #      new_var temp_5_27:i32 
                    #      temp_5_27 = Sub i32 temp_4_27, temp_3_27 
    sub     s3,s2,a7
                    #      new_var temp_6_27:i1 
                    #      temp_6_27 = icmp i32 Slt j_19, temp_5_27 
    slt     s4,a2,s3
                    #      br i1 temp_6_27, label while.body_28, label while.exit_28 
    bnez    s4, .while.body_28
    j       .while.exit_28
                    #      label while.body_28: 
.while.body_28:
                    #      new_var temp_7_30:i32 
                    #      temp_7_30 = Add i32 j_19, 1_0 
    li      a4, 1
    add     s1,a2,a4
                    #      new_var temp_8_30:ptr->i32 
                    #      new_var temp_9_30:i32 
                    #      temp_8_30 = getelementptr arr_17:ptr->i32 [Some(temp_7_30)] 
    li      s5, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_9_30 = load temp_8_30:ptr->i32 
    lw      s6,0(s5)
                    #      new_var temp_10_30:ptr->i32 
                    #      new_var temp_11_30:i32 
                    #      temp_10_30 = getelementptr arr_17:ptr->i32 [Some(j_19)] 
    li      s7, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s7,s7,a0
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_11_30 = load temp_10_30:ptr->i32 
    lw      s8,0(s7)
                    #      new_var temp_12_30:i1 
                    #      temp_12_30 = icmp i32 Sgt temp_11_30, temp_9_30 
    slt     s9,s6,s8
                    #      br i1 temp_12_30, label branch_true_31, label branch_false_31 
    bnez    s9, .branch_true_31
    j       .branch_false_31
                    #      label branch_true_31: 
.branch_true_31:
                    #      new_var tmp_32:i32 
                    #      new_var temp_13_32:i32 
                    #      temp_13_32 = Add i32 j_19, 1_0 
    li      a4, 1
    add     s10,a2,a4
                    #      new_var temp_14_32:ptr->i32 
                    #      new_var temp_15_32:i32 
                    #      temp_14_32 = getelementptr arr_17:ptr->i32 [Some(temp_13_32)] 
    li      s11, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s11,s11,a0
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_15_32 = load temp_14_32:ptr->i32 
    lw      a4,0(s11)
                    #      tmp_32 = i32 temp_15_32 
    sd      a0,136(sp)
    mv      a0, a4
                    #      new_var temp_16_32:i32 
                    #      temp_16_32 = Add i32 j_19, 1_0 
    sw      a0,60(sp)
    li      a0, 1
    sw      a1,132(sp)
    add     a1,a2,a0
                    #      new_var temp_17_32:ptr->i32 
                    #      temp_17_32 = getelementptr arr_17:ptr->i32 [Some(temp_16_32)] 
    li      a0, 0
    sw      a1,40(sp)
    li      a1, 1
    sw      a2,128(sp)
    sw      a3,124(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_18_32:ptr->i32 
                    #      new_var temp_19_32:i32 
                    #      temp_18_32 = getelementptr arr_17:ptr->i32 [Some(j_19)] 
    li      a1, 0
    sd      a0,32(sp)
    li      a0, 1
    sw      a2,40(sp)
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_19_32 = load temp_18_32:ptr->i32 
    lw      a0,0(a1)
                    #      store temp_19_32:i32 temp_17_32:ptr->i32 
    sw      a0,20(sp)
    sd      a1,24(sp)
    sd      a1,0(a0)
                    #      mu arr_17:101 
                    #      arr_17 = chi arr_17:101 
                    #      new_var temp_20_32:ptr->i32 
                    #      temp_20_32 = getelementptr arr_17:ptr->i32 [Some(j_19)] 
    sd      a0,32(sp)
    li      a0, 0
    sw      a1,20(sp)
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store tmp_32:i32 temp_20_32:ptr->i32 
    sd      a1,0(a0)
                    #      mu arr_17:107 
                    #      arr_17 = chi arr_17:107 
                    #      jump label: branch_false_31 
    sw      a4,44(sp)
    sd      a0,8(sp)
    mv      a0, a3
    sd      s11,48(sp)
    sw      s10,56(sp)
    sd      a3,136(sp)
    lw      a3,124(sp)
    sw      a1,60(sp)
    lw      a1,132(sp)
    j       .branch_false_31
                    #      label branch_false_31: 
.branch_false_31:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_21_29:i32 
                    #      temp_21_29 = Add i32 j_19, 1_0 
    li      a4, 1
    add     s10,a2,a4
                    #      j_19 = i32 temp_21_29 
    mv      a2, s10
                    #      jump label: while.head_28 
    sw      s2,108(sp)
    sb      s4,103(sp)
    sw      s1,96(sp)
    sw      s6,84(sp)
    sw      a7,112(sp)
    sd      s7,72(sp)
    sd      s5,88(sp)
    sw      s3,104(sp)
    sw      s10,4(sp)
    sb      s9,67(sp)
    sw      s8,68(sp)
    j       .while.head_28
                    #      label while.exit_28: 
.while.exit_28:
                    #      new_var temp_22_25:i32 
                    #      temp_22_25 = Add i32 i_19, 1_0 
    li      a4, 1
    add     s1,a1,a4
                    #      i_19 = i32 temp_22_25 
    mv      a1, s1
                    #      jump label: while.head_24 
    sw      s2,108(sp)
    sb      s4,103(sp)
    sw      s1,0(sp)
    sw      a2,128(sp)
    sw      a7,112(sp)
    sb      a6,119(sp)
    sw      a5,120(sp)
    sw      s3,104(sp)
    sw      a3,124(sp)
    j       .while.head_24
                    #      label while.exit_24: 
.while.exit_24:
                    #      ret 0_0 
    ld      ra,152(sp)
    ld      s0,144(sp)
    sd      a0,136(sp)
    li      a0, 0
    addi    sp,sp,160
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a:40|temp_23:8|temp_24:8|temp_25:8|temp_26:8|temp_27:8|temp_28:8|temp_29:8|temp_30:8|temp_31:8|temp_32:8|i:4|temp_33:4|temp_34:4|temp_35:1|none:3|tmp:4|none:4|temp_36:8|temp_37:4|temp_38:4
    addi    sp,sp,-176
    sd      ra,168(sp)
    sd      s0,160(sp)
    addi    s0,sp,176
                    #      alloc Array:i32:[Some(10_0)] a_41 
                    #      alloc ptr->i32 temp_23_41 
                    #      alloc ptr->i32 temp_24_41 
                    #      alloc ptr->i32 temp_25_41 
                    #      alloc ptr->i32 temp_26_41 
                    #      alloc ptr->i32 temp_27_41 
                    #      alloc ptr->i32 temp_28_41 
                    #      alloc ptr->i32 temp_29_41 
                    #      alloc ptr->i32 temp_30_41 
                    #      alloc ptr->i32 temp_31_41 
                    #      alloc ptr->i32 temp_32_41 
                    #      alloc i32 i_41 
                    #      alloc i32 temp_33_41 
                    #      alloc i32 temp_34_56 
                    #      alloc i1 temp_35_56 
                    #      alloc i32 tmp_58 
                    #      alloc ptr->i32 temp_36_58 
                    #      alloc i32 temp_37_58 
                    #      alloc i32 temp_38_58 
                    #      label L0_0: 
.L0_0:
                    #      store 10_0:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    li      a1, 10
    sd      a1,0(a0)
                    #      new_var a_41:Array:i32:[Some(10_0)] 
                    #      new_var temp_23_41:ptr->i32 
                    #      temp_23_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(0_0)] 
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 4_0:i32 temp_23_41:ptr->i32 
    li      a6, 4
    sd      a6,0(a2)
                    #      mu a_41:126 
                    #      a_41 = chi a_41:126 
                    #      new_var temp_24_41:ptr->i32 
                    #      temp_24_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(1_0)] 
    li      a7, 0
                    #found literal reg Some(a3) already exist with 1_0
    li      s1, 1
    add     a7,a7,a5
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 3_0:i32 temp_24_41:ptr->i32 
    li      s2, 3
    sd      s2,0(a7)
                    #      mu a_41:132 
                    #      a_41 = chi a_41:132 
                    #      new_var temp_25_41:ptr->i32 
                    #      temp_25_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(2_0)] 
    li      s3, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s4, 2
    add     s3,s3,a5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 9_0:i32 temp_25_41:ptr->i32 
    li      s5, 9
    sd      s5,0(s3)
                    #      mu a_41:138 
                    #      a_41 = chi a_41:138 
                    #      new_var temp_26_41:ptr->i32 
                    #      temp_26_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(3_0)] 
    li      s6, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s2) already exist with 3_0
    add     s6,s6,a5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 2_0:i32 temp_26_41:ptr->i32 
                    #found literal reg Some(s4) already exist with 2_0
    sd      s4,0(s6)
                    #      mu a_41:144 
                    #      a_41 = chi a_41:144 
                    #      new_var temp_27_41:ptr->i32 
                    #      temp_27_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(4_0)] 
    li      s7, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(a6) already exist with 4_0
    add     s7,s7,a5
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 0_0:i32 temp_27_41:ptr->i32 
                    #found literal reg Some(a4) already exist with 0_0
    sd      a4,0(s7)
                    #      mu a_41:150 
                    #      a_41 = chi a_41:150 
                    #      new_var temp_28_41:ptr->i32 
                    #      temp_28_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(5_0)] 
    li      s8, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s9, 5
    add     s8,s8,a5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 1_0:i32 temp_28_41:ptr->i32 
                    #found literal reg Some(s1) already exist with 1_0
    sd      s1,0(s8)
                    #      mu a_41:156 
                    #      a_41 = chi a_41:156 
                    #      new_var temp_29_41:ptr->i32 
                    #      temp_29_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(6_0)] 
    li      s10, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s11, 6
    add     s10,s10,a5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store 6_0:i32 temp_29_41:ptr->i32 
                    #found literal reg Some(s11) already exist with 6_0
    sd      s11,0(s10)
                    #      mu a_41:162 
                    #      a_41 = chi a_41:162 
                    #      new_var temp_30_41:ptr->i32 
                    #      temp_30_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(7_0)] 
    li      a0, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      a1, 7
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 5_0:i32 temp_30_41:ptr->i32 
                    #found literal reg Some(s9) already exist with 5_0
    sd      s9,0(a0)
                    #      mu a_41:168 
                    #      a_41 = chi a_41:168 
                    #      new_var temp_31_41:ptr->i32 
                    #      temp_31_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(8_0)] 
    li      a1, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      a3, 8
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 7_0:i32 temp_31_41:ptr->i32 
    li      a3, 7
    sd      a3,0(a1)
                    #      mu a_41:174 
                    #      a_41 = chi a_41:174 
                    #      new_var temp_32_41:ptr->i32 
                    #      temp_32_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(9_0)] 
    li      a3, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s5) already exist with 9_0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      store 8_0:i32 temp_32_41:ptr->i32 
    li      a4, 8
    sd      a4,0(a3)
                    #      mu a_41:180 
                    #      a_41 = chi a_41:180 
                    #      new_var i_41:i32 
                    #      new_var temp_33_41:i32 
                    #      temp_33_41 =  Call i32 bubblesort_0(a_41) 
                    #saved register dumping to mem
    sd      s3,96(sp)
    sd      s6,88(sp)
    sd      s7,80(sp)
    sd      s8,72(sp)
    sd      s10,64(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,56(sp)
    mv      a0, a5
                    #arg load ended
    call    bubblesort
    sw      a0,32(sp)
                    #      i_41 = i32 temp_33_41 
    mv      s1, a0
                    #      jump label: while.head_57 
    j       .while.head_57
                    #      label while.head_57: 
.while.head_57:
                    #      new_var temp_34_56:i32 
                    #      temp_34_56 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a4, n
                    #occupy reg a4 with *n_0
    lw      a6,0(a4)
                    #      new_var temp_35_56:i1 
                    #      temp_35_56 = icmp i32 Slt i_41, temp_34_56 
    slt     s2,s1,a6
                    #      br i1 temp_35_56, label while.body_57, label while.exit_57 
    bnez    s2, .while.body_57
    j       .while.exit_57
                    #      label while.body_57: 
.while.body_57:
                    #      new_var tmp_58:i32 
                    #      new_var temp_36_58:ptr->i32 
                    #      new_var temp_37_58:i32 
                    #      temp_36_58 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(i_41)] 
    li      a4, 0
    li      s3, 1
    add     a4,a4,a5
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_37_58 = load temp_36_58:ptr->i32 
    lw      s4,0(a4)
                    #      tmp_58 = i32 temp_37_58 
    mv      s5, s4
                    #       Call void putint_0(tmp_58) 
                    #saved register dumping to mem
    sw      s1,36(sp)
    sb      s2,27(sp)
    sw      s4,4(sp)
    sw      s5,20(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,32(sp)
    lw      a0,20(sp)
                    #arg load ended
    call    putint
                    #      tmp_58 = i32 10_0 
    li      a0, 10
                    #       Call void putch_0(tmp_58) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,20(sp)
    lw      a0,20(sp)
                    #arg load ended
    call    putch
                    #      new_var temp_38_58:i32 
                    #      temp_38_58 = Add i32 i_41, 1_0 
    li      s1, 1
    add     s2,a0,s1
                    #      i_41 = i32 temp_38_58 
    mv      a0, s2
                    #      jump label: while.head_57 
    mv      s1, a0
    sw      a0,36(sp)
    lw      a0,32(sp)
    sd      a4,8(sp)
    sw      s2,0(sp)
    sw      a6,28(sp)
    j       .while.head_57
                    #      label while.exit_57: 
.while.exit_57:
                    #      ret 0_0 
    ld      ra,168(sp)
    ld      s0,160(sp)
    sw      a0,32(sp)
    li      a0, 0
    addi    sp,sp,176
    ret
.section        .data
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 0
