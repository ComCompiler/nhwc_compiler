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
    .data
.section
    .text
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8|a:32|temp_0:8|temp_1:8|temp_2:8|temp_3:8|temp_4:8|temp_5:8|temp_6:8|temp_7:8|b:32|temp_8:8|temp_9:8|temp_10:8|temp_11:8|temp_12:8|temp_13:8|temp_14:8|temp_15:8|c:32|temp_16:8|temp_17:8|temp_18:8|temp_19:8|temp_20:8|temp_21:8|d:32|temp_22:8|temp_23:4|temp_25:4|temp_24:8|temp_26:8|temp_27:8|temp_28:8|temp_29:8|temp_30:8|temp_31:8|temp_32:8|temp_33:8|e:32|temp_34:8|temp_35:4|temp_37:4|temp_36:8|temp_38:4|temp_40:4|temp_39:8|temp_41:4|temp_43:4|temp_42:8|temp_44:4|none:4
    addi    sp,sp,-504
    sd      ra,496(sp)
    sd      s0,488(sp)
    addi    s0,sp,504
                    ;      alloc Array:i32:[Some(4_0), Some(2_0)] a_17 
                    ;      alloc ptr->i32 temp_0_17 
                    ;      alloc ptr->i32 temp_1_17 
                    ;      alloc ptr->i32 temp_2_17 
                    ;      alloc ptr->i32 temp_3_17 
                    ;      alloc ptr->i32 temp_4_17 
                    ;      alloc ptr->i32 temp_5_17 
                    ;      alloc ptr->i32 temp_6_17 
                    ;      alloc ptr->i32 temp_7_17 
                    ;      alloc Array:i32:[Some(4_0), Some(2_0)] b_17 
                    ;      alloc ptr->i32 temp_8_17 
                    ;      alloc ptr->i32 temp_9_17 
                    ;      alloc ptr->i32 temp_10_17 
                    ;      alloc ptr->i32 temp_11_17 
                    ;      alloc ptr->i32 temp_12_17 
                    ;      alloc ptr->i32 temp_13_17 
                    ;      alloc ptr->i32 temp_14_17 
                    ;      alloc ptr->i32 temp_15_17 
                    ;      alloc Array:i32:[Some(4_0), Some(2_0)] c_17 
                    ;      alloc ptr->i32 temp_16_17 
                    ;      alloc ptr->i32 temp_17_17 
                    ;      alloc ptr->i32 temp_18_17 
                    ;      alloc ptr->i32 temp_19_17 
                    ;      alloc ptr->i32 temp_20_17 
                    ;      alloc ptr->i32 temp_21_17 
                    ;      alloc Array:i32:[Some(4_0), Some(2_0)] d_17 
                    ;      alloc ptr->i32 temp_22_17 
                    ;      alloc i32 temp_23_17 
                    ;      alloc ptr->i32 temp_24_17 
                    ;      alloc i32 temp_25_17 
                    ;      alloc ptr->i32 temp_26_17 
                    ;      alloc ptr->i32 temp_27_17 
                    ;      alloc ptr->i32 temp_28_17 
                    ;      alloc ptr->i32 temp_29_17 
                    ;      alloc ptr->i32 temp_30_17 
                    ;      alloc ptr->i32 temp_31_17 
                    ;      alloc ptr->i32 temp_32_17 
                    ;      alloc ptr->i32 temp_33_17 
                    ;      alloc Array:i32:[Some(4_0), Some(2_0)] e_17 
                    ;      alloc ptr->i32 temp_34_17 
                    ;      alloc i32 temp_35_17 
                    ;      alloc ptr->i32 temp_36_17 
                    ;      alloc i32 temp_37_17 
                    ;      alloc i32 temp_38_17 
                    ;      alloc ptr->i32 temp_39_17 
                    ;      alloc i32 temp_40_17 
                    ;      alloc i32 temp_41_17 
                    ;      alloc ptr->i32 temp_42_17 
                    ;      alloc i32 temp_43_17 
                    ;      alloc i32 temp_44_17 
                    ;      label L0_0: 
