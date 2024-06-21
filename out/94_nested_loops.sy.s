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
                    #      Define loop1_0 [x_18, y_18] -> loop1_ret_0 
    .globl loop1
    .type loop1,@function
loop1:
                    #mem layout:|ra_loop1:8|s0_loop1:8|x:4|y:4|a:4|b:4|c:4|d:4|e:4|f:4|g:4|temp_0:1|temp_1:1|temp_2:1|temp_3:1|temp_4:1|temp_5:1|temp_6:1|temp_7:1|temp_8:1|none:3|temp_9:8|temp_10:4|temp_11:4|temp_12:4|temp_13:4|temp_14:4|temp_15:4|temp_16:4|temp_17:4|temp_18:4|temp_19:4|temp_20:4|temp_21:4|temp_22:4|temp_23:4|temp_24:4|none:4
    addi    sp,sp,-136
    sd      ra,128(sp)
    sd      s0,120(sp)
    addi    s0,sp,136
                    #      alloc i32 a_20 
                    #      alloc i32 b_20 
                    #      alloc i32 c_20 
                    #      alloc i32 d_20 
                    #      alloc i32 e_20 
                    #      alloc i32 f_20 
                    #      alloc i32 g_20 
                    #      alloc i1 temp_0_23 
                    #      alloc i1 temp_1_23 
                    #      alloc i1 temp_2_23 
                    #      alloc i1 temp_3_27 
                    #      alloc i1 temp_4_31 
                    #      alloc i1 temp_5_35 
                    #      alloc i1 temp_6_39 
                    #      alloc i1 temp_7_43 
                    #      alloc i1 temp_8_47 
                    #      alloc ptr->i32 temp_9_49 
                    #      alloc i32 temp_10_49 
                    #      alloc i32 temp_11_49 
                    #      alloc i32 temp_12_49 
                    #      alloc i32 temp_13_49 
                    #      alloc i32 temp_14_49 
                    #      alloc i32 temp_15_49 
                    #      alloc i32 temp_16_49 
                    #      alloc i32 temp_17_49 
                    #      alloc i32 temp_18_49 
                    #      alloc i32 temp_19_45 
                    #      alloc i32 temp_20_41 
                    #      alloc i32 temp_21_37 
                    #      alloc i32 temp_22_33 
                    #      alloc i32 temp_23_29 
                    #      alloc i32 temp_24_25 
                    #      label L10_0: 
.L10_0:
                    #      new_var a_20:i32 
                    #      new_var b_20:i32 
                    #      new_var c_20:i32 
                    #      new_var d_20:i32 
                    #      new_var e_20:i32 
                    #      new_var f_20:i32 
                    #      new_var g_20:i32 
                    #      a_20 = i32 0_0 
    li      a2, 0
                    #      jump label: while.head_24 
    j       .while.head_24
                    #      label while.head_24: 
.while.head_24:
                    #      new_var temp_0_23:i1 
                    #      temp_0_23 = icmp i32 Slt y_18, a_20 
    slt     a3,a1,a2
                    #      new_var temp_1_23:i1 
                    #      temp_1_23 = icmp i32 Slt a_20, x_18 
    slt     a4,a2,a0
                    #      new_var temp_2_23:i1 
                    #      temp_2_23 = And i1 temp_1_23, temp_0_23 
    and     a5,a4,a3
                    #      br i1 temp_2_23, label while.body_24, label while.exit_24 
    bnez    a5, .while.body_24
    j       .while.exit_24
                    #      label while.body_24: 
.while.body_24:
                    #      b_20 = i32 0_0 
    li      a6, 0
                    #      jump label: while.head_28 
    j       .while.head_28
                    #      label while.head_28: 
.while.head_28:
                    #      new_var temp_3_27:i1 
                    #      temp_3_27 = icmp i32 Slt b_20, 2_0 
    li      a7, 2
    slt     s1,a6,a7
                    #      br i1 temp_3_27, label while.body_28, label while.exit_28 
    bnez    s1, .while.body_28
    j       .while.exit_28
                    #      label while.body_28: 
.while.body_28:
                    #      c_20 = i32 0_0 
    li      a7, 0
                    #      jump label: while.head_32 
    j       .while.head_32
                    #      label while.head_32: 
.while.head_32:
                    #      new_var temp_4_31:i1 
                    #      temp_4_31 = icmp i32 Slt c_20, 3_0 
    li      s2, 3
    slt     s3,a7,s2
                    #      br i1 temp_4_31, label while.body_32, label while.exit_32 
    bnez    s3, .while.body_32
    j       .while.exit_32
                    #      label while.body_32: 
.while.body_32:
                    #      d_20 = i32 0_0 
    li      s2, 0
                    #      jump label: while.head_36 
    j       .while.head_36
                    #      label while.head_36: 
.while.head_36:
                    #      new_var temp_5_35:i1 
                    #      temp_5_35 = icmp i32 Slt d_20, 4_0 
    li      s4, 4
    slt     s5,s2,s4
                    #      br i1 temp_5_35, label while.body_36, label while.exit_36 
    bnez    s5, .while.body_36
    j       .while.exit_36
                    #      label while.body_36: 
.while.body_36:
                    #      e_20 = i32 0_0 
    li      s4, 0
                    #      jump label: while.head_40 
    j       .while.head_40
                    #      label while.head_40: 
.while.head_40:
                    #      new_var temp_6_39:i1 
                    #      temp_6_39 = icmp i32 Slt e_20, 5_0 
    li      s6, 5
    slt     s7,s4,s6
                    #      br i1 temp_6_39, label while.body_40, label while.exit_40 
    bnez    s7, .while.body_40
    j       .while.exit_40
                    #      label while.body_40: 
.while.body_40:
                    #      f_20 = i32 0_0 
    li      s6, 0
                    #      jump label: while.head_44 
    j       .while.head_44
                    #      label while.head_44: 
.while.head_44:
                    #      new_var temp_7_43:i1 
                    #      temp_7_43 = icmp i32 Slt f_20, 6_0 
    li      s8, 6
    slt     s9,s6,s8
                    #      br i1 temp_7_43, label while.body_44, label while.exit_44 
    bnez    s9, .while.body_44
    j       .while.exit_44
                    #      label while.body_44: 
