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
                    #mem layout:|ra_main:8|s0_main:8|a:32|temp_0:8|temp_1:8|temp_2:8|temp_3:8|temp_4:8|temp_5:8|temp_6:8|temp_7:8|b:32|temp_8:8|temp_9:8|temp_10:8|temp_11:8|temp_12:8|temp_13:8|temp_14:8|temp_15:8|c:32|temp_16:8|temp_17:8|temp_18:8|temp_19:8|temp_20:8|temp_21:8|d:32|temp_22:8|temp_23:4|none:4|temp_24:8|temp_25:4|none:4|temp_26:8|temp_27:8|temp_28:8|temp_29:8|temp_30:8|temp_31:8|temp_32:8|temp_33:8|e:32|temp_34:8|temp_35:4|none:4|temp_36:8|temp_37:4|temp_38:4|temp_39:8|temp_40:4|temp_41:4|temp_42:8|temp_43:4|temp_44:4
    addi    sp,sp,-512
    sd      ra,504(sp)
    sd      s0,496(sp)
    addi    s0,sp,512
                    #      alloc Array:i32:[Some(4_0), Some(2_0)] a_17 
                    #      alloc ptr->i32 temp_0_17 
                    #      alloc ptr->i32 temp_1_17 
                    #      alloc ptr->i32 temp_2_17 
                    #      alloc ptr->i32 temp_3_17 
                    #      alloc ptr->i32 temp_4_17 
                    #      alloc ptr->i32 temp_5_17 
                    #      alloc ptr->i32 temp_6_17 
                    #      alloc ptr->i32 temp_7_17 
                    #      alloc Array:i32:[Some(4_0), Some(2_0)] b_17 
                    #      alloc ptr->i32 temp_8_17 
                    #      alloc ptr->i32 temp_9_17 
                    #      alloc ptr->i32 temp_10_17 
                    #      alloc ptr->i32 temp_11_17 
                    #      alloc ptr->i32 temp_12_17 
                    #      alloc ptr->i32 temp_13_17 
                    #      alloc ptr->i32 temp_14_17 
                    #      alloc ptr->i32 temp_15_17 
                    #      alloc Array:i32:[Some(4_0), Some(2_0)] c_17 
                    #      alloc ptr->i32 temp_16_17 
                    #      alloc ptr->i32 temp_17_17 
                    #      alloc ptr->i32 temp_18_17 
                    #      alloc ptr->i32 temp_19_17 
                    #      alloc ptr->i32 temp_20_17 
                    #      alloc ptr->i32 temp_21_17 
                    #      alloc Array:i32:[Some(4_0), Some(2_0)] d_17 
                    #      alloc ptr->i32 temp_22_17 
                    #      alloc i32 temp_23_17 
                    #      alloc ptr->i32 temp_24_17 
                    #      alloc i32 temp_25_17 
                    #      alloc ptr->i32 temp_26_17 
                    #      alloc ptr->i32 temp_27_17 
                    #      alloc ptr->i32 temp_28_17 
                    #      alloc ptr->i32 temp_29_17 
                    #      alloc ptr->i32 temp_30_17 
                    #      alloc ptr->i32 temp_31_17 
                    #      alloc ptr->i32 temp_32_17 
                    #      alloc ptr->i32 temp_33_17 
                    #      alloc Array:i32:[Some(4_0), Some(2_0)] e_17 
                    #      alloc ptr->i32 temp_34_17 
                    #      alloc i32 temp_35_17 
                    #      alloc ptr->i32 temp_36_17 
                    #      alloc i32 temp_37_17 
                    #      alloc i32 temp_38_17 
                    #      alloc ptr->i32 temp_39_17 
                    #      alloc i32 temp_40_17 
                    #      alloc i32 temp_41_17 
                    #      alloc ptr->i32 temp_42_17 
                    #      alloc i32 temp_43_17 
                    #      alloc i32 temp_44_17 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_17:Array:i32:[Some(4_0), Some(2_0)] 
                    #      new_var b_17:Array:i32:[Some(4_0), Some(2_0)] 
                    #      new_var temp_0_17:ptr->i32 
                    #      temp_0_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
    li      a0, 0
    li      a1, 2
    li      a2, 3
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    li      a5, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 8_0:i32 temp_0_17:ptr->Array:i32:[Some(2_0)] 
    li      a6, 8
    sd      a6,0(a0)
                    #      mu b_17:22 
                    #      b_17 = chi b_17:22 
                    #      new_var temp_1_17:ptr->i32 
                    #      temp_1_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
    li      a7, 0
                    #found literal reg Some(a1) already exist with 2_0
    li      s1, 2
    add     a7,a7,a3
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(a4) already exist with 1_0
    add     a7,a7,a3
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 6_0:i32 temp_1_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 6
    sd      s2,0(a7)
                    #      mu b_17:28 
                    #      b_17 = chi b_17:28 
                    #      new_var temp_2_17:ptr->i32 
                    #      temp_2_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
    li      s3, 0
                    #found literal reg Some(s1) already exist with 2_0
    li      s4, 0
    add     s3,s3,a3
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(a4) already exist with 1_0
    add     s3,s3,a3
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 2_0:i32 temp_2_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(s1) already exist with 2_0
    sd      s1,0(s3)
                    #      mu b_17:34 
                    #      b_17 = chi b_17:34 
                    #      new_var temp_3_17:ptr->i32 
                    #      temp_3_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
    li      s5, 0
                    #found literal reg Some(s1) already exist with 2_0
                    #found literal reg Some(a5) already exist with 1_0
    add     s5,s5,a3
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(a4) already exist with 1_0
    add     s5,s5,a3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      store 4_0:i32 temp_3_17:ptr->Array:i32:[Some(2_0)] 
    li      s6, 4
    sd      s6,0(s5)
                    #      mu b_17:40 
                    #      b_17 = chi b_17:40 
                    #      new_var temp_4_17:ptr->i32 
                    #      temp_4_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
    li      s7, 0
                    #found literal reg Some(s1) already exist with 2_0
                    #found literal reg Some(a2) already exist with 3_0
    add     s7,s7,a3
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(s4) already exist with 0_0
    add     s7,s7,a3
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 7_0:i32 temp_4_17:ptr->Array:i32:[Some(2_0)] 
    li      s8, 7
    sd      s8,0(s7)
                    #      mu b_17:46 
                    #      b_17 = chi b_17:46 
                    #      new_var temp_5_17:ptr->i32 
                    #      temp_5_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
    li      s9, 0
                    #found literal reg Some(s1) already exist with 2_0
                    #found literal reg Some(a5) already exist with 1_0
    add     s9,s9,a3
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(s4) already exist with 0_0
    add     s9,s9,a3
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store 3_0:i32 temp_5_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(a2) already exist with 3_0
    sd      a2,0(s9)
                    #      mu b_17:52 
                    #      b_17 = chi b_17:52 
                    #      new_var temp_6_17:ptr->i32 
                    #      temp_6_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
    li      s10, 0
                    #found literal reg Some(s1) already exist with 2_0
                    #found literal reg Some(s4) already exist with 0_0
    add     s10,s10,a3
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(s4) already exist with 0_0
    add     s10,s10,a3
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store 1_0:i32 temp_6_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(a5) already exist with 1_0
    sd      a5,0(s10)
                    #      mu b_17:58 
                    #      b_17 = chi b_17:58 
                    #      new_var temp_7_17:ptr->i32 
                    #      temp_7_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
    li      s11, 0
                    #found literal reg Some(s1) already exist with 2_0
                    #found literal reg Some(a1) already exist with 2_0
    add     s11,s11,a3
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(s4) already exist with 0_0
    add     s11,s11,a3
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      store 5_0:i32 temp_7_17:ptr->Array:i32:[Some(2_0)] 
    li      a1, 5
    sd      a1,0(s11)
                    #      mu b_17:64 
                    #      b_17 = chi b_17:64 
                    #      new_var c_17:Array:i32:[Some(4_0), Some(2_0)] 
                    #      new_var temp_8_17:ptr->i32 
                    #      temp_8_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
    li      a1, 0
                    #found literal reg Some(s1) already exist with 2_0
                    #found literal reg Some(s4) already exist with 0_0
    mul     a2,s1,s4
    add     a1,a1,a2
                    #found literal reg Some(a5) already exist with 1_0
                    #found literal reg Some(s4) already exist with 0_0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 1_0:i32 temp_8_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(a5) already exist with 1_0
    sd      a5,0(a1)
                    #      mu c_17:72 
                    #      c_17 = chi c_17:72 
                    #      new_var temp_9_17:ptr->i32 
                    #      temp_9_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
    li      a4, 0
                    #found literal reg Some(s1) already exist with 2_0
                    #found literal reg Some(a5) already exist with 1_0
    add     a4,a4,a2
                    #found literal reg Some(a5) already exist with 1_0
    li      a6, 1
    add     a4,a4,a2
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      store 4_0:i32 temp_9_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(s6) already exist with 4_0
    sd      s6,0(a4)
                    #      mu c_17:78 
                    #      c_17 = chi c_17:78 
                    #      new_var temp_10_17:ptr->i32 
                    #      temp_10_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
    li      a5, 0
                    #found literal reg Some(s1) already exist with 2_0
                    #found literal reg Some(s4) already exist with 0_0
    add     a5,a5,a2
                    #found literal reg Some(a6) already exist with 1_0
    li      s1, 1
    add     a5,a5,a2
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      store 2_0:i32 temp_10_17:ptr->Array:i32:[Some(2_0)] 
    li      a6, 2
    sd      a6,0(a5)
                    #      mu c_17:84 
                    #      c_17 = chi c_17:84 
                    #      new_var temp_11_17:ptr->i32 
                    #      temp_11_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
    li      a6, 0
    li      s1, 2
    li      s2, 2
    add     a6,a6,a2
    li      s1, 1
                    #found literal reg Some(s4) already exist with 0_0
    add     a6,a6,a2
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      store 5_0:i32 temp_11_17:ptr->Array:i32:[Some(2_0)] 
    li      s1, 5
    sd      s1,0(a6)
                    #      mu c_17:90 
                    #      c_17 = chi c_17:90 
                    #      new_var temp_12_17:ptr->i32 
                    #      temp_12_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
    li      s1, 0
                    #found literal reg Some(s2) already exist with 2_0
    li      s4, 1
    add     s1,s1,a2
                    #found literal reg Some(s4) already exist with 1_0
    li      s2, 0
    add     s1,s1,a2
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      store 3_0:i32 temp_12_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 3
    sd      s2,0(s1)
                    #      mu c_17:96 
                    #      c_17 = chi c_17:96 
                    #      new_var temp_13_17:ptr->i32 
                    #      temp_13_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
    li      s2, 0
    li      s4, 2
    li      s6, 2
    add     s2,s2,a2
    li      s4, 1
    li      s6, 1
    add     s2,s2,a2
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      store 6_0:i32 temp_13_17:ptr->Array:i32:[Some(2_0)] 
    li      s4, 6
    sd      s4,0(s2)
                    #      mu c_17:102 
                    #      c_17 = chi c_17:102 
                    #      new_var temp_14_17:ptr->i32 
                    #      temp_14_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
    li      s4, 0
    li      s6, 2
    li      s8, 3
    add     s4,s4,a2
    li      s6, 1
    li      s8, 0
    add     s4,s4,a2
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      store 7_0:i32 temp_14_17:ptr->Array:i32:[Some(2_0)] 
    li      s6, 7
    sd      s6,0(s4)
                    #      mu c_17:108 
                    #      c_17 = chi c_17:108 
                    #      new_var temp_15_17:ptr->i32 
                    #      temp_15_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
    li      s6, 0
    li      s8, 2
    sd      a0,456(sp)
    li      a0, 3
    add     s6,s6,a2
    li      a0, 1
    li      s8, 1
    add     s6,s6,a2
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 8_0:i32 temp_15_17:ptr->Array:i32:[Some(2_0)] 
    li      a0, 8
    sd      a0,0(s6)
                    #      mu c_17:114 
                    #      c_17 = chi c_17:114 
                    #      new_var d_17:Array:i32:[Some(4_0), Some(2_0)] 
                    #      new_var temp_16_17:ptr->i32 
                    #      temp_16_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
    li      a0, 0
    li      s8, 2
    sd      a1,360(sp)
    li      a1, 0
    sw      a2,300(sp)
    mul     a2,s8,a1
    add     a0,a0,a2
    li      a1, 1
    li      s8, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_16_17:ptr->Array:i32:[Some(2_0)] 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu d_17:122 
                    #      d_17 = chi d_17:122 
                    #      new_var temp_17_17:ptr->i32 
                    #      temp_17_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
    li      a1, 0
    li      s8, 2
    sd      a0,264(sp)
    li      a0, 0
    add     a1,a1,a2
    li      a0, 1
    li      s8, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 1_0:i32 temp_17_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(a0) already exist with 1_0
    sd      a0,0(a1)
                    #      mu d_17:128 
                    #      d_17 = chi d_17:128 
                    #      new_var temp_18_17:ptr->i32 
                    #      temp_18_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
    li      a0, 0
    li      s8, 2
    sd      a1,256(sp)
    li      a1, 1
    add     a0,a0,a2
                    #found literal reg Some(a1) already exist with 1_0
    li      s8, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 5_0:i32 temp_18_17:ptr->Array:i32:[Some(2_0)] 
    li      a1, 5
    sd      a1,0(a0)
                    #      mu d_17:134 
                    #      d_17 = chi d_17:134 
                    #      new_var temp_19_17:ptr->i32 
                    #      temp_19_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
    li      a1, 0
    li      s8, 2
    sd      a0,248(sp)
    li      a0, 2
    add     a1,a1,a2
    li      a0, 1
    li      s8, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 7_0:i32 temp_19_17:ptr->Array:i32:[Some(2_0)] 
    li      a0, 7
    sd      a0,0(a1)
                    #      mu d_17:140 
                    #      d_17 = chi d_17:140 
                    #      new_var temp_20_17:ptr->i32 
                    #      temp_20_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
    li      a0, 0
    li      s8, 2
    sd      a1,240(sp)
    li      a1, 1
    add     a0,a0,a2
                    #found literal reg Some(a1) already exist with 1_0
    li      s8, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 3_0:i32 temp_20_17:ptr->Array:i32:[Some(2_0)] 
    li      a1, 3
    sd      a1,0(a0)
                    #      mu d_17:146 
                    #      d_17 = chi d_17:146 
                    #      new_var temp_21_17:ptr->i32 
                    #      temp_21_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
    li      a1, 0
    li      s8, 2
    sd      a0,232(sp)
    li      a0, 2
    add     a1,a1,a2
    li      a0, 1
    li      s8, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 8_0:i32 temp_21_17:ptr->Array:i32:[Some(2_0)] 
    li      a0, 8
    sd      a0,0(a1)
                    #      mu d_17:152 
                    #      d_17 = chi d_17:152 
                    #      new_var e_17:Array:i32:[Some(4_0), Some(2_0)] 
                    #      new_var temp_22_17:ptr->i32 
                    #      new_var temp_23_17:i32 
                    #      temp_22_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
    li      a0, 0
    li      s8, 2
    sd      a1,224(sp)
    li      a1, 2
    add     a0,a0,a2
    li      a1, 1
    li      s8, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_23_17 = load temp_22_17:ptr->i32 
                    #      new_var temp_24_17:ptr->i32 
                    #      new_var temp_25_17:i32 
                    #      temp_24_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
    li      a1, 0
    li      s8, 2
    sd      a0,184(sp)
    li      a0, 2
    sw      a2,220(sp)
    mul     a2,s8,a0
    add     a1,a1,a2
    li      a0, 1
    li      s8, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_25_17 = load temp_24_17:ptr->i32 
                    #      new_var temp_26_17:ptr->i32 
                    #      temp_26_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
    li      a0, 0
    li      s8, 2
    sd      a1,168(sp)
    li      a1, 3
    sw      a2,300(sp)
    mul     a2,s8,a1
    add     a0,a0,a2
    li      a1, 1
    li      s8, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 8_0:i32 temp_26_17:ptr->Array:i32:[Some(2_0)] 
    li      a1, 8
    sd      a1,0(a0)
                    #      mu e_17:172 
                    #      e_17 = chi e_17:172 
                    #      new_var temp_27_17:ptr->i32 
                    #      temp_27_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
    li      a1, 0
    li      s8, 2
    sd      a0,152(sp)
    li      a0, 2
    add     a1,a1,a2
    li      a0, 1
    li      s8, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 5_0:i32 temp_27_17:ptr->Array:i32:[Some(2_0)] 
    li      a0, 5
    sd      a0,0(a1)
                    #      mu e_17:178 
                    #      e_17 = chi e_17:178 
                    #      new_var temp_28_17:ptr->i32 
                    #      temp_28_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
    li      a0, 0
    li      s8, 2
    sd      a1,144(sp)
    li      a1, 0
    add     a0,a0,a2
    li      a1, 1
    li      s8, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store temp_25_17:i32 temp_28_17:ptr->Array:i32:[Some(2_0)] 
    sd      a1,0(a0)
                    #      mu e_17:184 
                    #      e_17 = chi e_17:184 
                    #      new_var temp_29_17:ptr->i32 
                    #      temp_29_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
    li      s8, 0
    sd      a0,136(sp)
    li      a0, 2
    sw      a1,164(sp)
    li      a1, 1
    add     s8,s8,a2
                    #found literal reg Some(a1) already exist with 1_0
    li      a0, 1
    add     s8,s8,a2
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 4_0:i32 temp_29_17:ptr->Array:i32:[Some(2_0)] 
    li      a0, 4
    sd      a0,0(s8)
                    #      mu e_17:190 
                    #      e_17 = chi e_17:190 
                    #      new_var temp_30_17:ptr->i32 
                    #      temp_30_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
    li      a0, 0
    li      a1, 2
    sw      a2,92(sp)
    li      a2, 2
    sw      a3,396(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 6_0:i32 temp_30_17:ptr->Array:i32:[Some(2_0)] 
    li      a1, 6
    sd      a1,0(a0)
                    #      mu e_17:196 
                    #      e_17 = chi e_17:196 
                    #      new_var temp_31_17:ptr->i32 
                    #      temp_31_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
    li      a1, 0
    li      a2, 2
    sd      a0,120(sp)
    li      a0, 0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store temp_23_17:i32 temp_31_17:ptr->Array:i32:[Some(2_0)] 
    sd      a0,0(a1)
                    #      mu e_17:202 
                    #      e_17 = chi e_17:202 
                    #      new_var temp_32_17:ptr->i32 
                    #      temp_32_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
    li      a2, 0
    sw      a0,180(sp)
    li      a0, 2
    sd      a1,112(sp)
    li      a1, 1
    add     a2,a2,a3
                    #found literal reg Some(a1) already exist with 1_0
    li      a0, 0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 3_0:i32 temp_32_17:ptr->Array:i32:[Some(2_0)] 
    li      a0, 3
    sd      a0,0(a2)
                    #      mu e_17:208 
                    #      e_17 = chi e_17:208 
                    #      new_var temp_33_17:ptr->i32 
                    #      temp_33_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
    li      a0, 0
    li      a1, 2
    sd      a2,104(sp)
    li      a2, 3
    add     a0,a0,a3
    li      a1, 1
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 7_0:i32 temp_33_17:ptr->Array:i32:[Some(2_0)] 
    li      a1, 7
    sd      a1,0(a0)
                    #      mu e_17:214 
                    #      e_17 = chi e_17:214 
                    #      new_var temp_34_17:ptr->i32 
                    #      new_var temp_35_17:i32 
                    #      temp_34_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
    li      a1, 0
    li      a2, 2
    sd      a0,96(sp)
    li      a0, 2
    sw      a3,92(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_35_17 = load temp_34_17:ptr->i32 
                    #      new_var temp_36_17:ptr->i32 
                    #      new_var temp_37_17:i32 
                    #      temp_36_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
    li      a0, 0
    li      a2, 2
    sd      a1,56(sp)
    li      a1, 0
    sw      a3,492(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_37_17 = load temp_36_17:ptr->i32 
                    #      new_var temp_38_17:i32 
                    #      temp_38_17 = Add i32 temp_37_17, temp_35_17 
    sd      a0,40(sp)
    add     a0,a1,a2
                    #      new_var temp_39_17:ptr->i32 
                    #      new_var temp_40_17:i32 
                    #      temp_39_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
    sw      a0,32(sp)
    li      a0, 0
    sw      a1,36(sp)
    li      a1, 2
    sw      a2,52(sp)
    li      a2, 0
    add     a0,a0,a3
    li      a1, 1
                    #found literal reg Some(a2) already exist with 0_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_40_17 = load temp_39_17:ptr->i32 
                    #      new_var temp_41_17:i32 
                    #      temp_41_17 = Add i32 temp_40_17, temp_38_17 
    sd      a0,24(sp)
    add     a0,a1,a2
                    #      new_var temp_42_17:ptr->i32 
                    #      new_var temp_43_17:i32 
                    #      temp_42_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
    sw      a0,16(sp)
    li      a0, 0
    sw      a1,20(sp)
    li      a1, 2
    sw      a2,32(sp)
    li      a2, 3
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_43_17 = load temp_42_17:ptr->i32 
                    #      new_var temp_44_17:i32 
                    #      temp_44_17 = Add i32 temp_43_17, temp_41_17 
    sd      a0,8(sp)
    add     a0,a1,a2
                    #      ret temp_44_17 
    ld      ra,504(sp)
    ld      s0,496(sp)
    sw      a0,0(sp)
    addi    sp,sp,512
    ret
