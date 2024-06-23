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
              #                    mem layout:|ra_main:8 at 88|s0_main:8 at 80|a:4 at 76|b:4 at 72|c:4 at 68|d:4 at 64|result:4 at 60|temp_0_arithop:4 at 56|temp_1_arithop:4 at 52|temp_2_cmp:1 at 51|none:3 at 48|temp_3_arithop:4 at 44|temp_4_cmp:1 at 43|temp_5_logic:1 at 42|none:2 at 40|temp_6_arithop:4 at 36|temp_7_cmp:1 at 35|temp_8_logic:1 at 34|none:2 at 32|temp_9_arithop:4 at 28|temp_10_arithop:4 at 24|temp_11_cmp:1 at 23|none:3 at 20|temp_12_arithop:4 at 16|temp_13_cmp:1 at 15|temp_14_logic:1 at 14|none:2 at 12|temp_15_arithop:4 at 8|temp_16_arithop:4 at 4|temp_17_cmp:1 at 3|temp_18_logic:1 at 2|none:2 at 0
    addi    sp,sp,-96
              #                    store to ra_main_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i32 c_17 
              #                          alloc i32 d_17 
              #                          alloc i32 result_17 
              #                          alloc i32 temp_0_arithop_28 
              #                          alloc i32 temp_1_arithop_28 
              #                          alloc i1 temp_2_cmp_28 
              #                          alloc i32 temp_3_arithop_28 
              #                          alloc i1 temp_4_cmp_28 
              #                          alloc i1 temp_5_logic_28 
              #                          alloc i32 temp_6_arithop_28 
              #                          alloc i1 temp_7_cmp_28 
              #                          alloc i1 temp_8_logic_28 
              #                          alloc i32 temp_9_arithop_32 
              #                          alloc i32 temp_10_arithop_32 
              #                          alloc i1 temp_11_cmp_32 
              #                          alloc i32 temp_12_arithop_32 
              #                          alloc i1 temp_13_cmp_32 
              #                          alloc i1 temp_14_logic_32 
              #                          alloc i32 temp_15_arithop_32 
              #                          alloc i32 temp_16_arithop_32 
              #                          alloc i1 temp_17_cmp_32 
              #                          alloc i1 temp_18_logic_32 
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
              #                          result_17 = i32 2_0 
              #                    occupy a4 with result_17
    li      a4, 2
              #                    free a4
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: result_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_0_arithop_28:i32 
              #                          temp_0_arithop_28 = Add i32 c_17, 3_0 
              #                    occupy a2 with c_17
              #                    occupy a5 with 3_0
    li      a5, 3
              #                    occupy a6 with temp_0_arithop_28
    add     a6,a2,a5
              #                    free a2
              #                    free a5
              #                    free a6
              #                          new_var temp_1_arithop_28:i32 
              #                          temp_1_arithop_28 = Mod i32 temp_0_arithop_28, 2_0 
              #                    occupy a6 with temp_0_arithop_28
              #                    occupy a7 with 2_0
    li      a7, 2
              #                    occupy s1 with temp_1_arithop_28
              #                    load from temp_1_arithop_28 in mem


    lw      s1,52(sp)
    rem     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          new_var temp_2_cmp_28:i1 
              #                          temp_2_cmp_28 = icmp i32 Ne temp_1_arithop_28, 0_0 
              #                    occupy s1 with temp_1_arithop_28
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s3 with temp_2_cmp_28
    xor     s3,s1,s2
    snez    s3, s3
              #                    free s1
              #                    free s2
              #                    free s3
              #                          new_var temp_3_arithop_28:i32 
              #                          temp_3_arithop_28 = Sub i32 a_17, b_17 
              #                    occupy a0 with a_17
              #                    occupy a1 with b_17
              #                    occupy s4 with temp_3_arithop_28
              #                    regtab:    a0:Occupied { symidx: a_17, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: b_17, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: result_17, tracked: true } |     a5:Freed { symidx: 3_0, tracked: false } |     a6:Freed { symidx: temp_0_arithop_28, tracked: true } |     a7:Freed { symidx: 2_0, tracked: false } |     s1:Freed { symidx: temp_1_arithop_28, tracked: true } |     s2:Freed { symidx: 0_0, tracked: false } |     s3:Freed { symidx: temp_2_cmp_28, tracked: true } |     s4:Occupied { symidx: temp_3_arithop_28, tracked: true, occupy_count: 1 } | 


    sub     s4,a0,a1
              #                    free a0
              #                    free a1
              #                    free s4
              #                          new_var temp_4_cmp_28:i1 
              #                          temp_4_cmp_28 = icmp i32 Ne temp_3_arithop_28, 0_0 
              #                    occupy s4 with temp_3_arithop_28
              #                    found literal reg Some(s2) already exist with 0_0
              #                    occupy s2 with 0_0
              #                    occupy s5 with temp_4_cmp_28
    xor     s5,s4,s2
    snez    s5, s5
              #                    free s4
              #                    free s2
              #                    free s5
              #                          new_var temp_5_logic_28:i1 
              #                          temp_5_logic_28 = And i1 temp_4_cmp_28, temp_2_cmp_28 
              #                    occupy s5 with temp_4_cmp_28
              #                    occupy s3 with temp_2_cmp_28
              #                    occupy s6 with temp_5_logic_28
    and     s6,s5,s3
              #                    free s5
              #                    free s3
              #                    free s6
              #                          new_var temp_6_arithop_28:i32 
              #                          temp_6_arithop_28 = Div i32 2_0, d_17 
              #                    found literal reg Some(a7) already exist with 2_0
              #                    occupy a7 with 2_0
              #                    occupy a3 with d_17
              #                    occupy s7 with temp_6_arithop_28
    div     s7,a7,a3
              #                    free a7
              #                    free a3
              #                    free s7
              #                          new_var temp_7_cmp_28:i1 
              #                          temp_7_cmp_28 = icmp i32 Slt temp_6_arithop_28, 0_0 
              #                    occupy s7 with temp_6_arithop_28
              #                    found literal reg Some(s2) already exist with 0_0
              #                    occupy s2 with 0_0
              #                    occupy s8 with temp_7_cmp_28
    slt     s8,s7,s2
              #                    free s7
              #                    free s2
              #                    free s8
              #                          new_var temp_8_logic_28:i1 
              #                          temp_8_logic_28 = Or i1 temp_7_cmp_28, temp_5_logic_28 
              #                    occupy s8 with temp_7_cmp_28
              #                    occupy s6 with temp_5_logic_28
              #                    occupy s6 with temp_5_logic_28
              #                    free s8
              #                    free s6
              #                    free s6
              #                          br i1 temp_8_logic_28, label branch_true_29, label branch_false_29 
              #                    occupy s9 with temp_8_logic_28
              #                    load from temp_8_logic_28 in mem
    lb      s9,34(sp)
              #                    free s9
              #                    occupy s9 with temp_8_logic_28
    bnez    s9, .branch_true_29
              #                    free s9
    j       .branch_false_29
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: result_17, tracked: true } |     a6:Freed { symidx: temp_0_arithop_28, tracked: true } |     s1:Freed { symidx: temp_1_arithop_28, tracked: true } |     s3:Freed { symidx: temp_2_cmp_28, tracked: true } |     s4:Freed { symidx: temp_3_arithop_28, tracked: true } |     s5:Freed { symidx: temp_4_cmp_28, tracked: true } |     s6:Freed { symidx: temp_5_logic_28, tracked: true } |     s7:Freed { symidx: temp_6_arithop_28, tracked: true } |     s8:Freed { symidx: temp_7_cmp_28, tracked: true } |     s9:Freed { symidx: temp_8_logic_28, tracked: true } | 
              #                          label branch_true_29: 
