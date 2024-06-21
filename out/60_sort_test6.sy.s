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
                    #      Define counting_sort_0 [ini_arr_17, sorted_arr_17, n_17] -> counting_sort_ret_0 
    .globl counting_sort
    .type counting_sort,@function
counting_sort:
                    #mem layout:|ra_counting_sort:8|s0_counting_sort:8|ini_arr:8|sorted_arr:8|n:4|count_arr:40|i:4|j:4|k:4|temp_0:1|none:7|temp_1:8|temp_2:4|temp_3:1|none:3|temp_4:8|temp_5:4|none:4|temp_6:8|temp_7:8|temp_8:4|none:4|temp_9:8|temp_10:4|temp_11:4|temp_12:4|temp_13:1|none:3|temp_14:8|temp_15:4|none:4|temp_16:8|temp_17:4|none:4|temp_18:8|temp_19:4|temp_20:4|temp_21:4|temp_22:1|none:3|temp_23:4|none:4|temp_24:8|temp_25:4|none:4|temp_26:8|temp_27:4|none:4|temp_28:8|temp_29:4|none:4|temp_30:8|temp_31:4|temp_32:4|temp_33:4|none:4|temp_34:8|temp_35:4|none:4|temp_36:8|temp_37:4|none:4|temp_38:8|temp_39:4|none:4|temp_40:8|temp_41:4|temp_42:4
    addi    sp,sp,-376
    sd      ra,368(sp)
    sd      s0,360(sp)
    addi    s0,sp,376
                    #      new_var ini_arr_17:ptr->i32 
                    #      new_var sorted_arr_17:ptr->i32 
                    #      alloc Array:i32:[Some(10_0)] count_arr_19 
                    #      alloc i32 i_19 
                    #      alloc i32 j_19 
                    #      alloc i32 k_19 
                    #      alloc i1 temp_0_27 
                    #      alloc ptr->i32 temp_1_29 
                    #      alloc i32 temp_2_29 
                    #      alloc i1 temp_3_32 
                    #      alloc ptr->i32 temp_4_34 
                    #      alloc i32 temp_5_34 
                    #      alloc ptr->i32 temp_6_34 
                    #      alloc ptr->i32 temp_7_34 
                    #      alloc i32 temp_8_34 
                    #      alloc ptr->i32 temp_9_34 
                    #      alloc i32 temp_10_34 
                    #      alloc i32 temp_11_34 
                    #      alloc i32 temp_12_34 
                    #      alloc i1 temp_13_38 
                    #      alloc ptr->i32 temp_14_40 
                    #      alloc i32 temp_15_40 
                    #      alloc ptr->i32 temp_16_40 
                    #      alloc i32 temp_17_40 
                    #      alloc ptr->i32 temp_18_40 
                    #      alloc i32 temp_19_40 
                    #      alloc i32 temp_20_40 
                    #      alloc i32 temp_21_40 
                    #      alloc i1 temp_22_44 
                    #      alloc i32 temp_23_46 
                    #      alloc ptr->i32 temp_24_46 
                    #      alloc i32 temp_25_46 
                    #      alloc ptr->i32 temp_26_46 
                    #      alloc i32 temp_27_46 
                    #      alloc ptr->i32 temp_28_46 
                    #      alloc i32 temp_29_46 
                    #      alloc ptr->i32 temp_30_46 
                    #      alloc i32 temp_31_46 
                    #      alloc i32 temp_32_46 
                    #      alloc i32 temp_33_46 
                    #      alloc ptr->i32 temp_34_46 
                    #      alloc i32 temp_35_46 
                    #      alloc ptr->i32 temp_36_46 
                    #      alloc i32 temp_37_46 
                    #      alloc ptr->i32 temp_38_46 
                    #      alloc i32 temp_39_46 
                    #      alloc ptr->i32 temp_40_46 
                    #      alloc i32 temp_41_46 
                    #      alloc i32 temp_42_46 
                    #      label L1_0: 
.L1_0:
                    #      new_var count_arr_19:Array:i32:[Some(10_0)] 
                    #      new_var i_19:i32 
                    #      new_var j_19:i32 
                    #      new_var k_19:i32 
                    #      k_19 = i32 0_0 
    li      a3, 0
                    #      i_19 = i32 0_0 
    li      a4, 0
                    #      j_19 = i32 0_0 
    li      a5, 0
                    #      jump label: while.head_28 
    j       .while.head_28
                    #      label while.head_28: 
