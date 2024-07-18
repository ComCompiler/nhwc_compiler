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
              #                    regtab  released_gpr_count:19,released_fpr_count:24
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
              #                          alloc i32 sum_18 
              #                          alloc i32 c_18 
              #                          alloc i1 temp_0__93 
              #                          alloc i32 temp_1_ret_of_getch_22 
              #                          alloc i32 temp_2_arithop_22 
              #                          alloc i1 temp_3_cmp_24 
              #                          alloc i1 temp_4_cmp_24 
              #                          alloc i1 temp_5_logic_24 
              #                          alloc i1 temp_6__359 
              #                          alloc i32 temp_7_ret_of_getch_35 
              #                          alloc i32 temp_8_arithop_35 
              #                          alloc i1 temp_9_cmp_40 
              #                          alloc i1 temp_10_cmp_40 
              #                          alloc i1 temp_11_logic_40 
              #                          alloc i32 temp_12_arithop_42 
              #                          alloc i32 temp_13_arithop_42 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                          sum_18 = i32 0_0 
              #                    occupy a0 with sum_18
    li      a0, 0
              #                    free a0
              #                          new_var c_18:i32 
              #                          jump label: while.head_21 
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: sum_18, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label while.head_21: 
.while.head_21:
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
              #                          br i1 temp_0__93, label while.body_21, label while.exit_21 
              #                    occupy a3 with temp_0__93
              #                    free a3
              #                    occupy a3 with temp_0__93
    bnez    a3, .while.body_21
              #                    free a3
    j       .while.exit_21
              #                    regtab     a0:Freed { symidx: sum_18, tracked: true } |     a3:Freed { symidx: temp_0__93, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label while.body_21: 
