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
                    #      Define func_0 [a_16, b_16, c_16, d_16, e_16, f_16, g_16, h_16, i_16] -> func_ret_0 
    .globl func
    .type func,@function
func:
                    #mem layout:|i:4|none:4|ra_func:8|s0_func:8|a:4|none:4|b:8|c:4|none:4|d:8|e:4|f:4|g:8|h:4|index:4|temp_0:1|none:7|temp_1:8|temp_2:4|temp_3:4|temp_4:8|temp_5:4|temp_6:1|none:3|temp_7:8|temp_8:4|temp_9:4|temp_10:4|temp_11:4|temp_12:4|none:4
    addi    sp,sp,-152
    sd      ra,136(sp)
    sd      s0,128(sp)
    addi    s0,sp,152
                    #      new_var b_16:ptr->Array:i32:[Some(59_0)] 
                    #      new_var d_16:ptr->i32 
                    #      new_var g_16:ptr->i32 
                    #      alloc i32 index_18 
                    #      alloc i1 temp_0_20 
                    #      alloc ptr->i32 temp_1_22 
                    #      alloc i32 temp_2_22 
                    #      alloc i32 temp_3_22 
                    #      alloc ptr->i32 temp_4_18 
                    #      alloc i32 temp_5_18 
                    #      alloc i1 temp_6_28 
                    #      alloc ptr->i32 temp_7_30 
                    #      alloc i32 temp_8_30 
                    #      alloc i32 temp_9_30 
                    #      alloc i32 temp_10_30 
                    #      alloc i32 temp_11_30 
                    #      alloc i32 temp_12_18 
                    #      label L1_0: 
.L1_0:
                    #      index_18 = i32 0_0 
    li      s1, 0
                    #      jump label: while.head_21 
    j       .while.head_21
                    #      label while.head_21: 
.while.head_21:
                    #      new_var temp_0_20:i1 
                    #      temp_0_20 = icmp i32 Slt index_18, 10_0 
    li      s2, 10
    slt     s3,s1,s2
                    #      br i1 temp_0_20, label while.body_21, label while.exit_21 
    bnez    s3, .while.body_21
    j       .while.exit_21
                    #      label while.body_21: 
