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
                    #mem layout:|ra_main:8|s0_main:8|a:4|putch:4|temp_0:4|temp_1:4|b:4|temp_2:4|temp_3:4|temp_4:4|temp_5:4|temp_6:4|main:4|temp_7:4|temp_8:4|temp_9:4|temp_10:4|temp_11:4|temp_12:4|a:4|temp_13:4|temp_14:4|temp_15:4|temp_16:4|temp_17:4|temp_18:4|b:4|temp_19:4|a:4|temp_20:4|temp_21:4|temp_22:4|temp_23:4|temp_24:4|temp_25:4|main:4|temp_26:4|temp_27:4|temp_28:4|temp_29:4|temp_30:4|temp_31:4|temp_32:4|temp_33:4
    addi    sp,sp,-184
    sd      ra,176(sp)
    sd      s0,168(sp)
    addi    s0,sp,184
                    #      alloc i32 a_17 
                    #      alloc i32 putch_17 
                    #      alloc i32 temp_0_21 
                    #      alloc i32 temp_1_21 
                    #      alloc i32 b_21 
                    #      alloc i32 temp_2_21 
                    #      alloc i32 temp_3_21 
                    #      alloc i32 temp_4_21 
                    #      alloc i32 temp_5_26 
                    #      alloc i32 temp_6_26 
                    #      alloc i32 main_26 
                    #      alloc i32 temp_7_26 
                    #      alloc i32 temp_8_26 
                    #      alloc i32 temp_9_26 
                    #      alloc i32 temp_10_26 
                    #      alloc i32 temp_11_31 
                    #      alloc i32 temp_12_31 
                    #      alloc i32 a_31 
                    #      alloc i32 temp_13_31 
                    #      alloc i32 temp_14_31 
                    #      alloc i32 temp_15_31 
                    #      alloc i32 temp_16_31 
                    #      alloc i32 temp_17_36 
                    #      alloc i32 temp_18_36 
                    #      alloc i32 b_36 
                    #      alloc i32 temp_19_36 
                    #      alloc i32 a_36 
                    #      alloc i32 temp_20_36 
                    #      alloc i32 temp_21_36 
                    #      alloc i32 temp_22_36 
                    #      alloc i32 temp_23_36 
                    #      alloc i32 temp_24_43 
                    #      alloc i32 temp_25_43 
                    #      alloc i32 main_43 
                    #      alloc i32 temp_26_43 
                    #      alloc i32 temp_27_43 
                    #      alloc i32 temp_28_43 
                    #      alloc i32 temp_29_43 
                    #      alloc i32 temp_30_36 
                    #      alloc i32 temp_31_31 
                    #      alloc i32 temp_32_26 
                    #      alloc i32 temp_33_17 
                    #      label L0_0: 