.while.body_44:
                    #      g_20 = i32 0_0 
    li      s8, 0
                    #      jump label: while.head_48 
    j       .while.head_48
                    #      label while.head_48: 
.while.head_48:
                    #      new_var temp_8_47:i1 
                    #      temp_8_47 = icmp i32 Slt g_20, 2_0 
    li      s10, 2
    slt     s11,s8,s10
                    #      br i1 temp_8_47, label while.body_48, label while.exit_48 
    bnez    s11, .while.body_48
    j       .while.exit_48
                    #      label while.body_48: 
.while.body_48:
                    #      new_var temp_9_49:ptr->i32 
                    #      temp_9_49 = getelementptr arr1_0:Array:i32:[Some(10_0), Some(2_0), Some(3_0), Some(4_0), Some(5_0), Some(6_0), Some(2_0)] [Some(a_20), Some(b_20), Some(c_20), Some(d_20), Some(e_20), Some(f_20), Some(g_20)] 
    li      s10, 0
    sw      a0,116(sp)
    li      a0, 1440
    sw      a1,112(sp)
    mul     a1,a0,a2
                    #occupy reg a1 with arr1_0
    add     s10,s10,a1
    li      a0, 720
    mul     a1,a0,a6
                    #occupy reg a1 with arr1_0
    add     s10,s10,a1
    li      a0, 240
    mul     a1,a0,a7
                    #occupy reg a1 with arr1_0
    add     s10,s10,a1
    li      a0, 60
    mul     a1,a0,s2
                    #occupy reg a1 with arr1_0
    add     s10,s10,a1
    li      a0, 12
    mul     a1,a0,s4
                    #occupy reg a1 with arr1_0
    add     s10,s10,a1
    li      a0, 2
    mul     a1,a0,s6
                    #occupy reg a1 with arr1_0
    add     s10,s10,a1
    li      a0, 1
    mul     a1,a0,s8
                    #occupy reg a1 with arr1_0
    add     s10,s10,a1
    slli s10,s10,2
    add     s10,s10,s10
                    #      new_var temp_10_49:i32 
                    #      temp_10_49 = Add i32 x_18, y_18 
    sw      a2,108(sp)
    add     a2,a0,a1
                    #      new_var temp_11_49:i32 
                    #      temp_11_49 = Add i32 g_20, temp_10_49 
    sw      a0,116(sp)
    add     a0,s8,a2
                    #      new_var temp_12_49:i32 
                    #      temp_12_49 = Add i32 f_20, temp_11_49 
    sw      a1,112(sp)
    add     a1,s6,a0
                    #      new_var temp_13_49:i32 
                    #      temp_13_49 = Add i32 e_20, temp_12_49 
    sw      a0,56(sp)
    add     a0,s4,a1
                    #      new_var temp_14_49:i32 
                    #      temp_14_49 = Add i32 d_20, temp_13_49 
    sw      a1,52(sp)
    add     a1,s2,a0
                    #      new_var temp_15_49:i32 
                    #      temp_15_49 = Add i32 c_20, temp_14_49 
    sw      a0,48(sp)
    add     a0,a7,a1
                    #      new_var temp_16_49:i32 
                    #      temp_16_49 = Add i32 b_20, temp_15_49 
    sw      a1,44(sp)
    add     a1,a6,a0
                    #      new_var temp_17_49:i32 
                    #      temp_17_49 = Add i32 a_20, temp_16_49 
    sw      a0,40(sp)
    sw      a2,60(sp)
    add     a2,a0,a1
                    #      store temp_17_49:i32 temp_9_49:ptr->i32 
    sd      a2,0(s10)
                    #      mu arr1_0:133 
                    #      arr1_0 = chi arr1_0:133 
                    #      new_var temp_18_49:i32 
                    #      temp_18_49 = Add i32 g_20, 1_0 
    sw      a0,108(sp)
    li      a0, 1
    sw      a1,36(sp)
    add     a1,s8,a0
                    #      g_20 = i32 temp_18_49 
                    #      jump label: while.head_48 
    sw      a1,28(sp)
    lw      a1,112(sp)
    lw      a0,116(sp)
    sb      s11,75(sp)
    sd      s10,64(sp)
    sw      a2,32(sp)
    lw      a2,108(sp)
    j       .while.head_48
                    #      label while.exit_48: 
.while.exit_48:
                    #      new_var temp_19_45:i32 
                    #      temp_19_45 = Add i32 f_20, 1_0 
    li      s10, 1
    sw      a0,116(sp)
    add     a0,s6,s10
                    #      f_20 = i32 temp_19_45 
                    #      jump label: while.head_44 
    sb      s9,76(sp)
    sw      a0,24(sp)
    lw      a0,116(sp)
    sb      s11,75(sp)
    sw      s8,84(sp)
    j       .while.head_44
                    #      label while.exit_44: 
.while.exit_44:
                    #      new_var temp_20_41:i32 
                    #      temp_20_41 = Add i32 e_20, 1_0 
    li      s8, 1
    add     s10,s4,s8
                    #      e_20 = i32 temp_20_41 
                    #      jump label: while.head_40 
    sb      s9,76(sp)
    sw      s6,88(sp)
    sb      s7,77(sp)
    sw      s10,20(sp)
    j       .while.head_40
                    #      label while.exit_40: 
.while.exit_40:
                    #      new_var temp_21_37:i32 
                    #      temp_21_37 = Add i32 d_20, 1_0 
    li      s6, 1
    add     s8,s2,s6
                    #      d_20 = i32 temp_21_37 
                    #      jump label: while.head_36 
    sb      s5,78(sp)
    sw      s4,92(sp)
    sb      s7,77(sp)
    sw      s8,16(sp)
    j       .while.head_36
                    #      label while.exit_36: 
.while.exit_36:
                    #      new_var temp_22_33:i32 
                    #      temp_22_33 = Add i32 c_20, 1_0 
    li      s4, 1
    add     s6,a7,s4
                    #      c_20 = i32 temp_22_33 
                    #      jump label: while.head_32 
    sb      s5,78(sp)
    sb      s3,79(sp)
    sw      s6,12(sp)
    sw      s2,96(sp)
    j       .while.head_32
                    #      label while.exit_32: 
