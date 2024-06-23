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
              #                          Define my_getint_0 [] -> my_getint_ret_0 
    .globl my_getint
    .type my_getint,@function
my_getint:
              #                    mem layout:|ra_my_getint:8 at 56|s0_my_getint:8 at 48|sum:4 at 44|c:4 at 40|temp_0_:1 at 39|none:3 at 36|temp_1_ret_of_getch:4 at 32|temp_2_arithop:4 at 28|temp_3_cmp:1 at 27|temp_4_cmp:1 at 26|temp_5_logic:1 at 25|temp_6_:1 at 24|temp_7_ret_of_getch:4 at 20|temp_8_arithop:4 at 16|temp_9_cmp:1 at 15|temp_10_cmp:1 at 14|temp_11_logic:1 at 13|none:1 at 12|temp_12_arithop:4 at 8|temp_13_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-64
              #                    store to ra_my_getint_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_my_getint_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                          alloc i32 sum_17 
              #                          alloc i32 c_17 
              #                          alloc i1 temp_0__93 
              #                          alloc i32 temp_1_ret_of_getch_21 
              #                          alloc i32 temp_2_arithop_21 
              #                          alloc i1 temp_3_cmp_23 
              #                          alloc i1 temp_4_cmp_23 
              #                          alloc i1 temp_5_logic_23 
              #                          alloc i1 temp_6__273 
              #                          alloc i32 temp_7_ret_of_getch_32 
              #                          alloc i32 temp_8_arithop_32 
              #                          alloc i1 temp_9_cmp_34 
              #                          alloc i1 temp_10_cmp_34 
              #                          alloc i1 temp_11_logic_34 
              #                          alloc i32 temp_12_arithop_36 
              #                          alloc i32 temp_13_arithop_36 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          sum_17 = i32 0_0 
              #                    occupy a0 with sum_17
    li      a0, 0
              #                    free a0
              #                          new_var c_17:i32 
              #                          jump label: while.head_20 
    j       .while.head_20
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } | 
              #                          label while.head_20: 
.while.head_20:
              #                          new_var temp_0__93:i1 
              #                          temp_0__93 = icmp i32 Ne 1_0, 0_0 
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_0__93
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_0__93, label while.body_20, label while.exit_20 
              #                    occupy a3 with temp_0__93
              #                    free a3
              #                    occupy a3 with temp_0__93
    bnez    a3, .while.body_20
              #                    free a3
    j       .while.exit_20
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a3:Freed { symidx: temp_0__93, tracked: true } | 
              #                          label while.body_20: 
