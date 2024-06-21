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
                    #      Define swap_0 [array_17, i_17, j_17] -> swap_ret_0 
    .globl swap
    .type swap,@function
swap:
                    #mem layout:|ra_swap:8|s0_swap:8|array:8|i:4|j:4|temp:4|none:4|temp_0:8|temp_1:4|none:4|temp_2:8|temp_3:8|temp_4:4|none:4|temp_5:8
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,72(sp)
    addi    s0,sp,88
                    #      new_var array_17:ptr->i32 
                    #      alloc i32 temp_19 
                    #      alloc ptr->i32 temp_0_19 
                    #      alloc i32 temp_1_19 
                    #      alloc ptr->i32 temp_2_19 
                    #      alloc ptr->i32 temp_3_19 
                    #      alloc i32 temp_4_19 
                    #      alloc ptr->i32 temp_5_19 
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_19:i32 
                    #      new_var temp_0_19:ptr->i32 
                    #      new_var temp_1_19:i32 
                    #      temp_0_19 = getelementptr array_17:ptr->i32 [Some(i_17)] 
    li      a3, 0
    li      a4, 1
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_1_19 = load temp_0_19:ptr->i32 
    lw      a5,0(a3)
                    #      temp_19 = i32 temp_1_19 
    mv      a6, a5
                    #      new_var temp_2_19:ptr->i32 
                    #      temp_2_19 = getelementptr array_17:ptr->i32 [Some(i_17)] 
    li      a7, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     a7,a7,a0
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
                    #      new_var temp_3_19:ptr->i32 
                    #      new_var temp_4_19:i32 
                    #      temp_3_19 = getelementptr array_17:ptr->i32 [Some(j_17)] 
    li      s1, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_4_19 = load temp_3_19:ptr->i32 
    lw      s2,0(s1)
                    #      store temp_4_19:i32 temp_2_19:ptr->i32 
    sd      s2,0(a7)
                    #      mu array_17:41 
                    #      array_17 = chi array_17:41 
                    #      new_var temp_5_19:ptr->i32 
                    #      temp_5_19 = getelementptr array_17:ptr->i32 [Some(j_17)] 
    li      s3, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store temp_19:i32 temp_5_19:ptr->i32 
    sd      a6,0(s3)
                    #      mu array_17:47 
                    #      array_17 = chi array_17:47 
                    #      ret 0_0 
    ld      ra,80(sp)
    ld      s0,72(sp)
    sd      a0,64(sp)
    li      a0, 0
    addi    sp,sp,88
    ret
                    #      Define heap_ajust_0 [arr_25, start_25, end_25] -> heap_ajust_ret_0 
    .globl heap_ajust
    .type heap_ajust,@function
heap_ajust:
                    #mem layout:|ra_heap_ajust:8|s0_heap_ajust:8|arr:8|start:4|end:4|dad:4|son:4|temp_6:4|temp_7:4|temp_8:4|temp_9:1|none:3|temp_10:4|none:4|temp_11:8|temp_12:4|none:4|temp_13:8|temp_14:4|temp_15:1|temp_16:1|temp_17:1|none:1|temp_18:4|none:4|temp_19:8|temp_20:4|none:4|temp_21:8|temp_22:4|temp_23:1|none:3|temp_24:4|temp_25:4|temp_26:4|none:4
    addi    sp,sp,-152
    sd      ra,144(sp)
    sd      s0,136(sp)
    addi    s0,sp,152
                    #      new_var arr_25:ptr->i32 
                    #      alloc i32 dad_27 
                    #      alloc i32 son_27 
                    #      alloc i32 temp_6_27 
                    #      alloc i32 temp_7_27 
                    #      alloc i32 temp_8_32 
                    #      alloc i1 temp_9_32 
                    #      alloc i32 temp_10_35 
                    #      alloc ptr->i32 temp_11_35 
                    #      alloc i32 temp_12_35 
                    #      alloc ptr->i32 temp_13_35 
                    #      alloc i32 temp_14_35 
                    #      alloc i1 temp_15_35 
                    #      alloc i1 temp_16_35 
                    #      alloc i1 temp_17_35 
                    #      alloc i32 temp_18_35 
                    #      alloc ptr->i32 temp_19_38 
                    #      alloc i32 temp_20_38 
                    #      alloc ptr->i32 temp_21_38 
                    #      alloc i32 temp_22_38 
                    #      alloc i1 temp_23_38 
                    #      alloc i32 temp_24_41 
                    #      alloc i32 temp_25_41 
                    #      alloc i32 temp_26_41 
                    #      label L2_0: 