.while.body_21:
              #                          new_var temp_1_ret_of_getch_22:i32 
              #                          temp_1_ret_of_getch_22 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with sum_18
              #                    store to sum_18 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with sum_18
              #                    occupy a3 with temp_0__93
              #                    store to temp_0__93 in mem offset legal
    sb      a3,39(sp)
              #                    release a3 with temp_0__93
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_1_ret_of_getch_22 in mem offset legal
    sw      a0,32(sp)
              #                          new_var temp_2_arithop_22:i32 
              #                          temp_2_arithop_22 = Sub i32 temp_1_ret_of_getch_22, 48_0 
              #                    occupy a0 with temp_1_ret_of_getch_22
              #                    occupy a1 with 48_0
    li      a1, 48
              #                    occupy a2 with temp_2_arithop_22
              #                    regtab:    a0:Occupied { symidx: temp_1_ret_of_getch_22, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_2_arithop_22, tracked: true, occupy_count: 1 } |  released_gpr_count:14,released_fpr_count:24


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          c_18 = i32 temp_2_arithop_22 
              #                    occupy a2 with temp_2_arithop_22
              #                    occupy a3 with c_18
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_1_ret_of_getch_22, tracked: true } |     a2:Freed { symidx: temp_2_arithop_22, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_3_cmp_24:i1 
              #                          temp_3_cmp_24 = icmp i32 Sgt c_18, 9_0 
              #                    occupy a3 with c_18
              #                    occupy a1 with 9_0
    li      a1, 9
              #                    occupy a4 with temp_3_cmp_24
    slt     a4,a1,a3
              #                    free a3
              #                    free a1
              #                    free a4
              #                          new_var temp_4_cmp_24:i1 
              #                          temp_4_cmp_24 = icmp i32 Slt c_18, 0_0 
              #                    occupy a3 with c_18
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_4_cmp_24
    slt     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          new_var temp_5_logic_24:i1 
              #                          temp_5_logic_24 = Or i1 temp_4_cmp_24, temp_3_cmp_24 
              #                    occupy a6 with temp_4_cmp_24
              #                    occupy a4 with temp_3_cmp_24
              #                    occupy a7 with temp_5_logic_24
    or      a7,a6,a4
              #                    free a6
              #                    free a4
              #                    free a7
              #                          br i1 temp_5_logic_24, label branch_true_25, label branch_false_25 
              #                    occupy a7 with temp_5_logic_24
              #                    free a7
              #                    occupy a7 with temp_5_logic_24
    bnez    a7, .branch_true_25
              #                    free a7
    j       .branch_false_25
              #                    regtab     a0:Freed { symidx: temp_1_ret_of_getch_22, tracked: true } |     a2:Freed { symidx: temp_2_arithop_22, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |     a4:Freed { symidx: temp_3_cmp_24, tracked: true } |     a6:Freed { symidx: temp_4_cmp_24, tracked: true } |     a7:Freed { symidx: temp_5_logic_24, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                          label branch_true_25: 
.branch_true_25:
              #                           Call void putint_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_1_ret_of_getch_22
              #                    store to temp_1_ret_of_getch_22 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_1_ret_of_getch_22
              #                    occupy a2 with temp_2_arithop_22
              #                    store to temp_2_arithop_22 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_2_arithop_22
              #                    occupy a3 with c_18
              #                    store to c_18 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with c_18
              #                    occupy a4 with temp_3_cmp_24
              #                    store to temp_3_cmp_24 in mem offset legal
    sb      a4,27(sp)
              #                    release a4 with temp_3_cmp_24
              #                    occupy a6 with temp_4_cmp_24
              #                    store to temp_4_cmp_24 in mem offset legal
    sb      a6,26(sp)
              #                    release a6 with temp_4_cmp_24
              #                    occupy a7 with temp_5_logic_24
              #                    store to temp_5_logic_24 in mem offset legal
    sb      a7,25(sp)
              #                    release a7 with temp_5_logic_24
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putint
              #                          jump label: while.head_21 
              #                    occupy a0 with _anonymous_of_sum_18_0
              #                    load from sum_18 in mem


    lw      a0,44(sp)
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: temp_1_ret_of_getch_22, tracked: true } |     a2:Freed { symidx: temp_2_arithop_22, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |     a4:Freed { symidx: temp_3_cmp_24, tracked: true } |     a6:Freed { symidx: temp_4_cmp_24, tracked: true } |     a7:Freed { symidx: temp_5_logic_24, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                          label branch_false_25: 
.branch_false_25:
              #                           Call void putint_0(13_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_1_ret_of_getch_22
              #                    store to temp_1_ret_of_getch_22 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_1_ret_of_getch_22
              #                    occupy a2 with temp_2_arithop_22
              #                    store to temp_2_arithop_22 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_2_arithop_22
              #                    occupy a3 with c_18
              #                    store to c_18 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with c_18
              #                    occupy a4 with temp_3_cmp_24
              #                    store to temp_3_cmp_24 in mem offset legal
    sb      a4,27(sp)
              #                    release a4 with temp_3_cmp_24
              #                    occupy a6 with temp_4_cmp_24
              #                    store to temp_4_cmp_24 in mem offset legal
    sb      a6,26(sp)
              #                    release a6 with temp_4_cmp_24
              #                    occupy a7 with temp_5_logic_24
              #                    store to temp_5_logic_24 in mem offset legal
    sb      a7,25(sp)
              #                    release a7 with temp_5_logic_24
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_13_0_0
    li      a0, 13
              #                    arg load ended


    call    putint
              #                          jump label: while.exit_21 
              #                    occupy a3 with _anonymous_of_temp_0__93_0
              #                    load from temp_0__93 in mem
    lb      a3,39(sp)
              #                    occupy a0 with _anonymous_of_sum_18_0
              #                    load from sum_18 in mem


    lw      a0,44(sp)
    j       .while.exit_21
              #                    regtab     a0:Freed { symidx: sum_18, tracked: true } |     a3:Freed { symidx: temp_0__93, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label while.exit_21: 
.while.exit_21:
              #                          sum_18 = i32 c_18 
              #                    occupy a1 with c_18
              #                    load from c_18 in mem


    lw      a1,40(sp)
              #                    occupy a0 with sum_18
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          jump label: while.head_34 
    j       .while.head_34
              #                    regtab     a0:Freed { symidx: sum_18, tracked: true } |     a1:Freed { symidx: c_18, tracked: true } |     a3:Freed { symidx: temp_0__93, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label while.head_34: 
.while.head_34:
              #                          new_var temp_6__359:i1 
              #                          temp_6__359 = icmp i32 Ne 1_0, 0_0 
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_6__359
    xor     a5,a2,a4
    snez    a5, a5
              #                    free a2
              #                    free a4
              #                    free a5
              #                          br i1 temp_6__359, label while.body_34, label while.exit_34 
              #                    occupy a5 with temp_6__359
              #                    free a5
              #                    occupy a5 with temp_6__359
    bnez    a5, .while.body_34
              #                    free a5
    j       .while.exit_34
              #                    regtab     a0:Freed { symidx: sum_18, tracked: true } |     a1:Freed { symidx: c_18, tracked: true } |     a3:Freed { symidx: temp_0__93, tracked: true } |     a5:Freed { symidx: temp_6__359, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label while.body_34: 
.while.body_34:
              #                          new_var temp_7_ret_of_getch_35:i32 
              #                          temp_7_ret_of_getch_35 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with sum_18
              #                    store to sum_18 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with sum_18
              #                    occupy a1 with c_18
              #                    store to c_18 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with c_18
              #                    occupy a3 with temp_0__93
              #                    store to temp_0__93 in mem offset legal
    sb      a3,39(sp)
              #                    release a3 with temp_0__93
              #                    occupy a5 with temp_6__359
              #                    store to temp_6__359 in mem offset legal
    sb      a5,24(sp)
              #                    release a5 with temp_6__359
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_7_ret_of_getch_35 in mem offset legal
    sw      a0,20(sp)
              #                          new_var temp_8_arithop_35:i32 
              #                          temp_8_arithop_35 = Sub i32 temp_7_ret_of_getch_35, 48_0 
              #                    occupy a0 with temp_7_ret_of_getch_35
              #                    occupy a1 with 48_0
    li      a1, 48
              #                    occupy a2 with temp_8_arithop_35
              #                    regtab:    a0:Occupied { symidx: temp_7_ret_of_getch_35, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_8_arithop_35, tracked: true, occupy_count: 1 } |  released_gpr_count:12,released_fpr_count:24


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          c_18 = i32 temp_8_arithop_35 
              #                    occupy a2 with temp_8_arithop_35
              #                    occupy a3 with c_18
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                           Call void ok_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_7_ret_of_getch_35
              #                    store to temp_7_ret_of_getch_35 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_7_ret_of_getch_35
              #                    occupy a2 with temp_8_arithop_35
              #                    store to temp_8_arithop_35 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_8_arithop_35
              #                    occupy a3 with c_18
              #                    store to c_18 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with c_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ok
              #                           Call void putint_0(c_18) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_c_18_0
              #                    load from c_18 in mem


    lw      a0,40(sp)
              #                    arg load ended


    call    putint
              #                           Call void ok_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ok
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_9_cmp_40:i1 
              #                          temp_9_cmp_40 = icmp i32 Sle c_18, 9_0 
              #                    occupy a0 with c_18
              #                    load from c_18 in mem


    lw      a0,40(sp)
              #                    occupy a1 with 9_0
    li      a1, 9
              #                    occupy a2 with temp_9_cmp_40
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_10_cmp_40:i1 
              #                          temp_10_cmp_40 = icmp i32 Sge c_18, 0_0 
              #                    occupy a0 with c_18
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_10_cmp_40
    slt     a4,a0,a3
    xori    a4,a4,1
              #                    free a0
              #                    free a3
              #                    free a4
              #                          new_var temp_11_logic_40:i1 
              #                          temp_11_logic_40 = And i1 temp_10_cmp_40, temp_9_cmp_40 
              #                    occupy a4 with temp_10_cmp_40
              #                    occupy a2 with temp_9_cmp_40
              #                    occupy a5 with temp_11_logic_40
    and     a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                          br i1 temp_11_logic_40, label branch_true_41, label branch_false_41 
              #                    occupy a5 with temp_11_logic_40
              #                    free a5
              #                    occupy a5 with temp_11_logic_40
    bnez    a5, .branch_true_41
              #                    free a5
    j       .branch_false_41
              #                    regtab     a0:Freed { symidx: c_18, tracked: true } |     a2:Freed { symidx: temp_9_cmp_40, tracked: true } |     a4:Freed { symidx: temp_10_cmp_40, tracked: true } |     a5:Freed { symidx: temp_11_logic_40, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                          label branch_true_41: 
.branch_true_41:
              #                           Call void putch_0(101_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with c_18
              #                    store to c_18 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with c_18
              #                    occupy a2 with temp_9_cmp_40
              #                    store to temp_9_cmp_40 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_9_cmp_40
              #                    occupy a4 with temp_10_cmp_40
              #                    store to temp_10_cmp_40 in mem offset legal
    sb      a4,14(sp)
              #                    release a4 with temp_10_cmp_40
              #                    occupy a5 with temp_11_logic_40
              #                    store to temp_11_logic_40 in mem offset legal
    sb      a5,13(sp)
              #                    release a5 with temp_11_logic_40
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_101_0_0
    li      a0, 101
              #                    arg load ended


    call    putch
              #                           Call void putint_0(c_18) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_c_18_0
              #                    load from c_18 in mem


    lw      a0,40(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_12_arithop_42:i32 
              #                          temp_12_arithop_42 = Mul i32 sum_18, 10_0 
              #                    occupy a0 with sum_18
              #                    load from sum_18 in mem


    lw      a0,44(sp)
              #                    occupy a1 with 10_0
    li      a1, 10
              #                    occupy a2 with temp_12_arithop_42
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_13_arithop_42:i32 
              #                          temp_13_arithop_42 = Add i32 temp_12_arithop_42, c_18 
              #                    occupy a2 with temp_12_arithop_42
              #                    occupy a3 with c_18
              #                    load from c_18 in mem


    lw      a3,40(sp)
              #                    occupy a4 with temp_13_arithop_42
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          sum_18 = i32 temp_13_arithop_42 
              #                    occupy a4 with temp_13_arithop_42
              #                    occupy a0 with sum_18
    mv      a0, a4
              #                    free a4
              #                    free a0
              #                    regtab     a0:Freed { symidx: c_18, tracked: true } |     a2:Freed { symidx: temp_9_cmp_40, tracked: true } |     a4:Freed { symidx: temp_10_cmp_40, tracked: true } |     a5:Freed { symidx: temp_11_logic_40, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                          label branch_false_41: 
.branch_false_41:
              #                           Call void putint_0(25_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with c_18
              #                    store to c_18 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with c_18
              #                    occupy a2 with temp_9_cmp_40
              #                    store to temp_9_cmp_40 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_9_cmp_40
              #                    occupy a4 with temp_10_cmp_40
              #                    store to temp_10_cmp_40 in mem offset legal
    sb      a4,14(sp)
              #                    release a4 with temp_10_cmp_40
              #                    occupy a5 with temp_11_logic_40
              #                    store to temp_11_logic_40 in mem offset legal
    sb      a5,13(sp)
              #                    release a5 with temp_11_logic_40
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_25_0_0
    li      a0, 25
              #                    arg load ended


    call    putint
              #                          jump label: while.exit_34 
              #                    occupy a3 with _anonymous_of_temp_0__93_0
              #                    load from temp_0__93 in mem
    lb      a3,39(sp)
              #                    occupy a5 with _anonymous_of_temp_6__359_0
              #                    load from temp_6__359 in mem
    lb      a5,24(sp)
              #                    occupy a0 with _anonymous_of_sum_18_0
              #                    load from sum_18 in mem


    lw      a0,44(sp)
              #                    occupy a1 with _anonymous_of_c_18_0
              #                    load from c_18 in mem


    lw      a1,40(sp)
    j       .while.exit_34
              #                    regtab     a0:Freed { symidx: sum_18, tracked: true } |     a1:Freed { symidx: c_18, tracked: true } |     a3:Freed { symidx: temp_0__93, tracked: true } |     a5:Freed { symidx: temp_6__359, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label while.exit_34: 
.while.exit_34:
              #                           Call void putch_0(100_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with sum_18
              #                    store to sum_18 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with sum_18
              #                    occupy a1 with c_18
              #                    store to c_18 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with c_18
              #                    occupy a3 with temp_0__93
              #                    store to temp_0__93 in mem offset legal
    sb      a3,39(sp)
              #                    release a3 with temp_0__93
              #                    occupy a5 with temp_6__359
              #                    store to temp_6__359 in mem offset legal
    sb      a5,24(sp)
              #                    release a5 with temp_6__359
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_100_0_0
    li      a0, 100
              #                    arg load ended


    call    putch
              #                           Call void putint_0(sum_18) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_sum_18_0
              #                    load from sum_18 in mem


    lw      a0,44(sp)
              #                    arg load ended


    call    putint
              #                          ret sum_18 
              #                    load from ra_my_getint_0 in mem
    ld      ra,56(sp)
              #                    load from s0_my_getint_0 in mem
    ld      s0,48(sp)
              #                    occupy a0 with sum_18
              #                    load from sum_18 in mem


    lw      a0,44(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          Define my_putint_0 [a_52] -> my_putint_ret_0 
    .globl my_putint
    .type my_putint,@function
my_putint:
              #                    mem layout:|ra_my_putint:8 at 136|s0_my_putint:8 at 128|a:4 at 124|b:64 at 60|i:4 at 56|temp_14_cmp:1 at 55|none:7 at 48|temp_15_index_ptr:8 at 40|temp_16_arithop:4 at 36|temp_17_arithop:4 at 32|temp_18_arithop:4 at 28|temp_19_arithop:4 at 24|temp_20_cmp:1 at 23|none:3 at 20|temp_21_arithop:4 at 16|temp_22_array_ptr:8 at 8|temp_23_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-144
              #                    store to ra_my_putint_0 in mem offset legal
    sd      ra,136(sp)
              #                    store to s0_my_putint_0 in mem offset legal
    sd      s0,128(sp)
    addi    s0,sp,144
              #                          alloc Array:i32:[Some(16_0)] b_54 
              #                          alloc i32 i_54 
              #                          alloc i1 temp_14_cmp_56 
              #                          alloc ptr->i32 temp_15_index_ptr_58 
              #                          alloc i32 temp_16_arithop_58 
              #                          alloc i32 temp_17_arithop_58 
              #                          alloc i32 temp_18_arithop_58 
              #                          alloc i32 temp_19_arithop_58 
              #                          alloc i1 temp_20_cmp_62 
              #                          alloc i32 temp_21_arithop_64 
              #                          alloc ptr->i32 temp_22_array_ptr_64 
              #                          alloc i32 temp_23_array_ele_64 
              #                    regtab     a0:Freed { symidx: a_52, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                          new_var b_54:Array:i32:[Some(16_0)] 
              #                          i_54 = i32 0_0 
              #                    occupy a1 with i_54
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_57 
    j       .while.head_57
              #                    regtab     a0:Freed { symidx: a_52, tracked: true } |     a1:Freed { symidx: i_54, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label while.head_57: 
.while.head_57:
              #                          new_var temp_14_cmp_56:i1 
              #                          temp_14_cmp_56 = icmp i32 Sgt a_52, 0_0 
              #                    occupy a0 with a_52
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_14_cmp_56
    slt     a3,a2,a0
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_14_cmp_56, label while.body_57, label while.exit_57 
              #                    occupy a3 with temp_14_cmp_56
              #                    free a3
              #                    occupy a3 with temp_14_cmp_56
    bnez    a3, .while.body_57
              #                    free a3
    j       .while.exit_57
              #                    regtab     a0:Freed { symidx: a_52, tracked: true } |     a1:Freed { symidx: i_54, tracked: true } |     a3:Freed { symidx: temp_14_cmp_56, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label while.body_57: 
.while.body_57:
              #                          new_var temp_15_index_ptr_58:ptr->i32 
              #                          temp_15_index_ptr_58 = getelementptr b_54:Array:i32:[Some(16_0)] [Some(i_54)] 
              #                    occupy a2 with temp_15_index_ptr_58
    li      a2, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a1 with i_54
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a1
              #                    free a4
              #                    free a1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,60
              #                    free a2
              #                          new_var temp_16_arithop_58:i32 
              #                          temp_16_arithop_58 = Mod i32 a_52, 10_0 
              #                    occupy a0 with a_52
              #                    occupy a6 with 10_0
    li      a6, 10
              #                    occupy a7 with temp_16_arithop_58
    rem     a7,a0,a6
              #                    free a0
              #                    free a6
              #                    free a7
              #                          new_var temp_17_arithop_58:i32 
              #                          temp_17_arithop_58 = Add i32 temp_16_arithop_58, 48_0 
              #                    occupy a7 with temp_16_arithop_58
              #                    occupy s1 with 48_0
    li      s1, 48
              #                    occupy s2 with temp_17_arithop_58
    add     s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                          store temp_17_arithop_58:i32 temp_15_index_ptr_58:ptr->i32 
              #                    occupy a2 with temp_15_index_ptr_58
              #                    occupy s2 with temp_17_arithop_58
    sw      s2,0(a2)
              #                    free s2
              #                    free a2
              #                          mu b_54:124 
              #                          b_54 = chi b_54:124 
              #                          new_var temp_18_arithop_58:i32 
              #                          temp_18_arithop_58 = Div i32 a_52, 10_0 
              #                    occupy a0 with a_52
              #                    found literal reg Some(a6) already exist with 10_0
              #                    occupy a6 with 10_0
              #                    occupy s3 with temp_18_arithop_58
    div     s3,a0,a6
              #                    free a0
              #                    free a6
              #                    free s3
              #                          a_52 = i32 temp_18_arithop_58 
              #                    occupy s3 with temp_18_arithop_58
              #                    occupy a0 with a_52
    mv      a0, s3
              #                    free s3
              #                    free a0
              #                          new_var temp_19_arithop_58:i32 
              #                          temp_19_arithop_58 = Add i32 i_54, 1_0 
              #                    occupy a1 with i_54
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s4 with temp_19_arithop_58
    add     s4,a1,a4
              #                    free a1
              #                    free a4
              #                    free s4
              #                          i_54 = i32 temp_19_arithop_58 
              #                    occupy s4 with temp_19_arithop_58
              #                    occupy a1 with i_54
    mv      a1, s4
              #                    free s4
              #                    free a1
              #                          jump label: while.head_57 
              #                    occupy s4 with temp_19_arithop_58
              #                    store to temp_19_arithop_58 in mem offset legal
    sw      s4,24(sp)
              #                    release s4 with temp_19_arithop_58
              #                    occupy a2 with temp_15_index_ptr_58
              #                    store to temp_15_index_ptr_58 in mem offset legal
    sd      a2,40(sp)
              #                    release a2 with temp_15_index_ptr_58
              #                    occupy s3 with temp_18_arithop_58
              #                    store to temp_18_arithop_58 in mem offset legal
    sw      s3,28(sp)
              #                    release s3 with temp_18_arithop_58
              #                    occupy a3 with temp_14_cmp_56
              #                    store to temp_14_cmp_56 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_14_cmp_56
              #                    occupy s2 with temp_17_arithop_58
              #                    store to temp_17_arithop_58 in mem offset legal
    sw      s2,32(sp)
              #                    release s2 with temp_17_arithop_58
              #                    occupy a7 with temp_16_arithop_58
              #                    store to temp_16_arithop_58 in mem offset legal
    sw      a7,36(sp)
              #                    release a7 with temp_16_arithop_58
    j       .while.head_57
              #                    regtab     a0:Freed { symidx: a_52, tracked: true } |     a1:Freed { symidx: i_54, tracked: true } |     a3:Freed { symidx: temp_14_cmp_56, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label while.exit_57: 
.while.exit_57:
              #                          new_var temp_20_cmp_62:i1 
              #                          temp_20_cmp_62 = icmp i32 Sgt i_54, 0_0 
              #                    occupy a1 with i_54
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a4 with temp_20_cmp_62
    slt     a4,a2,a1
              #                    free a1
              #                    free a2
              #                    free a4
              #                          br i1 temp_20_cmp_62, label while.body_63, label while.exit_63 
              #                    occupy a4 with temp_20_cmp_62
              #                    free a4
              #                    occupy a4 with temp_20_cmp_62
    bnez    a4, .while.body_63
              #                    free a4
    j       .while.exit_63
              #                    regtab     a0:Freed { symidx: a_52, tracked: true } |     a1:Freed { symidx: i_54, tracked: true } |     a3:Freed { symidx: temp_14_cmp_56, tracked: true } |     a4:Freed { symidx: temp_20_cmp_62, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label while.body_63: 
.while.body_63:
              #                          new_var temp_21_arithop_64:i32 
              #                          temp_21_arithop_64 = Sub i32 i_54, 1_0 
              #                    occupy a1 with i_54
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a5 with temp_21_arithop_64
              #                    regtab:    a0:Freed { symidx: a_52, tracked: true } |     a1:Occupied { symidx: i_54, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Freed { symidx: temp_14_cmp_56, tracked: true } |     a4:Freed { symidx: temp_20_cmp_62, tracked: true } |     a5:Occupied { symidx: temp_21_arithop_64, tracked: true, occupy_count: 1 } |  released_gpr_count:11,released_fpr_count:24


    sub     a5,a1,a2
              #                    free a1
              #                    free a2
              #                    free a5
              #                          i_54 = i32 temp_21_arithop_64 
              #                    occupy a5 with temp_21_arithop_64
              #                    occupy a1 with i_54
    mv      a1, a5
              #                    free a5
              #                    free a1
              #                          new_var temp_22_array_ptr_64:ptr->i32 
              #                          temp_22_array_ptr_64 = getelementptr b_54:Array:i32:[Some(16_0)] [Some(i_54)] 
              #                    occupy a6 with temp_22_array_ptr_64
    li      a6, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a1 with i_54
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a2,a1
              #                    free a2
              #                    free a1
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,60
              #                    free a6
              #                          new_var temp_23_array_ele_64:i32 
              #                          temp_23_array_ele_64 = load temp_22_array_ptr_64:ptr->i32 
              #                    occupy a6 with temp_22_array_ptr_64
              #                    occupy s1 with temp_23_array_ele_64
    lw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                           Call void putch_0(temp_23_array_ele_64) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_23_array_ele_64
              #                    store to temp_23_array_ele_64 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_23_array_ele_64
              #                    occupy a0 with a_52
              #                    store to a_52 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with a_52
              #                    occupy a1 with i_54
              #                    store to i_54 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with i_54
              #                    occupy a3 with temp_14_cmp_56
              #                    store to temp_14_cmp_56 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_14_cmp_56
              #                    occupy a4 with temp_20_cmp_62
              #                    store to temp_20_cmp_62 in mem offset legal
    sb      a4,23(sp)
              #                    release a4 with temp_20_cmp_62
              #                    occupy a5 with temp_21_arithop_64
              #                    store to temp_21_arithop_64 in mem offset legal
    sw      a5,16(sp)
              #                    release a5 with temp_21_arithop_64
              #                    occupy a6 with temp_22_array_ptr_64
              #                    store to temp_22_array_ptr_64 in mem offset legal
    sd      a6,8(sp)
              #                    release a6 with temp_22_array_ptr_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_23_array_ele_64_0
              #                    load from temp_23_array_ele_64 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putch
              #                          jump label: while.exit_57 
              #                    occupy a1 with _anonymous_of_i_54_0
              #                    load from i_54 in mem


    lw      a1,56(sp)
              #                    occupy a0 with _anonymous_of_a_52_0
              #                    load from a_52 in mem


    lw      a0,124(sp)
              #                    occupy a3 with _anonymous_of_temp_14_cmp_56_0
              #                    load from temp_14_cmp_56 in mem
    lb      a3,55(sp)
    j       .while.exit_57
              #                    regtab     a0:Freed { symidx: a_52, tracked: true } |     a1:Freed { symidx: i_54, tracked: true } |     a3:Freed { symidx: temp_14_cmp_56, tracked: true } |     a4:Freed { symidx: temp_20_cmp_62, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label while.exit_63: 
.while.exit_63:
              #                          ret 
              #                    load from ra_my_putint_0 in mem
    ld      ra,136(sp)
              #                    load from s0_my_putint_0 in mem
    ld      s0,128(sp)
    addi    sp,sp,144
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|temp_24_ret_of_my_getint:4 at 20|n:4 at 16|temp_25_cmp:1 at 15|none:3 at 12|temp_26_ret_of_my_getint:4 at 8|m:4 at 4|temp_27_arithop:4 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 temp_24_ret_of_my_getint_68 
              #                          alloc i32 n_68 
              #                          alloc i1 temp_25_cmp_73 
              #                          alloc i32 temp_26_ret_of_my_getint_75 
              #                          alloc i32 m_75 
              #                          alloc i32 temp_27_arithop_75 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_24_ret_of_my_getint_68:i32 
              #                          temp_24_ret_of_my_getint_68 =  Call i32 my_getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    my_getint
              #                    store to temp_24_ret_of_my_getint_68 in mem offset legal
    sw      a0,20(sp)
              #                          n_68 = i32 temp_24_ret_of_my_getint_68 
              #                    occupy a0 with temp_24_ret_of_my_getint_68
              #                    occupy a1 with n_68
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_24_ret_of_my_getint_68
              #                    store to temp_24_ret_of_my_getint_68 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_24_ret_of_my_getint_68
              #                    occupy a1 with n_68
              #                    store to n_68 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with n_68
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                           Call void putint_0(n_68) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_n_68_0
              #                    load from n_68 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(97_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_97_0_0
    li      a0, 97
              #                    arg load ended


    call    putch
              #                          jump label: while.head_74 
    j       .while.head_74
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label while.head_74: 
.while.head_74:
              #                          new_var temp_25_cmp_73:i1 
              #                          temp_25_cmp_73 = icmp i32 Sgt n_68, 0_0 
              #                    occupy a0 with n_68
              #                    load from n_68 in mem


    lw      a0,16(sp)
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_25_cmp_73
    slt     a2,a1,a0
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_25_cmp_73, label while.body_74, label while.exit_74 
              #                    occupy a2 with temp_25_cmp_73
              #                    free a2
              #                    occupy a2 with temp_25_cmp_73
    bnez    a2, .while.body_74
              #                    free a2
    j       .while.exit_74
              #                    regtab     a0:Freed { symidx: n_68, tracked: true } |     a2:Freed { symidx: temp_25_cmp_73, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label while.body_74: 
.while.body_74:
              #                           Call void putch_0(98_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with n_68
              #                    store to n_68 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with n_68
              #                    occupy a2 with temp_25_cmp_73
              #                    store to temp_25_cmp_73 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_25_cmp_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_98_0_0
    li      a0, 98
              #                    arg load ended


    call    putch
              #                          new_var temp_26_ret_of_my_getint_75:i32 
              #                          temp_26_ret_of_my_getint_75 =  Call i32 my_getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    my_getint
              #                    store to temp_26_ret_of_my_getint_75 in mem offset legal
    sw      a0,8(sp)
              #                          m_75 = i32 temp_26_ret_of_my_getint_75 
              #                    occupy a0 with temp_26_ret_of_my_getint_75
              #                    occupy a1 with m_75
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_26_ret_of_my_getint_75
              #                    store to temp_26_ret_of_my_getint_75 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_26_ret_of_my_getint_75
              #                    occupy a1 with m_75
              #                    store to m_75 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with m_75
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                           Call void putint_0(m_75) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_m_75_0
              #                    load from m_75 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_27_arithop_75:i32 
              #                          temp_27_arithop_75 = Sub i32 n_68, 1_0 
              #                    occupy a0 with n_68
              #                    load from n_68 in mem


    lw      a0,16(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_27_arithop_75
              #                    regtab:    a0:Occupied { symidx: n_68, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_27_arithop_75, tracked: true, occupy_count: 1 } |  released_gpr_count:15,released_fpr_count:24


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          n_68 = i32 temp_27_arithop_75 
              #                    occupy a2 with temp_27_arithop_75
              #                    occupy a0 with n_68
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_74 
              #                    occupy a0 with n_68
              #                    store to n_68 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with n_68
              #                    occupy a2 with temp_27_arithop_75
              #                    store to temp_27_arithop_75 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_27_arithop_75
    j       .while.head_74
              #                    regtab     a0:Freed { symidx: n_68, tracked: true } |     a2:Freed { symidx: temp_25_cmp_73, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label while.exit_74: 
.while.exit_74:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with n_68
              #                    store to n_68 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with n_68
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          Define ok_0 [] -> ok_ret_0 
    .globl ok
    .type ok,@function
ok:
              #                    mem layout:|ra_ok:8 at 8|s0_ok:8 at 0
    addi    sp,sp,-16
              #                    store to ra_ok_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_ok_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                           Call void putch_0(111_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_111_0_0
    li      a0, 111
              #                    arg load ended


    call    putch
              #                           Call void putch_0(107_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_107_0_0
    li      a0, 107
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
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          ret 
              #                    load from ra_ok_0 in mem
    ld      ra,8(sp)
              #                    load from s0_ok_0 in mem
    ld      s0,0(sp)
    addi    sp,sp,16
    ret
.section ___var
    .data
    .align 4
    .globl ascii_0
              #                          global i32 ascii_0_0 
    .type ascii_0,@object
ascii_0:
    .word 48