.while.body_20:
              #                          new_var temp_1_ret_of_getch_21:i32 
              #                          temp_1_ret_of_getch_21 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to sum_17 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with sum_17
              #                    store to temp_0__93 in mem offset legal
    sb      a3,39(sp)
              #                    release a3 with temp_0__93
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_1_ret_of_getch_21 in mem offset legal
    sw      a0,32(sp)
              #                          new_var temp_2_arithop_21:i32 
              #                          temp_2_arithop_21 = Sub i32 temp_1_ret_of_getch_21, 48_0 
              #                    occupy a0 with temp_1_ret_of_getch_21
              #                    occupy a1 with 48_0
    li      a1, 48
              #                    occupy a2 with temp_2_arithop_21
              #                    regtab:    a0:Occupied { symidx: temp_1_ret_of_getch_21, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_2_arithop_21, tracked: true, occupy_count: 1 } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          c_17 = i32 temp_2_arithop_21 
              #                    occupy a2 with temp_2_arithop_21
              #                    occupy a3 with c_17
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_1_ret_of_getch_21, tracked: true } |     a2:Freed { symidx: temp_2_arithop_21, tracked: true } |     a3:Freed { symidx: c_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_3_cmp_23:i1 
              #                          temp_3_cmp_23 = icmp i32 Sgt c_17, 9_0 
              #                    occupy a3 with c_17
              #                    occupy a1 with 9_0
    li      a1, 9
              #                    occupy a4 with temp_3_cmp_23
    slt     a4,a1,a3
              #                    free a3
              #                    free a1
              #                    free a4
              #                          new_var temp_4_cmp_23:i1 
              #                          temp_4_cmp_23 = icmp i32 Slt c_17, 0_0 
              #                    occupy a3 with c_17
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_4_cmp_23
    slt     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          new_var temp_5_logic_23:i1 
              #                          temp_5_logic_23 = Or i1 temp_4_cmp_23, temp_3_cmp_23 
              #                    occupy a6 with temp_4_cmp_23
              #                    occupy a4 with temp_3_cmp_23
              #                    occupy a4 with temp_3_cmp_23
              #                    free a6
              #                    free a4
              #                    free a4
              #                          br i1 temp_5_logic_23, label branch_true_24, label branch_false_24 
              #                    occupy a7 with temp_5_logic_23
              #                    load from temp_5_logic_23 in mem
    lb      a7,25(sp)
              #                    free a7
              #                    occupy a7 with temp_5_logic_23
    bnez    a7, .branch_true_24
              #                    free a7
    j       .branch_false_24
              #                    regtab     a0:Freed { symidx: temp_1_ret_of_getch_21, tracked: true } |     a2:Freed { symidx: temp_2_arithop_21, tracked: true } |     a3:Freed { symidx: c_17, tracked: true } |     a4:Freed { symidx: temp_3_cmp_23, tracked: true } |     a6:Freed { symidx: temp_4_cmp_23, tracked: true } |     a7:Freed { symidx: temp_5_logic_23, tracked: true } | 
              #                          label branch_true_24: 
.branch_true_24:
              #                          jump label: while.exit_20 
              #                    store to temp_2_arithop_21 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_2_arithop_21
              #                    store to temp_5_logic_23 in mem offset legal
    sb      a7,25(sp)
              #                    release a7 with temp_5_logic_23
              #                    store to temp_4_cmp_23 in mem offset legal
    sb      a6,26(sp)
              #                    release a6 with temp_4_cmp_23
              #                    store to temp_1_ret_of_getch_21 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_1_ret_of_getch_21
              #                    store to c_17 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with c_17
              #                    store to temp_3_cmp_23 in mem offset legal
    sb      a4,27(sp)
              #                    release a4 with temp_3_cmp_23
              #                    occupy a0 with _anonymous_of_sum_17_0
              #                    load from sum_17 in mem


    lw      a0,44(sp)
              #                    occupy a3 with _anonymous_of_temp_0__93_0
              #                    load from temp_0__93 in mem
    lb      a3,39(sp)
    j       .while.exit_20
              #                    regtab     a0:Freed { symidx: temp_1_ret_of_getch_21, tracked: true } |     a2:Freed { symidx: temp_2_arithop_21, tracked: true } |     a3:Freed { symidx: c_17, tracked: true } |     a4:Freed { symidx: temp_3_cmp_23, tracked: true } |     a6:Freed { symidx: temp_4_cmp_23, tracked: true } |     a7:Freed { symidx: temp_5_logic_23, tracked: true } | 
              #                          label branch_false_24: 
.branch_false_24:
              #                          jump label: while.exit_20 
              #                    store to temp_2_arithop_21 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_2_arithop_21
              #                    store to temp_5_logic_23 in mem offset legal
    sb      a7,25(sp)
              #                    release a7 with temp_5_logic_23
              #                    store to temp_4_cmp_23 in mem offset legal
    sb      a6,26(sp)
              #                    release a6 with temp_4_cmp_23
              #                    store to temp_1_ret_of_getch_21 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_1_ret_of_getch_21
              #                    store to c_17 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with c_17
              #                    store to temp_3_cmp_23 in mem offset legal
    sb      a4,27(sp)
              #                    release a4 with temp_3_cmp_23
              #                    occupy a0 with _anonymous_of_sum_17_0
              #                    load from sum_17 in mem


    lw      a0,44(sp)
              #                    occupy a3 with _anonymous_of_temp_0__93_0
              #                    load from temp_0__93 in mem
    lb      a3,39(sp)
    j       .while.exit_20
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a3:Freed { symidx: temp_0__93, tracked: true } | 
              #                          label while.exit_20: 
.while.exit_20:
              #                          sum_17 = i32 c_17 
              #                    occupy a1 with c_17
              #                    load from c_17 in mem


    lw      a1,40(sp)
              #                    occupy a0 with sum_17
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          jump label: while.head_31 
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: temp_0__93, tracked: true } | 
              #                          label while.head_31: 