.branch_true_29:
              #                           Call void putint_0(result_17) 
              #                    saved register dumping to mem
              #                    store to temp_1_arithop_28 in mem offset legal
    sw      s1,52(sp)
              #                    release s1 with temp_1_arithop_28
              #                    store to temp_2_cmp_28 in mem offset legal
    sb      s3,51(sp)
              #                    release s3 with temp_2_cmp_28
              #                    store to temp_3_arithop_28 in mem offset legal
    sw      s4,44(sp)
              #                    release s4 with temp_3_arithop_28
              #                    store to temp_4_cmp_28 in mem offset legal
    sb      s5,43(sp)
              #                    release s5 with temp_4_cmp_28
              #                    store to temp_5_logic_28 in mem offset legal
    sb      s6,42(sp)
              #                    release s6 with temp_5_logic_28
              #                    store to temp_6_arithop_28 in mem offset legal
    sw      s7,36(sp)
              #                    release s7 with temp_6_arithop_28
              #                    store to temp_7_cmp_28 in mem offset legal
    sb      s8,35(sp)
              #                    release s8 with temp_7_cmp_28
              #                    store to temp_8_logic_28 in mem offset legal
    sb      s9,34(sp)
              #                    release s9 with temp_8_logic_28
              #                    store to a_17 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with a_17
              #                    store to b_17 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with b_17
              #                    store to c_17 in mem offset legal
    sw      a2,68(sp)
              #                    release a2 with c_17
              #                    store to d_17 in mem offset legal
    sw      a3,64(sp)
              #                    release a3 with d_17
              #                    store to result_17 in mem offset legal
    sw      a4,60(sp)
              #                    release a4 with result_17
              #                    store to temp_0_arithop_28 in mem offset legal
    sw      a6,56(sp)
              #                    release a6 with temp_0_arithop_28
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_result_17_0
              #                    load from result_17 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    putint
              #                          jump label: branch_false_29 
              #                    occupy s3 with _anonymous_of_temp_2_cmp_28_0
              #                    load from temp_2_cmp_28 in mem
    lb      s3,51(sp)
              #                    occupy s8 with _anonymous_of_temp_7_cmp_28_0
              #                    load from temp_7_cmp_28 in mem
    lb      s8,35(sp)
              #                    occupy a3 with _anonymous_of_d_17_0
              #                    load from d_17 in mem


    lw      a3,64(sp)
              #                    occupy s1 with _anonymous_of_temp_1_arithop_28_0
              #                    load from temp_1_arithop_28 in mem


    lw      s1,52(sp)
              #                    occupy a4 with _anonymous_of_result_17_0
              #                    load from result_17 in mem


    lw      a4,60(sp)
              #                    occupy s5 with _anonymous_of_temp_4_cmp_28_0
              #                    load from temp_4_cmp_28 in mem
    lb      s5,43(sp)
              #                    occupy a6 with _anonymous_of_temp_0_arithop_28_0
              #                    load from temp_0_arithop_28 in mem


    lw      a6,56(sp)
              #                    occupy s6 with _anonymous_of_temp_5_logic_28_0
              #                    load from temp_5_logic_28 in mem
    lb      s6,42(sp)
              #                    occupy a1 with _anonymous_of_b_17_0
              #                    load from b_17 in mem


    lw      a1,72(sp)
              #                    occupy a0 with _anonymous_of_a_17_0
              #                    load from a_17 in mem


    lw      a0,76(sp)
              #                    occupy s9 with _anonymous_of_temp_8_logic_28_0
              #                    load from temp_8_logic_28 in mem
    lb      s9,34(sp)
              #                    occupy s7 with _anonymous_of_temp_6_arithop_28_0
              #                    load from temp_6_arithop_28 in mem


    lw      s7,36(sp)
              #                    occupy s4 with _anonymous_of_temp_3_arithop_28_0
              #                    load from temp_3_arithop_28 in mem


    lw      s4,44(sp)
              #                    occupy a2 with _anonymous_of_c_17_0
              #                    load from c_17 in mem


    lw      a2,68(sp)
    j       .branch_false_29
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: result_17, tracked: true } |     a6:Freed { symidx: temp_0_arithop_28, tracked: true } |     s1:Freed { symidx: temp_1_arithop_28, tracked: true } |     s3:Freed { symidx: temp_2_cmp_28, tracked: true } |     s4:Freed { symidx: temp_3_arithop_28, tracked: true } |     s5:Freed { symidx: temp_4_cmp_28, tracked: true } |     s6:Freed { symidx: temp_5_logic_28, tracked: true } |     s7:Freed { symidx: temp_6_arithop_28, tracked: true } |     s8:Freed { symidx: temp_7_cmp_28, tracked: true } |     s9:Freed { symidx: temp_8_logic_28, tracked: true } | 
              #                          label branch_false_29: 