.while.head_28:
                    #      new_var temp_0_27:i1 
                    #      temp_0_27 = icmp i32 Slt k_19, 10_0 
    li      a6, 10
    slt     a7,a3,a6
                    #      br i1 temp_0_27, label while.body_28, label while.exit_28 
    bnez    a7, .while.body_28
    j       .while.exit_28
                    #      label while.body_28: 
.while.body_28:
                    #      new_var temp_1_29:ptr->i32 
                    #      temp_1_29 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(k_19)] 
    li      a6, 0
    li      s1, 1
    mul     s2,s1,a3
    add     a6,a6,s2
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      store 0_0:i32 temp_1_29:ptr->i32 
    li      s3, 0
    sd      s3,0(a6)
                    #      mu count_arr_19:42 
                    #      count_arr_19 = chi count_arr_19:42 
                    #      new_var temp_2_29:i32 
                    #      temp_2_29 = Add i32 k_19, 1_0 
                    #found literal reg Some(s1) already exist with 1_0
    add     s4,a3,s1
                    #      k_19 = i32 temp_2_29 
                    #      jump label: while.head_28 
    sd      a6,272(sp)
    sw      s4,268(sp)
    sw      s2,336(sp)
    sb      a7,287(sp)
    j       .while.head_28
                    #      label while.head_33: 
.while.head_33:
                    #      new_var temp_3_32:i1 
                    #      temp_3_32 = icmp i32 Slt i_19, n_17 
    slt     a6,a4,a2
                    #      br i1 temp_3_32, label while.body_33, label while.exit_33 
    bnez    a6, .while.body_33
    j       .while.exit_33
                    #      label while.body_33: 
.while.body_33:
                    #      new_var temp_4_34:ptr->i32 
                    #      new_var temp_5_34:i32 
                    #      temp_4_34 = getelementptr ini_arr_17:ptr->i32 [Some(i_19)] 
    li      s1, 0
    li      s2, 1
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_5_34 = load temp_4_34:ptr->i32 
    lw      s3,0(s1)
                    #      new_var temp_6_34:ptr->i32 
                    #      temp_6_34 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(temp_5_34)] 
    li      s4, 0
                    #found literal reg Some(s2) already exist with 1_0
    mul     s5,s2,s3
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      new_var temp_7_34:ptr->i32 
                    #      new_var temp_8_34:i32 
                    #      temp_7_34 = getelementptr ini_arr_17:ptr->i32 [Some(i_19)] 
    li      s6, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s6,s6,a0
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_8_34 = load temp_7_34:ptr->i32 
    lw      s7,0(s6)
                    #      new_var temp_9_34:ptr->i32 
                    #      new_var temp_10_34:i32 
                    #      temp_9_34 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(temp_8_34)] 
    li      s8, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s8,s8,s5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_10_34 = load temp_9_34:ptr->i32 
    lw      s9,0(s8)
                    #      new_var temp_11_34:i32 
                    #      temp_11_34 = Add i32 temp_10_34, 1_0 
                    #found literal reg Some(s2) already exist with 1_0
    add     s10,s9,s2
                    #      store temp_11_34:i32 temp_6_34:ptr->i32 
    sd      s10,0(s4)
                    #      mu count_arr_19:81 
                    #      count_arr_19 = chi count_arr_19:81 
                    #      new_var temp_12_34:i32 
                    #      temp_12_34 = Add i32 i_19, 1_0 
                    #found literal reg Some(s2) already exist with 1_0
    add     s11,a4,s2
                    #      i_19 = i32 temp_12_34 
                    #      jump label: while.head_33 
    sw      s7,228(sp)
    sw      s11,204(sp)
    sd      s6,232(sp)
    sw      s5,336(sp)
    sb      a6,267(sp)
    sd      s4,240(sp)
    sd      s8,216(sp)
    sw      s9,212(sp)
    sd      s1,256(sp)
    sw      s10,208(sp)
    sw      s3,252(sp)
    j       .while.head_33
                    #      label while.exit_33: 
.while.exit_33:
                    #      k_19 = i32 1_0 
                    #      jump label: while.head_39 
    j       .while.head_39
                    #      label while.head_39: 
