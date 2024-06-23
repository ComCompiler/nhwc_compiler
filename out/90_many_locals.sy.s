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


.section
    .text
    .align 4
                    #regtab 
                    #      Define foo_0 [] -> foo_ret_0 
    .globl foo
    .type foo,@function
foo:
                    #mem layout:|ra_foo:8|s0_foo:8|temp_0:8|temp_1:8|temp_2:8|temp_3:8|temp_4:8|temp_5:8|temp_6:8|temp_7:8|temp_8:8|temp_9:8|temp_10:8|temp_11:8|temp_12:8|temp_13:8|temp_14:8|temp_15:8|temp_16:8|temp_17:8|temp_18:8|temp_19:8|temp_20:8|temp_21:8|temp_22:8|temp_23:8|temp_24:8|temp_25:8|temp_26:8|temp_27:8|arr:64|a:4|b:4|c:4|d:4|e:4|f:4|g:4|h:4|i:4|j:4|k:4|l:4|m:4|n:4|o:4|p:4|temp_28:4|temp_29:4|temp_30:4|temp_31:4|temp_32:4|temp_33:4|temp_34:4|sum1:4|temp_35:4|temp_36:4|temp_37:4|temp_38:4|temp_39:4|temp_40:4|temp_41:4|sum2:4|temp_42:8|temp_43:4|temp_44:4|temp_45:4|none:4
    addi    sp,sp,-456
    sd      ra,448(sp)
    sd      s0,440(sp)
    addi    s0,sp,456
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
                    #      alloc Array:i32:[Some(16_0)] arr_17 
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i32 c_17 
                    #      alloc i32 d_17 
                    #      alloc i32 e_17 
                    #      alloc i32 f_17 
                    #      alloc i32 g_17 
                    #      alloc i32 h_17 
                    #      alloc i32 i_17 
                    #      alloc i32 j_17 
                    #      alloc i32 k_17 
                    #      alloc i32 l_17 
                    #      alloc i32 m_17 
                    #      alloc i32 n_17 
                    #      alloc i32 o_17 
                    #      alloc i32 p_17 
                    #      alloc i32 temp_28_17 
                    #      alloc i32 temp_29_17 
                    #      alloc i32 temp_30_17 
                    #      alloc i32 temp_31_17 
                    #      alloc i32 temp_32_17 
                    #      alloc i32 temp_33_17 
                    #      alloc i32 temp_34_17 
                    #      alloc i32 sum1_17 
                    #      alloc i32 temp_35_17 
                    #      alloc i32 temp_36_17 
                    #      alloc i32 temp_37_17 
                    #      alloc i32 temp_38_17 
                    #      alloc i32 temp_39_17 
                    #      alloc i32 temp_40_17 
                    #      alloc i32 temp_41_17 
                    #      alloc i32 sum2_17 
                    #      alloc ptr->i32 temp_42_17 
                    #      alloc i32 temp_43_17 
                    #      alloc i32 temp_44_17 
                    #      alloc i32 temp_45_17 
                    #regtab 
                    #      label L1_0: 