L0_0:
                    ;      new_var a_17:Array:i32:[Some(4_0), Some(2_0)] 
                    ;      new_var b_17:Array:i32:[Some(4_0), Some(2_0)] 
                    ;      new_var temp_0_17:ptr->i32 
                    ;      temp_0_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [1_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 388
    add     s3,s3,s5
    sd      s3,448(sp)
                    ;      store 4_0:i32 temp_0_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 4
    ld      s1,448(sp)
    sd      s2,0(s1)
                    ;      mu b_17:22 
                    ;      b_17 = chi b_17:22 
                    ;      new_var temp_1_17:ptr->i32 
                    ;      temp_1_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 388
    add     s3,s3,s5
    sd      s3,440(sp)
                    ;      store 6_0:i32 temp_1_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 6
    ld      s1,440(sp)
    sd      s2,0(s1)
                    ;      mu b_17:28 
                    ;      b_17 = chi b_17:28 
                    ;      new_var temp_2_17:ptr->i32 
                    ;      temp_2_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 388
    add     s3,s3,s5
    sd      s3,432(sp)
                    ;      store 8_0:i32 temp_2_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 8
    ld      s1,432(sp)
    sd      s2,0(s1)
                    ;      mu b_17:34 
                    ;      b_17 = chi b_17:34 
                    ;      new_var temp_3_17:ptr->i32 
                    ;      temp_3_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [1_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 388
    add     s3,s3,s5
    sd      s3,424(sp)
                    ;      store 3_0:i32 temp_3_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 3
    ld      s1,424(sp)
    sd      s2,0(s1)
                    ;      mu b_17:40 
                    ;      b_17 = chi b_17:40 
                    ;      new_var temp_4_17:ptr->i32 
                    ;      temp_4_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 388
    add     s3,s3,s5
    sd      s3,416(sp)
                    ;      store 2_0:i32 temp_4_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 2
    ld      s1,416(sp)
    sd      s2,0(s1)
                    ;      mu b_17:46 
                    ;      b_17 = chi b_17:46 
                    ;      new_var temp_5_17:ptr->i32 
                    ;      temp_5_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 388
    add     s3,s3,s5
    sd      s3,408(sp)
                    ;      store 7_0:i32 temp_5_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 7
    ld      s1,408(sp)
    sd      s2,0(s1)
                    ;      mu b_17:52 
                    ;      b_17 = chi b_17:52 
                    ;      new_var temp_6_17:ptr->i32 
                    ;      temp_6_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 388
    add     s3,s3,s5
    sd      s3,400(sp)
                    ;      store 5_0:i32 temp_6_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 5
    ld      s1,400(sp)
    sd      s2,0(s1)
                    ;      mu b_17:58 
                    ;      b_17 = chi b_17:58 
                    ;      new_var temp_7_17:ptr->i32 
                    ;      temp_7_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 388
    add     s3,s3,s5
    sd      s3,392(sp)
                    ;      store 1_0:i32 temp_7_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 1
    ld      s1,392(sp)
    sd      s2,0(s1)
                    ;      mu b_17:64 
                    ;      b_17 = chi b_17:64 
                    ;      new_var c_17:Array:i32:[Some(4_0), Some(2_0)] 
                    ;      new_var temp_8_17:ptr->i32 
                    ;      temp_8_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 292
    add     s3,s3,s5
    sd      s3,352(sp)
                    ;      store 7_0:i32 temp_8_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 7
    ld      s1,352(sp)
    sd      s2,0(s1)
                    ;      mu c_17:72 
                    ;      c_17 = chi c_17:72 
                    ;      new_var temp_9_17:ptr->i32 
                    ;      temp_9_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 292
    add     s3,s3,s5
    sd      s3,344(sp)
                    ;      store 5_0:i32 temp_9_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 5
    ld      s1,344(sp)
    sd      s2,0(s1)
                    ;      mu c_17:78 
                    ;      c_17 = chi c_17:78 
                    ;      new_var temp_10_17:ptr->i32 
                    ;      temp_10_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [1_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 292
    add     s3,s3,s5
    sd      s3,336(sp)
                    ;      store 3_0:i32 temp_10_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 3
    ld      s1,336(sp)
    sd      s2,0(s1)
                    ;      mu c_17:84 
                    ;      c_17 = chi c_17:84 
                    ;      new_var temp_11_17:ptr->i32 
                    ;      temp_11_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 292
    add     s3,s3,s5
    sd      s3,328(sp)
                    ;      store 2_0:i32 temp_11_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 2
    ld      s1,328(sp)
    sd      s2,0(s1)
                    ;      mu c_17:90 
                    ;      c_17 = chi c_17:90 
                    ;      new_var temp_12_17:ptr->i32 
                    ;      temp_12_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 292
    add     s3,s3,s5
    sd      s3,320(sp)
                    ;      store 8_0:i32 temp_12_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 8
    ld      s1,320(sp)
    sd      s2,0(s1)
                    ;      mu c_17:96 
                    ;      c_17 = chi c_17:96 
                    ;      new_var temp_13_17:ptr->i32 
                    ;      temp_13_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 292
    add     s3,s3,s5
    sd      s3,312(sp)
                    ;      store 1_0:i32 temp_13_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 1
    ld      s1,312(sp)
    sd      s2,0(s1)
                    ;      mu c_17:102 
                    ;      c_17 = chi c_17:102 
                    ;      new_var temp_14_17:ptr->i32 
                    ;      temp_14_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [1_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 292
    add     s3,s3,s5
    sd      s3,304(sp)
                    ;      store 4_0:i32 temp_14_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 4
    ld      s1,304(sp)
    sd      s2,0(s1)
                    ;      mu c_17:108 
                    ;      c_17 = chi c_17:108 
                    ;      new_var temp_15_17:ptr->i32 
                    ;      temp_15_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 292
    add     s3,s3,s5
    sd      s3,296(sp)
                    ;      store 6_0:i32 temp_15_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 6
    ld      s1,296(sp)
    sd      s2,0(s1)
                    ;      mu c_17:114 
                    ;      c_17 = chi c_17:114 
                    ;      new_var d_17:Array:i32:[Some(4_0), Some(2_0)] 
                    ;      new_var temp_16_17:ptr->i32 
                    ;      temp_16_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 212
    add     s3,s3,s5
    sd      s3,256(sp)
                    ;      store 8_0:i32 temp_16_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 8
    ld      s1,256(sp)
    sd      s2,0(s1)
                    ;      mu d_17:122 
                    ;      d_17 = chi d_17:122 
                    ;      new_var temp_17_17:ptr->i32 
                    ;      temp_17_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 212
    add     s3,s3,s5
    sd      s3,248(sp)
                    ;      store 7_0:i32 temp_17_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 7
    ld      s1,248(sp)
    sd      s2,0(s1)
                    ;      mu d_17:128 
                    ;      d_17 = chi d_17:128 
                    ;      new_var temp_18_17:ptr->i32 
                    ;      temp_18_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 212
    add     s3,s3,s5
    sd      s3,240(sp)
                    ;      store 3_0:i32 temp_18_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 3
    ld      s1,240(sp)
    sd      s2,0(s1)
                    ;      mu d_17:134 
                    ;      d_17 = chi d_17:134 
                    ;      new_var temp_19_17:ptr->i32 
                    ;      temp_19_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [1_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 212
    add     s3,s3,s5
    sd      s3,232(sp)
                    ;      store 5_0:i32 temp_19_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 5
    ld      s1,232(sp)
    sd      s2,0(s1)
                    ;      mu d_17:140 
                    ;      d_17 = chi d_17:140 
                    ;      new_var temp_20_17:ptr->i32 
                    ;      temp_20_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 212
    add     s3,s3,s5
    sd      s3,224(sp)
                    ;      store 2_0:i32 temp_20_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 2
    ld      s1,224(sp)
    sd      s2,0(s1)
                    ;      mu d_17:146 
                    ;      d_17 = chi d_17:146 
                    ;      new_var temp_21_17:ptr->i32 
                    ;      temp_21_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 212
    add     s3,s3,s5
    sd      s3,216(sp)
                    ;      store 1_0:i32 temp_21_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 1
    ld      s1,216(sp)
    sd      s2,0(s1)
                    ;      mu d_17:152 
                    ;      d_17 = chi d_17:152 
                    ;      new_var e_17:Array:i32:[Some(4_0), Some(2_0)] 
                    ;      new_var temp_22_17:ptr->i32 
                    ;      new_var temp_23_17:i32 
                    ;      temp_22_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 212
    add     s3,s3,s5
    sd      s3,176(sp)
                    ;      temp_23_17 = load temp_22_17:ptr->i32 
    ld      s1,176(sp)
    lw      s2,0(s1)
    sw      s2,172(sp)
                    ;      new_var temp_24_17:ptr->i32 
                    ;      new_var temp_25_17:i32 
                    ;      temp_24_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 292
    add     s3,s3,s5
    sd      s3,160(sp)
                    ;      temp_25_17 = load temp_24_17:ptr->i32 
    ld      s1,160(sp)
    lw      s2,0(s1)
    sw      s2,168(sp)
                    ;      new_var temp_26_17:ptr->i32 
                    ;      temp_26_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [1_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 92
    add     s3,s3,s5
    sd      s3,152(sp)
                    ;      store 4_0:i32 temp_26_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 4
    ld      s1,152(sp)
    sd      s2,0(s1)
                    ;      mu e_17:172 
                    ;      e_17 = chi e_17:172 
                    ;      new_var temp_27_17:ptr->i32 
                    ;      temp_27_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 92
    add     s3,s3,s5
    sd      s3,144(sp)
                    ;      store temp_25_17:i32 temp_27_17:ptr->Array:i32:[Some(2_0)] 
    lw      s2,168(sp)
    ld      s1,144(sp)
    sd      s2,0(s1)
                    ;      mu e_17:178 
                    ;      e_17 = chi e_17:178 
                    ;      new_var temp_28_17:ptr->i32 
                    ;      temp_28_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 92
    add     s3,s3,s5
    sd      s3,136(sp)
                    ;      store 7_0:i32 temp_28_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 7
    ld      s1,136(sp)
    sd      s2,0(s1)
                    ;      mu e_17:184 
                    ;      e_17 = chi e_17:184 
                    ;      new_var temp_29_17:ptr->i32 
                    ;      temp_29_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 92
    add     s3,s3,s5
    sd      s3,128(sp)
                    ;      store 8_0:i32 temp_29_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 8
    ld      s1,128(sp)
    sd      s2,0(s1)
                    ;      mu e_17:190 
                    ;      e_17 = chi e_17:190 
                    ;      new_var temp_30_17:ptr->i32 
                    ;      temp_30_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 92
    add     s3,s3,s5
    sd      s3,120(sp)
                    ;      store 6_0:i32 temp_30_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 6
    ld      s1,120(sp)
    sd      s2,0(s1)
                    ;      mu e_17:196 
                    ;      e_17 = chi e_17:196 
                    ;      new_var temp_31_17:ptr->i32 
                    ;      temp_31_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 92
    add     s3,s3,s5
    sd      s3,112(sp)
                    ;      store temp_23_17:i32 temp_31_17:ptr->Array:i32:[Some(2_0)] 
    lw      s2,172(sp)
    ld      s1,112(sp)
    sd      s2,0(s1)
                    ;      mu e_17:202 
                    ;      e_17 = chi e_17:202 
                    ;      new_var temp_32_17:ptr->i32 
                    ;      temp_32_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 92
    add     s3,s3,s5
    sd      s3,104(sp)
                    ;      store 5_0:i32 temp_32_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 5
    ld      s1,104(sp)
    sd      s2,0(s1)
                    ;      mu e_17:208 
                    ;      e_17 = chi e_17:208 
                    ;      new_var temp_33_17:ptr->i32 
                    ;      temp_33_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [1_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 92
    add     s3,s3,s5
    sd      s3,96(sp)
                    ;      store 3_0:i32 temp_33_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 3
    ld      s1,96(sp)
    sd      s2,0(s1)
                    ;      mu e_17:214 
                    ;      e_17 = chi e_17:214 
                    ;      new_var temp_34_17:ptr->i32 
                    ;      new_var temp_35_17:i32 
                    ;      temp_34_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 484
    add     s3,s3,s5
    sd      s3,56(sp)
                    ;      temp_35_17 = load temp_34_17:ptr->i32 
    ld      s1,56(sp)
    lw      s2,0(s1)
    sw      s2,52(sp)
                    ;      new_var temp_36_17:ptr->i32 
                    ;      new_var temp_37_17:i32 
                    ;      temp_36_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 92
    add     s3,s3,s5
    sd      s3,40(sp)
                    ;      temp_37_17 = load temp_36_17:ptr->i32 
    ld      s1,40(sp)
    lw      s2,0(s1)
    sw      s2,48(sp)
                    ;      new_var temp_38_17:i32 
                    ;      temp_38_17 = Add i32 temp_37_17, temp_35_17 
    lw      s1,48(sp)
    lw      s2,52(sp)
    add     s3,s1,s2
    sw      s3,36(sp)
                    ;      new_var temp_39_17:ptr->i32 
                    ;      new_var temp_40_17:i32 
                    ;      temp_39_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 92
    add     s3,s3,s5
    sd      s3,24(sp)
                    ;      temp_40_17 = load temp_39_17:ptr->i32 
    ld      s1,24(sp)
    lw      s2,0(s1)
    sw      s2,32(sp)
                    ;      new_var temp_41_17:i32 
                    ;      temp_41_17 = Add i32 temp_40_17, temp_38_17 
    lw      s1,32(sp)
    lw      s2,36(sp)
    add     s3,s1,s2
    sw      s3,20(sp)
                    ;      new_var temp_42_17:ptr->i32 
                    ;      new_var temp_43_17:i32 
                    ;      temp_42_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 92
    add     s3,s3,s5
    sd      s3,8(sp)
                    ;      temp_43_17 = load temp_42_17:ptr->i32 
    ld      s1,8(sp)
    lw      s2,0(s1)
    sw      s2,16(sp)
                    ;      new_var temp_44_17:i32 
                    ;      temp_44_17 = Add i32 temp_43_17, temp_41_17 
    lw      s1,16(sp)
    lw      s2,20(sp)
    add     s3,s1,s2
    sw      s3,4(sp)
                    ;      ret temp_44_17 
    ld      ra,496(sp)
    ld      s0,488(sp)
    lw      a0,4(sp)
    addi    sp,sp,-504
    ret

