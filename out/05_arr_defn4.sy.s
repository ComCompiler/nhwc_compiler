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
                    #mem layout:|ra_main:8|s0_main:8|temp_0:8|temp_1:8|temp_2:8|temp_3:8|temp_4:8|a:32|N:4|b:32|none:4|temp_5:8|temp_6:8|temp_7:8|temp_8:8|temp_9:8|temp_10:8|temp_11:8|temp_12:8|c:32|temp_13:8|temp_14:4|none:4|temp_15:8|temp_16:8|temp_17:8|temp_18:8|temp_19:8|temp_20:8|d:32|temp_21:8|temp_22:4|none:4|temp_23:8|temp_24:4|none:4|temp_25:8|temp_26:8|temp_27:8|temp_28:8|temp_29:8|temp_30:8|temp_31:8|temp_32:8|e:32
    addi    sp,sp,-448
    sd      ra,440(sp)
    sd      s0,432(sp)
    addi    s0,sp,448
                    #      alloc ptr->i32 temp_0_17 
                    #      alloc ptr->i32 temp_1_17 
                    #      alloc ptr->i32 temp_2_17 
                    #      alloc ptr->i32 temp_3_17 
                    #      alloc ptr->i32 temp_4_17 
                    #      alloc Array:i32:[Some(4_0), Some(2_0)] a_17 
                    #      alloc i32 N_17 
                    #      alloc Array:i32:[Some(4_0), Some(2_0)] b_17 
                    #      alloc ptr->i32 temp_5_17 
                    #      alloc ptr->i32 temp_6_17 
                    #      alloc ptr->i32 temp_7_17 
                    #      alloc ptr->i32 temp_8_17 
                    #      alloc ptr->i32 temp_9_17 
                    #      alloc ptr->i32 temp_10_17 
                    #      alloc ptr->i32 temp_11_17 
                    #      alloc ptr->i32 temp_12_17 
                    #      alloc Array:i32:[Some(4_0), Some(2_0)] c_17 
                    #      alloc ptr->i32 temp_13_17 
                    #      alloc i32 temp_14_17 
                    #      alloc ptr->i32 temp_15_17 
                    #      alloc ptr->i32 temp_16_17 
                    #      alloc ptr->i32 temp_17_17 
                    #      alloc ptr->i32 temp_18_17 
                    #      alloc ptr->i32 temp_19_17 
                    #      alloc ptr->i32 temp_20_17 
                    #      alloc Array:i32:[Some(4_0), Some(2_0)] d_17 
                    #      alloc ptr->i32 temp_21_17 
                    #      alloc i32 temp_22_17 
                    #      alloc ptr->i32 temp_23_17 
                    #      alloc i32 temp_24_17 
                    #      alloc ptr->i32 temp_25_17 
                    #      alloc ptr->i32 temp_26_17 
                    #      alloc ptr->i32 temp_27_17 
                    #      alloc ptr->i32 temp_28_17 
                    #      alloc ptr->i32 temp_29_17 
                    #      alloc ptr->i32 temp_30_17 
                    #      alloc ptr->i32 temp_31_17 
                    #      alloc ptr->i32 temp_32_17 
                    #      alloc Array:i32:[Some(4_0), Some(2_0), Some(1_0)] e_17 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_17:Array:i32:[Some(4_0), Some(2_0)] 
                    #      new_var temp_0_17:ptr->i32 
                    #      temp_0_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
    li      a0, 0
    li      a1, 2
    li      a2, 2
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    li      a5, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 7_0:i32 temp_0_17:ptr->Array:i32:[Some(2_0)] 
    li      a6, 7
    sd      a6,0(a0)
                    #      mu a_17:20 
                    #      a_17 = chi a_17:20 
                    #      new_var temp_1_17:ptr->i32 
                    #      temp_1_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
    li      a7, 0
                    #found literal reg Some(a1) already exist with 2_0
                    #found literal reg Some(a4) already exist with 1_0
    add     a7,a7,a3
                    #found literal reg Some(a4) already exist with 1_0
                    #found literal reg Some(a5) already exist with 0_0
    add     a7,a7,a3
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 3_0:i32 temp_1_17:ptr->Array:i32:[Some(2_0)] 
    li      s1, 3
    sd      s1,0(a7)
                    #      mu a_17:26 
                    #      a_17 = chi a_17:26 
                    #      new_var temp_2_17:ptr->i32 
                    #      temp_2_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
    li      s2, 0
                    #found literal reg Some(a1) already exist with 2_0
                    #found literal reg Some(a5) already exist with 0_0
    add     s2,s2,a3
                    #found literal reg Some(a4) already exist with 1_0
                    #found literal reg Some(a5) already exist with 0_0
    add     s2,s2,a3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      store 1_0:i32 temp_2_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(a4) already exist with 1_0
    sd      a4,0(s2)
                    #      mu a_17:32 
                    #      a_17 = chi a_17:32 
                    #      new_var temp_3_17:ptr->i32 
                    #      temp_3_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
    li      s3, 0
                    #found literal reg Some(a1) already exist with 2_0
                    #found literal reg Some(a4) already exist with 1_0
    add     s3,s3,a3
                    #found literal reg Some(a4) already exist with 1_0
    li      s4, 1
    add     s3,s3,a3
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 4_0:i32 temp_3_17:ptr->Array:i32:[Some(2_0)] 
    li      s5, 4
    sd      s5,0(s3)
                    #      mu a_17:38 
                    #      a_17 = chi a_17:38 
                    #      new_var temp_4_17:ptr->i32 
                    #      temp_4_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
    li      s6, 0
                    #found literal reg Some(a1) already exist with 2_0
                    #found literal reg Some(a5) already exist with 0_0
    add     s6,s6,a3
                    #found literal reg Some(s4) already exist with 1_0
                    #found literal reg Some(a4) already exist with 1_0
    add     s6,s6,a3
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 2_0:i32 temp_4_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(a1) already exist with 2_0
    sd      a1,0(s6)
                    #      mu a_17:44 
                    #      a_17 = chi a_17:44 
                    #      N_17 = i32 3_0 
    li      s7, 3
                    #      new_var b_17:Array:i32:[Some(4_0), Some(2_0)] 
                    #      new_var c_17:Array:i32:[Some(4_0), Some(2_0)] 
                    #      new_var temp_5_17:ptr->i32 
                    #      temp_5_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
    li      s8, 0
                    #found literal reg Some(a1) already exist with 2_0
                    #found literal reg Some(a5) already exist with 0_0
    mul     s9,a1,a5
    add     s8,s8,s9
                    #found literal reg Some(s4) already exist with 1_0
                    #found literal reg Some(a4) already exist with 1_0
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 2_0:i32 temp_5_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(a1) already exist with 2_0
    sd      a1,0(s8)
                    #      mu c_17:56 
                    #      c_17 = chi c_17:56 
                    #      new_var temp_6_17:ptr->i32 
                    #      temp_6_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
    li      s10, 0
                    #found literal reg Some(a1) already exist with 2_0
                    #found literal reg Some(a2) already exist with 2_0
    add     s10,s10,s9
                    #found literal reg Some(s4) already exist with 1_0
                    #found literal reg Some(a4) already exist with 1_0
    add     s10,s10,s9
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store 6_0:i32 temp_6_17:ptr->Array:i32:[Some(2_0)] 
    li      s11, 6
    sd      s11,0(s10)
                    #      mu c_17:62 
                    #      c_17 = chi c_17:62 
                    #      new_var temp_7_17:ptr->i32 
                    #      temp_7_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 2_0
                    #found literal reg Some(s1) already exist with 3_0
    add     a1,a1,s9
                    #found literal reg Some(s4) already exist with 1_0
                    #found literal reg Some(a4) already exist with 1_0
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 8_0:i32 temp_7_17:ptr->Array:i32:[Some(2_0)] 
    li      a2, 8
    sd      a2,0(a1)
                    #      mu c_17:68 
                    #      c_17 = chi c_17:68 
                    #      new_var temp_8_17:ptr->i32 
                    #      temp_8_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
    li      a2, 0
    li      a4, 2
                    #found literal reg Some(s1) already exist with 3_0
    add     a2,a2,s9
                    #found literal reg Some(s4) already exist with 1_0
                    #found literal reg Some(a5) already exist with 0_0
    add     a2,a2,s9
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 7_0:i32 temp_8_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(a6) already exist with 7_0
    sd      a6,0(a2)
                    #      mu c_17:74 
                    #      c_17 = chi c_17:74 
                    #      new_var temp_9_17:ptr->i32 
                    #      temp_9_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
    li      a4, 0
    li      a5, 2
    li      a6, 0
    add     a4,a4,s9
                    #found literal reg Some(s4) already exist with 1_0
                    #found literal reg Some(a6) already exist with 0_0
    add     a4,a4,s9
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      store 1_0:i32 temp_9_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(s4) already exist with 1_0
    sd      s4,0(a4)
                    #      mu c_17:80 
                    #      c_17 = chi c_17:80 
                    #      new_var temp_10_17:ptr->i32 
                    #      temp_10_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
    li      a5, 0
    li      a6, 2
                    #found literal reg Some(s4) already exist with 1_0
    add     a5,a5,s9
                    #found literal reg Some(s4) already exist with 1_0
    li      a6, 0
    add     a5,a5,s9
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      store 3_0:i32 temp_10_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(s1) already exist with 3_0
    sd      s1,0(a5)
                    #      mu c_17:86 
                    #      c_17 = chi c_17:86 
                    #      new_var temp_11_17:ptr->i32 
                    #      temp_11_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
    li      a6, 0
    li      s1, 2
                    #found literal reg Some(s4) already exist with 1_0
    add     a6,a6,s9
                    #found literal reg Some(s4) already exist with 1_0
    li      s1, 1
    add     a6,a6,s9
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      store 4_0:i32 temp_11_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(s5) already exist with 4_0
    sd      s5,0(a6)
                    #      mu c_17:92 
                    #      c_17 = chi c_17:92 
                    #      new_var temp_12_17:ptr->i32 
                    #      temp_12_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
    li      s1, 0
    li      s4, 2
    li      s5, 2
    add     s1,s1,s9
    li      s4, 1
    li      s5, 0
    add     s1,s1,s9
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      store 5_0:i32 temp_12_17:ptr->Array:i32:[Some(2_0)] 
    li      s4, 5
    sd      s4,0(s1)
                    #      mu c_17:98 
                    #      c_17 = chi c_17:98 
                    #      new_var d_17:Array:i32:[Some(4_0), Some(2_0)] 
                    #      new_var temp_13_17:ptr->i32 
                    #      new_var temp_14_17:i32 
                    #      temp_13_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
    li      s4, 0
    li      s5, 2
    li      s11, 3
    add     s4,s4,a3
    li      s5, 1
    li      s11, 0
    add     s4,s4,a3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_14_17 = load temp_13_17:ptr->i32 
    lw      s5,0(s4)
                    #      new_var temp_15_17:ptr->i32 
                    #      temp_15_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
    li      s11, 0
    sd      a0,424(sp)
    li      a0, 2
    sd      a1,296(sp)
    li      a1, 1
    sd      a2,288(sp)
    mul     a2,a0,a1
    add     s11,s11,a2
                    #found literal reg Some(a1) already exist with 1_0
    li      a0, 0
    add     s11,s11,a2
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      store 3_0:i32 temp_15_17:ptr->Array:i32:[Some(2_0)] 
    li      a0, 3
    sd      a0,0(s11)
                    #      mu d_17:112 
                    #      d_17 = chi d_17:112 
                    #      new_var temp_16_17:ptr->i32 
                    #      temp_16_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
    li      a0, 0
    li      a1, 2
    sw      a2,156(sp)
    li      a2, 0
    sw      a3,388(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_16_17:ptr->Array:i32:[Some(2_0)] 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu d_17:118 
                    #      d_17 = chi d_17:118 
                    #      new_var temp_17_17:ptr->i32 
                    #      temp_17_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
    li      a1, 0
    li      a2, 2
    sd      a0,192(sp)
    li      a0, 0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 1_0:i32 temp_17_17:ptr->Array:i32:[Some(2_0)] 
                    #found literal reg Some(a0) already exist with 1_0
    sd      a0,0(a1)
                    #      mu d_17:124 
                    #      d_17 = chi d_17:124 
                    #      new_var temp_18_17:ptr->i32 
                    #      temp_18_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
    li      a0, 0
    li      a2, 2
    sd      a1,184(sp)
    li      a1, 1
    add     a0,a0,a3
                    #found literal reg Some(a1) already exist with 1_0
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 5_0:i32 temp_18_17:ptr->Array:i32:[Some(2_0)] 
    li      a1, 5
    sd      a1,0(a0)
                    #      mu d_17:130 
                    #      d_17 = chi d_17:130 
                    #      new_var temp_19_17:ptr->i32 
                    #      temp_19_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
    li      a1, 0
    li      a2, 2
    sd      a0,176(sp)
    li      a0, 2
    add     a1,a1,a3
    li      a0, 1
    li      a2, 0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store temp_14_17:i32 temp_19_17:ptr->Array:i32:[Some(2_0)] 
    sd      s5,0(a1)
                    #      mu d_17:136 
                    #      d_17 = chi d_17:136 
                    #      new_var temp_20_17:ptr->i32 
                    #      temp_20_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
    li      a0, 0
    li      a2, 2
    sd      a1,168(sp)
    li      a1, 2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 8_0:i32 temp_20_17:ptr->Array:i32:[Some(2_0)] 
    li      a1, 8
    sd      a1,0(a0)
                    #      mu d_17:142 
                    #      d_17 = chi d_17:142 
                    #      new_var e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] 
                    #      new_var temp_21_17:ptr->i32 
                    #      new_var temp_22_17:i32 
                    #      temp_21_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
    li      a1, 0
    li      a2, 2
    sd      a0,160(sp)
    li      a0, 2
    add     a1,a1,a3
    li      a0, 1
    li      a2, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_22_17 = load temp_21_17:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_23_17:ptr->i32 
                    #      new_var temp_24_17:i32 
                    #      temp_23_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
    li      a2, 0
    sw      a0,116(sp)
    li      a0, 2
    sd      a1,120(sp)
    li      a1, 2
    add     a2,a2,s9
    li      a0, 1
    li      a1, 1
    add     a2,a2,s9
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_24_17 = load temp_23_17:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_25_17:ptr->i32 
                    #      temp_25_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(2_0), Some(1_0), Some(0_0)] 
    li      a1, 0
    sw      a0,100(sp)
    li      a0, 2
    sd      a2,104(sp)
    li      a2, 2
    sw      a3,156(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    li      a0, 1
    li      a2, 1
    add     a1,a1,a3
                    #found literal reg Some(a0) already exist with 1_0
    li      a2, 0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 6_0:i32 temp_25_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
    li      a0, 6
    sd      a0,0(a1)
                    #      mu e_17:162 
                    #      e_17 = chi e_17:162 
                    #      new_var temp_26_17:ptr->i32 
                    #      temp_26_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(0_0), Some(1_0), Some(0_0)] 
    li      a0, 0
    li      a2, 2
    sd      a1,88(sp)
    li      a1, 0
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
                    #found literal reg Some(a1) already exist with 1_0
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store temp_24_17:i32 temp_26_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
    sd      a1,0(a0)
                    #      mu e_17:168 
                    #      e_17 = chi e_17:168 
                    #      new_var temp_27_17:ptr->i32 
                    #      temp_27_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(2_0), Some(0_0), Some(0_0)] 
    li      a2, 0
    sd      a0,80(sp)
    li      a0, 2
    sw      a1,100(sp)
    li      a1, 2
    add     a2,a2,a3
    li      a0, 1
    li      a1, 0
    add     a2,a2,a3
                    #found literal reg Some(a0) already exist with 1_0
                    #found literal reg Some(a1) already exist with 0_0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 5_0:i32 temp_27_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
    li      a0, 5
    sd      a0,0(a2)
                    #      mu e_17:174 
                    #      e_17 = chi e_17:174 
                    #      new_var temp_28_17:ptr->i32 
                    #      temp_28_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(1_0), Some(1_0), Some(0_0)] 
    li      a0, 0
    li      a1, 2
    sd      a2,72(sp)
    li      a2, 1
    add     a0,a0,a3
                    #found literal reg Some(a2) already exist with 1_0
    li      a1, 1
    add     a0,a0,a3
                    #found literal reg Some(a1) already exist with 1_0
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 4_0:i32 temp_28_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
    li      a1, 4
    sd      a1,0(a0)
                    #      mu e_17:180 
                    #      e_17 = chi e_17:180 
                    #      new_var temp_29_17:ptr->i32 
                    #      temp_29_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(0_0), Some(0_0), Some(0_0)] 
    li      a1, 0
    li      a2, 2
    sd      a0,64(sp)
    li      a0, 0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 0
    add     a1,a1,a3
                    #found literal reg Some(a0) already exist with 1_0
                    #found literal reg Some(a2) already exist with 0_0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store temp_22_17:i32 temp_29_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
    sd      a0,0(a1)
                    #      mu e_17:186 
                    #      e_17 = chi e_17:186 
                    #      new_var temp_30_17:ptr->i32 
                    #      temp_30_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(1_0), Some(0_0), Some(0_0)] 
    li      a2, 0
    sw      a0,116(sp)
    li      a0, 2
    sd      a1,56(sp)
    li      a1, 1
    add     a2,a2,a3
                    #found literal reg Some(a1) already exist with 1_0
    li      a0, 0
    add     a2,a2,a3
                    #found literal reg Some(a1) already exist with 1_0
                    #found literal reg Some(a0) already exist with 0_0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 3_0:i32 temp_30_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
    li      a0, 3
    sd      a0,0(a2)
                    #      mu e_17:192 
                    #      e_17 = chi e_17:192 
                    #      new_var temp_31_17:ptr->i32 
                    #      temp_31_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(3_0), Some(1_0), Some(0_0)] 
    li      a0, 0
    li      a1, 2
    sd      a2,48(sp)
    li      a2, 3
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
                    #found literal reg Some(a1) already exist with 1_0
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 8_0:i32 temp_31_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
    li      a1, 8
    sd      a1,0(a0)
                    #      mu e_17:198 
                    #      e_17 = chi e_17:198 
                    #      new_var temp_32_17:ptr->i32 
                    #      temp_32_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(3_0), Some(0_0), Some(0_0)] 
    li      a1, 0
    li      a2, 2
    sd      a0,40(sp)
    li      a0, 3
    add     a1,a1,a3
    li      a0, 1
    li      a2, 0
    add     a1,a1,a3
                    #found literal reg Some(a0) already exist with 1_0
                    #found literal reg Some(a2) already exist with 0_0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 7_0:i32 temp_32_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
    li      a0, 7
    sd      a0,0(a1)
                    #      mu e_17:204 
                    #      e_17 = chi e_17:204 
                    #      ret 3_0 
    ld      ra,440(sp)
    ld      s0,432(sp)
    li      a0, 3
    addi    sp,sp,448
    ret