.L1_0:
                    #      new_var arr_17:Array:i32:[Some(16_0)] 
                    #      new_var temp_0_17:ptr->i32 
                    #      temp_0_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a0, 0
    li      a1, 1
    li      a2, 1
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 1_0:i32 temp_0_17:ptr->i32 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a1,0(a0)
                    #      mu arr_17:21 
                    #      arr_17 = chi arr_17:21 
                    #      new_var temp_1_17:ptr->i32 
                    #      temp_1_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(11_0)] 
    li      a4, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      a5, 11
    add     a4,a4,a3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      store 3_0:i32 temp_1_17:ptr->i32 
    li      a6, 3
    sd      a6,0(a4)
                    #      mu arr_17:27 
                    #      arr_17 = chi arr_17:27 
                    #      new_var temp_2_17:ptr->i32 
                    #      temp_2_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(9_0)] 
    li      a7, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      s1, 9
    add     a7,a7,a3
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 1_0:i32 temp_2_17:ptr->i32 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a1,0(a7)
                    #      mu arr_17:33 
                    #      arr_17 = chi arr_17:33 
                    #      new_var temp_3_17:ptr->i32 
                    #      temp_3_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(14_0)] 
    li      s2, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      s3, 14
    add     s2,s2,a3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      store 2_0:i32 temp_3_17:ptr->i32 
    li      s4, 2
    sd      s4,0(s2)
                    #      mu arr_17:39 
                    #      arr_17 = chi arr_17:39 
                    #      new_var temp_4_17:ptr->i32 
                    #      temp_4_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(17_0)] 
    li      s5, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      s6, 17
    add     s5,s5,a3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      store 1_0:i32 temp_4_17:ptr->i32 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a1,0(s5)
                    #      mu arr_17:45 
                    #      arr_17 = chi arr_17:45 
                    #      new_var temp_5_17:ptr->i32 
                    #      temp_5_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(3_0)] 
    li      s7, 0
                    #found literal reg Some(a1) already exist with 1_0
                    #found literal reg Some(a6) already exist with 3_0
    add     s7,s7,a3
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 3_0:i32 temp_5_17:ptr->i32 
                    #found literal reg Some(a6) already exist with 3_0
    sd      a6,0(s7)
                    #      mu arr_17:51 
                    #      arr_17 = chi arr_17:51 
                    #      new_var temp_6_17:ptr->i32 
                    #      temp_6_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(19_0)] 
    li      s8, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      s9, 19
    add     s8,s8,a3
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 3_0:i32 temp_6_17:ptr->i32 
                    #found literal reg Some(a6) already exist with 3_0
    sd      a6,0(s8)
                    #      mu arr_17:57 
                    #      arr_17 = chi arr_17:57 
                    #      new_var temp_7_17:ptr->i32 
                    #      temp_7_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(2_0)] 
    li      s10, 0
                    #found literal reg Some(a1) already exist with 1_0
                    #found literal reg Some(s4) already exist with 2_0
    add     s10,s10,a3
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store 2_0:i32 temp_7_17:ptr->i32 
                    #found literal reg Some(s4) already exist with 2_0
    sd      s4,0(s10)
                    #      mu arr_17:63 
                    #      arr_17 = chi arr_17:63 
                    #      new_var temp_8_17:ptr->i32 
                    #      temp_8_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(21_0)] 
    li      s11, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      a2, 21
    add     s11,s11,a3
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      store 1_0:i32 temp_8_17:ptr->i32 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a1,0(s11)
                    #      mu arr_17:69 
                    #      arr_17 = chi arr_17:69 
                    #      new_var temp_9_17:ptr->i32 
                    #      temp_9_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(13_0)] 
    li      a1, 0
    li      a2, 1
    li      a5, 13
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 1_0:i32 temp_9_17:ptr->i32 
                    #found literal reg Some(a2) already exist with 1_0
    sd      a2,0(a1)
                    #      mu arr_17:75 
                    #      arr_17 = chi arr_17:75 
                    #      new_var temp_10_17:ptr->i32 
                    #      temp_10_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(23_0)] 
    li      a2, 0
    li      a5, 1
    li      a6, 23
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 3_0:i32 temp_10_17:ptr->i32 
    li      a5, 3
    sd      a5,0(a2)
                    #      mu arr_17:81 
                    #      arr_17 = chi arr_17:81 
                    #      new_var temp_11_17:ptr->i32 
                    #      temp_11_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(24_0)] 
    li      a5, 0
    li      a6, 1
    li      s1, 24
    add     a5,a5,a3
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      store 0_0:i32 temp_11_17:ptr->i32 
    li      a6, 0
    sd      a6,0(a5)
                    #      mu arr_17:87 
                    #      arr_17 = chi arr_17:87 
                    #      new_var temp_12_17:ptr->i32 
                    #      temp_12_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(10_0)] 
    li      a6, 0
    li      s1, 1
    li      s3, 10
    add     a6,a6,a3
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      store 2_0:i32 temp_12_17:ptr->i32 
                    #found literal reg Some(s4) already exist with 2_0
    sd      s4,0(a6)
                    #      mu arr_17:93 
                    #      arr_17 = chi arr_17:93 
                    #      new_var temp_13_17:ptr->i32 
                    #      temp_13_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(8_0)] 
    li      s1, 0
    li      s3, 1
    li      s4, 8
    add     s1,s1,a3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      store 0_0:i32 temp_13_17:ptr->i32 
    li      s3, 0
    sd      s3,0(s1)
                    #      mu arr_17:99 
                    #      arr_17 = chi arr_17:99 
                    #      new_var temp_14_17:ptr->i32 
                    #      temp_14_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(16_0)] 
    li      s3, 0
    li      s4, 1
    li      s6, 16
    add     s3,s3,a3
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 0_0:i32 temp_14_17:ptr->i32 
    li      s4, 0
    sd      s4,0(s3)
                    #      mu arr_17:105 
                    #      arr_17 = chi arr_17:105 
                    #      new_var temp_15_17:ptr->i32 
                    #      temp_15_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(18_0)] 
    li      s4, 0
    li      s6, 1
    li      s9, 18
    add     s4,s4,a3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      store 2_0:i32 temp_15_17:ptr->i32 
    li      s6, 2
    sd      s6,0(s4)
                    #      mu arr_17:111 
                    #      arr_17 = chi arr_17:111 
                    #      new_var temp_16_17:ptr->i32 
                    #      temp_16_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(20_0)] 
    li      s6, 0
    li      s9, 1
    sd      a0,432(sp)
    li      a0, 20
    add     s6,s6,a3
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 0_0:i32 temp_16_17:ptr->i32 
    li      a0, 0
    sd      a0,0(s6)
                    #      mu arr_17:117 
                    #      arr_17 = chi arr_17:117 
                    #      new_var temp_17_17:ptr->i32 
                    #      temp_17_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(12_0)] 
    li      a0, 0
                    #found literal reg Some(s9) already exist with 1_0
    sd      a1,360(sp)
    li      a1, 12
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 0_0:i32 temp_17_17:ptr->i32 
    li      a1, 0
    sd      a1,0(a0)
                    #      mu arr_17:123 
                    #      arr_17 = chi arr_17:123 
                    #      new_var temp_18_17:ptr->i32 
                    #      temp_18_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(25_0)] 
    li      a1, 0
                    #found literal reg Some(s9) already exist with 1_0
    sd      a0,296(sp)
    li      a0, 25
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 1_0:i32 temp_18_17:ptr->i32 
                    #found literal reg Some(s9) already exist with 1_0
    sd      s9,0(a1)
                    #      mu arr_17:129 
                    #      arr_17 = chi arr_17:129 
                    #      new_var temp_19_17:ptr->i32 
                    #      temp_19_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(0_0)] 
    li      a0, 0
                    #found literal reg Some(s9) already exist with 1_0
    sd      a1,288(sp)
    li      a1, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 0_0:i32 temp_19_17:ptr->i32 
                    #found literal reg Some(a1) already exist with 0_0
    sd      a1,0(a0)
                    #      mu arr_17:135 
                    #      arr_17 = chi arr_17:135 
                    #      new_var temp_20_17:ptr->i32 
                    #      temp_20_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(6_0)] 
    li      a1, 0
                    #found literal reg Some(s9) already exist with 1_0
    sd      a0,280(sp)
    li      a0, 6
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 2_0:i32 temp_20_17:ptr->i32 
    li      a0, 2
    sd      a0,0(a1)
                    #      mu arr_17:141 
                    #      arr_17 = chi arr_17:141 
                    #      new_var temp_21_17:ptr->i32 
                    #      temp_21_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(27_0)] 
    li      a0, 0
                    #found literal reg Some(s9) already exist with 1_0
    sd      a1,272(sp)
    li      a1, 27
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 3_0:i32 temp_21_17:ptr->i32 
    li      a1, 3
    sd      a1,0(a0)
                    #      mu arr_17:147 
                    #      arr_17 = chi arr_17:147 
                    #      new_var temp_22_17:ptr->i32 
                    #      temp_22_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(22_0)] 
    li      a1, 0
                    #found literal reg Some(s9) already exist with 1_0
    sd      a0,264(sp)
    li      a0, 22
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 2_0:i32 temp_22_17:ptr->i32 
    li      a0, 2
    sd      a0,0(a1)
                    #      mu arr_17:153 
                    #      arr_17 = chi arr_17:153 
                    #      new_var temp_23_17:ptr->i32 
                    #      temp_23_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(5_0)] 
    li      a0, 0
                    #found literal reg Some(s9) already exist with 1_0
    sd      a1,256(sp)
    li      a1, 5
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 1_0:i32 temp_23_17:ptr->i32 
                    #found literal reg Some(s9) already exist with 1_0
    sd      s9,0(a0)
                    #      mu arr_17:159 
                    #      arr_17 = chi arr_17:159 
                    #      new_var temp_24_17:ptr->i32 
                    #      temp_24_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(15_0)] 
    li      a1, 0
                    #found literal reg Some(s9) already exist with 1_0
    sd      a0,248(sp)
    li      a0, 15
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 3_0:i32 temp_24_17:ptr->i32 
    li      a0, 3
    sd      a0,0(a1)
                    #      mu arr_17:165 
                    #      arr_17 = chi arr_17:165 
                    #      new_var temp_25_17:ptr->i32 
                    #      temp_25_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(4_0)] 
    li      a0, 0
                    #found literal reg Some(s9) already exist with 1_0
    sd      a1,240(sp)
    li      a1, 4
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 0_0:i32 temp_25_17:ptr->i32 
    li      a1, 0
    sd      a1,0(a0)
                    #      mu arr_17:171 
                    #      arr_17 = chi arr_17:171 
                    #      new_var temp_26_17:ptr->i32 
                    #      temp_26_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(7_0)] 
    li      a1, 0
                    #found literal reg Some(s9) already exist with 1_0
    sd      a0,232(sp)
    li      a0, 7
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 3_0:i32 temp_26_17:ptr->i32 
    li      a0, 3
    sd      a0,0(a1)
                    #      mu arr_17:177 
                    #      arr_17 = chi arr_17:177 
                    #      new_var temp_27_17:ptr->i32 
                    #      temp_27_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(26_0)] 
    li      a0, 0
                    #found literal reg Some(s9) already exist with 1_0
    sd      a1,224(sp)
    li      a1, 26
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_27_17:ptr->i32 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu arr_17:183 
                    #      arr_17 = chi arr_17:183 
                    #      a_17 = i32 3_0 
    li      a1, 3
                    #      b_17 = i32 7_0 
    li      s9, 7
                    #      c_17 = i32 5_0 
    sd      a0,216(sp)
    li      a0, 5
                    #      d_17 = i32 6_0 
    sw      a0,140(sp)
    li      a0, 6
                    #      e_17 = i32 1_0 
    sw      a0,136(sp)
    li      a0, 1
                    #      f_17 = i32 0_0 
    sw      a0,132(sp)
    li      a0, 0
                    #      g_17 = i32 3_0 
    sw      a0,128(sp)
    li      a0, 3
                    #      h_17 = i32 5_0 
    sw      a0,124(sp)
    li      a0, 5
                    #      i_17 = i32 4_0 
    sw      a0,120(sp)
    li      a0, 4
                    #      j_17 = i32 2_0 
    sw      a0,116(sp)
    li      a0, 2
                    #      k_17 = i32 7_0 
    sw      a0,112(sp)
    li      a0, 7
                    #      l_17 = i32 9_0 
    sw      a0,108(sp)
    li      a0, 9
                    #      m_17 = i32 8_0 
    sw      a0,104(sp)
    li      a0, 8
                    #      n_17 = i32 1_0 
    sw      a0,100(sp)
    li      a0, 1
                    #      o_17 = i32 4_0 
    sw      a0,96(sp)
    li      a0, 4
                    #      p_17 = i32 6_0 
    sw      a0,92(sp)
    li      a0, 6
                    #      new_var temp_28_17:i32 
                    #      temp_28_17 = Add i32 g_17, h_17 
    sw      a0,88(sp)
    sw      a1,148(sp)
    sd      a2,352(sp)
    add     a2,a0,a1
                    #      new_var temp_29_17:i32 
                    #      temp_29_17 = Add i32 f_17, temp_28_17 
    sw      a0,124(sp)
    sw      a1,120(sp)
    add     a1,a0,a2
                    #      new_var temp_30_17:i32 
                    #      temp_30_17 = Add i32 e_17, temp_29_17 
    sw      a0,128(sp)
    sw      a2,84(sp)
    add     a2,a0,a1
                    #      new_var temp_31_17:i32 
                    #      temp_31_17 = Add i32 d_17, temp_30_17 
    sw      a0,132(sp)
    sw      a1,80(sp)
    add     a1,a0,a2
                    #      new_var temp_32_17:i32 
                    #      temp_32_17 = Add i32 c_17, temp_31_17 
    sw      a0,136(sp)
    sw      a2,76(sp)
    add     a2,a0,a1
                    #      new_var temp_33_17:i32 
                    #      temp_33_17 = Add i32 b_17, temp_32_17 
    sw      a0,140(sp)
    add     a0,s9,a2
                    #      new_var temp_34_17:i32 
                    #      temp_34_17 = Add i32 a_17, temp_33_17 
    sw      a0,64(sp)
    sw      a1,72(sp)
    sw      a2,68(sp)
    add     a2,a0,a1
                    #      sum1_17 = i32 temp_34_17 
    sw      a0,148(sp)
    mv      a0, a2
                    #      new_var temp_35_17:i32 
                    #      temp_35_17 = Add i32 o_17, p_17 
    sw      a0,56(sp)
    sw      a1,64(sp)
    sw      a2,60(sp)
    add     a2,a0,a1
                    #      new_var temp_36_17:i32 
                    #      temp_36_17 = Add i32 n_17, temp_35_17 
    sw      a0,92(sp)
    sw      a1,88(sp)
    add     a1,a0,a2
                    #      new_var temp_37_17:i32 
                    #      temp_37_17 = Add i32 m_17, temp_36_17 
    sw      a0,96(sp)
    sw      a2,52(sp)
    add     a2,a0,a1
                    #      new_var temp_38_17:i32 
                    #      temp_38_17 = Add i32 l_17, temp_37_17 
    sw      a0,100(sp)
    sw      a1,48(sp)
    add     a1,a0,a2
                    #      new_var temp_39_17:i32 
                    #      temp_39_17 = Add i32 k_17, temp_38_17 
    sw      a0,104(sp)
    sw      a2,44(sp)
    add     a2,a0,a1
                    #      new_var temp_40_17:i32 
                    #      temp_40_17 = Add i32 j_17, temp_39_17 
    sw      a0,108(sp)
    sw      a1,40(sp)
    add     a1,a0,a2
                    #      new_var temp_41_17:i32 
                    #      temp_41_17 = Add i32 i_17, temp_40_17 
    sw      a0,112(sp)
    sw      a2,36(sp)
    add     a2,a0,a1
                    #      sum2_17 = i32 temp_41_17 
    sw      a0,116(sp)
    mv      a0, a2
                    #      new_var temp_42_17:ptr->i32 
                    #      new_var temp_43_17:i32 
                    #      temp_42_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [Some(a_17)] 
    sw      a0,24(sp)
    li      a0, 0
    sw      a1,32(sp)
    li      a1, 1
    sw      a2,28(sp)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_43_17 = load temp_42_17:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_44_17:i32 
                    #      temp_44_17 = Add i32 sum2_17, temp_43_17 
    sd      a0,16(sp)
    sw      a2,148(sp)
    add     a2,a0,a1
                    #      new_var temp_45_17:i32 
                    #      temp_45_17 = Add i32 sum1_17, temp_44_17 
    sw      a0,24(sp)
    sw      a1,12(sp)
    add     a1,a0,a2
                    #      ret temp_45_17 
    ld      ra,448(sp)
    ld      s0,440(sp)
    sw      a1,4(sp)
    sw      a0,56(sp)
    addi    sp,sp,456
    ret
                    #regtab     a0:Freed { symidx: temp_45_17, tracked: true } |     a2:Freed { symidx: temp_44_17, tracked: true } |     a3:Freed { symidx: arr_17, tracked: true } |     a4:Freed { symidx: temp_1_17, tracked: true } |     a5:Freed { symidx: temp_11_17, tracked: true } |     a6:Freed { symidx: temp_12_17, tracked: true } |     a7:Freed { symidx: temp_2_17, tracked: true } |     s10:Freed { symidx: temp_7_17, tracked: true } |     s11:Freed { symidx: temp_8_17, tracked: true } |     s1:Freed { symidx: temp_13_17, tracked: true } |     s2:Freed { symidx: temp_3_17, tracked: true } |     s3:Freed { symidx: temp_14_17, tracked: true } |     s4:Freed { symidx: temp_15_17, tracked: true } |     s5:Freed { symidx: temp_4_17, tracked: true } |     s6:Freed { symidx: temp_16_17, tracked: true } |     s7:Freed { symidx: temp_5_17, tracked: true } |     s8:Freed { symidx: temp_6_17, tracked: true } |     s9:Freed { symidx: b_17, tracked: true } | 
                    #regtab 
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a:4|b:4|c:4|d:4|e:4|f:4|g:4|h:4|i:4|j:4|k:4|l:4|m:4|n:4|o:4|p:4|temp_46:4|temp_47:4|temp_48:4|temp_49:4|temp_50:4|temp_51:4|temp_52:4|sum1:4|temp_53:4|temp_54:4|temp_55:4|temp_56:4|temp_57:4|temp_58:4|temp_59:4|sum2:4|temp_60:4|temp_61:4|q:4|r:4|s:4|t:4|u:4|v:4|w:4|x:4|temp_62:4|temp_63:4|temp_64:4|temp_65:4|temp_66:4|temp_67:4|temp_68:4|temp_69:4|temp_70:4|sum3:4|temp_71:4|temp_72:4|sum:4|none:4
    addi    sp,sp,-240
    sd      ra,232(sp)
    sd      s0,224(sp)
    addi    s0,sp,240
                    #      alloc i32 a_24 
                    #      alloc i32 b_24 
                    #      alloc i32 c_24 
                    #      alloc i32 d_24 
                    #      alloc i32 e_24 
                    #      alloc i32 f_24 
                    #      alloc i32 g_24 
                    #      alloc i32 h_24 
                    #      alloc i32 i_24 
                    #      alloc i32 j_24 
                    #      alloc i32 k_24 
                    #      alloc i32 l_24 
                    #      alloc i32 m_24 
                    #      alloc i32 n_24 
                    #      alloc i32 o_24 
                    #      alloc i32 p_24 
                    #      alloc i32 temp_46_24 
                    #      alloc i32 temp_47_24 
                    #      alloc i32 temp_48_24 
                    #      alloc i32 temp_49_24 
                    #      alloc i32 temp_50_24 
                    #      alloc i32 temp_51_24 
                    #      alloc i32 temp_52_24 
                    #      alloc i32 sum1_24 
                    #      alloc i32 temp_53_24 
                    #      alloc i32 temp_54_24 
                    #      alloc i32 temp_55_24 
                    #      alloc i32 temp_56_24 
                    #      alloc i32 temp_57_24 
                    #      alloc i32 temp_58_24 
                    #      alloc i32 temp_59_24 
                    #      alloc i32 sum2_24 
                    #      alloc i32 temp_60_24 
                    #      alloc i32 temp_61_24 
                    #      alloc i32 q_24 
                    #      alloc i32 r_24 
                    #      alloc i32 s_24 
                    #      alloc i32 t_24 
                    #      alloc i32 u_24 
                    #      alloc i32 v_24 
                    #      alloc i32 w_24 
                    #      alloc i32 x_24 
                    #      alloc i32 temp_62_24 
                    #      alloc i32 temp_63_24 
                    #      alloc i32 temp_64_24 
                    #      alloc i32 temp_65_24 
                    #      alloc i32 temp_66_24 
                    #      alloc i32 temp_67_24 
                    #      alloc i32 temp_68_24 
                    #      alloc i32 temp_69_24 
                    #      alloc i32 temp_70_24 
                    #      alloc i32 sum3_24 
                    #      alloc i32 temp_71_24 
                    #      alloc i32 temp_72_24 
                    #      alloc i32 sum_24 
                    #regtab 
                    #      label L0_0: 
