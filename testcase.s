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
                    #mem layout:|ra_main:8|s0_main:8|a:4|b:4|a:4|temp_0:4|temp_1:4|b:4|temp_2:4|temp_3:4|a:4|temp_4:4|temp_5:4|temp_6:4|temp_7:4|temp_8:4|temp_9:4|temp_10:4|temp_11:4|temp_12:4|temp_13:4|temp_14:4|temp_15:4|temp_16:4|temp_17:4|temp_18:4|temp_19:4|temp_20:4|temp_21:4|temp_22:4|temp_23:4|temp_24:4|temp_25:4|none:4
    addi    sp,sp,-144
    sd      ra,136(sp)
    sd      s0,128(sp)
    addi    s0,sp,144
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i32 a_20 
                    #      alloc i32 temp_0_20 
                    #      alloc i32 temp_1_20 
                    #      alloc i32 b_24 
                    #      alloc i32 temp_2_24 
                    #      alloc i32 temp_3_24 
                    #      alloc i32 a_27 
                    #      alloc i32 temp_4_27 
                    #      alloc i32 temp_5_27 
                    #      alloc i32 temp_6_27 
                    #      alloc i32 temp_7_24 
                    #      alloc i32 temp_8_24 
                    #      alloc i32 temp_9_24 
                    #      alloc i32 temp_10_33 
                    #      alloc i32 temp_11_33 
                    #      alloc i32 temp_12_20 
                    #      alloc i32 temp_13_20 
                    #      alloc i32 temp_14_20 
                    #      alloc i32 temp_15_20 
                    #      alloc i32 temp_16_37 
                    #      alloc i32 temp_17_37 
                    #      alloc i32 temp_18_20 
                    #      alloc i32 temp_19_20 
                    #      alloc i32 temp_20_17 
                    #      alloc i32 temp_21_17 
                    #      alloc i32 temp_22_17 
                    #      alloc i32 temp_23_17 
                    #      alloc i32 temp_24_17 
                    #      alloc i32 temp_25_17 
                    #      label L0_0: 