.while.exit_32:
                    #      new_var temp_23_29:i32 
                    #      temp_23_29 = Add i32 b_20, 1_0 
    li      s2, 1
    add     s4,a6,s2
                    #      b_20 = i32 temp_23_29 
                    #      jump label: while.head_28 
    sw      a7,100(sp)
    sb      s1,80(sp)
    sb      s3,79(sp)
    sw      s4,8(sp)
    j       .while.head_28
                    #      label while.exit_28: 
.while.exit_28:
                    #      new_var temp_24_25:i32 
                    #      temp_24_25 = Add i32 a_20, 1_0 
    li      a7, 1
    add     s2,a2,a7
                    #      a_20 = i32 temp_24_25 
                    #      jump label: while.head_24 
    sb      a4,82(sp)
    sb      s1,80(sp)
    sw      a6,104(sp)
    sw      s2,4(sp)
    sb      a3,83(sp)
    sb      a5,81(sp)
    j       .while.head_24
                    #      label while.exit_24: 
.while.exit_24:
                    #      Define loop2_0 [] -> loop2_ret_0 
    .globl loop2
    .type loop2,@function
loop2:
                    #mem layout:|ra_loop2:8|s0_loop2:8|a:4|b:4|c:4|d:4|e:4|f:4|g:4|temp_25:1|temp_26:1|temp_27:1|temp_28:1|temp_29:1|temp_30:1|temp_31:1|none:5|temp_32:8|temp_33:4|temp_34:4|temp_35:4|temp_36:4|temp_37:4|temp_38:4|temp_39:4|temp_40:4|temp_41:4|temp_42:4
    addi    sp,sp,-104
    sd      ra,96(sp)
    sd      s0,88(sp)
    addi    s0,sp,104
                    #      alloc i32 a_59 
                    #      alloc i32 b_59 
                    #      alloc i32 c_59 
                    #      alloc i32 d_59 
                    #      alloc i32 e_59 
                    #      alloc i32 f_59 
                    #      alloc i32 g_59 
                    #      alloc i1 temp_25_62 
                    #      alloc i1 temp_26_66 
                    #      alloc i1 temp_27_70 
                    #      alloc i1 temp_28_74 
                    #      alloc i1 temp_29_78 
                    #      alloc i1 temp_30_82 
                    #      alloc i1 temp_31_86 
                    #      alloc ptr->i32 temp_32_88 
                    #      alloc i32 temp_33_88 
                    #      alloc i32 temp_34_88 
                    #      alloc i32 temp_35_88 
                    #      alloc i32 temp_36_88 
                    #      alloc i32 temp_37_84 
                    #      alloc i32 temp_38_80 
                    #      alloc i32 temp_39_76 
                    #      alloc i32 temp_40_72 
                    #      alloc i32 temp_41_68 
                    #      alloc i32 temp_42_64 
                    #      label L9_0: 
.L9_0:
                    #      new_var a_59:i32 
                    #      new_var b_59:i32 
                    #      new_var c_59:i32 
                    #      new_var d_59:i32 
                    #      new_var e_59:i32 
                    #      new_var f_59:i32 
                    #      new_var g_59:i32 
                    #      a_59 = i32 0_0 
    li      a0, 0
                    #      jump label: while.head_63 
    j       .while.head_63
                    #      label while.head_63: 
.while.head_63:
                    #      new_var temp_25_62:i1 
                    #      temp_25_62 = icmp i32 Slt a_59, 10_0 
    li      a1, 10
    slt     a2,a0,a1
                    #      br i1 temp_25_62, label while.body_63, label while.exit_63 
    bnez    a2, .while.body_63
    j       .while.exit_63
                    #      label while.body_63: 
.while.body_63:
                    #      b_59 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_67 
    j       .while.head_67
                    #      label while.head_67: 
.while.head_67:
                    #      new_var temp_26_66:i1 
                    #      temp_26_66 = icmp i32 Slt b_59, 2_0 
    li      a3, 2
    slt     a4,a1,a3
                    #      br i1 temp_26_66, label while.body_67, label while.exit_67 
    bnez    a4, .while.body_67
    j       .while.exit_67
                    #      label while.body_67: 
.while.body_67:
                    #      c_59 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_71 
    j       .while.head_71
                    #      label while.head_71: 
.while.head_71:
                    #      new_var temp_27_70:i1 
                    #      temp_27_70 = icmp i32 Slt c_59, 3_0 
    li      a5, 3
    slt     a6,a3,a5
                    #      br i1 temp_27_70, label while.body_71, label while.exit_71 
    bnez    a6, .while.body_71
    j       .while.exit_71
                    #      label while.body_71: 
.while.body_71:
                    #      d_59 = i32 0_0 
    li      a5, 0
                    #      jump label: while.head_75 
    j       .while.head_75
                    #      label while.head_75: 
.while.head_75:
                    #      new_var temp_28_74:i1 
                    #      temp_28_74 = icmp i32 Slt d_59, 2_0 
    li      a7, 2
    slt     s1,a5,a7
                    #      br i1 temp_28_74, label while.body_75, label while.exit_75 
    bnez    s1, .while.body_75
    j       .while.exit_75
                    #      label while.body_75: 
.while.body_75:
                    #      e_59 = i32 0_0 
    li      a7, 0
                    #      jump label: while.head_79 
    j       .while.head_79
                    #      label while.head_79: 
.while.head_79:
                    #      new_var temp_29_78:i1 
                    #      temp_29_78 = icmp i32 Slt e_59, 4_0 
    li      s2, 4
    slt     s3,a7,s2
                    #      br i1 temp_29_78, label while.body_79, label while.exit_79 
    bnez    s3, .while.body_79
    j       .while.exit_79
                    #      label while.body_79: 
.while.body_79:
                    #      f_59 = i32 0_0 
    li      s2, 0
                    #      jump label: while.head_83 
    j       .while.head_83
                    #      label while.head_83: 
.while.head_83:
                    #      new_var temp_30_82:i1 
                    #      temp_30_82 = icmp i32 Slt f_59, 8_0 
    li      s4, 8
    slt     s5,s2,s4
                    #      br i1 temp_30_82, label while.body_83, label while.exit_83 
    bnez    s5, .while.body_83
    j       .while.exit_83
                    #      label while.body_83: 
.while.body_83:
                    #      g_59 = i32 0_0 
    li      s4, 0
                    #      jump label: while.head_87 
    j       .while.head_87
                    #      label while.head_87: 