.while.body_21:
                    #      new_var temp_1_22:ptr->i32 
                    #      new_var temp_2_22:i32 
                    #      temp_1_22 = getelementptr b_16:ptr->Array:i32:[Some(59_0)] [Some(a_16), Some(index_18)] 
    li      s2, 0
    li      s4, 1
    add     s2,s2,a1
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_2_22 = load temp_1_22:ptr->i32 
    lw      s5,0(s2)
                    #       Call void putint_0(temp_2_22) 
                    #saved register dumping to mem
    sw      s1,72(sp)
    sd      s2,56(sp)
    sb      s3,71(sp)
    sw      s5,52(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,124(sp)
    lw      a0,52(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_3_22:i32 
                    #      temp_3_22 = Add i32 index_18, 1_0 
    li      s1, 1
    add     s2,a0,s1
                    #      index_18 = i32 temp_3_22 
    mv      a0, s2
                    #      jump label: while.head_21 
    sw      a0,72(sp)
    lw      a0,124(sp)
    sw      s2,48(sp)
    lw      s1,72(sp)
    j       .while.head_21
                    #      label while.exit_21: 
.while.exit_21:
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
    sw      s1,72(sp)
    sb      s3,71(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,124(sp)
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_4_18:ptr->i32 
                    #      new_var temp_5_18:i32 
                    #      temp_4_18 = getelementptr d_16:ptr->i32 [Some(c_16)] 
    li      a0, 0
    li      s1, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_5_18 = load temp_4_18:ptr->i32 
    lw      s2,0(a0)
                    #       Call void putint_0(temp_5_18) 
                    #saved register dumping to mem
    sw      s2,36(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,40(sp)
    lw      a0,36(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      jump label: while.head_29 
    j       .while.head_29
                    #      label while.head_29: 
.while.head_29:
                    #      new_var temp_6_28:i1 
                    #      temp_6_28 = icmp i32 Slt i_16, 10_0 
    li      s1, 10
    slt     s2,a0,s1
                    #      br i1 temp_6_28, label while.body_29, label while.exit_29 
    bnez    s2, .while.body_29
    j       .while.exit_29
                    #      label while.body_29: 
.while.body_29:
                    #      new_var temp_7_30:ptr->i32 
                    #      temp_7_30 = getelementptr g_16:ptr->i32 [Some(i_16)] 
    li      s1, 0
    li      s3, 1
    add     s1,s1,a6
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      new_var temp_8_30:i32 
                    #      temp_8_30 = Mul i32 h_16, 128875_0 
    li      s4, 128875
    mul     s5,a7,s4
                    #      new_var temp_9_30:i32 
                    #      temp_9_30 = Mod i32 temp_8_30, 3724_0 
    li      s6, 3724
    rem     s7,s5,s6
                    #      store temp_9_30:i32 temp_7_30:ptr->i32 
    sd      s7,0(s1)
                    #      mu g_16:67 
                    #      g_16 = chi g_16:67 
                    #      new_var temp_10_30:i32 
                    #      temp_10_30 = Add i32 i_16, 1_0 
                    #found literal reg Some(s3) already exist with 1_0
    add     s8,a0,s3
                    #      i_16 = i32 temp_10_30 
    mv      a0, s8
                    #      new_var temp_11_30:i32 
                    #      temp_11_30 = Add i32 h_16, 7_0 
    li      s9, 7
    add     s10,a7,s9
                    #      h_16 = i32 temp_11_30 
    mv      a7, s10
                    #      jump label: while.head_29 
    sw      s8,12(sp)
    sw      s5,20(sp)
    sw      a0,148(sp)
    sw      s10,8(sp)
    sb      s2,35(sp)
    sw      s7,16(sp)
    sd      s1,24(sp)
    j       .while.head_29
                    #      label while.exit_29: 
.while.exit_29:
                    #      new_var temp_12_18:i32 
                    #      temp_12_18 = Add i32 e_16, f_16 
    add     s1,a4,a5
                    #      ret temp_12_18 
    ld      ra,136(sp)
    ld      s0,128(sp)
    sw      s1,4(sp)
    sw      a0,148(sp)
    addi    sp,sp,152
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a:16348|b:12508|temp_13:8|temp_14:8|temp_15:8|temp_16:8|temp_17:8|temp_18:8|temp_19:8|temp_20:8|temp_21:8|ret:4|none:4|temp_22:8|temp_23:4|none:4|temp_24:8|temp_25:4|none:4|temp_26:8|temp_27:268|none:4|temp_28:8|temp_29:4|none:4|temp_30:8|temp_31:4|none:4|temp_32:8|temp_33:236|none:4|temp_34:8|temp_35:4|none:4|temp_36:8|temp_37:4|temp_38:4|temp_39:4|temp_40:1|none:3|temp_41:8|temp_42:4|temp_43:4
    li      a0, -29600
    li      a0, -29600
    add     sp,a0,sp
    li      a1, 29592
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 29584
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 29600
    li      a3, 29600
    add     s0,a3,sp
                    #      alloc Array:i32:[Some(61_0), Some(67_0)] a_36 
                    #      alloc Array:i32:[Some(53_0), Some(59_0)] b_36 
                    #      alloc ptr->i32 temp_13_36 
                    #      alloc ptr->i32 temp_14_36 
                    #      alloc ptr->i32 temp_15_36 
                    #      alloc ptr->i32 temp_16_36 
                    #      alloc ptr->i32 temp_17_36 
                    #      alloc ptr->i32 temp_18_36 
                    #      alloc ptr->i32 temp_19_36 
                    #      alloc ptr->i32 temp_20_36 
                    #      alloc ptr->i32 temp_21_36 
                    #      alloc i32 ret_36 
                    #      alloc ptr->i32 temp_22_36 
                    #      alloc i32 temp_23_36 
                    #      alloc ptr->i32 temp_24_36 
                    #      alloc i32 temp_25_36 
                    #      alloc ptr->i32 temp_26_36 
                    #      alloc Array:i32:[Some(67_0)] temp_27_36 
                    #      alloc ptr->i32 temp_28_36 
                    #      alloc i32 temp_29_36 
                    #      alloc ptr->i32 temp_30_36 
                    #      alloc i32 temp_31_36 
                    #      alloc ptr->i32 temp_32_36 
                    #      alloc Array:i32:[Some(59_0)] temp_33_36 
                    #      alloc ptr->i32 temp_34_36 
                    #      alloc i32 temp_35_36 
                    #      alloc ptr->i32 temp_36_36 
                    #      alloc i32 temp_37_36 
                    #      alloc i32 temp_38_36 
                    #      alloc i32 temp_39_36 
                    #      alloc i1 temp_40_50 
                    #      alloc ptr->i32 temp_41_52 
                    #      alloc i32 temp_42_52 
                    #      alloc i32 temp_43_52 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_36:Array:i32:[Some(61_0), Some(67_0)] 
                    #      new_var b_36:Array:i32:[Some(53_0), Some(59_0)] 
                    #      new_var temp_13_36:ptr->i32 
                    #      temp_13_36 = getelementptr a_36:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0), Some(1_0)] 
    li      a4, 0
    li      a5, 67
    li      a6, 17
    mul     a7,a5,a6
    add     a4,a4,a7
    li      s1, 1
    li      s2, 1
    add     a4,a4,a7
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      store 6_0:i32 temp_13_36:ptr->i32 
    li      s3, 6
    sd      s3,0(a4)
                    #      mu a_36:90 
                    #      a_36 = chi a_36:90 
                    #      new_var temp_14_36:ptr->i32 
                    #      temp_14_36 = getelementptr a_36:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0), Some(3_0)] 
    li      s4, 0
                    #found literal reg Some(a5) already exist with 67_0
                    #found literal reg Some(a6) already exist with 17_0
    add     s4,s4,a7
                    #found literal reg Some(s1) already exist with 1_0
    li      s5, 3
    add     s4,s4,a7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      store 7_0:i32 temp_14_36:ptr->i32 
    li      s6, 7
    sd      s6,0(s4)
                    #      mu a_36:96 
                    #      a_36 = chi a_36:96 
                    #      new_var temp_15_36:ptr->i32 
                    #      temp_15_36 = getelementptr a_36:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0), Some(4_0)] 
    li      s7, 0
                    #found literal reg Some(a5) already exist with 67_0
                    #found literal reg Some(a6) already exist with 17_0
    add     s7,s7,a7
                    #found literal reg Some(s1) already exist with 1_0
    li      s8, 4
    add     s7,s7,a7
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 4_0:i32 temp_15_36:ptr->i32 
                    #found literal reg Some(s8) already exist with 4_0
    sd      s8,0(s7)
                    #      mu a_36:102 
                    #      a_36 = chi a_36:102 
                    #      new_var temp_16_36:ptr->i32 
                    #      temp_16_36 = getelementptr a_36:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0), Some(7_0)] 
    li      s9, 0
                    #found literal reg Some(a5) already exist with 67_0
                    #found literal reg Some(a6) already exist with 17_0
    add     s9,s9,a7
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s6) already exist with 7_0
    add     s9,s9,a7
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store 9_0:i32 temp_16_36:ptr->i32 
    li      s10, 9
    sd      s10,0(s9)
                    #      mu a_36:108 
                    #      a_36 = chi a_36:108 
                    #      new_var temp_17_36:ptr->i32 
                    #      temp_17_36 = getelementptr a_36:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0), Some(11_0)] 
    li      s11, 0
                    #found literal reg Some(a5) already exist with 67_0
                    #found literal reg Some(a6) already exist with 17_0
    add     s11,s11,a7
                    #found literal reg Some(s1) already exist with 1_0
    li      a0, 11
    add     s11,s11,a7
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      store 11_0:i32 temp_17_36:ptr->i32 
                    #found literal reg Some(a0) already exist with 11_0
    sd      a0,0(s11)
                    #      mu a_36:114 
                    #      a_36 = chi a_36:114 
                    #      new_var temp_18_36:ptr->i32 
                    #      temp_18_36 = getelementptr b_36:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0), Some(1_0)] 
    li      a0, 0
    li      a1, 59
                    #found literal reg Some(s3) already exist with 6_0
    mul     a2,a1,s3
    add     a0,a0,a2
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s2) already exist with 1_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 1_0:i32 temp_18_36:ptr->i32 
                    #found literal reg Some(s1) already exist with 1_0
    sd      s1,0(a0)
                    #      mu b_36:120 
                    #      b_36 = chi b_36:120 
                    #      new_var temp_19_36:ptr->i32 
                    #      temp_19_36 = getelementptr b_36:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0), Some(2_0)] 
    li      a1, 0
    li      a3, 59
                    #found literal reg Some(s3) already exist with 6_0
    add     a1,a1,a2
                    #found literal reg Some(s1) already exist with 1_0
    li      a3, 2
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 2_0:i32 temp_19_36:ptr->i32 
                    #found literal reg Some(a3) already exist with 2_0
    sd      a3,0(a1)
                    #      mu b_36:126 
                    #      b_36 = chi b_36:126 
                    #      new_var temp_20_36:ptr->i32 
                    #      temp_20_36 = getelementptr b_36:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0), Some(3_0)] 
    li      a3, 0
    li      a5, 59
                    #found literal reg Some(s3) already exist with 6_0
    add     a3,a3,a2
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s5) already exist with 3_0
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      store 3_0:i32 temp_20_36:ptr->i32 
                    #found literal reg Some(s5) already exist with 3_0
    sd      s5,0(a3)
                    #      mu b_36:132 
                    #      b_36 = chi b_36:132 
                    #      new_var temp_21_36:ptr->i32 
                    #      temp_21_36 = getelementptr b_36:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0), Some(9_0)] 
    li      a5, 0
    li      a6, 59
                    #found literal reg Some(s3) already exist with 6_0
    add     a5,a5,a2
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s10) already exist with 9_0
    add     a5,a5,a2
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      store 9_0:i32 temp_21_36:ptr->i32 
                    #found literal reg Some(s10) already exist with 9_0
    sd      s10,0(a5)
                    #      mu b_36:138 
                    #      b_36 = chi b_36:138 
                    #      new_var ret_36:i32 
                    #      new_var temp_22_36:ptr->i32 
                    #      new_var temp_23_36:i32 
                    #      temp_22_36 = getelementptr a_36:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0), Some(1_0)] 
    li      a6, 0
    li      s1, 67
    li      s2, 17
    add     a6,a6,a7
    li      s1, 1
    li      s2, 1
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_23_36 = load temp_22_36:ptr->i32 
    lw      s1,0(a6)
                    #      new_var temp_24_36:ptr->i32 
                    #      new_var temp_25_36:i32 
                    #      temp_24_36 = getelementptr a_36:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0), Some(3_0)] 
    li      s2, 0
    li      s3, 67
    li      s5, 17
    add     s2,s2,a7
    li      s3, 1
    li      s5, 3
    add     s2,s2,a7
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_25_36 = load temp_24_36:ptr->i32 
    lw      s3,0(s2)
                    #      new_var temp_26_36:ptr->i32 
                    #      new_var temp_27_36:Array:i32:[Some(67_0)] 
                    #      temp_26_36 = getelementptr a_36:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0)] 
    li      s5, 0
    li      s6, 67
    li      s8, 17
    add     s5,s5,a7
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_27_36 = load temp_26_36:ptr->i32 
    lw      s6,0(s5)
                    #      new_var temp_28_36:ptr->i32 
                    #      new_var temp_29_36:i32 
                    #      temp_28_36 = getelementptr b_36:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0), Some(3_0)] 
    li      s8, 0
    li      s10, 59
    sd      a0,680(sp)
    li      a0, 6
    add     s8,s8,a2
    li      a0, 1
    li      s10, 3
    add     s8,s8,a2
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_29_36 = load temp_28_36:ptr->i32 
    lw      a0,0(s8)
                    #      new_var temp_30_36:ptr->i32 
                    #      new_var temp_31_36:i32 
                    #      temp_30_36 = getelementptr b_36:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0), Some(0_0)] 
    li      s10, 0
    sw      a0,324(sp)
    li      a0, 59
    sd      a1,672(sp)
    li      a1, 6
    add     s10,s10,a2
    li      a0, 1
    li      a1, 0
    add     s10,s10,a2
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_31_36 = load temp_30_36:ptr->i32 
    lw      a0,0(s10)
                    #      new_var temp_32_36:ptr->i32 
                    #      new_var temp_33_36:Array:i32:[Some(59_0)] 
                    #      temp_32_36 = getelementptr b_36:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0)] 
    li      a1, 0
    sw      a0,308(sp)
    li      a0, 59
    li      a2, 13232
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 6
    sd      a3,664(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_33_36 = load temp_32_36:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_34_36:ptr->i32 
                    #      new_var temp_35_36:i32 
                    #      temp_34_36 = getelementptr b_36:Array:i32:[Some(53_0), Some(59_0)] [Some(34_0), Some(4_0)] 
    li      a2, 0
    sw      a0,292(sp)
    li      a0, 59
    sd      a1,296(sp)
    li      a1, 34
    add     a2,a2,a3
    li      a0, 1
    li      a1, 4
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_35_36 = load temp_34_36:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_36_36:ptr->i32 
                    #      new_var temp_37_36:i32 
                    #      temp_36_36 = getelementptr b_36:Array:i32:[Some(53_0), Some(59_0)] [Some(51_0), Some(18_0)] 
    li      a1, 0
    sw      a0,44(sp)
    li      a0, 59
    sd      a2,48(sp)
    li      a2, 51
    add     a1,a1,a3
    li      a0, 1
    li      a2, 18
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_37_36 = load temp_36_36:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_38_36:i32 
                    #      temp_38_36 =  Call i32 func_0(temp_23_36, b_36, temp_25_36, temp_27_36, temp_29_36, temp_31_36, temp_33_36, temp_35_36, temp_37_36) 
                    #saved register dumping to mem
    sw      s1,636(sp)
    sd      s2,624(sp)
    sw      s3,620(sp)
    sd      s4,712(sp)
    sd      s5,608(sp)
    sw      s6,604(sp)
    sd      s7,704(sp)
    sd      s8,328(sp)
    sd      s9,696(sp)
    sd      s10,312(sp)
    sd      s11,688(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
    lw      a0,636(sp)
    sd      a1,32(sp)
    mv      a1, a3
    lw      a2,620(sp)
    li      a3, 13232
    add     a3,sp,a3
    sw      a3,0(a3)
    lw      a3,604(sp)
    sd      a4,720(sp)
    lw      a4,324(sp)
    sd      a5,656(sp)
    lw      a5,308(sp)
    sd      a6,640(sp)
    lw      a6,292(sp)
    li      a7, 29580
    add     a7,sp,a7
    sw      a7,0(a7)
    lw      a7,44(sp)
                    #arg load ended
    call    func
    sw      a0,24(sp)
                    #      new_var temp_39_36:i32 
                    #      temp_39_36 = Mul i32 temp_38_36, 3_0 
    li      a1, 3
    mul     a2,a0,a1
                    #      ret_36 = i32 temp_39_36 
    mv      a3, a2
                    #      jump label: while.head_51 
    j       .while.head_51
                    #      label while.head_51: 
.while.head_51:
                    #      new_var temp_40_50:i1 
                    #      temp_40_50 = icmp i32 Sge ret_36, 0_0 
    li      a1, 0
    slt     a4,a3,a1
    xori    a4,a4,1
                    #      br i1 temp_40_50, label while.body_51, label while.exit_51 
    bnez    a4, .while.body_51
    j       .while.exit_51
                    #      label while.body_51: 
.while.body_51:
                    #      new_var temp_41_52:ptr->i32 
                    #      new_var temp_42_52:i32 
                    #      temp_41_52 = getelementptr b_36:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0), Some(ret_36)] 
    li      a1, 0
    li      a5, 59
    li      a6, 6
    mul     a7,a5,a6
    add     a1,a1,a7
    li      s1, 1
    add     a1,a1,a7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_42_52 = load temp_41_52:ptr->i32 
    lw      s2,0(a1)
                    #       Call void putint_0(temp_42_52) 
                    #saved register dumping to mem
    sw      s2,4(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,24(sp)
    lw      a0,4(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #      new_var temp_43_52:i32 
                    #      temp_43_52 = Sub i32 ret_36, 1_0 
    li      a0, 1
    sub     s1,a3,a0
                    #      ret_36 = i32 temp_43_52 
    mv      a3, s1
                    #      jump label: while.head_51 
    sb      a4,19(sp)
    sw      s1,0(sp)
    sd      a1,8(sp)
    lw      a0,24(sp)
    li      a7, 13232
    add     a7,sp,a7
    sw      a7,0(a7)
    j       .while.head_51
                    #      label while.exit_51: 
.while.exit_51:
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,24(sp)
    li      a0, 10
                    #arg load ended
    call    putch
                    #      ret 0_0 
    li      a0, 29592
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 29584
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a0, 29592
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    li      a5, 29600
    li      a5, 29600
    add     sp,a5,sp
    ret