.while.head_39:
                    #      new_var temp_13_38:i1 
                    #      temp_13_38 = icmp i32 Slt k_19, 10_0 
    li      s1, 10
    slt     s2,a3,s1
                    #      br i1 temp_13_38, label while.body_39, label while.exit_39 
    bnez    s2, .while.body_39
    j       .while.exit_39
                    #      label while.body_39: 
.while.body_39:
                    #      new_var temp_14_40:ptr->i32 
                    #      temp_14_40 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(k_19)] 
    li      s1, 0
    li      s3, 1
    mul     s4,s3,a3
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      new_var temp_15_40:i32 
                    #      temp_15_40 = Sub i32 k_19, 1_0 
                    #found literal reg Some(s3) already exist with 1_0
    sub     s5,a3,s3
                    #      new_var temp_16_40:ptr->i32 
                    #      new_var temp_17_40:i32 
                    #      temp_16_40 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(temp_15_40)] 
    li      s6, 0
                    #found literal reg Some(s3) already exist with 1_0
    add     s6,s6,s4
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_17_40 = load temp_16_40:ptr->i32 
    lw      s7,0(s6)
                    #      new_var temp_18_40:ptr->i32 
                    #      new_var temp_19_40:i32 
                    #      temp_18_40 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(k_19)] 
    li      s8, 0
                    #found literal reg Some(s3) already exist with 1_0
    add     s8,s8,s4
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_19_40 = load temp_18_40:ptr->i32 
    lw      s9,0(s8)
                    #      new_var temp_20_40:i32 
                    #      temp_20_40 = Add i32 temp_19_40, temp_17_40 
    add     s10,s9,s7
                    #      store temp_20_40:i32 temp_14_40:ptr->i32 
    sd      s10,0(s1)
                    #      mu count_arr_19:118 
                    #      count_arr_19 = chi count_arr_19:118 
                    #      new_var temp_21_40:i32 
                    #      temp_21_40 = Add i32 k_19, 1_0 
                    #found literal reg Some(s3) already exist with 1_0
    add     s11,a3,s3
                    #      k_19 = i32 temp_21_40 
                    #      jump label: while.head_39 
    sw      s7,172(sp)
    sw      s11,148(sp)
    sd      s6,176(sp)
    sw      s5,188(sp)
    sw      s4,336(sp)
    sd      s8,160(sp)
    sw      s9,156(sp)
    sd      s1,192(sp)
    sw      s10,152(sp)
    sb      s2,203(sp)
    j       .while.head_39
                    #      label while.exit_39: 
.while.exit_39:
                    #      j_19 = i32 n_17 
                    #      jump label: while.head_45 
    j       .while.head_45
                    #      label while.head_45: 
.while.head_45:
                    #      new_var temp_22_44:i1 
                    #      temp_22_44 = icmp i32 Sgt j_19, 0_0 
    li      s1, 0
    slt     s3,s1,a5
                    #      br i1 temp_22_44, label while.body_45, label while.exit_45 
    bnez    s3, .while.body_45
    j       .while.exit_45
                    #      label while.body_45: 