.while.head_87:
                    #      new_var temp_31_86:i1 
                    #      temp_31_86 = icmp i32 Slt g_59, 7_0 
    li      s6, 7
    slt     s7,s4,s6
                    #      br i1 temp_31_86, label while.body_87, label while.exit_87 
    bnez    s7, .while.body_87
    j       .while.exit_87
                    #      label while.body_87: 
.while.body_87:
                    #      new_var temp_32_88:ptr->i32 
                    #      temp_32_88 = getelementptr arr2_0:Array:i32:[Some(10_0), Some(2_0), Some(3_0), Some(2_0), Some(4_0), Some(8_0), Some(7_0)] [Some(a_59), Some(b_59), Some(c_59), Some(d_59), Some(e_59), Some(f_59), Some(g_59)] 
    li      s6, 0
    li      s8, 2688
    mul     s9,s8,a0
                    #occupy reg s9 with arr2_0
    add     s6,s6,s9
    li      s10, 1344
    mul     s11,s10,a1
                    #occupy reg s11 with arr2_0
    add     s6,s6,s11
    li      s8, 448
    mul     s9,s8,a3
                    #occupy reg s9 with arr2_0
    add     s6,s6,s9
    li      s8, 224
    mul     s9,s8,a5
                    #occupy reg s9 with arr2_0
    add     s6,s6,s9
    li      s8, 56
    mul     s9,s8,a7
                    #occupy reg s9 with arr2_0
    add     s6,s6,s9
    li      s8, 7
    mul     s9,s8,s2
                    #occupy reg s9 with arr2_0
    add     s6,s6,s9
    li      s8, 1
    mul     s9,s8,s4
                    #occupy reg s9 with arr2_0
    add     s6,s6,s9
    slli s6,s6,2
    add     s6,s6,s6
                    #      new_var temp_33_88:i32 
                    #      temp_33_88 = Add i32 d_59, g_59 
    add     s8,a5,s4
                    #      new_var temp_34_88:i32 
                    #      temp_34_88 = Add i32 b_59, temp_33_88 
    add     s9,a1,s8
                    #      new_var temp_35_88:i32 
                    #      temp_35_88 = Add i32 a_59, temp_34_88 
    add     s10,a0,s9
                    #      store temp_35_88:i32 temp_32_88:ptr->i32 
    sd      s10,0(s6)
                    #      mu arr2_0:253 
                    #      arr2_0 = chi arr2_0:253 
                    #      new_var temp_36_88:i32 
                    #      temp_36_88 = Add i32 g_59, 1_0 
    li      s11, 1
    sw      a0,84(sp)
    add     a0,s4,s11
                    #      g_59 = i32 temp_36_88 
                    #      jump label: while.head_87 
    sb      s7,53(sp)
    sw      s8,36(sp)
    sw      s10,28(sp)
    sw      s9,32(sp)
    sd      s6,40(sp)
    sw      a0,24(sp)
    lw      a0,84(sp)
    j       .while.head_87
                    #      label while.exit_87: 
.while.exit_87:
                    #      new_var temp_37_84:i32 
                    #      temp_37_84 = Add i32 f_59, 1_0 
    li      s6, 1
    add     s8,s2,s6
                    #      f_59 = i32 temp_37_84 
                    #      jump label: while.head_83 
    sb      s7,53(sp)
    sw      s8,20(sp)
    sw      s4,60(sp)
    sb      s5,54(sp)
    j       .while.head_83
                    #      label while.exit_83: 
.while.exit_83:
                    #      new_var temp_38_80:i32 
                    #      temp_38_80 = Add i32 e_59, 1_0 
    li      s4, 1
    add     s6,a7,s4
                    #      e_59 = i32 temp_38_80 
                    #      jump label: while.head_79 
    sb      s3,55(sp)
    sw      s6,16(sp)
    sw      s2,64(sp)
    sb      s5,54(sp)
    j       .while.head_79
                    #      label while.exit_79: 
.while.exit_79:
                    #      new_var temp_39_76:i32 
                    #      temp_39_76 = Add i32 d_59, 1_0 
    li      s2, 1
    add     s4,a5,s2
                    #      d_59 = i32 temp_39_76 
                    #      jump label: while.head_75 
    sw      a7,68(sp)
    sw      s4,12(sp)
    sb      s3,55(sp)
    sb      s1,56(sp)
    j       .while.head_75
                    #      label while.exit_75: 
.while.exit_75:
                    #      new_var temp_40_72:i32 
                    #      temp_40_72 = Add i32 c_59, 1_0 
    li      a7, 1
    add     s2,a3,a7
                    #      c_59 = i32 temp_40_72 
                    #      jump label: while.head_71 
    sb      a6,57(sp)
    sw      a5,72(sp)
    sb      s1,56(sp)
    sw      s2,8(sp)
    j       .while.head_71
                    #      label while.exit_71: 
.while.exit_71:
                    #      new_var temp_41_68:i32 
                    #      temp_41_68 = Add i32 b_59, 1_0 
    li      a5, 1
    add     a7,a1,a5
                    #      b_59 = i32 temp_41_68 
                    #      jump label: while.head_67 
    sb      a6,57(sp)
    sw      a7,4(sp)
    sw      a3,76(sp)
    sb      a4,58(sp)
    j       .while.head_67
                    #      label while.exit_67: 
.while.exit_67:
                    #      new_var temp_42_64:i32 
                    #      temp_42_64 = Add i32 a_59, 1_0 
    li      a3, 1
    add     a5,a0,a3
                    #      a_59 = i32 temp_42_64 
                    #      jump label: while.head_63 
    sw      a1,80(sp)
    sb      a2,59(sp)
    sw      a5,0(sp)
    sb      a4,58(sp)
    j       .while.head_63
                    #      label while.exit_63: 
.while.exit_63:
                    #      Define loop3_0 [h_97, i_97, j_97, k_97, l_97, m_97, n_97] -> loop3_ret_0 
    .globl loop3
    .type loop3,@function