.L2_0:
                    #      new_var dad_27:i32 
                    #      dad_27 = i32 start_25 
    mv      a3, a1
                    #      new_var son_27:i32 
                    #      new_var temp_6_27:i32 
                    #      temp_6_27 = Mul i32 dad_27, 2_0 
    li      a4, 2
    mul     a5,a3,a4
                    #      new_var temp_7_27:i32 
                    #      temp_7_27 = Add i32 temp_6_27, 1_0 
    li      a6, 1
    add     a7,a5,a6
                    #      son_27 = i32 temp_7_27 
    mv      s1, a7
                    #      jump label: while.head_33 
    j       .while.head_33
                    #      label while.head_33: 
.while.head_33:
                    #      new_var temp_8_32:i32 
                    #      temp_8_32 = Add i32 end_25, 1_0 
    li      a4, 1
    add     a6,a2,a4
                    #      new_var temp_9_32:i1 
                    #      temp_9_32 = icmp i32 Slt son_27, temp_8_32 
    slt     s2,s1,a6
                    #      br i1 temp_9_32, label while.body_33, label while.exit_33 
    bnez    s2, .while.body_33
    j       .while.exit_33
                    #      label while.body_33: 
.while.body_33:
                    #      new_var temp_10_35:i32 
                    #      temp_10_35 = Add i32 1_0, son_27 
    li      a4, 1
    add     s3,a4,s1
                    #      new_var temp_11_35:ptr->i32 
                    #      new_var temp_12_35:i32 
                    #      temp_11_35 = getelementptr arr_25:ptr->i32 [Some(temp_10_35)] 
    li      s4, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s4,s4,a0
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_12_35 = load temp_11_35:ptr->i32 
    lw      s5,0(s4)
                    #      new_var temp_13_35:ptr->i32 
                    #      new_var temp_14_35:i32 
                    #      temp_13_35 = getelementptr arr_25:ptr->i32 [Some(son_27)] 
    li      s6, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s6,s6,a0
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_14_35 = load temp_13_35:ptr->i32 
    lw      s7,0(s6)
                    #      new_var temp_15_35:i1 
                    #      temp_15_35 = icmp i32 Slt temp_14_35, temp_12_35 
    slt     s8,s7,s5
                    #      new_var temp_16_35:i1 
                    #      temp_16_35 = icmp i32 Slt son_27, end_25 
    slt     s9,s1,a2
                    #      new_var temp_17_35:i1 
                    #      temp_17_35 = And i1 temp_16_35, temp_15_35 
    and     s10,s9,s8
                    #      br i1 temp_17_35, label branch_true_36, label branch_false_36 
    bnez    s10, .branch_true_36
    j       .branch_false_36
                    #      label branch_true_36: 
.branch_true_36:
                    #      new_var temp_18_35:i32 
                    #      temp_18_35 = Add i32 son_27, 1_0 
    li      a4, 1
    add     s11,s1,a4
                    #      son_27 = i32 temp_18_35 
    mv      s1, s11
                    #      jump label: branch_false_36 
    sw      s11,52(sp)
    j       .branch_false_36
                    #      label branch_false_36: 
.branch_false_36:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_19_38:ptr->i32 
                    #      new_var temp_20_38:i32 
                    #      temp_19_38 = getelementptr arr_25:ptr->i32 [Some(son_27)] 
    li      a4, 0
    li      s11, 1
    add     a4,a4,a0
    slli a4,a4,3
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_20_38 = load temp_19_38:ptr->i32 
    lw      s11,0(a4)
                    #      new_var temp_21_38:ptr->i32 
                    #      new_var temp_22_38:i32 
                    #      temp_21_38 = getelementptr arr_25:ptr->i32 [Some(dad_27)] 
    sd      a0,128(sp)
    li      a0, 0
    sw      a1,124(sp)
    li      a1, 1
    sw      a2,120(sp)
    mul     a2,a1,a3
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_22_38 = load temp_21_38:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_23_38:i1 
                    #      temp_23_38 = icmp i32 Sgt temp_22_38, temp_20_38 
    sd      a0,24(sp)
    slt     a0,s11,a1
                    #      br i1 temp_23_38, label branch_true_39, label branch_false_39 
    bnez    a0, .branch_true_39
    j       .branch_false_39
                    #      label branch_true_39: 
