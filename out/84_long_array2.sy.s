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
                    #      Define f1_0 [b_17] -> f1_ret_0 
    .globl f1
    .type f1,@function
f1:
                    #mem layout:|ra_f1:8|s0_f1:8|b:8|temp_0:8|temp_1:8|temp_2:8|temp_3:16384|temp_4:8|temp_5:4|none:4|temp_6:8|temp_7:16384|temp_8:8|temp_9:4|temp_10:4|temp_11:16384|temp_12:8|temp_13:4|temp_14:16384|none:4|temp_15:8|temp_16:4|none:4
    li      a1, -65656
    li      a1, -65656
    add     sp,a1,sp
    li      a2, 65648
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 65640
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 65656
    li      a4, 65656
    add     s0,a4,sp
                    #      new_var b_17:ptr->i32 
                    #      alloc ptr->i32 temp_0_19 
                    #      alloc ptr->i32 temp_1_19 
                    #      alloc ptr->i32 temp_2_19 
                    #      alloc Array:i32:[Some(4096_0)] temp_3_19 
                    #      alloc ptr->i32 temp_4_19 
                    #      alloc i32 temp_5_19 
                    #      alloc ptr->i32 temp_6_19 
                    #      alloc Array:i32:[Some(4096_0)] temp_7_19 
                    #      alloc ptr->i32 temp_8_19 
                    #      alloc i32 temp_9_19 
                    #      alloc i32 temp_10_19 
                    #      alloc Array:i32:[Some(4096_0)] temp_11_19 
                    #      alloc ptr->i32 temp_12_19 
                    #      alloc i32 temp_13_19 
                    #      alloc Array:i32:[Some(4096_0)] temp_14_19 
                    #      alloc ptr->i32 temp_15_19 
                    #      alloc i32 temp_16_19 
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_0_19:ptr->i32 
                    #      temp_0_19 = getelementptr a_0:Array:i32:[Some(4096_0)] [Some(5_0)] 
    li      a5, 0
    li      a6, 1
    li      a7, 5
    mul     s1,a6,a7
                    #occupy reg s1 with a_0
    add     a5,a5,s1
    slli a5,a5,2
    add     a5,a5,a5
                    #      store 4000_0:i32 temp_0_19:ptr->i32 
    li      s2, 4000
    sd      s2,0(a5)
                    #      mu a_0:23 
                    #      a_0 = chi a_0:23 
                    #      new_var temp_1_19:ptr->i32 
                    #      temp_1_19 = getelementptr a_0:Array:i32:[Some(4096_0)] [Some(4000_0)] 
    li      s3, 0
                    #found literal reg Some(a6) already exist with 1_0
                    #found literal reg Some(s2) already exist with 4000_0
    mul     s4,a6,s2
                    #occupy reg s4 with a_0
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,s3
                    #      store 3_0:i32 temp_1_19:ptr->i32 
    li      s5, 3
    sd      s5,0(s3)
                    #      mu a_0:29 
                    #      a_0 = chi a_0:29 
                    #      new_var temp_2_19:ptr->i32 
                    #      temp_2_19 = getelementptr a_0:Array:i32:[Some(4096_0)] [Some(4095_0)] 
    li      s6, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s7, 4095
    mul     s8,a6,s7
                    #occupy reg s8 with a_0
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,s6
                    #      store 7_0:i32 temp_2_19:ptr->i32 
    li      s9, 7
    sd      s9,0(s6)
                    #      mu a_0:35 
                    #      a_0 = chi a_0:35 
                    #      new_var temp_3_19:Array:i32:[Some(4096_0)] 
                    #      temp_3_19 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      s10, a
                    #occupy reg s10 with *a_0
    lw      s11,0(s10)
                    #      new_var temp_4_19:ptr->i32 
                    #      new_var temp_5_19:i32 
                    #      temp_4_19 = getelementptr temp_3_19:Array:i32:[Some(4096_0)] [Some(4095_0)] 
    li      a1, 0
                    #found literal reg Some(a6) already exist with 1_0
                    #found literal reg Some(s7) already exist with 4095_0
    add     a1,a1,s11
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_5_19 = load temp_4_19:ptr->i32 
    lw      a2,0(a1)
                    #      new_var temp_6_19:ptr->i32 
                    #      temp_6_19 = getelementptr b_17:ptr->i32 [Some(temp_5_19)] 
    li      a3, 0
                    #found literal reg Some(a6) already exist with 1_0
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
                    #      new_var temp_7_19:Array:i32:[Some(4096_0)] 
                    #      temp_7_19 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a4, a
                    #occupy reg a4 with *a_0
    lw      a6,0(a4)
                    #      new_var temp_8_19:ptr->i32 
                    #      new_var temp_9_19:i32 
                    #      temp_8_19 = getelementptr temp_7_19:Array:i32:[Some(4096_0)] [Some(2216_0)] 
    li      a4, 0
    li      a7, 1
    li      s1, 2216
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_9_19 = load temp_8_19:ptr->i32 
    lw      a7,0(a4)
                    #      new_var temp_10_19:i32 
                    #      temp_10_19 = Add i32 temp_9_19, 9_0 
    li      s1, 9
    add     s2,a7,s1
                    #      store temp_10_19:i32 temp_6_19:ptr->i32 
    sd      s2,0(a3)
                    #      mu b_17:62 
                    #      b_17 = chi b_17:62 
                    #      new_var temp_11_19:Array:i32:[Some(4096_0)] 
                    #      temp_11_19 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      s1, a
                    #occupy reg s1 with *a_0
    lw      s4,0(s1)
                    #      new_var temp_12_19:ptr->i32 
                    #      new_var temp_13_19:i32 
                    #      temp_12_19 = getelementptr temp_11_19:Array:i32:[Some(4096_0)] [Some(5_0)] 
    li      s1, 0
    li      s5, 1
    li      s7, 5
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_13_19 = load temp_12_19:ptr->i32 
    lw      s5,0(s1)
                    #      new_var temp_14_19:Array:i32:[Some(4096_0)] 
                    #      temp_14_19 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      s7, a
                    #occupy reg s7 with *a_0
    lw      s8,0(s7)
                    #      new_var temp_15_19:ptr->i32 
                    #      new_var temp_16_19:i32 
                    #      temp_15_19 = getelementptr temp_14_19:Array:i32:[Some(4096_0)] [Some(temp_13_19)] 
    li      s7, 0
    li      s9, 1
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_16_19 = load temp_15_19:ptr->i32 
    lw      s9,0(s7)
                    #      ret temp_16_19 
    li      s10, 65648
    add     s10,sp,s10
    ld      ra,0(s10)
    li      a0, 65632
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 65640
    add     a0,sp,a0
    ld      s0,0(a0)
    sw      s9,4(sp)
    li      a0, 65640
    add     a0,sp,a0
    sd      a0,0(a0)
    li      s9, 65656
    li      s9, 65656
    add     sp,s9,sp
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_17:8|temp_18:8|temp_19:8|temp_20:8|temp_21:8|temp_22:8|b:16384|temp_23:8|temp_24:8|temp_25:8|temp_26:8|c:16384|temp_27:8|temp_28:16|temp_29:4|none:4|temp_30:8|temp_31:4|none:4
    li      a0, -32912
    li      a0, -32912
    add     sp,a0,sp
    li      a1, 32904
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 32896
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 32912
    li      a3, 32912
    add     s0,a3,sp
                    #      alloc ptr->i32 temp_17_26 
                    #      alloc ptr->i32 temp_18_26 
                    #      alloc ptr->i32 temp_19_26 
                    #      alloc ptr->i32 temp_20_26 
                    #      alloc ptr->i32 temp_21_26 
                    #      alloc ptr->i32 temp_22_26 
                    #      alloc Array:i32:[Some(4_0), Some(1024_0)] b_26 
                    #      alloc ptr->i32 temp_23_26 
                    #      alloc ptr->i32 temp_24_26 
                    #      alloc ptr->i32 temp_25_26 
                    #      alloc ptr->i32 temp_26_26 
                    #      alloc Array:i32:[Some(1024_0), Some(4_0)] c_26 
                    #      alloc ptr->i32 temp_27_26 
                    #      alloc Array:i32:[Some(4_0)] temp_28_26 
                    #      alloc i32 temp_29_26 
                    #      alloc ptr->i32 temp_30_26 
                    #      alloc i32 temp_31_26 
                    #      label L0_0: 