loop3:
                    #mem layout:|ra_loop3:8|s0_loop3:8|h:4|i:4|j:4|k:4|l:4|m:4|n:4|a:4|b:4|c:4|d:4|e:4|f:4|g:4|ans:4|temp_43:1|temp_44:1|temp_45:1|temp_46:1|temp_47:1|temp_48:1|temp_49:1|none:1|temp_50:107520|none:4|temp_51:8|temp_52:4|temp_53:57600|none:4|temp_54:8|temp_55:4|temp_56:4|temp_57:4|temp_58:4|temp_59:4|temp_60:1|none:3|temp_61:4|temp_62:1|none:3|temp_63:4|temp_64:1|none:3|temp_65:4|temp_66:1|none:3|temp_67:4|temp_68:1|none:3|temp_69:4|temp_70:1|none:3|temp_71:4|temp_72:1|none:3
    li      a7, -165304
    li      a7, -165304
    add     sp,a7,sp
    li      s1, 165296
    add     s1,sp,s1
    sd      ra,0(s1)
    li      s2, 165288
    add     s2,sp,s2
    sd      s0,0(s2)
    li      s3, 165304
    li      s3, 165304
    add     s0,s3,sp
                    #      alloc i32 a_99 
                    #      alloc i32 b_99 
                    #      alloc i32 c_99 
                    #      alloc i32 d_99 
                    #      alloc i32 e_99 
                    #      alloc i32 f_99 
                    #      alloc i32 g_99 
                    #      alloc i32 ans_99 
                    #      alloc i1 temp_43_103 
                    #      alloc i1 temp_44_107 
                    #      alloc i1 temp_45_111 
                    #      alloc i1 temp_46_115 
                    #      alloc i1 temp_47_119 
                    #      alloc i1 temp_48_123 
                    #      alloc i1 temp_49_127 
                    #      alloc Array:i32:[Some(10_0), Some(2_0), Some(3_0), Some(2_0), Some(4_0), Some(8_0), Some(7_0)] temp_50_129 
                    #      alloc ptr->i32 temp_51_129 
                    #      alloc i32 temp_52_129 
                    #      alloc Array:i32:[Some(10_0), Some(2_0), Some(3_0), Some(4_0), Some(5_0), Some(6_0), Some(2_0)] temp_53_129 
                    #      alloc ptr->i32 temp_54_129 
                    #      alloc i32 temp_55_129 
                    #      alloc i32 temp_56_129 
                    #      alloc i32 temp_57_129 
                    #      alloc i32 temp_58_129 
                    #      alloc i32 temp_59_129 
                    #      alloc i1 temp_60_132 
                    #      alloc i32 temp_61_125 
                    #      alloc i1 temp_62_136 
                    #      alloc i32 temp_63_121 
                    #      alloc i1 temp_64_140 
                    #      alloc i32 temp_65_117 
                    #      alloc i1 temp_66_144 
                    #      alloc i32 temp_67_113 
                    #      alloc i1 temp_68_148 
                    #      alloc i32 temp_69_109 
                    #      alloc i1 temp_70_152 
                    #      alloc i32 temp_71_105 
                    #      alloc i1 temp_72_156 
                    #      label L1_0: 
.L1_0:
                    #      new_var a_99:i32 
                    #      new_var b_99:i32 
                    #      new_var c_99:i32 
                    #      new_var d_99:i32 
                    #      new_var e_99:i32 
                    #      new_var f_99:i32 
                    #      new_var g_99:i32 
                    #      ans_99 = i32 0_0 
    li      s4, 0
                    #      a_99 = i32 0_0 
    li      s5, 0
                    #      jump label: while.head_104 
    j       .while.head_104
                    #      label while.head_104: 
.while.head_104:
                    #      new_var temp_43_103:i1 
                    #      temp_43_103 = icmp i32 Slt a_99, 10_0 
    li      a7, 10
    slt     s1,s5,a7
                    #      br i1 temp_43_103, label while.body_104, label while.exit_104 
    bnez    s1, .while.body_104
    j       .while.exit_104
                    #      label while.body_104: 
.while.body_104:
                    #      b_99 = i32 0_0 
    li      a7, 0
                    #      jump label: while.head_108 
    j       .while.head_108
                    #      label while.head_108: 
.while.head_108:
                    #      new_var temp_44_107:i1 
                    #      temp_44_107 = icmp i32 Slt b_99, 100_0 
    li      s2, 100
    slt     s3,a7,s2
                    #      br i1 temp_44_107, label while.body_108, label while.exit_108 
    bnez    s3, .while.body_108
    j       .while.exit_108
                    #      label while.body_108: 
.while.body_108:
                    #      c_99 = i32 0_0 
    li      s2, 0
                    #      jump label: while.head_112 
    j       .while.head_112
                    #      label while.head_112: 
.while.head_112:
                    #      new_var temp_45_111:i1 
                    #      temp_45_111 = icmp i32 Slt c_99, 1000_0 
    li      s6, 1000
    slt     s7,s2,s6
                    #      br i1 temp_45_111, label while.body_112, label while.exit_112 
    bnez    s7, .while.body_112
    j       .while.exit_112
                    #      label while.body_112: 
.while.body_112:
                    #      d_99 = i32 0_0 
    li      s6, 0
                    #      jump label: while.head_116 
    j       .while.head_116
                    #      label while.head_116: 
.while.head_116:
                    #      new_var temp_46_115:i1 
                    #      temp_46_115 = icmp i32 Slt d_99, 10000_0 
    li      s8, 10000
    slt     s9,s6,s8
                    #      br i1 temp_46_115, label while.body_116, label while.exit_116 
    bnez    s9, .while.body_116
    j       .while.exit_116
                    #      label while.body_116: 
.while.body_116:
                    #      e_99 = i32 0_0 
    li      s8, 0
                    #      jump label: while.head_120 
    j       .while.head_120
                    #      label while.head_120: 
.while.head_120:
                    #      new_var temp_47_119:i1 
                    #      temp_47_119 = icmp i32 Slt e_99, 100000_0 
    li      s10, 100000
    slt     s11,s8,s10
                    #      br i1 temp_47_119, label while.body_120, label while.exit_120 
    bnez    s11, .while.body_120
    j       .while.exit_120
                    #      label while.body_120: 
.while.body_120:
                    #      f_99 = i32 0_0 
    li      s10, 0
                    #      jump label: while.head_124 
    j       .while.head_124
                    #      label while.head_124: 
.while.head_124:
                    #      new_var temp_48_123:i1 
                    #      temp_48_123 = icmp i32 Slt f_99, 1000000_0 
    li      a0, 165284
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000000
    li      a1, 165280
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s10,a0
                    #      br i1 temp_48_123, label while.body_124, label while.exit_124 
    bnez    a1, .while.body_124
    j       .while.exit_124
                    #      label while.body_124: 