.branch_true_39:
                    #      ret 0_0 
    ld      ra,144(sp)
    ld      s0,136(sp)
    sb      a0,19(sp)
    li      a0, 0
    addi    sp,sp,152
    ret
                    #      label branch_false_39: 
.branch_false_39:
                    #      new_var temp_24_41:i32 
                    #      temp_24_41 =  Call i32 swap_0(arr_25, dad_27, son_27) 
                    #saved register dumping to mem
    sw      s1,112(sp)
    sb      s2,99(sp)
    sw      s3,92(sp)
    sd      s4,80(sp)
    sw      s5,76(sp)
    sd      s6,64(sp)
    sw      s7,60(sp)
    sb      s8,59(sp)
    sb      s9,58(sp)
    sb      s10,57(sp)
    sw      s11,36(sp)
                    #saved register dumped to mem
                    #arg load start
    sb      a0,19(sp)
    mv      a0, a2
    sw      a1,20(sp)
    mv      a1, a3
    sd      a2,128(sp)
    lw      a2,112(sp)
                    #arg load ended
    call    swap
    sw      a0,12(sp)
                    #      dad_27 = i32 temp_24_41 
    mv      a3, a0
                    #      dad_27 = i32 son_27 
    mv      a3, a1
                    #      new_var temp_25_41:i32 
                    #      temp_25_41 = Mul i32 dad_27, 2_0 
    li      a2, 2
    mul     s1,a3,a2
                    #      new_var temp_26_41:i32 
                    #      temp_26_41 = Add i32 temp_25_41, 1_0 
    li      s2, 1
    add     s3,s1,s2
                    #      son_27 = i32 temp_26_41 
    mv      a1, s3
                    #      jump label: L4_0 
    j       .L4_0
                    #      label L4_0: 
.L4_0:
                    #      jump label: while.head_33 
    lw      a2,120(sp)
    sw      a0,12(sp)
    ld      a0,128(sp)
    sw      s3,4(sp)
    sw      a1,112(sp)
    lw      a1,124(sp)
    sw      s1,8(sp)
    lw      s1,112(sp)
    sw      a6,100(sp)
    sd      a4,40(sp)
    j       .while.head_33
                    #      label while.exit_33: 
.while.exit_33:
                    #      ret 0_0 
    ld      ra,144(sp)
    ld      s0,136(sp)
    sd      a0,128(sp)
    li      a0, 0
    addi    sp,sp,152
    ret
                    #      Define heap_sort_0 [arr_46, len_46] -> heap_sort_ret_0 
    .globl heap_sort
    .type heap_sort,@function
heap_sort:
                    #mem layout:|ra_heap_sort:8|s0_heap_sort:8|arr:8|len:4|i:4|tmp:4|temp_27:4|temp_28:4|temp_29:1|none:3|temp_30:4|temp_31:4|temp_32:4|temp_33:4|temp_34:1|none:3|tmp0:4|temp_35:4|temp_36:4|temp_37:4|temp_38:4
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,72(sp)
    addi    s0,sp,88
                    #      new_var arr_46:ptr->i32 
                    #      alloc i32 i_48 
                    #      alloc i32 tmp_48 
                    #      alloc i32 temp_27_48 
                    #      alloc i32 temp_28_48 
                    #      alloc i1 temp_29_52 
                    #      alloc i32 temp_30_54 
                    #      alloc i32 temp_31_54 
                    #      alloc i32 temp_32_54 
                    #      alloc i32 temp_33_48 
                    #      alloc i1 temp_34_59 
                    #      alloc i32 tmp0_61 
                    #      alloc i32 temp_35_61 
                    #      alloc i32 temp_36_61 
                    #      alloc i32 temp_37_61 
                    #      alloc i32 temp_38_61 
                    #      label L1_0: 
.L1_0:
                    #      new_var i_48:i32 
                    #      new_var tmp_48:i32 
                    #      new_var temp_27_48:i32 
                    #      temp_27_48 = Div i32 len_46, 2_0 
    li      a2, 2
    div     a3,a1,a2
                    #      new_var temp_28_48:i32 
                    #      temp_28_48 = Sub i32 temp_27_48, 1_0 
    li      a4, 1
    sub     a5,a3,a4
                    #      i_48 = i32 temp_28_48 
    mv      a6, a5
                    #      jump label: while.head_53 
    j       .while.head_53
                    #      label while.head_53: 