.L0_0:
                    #       Call void putch_0(97_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 97
                    #arg load ended
    call    putch
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      a_17 = i32 1_0 
    li      a0, 1
                    #      putch_17 = i32 0_0 
    li      a1, 0
                    #      new_var temp_0_21:i32 
                    #      temp_0_21 = Add i32 a_17, 2_0 
    li      a2, 2
    add     a3,a0,a2
                    #      a_17 = i32 temp_0_21 
    mv      a0, a3
                    #      new_var temp_1_21:i32 
                    #      temp_1_21 = Add i32 a_17, 3_0 
    li      a4, 3
    add     a5,a0,a4
                    #      b_21 = i32 temp_1_21 
    mv      a6, a5
                    #      new_var temp_2_21:i32 
                    #      temp_2_21 = Add i32 b_21, 4_0 
    li      a7, 4
    add     s1,a6,a7
                    #      b_21 = i32 temp_2_21 
    mv      a6, s1
                    #      new_var temp_3_21:i32 
                    #      temp_3_21 = Add i32 a_17, b_21 
    add     s2,a0,a6
                    #      new_var temp_4_21:i32 
                    #      temp_4_21 = Add i32 putch_17, temp_3_21 
    add     s3,a1,s2
                    #      putch_17 = i32 temp_4_21 
    mv      a1, s3
                    #      new_var temp_5_26:i32 
                    #      temp_5_26 = Add i32 b_21, 5_0 
    li      s4, 5
    add     s5,a6,s4
                    #      b_21 = i32 temp_5_26 
    mv      a6, s5
                    #      new_var temp_6_26:i32 
                    #      temp_6_26 = Add i32 b_21, 6_0 
    li      s6, 6
    add     s7,a6,s6
                    #      main_26 = i32 temp_6_26 
    mv      s8, s7
                    #      new_var temp_7_26:i32 
                    #      temp_7_26 = Add i32 a_17, main_26 
    add     s9,a0,s8
                    #      a_17 = i32 temp_7_26 
    mv      a0, s9
                    #      new_var temp_8_26:i32 
                    #      temp_8_26 = Add i32 b_21, main_26 
    add     s10,a6,s8
                    #      new_var temp_9_26:i32 
                    #      temp_9_26 = Add i32 a_17, temp_8_26 
    add     s11,a0,s10
                    #      new_var temp_10_26:i32 
                    #      temp_10_26 = Add i32 putch_17, temp_9_26 
    add     a2,a1,s11
                    #      putch_17 = i32 temp_10_26 
    mv      a1, a2
                    #      new_var temp_11_31:i32 
                    #      temp_11_31 = Add i32 b_21, a_17 
    add     a4,a6,a0
                    #      b_21 = i32 temp_11_31 
    mv      a6, a4
                    #      new_var temp_12_31:i32 
                    #      temp_12_31 = Add i32 main_26, 7_0 
    li      a7, 7
    add     s4,s8,a7
                    #      a_31 = i32 temp_12_31 
    mv      a7, s4
                    #      new_var temp_13_31:i32 
                    #      temp_13_31 = Add i32 a_31, 8_0 
    li      s6, 8
    sw      a0,164(sp)
    add     a0,a7,s6
                    #      a_31 = i32 temp_13_31 
    mv      a7, a0
                    #      new_var temp_14_31:i32 
                    #      temp_14_31 = Add i32 b_21, main_26 
    add     s6,a6,s8
                    #      new_var temp_15_31:i32 
                    #      temp_15_31 = Add i32 a_31, temp_14_31 
    sw      a0,92(sp)
    add     a0,a7,s6
                    #      new_var temp_16_31:i32 
                    #      temp_16_31 = Add i32 putch_17, temp_15_31 
    sw      a2,108(sp)
    add     a2,a1,a0
                    #      putch_17 = i32 temp_16_31 
    mv      a1, a2
                    #      new_var temp_17_36:i32 
                    #      temp_17_36 = Add i32 b_21, a_31 
    sw      a0,84(sp)
    add     a0,a6,a7
                    #      b_21 = i32 temp_17_36 
    mv      a6, a0
                    #      new_var temp_18_36:i32 
                    #      temp_18_36 = Add i32 main_26, 9_0 
    sw      a0,76(sp)
    li      a0, 9
    sw      a1,160(sp)
    add     a1,s8,a0
                    #      b_36 = i32 temp_18_36 
    mv      a0, a1
                    #      new_var temp_19_36:i32 
                    #      temp_19_36 = Add i32 a_31, 10_0 
    sw      a0,68(sp)
    li      a0, 10
    sw      a1,72(sp)
    add     a1,a7,a0
                    #      a_31 = i32 temp_19_36 
    mv      a7, a1
                    #      a_36 = i32 11_0 
    li      a0, 11
                    #      new_var temp_20_36:i32 
                    #      temp_20_36 = Add i32 b_36, 12_0 
    sw      a0,60(sp)
    sw      a1,64(sp)
    li      a1, 12
    sw      a2,80(sp)
    add     a2,a0,a1
                    #      b_36 = i32 temp_20_36 
    mv      a0, a2
                    #      new_var temp_21_36:i32 
                    #      temp_21_36 = Add i32 b_36, main_26 
    add     a1,a0,s8
                    #      new_var temp_22_36:i32 
                    #      temp_22_36 = Add i32 11_0, temp_21_36 
    sw      a0,68(sp)
    li      a0, 11
    sw      a2,56(sp)
    add     a2,a0,a1
                    #      new_var temp_23_36:i32 
                    #      temp_23_36 = Add i32 putch_17, temp_22_36 
    sw      a1,52(sp)
    add     a1,a0,a2
                    #      putch_17 = i32 temp_23_36 
    mv      a0, a1
                    #      new_var temp_24_43:i32 
                    #      temp_24_43 = Add i32 main_26, b_36 
    sw      a0,160(sp)
    sw      a1,44(sp)
    add     a1,s8,a0
                    #      main_26 = i32 temp_24_43 
    mv      s8, a1
                    #      new_var temp_25_43:i32 
                    #      temp_25_43 = Add i32 b_36, 13_0 
    sw      a1,40(sp)
    li      a1, 13
    sw      a2,48(sp)
    add     a2,a0,a1
                    #      main_43 = i32 temp_25_43 
    mv      a1, a2
                    #      new_var temp_26_43:i32 
                    #      temp_26_43 = Add i32 main_43, 11_0 
    sw      a0,68(sp)
    li      a0, 11
    sw      a2,36(sp)
    add     a2,a1,a0
                    #      main_43 = i32 temp_26_43 
    mv      a1, a2
                    #      new_var temp_27_43:i32 
                    #      temp_27_43 = Add i32 b_36, main_43 
    sw      a2,28(sp)
    add     a2,a0,a1
                    #      new_var temp_28_43:i32 
                    #      temp_28_43 = Add i32 11_0, temp_27_43 
    sw      a0,68(sp)
    li      a0, 11
    sw      a1,32(sp)
    add     a1,a0,a2
                    #      new_var temp_29_43:i32 
                    #      temp_29_43 = Add i32 putch_17, temp_28_43 
    sw      a2,24(sp)
    add     a2,a0,a1
                    #      putch_17 = i32 temp_29_43 
    mv      a0, a2
                    #      new_var temp_30_36:i32 
                    #      temp_30_36 = Sub i32 putch_17, main_26 
    sw      a1,20(sp)
    sub     a1,a0,s8
                    #      putch_17 = i32 temp_30_36 
    mv      a0, a1
                    #      new_var temp_31_31:i32 
                    #      temp_31_31 = Sub i32 putch_17, b_21 
    sw      a1,12(sp)
    sub     a1,a0,a6
                    #      putch_17 = i32 temp_31_31 
    mv      a0, a1
                    #      new_var temp_32_26:i32 
                    #      temp_32_26 = Sub i32 putch_17, a_17 
    sw      a1,8(sp)
    sw      a2,16(sp)
    sub     a2,a0,a1
                    #      putch_17 = i32 temp_32_26 
    mv      a0, a2
                    #      new_var temp_33_17:i32 
                    #      temp_33_17 = Mod i32 putch_17, 77_0 
    sw      a1,164(sp)
    li      a1, 77
    sw      a2,4(sp)
    rem     a2,a0,a1
                    #      ret temp_33_17 
    ld      ra,176(sp)
    ld      s0,168(sp)
    sw      a2,0(sp)
    sw      a0,160(sp)
    addi    sp,sp,184
    ret