.while.head_31:
              #                          new_var temp_6__273:i1 
              #                          temp_6__273 = icmp i32 Ne 1_0, 0_0 
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_6__273
    xor     a5,a2,a4
    snez    a5, a5
              #                    free a2
              #                    free a4
              #                    free a5
              #                          br i1 temp_6__273, label while.body_31, label while.exit_31 
              #                    occupy a5 with temp_6__273
              #                    free a5
              #                    occupy a5 with temp_6__273
    bnez    a5, .while.body_31
              #                    free a5
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: temp_0__93, tracked: true } |     a5:Freed { symidx: temp_6__273, tracked: true } | 
              #                          label while.body_31: 
.while.body_31:
              #                          new_var temp_7_ret_of_getch_32:i32 
              #                          temp_7_ret_of_getch_32 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to sum_17 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with sum_17
              #                    store to c_17 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with c_17
              #                    store to temp_0__93 in mem offset legal
    sb      a3,39(sp)
              #                    release a3 with temp_0__93
              #                    store to temp_6__273 in mem offset legal
    sb      a5,24(sp)
              #                    release a5 with temp_6__273
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_7_ret_of_getch_32 in mem offset legal
    sw      a0,20(sp)
              #                          new_var temp_8_arithop_32:i32 
              #                          temp_8_arithop_32 = Sub i32 temp_7_ret_of_getch_32, 48_0 
              #                    occupy a0 with temp_7_ret_of_getch_32
              #                    occupy a1 with 48_0
    li      a1, 48
              #                    occupy a2 with temp_8_arithop_32
              #                    regtab:    a0:Occupied { symidx: temp_7_ret_of_getch_32, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_8_arithop_32, tracked: true, occupy_count: 1 } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          c_17 = i32 temp_8_arithop_32 
              #                    occupy a2 with temp_8_arithop_32
              #                    occupy a3 with c_17
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_7_ret_of_getch_32, tracked: true } |     a2:Freed { symidx: temp_8_arithop_32, tracked: true } |     a3:Freed { symidx: c_17, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_9_cmp_34:i1 
              #                          temp_9_cmp_34 = icmp i32 Sle c_17, 9_0 
              #                    occupy a3 with c_17
              #                    occupy a1 with 9_0
    li      a1, 9
              #                    occupy a4 with temp_9_cmp_34
    slt     a4,a1,a3
    xori    a4,a4,1
              #                    free a3
              #                    free a1
              #                    free a4
              #                          new_var temp_10_cmp_34:i1 
              #                          temp_10_cmp_34 = icmp i32 Sge c_17, 0_0 
              #                    occupy a3 with c_17
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_10_cmp_34
    slt     a6,a3,a5
    xori    a6,a6,1
              #                    free a3
              #                    free a5
              #                    free a6
              #                          new_var temp_11_logic_34:i1 
              #                          temp_11_logic_34 = And i1 temp_10_cmp_34, temp_9_cmp_34 
              #                    occupy a6 with temp_10_cmp_34
              #                    occupy a4 with temp_9_cmp_34
              #                    occupy a7 with temp_11_logic_34
    and     a7,a6,a4
              #                    free a6
              #                    free a4
              #                    free a7
              #                          br i1 temp_11_logic_34, label branch_true_35, label branch_false_35 
              #                    occupy a7 with temp_11_logic_34
              #                    free a7
              #                    occupy a7 with temp_11_logic_34
    bnez    a7, .branch_true_35
              #                    free a7
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: temp_7_ret_of_getch_32, tracked: true } |     a2:Freed { symidx: temp_8_arithop_32, tracked: true } |     a3:Freed { symidx: c_17, tracked: true } |     a4:Freed { symidx: temp_9_cmp_34, tracked: true } |     a6:Freed { symidx: temp_10_cmp_34, tracked: true } |     a7:Freed { symidx: temp_11_logic_34, tracked: true } | 
              #                          label branch_true_35: 