.while.body_45:
                    #      new_var temp_23_46:i32 
                    #      temp_23_46 = Sub i32 j_19, 1_0 
    li      s1, 1
    sub     s4,a5,s1
                    #      new_var temp_24_46:ptr->i32 
                    #      new_var temp_25_46:i32 
                    #      temp_24_46 = getelementptr ini_arr_17:ptr->i32 [Some(temp_23_46)] 
    li      s5, 0
                    #found literal reg Some(s1) already exist with 1_0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_25_46 = load temp_24_46:ptr->i32 
    lw      s6,0(s5)
                    #      new_var temp_26_46:ptr->i32 
                    #      temp_26_46 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(temp_25_46)] 
    li      s7, 0
                    #found literal reg Some(s1) already exist with 1_0
    mul     s8,s1,s6
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      new_var temp_27_46:i32 
                    #      temp_27_46 = Sub i32 j_19, 1_0 
                    #found literal reg Some(s1) already exist with 1_0
    sub     s9,a5,s1
                    #      new_var temp_28_46:ptr->i32 
                    #      new_var temp_29_46:i32 
                    #      temp_28_46 = getelementptr ini_arr_17:ptr->i32 [Some(temp_27_46)] 
    li      s10, 0
                    #found literal reg Some(s1) already exist with 1_0
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_29_46 = load temp_28_46:ptr->i32 
    lw      s11,0(s10)
                    #      new_var temp_30_46:ptr->i32 
                    #      new_var temp_31_46:i32 
                    #      temp_30_46 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(temp_29_46)] 
    li      s1, 0
    sd      a0,352(sp)
    li      a0, 1
    add     s1,s1,s8
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_31_46 = load temp_30_46:ptr->i32 
    lw      a0,0(s1)
                    #      new_var temp_32_46:i32 
                    #      temp_32_46 = Sub i32 temp_31_46, 1_0 
    sd      a1,344(sp)
    li      a1, 1
    sw      a2,340(sp)
    sub     a2,a0,a1
                    #      store temp_32_46:i32 temp_26_46:ptr->i32 
    sd      a2,0(s7)
                    #      mu count_arr_19:164 
                    #      count_arr_19 = chi count_arr_19:164 
                    #      new_var temp_33_46:i32 
                    #      temp_33_46 = Sub i32 j_19, 1_0 
                    #found literal reg Some(a1) already exist with 1_0
    sw      a0,76(sp)
    sub     a0,a5,a1
                    #      new_var temp_34_46:ptr->i32 
                    #      new_var temp_35_46:i32 
                    #      temp_34_46 = getelementptr ini_arr_17:ptr->i32 [Some(temp_33_46)] 
    li      a1, 0
    sw      a0,68(sp)
    li      a0, 1
    sw      a2,72(sp)
    sw      a3,288(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_35_46 = load temp_34_46:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_36_46:ptr->i32 
                    #      new_var temp_37_46:i32 
                    #      temp_36_46 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(temp_35_46)] 
    sw      a0,52(sp)
    li      a0, 0
    sd      a1,56(sp)
    li      a1, 1
    sw      a2,68(sp)
    add     a0,a0,s8
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_37_46 = load temp_36_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_38_46:ptr->i32 
                    #      temp_38_46 = getelementptr sorted_arr_17:ptr->i32 [Some(temp_37_46)] 
    sd      a0,40(sp)
    li      a0, 0
    sw      a1,36(sp)
    li      a1, 1
    sw      a2,52(sp)
    sd      a3,352(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_39_46:i32 
                    #      temp_39_46 = Sub i32 j_19, 1_0 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a0,24(sp)
    sub     a0,a5,a1
                    #      new_var temp_40_46:ptr->i32 
                    #      new_var temp_41_46:i32 
                    #      temp_40_46 = getelementptr ini_arr_17:ptr->i32 [Some(temp_39_46)] 
    li      a1, 0
    sw      a0,20(sp)
    li      a0, 1
    sw      a2,36(sp)
    sd      a3,344(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_41_46 = load temp_40_46:ptr->i32 
    lw      a0,0(a1)
                    #      store temp_41_46:i32 temp_38_46:ptr->i32 
    sw      a0,4(sp)
    sd      a1,8(sp)
    sd      a1,0(a0)
                    #      mu sorted_arr_17:194 
                    #      sorted_arr_17 = chi sorted_arr_17:194 
                    #      new_var temp_42_46:i32 
                    #      temp_42_46 = Sub i32 j_19, 1_0 
    sd      a0,24(sp)
    li      a0, 1
    sw      a1,4(sp)
    sub     a1,a5,a0
                    #      j_19 = i32 temp_42_46 
                    #      jump label: while.head_45 
    sw      a1,0(sp)
    ld      a1,344(sp)
    sd      s7,112(sp)
    sw      s11,92(sp)
    sw      s6,124(sp)
    sd      s5,128(sp)
    sw      a2,20(sp)
    lw      a2,340(sp)
    sw      s4,140(sp)
    sw      s8,336(sp)
    sd      a3,352(sp)
    lw      a3,288(sp)
    sw      s9,108(sp)
    sd      s1,80(sp)
    sd      s10,96(sp)
    sb      s3,147(sp)
    ld      a0,352(sp)
    j       .while.head_45
                    #      label while.exit_45: 
.while.exit_45:
                    #      ret 0_0 
    ld      ra,368(sp)
    ld      s0,360(sp)
    sd      a0,352(sp)
    li      a0, 0
    addi    sp,sp,376
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a:40|temp_43:8|temp_44:8|temp_45:8|temp_46:8|temp_47:8|temp_48:8|temp_49:8|temp_50:8|temp_51:8|temp_52:8|i:4|b:40|temp_53:4|temp_54:4|temp_55:4|temp_56:1|none:3|tmp:4|temp_57:8|temp_58:4|temp_59:4
    addi    sp,sp,-216
    sd      ra,208(sp)
    sd      s0,200(sp)
    addi    s0,sp,216
                    #      alloc Array:i32:[Some(10_0)] a_52 
                    #      alloc ptr->i32 temp_43_52 
                    #      alloc ptr->i32 temp_44_52 
                    #      alloc ptr->i32 temp_45_52 
                    #      alloc ptr->i32 temp_46_52 
                    #      alloc ptr->i32 temp_47_52 
                    #      alloc ptr->i32 temp_48_52 
                    #      alloc ptr->i32 temp_49_52 
                    #      alloc ptr->i32 temp_50_52 
                    #      alloc ptr->i32 temp_51_52 
                    #      alloc ptr->i32 temp_52_52 
                    #      alloc i32 i_52 
                    #      alloc Array:i32:[Some(10_0)] b_52 
                    #      alloc i32 temp_53_52 
                    #      alloc i32 temp_54_52 
                    #      alloc i32 temp_55_69 
                    #      alloc i1 temp_56_69 
                    #      alloc i32 tmp_71 
                    #      alloc ptr->i32 temp_57_71 
                    #      alloc i32 temp_58_71 
                    #      alloc i32 temp_59_71 
                    #      label L0_0: 
.L0_0:
                    #      store 10_0:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    li      a1, 10
    sd      a1,0(a0)
                    #      new_var a_52:Array:i32:[Some(10_0)] 
                    #      new_var temp_43_52:ptr->i32 
                    #      temp_43_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(0_0)] 
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 4_0:i32 temp_43_52:ptr->i32 
    li      a6, 4
    sd      a6,0(a2)
                    #      mu a_52:209 
                    #      a_52 = chi a_52:209 
                    #      new_var temp_44_52:ptr->i32 
                    #      temp_44_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(1_0)] 
    li      a7, 0
                    #found literal reg Some(a3) already exist with 1_0
    li      s1, 1
    add     a7,a7,a5
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 3_0:i32 temp_44_52:ptr->i32 
    li      s2, 3
    sd      s2,0(a7)
                    #      mu a_52:215 
                    #      a_52 = chi a_52:215 
                    #      new_var temp_45_52:ptr->i32 
                    #      temp_45_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(2_0)] 
    li      s3, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s4, 2
    add     s3,s3,a5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 9_0:i32 temp_45_52:ptr->i32 
    li      s5, 9
    sd      s5,0(s3)
                    #      mu a_52:221 
                    #      a_52 = chi a_52:221 
                    #      new_var temp_46_52:ptr->i32 
                    #      temp_46_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(3_0)] 
    li      s6, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s2) already exist with 3_0
    add     s6,s6,a5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 2_0:i32 temp_46_52:ptr->i32 
                    #found literal reg Some(s4) already exist with 2_0
    sd      s4,0(s6)
                    #      mu a_52:227 
                    #      a_52 = chi a_52:227 
                    #      new_var temp_47_52:ptr->i32 
                    #      temp_47_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(4_0)] 
    li      s7, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(a6) already exist with 4_0
    add     s7,s7,a5
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 0_0:i32 temp_47_52:ptr->i32 
                    #found literal reg Some(a4) already exist with 0_0
    sd      a4,0(s7)
                    #      mu a_52:233 
                    #      a_52 = chi a_52:233 
                    #      new_var temp_48_52:ptr->i32 
                    #      temp_48_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(5_0)] 
    li      s8, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s9, 5
    add     s8,s8,a5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 1_0:i32 temp_48_52:ptr->i32 
                    #found literal reg Some(s1) already exist with 1_0
    sd      s1,0(s8)
                    #      mu a_52:239 
                    #      a_52 = chi a_52:239 
                    #      new_var temp_49_52:ptr->i32 
                    #      temp_49_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(6_0)] 
    li      s10, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s11, 6
    add     s10,s10,a5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store 6_0:i32 temp_49_52:ptr->i32 
                    #found literal reg Some(s11) already exist with 6_0
    sd      s11,0(s10)
                    #      mu a_52:245 
                    #      a_52 = chi a_52:245 
                    #      new_var temp_50_52:ptr->i32 
                    #      temp_50_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(7_0)] 
    li      a0, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      a1, 7
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 5_0:i32 temp_50_52:ptr->i32 
                    #found literal reg Some(s9) already exist with 5_0
    sd      s9,0(a0)
                    #      mu a_52:251 
                    #      a_52 = chi a_52:251 
                    #      new_var temp_51_52:ptr->i32 
                    #      temp_51_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(8_0)] 
    li      a1, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      a3, 8
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 7_0:i32 temp_51_52:ptr->i32 
    li      a3, 7
    sd      a3,0(a1)
                    #      mu a_52:257 
                    #      a_52 = chi a_52:257 
                    #      new_var temp_52_52:ptr->i32 
                    #      temp_52_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(9_0)] 
    li      a3, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s5) already exist with 9_0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      store 8_0:i32 temp_52_52:ptr->i32 
    li      a4, 8
    sd      a4,0(a3)
                    #      mu a_52:263 
                    #      a_52 = chi a_52:263 
                    #      new_var i_52:i32 
                    #      i_52 = i32 0_0 
    li      a4, 0
                    #      new_var b_52:Array:i32:[Some(10_0)] 
                    #      new_var temp_53_52:i32 
                    #      temp_53_52 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a6, n
                    #occupy reg a6 with *n_0
    lw      s1,0(a6)
                    #      new_var temp_54_52:i32 
                    #      temp_54_52 =  Call i32 counting_sort_0(a_52, b_52, temp_53_52) 
                    #saved register dumping to mem
    sw      s1,32(sp)
    sd      s3,136(sp)
    sd      s6,128(sp)
    sd      s7,120(sp)
    sd      s8,112(sp)
    sd      s10,104(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,96(sp)
    mv      a0, a5
    sd      a1,88(sp)
    lw      a1,72(sp)
    sd      a2,152(sp)
    lw      a2,32(sp)
                    #arg load ended
    call    counting_sort
    sw      a0,28(sp)
                    #      i_52 = i32 temp_54_52 
                    #      jump label: while.head_70 
    j       .while.head_70
                    #      label while.head_70: 
.while.head_70:
                    #      new_var temp_55_69:i32 
                    #      temp_55_69 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    lw      a2,0(a1)
                    #      new_var temp_56_69:i1 
                    #      temp_56_69 = icmp i32 Slt i_52, temp_55_69 
    slt     a6,a4,a2
                    #      br i1 temp_56_69, label while.body_70, label while.exit_70 
    bnez    a6, .while.body_70
    j       .while.exit_70
                    #      label while.body_70: 
.while.body_70:
                    #      new_var tmp_71:i32 
                    #      new_var temp_57_71:ptr->i32 
                    #      new_var temp_58_71:i32 
                    #      temp_57_71 = getelementptr b_52:Array:i32:[Some(10_0)] [Some(i_52)] 
    li      a1, 0
    li      s1, 1
    mul     s2,s1,a4
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_58_71 = load temp_57_71:ptr->i32 
    lw      s3,0(a1)
                    #      tmp_71 = i32 temp_58_71 
    mv      s4, s3
                    #       Call void putint_0(tmp_71) 
                    #saved register dumping to mem
    sw      s2,72(sp)
    sw      s3,4(sp)
    sw      s4,16(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
    lw      a0,16(sp)
                    #arg load ended
    call    putint
                    #      tmp_71 = i32 10_0 
    li      a0, 10
                    #       Call void putch_0(tmp_71) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    lw      a0,16(sp)
                    #arg load ended
    call    putch
                    #      new_var temp_59_71:i32 
                    #      temp_59_71 = Add i32 i_52, 1_0 
    li      a0, 1
    add     s1,a4,a0
                    #      i_52 = i32 temp_59_71 
                    #      jump label: while.head_70 
    sd      a1,8(sp)
    lw      a0,28(sp)
    sw      s1,0(sp)
    sw      a2,24(sp)
    sb      a6,23(sp)
    j       .while.head_70
                    #      label while.exit_70: 
.while.exit_70:
                    #      ret 0_0 
    ld      ra,208(sp)
    ld      s0,200(sp)
    sw      a0,28(sp)
    li      a0, 0
    addi    sp,sp,216
    ret
.section        .data
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 0