.while.body_124:
                    #      g_99 = i32 0_0 
    li      a0, 0
                    #      jump label: while.head_128 
    j       .while.head_128
                    #      label while.head_128: 
.while.head_128:
                    #      new_var temp_49_127:i1 
                    #      temp_49_127 = icmp i32 Slt g_99, 10000000_0 
    li      a1, 165222
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 10000000
    li      a2, 165276
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a0,a1
                    #      br i1 temp_49_127, label while.body_128, label while.exit_128 
    bnez    a2, .while.body_128
    j       .while.exit_128
                    #      label while.body_128: 
.while.body_128:
                    #      new_var temp_50_129:Array:i32:[Some(10_0), Some(2_0), Some(3_0), Some(2_0), Some(4_0), Some(8_0), Some(7_0)] 
                    #      temp_50_129 = load *arr2_0:ptr->Array:i32:[Some(2_0), Some(3_0), Some(2_0), Some(4_0), Some(8_0), Some(7_0)] 
                    #   load label arr2 as ptr to reg
    la      a1, arr2
                    #occupy reg a1 with *arr2_0
    li      a0, 165232
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_51_129:ptr->i32 
                    #      new_var temp_52_129:i32 
                    #      temp_51_129 = getelementptr temp_50_129:Array:i32:[Some(10_0), Some(2_0), Some(3_0), Some(2_0), Some(4_0), Some(8_0), Some(7_0)] [Some(a_99), Some(b_99), Some(c_99), Some(d_99), Some(e_99), Some(f_99), Some(g_99)] 
    li      a1, 0
    li      a0, 165216
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2688
    li      a2, 165221
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a0,s5
    add     a1,a1,a2
    li      a0, 1344
    add     a1,a1,a2
    li      a0, 448
    add     a1,a1,a2
    li      a0, 224
    add     a1,a1,a2
    li      a0, 56
    add     a1,a1,a2
    li      a0, 7
    add     a1,a1,a2
    li      a0, 1
    li      a2, 165216
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 165272
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_52_129 = load temp_51_129:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_53_129:Array:i32:[Some(10_0), Some(2_0), Some(3_0), Some(4_0), Some(5_0), Some(6_0), Some(2_0)] 
                    #      temp_53_129 = load *arr1_0:ptr->Array:i32:[Some(2_0), Some(3_0), Some(4_0), Some(5_0), Some(6_0), Some(2_0)] 
    li      a0, 57684
    add     a0,sp,a0
    sw      a0,0(a0)
                    #   load label arr1 as ptr to reg
    la      a0, arr1
                    #occupy reg a0 with *arr1_0
    li      a1, 57688
    add     a1,sp,a1
    sd      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_54_129:ptr->i32 
                    #      new_var temp_55_129:i32 
                    #      temp_54_129 = getelementptr temp_53_129:Array:i32:[Some(10_0), Some(2_0), Some(3_0), Some(4_0), Some(5_0), Some(6_0), Some(2_0)] [Some(a_99), Some(b_99), Some(c_99), Some(d_99), Some(e_99), Some(f_99), Some(g_99)] 
    li      a0, 0
    li      a1, 57680
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1440
    li      a2, 165232
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    li      a1, 720
    add     a0,a0,a2
    li      a1, 240
    add     a0,a0,a2
    li      a1, 60
    add     a0,a0,a2
    li      a1, 12
    add     a0,a0,a2
    li      a1, 2
    add     a0,a0,a2
    li      a1, 1
    li      a2, 57680
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 165216
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_55_129 = load temp_54_129:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_56_129:i32 
                    #      temp_56_129 = Add i32 temp_55_129, temp_52_129 
    sd      a0,72(sp)
    li      a2, 165232
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a1,a0
                    #      new_var temp_57_129:i32 
                    #      temp_57_129 = Mod i32 ans_99, 817_0 
    li      a0, 57684
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 817
    sw      a1,68(sp)
    rem     a1,s4,a0
                    #      new_var temp_58_129:i32 
                    #      temp_58_129 = Add i32 temp_57_129, temp_56_129 
    add     a0,a1,a2
                    #      ans_99 = i32 temp_58_129 
                    #      new_var temp_59_129:i32 
                    #      temp_59_129 = Add i32 g_99, 1_0 
    sw      a0,56(sp)
    sw      a1,60(sp)
    li      a1, 1
    sw      a2,64(sp)
    add     a2,a0,a1
                    #      g_99 = i32 temp_59_129 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_60_132:i1 
                    #      temp_60_132 = icmp i32 Sge g_99, n_97 
    slt     a1,a0,a6
    xori    a1,a1,1
                    #      br i1 temp_60_132, label branch_true_133, label branch_false_133 
    bnez    a1, .branch_true_133
    j       .branch_false_133
                    #      label branch_true_133: 
.branch_true_133:
                    #      jump label: while.exit_128 
    li      a3, 57680
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a0, 165232
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 165272
    add     a0,sp,a0
    lw      a3,0(a0)
    sw      a2,52(sp)
    li      a0, 165272
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 165221
    add     a0,sp,a0
    lb      a2,0(a0)
    sb      a1,51(sp)
    li      a0, 165221
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a4, 165268
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 165232
    add     a4,sp,a4
    lw      a0,0(a4)
    j       .while.exit_128
                    #      label while.exit_128: 
.while.exit_128:
                    #      new_var temp_61_125:i32 
                    #      temp_61_125 = Add i32 f_99, 1_0 
    li      a1, 1
    li      a0, 165232
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,s10,a1
                    #      f_99 = i32 temp_61_125 
                    #      jump label: L3_0 
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_62_136:i1 
                    #      temp_62_136 = icmp i32 Sge f_99, m_97 
    slt     a1,s10,a5
    xori    a1,a1,1
                    #      br i1 temp_62_136, label branch_true_137, label branch_false_137 
    bnez    a1, .branch_true_137
    j       .branch_false_137
                    #      label branch_true_137: 
.branch_true_137:
                    #      jump label: while.exit_128 
    sb      a1,43(sp)
    sw      a0,44(sp)
    li      a2, 165221
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 165232
    add     a2,sp,a2
    lw      a0,0(a2)
    j       .while.exit_128
                    #      label branch_false_137: 