.branch_true_35:
              #                          new_var temp_12_arithop_36:i32 
              #                          temp_12_arithop_36 = Mul i32 sum_17, 10_0 
              #                    occupy a1 with sum_17
              #                    load from sum_17 in mem


    lw      a1,44(sp)
              #                    occupy a5 with 10_0
    li      a5, 10
              #                    occupy s1 with temp_12_arithop_36
    mul     s1,a1,a5
              #                    free a1
              #                    free a5
              #                    free s1
              #                          new_var temp_13_arithop_36:i32 
              #                          temp_13_arithop_36 = Add i32 temp_12_arithop_36, c_17 
              #                    occupy s1 with temp_12_arithop_36
              #                    occupy a3 with c_17
              #                    occupy s2 with temp_13_arithop_36
    add     s2,s1,a3
              #                    free s1
              #                    free a3
              #                    free s2
              #                          sum_17 = i32 temp_13_arithop_36 
              #                    occupy s2 with temp_13_arithop_36
              #                    occupy a1 with sum_17
    mv      a1, s2
              #                    free s2
              #                    free a1
              #                    regtab     a0:Freed { symidx: temp_7_ret_of_getch_32, tracked: true } |     a2:Freed { symidx: temp_8_arithop_32, tracked: true } |     a3:Freed { symidx: c_17, tracked: true } |     a4:Freed { symidx: temp_9_cmp_34, tracked: true } |     a6:Freed { symidx: temp_10_cmp_34, tracked: true } |     a7:Freed { symidx: temp_11_logic_34, tracked: true } | 
              #                          label branch_false_35: 
.branch_false_35:
              #                          jump label: while.exit_31 
              #                    store to temp_8_arithop_32 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_8_arithop_32
              #                    store to temp_11_logic_34 in mem offset legal
    sb      a7,13(sp)
              #                    release a7 with temp_11_logic_34
              #                    store to temp_10_cmp_34 in mem offset legal
    sb      a6,14(sp)
              #                    release a6 with temp_10_cmp_34
              #                    store to temp_7_ret_of_getch_32 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_7_ret_of_getch_32
              #                    store to c_17 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with c_17
              #                    store to temp_9_cmp_34 in mem offset legal
    sb      a4,15(sp)
              #                    release a4 with temp_9_cmp_34
              #                    occupy a0 with _anonymous_of_sum_17_0
              #                    load from sum_17 in mem


    lw      a0,44(sp)
              #                    occupy a1 with _anonymous_of_c_17_0
              #                    load from c_17 in mem


    lw      a1,40(sp)
              #                    occupy a3 with _anonymous_of_temp_0__93_0
              #                    load from temp_0__93 in mem
    lb      a3,39(sp)
              #                    occupy a5 with _anonymous_of_temp_6__273_0
              #                    load from temp_6__273 in mem
    lb      a5,24(sp)
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: temp_0__93, tracked: true } |     a5:Freed { symidx: temp_6__273, tracked: true } | 
              #                          label while.exit_31: 
.while.exit_31:
              #                          ret sum_17 
              #                    load from ra_my_getint_0 in mem
    ld      ra,56(sp)
              #                    load from s0_my_getint_0 in mem
    ld      s0,48(sp)
              #                    store to sum_17 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with sum_17
              #                    occupy a0 with sum_17
              #                    load from sum_17 in mem


    lw      a0,44(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: temp_0__93, tracked: true } |     a5:Freed { symidx: temp_6__273, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl ascii_0
              #                          global i32 ascii_0_0 
    .type ascii_0,@object
ascii_0:
    .word 48
