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


.section ___func
    .text
    .align 4
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 176|s0_main:8 at 168|a:4 at 164|putch:4 at 160|temp_0_arithop:4 at 156|temp_1_arithop:4 at 152|b:4 at 148|temp_2_arithop:4 at 144|temp_3_arithop:4 at 140|temp_4_arithop:4 at 136|temp_5_arithop:4 at 132|temp_6_arithop:4 at 128|main:4 at 124|temp_7_arithop:4 at 120|temp_8_arithop:4 at 116|temp_9_arithop:4 at 112|temp_10_arithop:4 at 108|temp_11_arithop:4 at 104|temp_12_arithop:4 at 100|a:4 at 96|temp_13_arithop:4 at 92|temp_14_arithop:4 at 88|temp_15_arithop:4 at 84|temp_16_arithop:4 at 80|temp_17_arithop:4 at 76|temp_18_arithop:4 at 72|b:4 at 68|temp_19_arithop:4 at 64|a:4 at 60|temp_20_arithop:4 at 56|temp_21_arithop:4 at 52|temp_22_arithop:4 at 48|temp_23_arithop:4 at 44|temp_24_arithop:4 at 40|temp_25_arithop:4 at 36|main:4 at 32|temp_26_arithop:4 at 28|temp_27_arithop:4 at 24|temp_28_arithop:4 at 20|temp_29_arithop:4 at 16|temp_30_arithop:4 at 12|temp_31_arithop:4 at 8|temp_32_arithop:4 at 4|temp_33_arithop:4 at 0
    addi    sp,sp,-184
              #                    store to ra_main_0 in mem offset legal
    sd      ra,176(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,168(sp)
    addi    s0,sp,184
              #                          alloc i32 a_17 
              #                          alloc i32 putch_17 
              #                          alloc i32 temp_0_arithop_21 
              #                          alloc i32 temp_1_arithop_21 
              #                          alloc i32 b_21 
              #                          alloc i32 temp_2_arithop_21 
              #                          alloc i32 temp_3_arithop_21 
              #                          alloc i32 temp_4_arithop_21 
              #                          alloc i32 temp_5_arithop_26 
              #                          alloc i32 temp_6_arithop_26 
              #                          alloc i32 main_26 
              #                          alloc i32 temp_7_arithop_26 
              #                          alloc i32 temp_8_arithop_26 
              #                          alloc i32 temp_9_arithop_26 
              #                          alloc i32 temp_10_arithop_26 
              #                          alloc i32 temp_11_arithop_31 
              #                          alloc i32 temp_12_arithop_31 
              #                          alloc i32 a_31 
              #                          alloc i32 temp_13_arithop_31 
              #                          alloc i32 temp_14_arithop_31 
              #                          alloc i32 temp_15_arithop_31 
              #                          alloc i32 temp_16_arithop_31 
              #                          alloc i32 temp_17_arithop_36 
              #                          alloc i32 temp_18_arithop_36 
              #                          alloc i32 b_36 
              #                          alloc i32 temp_19_arithop_36 
              #                          alloc i32 a_36 
              #                          alloc i32 temp_20_arithop_36 
              #                          alloc i32 temp_21_arithop_36 
              #                          alloc i32 temp_22_arithop_36 
              #                          alloc i32 temp_23_arithop_36 
              #                          alloc i32 temp_24_arithop_43 
              #                          alloc i32 temp_25_arithop_43 
              #                          alloc i32 main_43 
              #                          alloc i32 temp_26_arithop_43 
              #                          alloc i32 temp_27_arithop_43 
              #                          alloc i32 temp_28_arithop_43 
              #                          alloc i32 temp_29_arithop_43 
              #                          alloc i32 temp_30_arithop_36 
              #                          alloc i32 temp_31_arithop_31 
              #                          alloc i32 temp_32_arithop_26 
              #                          alloc i32 temp_33_arithop_17 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                           Call void putch_0(97_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_97_0_0
    li      a0, 97
              #                    arg load ended


    call    putch
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          a_17 = i32 1_0 
              #                    occupy a0 with a_17
    li      a0, 1
              #                    free a0
              #                          putch_17 = i32 0_0 
              #                    occupy a1 with putch_17
    li      a1, 0
              #                    free a1
              #                          new_var temp_0_arithop_21:i32 
              #                          temp_0_arithop_21 = Add i32 a_17, 2_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with temp_0_arithop_21
    add     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                          a_17 = i32 temp_0_arithop_21 
              #                    occupy a3 with temp_0_arithop_21
              #                    occupy a0 with a_17
    mv      a0, a3
              #                    free a3
              #                    free a0
              #                          new_var temp_1_arithop_21:i32 
              #                          temp_1_arithop_21 = Add i32 a_17, 3_0 
              #                    occupy a0 with a_17
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy a5 with temp_1_arithop_21
    add     a5,a0,a4
              #                    free a0
              #                    free a4
              #                    free a5
              #                          b_21 = i32 temp_1_arithop_21 
              #                    occupy a5 with temp_1_arithop_21
              #                    occupy a6 with b_21
    mv      a6, a5
              #                    free a5
              #                    free a6
              #                          new_var temp_2_arithop_21:i32 
              #                          temp_2_arithop_21 = Add i32 b_21, 4_0 
              #                    occupy a6 with b_21
              #                    occupy a7 with 4_0
    li      a7, 4
              #                    occupy s1 with temp_2_arithop_21
    add     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          b_21 = i32 temp_2_arithop_21 
              #                    occupy s1 with temp_2_arithop_21
              #                    occupy a6 with b_21
    mv      a6, s1
              #                    free s1
              #                    free a6
              #                          new_var temp_3_arithop_21:i32 
              #                          temp_3_arithop_21 = Add i32 putch_17, a_17 
              #                    occupy a1 with putch_17
              #                    occupy a0 with a_17
              #                    occupy s2 with temp_3_arithop_21
    add     s2,a1,a0
              #                    free a1
              #                    free a0
              #                    free s2
              #                          new_var temp_4_arithop_21:i32 
              #                          temp_4_arithop_21 = Add i32 temp_3_arithop_21, b_21 
              #                    occupy s2 with temp_3_arithop_21
              #                    occupy a6 with b_21
              #                    occupy s3 with temp_4_arithop_21
    add     s3,s2,a6
              #                    free s2
              #                    free a6
              #                    free s3
              #                          putch_17 = i32 temp_4_arithop_21 
              #                    occupy s3 with temp_4_arithop_21
              #                    occupy a1 with putch_17
    mv      a1, s3
              #                    free s3
              #                    free a1
              #                          new_var temp_5_arithop_26:i32 
              #                          temp_5_arithop_26 = Add i32 b_21, 5_0 
              #                    occupy a6 with b_21
              #                    occupy s4 with 5_0
    li      s4, 5
              #                    occupy s5 with temp_5_arithop_26
    add     s5,a6,s4
              #                    free a6
              #                    free s4
              #                    free s5
              #                          b_21 = i32 temp_5_arithop_26 
              #                    occupy s5 with temp_5_arithop_26
              #                    occupy a6 with b_21
    mv      a6, s5
              #                    free s5
              #                    free a6
              #                          new_var temp_6_arithop_26:i32 
              #                          temp_6_arithop_26 = Add i32 b_21, 6_0 
              #                    occupy a6 with b_21
              #                    occupy s6 with 6_0
    li      s6, 6
              #                    occupy s7 with temp_6_arithop_26
    add     s7,a6,s6
              #                    free a6
              #                    free s6
              #                    free s7
              #                          main_26 = i32 temp_6_arithop_26 
              #                    occupy s7 with temp_6_arithop_26
              #                    occupy s8 with main_26
    mv      s8, s7
              #                    free s7
              #                    free s8
              #                          new_var temp_7_arithop_26:i32 
              #                          temp_7_arithop_26 = Add i32 a_17, main_26 
              #                    occupy a0 with a_17
              #                    occupy s8 with main_26
              #                    occupy s9 with temp_7_arithop_26
    add     s9,a0,s8
              #                    free a0
              #                    free s8
              #                    free s9
              #                          a_17 = i32 temp_7_arithop_26 
              #                    occupy s9 with temp_7_arithop_26
              #                    occupy a0 with a_17
    mv      a0, s9
              #                    free s9
              #                    free a0
              #                          new_var temp_8_arithop_26:i32 
              #                          temp_8_arithop_26 = Add i32 putch_17, a_17 
              #                    occupy a1 with putch_17
              #                    occupy a0 with a_17
              #                    occupy s10 with temp_8_arithop_26
    add     s10,a1,a0
              #                    free a1
              #                    free a0
              #                    free s10
              #                          new_var temp_9_arithop_26:i32 
              #                          temp_9_arithop_26 = Add i32 temp_8_arithop_26, b_21 
              #                    occupy s10 with temp_8_arithop_26
              #                    occupy a6 with b_21
              #                    occupy s11 with temp_9_arithop_26
    add     s11,s10,a6
              #                    free s10
              #                    free a6
              #                    free s11
              #                          new_var temp_10_arithop_26:i32 
              #                          temp_10_arithop_26 = Add i32 temp_9_arithop_26, main_26 
              #                    occupy s11 with temp_9_arithop_26
              #                    occupy s8 with main_26
              #                    occupy a2 with temp_10_arithop_26
    add     a2,s11,s8
              #                    free s11
              #                    free s8
              #                    free a2
              #                          putch_17 = i32 temp_10_arithop_26 
              #                    occupy a2 with temp_10_arithop_26
              #                    occupy a1 with putch_17
    mv      a1, a2
              #                    free a2
              #                    free a1
              #                          new_var temp_11_arithop_31:i32 
              #                          temp_11_arithop_31 = Add i32 b_21, a_17 
              #                    occupy a6 with b_21
              #                    occupy a0 with a_17
              #                    occupy a4 with temp_11_arithop_31
    add     a4,a6,a0
              #                    free a6
              #                    free a0
              #                    free a4
              #                          b_21 = i32 temp_11_arithop_31 
              #                    occupy a4 with temp_11_arithop_31
              #                    occupy a6 with b_21
    mv      a6, a4
              #                    free a4
              #                    free a6
              #                          new_var temp_12_arithop_31:i32 
              #                          temp_12_arithop_31 = Add i32 main_26, 7_0 
              #                    occupy s8 with main_26
              #                    occupy a7 with 7_0
    li      a7, 7
              #                    occupy s4 with temp_12_arithop_31
    add     s4,s8,a7
              #                    free s8
              #                    free a7
              #                    free s4
              #                          a_31 = i32 temp_12_arithop_31 
              #                    occupy s4 with temp_12_arithop_31
              #                    occupy a7 with a_31
    mv      a7, s4
              #                    free s4
              #                    free a7
              #                          new_var temp_13_arithop_31:i32 
              #                          temp_13_arithop_31 = Add i32 a_31, 8_0 
              #                    occupy a7 with a_31
              #                    occupy s6 with 8_0
    li      s6, 8
              #                    store to a_17 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with a_17
              #                    occupy a0 with temp_13_arithop_31
    add     a0,a7,s6
              #                    free a7
              #                    free s6
              #                    free a0
              #                          a_31 = i32 temp_13_arithop_31 
              #                    occupy a0 with temp_13_arithop_31
              #                    occupy a7 with a_31
    mv      a7, a0
              #                    free a0
              #                    free a7
              #                          new_var temp_14_arithop_31:i32 
              #                          temp_14_arithop_31 = Add i32 putch_17, a_31 
              #                    occupy a1 with putch_17
              #                    occupy a7 with a_31
              #                    occupy s6 with temp_14_arithop_31
    add     s6,a1,a7
              #                    free a1
              #                    free a7
              #                    free s6
              #                          new_var temp_15_arithop_31:i32 
              #                          temp_15_arithop_31 = Add i32 temp_14_arithop_31, b_21 
              #                    occupy s6 with temp_14_arithop_31
              #                    occupy a6 with b_21
              #                    store to temp_13_arithop_31 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_13_arithop_31
              #                    occupy a0 with temp_15_arithop_31
    add     a0,s6,a6
              #                    free s6
              #                    free a6
              #                    free a0
              #                          new_var temp_16_arithop_31:i32 
              #                          temp_16_arithop_31 = Add i32 temp_15_arithop_31, main_26 
              #                    occupy a0 with temp_15_arithop_31
              #                    occupy s8 with main_26
              #                    store to putch_17 in mem offset legal
    sw      a1,160(sp)
              #                    release a1 with putch_17
              #                    occupy a1 with temp_16_arithop_31
    add     a1,a0,s8
              #                    free a0
              #                    free s8
              #                    free a1
              #                          putch_17 = i32 temp_16_arithop_31 
              #                    occupy a1 with temp_16_arithop_31
              #                    store to temp_15_arithop_31 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_15_arithop_31
              #                    occupy a0 with putch_17
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          new_var temp_17_arithop_36:i32 
              #                          temp_17_arithop_36 = Add i32 b_21, a_31 
              #                    occupy a6 with b_21
              #                    occupy a7 with a_31
              #                    store to putch_17 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with putch_17
              #                    occupy a0 with temp_17_arithop_36
    add     a0,a6,a7
              #                    free a6
              #                    free a7
              #                    free a0
              #                          b_21 = i32 temp_17_arithop_36 
              #                    occupy a0 with temp_17_arithop_36
              #                    occupy a6 with b_21
    mv      a6, a0
              #                    free a0
              #                    free a6
              #                          new_var temp_18_arithop_36:i32 
              #                          temp_18_arithop_36 = Add i32 main_26, 9_0 
              #                    occupy s8 with main_26
              #                    store to temp_17_arithop_36 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_17_arithop_36
              #                    occupy a0 with 9_0
    li      a0, 9
              #                    store to temp_16_arithop_31 in mem offset legal
    sw      a1,80(sp)
              #                    release a1 with temp_16_arithop_31
              #                    occupy a1 with temp_18_arithop_36
    add     a1,s8,a0
              #                    free s8
              #                    free a0
              #                    free a1
              #                          b_36 = i32 temp_18_arithop_36 
              #                    occupy a1 with temp_18_arithop_36
              #                    occupy a0 with b_36
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          new_var temp_19_arithop_36:i32 
              #                          temp_19_arithop_36 = Add i32 a_31, 10_0 
              #                    occupy a7 with a_31
              #                    store to b_36 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with b_36
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    store to temp_18_arithop_36 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with temp_18_arithop_36
              #                    occupy a1 with temp_19_arithop_36
    add     a1,a7,a0
              #                    free a7
              #                    free a0
              #                    free a1
              #                          a_31 = i32 temp_19_arithop_36 
              #                    occupy a1 with temp_19_arithop_36
              #                    occupy a7 with a_31
    mv      a7, a1
              #                    free a1
              #                    free a7
              #                          a_36 = i32 11_0 
              #                    occupy a0 with a_36
    li      a0, 11
              #                    free a0
              #                          new_var temp_20_arithop_36:i32 
              #                          temp_20_arithop_36 = Add i32 b_36, 12_0 
              #                    store to a_36 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with a_36
              #                    occupy a0 with b_36
              #                    load from b_36 in mem


    lw      a0,68(sp)
              #                    store to temp_19_arithop_36 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with temp_19_arithop_36
              #                    occupy a1 with 12_0
    li      a1, 12
              #                    store to temp_10_arithop_26 in mem offset legal
    sw      a2,108(sp)
              #                    release a2 with temp_10_arithop_26
              #                    occupy a2 with temp_20_arithop_36
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          b_36 = i32 temp_20_arithop_36 
              #                    occupy a2 with temp_20_arithop_36
              #                    occupy a0 with b_36
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          new_var temp_21_arithop_36:i32 
              #                          temp_21_arithop_36 = Add i32 putch_17, 11_0 
              #                    occupy a1 with putch_17
              #                    load from putch_17 in mem


    lw      a1,160(sp)
              #                    store to b_36 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with b_36
              #                    occupy a0 with 11_0
    li      a0, 11
              #                    store to temp_20_arithop_36 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with temp_20_arithop_36
              #                    occupy a2 with temp_21_arithop_36
    add     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_22_arithop_36:i32 
              #                          temp_22_arithop_36 = Add i32 temp_21_arithop_36, b_36 
              #                    occupy a2 with temp_21_arithop_36
              #                    occupy a0 with b_36
              #                    load from b_36 in mem


    lw      a0,68(sp)
              #                    store to putch_17 in mem offset legal
    sw      a1,160(sp)
              #                    release a1 with putch_17
              #                    occupy a1 with temp_22_arithop_36
    add     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_23_arithop_36:i32 
              #                          temp_23_arithop_36 = Add i32 temp_22_arithop_36, main_26 
              #                    occupy a1 with temp_22_arithop_36
              #                    occupy s8 with main_26
              #                    store to b_36 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with b_36
              #                    occupy a0 with temp_23_arithop_36
    add     a0,a1,s8
              #                    free a1
              #                    free s8
              #                    free a0
              #                          putch_17 = i32 temp_23_arithop_36 
              #                    occupy a0 with temp_23_arithop_36
              #                    store to temp_22_arithop_36 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with temp_22_arithop_36
              #                    occupy a1 with putch_17
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_24_arithop_43:i32 
              #                          temp_24_arithop_43 = Add i32 main_26, b_36 
              #                    occupy s8 with main_26
              #                    store to temp_23_arithop_36 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_23_arithop_36
              #                    occupy a0 with b_36
              #                    load from b_36 in mem


    lw      a0,68(sp)
              #                    store to putch_17 in mem offset legal
    sw      a1,160(sp)
              #                    release a1 with putch_17
              #                    occupy a1 with temp_24_arithop_43
    add     a1,s8,a0
              #                    free s8
              #                    free a0
              #                    free a1
              #                          main_26 = i32 temp_24_arithop_43 
              #                    occupy a1 with temp_24_arithop_43
              #                    occupy s8 with main_26
    mv      s8, a1
              #                    free a1
              #                    free s8
              #                          new_var temp_25_arithop_43:i32 
              #                          temp_25_arithop_43 = Add i32 b_36, 13_0 
              #                    occupy a0 with b_36
              #                    store to temp_24_arithop_43 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with temp_24_arithop_43
              #                    occupy a1 with 13_0
    li      a1, 13
              #                    store to temp_21_arithop_36 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_21_arithop_36
              #                    occupy a2 with temp_25_arithop_43
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          main_43 = i32 temp_25_arithop_43 
              #                    occupy a2 with temp_25_arithop_43
              #                    occupy a1 with main_43
    mv      a1, a2
              #                    free a2
              #                    free a1
              #                          new_var temp_26_arithop_43:i32 
              #                          temp_26_arithop_43 = Add i32 main_43, 11_0 
              #                    occupy a1 with main_43
              #                    store to b_36 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with b_36
              #                    occupy a0 with 11_0
    li      a0, 11
              #                    store to temp_25_arithop_43 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_25_arithop_43
              #                    occupy a2 with temp_26_arithop_43
    add     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          main_43 = i32 temp_26_arithop_43 
              #                    occupy a2 with temp_26_arithop_43
              #                    occupy a1 with main_43
    mv      a1, a2
              #                    free a2
              #                    free a1
              #                          new_var temp_27_arithop_43:i32 
              #                          temp_27_arithop_43 = Add i32 putch_17, 11_0 
              #                    occupy a0 with putch_17
              #                    load from putch_17 in mem


    lw      a0,160(sp)
              #                    store to main_43 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with main_43
              #                    occupy a1 with 11_0
    li      a1, 11
              #                    store to temp_26_arithop_43 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_26_arithop_43
              #                    occupy a2 with temp_27_arithop_43
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_28_arithop_43:i32 
              #                          temp_28_arithop_43 = Add i32 temp_27_arithop_43, b_36 
              #                    occupy a2 with temp_27_arithop_43
              #                    occupy a1 with b_36
              #                    load from b_36 in mem


    lw      a1,68(sp)
              #                    store to putch_17 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with putch_17
              #                    occupy a0 with temp_28_arithop_43
    add     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                          new_var temp_29_arithop_43:i32 
              #                          temp_29_arithop_43 = Add i32 temp_28_arithop_43, main_43 
              #                    occupy a0 with temp_28_arithop_43
              #                    store to b_36 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with b_36
              #                    occupy a1 with main_43
              #                    load from main_43 in mem


    lw      a1,32(sp)
              #                    store to temp_27_arithop_43 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with temp_27_arithop_43
              #                    occupy a2 with temp_29_arithop_43
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          putch_17 = i32 temp_29_arithop_43 
              #                    occupy a2 with temp_29_arithop_43
              #                    store to temp_28_arithop_43 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_28_arithop_43
              #                    occupy a0 with putch_17
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          new_var temp_30_arithop_36:i32 
              #                          temp_30_arithop_36 = Sub i32 putch_17, main_26 
              #                    occupy a0 with putch_17
              #                    occupy s8 with main_26
              #                    store to main_43 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with main_43
              #                    occupy a1 with temp_30_arithop_36
              #                    regtab:    a0:Occupied { symidx: putch_17, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_30_arithop_36, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_29_arithop_43, tracked: true } |     a3:Freed { symidx: temp_0_arithop_21, tracked: true } |     a4:Freed { symidx: temp_11_arithop_31, tracked: true } |     a5:Freed { symidx: temp_1_arithop_21, tracked: true } |     a6:Freed { symidx: b_21, tracked: true } |     a7:Freed { symidx: a_31, tracked: true } |     s10:Freed { symidx: temp_8_arithop_26, tracked: true } |     s11:Freed { symidx: temp_9_arithop_26, tracked: true } |     s1:Freed { symidx: temp_2_arithop_21, tracked: true } |     s2:Freed { symidx: temp_3_arithop_21, tracked: true } |     s3:Freed { symidx: temp_4_arithop_21, tracked: true } |     s4:Freed { symidx: temp_12_arithop_31, tracked: true } |     s5:Freed { symidx: temp_5_arithop_26, tracked: true } |     s6:Freed { symidx: temp_14_arithop_31, tracked: true } |     s7:Freed { symidx: temp_6_arithop_26, tracked: true } |     s8:Occupied { symidx: main_26, tracked: true, occupy_count: 1 } |     s9:Freed { symidx: temp_7_arithop_26, tracked: true } | 


    sub     a1,a0,s8
              #                    free a0
              #                    free s8
              #                    free a1
              #                          putch_17 = i32 temp_30_arithop_36 
              #                    occupy a1 with temp_30_arithop_36
              #                    occupy a0 with putch_17
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          new_var temp_31_arithop_31:i32 
              #                          temp_31_arithop_31 = Sub i32 putch_17, b_21 
              #                    occupy a0 with putch_17
              #                    occupy a6 with b_21
              #                    store to temp_30_arithop_36 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_30_arithop_36
              #                    occupy a1 with temp_31_arithop_31
              #                    regtab:    a0:Occupied { symidx: putch_17, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_31_arithop_31, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_29_arithop_43, tracked: true } |     a3:Freed { symidx: temp_0_arithop_21, tracked: true } |     a4:Freed { symidx: temp_11_arithop_31, tracked: true } |     a5:Freed { symidx: temp_1_arithop_21, tracked: true } |     a6:Occupied { symidx: b_21, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: a_31, tracked: true } |     s10:Freed { symidx: temp_8_arithop_26, tracked: true } |     s11:Freed { symidx: temp_9_arithop_26, tracked: true } |     s1:Freed { symidx: temp_2_arithop_21, tracked: true } |     s2:Freed { symidx: temp_3_arithop_21, tracked: true } |     s3:Freed { symidx: temp_4_arithop_21, tracked: true } |     s4:Freed { symidx: temp_12_arithop_31, tracked: true } |     s5:Freed { symidx: temp_5_arithop_26, tracked: true } |     s6:Freed { symidx: temp_14_arithop_31, tracked: true } |     s7:Freed { symidx: temp_6_arithop_26, tracked: true } |     s8:Freed { symidx: main_26, tracked: true } |     s9:Freed { symidx: temp_7_arithop_26, tracked: true } | 


    sub     a1,a0,a6
              #                    free a0
              #                    free a6
              #                    free a1
              #                          putch_17 = i32 temp_31_arithop_31 
              #                    occupy a1 with temp_31_arithop_31
              #                    occupy a0 with putch_17
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          new_var temp_32_arithop_26:i32 
              #                          temp_32_arithop_26 = Sub i32 putch_17, a_17 
              #                    occupy a0 with putch_17
              #                    store to temp_31_arithop_31 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_31_arithop_31
              #                    occupy a1 with a_17
              #                    load from a_17 in mem


    lw      a1,164(sp)
              #                    store to temp_29_arithop_43 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_29_arithop_43
              #                    occupy a2 with temp_32_arithop_26
              #                    regtab:    a0:Occupied { symidx: putch_17, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: a_17, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_32_arithop_26, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_0_arithop_21, tracked: true } |     a4:Freed { symidx: temp_11_arithop_31, tracked: true } |     a5:Freed { symidx: temp_1_arithop_21, tracked: true } |     a6:Freed { symidx: b_21, tracked: true } |     a7:Freed { symidx: a_31, tracked: true } |     s10:Freed { symidx: temp_8_arithop_26, tracked: true } |     s11:Freed { symidx: temp_9_arithop_26, tracked: true } |     s1:Freed { symidx: temp_2_arithop_21, tracked: true } |     s2:Freed { symidx: temp_3_arithop_21, tracked: true } |     s3:Freed { symidx: temp_4_arithop_21, tracked: true } |     s4:Freed { symidx: temp_12_arithop_31, tracked: true } |     s5:Freed { symidx: temp_5_arithop_26, tracked: true } |     s6:Freed { symidx: temp_14_arithop_31, tracked: true } |     s7:Freed { symidx: temp_6_arithop_26, tracked: true } |     s8:Freed { symidx: main_26, tracked: true } |     s9:Freed { symidx: temp_7_arithop_26, tracked: true } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          putch_17 = i32 temp_32_arithop_26 
              #                    occupy a2 with temp_32_arithop_26
              #                    occupy a0 with putch_17
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          new_var temp_33_arithop_17:i32 
              #                          temp_33_arithop_17 = Mod i32 putch_17, 77_0 
              #                    occupy a0 with putch_17
              #                    store to a_17 in mem offset legal
    sw      a1,164(sp)
              #                    release a1 with a_17
              #                    occupy a1 with 77_0
    li      a1, 77
              #                    store to temp_32_arithop_26 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_32_arithop_26
              #                    occupy a2 with temp_33_arithop_17
              #                    load from temp_33_arithop_17 in mem


    lw      a2,0(sp)
    rem     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          ret temp_33_arithop_17 
              #                    load from ra_main_0 in mem
    ld      ra,176(sp)
              #                    load from s0_main_0 in mem
    ld      s0,168(sp)
              #                    store to temp_33_arithop_17 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_33_arithop_17
              #                    store to putch_17 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with putch_17
              #                    occupy a0 with temp_33_arithop_17
              #                    load from temp_33_arithop_17 in mem


    lw      a0,0(sp)
    addi    sp,sp,184
              #                    free a0
    ret
              #                    regtab     a3:Freed { symidx: temp_0_arithop_21, tracked: true } |     a4:Freed { symidx: temp_11_arithop_31, tracked: true } |     a5:Freed { symidx: temp_1_arithop_21, tracked: true } |     a6:Freed { symidx: b_21, tracked: true } |     a7:Freed { symidx: a_31, tracked: true } |     s10:Freed { symidx: temp_8_arithop_26, tracked: true } |     s11:Freed { symidx: temp_9_arithop_26, tracked: true } |     s1:Freed { symidx: temp_2_arithop_21, tracked: true } |     s2:Freed { symidx: temp_3_arithop_21, tracked: true } |     s3:Freed { symidx: temp_4_arithop_21, tracked: true } |     s4:Freed { symidx: temp_12_arithop_31, tracked: true } |     s5:Freed { symidx: temp_5_arithop_26, tracked: true } |     s6:Freed { symidx: temp_14_arithop_31, tracked: true } |     s7:Freed { symidx: temp_6_arithop_26, tracked: true } |     s8:Freed { symidx: main_26, tracked: true } |     s9:Freed { symidx: temp_7_arithop_26, tracked: true } | 