.L0_0:
                    #      a_17 = i32 893_0 
    li      a0, 893
                    #      b_17 = i32 716_0 
    li      a1, 716
                    #      a_20 = i32 837_0 
    li      a2, 837
                    #      new_var temp_0_20:i32 
                    #      temp_0_20 = Add i32 a_20, 128_0 
    li      a3, 128
    add     a4,a2,a3
                    #      a_20 = i32 temp_0_20 
                    #      new_var temp_1_20:i32 
                    #      temp_1_20 = Add i32 b_17, a_20 
    add     a5,a1,a2
                    #      b_17 = i32 temp_1_20 
                    #      b_24 = i32 241_0 
    li      a6, 241
                    #      new_var temp_2_24:i32 
                    #      temp_2_24 = Sub i32 b_24, 412_0 
    li      a7, 412
    sub     s1,a6,a7
                    #      new_var temp_3_24:i32 
                    #      temp_3_24 = Add i32 a_20, temp_2_24 
    add     s2,a2,s1
                    #      a_20 = i32 temp_3_24 
                    #      a_27 = i32 771_0 
    li      s3, 771
                    #      new_var temp_4_27:i32 
                    #      temp_4_27 = Sub i32 a_27, 18_0 
    li      s4, 18
    sub     s5,s3,s4
                    #      new_var temp_5_27:i32 
                    #      temp_5_27 = Add i32 b_24, temp_4_27 
    add     s6,a6,s5
                    #      b_24 = i32 temp_5_27 
                    #      new_var temp_6_27:i32 
                    #      temp_6_27 = Add i32 b_24, 66_0 
    li      s7, 66
    add     s8,a6,s7
                    #      a_27 = i32 temp_6_27 
                    #      new_var temp_7_24:i32 
                    #      temp_7_24 = Sub i32 a_20, 33_0 
    li      s9, 33
    sub     s10,a2,s9
                    #      new_var temp_8_24:i32 
                    #      temp_8_24 = Add i32 b_24, temp_7_24 
    add     s11,a6,s10
                    #      b_24 = i32 temp_8_24 
                    #      new_var temp_9_24:i32 
                    #      temp_9_24 = Sub i32 b_24, 55_0 
    li      a3, 55
    sub     a7,a6,a3
                    #      a_20 = i32 temp_9_24 
                    #      new_var temp_10_33:i32 
                    #      temp_10_33 = Add i32 a_20, b_24 
    add     a3,a2,a6
                    #      new_var temp_11_33:i32 
                    #      temp_11_33 = Mod i32 temp_10_33, 21_0 
    li      s4, 21
    rem     s7,a3,s4
                    #      ret temp_11_33 
    ld      ra,136(sp)
    ld      s0,128(sp)
    mv      a0, s7
    addi    sp,sp,144
    ret
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_12_20:i32 
                    #      temp_12_20 = Sub i32 a_20, 97_0 
    li      s4, 97
    sub     s9,a2,s4
                    #      new_var temp_13_20:i32 
                    #      temp_13_20 = Add i32 b_17, temp_12_20 
    add     s4,a1,s9
                    #      a_20 = i32 temp_13_20 
                    #      new_var temp_14_20:i32 
                    #      temp_14_20 = Sub i32 b_17, a_20 
    sw      a0,124(sp)
    sub     a0,a1,a2
                    #      new_var temp_15_20:i32 
                    #      temp_15_20 = Mod i32 temp_14_20, 62_0 
    sw      a1,120(sp)
    li      a1, 62
    sw      a2,116(sp)
    rem     a2,a0,a1
                    #      b_17 = i32 temp_15_20 
    mv      a1, a2
                    #      new_var temp_16_37:i32 
                    #      temp_16_37 = Add i32 a_20, b_17 
    sw      a0,48(sp)
    sw      a2,44(sp)
    add     a2,a0,a1
                    #      new_var temp_17_37:i32 
                    #      temp_17_37 = Mod i32 temp_16_37, 17_0 
    sw      a0,116(sp)
    li      a0, 17
    sw      a1,120(sp)
    rem     a1,a2,a0
                    #      ret temp_17_37 
    ld      ra,136(sp)
    ld      s0,128(sp)
    mv      a0, a1
    addi    sp,sp,144
    ret
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_18_20:i32 
                    #      temp_18_20 = Add i32 a_20, b_17 
    sw      a1,36(sp)
    sw      a2,40(sp)
    add     a2,a0,a1
                    #      new_var temp_19_20:i32 
                    #      temp_19_20 = Mod i32 temp_18_20, 13_0 
    sw      a0,116(sp)
    li      a0, 13
    sw      a1,120(sp)
    rem     a1,a2,a0
                    #      ret temp_19_20 
    ld      ra,136(sp)
    ld      s0,128(sp)
    mv      a0, a1
    addi    sp,sp,144
    ret
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_20_17:i32 
                    #      temp_20_17 = Mul i32 b_17, a_17 
    sw      a1,28(sp)
    sw      a2,32(sp)
    mul     a2,a0,a1
                    #      new_var temp_21_17:i32 
                    #      temp_21_17 = Mod i32 temp_20_17, 83_0 
    sw      a0,120(sp)
    li      a0, 83
    sw      a1,124(sp)
    rem     a1,a2,a0
                    #      a_17 = i32 temp_21_17 
    mv      a0, a1
                    #      new_var temp_22_17:i32 
                    #      temp_22_17 = Sub i32 b_17, 771_0 
    sw      a0,124(sp)
    sw      a1,20(sp)
    li      a1, 771
    sw      a2,24(sp)
    sub     a2,a0,a1
                    #      new_var temp_23_17:i32 
                    #      temp_23_17 = Add i32 a_17, temp_22_17 
    sw      a0,120(sp)
    add     a0,a1,a2
                    #      b_17 = i32 temp_23_17 
    sw      a1,124(sp)
    mv      a1, a0
                    #      new_var temp_24_17:i32 
                    #      temp_24_17 = Add i32 a_17, b_17 
    sw      a0,12(sp)
    sw      a2,16(sp)
    add     a2,a0,a1
                    #      new_var temp_25_17:i32 
                    #      temp_25_17 = Mod i32 temp_24_17, 11_0 
    sw      a0,124(sp)
    li      a0, 11
    sw      a1,120(sp)
    rem     a1,a2,a0
                    #      ret temp_25_17 
    ld      ra,136(sp)
    ld      s0,128(sp)
    mv      a0, a1
    addi    sp,sp,144
    ret