.branch_false_137:
                    #      jump label: while.head_124 
    li      a2, 165221
    add     a2,sp,a2
    sb      a2,0(a2)
    sw      a0,44(sp)
    li      a0, 165276
    add     a0,sp,a0
    lw      a2,0(a0)
    sb      a1,43(sp)
    li      a0, 165276
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 165280
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 165280
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 165272
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 165284
    add     a3,sp,a3
    lw      a0,0(a3)
    j       .while.head_124
                    #      label branch_false_133: 
.branch_false_133:
                    #      jump label: while.head_128 
    li      a3, 57680
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a0, 165232
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 165272
    add     a0,sp,a0
    lw      a3,0(a0)
    sw      a2,52(sp)
    li      a0, 165272
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 165276
    add     a0,sp,a0
    lw      a2,0(a0)
    sb      a1,51(sp)
    li      a0, 165276
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 165222
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 165222
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a4, 165268
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 165232
    add     a4,sp,a4
    lw      a0,0(a4)
    j       .while.head_128
                    #      label while.exit_124: 
.while.exit_124:
                    #      new_var temp_63_121:i32 
                    #      temp_63_121 = Add i32 e_99, 1_0 
    li      a0, 1
    li      a1, 165222
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,s8,a0
                    #      e_99 = i32 temp_63_121 
                    #      jump label: L4_0 
    j       .L4_0
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_64_140:i1 
                    #      temp_64_140 = icmp i32 Sge e_99, l_97 
    slt     a0,s8,a4
    xori    a0,a0,1
                    #      br i1 temp_64_140, label branch_true_141, label branch_false_141 
    bnez    a0, .branch_true_141
    j       .branch_false_141
                    #      label branch_true_141: 
.branch_true_141:
                    #      jump label: while.exit_124 
    sw      a1,36(sp)
    sb      a0,35(sp)
    li      a0, 165222
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 165222
    add     a0,sp,a0
    sb      a0,0(a0)
    j       .while.exit_124
                    #      label branch_false_141: 
.branch_false_141:
                    #      jump label: while.head_120 
    li      s10, 165236
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s11, 165223
    add     s11,sp,s11
    sb      s11,0(s11)
    sw      a1,36(sp)
    sb      a0,35(sp)
    li      a0, 165280
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 165280
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 165276
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 165284
    add     a2,sp,a2
    lw      a0,0(a2)
    j       .while.head_120
                    #      label while.exit_120: 
.while.exit_120:
                    #      new_var temp_65_117:i32 
                    #      temp_65_117 = Add i32 d_99, 1_0 
    li      s10, 1
    li      a0, 165284
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,s6,s10
                    #      d_99 = i32 temp_65_117 
                    #      jump label: L5_0 
    j       .L5_0
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_66_144:i1 
                    #      temp_66_144 = icmp i32 Sge d_99, k_97 
    slt     s10,s6,a3
    xori    s10,s10,1
                    #      br i1 temp_66_144, label branch_true_145, label branch_false_145 
    bnez    s10, .branch_true_145
    j       .branch_false_145
                    #      label branch_true_145: 
.branch_true_145:
                    #      jump label: while.exit_120 
    sb      s10,27(sp)
    sw      a0,28(sp)
    li      a1, 165280
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 165284
    add     a1,sp,a1
    lw      a0,0(a1)
    j       .while.exit_120
                    #      label branch_false_145: 
.branch_false_145:
                    #      jump label: while.head_116 
    sb      s10,27(sp)
    li      s9, 165224
    add     s9,sp,s9
    sb      s9,0(s9)
    li      s11, 165223
    add     s11,sp,s11
    sb      s11,0(s11)
    li      s8, 165240
    add     s8,sp,s8
    sw      s8,0(s8)
    sw      a0,28(sp)
    li      a1, 165280
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 165284
    add     a1,sp,a1
    lw      a0,0(a1)
    j       .while.head_116
                    #      label while.exit_116: 
.while.exit_116:
                    #      new_var temp_67_113:i32 
                    #      temp_67_113 = Add i32 c_99, 1_0 
    li      s8, 1
    add     s10,s2,s8
                    #      c_99 = i32 temp_67_113 
                    #      jump label: L6_0 
    j       .L6_0
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_68_148:i1 
                    #      temp_68_148 = icmp i32 Sge c_99, j_97 
    slt     s8,s2,a2
    xori    s8,s8,1
                    #      br i1 temp_68_148, label branch_true_149, label branch_false_149 
    bnez    s8, .branch_true_149
    j       .branch_false_149
                    #      label branch_true_149: 
.branch_true_149:
                    #      jump label: while.exit_116 
    sw      s10,20(sp)
    sb      s8,19(sp)
    j       .while.exit_116
                    #      label branch_false_149: 
.branch_false_149:
                    #      jump label: while.head_112 
    li      s7, 165225
    add     s7,sp,s7
    sb      s7,0(s7)
    sw      s10,20(sp)
    li      s9, 165224
    add     s9,sp,s9
    sb      s9,0(s9)
    sb      s8,19(sp)
    li      s6, 165244
    add     s6,sp,s6
    sw      s6,0(s6)
    j       .while.head_112
                    #      label while.exit_112: 
.while.exit_112:
                    #      new_var temp_69_109:i32 
                    #      temp_69_109 = Add i32 b_99, 1_0 
    li      s6, 1
    add     s8,a7,s6
                    #      b_99 = i32 temp_69_109 
                    #      jump label: L7_0 
    j       .L7_0
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_70_152:i1 
                    #      temp_70_152 = icmp i32 Sge b_99, i_97 
    slt     s6,a7,a1
    xori    s6,s6,1
                    #      br i1 temp_70_152, label branch_true_153, label branch_false_153 
    bnez    s6, .branch_true_153
    j       .branch_false_153
                    #      label branch_true_153: 
.branch_true_153:
                    #      jump label: while.exit_112 
    sw      s8,12(sp)
    sb      s6,11(sp)
    j       .while.exit_112
                    #      label branch_false_153: 
.branch_false_153:
                    #      jump label: while.head_108 
    li      s7, 165225
    add     s7,sp,s7
    sb      s7,0(s7)
    sw      s8,12(sp)
    li      s2, 165248
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 165226
    add     s3,sp,s3
    sb      s3,0(s3)
    sb      s6,11(sp)
    j       .while.head_108
                    #      label while.exit_108: 