.while.head_53:
                    #      new_var temp_29_52:i1 
                    #      temp_29_52 = icmp i32 Sgt i_48, -1_0 
    li      a2, -1
    slt     a4,a2,a6
                    #      br i1 temp_29_52, label while.body_53, label while.exit_53 
    bnez    a4, .while.body_53
    j       .while.exit_53
                    #      label while.body_53: 
.while.body_53:
                    #      new_var temp_30_54:i32 
                    #      temp_30_54 = Sub i32 len_46, 1_0 
    li      a2, 1
    sub     a7,a1,a2
                    #      tmp_48 = i32 temp_30_54 
    mv      s1, a7
                    #      new_var temp_31_54:i32 
                    #      temp_31_54 =  Call i32 heap_ajust_0(arr_46, i_48, tmp_48) 
                    #saved register dumping to mem
    sw      s1,52(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,64(sp)
    ld      a0,64(sp)
    sw      a1,60(sp)
    mv      a1, a6
    lw      a2,52(sp)
                    #arg load ended
    call    heap_ajust
    sw      a0,32(sp)
                    #      tmp_48 = i32 temp_31_54 
    mv      a1, a0
                    #      new_var temp_32_54:i32 
                    #      temp_32_54 = Sub i32 i_48, 1_0 
    li      a2, 1
    sub     s1,a6,a2
                    #      i_48 = i32 temp_32_54 
    mv      a6, s1
                    #      jump label: while.head_53 
    sw      s1,28(sp)
    sb      a4,43(sp)
    sw      a0,32(sp)
    ld      a0,64(sp)
    sw      a7,36(sp)
    sw      a1,52(sp)
    lw      a1,60(sp)
    j       .while.head_53
                    #      label while.exit_53: 
.while.exit_53:
                    #      new_var temp_33_48:i32 
                    #      temp_33_48 = Sub i32 len_46, 1_0 
    li      a2, 1
    sub     a7,a1,a2
                    #      i_48 = i32 temp_33_48 
    mv      a6, a7
                    #      jump label: while.head_60 
    j       .while.head_60
                    #      label while.head_60: 
.while.head_60:
                    #      new_var temp_34_59:i1 
                    #      temp_34_59 = icmp i32 Sgt i_48, 0_0 
    li      a2, 0
    slt     s1,a2,a6
                    #      br i1 temp_34_59, label while.body_60, label while.exit_60 
    bnez    s1, .while.body_60
    j       .while.exit_60
                    #      label while.body_60: 
.while.body_60:
                    #      new_var tmp0_61:i32 
                    #      tmp0_61 = i32 0_0 
    li      a2, 0
                    #      new_var temp_35_61:i32 
                    #      temp_35_61 =  Call i32 swap_0(arr_46, tmp0_61, i_48) 
                    #saved register dumping to mem
    sb      s1,23(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,64(sp)
    ld      a0,64(sp)
    sw      a1,60(sp)
    mv      a1, a2
    sw      a2,16(sp)
    mv      a2, a6
                    #arg load ended
    call    swap
    sw      a0,12(sp)
                    #      tmp_48 = i32 temp_35_61 
    mv      a1, a0
                    #      new_var temp_36_61:i32 
                    #      temp_36_61 = Sub i32 i_48, 1_0 
    li      a2, 1
    sub     s1,a6,a2
                    #      tmp_48 = i32 temp_36_61 
    mv      a1, s1
                    #      new_var temp_37_61:i32 
                    #      temp_37_61 =  Call i32 heap_ajust_0(arr_46, tmp0_61, tmp_48) 
                    #saved register dumping to mem
    sw      s1,8(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,12(sp)
    ld      a0,64(sp)
    sw      a1,52(sp)
    lw      a1,16(sp)
    lw      a2,52(sp)
                    #arg load ended
    call    heap_ajust
    sw      a0,4(sp)
                    #      tmp_48 = i32 temp_37_61 
    mv      a1, a0
                    #      new_var temp_38_61:i32 
                    #      temp_38_61 = Sub i32 i_48, 1_0 
    li      a2, 1
    sub     s1,a6,a2
                    #      i_48 = i32 temp_38_61 
    mv      a6, s1
                    #      jump label: while.head_60 
    sw      s1,0(sp)
    sw      a0,4(sp)
    ld      a0,64(sp)
    sw      a1,52(sp)
    lw      a1,60(sp)
    j       .while.head_60
                    #      label while.exit_60: 
.while.exit_60:
                    #      ret 0_0 
    ld      ra,80(sp)
    ld      s0,72(sp)
    sd      a0,64(sp)
    li      a0, 0
    addi    sp,sp,88
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a:40|temp_39:8|temp_40:8|temp_41:8|temp_42:8|temp_43:8|temp_44:8|temp_45:8|temp_46:8|temp_47:8|temp_48:8|i:4|temp_49:4|temp_50:4|temp_51:4|temp_52:1|none:3|tmp:4|temp_53:8|temp_54:4|temp_55:4
    addi    sp,sp,-176
    sd      ra,168(sp)
    sd      s0,160(sp)
    addi    s0,sp,176
                    #      alloc Array:i32:[Some(10_0)] a_70 
                    #      alloc ptr->i32 temp_39_70 
                    #      alloc ptr->i32 temp_40_70 
                    #      alloc ptr->i32 temp_41_70 
                    #      alloc ptr->i32 temp_42_70 
                    #      alloc ptr->i32 temp_43_70 
                    #      alloc ptr->i32 temp_44_70 
                    #      alloc ptr->i32 temp_45_70 
                    #      alloc ptr->i32 temp_46_70 
                    #      alloc ptr->i32 temp_47_70 
                    #      alloc ptr->i32 temp_48_70 
                    #      alloc i32 i_70 
                    #      alloc i32 temp_49_70 
                    #      alloc i32 temp_50_70 
                    #      alloc i32 temp_51_86 
                    #      alloc i1 temp_52_86 
                    #      alloc i32 tmp_88 
                    #      alloc ptr->i32 temp_53_88 
                    #      alloc i32 temp_54_88 
                    #      alloc i32 temp_55_88 
                    #      label L0_0: 
.L0_0:
                    #      store 10_0:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    li      a1, 10
    sd      a1,0(a0)
                    #      new_var a_70:Array:i32:[Some(10_0)] 
                    #      new_var temp_39_70:ptr->i32 
                    #      temp_39_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(0_0)] 
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 4_0:i32 temp_39_70:ptr->i32 
    li      a6, 4
    sd      a6,0(a2)
                    #      mu a_70:210 
                    #      a_70 = chi a_70:210 
                    #      new_var temp_40_70:ptr->i32 
                    #      temp_40_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(1_0)] 
    li      a7, 0
                    #found literal reg Some(a3) already exist with 1_0
    li      s1, 1
    add     a7,a7,a5
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 3_0:i32 temp_40_70:ptr->i32 
    li      s2, 3
    sd      s2,0(a7)
                    #      mu a_70:216 
                    #      a_70 = chi a_70:216 
                    #      new_var temp_41_70:ptr->i32 
                    #      temp_41_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(2_0)] 
    li      s3, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s4, 2
    add     s3,s3,a5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 9_0:i32 temp_41_70:ptr->i32 
    li      s5, 9
    sd      s5,0(s3)
                    #      mu a_70:222 
                    #      a_70 = chi a_70:222 
                    #      new_var temp_42_70:ptr->i32 
                    #      temp_42_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(3_0)] 
    li      s6, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s2) already exist with 3_0
    add     s6,s6,a5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 2_0:i32 temp_42_70:ptr->i32 
                    #found literal reg Some(s4) already exist with 2_0
    sd      s4,0(s6)
                    #      mu a_70:228 
                    #      a_70 = chi a_70:228 
                    #      new_var temp_43_70:ptr->i32 
                    #      temp_43_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(4_0)] 
    li      s7, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(a6) already exist with 4_0
    add     s7,s7,a5
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 0_0:i32 temp_43_70:ptr->i32 
                    #found literal reg Some(a4) already exist with 0_0
    sd      a4,0(s7)
                    #      mu a_70:234 
                    #      a_70 = chi a_70:234 
                    #      new_var temp_44_70:ptr->i32 
                    #      temp_44_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(5_0)] 
    li      s8, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s9, 5
    add     s8,s8,a5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 1_0:i32 temp_44_70:ptr->i32 
                    #found literal reg Some(s1) already exist with 1_0
    sd      s1,0(s8)
                    #      mu a_70:240 
                    #      a_70 = chi a_70:240 
                    #      new_var temp_45_70:ptr->i32 
                    #      temp_45_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(6_0)] 
    li      s10, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s11, 6
    add     s10,s10,a5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store 6_0:i32 temp_45_70:ptr->i32 
                    #found literal reg Some(s11) already exist with 6_0
    sd      s11,0(s10)
                    #      mu a_70:246 
                    #      a_70 = chi a_70:246 
                    #      new_var temp_46_70:ptr->i32 
                    #      temp_46_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(7_0)] 
    li      a0, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      a1, 7
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 5_0:i32 temp_46_70:ptr->i32 
                    #found literal reg Some(s9) already exist with 5_0
    sd      s9,0(a0)
                    #      mu a_70:252 
                    #      a_70 = chi a_70:252 
                    #      new_var temp_47_70:ptr->i32 
                    #      temp_47_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(8_0)] 
    li      a1, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      a3, 8
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 7_0:i32 temp_47_70:ptr->i32 
    li      a3, 7
    sd      a3,0(a1)
                    #      mu a_70:258 
                    #      a_70 = chi a_70:258 
                    #      new_var temp_48_70:ptr->i32 
                    #      temp_48_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(9_0)] 
    li      a3, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s5) already exist with 9_0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      store 8_0:i32 temp_48_70:ptr->i32 
    li      a4, 8
    sd      a4,0(a3)
                    #      mu a_70:264 
                    #      a_70 = chi a_70:264 
                    #      new_var i_70:i32 
                    #      i_70 = i32 0_0 
    li      a4, 0
                    #      new_var temp_49_70:i32 
                    #      temp_49_70 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a6, n
                    #occupy reg a6 with *n_0
    lw      s1,0(a6)
                    #      new_var temp_50_70:i32 
                    #      temp_50_70 =  Call i32 heap_sort_0(a_70, temp_49_70) 
                    #saved register dumping to mem
    sw      s1,32(sp)
    sd      s3,96(sp)
    sd      s6,88(sp)
    sd      s7,80(sp)
    sd      s8,72(sp)
    sd      s10,64(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,56(sp)
    mv      a0, a5
    sd      a1,48(sp)
    lw      a1,32(sp)
                    #arg load ended
    call    heap_sort
    sw      a0,28(sp)
                    #      i_70 = i32 temp_50_70 
    mv      a4, a0
                    #      jump label: while.head_87 
    j       .while.head_87
                    #      label while.head_87: 
.while.head_87:
                    #      new_var temp_51_86:i32 
                    #      temp_51_86 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    lw      a6,0(a1)
                    #      new_var temp_52_86:i1 
                    #      temp_52_86 = icmp i32 Slt i_70, temp_51_86 
    slt     s1,a4,a6
                    #      br i1 temp_52_86, label while.body_87, label while.exit_87 
    bnez    s1, .while.body_87
    j       .while.exit_87
                    #      label while.body_87: 
.while.body_87:
                    #      new_var tmp_88:i32 
                    #      new_var temp_53_88:ptr->i32 
                    #      new_var temp_54_88:i32 
                    #      temp_53_88 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(i_70)] 
    li      a1, 0
    li      s2, 1
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_54_88 = load temp_53_88:ptr->i32 
    lw      s3,0(a1)
                    #      tmp_88 = i32 temp_54_88 
    mv      s4, s3
                    #       Call void putint_0(tmp_88) 
                    #saved register dumping to mem
    sb      s1,23(sp)
    sw      s3,4(sp)
    sw      s4,16(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
    lw      a0,16(sp)
                    #arg load ended
    call    putint
                    #      tmp_88 = i32 10_0 
    li      a0, 10
                    #       Call void putch_0(tmp_88) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    lw      a0,16(sp)
                    #arg load ended
    call    putch
                    #      new_var temp_55_88:i32 
                    #      temp_55_88 = Add i32 i_70, 1_0 
    li      a0, 1
    add     s1,a4,a0
                    #      i_70 = i32 temp_55_88 
    mv      a4, s1
                    #      jump label: while.head_87 
    sw      a6,24(sp)
    sd      a1,8(sp)
    sw      s1,0(sp)
    lw      a0,28(sp)
    j       .while.head_87
                    #      label while.exit_87: 
.while.exit_87:
                    #      ret 0_0 
    ld      ra,168(sp)
    ld      s0,160(sp)
    sw      a0,28(sp)
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