.L0_0:
                    #      new_var b_26:Array:i32:[Some(4_0), Some(1024_0)] 
                    #      new_var temp_17_26:ptr->i32 
                    #      temp_17_26 = getelementptr b_26:Array:i32:[Some(4_0), Some(1024_0)] [Some(0_0), Some(2_0)] 
    li      a4, 0
    li      a5, 1024
    li      a6, 0
    mul     a7,a5,a6
    add     a4,a4,a7
    li      s1, 1
    li      s2, 2
    add     a4,a4,a7
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      store 3_0:i32 temp_17_26:ptr->Array:i32:[Some(1024_0)] 
    li      s3, 3
    sd      s3,0(a4)
                    #      mu b_26:89 
                    #      b_26 = chi b_26:89 
                    #      new_var temp_18_26:ptr->i32 
                    #      temp_18_26 = getelementptr b_26:Array:i32:[Some(4_0), Some(1024_0)] [Some(0_0), Some(3_0)] 
    li      s4, 0
                    #found literal reg Some(a5) already exist with 1024_0
                    #found literal reg Some(a6) already exist with 0_0
    add     s4,s4,a7
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s3) already exist with 3_0
    add     s4,s4,a7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      store 4_0:i32 temp_18_26:ptr->Array:i32:[Some(1024_0)] 
    li      s5, 4
    sd      s5,0(s4)
                    #      mu b_26:95 
                    #      b_26 = chi b_26:95 
                    #      new_var temp_19_26:ptr->i32 
                    #      temp_19_26 = getelementptr b_26:Array:i32:[Some(4_0), Some(1024_0)] [Some(0_0), Some(0_0)] 
    li      s6, 0
                    #found literal reg Some(a5) already exist with 1024_0
                    #found literal reg Some(a6) already exist with 0_0
    add     s6,s6,a7
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(a6) already exist with 0_0
    add     s6,s6,a7
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 1_0:i32 temp_19_26:ptr->Array:i32:[Some(1024_0)] 
                    #found literal reg Some(s1) already exist with 1_0
    sd      s1,0(s6)
                    #      mu b_26:101 
                    #      b_26 = chi b_26:101 
                    #      new_var temp_20_26:ptr->i32 
                    #      temp_20_26 = getelementptr b_26:Array:i32:[Some(4_0), Some(1024_0)] [Some(0_0), Some(1_0)] 
    li      s7, 0
                    #found literal reg Some(a5) already exist with 1024_0
                    #found literal reg Some(a6) already exist with 0_0
    add     s7,s7,a7
                    #found literal reg Some(s1) already exist with 1_0
    li      s8, 1
    add     s7,s7,a7
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 2_0:i32 temp_20_26:ptr->Array:i32:[Some(1024_0)] 
                    #found literal reg Some(s2) already exist with 2_0
    sd      s2,0(s7)
                    #      mu b_26:107 
                    #      b_26 = chi b_26:107 
                    #      new_var temp_21_26:ptr->i32 
                    #      temp_21_26 = getelementptr b_26:Array:i32:[Some(4_0), Some(1024_0)] [Some(0_0), Some(4_0)] 
    li      s9, 0
                    #found literal reg Some(a5) already exist with 1024_0
                    #found literal reg Some(a6) already exist with 0_0
    add     s9,s9,a7
                    #found literal reg Some(s8) already exist with 1_0
                    #found literal reg Some(s5) already exist with 4_0
    add     s9,s9,a7
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store 5_0:i32 temp_21_26:ptr->Array:i32:[Some(1024_0)] 
    li      s10, 5
    sd      s10,0(s9)
                    #      mu b_26:113 
                    #      b_26 = chi b_26:113 
                    #      new_var temp_22_26:ptr->i32 
                    #      temp_22_26 = getelementptr b_26:Array:i32:[Some(4_0), Some(1024_0)] [Some(0_0), Some(5_0)] 
    li      s11, 0
                    #found literal reg Some(a5) already exist with 1024_0
                    #found literal reg Some(a6) already exist with 0_0
    add     s11,s11,a7
                    #found literal reg Some(s8) already exist with 1_0
                    #found literal reg Some(s10) already exist with 5_0
    add     s11,s11,a7
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      store 6_0:i32 temp_22_26:ptr->Array:i32:[Some(1024_0)] 
    li      a0, 6
    sd      a0,0(s11)
                    #      mu b_26:119 
                    #      b_26 = chi b_26:119 
                    #      new_var c_26:Array:i32:[Some(1024_0), Some(4_0)] 
                    #      new_var temp_23_26:ptr->i32 
                    #      temp_23_26 = getelementptr c_26:Array:i32:[Some(1024_0), Some(4_0)] [Some(0_0), Some(3_0)] 
    li      a0, 0
                    #found literal reg Some(s5) already exist with 4_0
                    #found literal reg Some(a6) already exist with 0_0
    mul     a1,s5,a6
    add     a0,a0,a1
                    #found literal reg Some(s8) already exist with 1_0
                    #found literal reg Some(s3) already exist with 3_0
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 4_0:i32 temp_23_26:ptr->Array:i32:[Some(4_0)] 
                    #found literal reg Some(s5) already exist with 4_0
    sd      s5,0(a0)
                    #      mu c_26:127 
                    #      c_26 = chi c_26:127 
                    #      new_var temp_24_26:ptr->i32 
                    #      temp_24_26 = getelementptr c_26:Array:i32:[Some(1024_0), Some(4_0)] [Some(0_0), Some(0_0)] 
    li      a2, 0
                    #found literal reg Some(s5) already exist with 4_0
                    #found literal reg Some(a6) already exist with 0_0
    add     a2,a2,a1
                    #found literal reg Some(s8) already exist with 1_0
                    #found literal reg Some(a6) already exist with 0_0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 1_0:i32 temp_24_26:ptr->Array:i32:[Some(4_0)] 
                    #found literal reg Some(s8) already exist with 1_0
    sd      s8,0(a2)
                    #      mu c_26:133 
                    #      c_26 = chi c_26:133 
                    #      new_var temp_25_26:ptr->i32 
                    #      temp_25_26 = getelementptr c_26:Array:i32:[Some(1024_0), Some(4_0)] [Some(0_0), Some(1_0)] 
    li      a3, 0
                    #found literal reg Some(s5) already exist with 4_0
                    #found literal reg Some(a6) already exist with 0_0
    add     a3,a3,a1
                    #found literal reg Some(s8) already exist with 1_0
                    #found literal reg Some(s1) already exist with 1_0
    add     a3,a3,a1
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      store 2_0:i32 temp_25_26:ptr->Array:i32:[Some(4_0)] 
                    #found literal reg Some(s2) already exist with 2_0
    sd      s2,0(a3)
                    #      mu c_26:139 
                    #      c_26 = chi c_26:139 
                    #      new_var temp_26_26:ptr->i32 
                    #      temp_26_26 = getelementptr c_26:Array:i32:[Some(1024_0), Some(4_0)] [Some(0_0), Some(2_0)] 
    li      a5, 0
                    #found literal reg Some(s5) already exist with 4_0
                    #found literal reg Some(a6) already exist with 0_0
    add     a5,a5,a1
                    #found literal reg Some(s8) already exist with 1_0
                    #found literal reg Some(s2) already exist with 2_0
    add     a5,a5,a1
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      store 3_0:i32 temp_26_26:ptr->Array:i32:[Some(4_0)] 
                    #found literal reg Some(s3) already exist with 3_0
    sd      s3,0(a5)
                    #      mu c_26:145 
                    #      c_26 = chi c_26:145 
                    #      new_var temp_27_26:ptr->i32 
                    #      new_var temp_28_26:Array:i32:[Some(4_0)] 
                    #      temp_27_26 = getelementptr c_26:Array:i32:[Some(1024_0), Some(4_0)] [Some(0_0)] 
    li      a6, 0
                    #found literal reg Some(s5) already exist with 4_0
    li      s1, 0
    add     a6,a6,a1
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_28_26 = load temp_27_26:ptr->i32 
    lw      s1,0(a6)
                    #      new_var temp_29_26:i32 
                    #      temp_29_26 =  Call i32 f1_0(temp_28_26) 
                    #saved register dumping to mem
    sw      s1,36(sp)
    li      s1, 32880
    add     s1,sp,s1
    sd      s4,0(s1)
    li      s2, 32872
    add     s2,sp,s2
    sd      s6,0(s2)
    li      s3, 32864
    add     s3,sp,s3
    sd      s7,0(s3)
    li      s4, 32856
    add     s4,sp,s4
    sd      s9,0(s4)
    li      s5, 32848
    add     s5,sp,s5
    sd      s11,0(s5)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 16456
    add     a0,sp,a0
    sd      a0,0(a0)
    lw      a0,36(sp)
                    #arg load ended
    call    f1
    sw      a0,20(sp)
                    #       Call void putint_0(temp_29_26) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,20(sp)
    lw      a0,20(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_30_26:ptr->i32 
                    #      new_var temp_31_26:i32 
                    #      temp_30_26 = getelementptr c_26:Array:i32:[Some(1024_0), Some(4_0)] [Some(2_0), Some(0_0)] 
    li      a0, 0
    li      s1, 4
    li      s2, 2
    add     a0,a0,a1
    li      s3, 1
    li      s4, 0
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_31_26 = load temp_30_26:ptr->i32 
    lw      s5,0(a0)
                    #      ret temp_31_26 
    li      s6, 32904
    add     s6,sp,s6
    ld      ra,0(s6)
    li      s7, 32896
    add     s7,sp,s7
    ld      s0,0(s7)
    sw      s5,4(sp)
    sd      a0,8(sp)
    li      s5, 32912
    li      s5, 32912
    add     sp,s5,sp
    ret
.section        .data
    .align 4
    .globl a
                    #      global Array:i32:[Some(4096_0)] a_0 
    .type a,@object
a:
    .zero 16384