.while.exit_108:
                    #      new_var temp_71_105:i32 
                    #      temp_71_105 = Add i32 a_99, 1_0 
    li      s2, 1
    add     s6,s5,s2
                    #      a_99 = i32 temp_71_105 
                    #      jump label: L8_0 
    j       .L8_0
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_72_156:i1 
                    #      temp_72_156 = icmp i32 Sge a_99, h_97 
    slt     s2,s5,a0
    xori    s2,s2,1
                    #      br i1 temp_72_156, label branch_true_157, label branch_false_157 
    bnez    s2, .branch_true_157
    j       .branch_false_157
                    #      label branch_true_157: 
.branch_true_157:
                    #      jump label: while.exit_108 
    sb      s2,3(sp)
    sw      s6,4(sp)
    j       .while.exit_108
                    #      label branch_false_157: 
.branch_false_157:
                    #      jump label: while.head_104 
    li      a7, 165252
    add     a7,sp,a7
    sw      a7,0(a7)
    li      s1, 165227
    add     s1,sp,s1
    sb      s1,0(s1)
    sb      s2,3(sp)
    li      s3, 165226
    add     s3,sp,s3
    sb      s3,0(s3)
    sw      s6,4(sp)
    j       .while.head_104
                    #      label while.exit_104: 
.while.exit_104:
                    #      ret ans_99 
    li      a7, 165296
    add     a7,sp,a7
    ld      ra,0(a7)
    li      s2, 165288
    add     s2,sp,s2
    ld      s0,0(s2)
    li      s3, 165228
    add     s3,sp,s3
    sw      s4,0(s3)
    li      a0, 165284
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s4, 165304
    li      s4, 165304
    add     sp,s4,sp
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_73:4|x:4|temp_74:4|y:4|temp_75:4|h:4|temp_76:4|i:4|temp_77:4|j:4|temp_78:4|k:4|temp_79:4|l:4|temp_80:4|m:4|temp_81:4|n:4|temp_82:4|none:4
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
                    #      alloc i32 temp_73_161 
                    #      alloc i32 x_161 
                    #      alloc i32 temp_74_161 
                    #      alloc i32 y_161 
                    #      alloc i32 temp_75_161 
                    #      alloc i32 h_161 
                    #      alloc i32 temp_76_161 
                    #      alloc i32 i_161 
                    #      alloc i32 temp_77_161 
                    #      alloc i32 j_161 
                    #      alloc i32 temp_78_161 
                    #      alloc i32 k_161 
                    #      alloc i32 temp_79_161 
                    #      alloc i32 l_161 
                    #      alloc i32 temp_80_161 
                    #      alloc i32 m_161 
                    #      alloc i32 temp_81_161 
                    #      alloc i32 n_161 
                    #      alloc i32 temp_82_161 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_73_161:i32 
                    #      temp_73_161 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,76(sp)
                    #      x_161 = i32 temp_73_161 
    mv      a1, a0
                    #      new_var temp_74_161:i32 
                    #      temp_74_161 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,76(sp)
    sw      a0,68(sp)
                    #      y_161 = i32 temp_74_161 
    mv      a2, a0
                    #      new_var temp_75_161:i32 
                    #      temp_75_161 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,68(sp)
    sw      a0,60(sp)
                    #      h_161 = i32 temp_75_161 
    mv      a3, a0
                    #      new_var temp_76_161:i32 
                    #      temp_76_161 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,60(sp)
    sw      a0,52(sp)
                    #      i_161 = i32 temp_76_161 
    mv      a4, a0
                    #      new_var temp_77_161:i32 
                    #      temp_77_161 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,52(sp)
    sw      a0,44(sp)
                    #      j_161 = i32 temp_77_161 
    mv      a5, a0
                    #      new_var temp_78_161:i32 
                    #      temp_78_161 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,44(sp)
    sw      a0,36(sp)
                    #      k_161 = i32 temp_78_161 
    mv      a6, a0
                    #      new_var temp_79_161:i32 
                    #      temp_79_161 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,36(sp)
    sw      a0,28(sp)
                    #      l_161 = i32 temp_79_161 
    mv      a7, a0
                    #      new_var temp_80_161:i32 
                    #      temp_80_161 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,28(sp)
    sw      a0,20(sp)
                    #      m_161 = i32 temp_80_161 
    mv      s1, a0
                    #      new_var temp_81_161:i32 
                    #      temp_81_161 =  Call i32 getint_0() 
                    #saved register dumping to mem
    sw      s1,16(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,20(sp)
    sw      a0,12(sp)
                    #      n_161 = i32 temp_81_161 
    mv      s1, a0
                    #       Call void loop1_0(x_161, y_161) 
                    #saved register dumping to mem
    sw      s1,8(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,12(sp)
    mv      a0, a1
    sw      a1,72(sp)
    mv      a1, a2
                    #arg load ended
    call    loop1
                    #       Call void loop2_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    loop2
                    #      new_var temp_82_161:i32 
                    #      temp_82_161 =  Call i32 loop3_0(h_161, i_161, j_161, k_161, l_161, m_161, n_161) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a3
    mv      a1, a4
    sw      a2,64(sp)
    mv      a2, a5
    sw      a3,56(sp)
    mv      a3, a6
    sw      a4,48(sp)
    mv      a4, a7
    sw      a5,40(sp)
    lw      a5,16(sp)
    sw      a6,32(sp)
    lw      a6,8(sp)
                    #arg load ended
    call    loop3
    sw      a0,4(sp)
                    #      ret temp_82_161 
    ld      ra,88(sp)
    ld      s0,80(sp)
    sw      a0,4(sp)
    addi    sp,sp,96
    ret
.section        .data
    .align 4
    .globl arr2
                    #      global Array:i32:[Some(10_0), Some(2_0), Some(3_0), Some(2_0), Some(4_0), Some(8_0), Some(7_0)] arr2_0 
    .type arr2,@object
arr2:
    .zero 107520
    .align 4
    .globl arr1
                    #      global Array:i32:[Some(10_0), Some(2_0), Some(3_0), Some(4_0), Some(5_0), Some(6_0), Some(2_0)] arr1_0 
    .type arr1,@object
arr1:
    .zero 57600
