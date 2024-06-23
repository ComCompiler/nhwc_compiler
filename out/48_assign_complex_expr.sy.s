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
              #                    mem layout:|ra_main:8 at 96|s0_main:8 at 88|a:4 at 84|b:4 at 80|c:4 at 76|d:4 at 72|result:4 at 68|temp_0_arithop:4 at 64|temp_1_:4 at 60|temp_2_arithop:4 at 56|temp_3_arithop:4 at 52|temp_4_arithop:4 at 48|temp_5_arithop:4 at 44|temp_6_arithop:4 at 40|temp_7_arithop:4 at 36|temp_8_arithop:4 at 32|temp_9_:4 at 28|temp_10_arithop:4 at 24|temp_11_:4 at 20|temp_12_arithop:4 at 16|temp_13_arithop:4 at 12|temp_14_arithop:4 at 8|temp_15_arithop:4 at 4|temp_16_arithop:4 at 0
    addi    sp,sp,-104
              #                    store to ra_main_0 in mem offset legal
    sd      ra,96(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,88(sp)
    addi    s0,sp,104
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i32 c_17 
              #                          alloc i32 d_17 
              #                          alloc i32 result_17 
              #                          alloc i32 temp_0_arithop_17 
              #                          alloc i32 temp_1__17 
              #                          alloc i32 temp_2_arithop_17 
              #                          alloc i32 temp_3_arithop_17 
              #                          alloc i32 temp_4_arithop_17 
              #                          alloc i32 temp_5_arithop_17 
              #                          alloc i32 temp_6_arithop_17 
              #                          alloc i32 temp_7_arithop_17 
              #                          alloc i32 temp_8_arithop_17 
              #                          alloc i32 temp_9__17 
              #                          alloc i32 temp_10_arithop_17 
              #                          alloc i32 temp_11__17 
              #                          alloc i32 temp_12_arithop_17 
              #                          alloc i32 temp_13_arithop_17 
              #                          alloc i32 temp_14_arithop_17 
              #                          alloc i32 temp_15_arithop_17 
              #                          alloc i32 temp_16_arithop_17 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var a_17:i32 
              #                          new_var b_17:i32 
              #                          new_var c_17:i32 
              #                          new_var d_17:i32 
              #                          new_var result_17:i32 
              #                          a_17 = i32 5_0 
              #                    occupy a0 with a_17
    li      a0, 5
              #                    free a0
              #                          b_17 = i32 5_0 
              #                    occupy a1 with b_17
    li      a1, 5
              #                    free a1
              #                          c_17 = i32 1_0 
              #                    occupy a2 with c_17
    li      a2, 1
              #                    free a2
              #                          d_17 = i32 -2_0 
              #                    occupy a3 with d_17
    li      a3, -2
              #                    free a3
              #                          new_var temp_0_arithop_17:i32 
              #                          temp_0_arithop_17 = Add i32 c_17, 3_0 
              #                    occupy a2 with c_17
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy a5 with temp_0_arithop_17
    add     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          new_var temp_1__17:i32 
              #                          temp_1__17 = Sub i32 0_0, temp_0_arithop_17 
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a5 with temp_0_arithop_17
              #                    occupy a7 with temp_1__17
              #                    regtab:    a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: 3_0, tracked: false } |     a5:Occupied { symidx: temp_0_arithop_17, tracked: true, occupy_count: 1 } |     a6:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a7:Occupied { symidx: temp_1__17, tracked: true, occupy_count: 1 } | 


    sub     a7,a6,a5
              #                    free a6
              #                    free a5
              #                    free a7
              #                          new_var temp_2_arithop_17:i32 
              #                          temp_2_arithop_17 = Mod i32 temp_1__17, 2_0 
              #                    occupy a7 with temp_1__17
              #                    occupy s1 with 2_0
    li      s1, 2
              #                    occupy s2 with temp_2_arithop_17
              #                    load from temp_2_arithop_17 in mem


    lw      s2,56(sp)
    rem     s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                          new_var temp_3_arithop_17:i32 
              #                          temp_3_arithop_17 = Sub i32 a_17, b_17 
              #                    occupy a0 with a_17
              #                    occupy a1 with b_17
              #                    occupy s3 with temp_3_arithop_17
              #                    regtab:    a0:Occupied { symidx: a_17, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: b_17, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: 3_0, tracked: false } |     a5:Freed { symidx: temp_0_arithop_17, tracked: true } |     a6:Freed { symidx: 0_0, tracked: false } |     a7:Freed { symidx: temp_1__17, tracked: true } |     s1:Freed { symidx: 2_0, tracked: false } |     s2:Freed { symidx: temp_2_arithop_17, tracked: true } |     s3:Occupied { symidx: temp_3_arithop_17, tracked: true, occupy_count: 1 } | 


    sub     s3,a0,a1
              #                    free a0
              #                    free a1
              #                    free s3
              #                          new_var temp_4_arithop_17:i32 
              #                          temp_4_arithop_17 = Div i32 2_0, d_17 
              #                    found literal reg Some(s1) already exist with 2_0
              #                    occupy s1 with 2_0
              #                    occupy a3 with d_17
              #                    occupy s4 with temp_4_arithop_17
    div     s4,s1,a3
              #                    free s1
              #                    free a3
              #                    free s4
              #                          new_var temp_5_arithop_17:i32 
              #                          temp_5_arithop_17 = Add i32 temp_4_arithop_17, temp_3_arithop_17 
              #                    occupy s4 with temp_4_arithop_17
              #                    occupy s3 with temp_3_arithop_17
              #                    occupy s5 with temp_5_arithop_17
    add     s5,s4,s3
              #                    free s4
              #                    free s3
              #                    free s5
              #                          new_var temp_6_arithop_17:i32 
              #                          temp_6_arithop_17 = Sub i32 temp_5_arithop_17, temp_2_arithop_17 
              #                    occupy s5 with temp_5_arithop_17
              #                    occupy s2 with temp_2_arithop_17
              #                    occupy s6 with temp_6_arithop_17
              #                    regtab:    a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: 3_0, tracked: false } |     a5:Freed { symidx: temp_0_arithop_17, tracked: true } |     a6:Freed { symidx: 0_0, tracked: false } |     a7:Freed { symidx: temp_1__17, tracked: true } |     s1:Freed { symidx: 2_0, tracked: false } |     s2:Occupied { symidx: temp_2_arithop_17, tracked: true, occupy_count: 1 } |     s3:Freed { symidx: temp_3_arithop_17, tracked: true } |     s4:Freed { symidx: temp_4_arithop_17, tracked: true } |     s5:Occupied { symidx: temp_5_arithop_17, tracked: true, occupy_count: 1 } |     s6:Occupied { symidx: temp_6_arithop_17, tracked: true, occupy_count: 1 } | 


    sub     s6,s5,s2
              #                    free s5
              #                    free s2
              #                    free s6
              #                          result_17 = i32 temp_6_arithop_17 
              #                    occupy s6 with temp_6_arithop_17
              #                    occupy s7 with result_17
    mv      s7, s6
              #                    free s6
              #                    free s7
              #                           Call void putint_0(result_17) 
              #                    saved register dumping to mem
              #                    store to temp_2_arithop_17 in mem offset legal
    sw      s2,56(sp)
              #                    release s2 with temp_2_arithop_17
              #                    store to temp_3_arithop_17 in mem offset legal
    sw      s3,52(sp)
              #                    release s3 with temp_3_arithop_17
              #                    store to temp_4_arithop_17 in mem offset legal
    sw      s4,48(sp)
              #                    release s4 with temp_4_arithop_17
              #                    store to temp_5_arithop_17 in mem offset legal
    sw      s5,44(sp)
              #                    release s5 with temp_5_arithop_17
              #                    store to temp_6_arithop_17 in mem offset legal
    sw      s6,40(sp)
              #                    release s6 with temp_6_arithop_17
              #                    store to result_17 in mem offset legal
    sw      s7,68(sp)
              #                    release s7 with result_17
              #                    store to a_17 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with a_17
              #                    store to b_17 in mem offset legal
    sw      a1,80(sp)
              #                    release a1 with b_17
              #                    store to c_17 in mem offset legal
    sw      a2,76(sp)
              #                    release a2 with c_17
              #                    store to d_17 in mem offset legal
    sw      a3,72(sp)
              #                    release a3 with d_17
              #                    store to temp_0_arithop_17 in mem offset legal
    sw      a5,64(sp)
              #                    release a5 with temp_0_arithop_17
              #                    store to temp_1__17 in mem offset legal
    sw      a7,60(sp)
              #                    release a7 with temp_1__17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_result_17_0
              #                    load from result_17 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_7_arithop_17:i32 
              #                          temp_7_arithop_17 = Add i32 c_17, 2_0 
              #                    occupy a0 with c_17
              #                    load from c_17 in mem


    lw      a0,76(sp)
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with temp_7_arithop_17
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_8_arithop_17:i32 
              #                          temp_8_arithop_17 = Mod i32 temp_7_arithop_17, 2_0 
              #                    occupy a2 with temp_7_arithop_17
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    occupy a3 with temp_8_arithop_17
              #                    load from temp_8_arithop_17 in mem


    lw      a3,32(sp)
    rem     a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                          new_var temp_9__17:i32 
              #                          temp_9__17 = Sub i32 0_0, temp_8_arithop_17 
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a3 with temp_8_arithop_17
              #                    occupy a5 with temp_9__17
              #                    regtab:    a0:Freed { symidx: c_17, tracked: true } |     a1:Freed { symidx: 2_0, tracked: false } |     a2:Freed { symidx: temp_7_arithop_17, tracked: true } |     a3:Occupied { symidx: temp_8_arithop_17, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a5:Occupied { symidx: temp_9__17, tracked: true, occupy_count: 1 } | 


    sub     a5,a4,a3
              #                    free a4
              #                    free a3
              #                    free a5
              #                          new_var temp_10_arithop_17:i32 
              #                          temp_10_arithop_17 = Sub i32 a_17, b_17 
              #                    occupy a6 with a_17
              #                    load from a_17 in mem


    lw      a6,84(sp)
              #                    occupy a7 with b_17
              #                    load from b_17 in mem


    lw      a7,80(sp)
              #                    occupy s1 with temp_10_arithop_17
              #                    regtab:    a0:Freed { symidx: c_17, tracked: true } |     a1:Freed { symidx: 2_0, tracked: false } |     a2:Freed { symidx: temp_7_arithop_17, tracked: true } |     a3:Freed { symidx: temp_8_arithop_17, tracked: true } |     a4:Freed { symidx: 0_0, tracked: false } |     a5:Freed { symidx: temp_9__17, tracked: true } |     a6:Occupied { symidx: a_17, tracked: true, occupy_count: 1 } |     a7:Occupied { symidx: b_17, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: temp_10_arithop_17, tracked: true, occupy_count: 1 } | 


    sub     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          new_var temp_11__17:i32 
              #                          temp_11__17 = Sub i32 0_0, temp_10_arithop_17 
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
              #                    occupy s1 with temp_10_arithop_17
              #                    occupy s2 with temp_11__17
              #                    regtab:    a0:Freed { symidx: c_17, tracked: true } |     a1:Freed { symidx: 2_0, tracked: false } |     a2:Freed { symidx: temp_7_arithop_17, tracked: true } |     a3:Freed { symidx: temp_8_arithop_17, tracked: true } |     a4:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_9__17, tracked: true } |     a6:Freed { symidx: a_17, tracked: true } |     a7:Freed { symidx: b_17, tracked: true } |     s1:Occupied { symidx: temp_10_arithop_17, tracked: true, occupy_count: 1 } |     s2:Occupied { symidx: temp_11__17, tracked: true, occupy_count: 1 } | 


    sub     s2,a4,s1
              #                    free a4
              #                    free s1
              #                    free s2
              #                          new_var temp_12_arithop_17:i32 
              #                          temp_12_arithop_17 = Mod i32 d_17, 2_0 
              #                    occupy s3 with d_17
              #                    load from d_17 in mem


    lw      s3,72(sp)
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    occupy s4 with temp_12_arithop_17
              #                    load from temp_12_arithop_17 in mem


    lw      s4,16(sp)
    rem     s4,s3,a1
              #                    free s3
              #                    free a1
              #                    free s4
              #                          new_var temp_13_arithop_17:i32 
              #                          temp_13_arithop_17 = Add i32 temp_12_arithop_17, 67_0 
              #                    occupy s4 with temp_12_arithop_17
              #                    occupy s5 with 67_0
    li      s5, 67
              #                    occupy s6 with temp_13_arithop_17
    add     s6,s4,s5
              #                    free s4
              #                    free s5
              #                    free s6
              #                          new_var temp_14_arithop_17:i32 
              #                          temp_14_arithop_17 = Add i32 temp_13_arithop_17, temp_11__17 
              #                    occupy s6 with temp_13_arithop_17
              #                    occupy s2 with temp_11__17
              #                    occupy s7 with temp_14_arithop_17
    add     s7,s6,s2
              #                    free s6
              #                    free s2
              #                    free s7
              #                          new_var temp_15_arithop_17:i32 
              #                          temp_15_arithop_17 = Sub i32 temp_14_arithop_17, temp_9__17 
              #                    occupy s7 with temp_14_arithop_17
              #                    occupy a5 with temp_9__17
              #                    occupy s8 with temp_15_arithop_17
              #                    regtab:    a0:Freed { symidx: c_17, tracked: true } |     a1:Freed { symidx: 2_0, tracked: false } |     a2:Freed { symidx: temp_7_arithop_17, tracked: true } |     a3:Freed { symidx: temp_8_arithop_17, tracked: true } |     a4:Freed { symidx: 0_0, tracked: false } |     a5:Occupied { symidx: temp_9__17, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: a_17, tracked: true } |     a7:Freed { symidx: b_17, tracked: true } |     s1:Freed { symidx: temp_10_arithop_17, tracked: true } |     s2:Freed { symidx: temp_11__17, tracked: true } |     s3:Freed { symidx: d_17, tracked: true } |     s4:Freed { symidx: temp_12_arithop_17, tracked: true } |     s5:Freed { symidx: 67_0, tracked: false } |     s6:Freed { symidx: temp_13_arithop_17, tracked: true } |     s7:Occupied { symidx: temp_14_arithop_17, tracked: true, occupy_count: 1 } |     s8:Occupied { symidx: temp_15_arithop_17, tracked: true, occupy_count: 1 } | 


    sub     s8,s7,a5
              #                    free s7
              #                    free a5
              #                    free s8
              #                          result_17 = i32 temp_15_arithop_17 
              #                    occupy s8 with temp_15_arithop_17
              #                    occupy s9 with result_17
    mv      s9, s8
              #                    free s8
              #                    free s9
              #                          new_var temp_16_arithop_17:i32 
              #                          temp_16_arithop_17 = Add i32 result_17, 3_0 
              #                    occupy s9 with result_17
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with temp_16_arithop_17
    add     s11,s9,s10
              #                    free s9
              #                    free s10
              #                    free s11
              #                          result_17 = i32 temp_16_arithop_17 
              #                    occupy s11 with temp_16_arithop_17
              #                    occupy s9 with result_17
    mv      s9, s11
              #                    free s11
              #                    free s9
              #                           Call void putint_0(result_17) 
              #                    saved register dumping to mem
              #                    store to temp_10_arithop_17 in mem offset legal
    sw      s1,24(sp)
              #                    release s1 with temp_10_arithop_17
              #                    store to temp_11__17 in mem offset legal
    sw      s2,20(sp)
              #                    release s2 with temp_11__17
              #                    store to d_17 in mem offset legal
    sw      s3,72(sp)
              #                    release s3 with d_17
              #                    store to temp_12_arithop_17 in mem offset legal
    sw      s4,16(sp)
              #                    release s4 with temp_12_arithop_17
              #                    store to temp_13_arithop_17 in mem offset legal
    sw      s6,12(sp)
              #                    release s6 with temp_13_arithop_17
              #                    store to temp_14_arithop_17 in mem offset legal
    sw      s7,8(sp)
              #                    release s7 with temp_14_arithop_17
              #                    store to temp_15_arithop_17 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_15_arithop_17
              #                    store to result_17 in mem offset legal
    sw      s9,68(sp)
              #                    release s9 with result_17
              #                    store to temp_16_arithop_17 in mem offset legal
    sw      s11,0(sp)
              #                    release s11 with temp_16_arithop_17
              #                    store to c_17 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with c_17
              #                    store to temp_7_arithop_17 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_7_arithop_17
              #                    store to temp_8_arithop_17 in mem offset legal
    sw      a3,32(sp)
              #                    release a3 with temp_8_arithop_17
              #                    store to temp_9__17 in mem offset legal
    sw      a5,28(sp)
              #                    release a5 with temp_9__17
              #                    store to a_17 in mem offset legal
    sw      a6,84(sp)
              #                    release a6 with a_17
              #                    store to b_17 in mem offset legal
    sw      a7,80(sp)
              #                    release a7 with b_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_result_17_0
              #                    load from result_17 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    putint
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,96(sp)
              #                    load from s0_main_0 in mem
    ld      s0,88(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,104
              #                    free a0
    ret
              #                    regtab 
