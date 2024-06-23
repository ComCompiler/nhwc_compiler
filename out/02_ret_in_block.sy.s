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
              #                    mem layout:|ra_main:8 at 136|s0_main:8 at 128|a:4 at 124|b:4 at 120|a:4 at 116|temp_0_arithop:4 at 112|temp_1_arithop:4 at 108|b:4 at 104|temp_2_arithop:4 at 100|temp_3_arithop:4 at 96|a:4 at 92|temp_4_arithop:4 at 88|temp_5_arithop:4 at 84|temp_6_arithop:4 at 80|temp_7_arithop:4 at 76|temp_8_arithop:4 at 72|temp_9_arithop:4 at 68|temp_10_arithop:4 at 64|temp_11_arithop:4 at 60|temp_12_arithop:4 at 56|temp_13_arithop:4 at 52|temp_14_arithop:4 at 48|temp_15_arithop:4 at 44|temp_16_arithop:4 at 40|temp_17_arithop:4 at 36|temp_18_arithop:4 at 32|temp_19_arithop:4 at 28|temp_20_arithop:4 at 24|temp_21_arithop:4 at 20|temp_22_arithop:4 at 16|temp_23_arithop:4 at 12|temp_24_arithop:4 at 8|temp_25_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-144
              #                    store to ra_main_0 in mem offset legal
    sd      ra,136(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,128(sp)
    addi    s0,sp,144
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i32 a_20 
              #                          alloc i32 temp_0_arithop_20 
              #                          alloc i32 temp_1_arithop_20 
              #                          alloc i32 b_24 
              #                          alloc i32 temp_2_arithop_24 
              #                          alloc i32 temp_3_arithop_24 
              #                          alloc i32 a_27 
              #                          alloc i32 temp_4_arithop_27 
              #                          alloc i32 temp_5_arithop_27 
              #                          alloc i32 temp_6_arithop_27 
              #                          alloc i32 temp_7_arithop_24 
              #                          alloc i32 temp_8_arithop_24 
              #                          alloc i32 temp_9_arithop_24 
              #                          alloc i32 temp_10_arithop_33 
              #                          alloc i32 temp_11_arithop_33 
              #                          alloc i32 temp_12_arithop_20 
              #                          alloc i32 temp_13_arithop_20 
              #                          alloc i32 temp_14_arithop_20 
              #                          alloc i32 temp_15_arithop_20 
              #                          alloc i32 temp_16_arithop_37 
              #                          alloc i32 temp_17_arithop_37 
              #                          alloc i32 temp_18_arithop_20 
              #                          alloc i32 temp_19_arithop_20 
              #                          alloc i32 temp_20_arithop_17 
              #                          alloc i32 temp_21_arithop_17 
              #                          alloc i32 temp_22_arithop_17 
              #                          alloc i32 temp_23_arithop_17 
              #                          alloc i32 temp_24_arithop_17 
              #                          alloc i32 temp_25_arithop_17 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          a_17 = i32 893_0 
              #                    occupy a0 with a_17
    li      a0, 893
              #                    free a0
              #                          b_17 = i32 716_0 
              #                    occupy a1 with b_17
    li      a1, 716
              #                    free a1
              #                          a_20 = i32 837_0 
              #                    occupy a2 with a_20
    li      a2, 837
              #                    free a2
              #                          new_var temp_0_arithop_20:i32 
              #                          temp_0_arithop_20 = Add i32 a_20, 128_0 
              #                    occupy a2 with a_20
              #                    occupy a3 with 128_0
    li      a3, 128
              #                    occupy a4 with temp_0_arithop_20
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          a_20 = i32 temp_0_arithop_20 
              #                    occupy a4 with temp_0_arithop_20
              #                    occupy a2 with a_20
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          new_var temp_1_arithop_20:i32 
              #                          temp_1_arithop_20 = Add i32 b_17, a_20 
              #                    occupy a1 with b_17
              #                    occupy a2 with a_20
              #                    occupy a5 with temp_1_arithop_20
    add     a5,a1,a2
              #                    free a1
              #                    free a2
              #                    free a5
              #                          b_17 = i32 temp_1_arithop_20 
              #                    occupy a5 with temp_1_arithop_20
              #                    occupy a1 with b_17
    mv      a1, a5
              #                    free a5
              #                    free a1
              #                          b_24 = i32 241_0 
              #                    occupy a6 with b_24
    li      a6, 241
              #                    free a6
              #                          new_var temp_2_arithop_24:i32 
              #                          temp_2_arithop_24 = Add i32 a_20, b_24 
              #                    occupy a2 with a_20
              #                    occupy a6 with b_24
              #                    occupy a7 with temp_2_arithop_24
    add     a7,a2,a6
              #                    free a2
              #                    free a6
              #                    free a7
              #                          new_var temp_3_arithop_24:i32 
              #                          temp_3_arithop_24 = Sub i32 temp_2_arithop_24, 412_0 
              #                    occupy a7 with temp_2_arithop_24
              #                    occupy s1 with 412_0
    li      s1, 412
              #                    occupy s2 with temp_3_arithop_24
              #                    regtab:    a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: a_20, tracked: true } |     a3:Freed { symidx: 128_0, tracked: false } |     a4:Freed { symidx: temp_0_arithop_20, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: b_24, tracked: true } |     a7:Occupied { symidx: temp_2_arithop_24, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: 412_0, tracked: false, occupy_count: 1 } |     s2:Occupied { symidx: temp_3_arithop_24, tracked: true, occupy_count: 1 } | 


    sub     s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                          a_20 = i32 temp_3_arithop_24 
              #                    occupy s2 with temp_3_arithop_24
              #                    occupy a2 with a_20
    mv      a2, s2
              #                    free s2
              #                    free a2
              #                          a_27 = i32 771_0 
              #                    occupy s3 with a_27
    li      s3, 771
              #                    free s3
              #                          new_var temp_4_arithop_27:i32 
              #                          temp_4_arithop_27 = Add i32 b_24, a_27 
              #                    occupy a6 with b_24
              #                    occupy s3 with a_27
              #                    occupy s4 with temp_4_arithop_27
    add     s4,a6,s3
              #                    free a6
              #                    free s3
              #                    free s4
              #                          new_var temp_5_arithop_27:i32 
              #                          temp_5_arithop_27 = Sub i32 temp_4_arithop_27, 18_0 
              #                    occupy s4 with temp_4_arithop_27
              #                    occupy s5 with 18_0
    li      s5, 18
              #                    occupy s6 with temp_5_arithop_27
              #                    regtab:    a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: a_20, tracked: true } |     a3:Freed { symidx: 128_0, tracked: false } |     a4:Freed { symidx: temp_0_arithop_20, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: b_24, tracked: true } |     a7:Freed { symidx: temp_2_arithop_24, tracked: true } |     s1:Freed { symidx: 412_0, tracked: false } |     s2:Freed { symidx: temp_3_arithop_24, tracked: true } |     s3:Freed { symidx: a_27, tracked: true } |     s4:Occupied { symidx: temp_4_arithop_27, tracked: true, occupy_count: 1 } |     s5:Occupied { symidx: 18_0, tracked: false, occupy_count: 1 } |     s6:Occupied { symidx: temp_5_arithop_27, tracked: true, occupy_count: 1 } | 


    sub     s6,s4,s5
              #                    free s4
              #                    free s5
              #                    free s6
              #                          b_24 = i32 temp_5_arithop_27 
              #                    occupy s6 with temp_5_arithop_27
              #                    occupy a6 with b_24
    mv      a6, s6
              #                    free s6
              #                    free a6
              #                          new_var temp_6_arithop_27:i32 
              #                          temp_6_arithop_27 = Add i32 b_24, 66_0 
              #                    occupy a6 with b_24
              #                    occupy s7 with 66_0
    li      s7, 66
              #                    occupy s8 with temp_6_arithop_27
    add     s8,a6,s7
              #                    free a6
              #                    free s7
              #                    free s8
              #                          a_27 = i32 temp_6_arithop_27 
              #                    occupy s8 with temp_6_arithop_27
              #                    occupy s3 with a_27
    mv      s3, s8
              #                    free s8
              #                    free s3
              #                          new_var temp_7_arithop_24:i32 
              #                          temp_7_arithop_24 = Add i32 b_24, a_20 
              #                    occupy a6 with b_24
              #                    occupy a2 with a_20
              #                    occupy s9 with temp_7_arithop_24
    add     s9,a6,a2
              #                    free a6
              #                    free a2
              #                    free s9
              #                          new_var temp_8_arithop_24:i32 
              #                          temp_8_arithop_24 = Sub i32 temp_7_arithop_24, 33_0 
              #                    occupy s9 with temp_7_arithop_24
              #                    occupy s10 with 33_0
    li      s10, 33
              #                    occupy s11 with temp_8_arithop_24
              #                    regtab:    a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: a_20, tracked: true } |     a3:Freed { symidx: 128_0, tracked: false } |     a4:Freed { symidx: temp_0_arithop_20, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: b_24, tracked: true } |     a7:Freed { symidx: temp_2_arithop_24, tracked: true } |     s10:Occupied { symidx: 33_0, tracked: false, occupy_count: 1 } |     s11:Occupied { symidx: temp_8_arithop_24, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: 412_0, tracked: false } |     s2:Freed { symidx: temp_3_arithop_24, tracked: true } |     s3:Freed { symidx: a_27, tracked: true } |     s4:Freed { symidx: temp_4_arithop_27, tracked: true } |     s5:Freed { symidx: 18_0, tracked: false } |     s6:Freed { symidx: temp_5_arithop_27, tracked: true } |     s7:Freed { symidx: 66_0, tracked: false } |     s8:Freed { symidx: temp_6_arithop_27, tracked: true } |     s9:Occupied { symidx: temp_7_arithop_24, tracked: true, occupy_count: 1 } | 


    sub     s11,s9,s10
              #                    free s9
              #                    free s10
              #                    free s11
              #                          b_24 = i32 temp_8_arithop_24 
              #                    occupy s11 with temp_8_arithop_24
              #                    occupy a6 with b_24
    mv      a6, s11
              #                    free s11
              #                    free a6
              #                          new_var temp_9_arithop_24:i32 
              #                          temp_9_arithop_24 = Sub i32 b_24, 55_0 
              #                    occupy a6 with b_24
              #                    occupy a3 with 55_0
    li      a3, 55
              #                    occupy s1 with temp_9_arithop_24
              #                    regtab:    a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: a_20, tracked: true } |     a3:Occupied { symidx: 55_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_0_arithop_20, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Occupied { symidx: b_24, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: temp_2_arithop_24, tracked: true } |     s10:Freed { symidx: 33_0, tracked: false } |     s11:Freed { symidx: temp_8_arithop_24, tracked: true } |     s1:Occupied { symidx: temp_9_arithop_24, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: temp_3_arithop_24, tracked: true } |     s3:Freed { symidx: a_27, tracked: true } |     s4:Freed { symidx: temp_4_arithop_27, tracked: true } |     s5:Freed { symidx: 18_0, tracked: false } |     s6:Freed { symidx: temp_5_arithop_27, tracked: true } |     s7:Freed { symidx: 66_0, tracked: false } |     s8:Freed { symidx: temp_6_arithop_27, tracked: true } |     s9:Freed { symidx: temp_7_arithop_24, tracked: true } | 


    sub     s1,a6,a3
              #                    free a6
              #                    free a3
              #                    free s1
              #                          a_20 = i32 temp_9_arithop_24 
              #                    occupy s1 with temp_9_arithop_24
              #                    occupy a2 with a_20
    mv      a2, s1
              #                    free s1
              #                    free a2
              #                          new_var temp_10_arithop_33:i32 
              #                          temp_10_arithop_33 = Add i32 a_20, b_24 
              #                    occupy a2 with a_20
              #                    occupy a6 with b_24
              #                    occupy a3 with temp_10_arithop_33
    add     a3,a2,a6
              #                    free a2
              #                    free a6
              #                    free a3
              #                          new_var temp_11_arithop_33:i32 
              #                          temp_11_arithop_33 = Mod i32 temp_10_arithop_33, 21_0 
              #                    occupy a3 with temp_10_arithop_33
              #                    occupy s5 with 21_0
    li      s5, 21
              #                    occupy s7 with temp_11_arithop_33
              #                    load from temp_11_arithop_33 in mem


    lw      s7,60(sp)
    rem     s7,a3,s5
              #                    free a3
              #                    free s5
              #                    free s7
              #                          ret temp_11_arithop_33 
              #                    load from ra_main_0 in mem
    ld      ra,136(sp)
              #                    load from s0_main_0 in mem
    ld      s0,128(sp)
              #                    store to temp_11_arithop_33 in mem offset legal
    sw      s7,60(sp)
              #                    release s7 with temp_11_arithop_33
              #                    store to a_17 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with a_17
              #                    occupy a0 with temp_11_arithop_33
              #                    load from temp_11_arithop_33 in mem


    lw      a0,60(sp)
    addi    sp,sp,144
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: a_20, tracked: true } |     a3:Freed { symidx: temp_10_arithop_33, tracked: true } |     a4:Freed { symidx: temp_0_arithop_20, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: b_24, tracked: true } |     a7:Freed { symidx: temp_2_arithop_24, tracked: true } |     s11:Freed { symidx: temp_8_arithop_24, tracked: true } |     s1:Freed { symidx: temp_9_arithop_24, tracked: true } |     s2:Freed { symidx: temp_3_arithop_24, tracked: true } |     s3:Freed { symidx: a_27, tracked: true } |     s4:Freed { symidx: temp_4_arithop_27, tracked: true } |     s6:Freed { symidx: temp_5_arithop_27, tracked: true } |     s8:Freed { symidx: temp_6_arithop_27, tracked: true } |     s9:Freed { symidx: temp_7_arithop_24, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_12_arithop_20:i32 
              #                          temp_12_arithop_20 = Add i32 b_17, a_20 
              #                    occupy a1 with b_17
              #                    occupy a2 with a_20
              #                    occupy a0 with temp_12_arithop_20
    add     a0,a1,a2
              #                    free a1
              #                    free a2
              #                    free a0
              #                          new_var temp_13_arithop_20:i32 
              #                          temp_13_arithop_20 = Sub i32 temp_12_arithop_20, 97_0 
              #                    occupy a0 with temp_12_arithop_20
              #                    occupy s5 with 97_0
    li      s5, 97
              #                    occupy s7 with temp_13_arithop_20
              #                    regtab:    a0:Occupied { symidx: temp_12_arithop_20, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: a_20, tracked: true } |     a3:Freed { symidx: temp_10_arithop_33, tracked: true } |     a4:Freed { symidx: temp_0_arithop_20, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: b_24, tracked: true } |     a7:Freed { symidx: temp_2_arithop_24, tracked: true } |     s11:Freed { symidx: temp_8_arithop_24, tracked: true } |     s1:Freed { symidx: temp_9_arithop_24, tracked: true } |     s2:Freed { symidx: temp_3_arithop_24, tracked: true } |     s3:Freed { symidx: a_27, tracked: true } |     s4:Freed { symidx: temp_4_arithop_27, tracked: true } |     s5:Occupied { symidx: 97_0, tracked: false, occupy_count: 1 } |     s6:Freed { symidx: temp_5_arithop_27, tracked: true } |     s7:Occupied { symidx: temp_13_arithop_20, tracked: true, occupy_count: 1 } |     s8:Freed { symidx: temp_6_arithop_27, tracked: true } |     s9:Freed { symidx: temp_7_arithop_24, tracked: true } | 


    sub     s7,a0,s5
              #                    free a0
              #                    free s5
              #                    free s7
              #                          a_20 = i32 temp_13_arithop_20 
              #                    occupy s7 with temp_13_arithop_20
              #                    occupy a2 with a_20
    mv      a2, s7
              #                    free s7
              #                    free a2
              #                          new_var temp_14_arithop_20:i32 
              #                          temp_14_arithop_20 = Sub i32 b_17, a_20 
              #                    occupy a1 with b_17
              #                    occupy a2 with a_20
              #                    occupy s10 with temp_14_arithop_20
              #                    regtab:    a0:Freed { symidx: temp_12_arithop_20, tracked: true } |     a1:Occupied { symidx: b_17, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: a_20, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_10_arithop_33, tracked: true } |     a4:Freed { symidx: temp_0_arithop_20, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: b_24, tracked: true } |     a7:Freed { symidx: temp_2_arithop_24, tracked: true } |     s10:Occupied { symidx: temp_14_arithop_20, tracked: true, occupy_count: 1 } |     s11:Freed { symidx: temp_8_arithop_24, tracked: true } |     s1:Freed { symidx: temp_9_arithop_24, tracked: true } |     s2:Freed { symidx: temp_3_arithop_24, tracked: true } |     s3:Freed { symidx: a_27, tracked: true } |     s4:Freed { symidx: temp_4_arithop_27, tracked: true } |     s5:Freed { symidx: 97_0, tracked: false } |     s6:Freed { symidx: temp_5_arithop_27, tracked: true } |     s7:Freed { symidx: temp_13_arithop_20, tracked: true } |     s8:Freed { symidx: temp_6_arithop_27, tracked: true } |     s9:Freed { symidx: temp_7_arithop_24, tracked: true } | 


    sub     s10,a1,a2
              #                    free a1
              #                    free a2
              #                    free s10
              #                          new_var temp_15_arithop_20:i32 
              #                          temp_15_arithop_20 = Mod i32 temp_14_arithop_20, 62_0 
              #                    occupy s10 with temp_14_arithop_20
              #                    occupy s5 with 62_0
    li      s5, 62
              #                    store to temp_12_arithop_20 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_12_arithop_20
              #                    occupy a0 with temp_15_arithop_20
              #                    load from temp_15_arithop_20 in mem


    lw      a0,44(sp)
    rem     a0,s10,s5
              #                    free s10
              #                    free s5
              #                    free a0
              #                          b_17 = i32 temp_15_arithop_20 
              #                    occupy a0 with temp_15_arithop_20
              #                    occupy a1 with b_17
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_16_arithop_37:i32 
              #                          temp_16_arithop_37 = Add i32 a_20, b_17 
              #                    occupy a2 with a_20
              #                    occupy a1 with b_17
              #                    occupy s5 with temp_16_arithop_37
    add     s5,a2,a1
              #                    free a2
              #                    free a1
              #                    free s5
              #                          new_var temp_17_arithop_37:i32 
              #                          temp_17_arithop_37 = Mod i32 temp_16_arithop_37, 17_0 
              #                    occupy s5 with temp_16_arithop_37
              #                    store to temp_15_arithop_20 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_15_arithop_20
              #                    occupy a0 with 17_0
    li      a0, 17
              #                    store to b_17 in mem offset legal
    sw      a1,120(sp)
              #                    release a1 with b_17
              #                    occupy a1 with temp_17_arithop_37
              #                    load from temp_17_arithop_37 in mem


    lw      a1,36(sp)
    rem     a1,s5,a0
              #                    free s5
              #                    free a0
              #                    free a1
              #                          ret temp_17_arithop_37 
              #                    load from ra_main_0 in mem
    ld      ra,136(sp)
              #                    load from s0_main_0 in mem
    ld      s0,128(sp)
              #                    store to temp_17_arithop_37 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with temp_17_arithop_37
              #                    occupy a0 with temp_17_arithop_37
              #                    load from temp_17_arithop_37 in mem


    lw      a0,36(sp)
    addi    sp,sp,144
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: a_20, tracked: true } |     a3:Freed { symidx: temp_10_arithop_33, tracked: true } |     a4:Freed { symidx: temp_0_arithop_20, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: b_24, tracked: true } |     a7:Freed { symidx: temp_2_arithop_24, tracked: true } |     s10:Freed { symidx: temp_14_arithop_20, tracked: true } |     s11:Freed { symidx: temp_8_arithop_24, tracked: true } |     s1:Freed { symidx: temp_9_arithop_24, tracked: true } |     s2:Freed { symidx: temp_3_arithop_24, tracked: true } |     s3:Freed { symidx: a_27, tracked: true } |     s4:Freed { symidx: temp_4_arithop_27, tracked: true } |     s5:Freed { symidx: temp_16_arithop_37, tracked: true } |     s6:Freed { symidx: temp_5_arithop_27, tracked: true } |     s7:Freed { symidx: temp_13_arithop_20, tracked: true } |     s8:Freed { symidx: temp_6_arithop_27, tracked: true } |     s9:Freed { symidx: temp_7_arithop_24, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_18_arithop_20:i32 
              #                          temp_18_arithop_20 = Add i32 a_20, b_17 
              #                    occupy a2 with a_20
              #                    occupy a0 with b_17
              #                    load from b_17 in mem


    lw      a0,120(sp)
              #                    occupy a1 with temp_18_arithop_20
    add     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_19_arithop_20:i32 
              #                          temp_19_arithop_20 = Mod i32 temp_18_arithop_20, 13_0 
              #                    occupy a1 with temp_18_arithop_20
              #                    store to b_17 in mem offset legal
    sw      a0,120(sp)
              #                    release a0 with b_17
              #                    occupy a0 with 13_0
    li      a0, 13
              #                    store to a_20 in mem offset legal
    sw      a2,116(sp)
              #                    release a2 with a_20
              #                    occupy a2 with temp_19_arithop_20
              #                    load from temp_19_arithop_20 in mem


    lw      a2,28(sp)
    rem     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          ret temp_19_arithop_20 
              #                    load from ra_main_0 in mem
    ld      ra,136(sp)
              #                    load from s0_main_0 in mem
    ld      s0,128(sp)
              #                    store to temp_19_arithop_20 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_19_arithop_20
              #                    occupy a0 with temp_19_arithop_20
              #                    load from temp_19_arithop_20 in mem


    lw      a0,28(sp)
    addi    sp,sp,144
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_18_arithop_20, tracked: true } |     a3:Freed { symidx: temp_10_arithop_33, tracked: true } |     a4:Freed { symidx: temp_0_arithop_20, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: b_24, tracked: true } |     a7:Freed { symidx: temp_2_arithop_24, tracked: true } |     s10:Freed { symidx: temp_14_arithop_20, tracked: true } |     s11:Freed { symidx: temp_8_arithop_24, tracked: true } |     s1:Freed { symidx: temp_9_arithop_24, tracked: true } |     s2:Freed { symidx: temp_3_arithop_24, tracked: true } |     s3:Freed { symidx: a_27, tracked: true } |     s4:Freed { symidx: temp_4_arithop_27, tracked: true } |     s5:Freed { symidx: temp_16_arithop_37, tracked: true } |     s6:Freed { symidx: temp_5_arithop_27, tracked: true } |     s7:Freed { symidx: temp_13_arithop_20, tracked: true } |     s8:Freed { symidx: temp_6_arithop_27, tracked: true } |     s9:Freed { symidx: temp_7_arithop_24, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_20_arithop_17:i32 
              #                          temp_20_arithop_17 = Mul i32 b_17, a_17 
              #                    occupy a0 with b_17
              #                    load from b_17 in mem


    lw      a0,120(sp)
              #                    occupy a2 with a_17
              #                    load from a_17 in mem


    lw      a2,124(sp)
              #                    store to temp_18_arithop_20 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with temp_18_arithop_20
              #                    occupy a1 with temp_20_arithop_17
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_21_arithop_17:i32 
              #                          temp_21_arithop_17 = Mod i32 temp_20_arithop_17, 83_0 
              #                    occupy a1 with temp_20_arithop_17
              #                    store to b_17 in mem offset legal
    sw      a0,120(sp)
              #                    release a0 with b_17
              #                    occupy a0 with 83_0
    li      a0, 83
              #                    store to a_17 in mem offset legal
    sw      a2,124(sp)
              #                    release a2 with a_17
              #                    occupy a2 with temp_21_arithop_17
              #                    load from temp_21_arithop_17 in mem


    lw      a2,20(sp)
    rem     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          a_17 = i32 temp_21_arithop_17 
              #                    occupy a2 with temp_21_arithop_17
              #                    occupy a0 with a_17
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          new_var temp_22_arithop_17:i32 
              #                          temp_22_arithop_17 = Add i32 a_17, b_17 
              #                    occupy a0 with a_17
              #                    store to temp_20_arithop_17 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with temp_20_arithop_17
              #                    occupy a1 with b_17
              #                    load from b_17 in mem


    lw      a1,120(sp)
              #                    store to temp_21_arithop_17 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with temp_21_arithop_17
              #                    occupy a2 with temp_22_arithop_17
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_23_arithop_17:i32 
              #                          temp_23_arithop_17 = Sub i32 temp_22_arithop_17, 771_0 
              #                    occupy a2 with temp_22_arithop_17
              #                    store to a_17 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with a_17
              #                    occupy a0 with 771_0
    li      a0, 771
              #                    store to b_17 in mem offset legal
    sw      a1,120(sp)
              #                    release a1 with b_17
              #                    occupy a1 with temp_23_arithop_17
              #                    regtab:    a0:Occupied { symidx: 771_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_23_arithop_17, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_22_arithop_17, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_10_arithop_33, tracked: true } |     a4:Freed { symidx: temp_0_arithop_20, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: b_24, tracked: true } |     a7:Freed { symidx: temp_2_arithop_24, tracked: true } |     s10:Freed { symidx: temp_14_arithop_20, tracked: true } |     s11:Freed { symidx: temp_8_arithop_24, tracked: true } |     s1:Freed { symidx: temp_9_arithop_24, tracked: true } |     s2:Freed { symidx: temp_3_arithop_24, tracked: true } |     s3:Freed { symidx: a_27, tracked: true } |     s4:Freed { symidx: temp_4_arithop_27, tracked: true } |     s5:Freed { symidx: temp_16_arithop_37, tracked: true } |     s6:Freed { symidx: temp_5_arithop_27, tracked: true } |     s7:Freed { symidx: temp_13_arithop_20, tracked: true } |     s8:Freed { symidx: temp_6_arithop_27, tracked: true } |     s9:Freed { symidx: temp_7_arithop_24, tracked: true } | 


    sub     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          b_17 = i32 temp_23_arithop_17 
              #                    occupy a1 with temp_23_arithop_17
              #                    occupy a0 with b_17
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          new_var temp_24_arithop_17:i32 
              #                          temp_24_arithop_17 = Add i32 a_17, b_17 
              #                    store to b_17 in mem offset legal
    sw      a0,120(sp)
              #                    release a0 with b_17
              #                    occupy a0 with a_17
              #                    load from a_17 in mem


    lw      a0,124(sp)
              #                    store to temp_23_arithop_17 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_23_arithop_17
              #                    occupy a1 with b_17
              #                    load from b_17 in mem


    lw      a1,120(sp)
              #                    store to temp_22_arithop_17 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_22_arithop_17
              #                    occupy a2 with temp_24_arithop_17
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_25_arithop_17:i32 
              #                          temp_25_arithop_17 = Mod i32 temp_24_arithop_17, 11_0 
              #                    occupy a2 with temp_24_arithop_17
              #                    store to a_17 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with a_17
              #                    occupy a0 with 11_0
    li      a0, 11
              #                    store to b_17 in mem offset legal
    sw      a1,120(sp)
              #                    release a1 with b_17
              #                    occupy a1 with temp_25_arithop_17
              #                    load from temp_25_arithop_17 in mem


    lw      a1,4(sp)
    rem     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          ret temp_25_arithop_17 
              #                    load from ra_main_0 in mem
    ld      ra,136(sp)
              #                    load from s0_main_0 in mem
    ld      s0,128(sp)
              #                    store to temp_25_arithop_17 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_25_arithop_17
              #                    occupy a0 with temp_25_arithop_17
              #                    load from temp_25_arithop_17 in mem


    lw      a0,4(sp)
    addi    sp,sp,144
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_24_arithop_17, tracked: true } |     a3:Freed { symidx: temp_10_arithop_33, tracked: true } |     a4:Freed { symidx: temp_0_arithop_20, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: b_24, tracked: true } |     a7:Freed { symidx: temp_2_arithop_24, tracked: true } |     s10:Freed { symidx: temp_14_arithop_20, tracked: true } |     s11:Freed { symidx: temp_8_arithop_24, tracked: true } |     s1:Freed { symidx: temp_9_arithop_24, tracked: true } |     s2:Freed { symidx: temp_3_arithop_24, tracked: true } |     s3:Freed { symidx: a_27, tracked: true } |     s4:Freed { symidx: temp_4_arithop_27, tracked: true } |     s5:Freed { symidx: temp_16_arithop_37, tracked: true } |     s6:Freed { symidx: temp_5_arithop_27, tracked: true } |     s7:Freed { symidx: temp_13_arithop_20, tracked: true } |     s8:Freed { symidx: temp_6_arithop_27, tracked: true } |     s9:Freed { symidx: temp_7_arithop_24, tracked: true } | 
