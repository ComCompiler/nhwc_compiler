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
                    #mem layout:|ra_main:8|s0_main:8|a:60|b:60|temp_0:8|temp_1:8|temp_2:8|temp_3:8|temp_4:8|temp_5:8|temp_6:8|temp_7:8|temp_8:8|temp_9:8|temp_10:8|temp_11:8|temp_12:8|temp_13:8|temp_14:8|c:60|none:4|temp_15:8|temp_16:8|temp_17:8|temp_18:8|temp_19:8|temp_20:8|temp_21:8|temp_22:8|temp_23:8|temp_24:8|temp_25:8|temp_26:8|temp_27:8|temp_28:8|temp_29:8|d:60|none:4|temp_30:8|temp_31:8|temp_32:8|temp_33:8|temp_34:8|temp_35:8|temp_36:8|temp_37:8|temp_38:8|temp_39:8|temp_40:8|temp_41:8|temp_42:8|temp_43:8|temp_44:8|e:60|f:20|temp_45:8|temp_46:8|temp_47:8|temp_48:8|temp_49:8|temp_50:8|temp_51:8|temp_52:8|g:60|h:12|temp_53:8|temp_54:8|temp_55:8|temp_56:8|temp_57:8|i:96
    addi    sp,sp,-976
    sd      ra,968(sp)
    sd      s0,960(sp)
    addi    s0,sp,976
                    #      alloc Array:i32:[Some(5_0), Some(3_0)] a_17 
                    #      alloc Array:i32:[Some(5_0), Some(3_0)] b_17 
                    #      alloc ptr->i32 temp_0_17 
                    #      alloc ptr->i32 temp_1_17 
                    #      alloc ptr->i32 temp_2_17 
                    #      alloc ptr->i32 temp_3_17 
                    #      alloc ptr->i32 temp_4_17 
                    #      alloc ptr->i32 temp_5_17 
                    #      alloc ptr->i32 temp_6_17 
                    #      alloc ptr->i32 temp_7_17 
                    #      alloc ptr->i32 temp_8_17 
                    #      alloc ptr->i32 temp_9_17 
                    #      alloc ptr->i32 temp_10_17 
                    #      alloc ptr->i32 temp_11_17 
                    #      alloc ptr->i32 temp_12_17 
                    #      alloc ptr->i32 temp_13_17 
                    #      alloc ptr->i32 temp_14_17 
                    #      alloc Array:i32:[Some(5_0), Some(3_0)] c_17 
                    #      alloc ptr->i32 temp_15_17 
                    #      alloc ptr->i32 temp_16_17 
                    #      alloc ptr->i32 temp_17_17 
                    #      alloc ptr->i32 temp_18_17 
                    #      alloc ptr->i32 temp_19_17 
                    #      alloc ptr->i32 temp_20_17 
                    #      alloc ptr->i32 temp_21_17 
                    #      alloc ptr->i32 temp_22_17 
                    #      alloc ptr->i32 temp_23_17 
                    #      alloc ptr->i32 temp_24_17 
                    #      alloc ptr->i32 temp_25_17 
                    #      alloc ptr->i32 temp_26_17 
                    #      alloc ptr->i32 temp_27_17 
                    #      alloc ptr->i32 temp_28_17 
                    #      alloc ptr->i32 temp_29_17 
                    #      alloc Array:i32:[Some(5_0), Some(3_0)] d_17 
                    #      alloc ptr->i32 temp_30_17 
                    #      alloc ptr->i32 temp_31_17 
                    #      alloc ptr->i32 temp_32_17 
                    #      alloc ptr->i32 temp_33_17 
                    #      alloc ptr->i32 temp_34_17 
                    #      alloc ptr->i32 temp_35_17 
                    #      alloc ptr->i32 temp_36_17 
                    #      alloc ptr->i32 temp_37_17 
                    #      alloc ptr->i32 temp_38_17 
                    #      alloc ptr->i32 temp_39_17 
                    #      alloc ptr->i32 temp_40_17 
                    #      alloc ptr->i32 temp_41_17 
                    #      alloc ptr->i32 temp_42_17 
                    #      alloc ptr->i32 temp_43_17 
                    #      alloc ptr->i32 temp_44_17 
                    #      alloc Array:i32:[Some(5_0), Some(3_0)] e_17 
                    #      alloc Array:i32:[Some(5_0)] f_17 
                    #      alloc ptr->i32 temp_45_17 
                    #      alloc ptr->i32 temp_46_17 
                    #      alloc ptr->i32 temp_47_17 
                    #      alloc ptr->i32 temp_48_17 
                    #      alloc ptr->i32 temp_49_17 
                    #      alloc ptr->i32 temp_50_17 
                    #      alloc ptr->i32 temp_51_17 
                    #      alloc ptr->i32 temp_52_17 
                    #      alloc Array:i32:[Some(5_0), Some(3_0)] g_17 
                    #      alloc Array:i32:[Some(3_0)] h_17 
                    #      alloc ptr->i32 temp_53_17 
                    #      alloc ptr->i32 temp_54_17 
                    #      alloc ptr->i32 temp_55_17 
                    #      alloc ptr->i32 temp_56_17 
                    #      alloc ptr->i32 temp_57_17 
                    #      alloc Array:i32:[Some(2_0), Some(3_0), Some(4_0)] i_17 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_17:Array:i32:[Some(5_0), Some(3_0)] 
                    #      new_var b_17:Array:i32:[Some(5_0), Some(3_0)] 
                    #      new_var c_17:Array:i32:[Some(5_0), Some(3_0)] 
                    #      new_var temp_0_17:ptr->i32 
                    #      temp_0_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(1_0)] 
    li      a0, 0
    li      a1, 3
    li      a2, 1
    mul     a3,a1,a2
    add     a0,a0,a3
                    #found literal reg Some(a2) already exist with 1_0
    li      a4, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 5_0:i32 temp_0_17:ptr->Array:i32:[Some(3_0)] 
    li      a5, 5
    sd      a5,0(a0)
                    #      mu c_17:24 
                    #      c_17 = chi c_17:24 
                    #      new_var temp_1_17:ptr->i32 
                    #      temp_1_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(2_0)] 
    li      a6, 0
                    #found literal reg Some(a1) already exist with 3_0
                    #found literal reg Some(a4) already exist with 1_0
    add     a6,a6,a3
                    #found literal reg Some(a4) already exist with 1_0
    li      a7, 2
    add     a6,a6,a3
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      store 6_0:i32 temp_1_17:ptr->Array:i32:[Some(3_0)] 
    li      s1, 6
    sd      s1,0(a6)
                    #      mu c_17:30 
                    #      c_17 = chi c_17:30 
                    #      new_var temp_2_17:ptr->i32 
                    #      temp_2_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(0_0)] 
    li      s2, 0
                    #found literal reg Some(a1) already exist with 3_0
    li      s3, 4
    add     s2,s2,a3
                    #found literal reg Some(a4) already exist with 1_0
    li      s4, 0
    add     s2,s2,a3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      store 13_0:i32 temp_2_17:ptr->Array:i32:[Some(3_0)] 
    li      s5, 13
    sd      s5,0(s2)
                    #      mu c_17:36 
                    #      c_17 = chi c_17:36 
                    #      new_var temp_3_17:ptr->i32 
                    #      temp_3_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(2_0)] 
    li      s6, 0
                    #found literal reg Some(a1) already exist with 3_0
                    #found literal reg Some(a7) already exist with 2_0
    add     s6,s6,a3
                    #found literal reg Some(a4) already exist with 1_0
                    #found literal reg Some(a7) already exist with 2_0
    add     s6,s6,a3
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 9_0:i32 temp_3_17:ptr->Array:i32:[Some(3_0)] 
    li      s7, 9
    sd      s7,0(s6)
                    #      mu c_17:42 
                    #      c_17 = chi c_17:42 
                    #      new_var temp_4_17:ptr->i32 
                    #      temp_4_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(0_0)] 
    li      s8, 0
                    #found literal reg Some(a1) already exist with 3_0
    li      s9, 3
    add     s8,s8,a3
                    #found literal reg Some(a4) already exist with 1_0
                    #found literal reg Some(s4) already exist with 0_0
    add     s8,s8,a3
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 10_0:i32 temp_4_17:ptr->Array:i32:[Some(3_0)] 
    li      s10, 10
    sd      s10,0(s8)
                    #      mu c_17:48 
                    #      c_17 = chi c_17:48 
                    #      new_var temp_5_17:ptr->i32 
                    #      temp_5_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(2_0)] 
    li      s11, 0
                    #found literal reg Some(a1) already exist with 3_0
                    #found literal reg Some(s3) already exist with 4_0
    add     s11,s11,a3
                    #found literal reg Some(a4) already exist with 1_0
                    #found literal reg Some(a7) already exist with 2_0
    add     s11,s11,a3
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      store 15_0:i32 temp_5_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 15
    sd      a1,0(s11)
                    #      mu c_17:54 
                    #      c_17 = chi c_17:54 
                    #      new_var temp_6_17:ptr->i32 
                    #      temp_6_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(2_0)] 
    li      a1, 0
                    #found literal reg Some(s9) already exist with 3_0
    li      a2, 3
    add     a1,a1,a3
                    #found literal reg Some(a4) already exist with 1_0
                    #found literal reg Some(a7) already exist with 2_0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 12_0:i32 temp_6_17:ptr->Array:i32:[Some(3_0)] 
    li      a2, 12
    sd      a2,0(a1)
                    #      mu c_17:60 
                    #      c_17 = chi c_17:60 
                    #      new_var temp_7_17:ptr->i32 
                    #      temp_7_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(1_0)] 
    li      a2, 0
                    #found literal reg Some(s9) already exist with 3_0
    li      a4, 3
    add     a2,a2,a3
    li      a4, 1
    li      a5, 1
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 11_0:i32 temp_7_17:ptr->Array:i32:[Some(3_0)] 
    li      a4, 11
    sd      a4,0(a2)
                    #      mu c_17:66 
                    #      c_17 = chi c_17:66 
                    #      new_var temp_8_17:ptr->i32 
                    #      temp_8_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(0_0)] 
    li      a4, 0
                    #found literal reg Some(s9) already exist with 3_0
                    #found literal reg Some(s4) already exist with 0_0
    add     a4,a4,a3
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(s4) already exist with 0_0
    add     a4,a4,a3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      store 1_0:i32 temp_8_17:ptr->Array:i32:[Some(3_0)] 
                    #found literal reg Some(a5) already exist with 1_0
    sd      a5,0(a4)
                    #      mu c_17:72 
                    #      c_17 = chi c_17:72 
                    #      new_var temp_9_17:ptr->i32 
                    #      temp_9_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(0_0)] 
    li      a5, 0
                    #found literal reg Some(s9) already exist with 3_0
    li      a7, 1
    add     a5,a5,a3
                    #found literal reg Some(a7) already exist with 1_0
                    #found literal reg Some(s4) already exist with 0_0
    add     a5,a5,a3
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      store 4_0:i32 temp_9_17:ptr->Array:i32:[Some(3_0)] 
                    #found literal reg Some(s3) already exist with 4_0
    sd      s3,0(a5)
                    #      mu c_17:78 
                    #      c_17 = chi c_17:78 
                    #      new_var temp_10_17:ptr->i32 
                    #      temp_10_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(2_0)] 
    li      a7, 0
                    #found literal reg Some(s9) already exist with 3_0
                    #found literal reg Some(s4) already exist with 0_0
    add     a7,a7,a3
    li      s1, 1
    li      s3, 2
    add     a7,a7,a3
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 3_0:i32 temp_10_17:ptr->Array:i32:[Some(3_0)] 
                    #found literal reg Some(s9) already exist with 3_0
    sd      s9,0(a7)
                    #      mu c_17:84 
                    #      c_17 = chi c_17:84 
                    #      new_var temp_11_17:ptr->i32 
                    #      temp_11_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(1_0)] 
    li      s1, 0
                    #found literal reg Some(s9) already exist with 3_0
                    #found literal reg Some(s3) already exist with 2_0
    add     s1,s1,a3
    li      s3, 1
    li      s4, 1
    add     s1,s1,a3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      store 8_0:i32 temp_11_17:ptr->Array:i32:[Some(3_0)] 
    li      s3, 8
    sd      s3,0(s1)
                    #      mu c_17:90 
                    #      c_17 = chi c_17:90 
                    #      new_var temp_12_17:ptr->i32 
                    #      temp_12_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(1_0)] 
    li      s3, 0
                    #found literal reg Some(s9) already exist with 3_0
    li      s4, 4
    add     s3,s3,a3
    li      s4, 1
    li      s5, 1
    add     s3,s3,a3
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 14_0:i32 temp_12_17:ptr->Array:i32:[Some(3_0)] 
    li      s4, 14
    sd      s4,0(s3)
                    #      mu c_17:96 
                    #      c_17 = chi c_17:96 
                    #      new_var temp_13_17:ptr->i32 
                    #      temp_13_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(0_0)] 
    li      s4, 0
                    #found literal reg Some(s9) already exist with 3_0
    li      s5, 2
    add     s4,s4,a3
    li      s5, 1
    li      s7, 0
    add     s4,s4,a3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      store 7_0:i32 temp_13_17:ptr->Array:i32:[Some(3_0)] 
    li      s5, 7
    sd      s5,0(s4)
                    #      mu c_17:102 
                    #      c_17 = chi c_17:102 
                    #      new_var temp_14_17:ptr->i32 
                    #      temp_14_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(1_0)] 
    li      s5, 0
                    #found literal reg Some(s9) already exist with 3_0
                    #found literal reg Some(s7) already exist with 0_0
    add     s5,s5,a3
    li      s7, 1
    li      s9, 1
    add     s5,s5,a3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      store 2_0:i32 temp_14_17:ptr->Array:i32:[Some(3_0)] 
    li      s7, 2
    sd      s7,0(s5)
                    #      mu c_17:108 
                    #      c_17 = chi c_17:108 
                    #      new_var d_17:Array:i32:[Some(5_0), Some(3_0)] 
                    #      new_var temp_15_17:ptr->i32 
                    #      temp_15_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(0_0)] 
    li      s7, 0
    li      s9, 3
    li      s10, 2
    sd      a0,832(sp)
    mul     a0,s9,s10
    add     s7,s7,a0
    li      s9, 1
    li      s10, 0
    add     s7,s7,a0
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 7_0:i32 temp_15_17:ptr->Array:i32:[Some(3_0)] 
    li      s9, 7
    sd      s9,0(s7)
                    #      mu d_17:116 
                    #      d_17 = chi d_17:116 
                    #      new_var temp_16_17:ptr->i32 
                    #      temp_16_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(2_0)] 
    li      s9, 0
    li      s10, 3
    sw      a0,532(sp)
    li      a0, 4
    sd      a1,784(sp)
    mul     a1,s10,a0
    add     s9,s9,a1
    li      a0, 1
    li      s10, 2
    add     s9,s9,a1
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store 15_0:i32 temp_16_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 15
    sd      a0,0(s9)
                    #      mu d_17:122 
                    #      d_17 = chi d_17:122 
                    #      new_var temp_17_17:ptr->i32 
                    #      temp_17_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(1_0)] 
    li      a0, 0
    li      s10, 3
    sw      a1,532(sp)
    li      a1, 0
    sd      a2,776(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    li      a1, 1
    li      s10, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_17_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu d_17:128 
                    #      d_17 = chi d_17:128 
                    #      new_var temp_18_17:ptr->i32 
                    #      temp_18_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(1_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,632(sp)
    li      a0, 1
    add     a1,a1,a2
                    #found literal reg Some(a0) already exist with 1_0
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 5_0:i32 temp_18_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 5
    sd      a0,0(a1)
                    #      mu d_17:134 
                    #      d_17 = chi d_17:134 
                    #      new_var temp_19_17:ptr->i32 
                    #      temp_19_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(2_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,624(sp)
    li      a1, 3
    add     a0,a0,a2
    li      a1, 1
    li      s10, 2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 12_0:i32 temp_19_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 12
    sd      a1,0(a0)
                    #      mu d_17:140 
                    #      d_17 = chi d_17:140 
                    #      new_var temp_20_17:ptr->i32 
                    #      temp_20_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(0_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,616(sp)
    li      a0, 3
    add     a1,a1,a2
    li      a0, 1
    li      s10, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 10_0:i32 temp_20_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 10
    sd      a0,0(a1)
                    #      mu d_17:146 
                    #      d_17 = chi d_17:146 
                    #      new_var temp_21_17:ptr->i32 
                    #      temp_21_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(1_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,608(sp)
    li      a1, 2
    add     a0,a0,a2
    li      a1, 1
    li      s10, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 8_0:i32 temp_21_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 8
    sd      a1,0(a0)
                    #      mu d_17:152 
                    #      d_17 = chi d_17:152 
                    #      new_var temp_22_17:ptr->i32 
                    #      temp_22_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(0_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,600(sp)
    li      a0, 4
    add     a1,a1,a2
    li      a0, 1
    li      s10, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 13_0:i32 temp_22_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 13
    sd      a0,0(a1)
                    #      mu d_17:158 
                    #      d_17 = chi d_17:158 
                    #      new_var temp_23_17:ptr->i32 
                    #      temp_23_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(0_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,592(sp)
    li      a1, 1
    add     a0,a0,a2
                    #found literal reg Some(a1) already exist with 1_0
    li      s10, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 4_0:i32 temp_23_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 4
    sd      a1,0(a0)
                    #      mu d_17:164 
                    #      d_17 = chi d_17:164 
                    #      new_var temp_24_17:ptr->i32 
                    #      temp_24_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(2_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,584(sp)
    li      a0, 1
    add     a1,a1,a2
                    #found literal reg Some(a0) already exist with 1_0
    li      s10, 2
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 6_0:i32 temp_24_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 6
    sd      a0,0(a1)
                    #      mu d_17:170 
                    #      d_17 = chi d_17:170 
                    #      new_var temp_25_17:ptr->i32 
                    #      temp_25_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(0_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,576(sp)
    li      a1, 0
    add     a0,a0,a2
    li      a1, 1
    li      s10, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 1_0:i32 temp_25_17:ptr->Array:i32:[Some(3_0)] 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a1,0(a0)
                    #      mu d_17:176 
                    #      d_17 = chi d_17:176 
                    #      new_var temp_26_17:ptr->i32 
                    #      temp_26_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(1_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,568(sp)
    li      a0, 3
    add     a1,a1,a2
    li      a0, 1
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 11_0:i32 temp_26_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 11
    sd      a0,0(a1)
                    #      mu d_17:182 
                    #      d_17 = chi d_17:182 
                    #      new_var temp_27_17:ptr->i32 
                    #      temp_27_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(2_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,560(sp)
    li      a1, 0
    add     a0,a0,a2
    li      a1, 1
    li      s10, 2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 3_0:i32 temp_27_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 3
    sd      a1,0(a0)
                    #      mu d_17:188 
                    #      d_17 = chi d_17:188 
                    #      new_var temp_28_17:ptr->i32 
                    #      temp_28_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(1_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,552(sp)
    li      a0, 4
    add     a1,a1,a2
    li      a0, 1
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 14_0:i32 temp_28_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 14
    sd      a0,0(a1)
                    #      mu d_17:194 
                    #      d_17 = chi d_17:194 
                    #      new_var temp_29_17:ptr->i32 
                    #      temp_29_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(2_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,544(sp)
    li      a1, 2
    add     a0,a0,a2
    li      a1, 1
    li      s10, 2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 9_0:i32 temp_29_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 9
    sd      a1,0(a0)
                    #      mu d_17:200 
                    #      d_17 = chi d_17:200 
                    #      new_var e_17:Array:i32:[Some(5_0), Some(3_0)] 
                    #      new_var temp_30_17:ptr->i32 
                    #      temp_30_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(2_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,536(sp)
    li      a0, 4
    sw      a2,532(sp)
    mul     a2,s10,a0
    add     a1,a1,a2
    li      a0, 1
    li      s10, 2
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 15_0:i32 temp_30_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 15
    sd      a0,0(a1)
                    #      mu e_17:208 
                    #      e_17 = chi e_17:208 
                    #      new_var temp_31_17:ptr->i32 
                    #      temp_31_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(1_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,464(sp)
    li      a1, 0
    add     a0,a0,a2
    li      a1, 1
    li      s10, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_31_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu e_17:214 
                    #      e_17 = chi e_17:214 
                    #      new_var temp_32_17:ptr->i32 
                    #      temp_32_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(1_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,456(sp)
    li      a0, 3
    add     a1,a1,a2
    li      a0, 1
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 11_0:i32 temp_32_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 11
    sd      a0,0(a1)
                    #      mu e_17:220 
                    #      e_17 = chi e_17:220 
                    #      new_var temp_33_17:ptr->i32 
                    #      temp_33_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(2_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,448(sp)
    li      a1, 3
    add     a0,a0,a2
    li      a1, 1
    li      s10, 2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 12_0:i32 temp_33_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 12
    sd      a1,0(a0)
                    #      mu e_17:226 
                    #      e_17 = chi e_17:226 
                    #      new_var temp_34_17:ptr->i32 
                    #      temp_34_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(0_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,440(sp)
    li      a0, 2
    add     a1,a1,a2
    li      a0, 1
    li      s10, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 7_0:i32 temp_34_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 7
    sd      a0,0(a1)
                    #      mu e_17:232 
                    #      e_17 = chi e_17:232 
                    #      new_var temp_35_17:ptr->i32 
                    #      temp_35_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(0_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,432(sp)
    li      a1, 4
    add     a0,a0,a2
    li      a1, 1
    li      s10, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 13_0:i32 temp_35_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 13
    sd      a1,0(a0)
                    #      mu e_17:238 
                    #      e_17 = chi e_17:238 
                    #      new_var temp_36_17:ptr->i32 
                    #      temp_36_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(1_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,424(sp)
    li      a0, 2
    add     a1,a1,a2
    li      a0, 1
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 8_0:i32 temp_36_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 8
    sd      a0,0(a1)
                    #      mu e_17:244 
                    #      e_17 = chi e_17:244 
                    #      new_var temp_37_17:ptr->i32 
                    #      temp_37_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(2_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,416(sp)
    li      a1, 1
    add     a0,a0,a2
                    #found literal reg Some(a1) already exist with 1_0
    li      s10, 2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 6_0:i32 temp_37_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 6
    sd      a1,0(a0)
                    #      mu e_17:250 
                    #      e_17 = chi e_17:250 
                    #      new_var temp_38_17:ptr->i32 
                    #      temp_38_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(2_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,408(sp)
    li      a0, 2
    add     a1,a1,a2
    li      a0, 1
    li      s10, 2
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 9_0:i32 temp_38_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 9
    sd      a0,0(a1)
                    #      mu e_17:256 
                    #      e_17 = chi e_17:256 
                    #      new_var temp_39_17:ptr->i32 
                    #      temp_39_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(0_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,400(sp)
    li      a1, 0
    add     a0,a0,a2
    li      a1, 1
    li      s10, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 1_0:i32 temp_39_17:ptr->Array:i32:[Some(3_0)] 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a1,0(a0)
                    #      mu e_17:262 
                    #      e_17 = chi e_17:262 
                    #      new_var temp_40_17:ptr->i32 
                    #      temp_40_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(1_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,392(sp)
    li      a0, 1
    add     a1,a1,a2
                    #found literal reg Some(a0) already exist with 1_0
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 5_0:i32 temp_40_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 5
    sd      a0,0(a1)
                    #      mu e_17:268 
                    #      e_17 = chi e_17:268 
                    #      new_var temp_41_17:ptr->i32 
                    #      temp_41_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(2_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,384(sp)
    li      a1, 0
    add     a0,a0,a2
    li      a1, 1
    li      s10, 2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 3_0:i32 temp_41_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 3
    sd      a1,0(a0)
                    #      mu e_17:274 
                    #      e_17 = chi e_17:274 
                    #      new_var temp_42_17:ptr->i32 
                    #      temp_42_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(0_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,376(sp)
    li      a0, 1
    add     a1,a1,a2
                    #found literal reg Some(a0) already exist with 1_0
    li      s10, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 4_0:i32 temp_42_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 4
    sd      a0,0(a1)
                    #      mu e_17:280 
                    #      e_17 = chi e_17:280 
                    #      new_var temp_43_17:ptr->i32 
                    #      temp_43_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(0_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,368(sp)
    li      a1, 3
    add     a0,a0,a2
    li      a1, 1
    li      s10, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 10_0:i32 temp_43_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 10
    sd      a1,0(a0)
                    #      mu e_17:286 
                    #      e_17 = chi e_17:286 
                    #      new_var temp_44_17:ptr->i32 
                    #      temp_44_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(1_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,360(sp)
    li      a0, 4
    add     a1,a1,a2
    li      a0, 1
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 14_0:i32 temp_44_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 14
    sd      a0,0(a1)
                    #      mu e_17:292 
                    #      e_17 = chi e_17:292 
                    #      new_var f_17:Array:i32:[Some(5_0)] 
                    #      new_var g_17:Array:i32:[Some(5_0), Some(3_0)] 
                    #      new_var temp_45_17:ptr->i32 
                    #      temp_45_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(1_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,352(sp)
    li      a1, 1
    sw      a2,348(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
                    #found literal reg Some(a1) already exist with 1_0
    li      s10, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 7_0:i32 temp_45_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 7
    sd      a1,0(a0)
                    #      mu g_17:302 
                    #      g_17 = chi g_17:302 
                    #      new_var temp_46_17:ptr->i32 
                    #      temp_46_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(0_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,264(sp)
    li      a0, 1
    add     a1,a1,a2
                    #found literal reg Some(a0) already exist with 1_0
    li      s10, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 4_0:i32 temp_46_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 4
    sd      a0,0(a1)
                    #      mu g_17:308 
                    #      g_17 = chi g_17:308 
                    #      new_var temp_47_17:ptr->i32 
                    #      temp_47_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(2_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,256(sp)
    li      a1, 0
    add     a0,a0,a2
    li      a1, 1
    li      s10, 2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 3_0:i32 temp_47_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 3
    sd      a1,0(a0)
                    #      mu g_17:314 
                    #      g_17 = chi g_17:314 
                    #      new_var temp_48_17:ptr->i32 
                    #      temp_48_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(1_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,248(sp)
    li      a0, 2
    add     a1,a1,a2
    li      a0, 1
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 12_0:i32 temp_48_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 12
    sd      a0,0(a1)
                    #      mu g_17:320 
                    #      g_17 = chi g_17:320 
                    #      new_var temp_49_17:ptr->i32 
                    #      temp_49_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(1_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,240(sp)
    li      a1, 0
    add     a0,a0,a2
    li      a1, 1
    li      s10, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_49_17:ptr->Array:i32:[Some(3_0)] 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu g_17:326 
                    #      g_17 = chi g_17:326 
                    #      new_var temp_50_17:ptr->i32 
                    #      temp_50_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(0_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,232(sp)
    li      a0, 2
    add     a1,a1,a2
    li      a0, 1
    li      s10, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 11_0:i32 temp_50_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 11
    sd      a0,0(a1)
                    #      mu g_17:332 
                    #      g_17 = chi g_17:332 
                    #      new_var temp_51_17:ptr->i32 
                    #      temp_51_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(0_0)] 
    li      a0, 0
    li      s10, 3
    sd      a1,224(sp)
    li      a1, 0
    add     a0,a0,a2
    li      a1, 1
    li      s10, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 1_0:i32 temp_51_17:ptr->Array:i32:[Some(3_0)] 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a1,0(a0)
                    #      mu g_17:338 
                    #      g_17 = chi g_17:338 
                    #      new_var temp_52_17:ptr->i32 
                    #      temp_52_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(2_0)] 
    li      a1, 0
    li      s10, 3
    sd      a0,216(sp)
    li      a0, 1
    add     a1,a1,a2
                    #found literal reg Some(a0) already exist with 1_0
    li      s10, 2
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 10_0:i32 temp_52_17:ptr->Array:i32:[Some(3_0)] 
    li      a0, 10
    sd      a0,0(a1)
                    #      mu g_17:344 
                    #      g_17 = chi g_17:344 
                    #      new_var h_17:Array:i32:[Some(3_0)] 
                    #      new_var i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] 
                    #      new_var temp_53_17:ptr->i32 
                    #      temp_53_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(0_0), Some(0_0)] 
    li      a0, 0
    li      s10, 12
    sd      a1,208(sp)
    li      a1, 0
    sw      a2,204(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    li      a1, 4
    li      s10, 0
    add     a0,a0,a2
    li      a1, 1
                    #found literal reg Some(s10) already exist with 0_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 1_0:i32 temp_53_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a1,0(a0)
                    #      mu i_17:354 
                    #      i_17 = chi i_17:354 
                    #      new_var temp_54_17:ptr->i32 
                    #      temp_54_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(0_0), Some(2_0)] 
    li      a1, 0
    li      s10, 12
    sd      a0,128(sp)
    li      a0, 0
    add     a1,a1,a2
    li      a0, 4
    li      s10, 0
    add     a1,a1,a2
    li      a0, 1
    li      s10, 2
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 3_0:i32 temp_54_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
    li      a0, 3
    sd      a0,0(a1)
                    #      mu i_17:360 
                    #      i_17 = chi i_17:360 
                    #      new_var temp_55_17:ptr->i32 
                    #      temp_55_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(0_0), Some(3_0)] 
    li      a0, 0
    li      s10, 12
    sd      a1,120(sp)
    li      a1, 0
    add     a0,a0,a2
    li      a1, 4
    li      s10, 0
    add     a0,a0,a2
    li      a1, 1
    li      s10, 3
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 4_0:i32 temp_55_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
    li      a1, 4
    sd      a1,0(a0)
                    #      mu i_17:366 
                    #      i_17 = chi i_17:366 
                    #      new_var temp_56_17:ptr->i32 
                    #      temp_56_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(0_0), Some(1_0)] 
    li      a1, 0
    li      s10, 12
    sd      a0,112(sp)
    li      a0, 0
    add     a1,a1,a2
    li      a0, 4
    li      s10, 0
    add     a1,a1,a2
    li      a0, 1
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 2_0:i32 temp_56_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
    li      a0, 2
    sd      a0,0(a1)
                    #      mu i_17:372 
                    #      i_17 = chi i_17:372 
                    #      new_var temp_57_17:ptr->i32 
                    #      temp_57_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(1_0), Some(0_0)] 
    li      a0, 0
    li      s10, 12
    sd      a1,104(sp)
    li      a1, 0
    add     a0,a0,a2
    li      a1, 4
    li      s10, 1
    add     a0,a0,a2
                    #found literal reg Some(s10) already exist with 1_0
    li      a1, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 5_0:i32 temp_57_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
    li      a1, 5
    sd      a1,0(a0)
                    #      mu i_17:378 
                    #      i_17 = chi i_17:378 
                    #      ret 4_0 
    ld      ra,968(sp)
    ld      s0,960(sp)
    sd      a0,96(sp)
    li      a0, 4
    addi    sp,sp,976
    ret