.L0_0:
                    #      a_24 = i32 3_0 
    li      a0, 3
                    #      b_24 = i32 7_0 
    li      a1, 7
                    #      c_24 = i32 5_0 
    li      a2, 5
                    #      d_24 = i32 6_0 
    li      a3, 6
                    #      e_24 = i32 1_0 
    li      a4, 1
                    #      f_24 = i32 0_0 
    li      a5, 0
                    #      g_24 = i32 3_0 
    li      a6, 3
                    #      h_24 = i32 5_0 
    li      a7, 5
                    #      i_24 = i32 4_0 
    li      s1, 4
                    #      j_24 = i32 2_0 
    li      s2, 2
                    #      k_24 = i32 7_0 
    li      s3, 7
                    #      l_24 = i32 9_0 
    li      s4, 9
                    #      m_24 = i32 8_0 
    li      s5, 8
                    #      n_24 = i32 1_0 
    li      s6, 1
                    #      o_24 = i32 4_0 
    li      s7, 4
                    #      p_24 = i32 6_0 
    li      s8, 6
                    #      new_var temp_46_24:i32 
                    #      temp_46_24 = Add i32 g_24, h_24 
    add     s9,a6,a7
                    #      new_var temp_47_24:i32 
                    #      temp_47_24 = Add i32 f_24, temp_46_24 
    add     s10,a5,s9
                    #      new_var temp_48_24:i32 
                    #      temp_48_24 = Add i32 e_24, temp_47_24 
    add     s11,a4,s10
                    #      new_var temp_49_24:i32 
                    #      temp_49_24 = Add i32 d_24, temp_48_24 
    sw      a0,220(sp)
    add     a0,a3,s11
                    #      new_var temp_50_24:i32 
                    #      temp_50_24 = Add i32 c_24, temp_49_24 
    sw      a1,216(sp)
    add     a1,a2,a0
                    #      new_var temp_51_24:i32 
                    #      temp_51_24 = Add i32 b_24, temp_50_24 
    sw      a0,144(sp)
    sw      a2,212(sp)
    add     a2,a0,a1
                    #      new_var temp_52_24:i32 
                    #      temp_52_24 = Add i32 a_24, temp_51_24 
    sw      a0,216(sp)
    sw      a1,140(sp)
    add     a1,a0,a2
                    #      sum1_24 = i32 temp_52_24 
    sw      a0,220(sp)
    mv      a0, a1
                    #      new_var temp_53_24:i32 
                    #      temp_53_24 = Add i32 o_24, p_24 
    sw      a0,128(sp)
    add     a0,s7,s8
                    #      new_var temp_54_24:i32 
                    #      temp_54_24 = Add i32 n_24, temp_53_24 
    sw      a1,132(sp)
    add     a1,s6,a0
                    #      new_var temp_55_24:i32 
                    #      temp_55_24 = Add i32 m_24, temp_54_24 
    sw      a0,124(sp)
    add     a0,s5,a1
                    #      new_var temp_56_24:i32 
                    #      temp_56_24 = Add i32 l_24, temp_55_24 
    sw      a1,120(sp)
    add     a1,s4,a0
                    #      new_var temp_57_24:i32 
                    #      temp_57_24 = Add i32 k_24, temp_56_24 
    sw      a0,116(sp)
    add     a0,s3,a1
                    #      new_var temp_58_24:i32 
                    #      temp_58_24 = Add i32 j_24, temp_57_24 
    sw      a1,112(sp)
    add     a1,s2,a0
                    #      new_var temp_59_24:i32 
                    #      temp_59_24 = Add i32 i_24, temp_58_24 
    sw      a0,108(sp)
    add     a0,s1,a1
                    #      sum2_24 = i32 temp_59_24 
    sw      a1,104(sp)
    mv      a1, a0
                    #      new_var temp_60_24:i32 
                    #      temp_60_24 =  Call i32 foo_0() 
                    #saved register dumping to mem
    sw      s1,188(sp)
    sw      s2,184(sp)
    sw      s3,180(sp)
    sw      s4,176(sp)
    sw      s5,172(sp)
    sw      s6,168(sp)
    sw      s7,164(sp)
    sw      s8,160(sp)
    sw      s9,156(sp)
    sw      s10,152(sp)
    sw      s11,148(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    foo
    sw      a0,100(sp)
    sw      a0,92(sp)
                    #      new_var temp_61_24:i32 
                    #      temp_61_24 = Add i32 sum1_24, temp_60_24 
    add     s2,s1,a0
                    #      sum1_24 = i32 temp_61_24 
    mv      s1, s2
                    #      q_24 = i32 4_0 
    li      s3, 4
                    #      r_24 = i32 7_0 
    li      s4, 7
                    #      s_24 = i32 2_0 
    li      s5, 2
                    #      t_24 = i32 5_0 
    li      s6, 5
                    #      u_24 = i32 8_0 
    li      s7, 8
                    #      v_24 = i32 0_0 
    li      s8, 0
                    #      w_24 = i32 6_0 
    li      s9, 6
                    #      x_24 = i32 3_0 
    li      s10, 3
                    #      new_var temp_62_24:i32 
                    #      temp_62_24 =  Call i32 foo_0() 
                    #saved register dumping to mem
    sw      s1,128(sp)
    sw      s2,88(sp)
    sw      s3,84(sp)
    sw      s4,80(sp)
    sw      s5,76(sp)
    sw      s6,72(sp)
    sw      s7,68(sp)
    sw      s8,64(sp)
    sw      s9,60(sp)
    sw      s10,56(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    foo
    sw      a0,92(sp)
    sw      a0,52(sp)
                    #      new_var temp_63_24:i32 
                    #      temp_63_24 = Add i32 sum2_24, temp_62_24 
    add     s1,a1,a0
                    #      sum2_24 = i32 temp_63_24 
    mv      a1, s1
                    #      a_24 = i32 i_24 
    mv      s3, s2
                    #      b_24 = i32 j_24 
    mv      s5, s4
                    #      c_24 = i32 k_24 
    mv      s7, s6
                    #      d_24 = i32 l_24 
    mv      a3, s8
                    #      e_24 = i32 m_24 
    mv      a4, s9
                    #      f_24 = i32 n_24 
    mv      a5, s10
                    #      g_24 = i32 o_24 
    mv      a6, s11
                    #      h_24 = i32 p_24 
    sw      a0,52(sp)
    mv      a7, a0
                    #      new_var temp_64_24:i32 
                    #      temp_64_24 = Add i32 w_24, x_24 
    sw      a0,160(sp)
    sw      a1,96(sp)
    sw      a2,136(sp)
    add     a2,a0,a1
                    #      new_var temp_65_24:i32 
                    #      temp_65_24 = Add i32 v_24, temp_64_24 
    sw      a0,60(sp)
    sw      a1,56(sp)
    add     a1,a0,a2
                    #      new_var temp_66_24:i32 
                    #      temp_66_24 = Add i32 u_24, temp_65_24 
    sw      a0,64(sp)
    sw      a2,44(sp)
    add     a2,a0,a1
                    #      new_var temp_67_24:i32 
                    #      temp_67_24 = Add i32 t_24, temp_66_24 
    sw      a0,68(sp)
    sw      a1,40(sp)
    add     a1,a0,a2
                    #      new_var temp_68_24:i32 
                    #      temp_68_24 = Add i32 s_24, temp_67_24 
    sw      a0,72(sp)
    sw      a2,36(sp)
    add     a2,a0,a1
                    #      new_var temp_69_24:i32 
                    #      temp_69_24 = Add i32 r_24, temp_68_24 
    sw      a0,76(sp)
    sw      a1,32(sp)
    add     a1,a0,a2
                    #      new_var temp_70_24:i32 
                    #      temp_70_24 = Add i32 q_24, temp_69_24 
    sw      a0,80(sp)
    sw      a2,28(sp)
    add     a2,a0,a1
                    #      sum3_24 = i32 temp_70_24 
    sw      a0,84(sp)
    mv      a0, a2
                    #      new_var temp_71_24:i32 
                    #      temp_71_24 = Add i32 sum2_24, sum3_24 
    sw      a0,16(sp)
    sw      a1,24(sp)
    sw      a2,20(sp)
    add     a2,a0,a1
                    #      new_var temp_72_24:i32 
                    #      temp_72_24 = Add i32 sum1_24, temp_71_24 
    sw      a0,96(sp)
    sw      a1,16(sp)
    add     a1,a0,a2
                    #      sum_24 = i32 temp_72_24 
    sw      a0,128(sp)
    mv      a0, a1
                    #       Call void putint_0(sum_24) 
                    #saved register dumping to mem
    sw      s1,48(sp)
    sw      s2,188(sp)
    sw      s3,220(sp)
    sw      s4,184(sp)
    sw      s5,216(sp)
    sw      s6,180(sp)
    sw      s7,212(sp)
    sw      s8,176(sp)
    sw      s9,172(sp)
    sw      s10,168(sp)
    sw      s11,164(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
    lw      a0,4(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      ret 0_0 
    ld      ra,232(sp)
    ld      s0,224(sp)
    li      a0, 0
    addi    sp,sp,240
    ret
                    #regtab     a0:Freed { symidx: 0_0, tracked: false } |     a1:Freed { symidx: temp_72_24, tracked: true } |     a2:Freed { symidx: temp_71_24, tracked: true } |     a3:Freed { symidx: d_24, tracked: true } |     a4:Freed { symidx: e_24, tracked: true } |     a5:Freed { symidx: f_24, tracked: true } |     a6:Freed { symidx: g_24, tracked: true } |     a7:Freed { symidx: h_24, tracked: true } | 