.branch_false_29:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: result_17, tracked: true } |     a6:Freed { symidx: temp_0_arithop_28, tracked: true } |     s1:Freed { symidx: temp_1_arithop_28, tracked: true } |     s3:Freed { symidx: temp_2_cmp_28, tracked: true } |     s4:Freed { symidx: temp_3_arithop_28, tracked: true } |     s5:Freed { symidx: temp_4_cmp_28, tracked: true } |     s6:Freed { symidx: temp_5_logic_28, tracked: true } |     s7:Freed { symidx: temp_6_arithop_28, tracked: true } |     s8:Freed { symidx: temp_7_cmp_28, tracked: true } |     s9:Freed { symidx: temp_8_logic_28, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_9_arithop_32:i32 
              #                          temp_9_arithop_32 = Add i32 c_17, 2_0 
              #                    occupy a2 with c_17
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy a7 with temp_9_arithop_32
    add     a7,a2,a5
              #                    free a2
              #                    free a5
              #                    free a7
              #                          new_var temp_10_arithop_32:i32 
              #                          temp_10_arithop_32 = Mod i32 temp_9_arithop_32, 2_0 
              #                    occupy a7 with temp_9_arithop_32
              #                    found literal reg Some(a5) already exist with 2_0
              #                    occupy a5 with 2_0
              #                    occupy s2 with temp_10_arithop_32
              #                    load from temp_10_arithop_32 in mem


    lw      s2,24(sp)
    rem     s2,a7,a5
              #                    free a7
              #                    free a5
              #                    free s2
              #                          new_var temp_11_cmp_32:i1 
              #                          temp_11_cmp_32 = icmp i32 Ne temp_10_arithop_32, 0_0 
              #                    occupy s2 with temp_10_arithop_32
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    occupy s11 with temp_11_cmp_32
    xor     s11,s2,s10
    snez    s11, s11
              #                    free s2
              #                    free s10
              #                    free s11
              #                          new_var temp_12_arithop_32:i32 
              #                          temp_12_arithop_32 = Sub i32 a_17, b_17 
              #                    occupy a0 with a_17
              #                    occupy a1 with b_17
              #                    occupy a5 with temp_12_arithop_32
              #                    regtab:    a0:Occupied { symidx: a_17, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: b_17, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: result_17, tracked: true } |     a5:Occupied { symidx: temp_12_arithop_32, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_0_arithop_28, tracked: true } |     a7:Freed { symidx: temp_9_arithop_32, tracked: true } |     s10:Freed { symidx: 0_0, tracked: false } |     s11:Freed { symidx: temp_11_cmp_32, tracked: true } |     s1:Freed { symidx: temp_1_arithop_28, tracked: true } |     s2:Freed { symidx: temp_10_arithop_32, tracked: true } |     s3:Freed { symidx: temp_2_cmp_28, tracked: true } |     s4:Freed { symidx: temp_3_arithop_28, tracked: true } |     s5:Freed { symidx: temp_4_cmp_28, tracked: true } |     s6:Freed { symidx: temp_5_logic_28, tracked: true } |     s7:Freed { symidx: temp_6_arithop_28, tracked: true } |     s8:Freed { symidx: temp_7_cmp_28, tracked: true } |     s9:Freed { symidx: temp_8_logic_28, tracked: true } | 


    sub     a5,a0,a1
              #                    free a0
              #                    free a1
              #                    free a5
              #                          new_var temp_13_cmp_32:i1 
              #                          temp_13_cmp_32 = icmp i32 Ne temp_12_arithop_32, 0_0 
              #                    occupy a5 with temp_12_arithop_32
              #                    found literal reg Some(s10) already exist with 0_0
              #                    occupy s10 with 0_0
              #                    store to a_17 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with a_17
              #                    occupy a0 with temp_13_cmp_32
    xor     a0,a5,s10
    snez    a0, a0
              #                    free a5
              #                    free s10
              #                    free a0
              #                          new_var temp_14_logic_32:i1 
              #                          temp_14_logic_32 = And i1 temp_13_cmp_32, temp_11_cmp_32 
              #                    occupy a0 with temp_13_cmp_32
              #                    occupy s11 with temp_11_cmp_32
              #                    occupy s10 with temp_14_logic_32
    and     s10,a0,s11
              #                    free a0
              #                    free s11
              #                    free s10
              #                          new_var temp_15_arithop_32:i32 
              #                          temp_15_arithop_32 = Mod i32 d_17, 2_0 
              #                    occupy a3 with d_17
              #                    store to temp_13_cmp_32 in mem offset legal
    sb      a0,15(sp)
              #                    release a0 with temp_13_cmp_32
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    store to b_17 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with b_17
              #                    occupy a1 with temp_15_arithop_32
              #                    load from temp_15_arithop_32 in mem


    lw      a1,8(sp)
    rem     a1,a3,a0
              #                    free a3
              #                    free a0
              #                    free a1
              #                          new_var temp_16_arithop_32:i32 
              #                          temp_16_arithop_32 = Add i32 temp_15_arithop_32, 67_0 
              #                    occupy a1 with temp_15_arithop_32
              #                    occupy a0 with 67_0
    li      a0, 67
              #                    store to c_17 in mem offset legal
    sw      a2,68(sp)
              #                    release a2 with c_17
              #                    occupy a2 with temp_16_arithop_32
    add     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_17_cmp_32:i1 
              #                          temp_17_cmp_32 = icmp i32 Slt temp_16_arithop_32, 0_0 
              #                    occupy a2 with temp_16_arithop_32
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    store to temp_15_arithop_32 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_15_arithop_32
              #                    occupy a1 with temp_17_cmp_32
    slt     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_18_logic_32:i1 
              #                          temp_18_logic_32 = Or i1 temp_17_cmp_32, temp_14_logic_32 
              #                    occupy a1 with temp_17_cmp_32
              #                    occupy s10 with temp_14_logic_32
              #                    occupy s10 with temp_14_logic_32
              #                    free a1
              #                    free s10
              #                    free s10
              #                          br i1 temp_18_logic_32, label branch_true_33, label branch_false_33 
              #                    occupy a0 with temp_18_logic_32
              #                    load from temp_18_logic_32 in mem
    lb      a0,2(sp)
              #                    free a0
              #                    store to temp_2_cmp_28 in mem offset legal
    sb      s3,51(sp)
              #                    release s3 with temp_2_cmp_28
              #                    occupy a0 with temp_18_logic_32
    bnez    a0, .branch_true_33
              #                    free a0
    j       .branch_false_33
              #                    regtab     a0:Freed { symidx: temp_18_logic_32, tracked: true } |     a1:Freed { symidx: temp_17_cmp_32, tracked: true } |     a2:Freed { symidx: temp_16_arithop_32, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: result_17, tracked: true } |     a5:Freed { symidx: temp_12_arithop_32, tracked: true } |     a6:Freed { symidx: temp_0_arithop_28, tracked: true } |     a7:Freed { symidx: temp_9_arithop_32, tracked: true } |     s10:Freed { symidx: temp_14_logic_32, tracked: true } |     s11:Freed { symidx: temp_11_cmp_32, tracked: true } |     s1:Freed { symidx: temp_1_arithop_28, tracked: true } |     s2:Freed { symidx: temp_10_arithop_32, tracked: true } |     s4:Freed { symidx: temp_3_arithop_28, tracked: true } |     s5:Freed { symidx: temp_4_cmp_28, tracked: true } |     s6:Freed { symidx: temp_5_logic_28, tracked: true } |     s7:Freed { symidx: temp_6_arithop_28, tracked: true } |     s8:Freed { symidx: temp_7_cmp_28, tracked: true } |     s9:Freed { symidx: temp_8_logic_28, tracked: true } | 
              #                          label branch_true_33: 
.branch_true_33:
              #                          result_17 = i32 4_0 
              #                    occupy a4 with result_17
    li      a4, 4
              #                    free a4
              #                           Call void putint_0(result_17) 
              #                    saved register dumping to mem
              #                    store to temp_1_arithop_28 in mem offset legal
    sw      s1,52(sp)
              #                    release s1 with temp_1_arithop_28
              #                    store to temp_10_arithop_32 in mem offset legal
    sw      s2,24(sp)
              #                    release s2 with temp_10_arithop_32
              #                    store to temp_3_arithop_28 in mem offset legal
    sw      s4,44(sp)
              #                    release s4 with temp_3_arithop_28
              #                    store to temp_4_cmp_28 in mem offset legal
    sb      s5,43(sp)
              #                    release s5 with temp_4_cmp_28
              #                    store to temp_5_logic_28 in mem offset legal
    sb      s6,42(sp)
              #                    release s6 with temp_5_logic_28
              #                    store to temp_6_arithop_28 in mem offset legal
    sw      s7,36(sp)
              #                    release s7 with temp_6_arithop_28
              #                    store to temp_7_cmp_28 in mem offset legal
    sb      s8,35(sp)
              #                    release s8 with temp_7_cmp_28
              #                    store to temp_8_logic_28 in mem offset legal
    sb      s9,34(sp)
              #                    release s9 with temp_8_logic_28
              #                    store to temp_14_logic_32 in mem offset legal
    sb      s10,14(sp)
              #                    release s10 with temp_14_logic_32
              #                    store to temp_11_cmp_32 in mem offset legal
    sb      s11,23(sp)
              #                    release s11 with temp_11_cmp_32
              #                    store to temp_18_logic_32 in mem offset legal
    sb      a0,2(sp)
              #                    release a0 with temp_18_logic_32
              #                    store to temp_17_cmp_32 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_17_cmp_32
              #                    store to temp_16_arithop_32 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_16_arithop_32
              #                    store to d_17 in mem offset legal
    sw      a3,64(sp)
              #                    release a3 with d_17
              #                    store to result_17 in mem offset legal
    sw      a4,60(sp)
              #                    release a4 with result_17
              #                    store to temp_12_arithop_32 in mem offset legal
    sw      a5,16(sp)
              #                    release a5 with temp_12_arithop_32
              #                    store to temp_0_arithop_28 in mem offset legal
    sw      a6,56(sp)
              #                    release a6 with temp_0_arithop_28
              #                    store to temp_9_arithop_32 in mem offset legal
    sw      a7,28(sp)
              #                    release a7 with temp_9_arithop_32
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_result_17_0
              #                    load from result_17 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    putint
              #                          jump label: branch_false_33 
              #                    occupy s10 with _anonymous_of_temp_14_logic_32_0
              #                    load from temp_14_logic_32 in mem
    lb      s10,14(sp)
              #                    occupy s8 with _anonymous_of_temp_7_cmp_28_0
              #                    load from temp_7_cmp_28 in mem
    lb      s8,35(sp)
              #                    occupy a3 with _anonymous_of_d_17_0
              #                    load from d_17 in mem


    lw      a3,64(sp)
              #                    occupy s1 with _anonymous_of_temp_1_arithop_28_0
              #                    load from temp_1_arithop_28 in mem


    lw      s1,52(sp)
              #                    occupy s2 with _anonymous_of_temp_10_arithop_32_0
              #                    load from temp_10_arithop_32 in mem


    lw      s2,24(sp)
              #                    occupy a4 with _anonymous_of_result_17_0
              #                    load from result_17 in mem


    lw      a4,60(sp)
              #                    occupy a5 with _anonymous_of_temp_12_arithop_32_0
              #                    load from temp_12_arithop_32 in mem


    lw      a5,16(sp)
              #                    occupy s5 with _anonymous_of_temp_4_cmp_28_0
              #                    load from temp_4_cmp_28 in mem
    lb      s5,43(sp)
              #                    occupy a6 with _anonymous_of_temp_0_arithop_28_0
              #                    load from temp_0_arithop_28 in mem


    lw      a6,56(sp)
              #                    occupy s6 with _anonymous_of_temp_5_logic_28_0
              #                    load from temp_5_logic_28 in mem
    lb      s6,42(sp)
              #                    occupy a1 with _anonymous_of_temp_17_cmp_32_0
              #                    load from temp_17_cmp_32 in mem
    lb      a1,3(sp)
              #                    occupy a7 with _anonymous_of_temp_9_arithop_32_0
              #                    load from temp_9_arithop_32 in mem


    lw      a7,28(sp)
              #                    occupy a0 with _anonymous_of_temp_18_logic_32_0
              #                    load from temp_18_logic_32 in mem
    lb      a0,2(sp)
              #                    occupy s11 with _anonymous_of_temp_11_cmp_32_0
              #                    load from temp_11_cmp_32 in mem
    lb      s11,23(sp)
              #                    occupy s9 with _anonymous_of_temp_8_logic_28_0
              #                    load from temp_8_logic_28 in mem
    lb      s9,34(sp)
              #                    occupy s7 with _anonymous_of_temp_6_arithop_28_0
              #                    load from temp_6_arithop_28 in mem


    lw      s7,36(sp)
              #                    occupy s4 with _anonymous_of_temp_3_arithop_28_0
              #                    load from temp_3_arithop_28 in mem


    lw      s4,44(sp)
              #                    occupy a2 with _anonymous_of_temp_16_arithop_32_0
              #                    load from temp_16_arithop_32 in mem


    lw      a2,4(sp)
    j       .branch_false_33
              #                    regtab     a0:Freed { symidx: temp_18_logic_32, tracked: true } |     a1:Freed { symidx: temp_17_cmp_32, tracked: true } |     a2:Freed { symidx: temp_16_arithop_32, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: result_17, tracked: true } |     a5:Freed { symidx: temp_12_arithop_32, tracked: true } |     a6:Freed { symidx: temp_0_arithop_28, tracked: true } |     a7:Freed { symidx: temp_9_arithop_32, tracked: true } |     s10:Freed { symidx: temp_14_logic_32, tracked: true } |     s11:Freed { symidx: temp_11_cmp_32, tracked: true } |     s1:Freed { symidx: temp_1_arithop_28, tracked: true } |     s2:Freed { symidx: temp_10_arithop_32, tracked: true } |     s4:Freed { symidx: temp_3_arithop_28, tracked: true } |     s5:Freed { symidx: temp_4_cmp_28, tracked: true } |     s6:Freed { symidx: temp_5_logic_28, tracked: true } |     s7:Freed { symidx: temp_6_arithop_28, tracked: true } |     s8:Freed { symidx: temp_7_cmp_28, tracked: true } |     s9:Freed { symidx: temp_8_logic_28, tracked: true } | 
              #                          label branch_false_33: 
.branch_false_33:
              #                    regtab     a0:Freed { symidx: temp_18_logic_32, tracked: true } |     a1:Freed { symidx: temp_17_cmp_32, tracked: true } |     a2:Freed { symidx: temp_16_arithop_32, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: result_17, tracked: true } |     a5:Freed { symidx: temp_12_arithop_32, tracked: true } |     a6:Freed { symidx: temp_0_arithop_28, tracked: true } |     a7:Freed { symidx: temp_9_arithop_32, tracked: true } |     s10:Freed { symidx: temp_14_logic_32, tracked: true } |     s11:Freed { symidx: temp_11_cmp_32, tracked: true } |     s1:Freed { symidx: temp_1_arithop_28, tracked: true } |     s2:Freed { symidx: temp_10_arithop_32, tracked: true } |     s4:Freed { symidx: temp_3_arithop_28, tracked: true } |     s5:Freed { symidx: temp_4_cmp_28, tracked: true } |     s6:Freed { symidx: temp_5_logic_28, tracked: true } |     s7:Freed { symidx: temp_6_arithop_28, tracked: true } |     s8:Freed { symidx: temp_7_cmp_28, tracked: true } |     s9:Freed { symidx: temp_8_logic_28, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,88(sp)
              #                    load from s0_main_0 in mem
    ld      s0,80(sp)
              #                    store to temp_18_logic_32 in mem offset legal
    sb      a0,2(sp)
              #                    release a0 with temp_18_logic_32
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_17_cmp_32, tracked: true } |     a2:Freed { symidx: temp_16_arithop_32, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: result_17, tracked: true } |     a5:Freed { symidx: temp_12_arithop_32, tracked: true } |     a6:Freed { symidx: temp_0_arithop_28, tracked: true } |     a7:Freed { symidx: temp_9_arithop_32, tracked: true } |     s10:Freed { symidx: temp_14_logic_32, tracked: true } |     s11:Freed { symidx: temp_11_cmp_32, tracked: true } |     s1:Freed { symidx: temp_1_arithop_28, tracked: true } |     s2:Freed { symidx: temp_10_arithop_32, tracked: true } |     s4:Freed { symidx: temp_3_arithop_28, tracked: true } |     s5:Freed { symidx: temp_4_cmp_28, tracked: true } |     s6:Freed { symidx: temp_5_logic_28, tracked: true } |     s7:Freed { symidx: temp_6_arithop_28, tracked: true } |     s8:Freed { symidx: temp_7_cmp_28, tracked: true } |     s9:Freed { symidx: temp_8_logic_28, tracked: true } | 
