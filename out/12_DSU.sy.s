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
              #                          Define quick_read_0 [] -> quick_read_ret_0 
    .globl quick_read
    .type quick_read,@function
quick_read:
              #                    mem layout:|ra_quick_read:8 at 64|s0_quick_read:8 at 56|temp_0_ret_of_getch:4 at 52|ch:4 at 48|x:4 at 44|f:4 at 40|temp_1_cmp:1 at 39|temp_2_cmp:1 at 38|temp_3_logic:1 at 37|temp_4_cmp:1 at 36|temp_5_ret_of_getch:4 at 32|temp_6_cmp:1 at 31|temp_7_cmp:1 at 30|temp_8_logic:1 at 29|none:1 at 28|temp_9_arithop:4 at 24|temp_10_arithop:4 at 20|temp_11_arithop:4 at 16|temp_12_ret_of_getch:4 at 12|temp_13_:1 at 11|none:3 at 8|temp_14_:4 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_quick_read_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_quick_read_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc i32 temp_0_ret_of_getch_18 
              #                          alloc i32 ch_18 
              #                          alloc i32 x_18 
              #                          alloc i32 f_18 
              #                          alloc i1 temp_1_cmp_21 
              #                          alloc i1 temp_2_cmp_21 
              #                          alloc i1 temp_3_logic_21 
              #                          alloc i1 temp_4_cmp_24 
              #                          alloc i32 temp_5_ret_of_getch_23 
              #                          alloc i1 temp_6_cmp_28 
              #                          alloc i1 temp_7_cmp_28 
              #                          alloc i1 temp_8_logic_28 
              #                          alloc i32 temp_9_arithop_30 
              #                          alloc i32 temp_10_arithop_30 
              #                          alloc i32 temp_11_arithop_30 
              #                          alloc i32 temp_12_ret_of_getch_30 
              #                          alloc i1 temp_13__416 
              #                          alloc i32 temp_14__33 
              #                    regtab 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_0_ret_of_getch_18:i32 
              #                          temp_0_ret_of_getch_18 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_0_ret_of_getch_18 in mem offset legal
    sw      a0,52(sp)
              #                          ch_18 = i32 temp_0_ret_of_getch_18 
              #                    occupy a0 with temp_0_ret_of_getch_18
              #                    occupy a1 with ch_18
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          x_18 = i32 0_0 
              #                    occupy a2 with x_18
    li      a2, 0
              #                    free a2
              #                          f_18 = i32 0_0 
              #                    occupy a3 with f_18
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_22 
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_18, tracked: true } |     a1:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: x_18, tracked: true } |     a3:Freed { symidx: f_18, tracked: true } | 
              #                          label while.head_22: 
.while.head_22:
              #                          new_var temp_1_cmp_21:i1 
              #                          temp_1_cmp_21 = icmp i32 Sgt ch_18, 57_0 
              #                    occupy a1 with ch_18
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a5 with temp_1_cmp_21
    slt     a5,a4,a1
              #                    free a1
              #                    free a4
              #                    free a5
              #                          new_var temp_2_cmp_21:i1 
              #                          temp_2_cmp_21 = icmp i32 Slt ch_18, 48_0 
              #                    occupy a1 with ch_18
              #                    occupy a6 with 48_0
    li      a6, 48
              #                    occupy a7 with temp_2_cmp_21
    slt     a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                          new_var temp_3_logic_21:i1 
              #                          temp_3_logic_21 = Or i1 temp_2_cmp_21, temp_1_cmp_21 
              #                    occupy a7 with temp_2_cmp_21
              #                    occupy a5 with temp_1_cmp_21
              #                    occupy a5 with temp_1_cmp_21
              #                    free a7
              #                    free a5
              #                    free a5
              #                          br i1 temp_3_logic_21, label while.body_22, label while.exit_22 
              #                    occupy s1 with temp_3_logic_21
              #                    load from temp_3_logic_21 in mem
    lb      s1,37(sp)
              #                    free s1
              #                    occupy s1 with temp_3_logic_21
    bnez    s1, .while.body_22
              #                    free s1
    j       .while.exit_22
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_18, tracked: true } |     a1:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: x_18, tracked: true } |     a3:Freed { symidx: f_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a7:Freed { symidx: temp_2_cmp_21, tracked: true } |     s1:Freed { symidx: temp_3_logic_21, tracked: true } | 
              #                          label while.body_22: 
.while.body_22:
              #                          new_var temp_4_cmp_24:i1 
              #                          temp_4_cmp_24 = icmp i32 Eq ch_18, 45_0 
              #                    occupy a1 with ch_18
              #                    occupy a4 with 45_0
    li      a4, 45
              #                    occupy a6 with temp_4_cmp_24
    xor     a6,a1,a4
    seqz    a6, a6
              #                    free a1
              #                    free a4
              #                    free a6
              #                          br i1 temp_4_cmp_24, label branch_true_25, label branch_false_25 
              #                    occupy a6 with temp_4_cmp_24
              #                    free a6
              #                    occupy a6 with temp_4_cmp_24
    bnez    a6, .branch_true_25
              #                    free a6
    j       .branch_false_25
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_18, tracked: true } |     a1:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: x_18, tracked: true } |     a3:Freed { symidx: f_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_4_cmp_24, tracked: true } |     a7:Freed { symidx: temp_2_cmp_21, tracked: true } |     s1:Freed { symidx: temp_3_logic_21, tracked: true } | 
              #                          label branch_true_25: 
.branch_true_25:
              #                          f_18 = i32 1_0 
              #                    occupy a3 with f_18
    li      a3, 1
              #                    free a3
              #                          jump label: branch_false_25 
    j       .branch_false_25
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_18, tracked: true } |     a1:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: x_18, tracked: true } |     a3:Freed { symidx: f_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_4_cmp_24, tracked: true } |     a7:Freed { symidx: temp_2_cmp_21, tracked: true } |     s1:Freed { symidx: temp_3_logic_21, tracked: true } | 
              #                          label branch_false_25: 
.branch_false_25:
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_18, tracked: true } |     a1:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: x_18, tracked: true } |     a3:Freed { symidx: f_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_4_cmp_24, tracked: true } |     a7:Freed { symidx: temp_2_cmp_21, tracked: true } |     s1:Freed { symidx: temp_3_logic_21, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_5_ret_of_getch_23:i32 
              #                          temp_5_ret_of_getch_23 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_3_logic_21 in mem offset legal
    sb      s1,37(sp)
              #                    release s1 with temp_3_logic_21
              #                    store to temp_0_ret_of_getch_18 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_18
              #                    store to ch_18 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_18
              #                    store to x_18 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_18
              #                    store to f_18 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with f_18
              #                    store to temp_1_cmp_21 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_1_cmp_21
              #                    store to temp_4_cmp_24 in mem offset legal
    sb      a6,36(sp)
              #                    release a6 with temp_4_cmp_24
              #                    store to temp_2_cmp_21 in mem offset legal
    sb      a7,38(sp)
              #                    release a7 with temp_2_cmp_21
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_5_ret_of_getch_23 in mem offset legal
    sw      a0,32(sp)
              #                          ch_18 = i32 temp_5_ret_of_getch_23 
              #                    occupy a0 with temp_5_ret_of_getch_23
              #                    occupy a1 with ch_18
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_22 
              #                    store to temp_5_ret_of_getch_23 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_5_ret_of_getch_23
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_18_0
              #                    load from temp_0_ret_of_getch_18 in mem


    lw      a0,52(sp)
              #                    occupy a2 with _anonymous_of_x_18_0
              #                    load from x_18 in mem


    lw      a2,44(sp)
              #                    occupy a3 with _anonymous_of_f_18_0
              #                    load from f_18 in mem


    lw      a3,40(sp)
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_18, tracked: true } |     a1:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: x_18, tracked: true } |     a3:Freed { symidx: f_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a7:Freed { symidx: temp_2_cmp_21, tracked: true } |     s1:Freed { symidx: temp_3_logic_21, tracked: true } | 
              #                          label while.exit_22: 
.while.exit_22:
              #                          new_var temp_6_cmp_28:i1 
              #                          temp_6_cmp_28 = icmp i32 Sle ch_18, 57_0 
              #                    occupy a1 with ch_18
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a6 with temp_6_cmp_28
    slt     a6,a4,a1
    xori    a6,a6,1
              #                    free a1
              #                    free a4
              #                    free a6
              #                          new_var temp_7_cmp_28:i1 
              #                          temp_7_cmp_28 = icmp i32 Sge ch_18, 48_0 
              #                    occupy a1 with ch_18
              #                    occupy s2 with 48_0
    li      s2, 48
              #                    occupy s3 with temp_7_cmp_28
    slt     s3,a1,s2
    xori    s3,s3,1
              #                    free a1
              #                    free s2
              #                    free s3
              #                          new_var temp_8_logic_28:i1 
              #                          temp_8_logic_28 = And i1 temp_7_cmp_28, temp_6_cmp_28 
              #                    occupy s3 with temp_7_cmp_28
              #                    occupy a6 with temp_6_cmp_28
              #                    occupy s4 with temp_8_logic_28
    and     s4,s3,a6
              #                    free s3
              #                    free a6
              #                    free s4
              #                          br i1 temp_8_logic_28, label while.body_29, label while.exit_29 
              #                    occupy s4 with temp_8_logic_28
              #                    free s4
              #                    occupy s4 with temp_8_logic_28
    bnez    s4, .while.body_29
              #                    free s4
    j       .while.exit_29
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_18, tracked: true } |     a1:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: x_18, tracked: true } |     a3:Freed { symidx: f_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_6_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_21, tracked: true } |     s1:Freed { symidx: temp_3_logic_21, tracked: true } |     s3:Freed { symidx: temp_7_cmp_28, tracked: true } |     s4:Freed { symidx: temp_8_logic_28, tracked: true } | 
              #                          label while.body_29: 
.while.body_29:
              #                          new_var temp_9_arithop_30:i32 
              #                          temp_9_arithop_30 = Mul i32 x_18, 10_0 
              #                    occupy a2 with x_18
              #                    occupy a4 with 10_0
    li      a4, 10
              #                    occupy s2 with temp_9_arithop_30
    mul     s2,a2,a4
              #                    free a2
              #                    free a4
              #                    free s2
              #                          new_var temp_10_arithop_30:i32 
              #                          temp_10_arithop_30 = Add i32 temp_9_arithop_30, ch_18 
              #                    occupy s2 with temp_9_arithop_30
              #                    occupy a1 with ch_18
              #                    occupy s5 with temp_10_arithop_30
    add     s5,s2,a1
              #                    free s2
              #                    free a1
              #                    free s5
              #                          new_var temp_11_arithop_30:i32 
              #                          temp_11_arithop_30 = Sub i32 temp_10_arithop_30, 48_0 
              #                    occupy s5 with temp_10_arithop_30
              #                    occupy s6 with 48_0
    li      s6, 48
              #                    occupy s7 with temp_11_arithop_30
              #                    regtab:    a0:Freed { symidx: temp_0_ret_of_getch_18, tracked: true } |     a1:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: x_18, tracked: true } |     a3:Freed { symidx: f_18, tracked: true } |     a4:Freed { symidx: 10_0, tracked: false } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_6_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_21, tracked: true } |     s1:Freed { symidx: temp_3_logic_21, tracked: true } |     s2:Freed { symidx: temp_9_arithop_30, tracked: true } |     s3:Freed { symidx: temp_7_cmp_28, tracked: true } |     s4:Freed { symidx: temp_8_logic_28, tracked: true } |     s5:Occupied { symidx: temp_10_arithop_30, tracked: true, occupy_count: 1 } |     s6:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     s7:Occupied { symidx: temp_11_arithop_30, tracked: true, occupy_count: 1 } | 


    sub     s7,s5,s6
              #                    free s5
              #                    free s6
              #                    free s7
              #                          x_18 = i32 temp_11_arithop_30 
              #                    occupy s7 with temp_11_arithop_30
              #                    occupy a2 with x_18
    mv      a2, s7
              #                    free s7
              #                    free a2
              #                          new_var temp_12_ret_of_getch_30:i32 
              #                          temp_12_ret_of_getch_30 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_3_logic_21 in mem offset legal
    sb      s1,37(sp)
              #                    release s1 with temp_3_logic_21
              #                    store to temp_9_arithop_30 in mem offset legal
    sw      s2,24(sp)
              #                    release s2 with temp_9_arithop_30
              #                    store to temp_7_cmp_28 in mem offset legal
    sb      s3,30(sp)
              #                    release s3 with temp_7_cmp_28
              #                    store to temp_8_logic_28 in mem offset legal
    sb      s4,29(sp)
              #                    release s4 with temp_8_logic_28
              #                    store to temp_10_arithop_30 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_10_arithop_30
              #                    store to temp_11_arithop_30 in mem offset legal
    sw      s7,16(sp)
              #                    release s7 with temp_11_arithop_30
              #                    store to temp_0_ret_of_getch_18 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_18
              #                    store to ch_18 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_18
              #                    store to x_18 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_18
              #                    store to f_18 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with f_18
              #                    store to temp_1_cmp_21 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_1_cmp_21
              #                    store to temp_6_cmp_28 in mem offset legal
    sb      a6,31(sp)
              #                    release a6 with temp_6_cmp_28
              #                    store to temp_2_cmp_21 in mem offset legal
    sb      a7,38(sp)
              #                    release a7 with temp_2_cmp_21
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_12_ret_of_getch_30 in mem offset legal
    sw      a0,12(sp)
              #                          ch_18 = i32 temp_12_ret_of_getch_30 
              #                    occupy a0 with temp_12_ret_of_getch_30
              #                    occupy a1 with ch_18
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.exit_22 
              #                    store to temp_12_ret_of_getch_30 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_12_ret_of_getch_30
              #                    occupy a7 with _anonymous_of_temp_2_cmp_21_0
              #                    load from temp_2_cmp_21 in mem
    lb      a7,38(sp)
              #                    occupy a5 with _anonymous_of_temp_1_cmp_21_0
              #                    load from temp_1_cmp_21 in mem
    lb      a5,39(sp)
              #                    occupy s1 with _anonymous_of_temp_3_logic_21_0
              #                    load from temp_3_logic_21 in mem
    lb      s1,37(sp)
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_18_0
              #                    load from temp_0_ret_of_getch_18 in mem


    lw      a0,52(sp)
              #                    occupy a2 with _anonymous_of_x_18_0
              #                    load from x_18 in mem


    lw      a2,44(sp)
              #                    occupy a3 with _anonymous_of_f_18_0
              #                    load from f_18 in mem


    lw      a3,40(sp)
    j       .while.exit_22
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_18, tracked: true } |     a1:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: x_18, tracked: true } |     a3:Freed { symidx: f_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_6_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_21, tracked: true } |     s1:Freed { symidx: temp_3_logic_21, tracked: true } |     s3:Freed { symidx: temp_7_cmp_28, tracked: true } |     s4:Freed { symidx: temp_8_logic_28, tracked: true } | 
              #                          label while.exit_29: 
.while.exit_29:
              #                          new_var temp_13__416:i1 
              #                          temp_13__416 = icmp i32 Ne f_18, 0_0 
              #                    occupy a3 with f_18
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy s2 with temp_13__416
    xor     s2,a3,a4
    snez    s2, s2
              #                    free a3
              #                    free a4
              #                    free s2
              #                          br i1 temp_13__416, label branch_true_34, label branch_false_34 
              #                    occupy s2 with temp_13__416
              #                    free s2
              #                    occupy s2 with temp_13__416
    bnez    s2, .branch_true_34
              #                    free s2
    j       .branch_false_34
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_18, tracked: true } |     a1:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: x_18, tracked: true } |     a3:Freed { symidx: f_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_6_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_21, tracked: true } |     s1:Freed { symidx: temp_3_logic_21, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_28, tracked: true } |     s4:Freed { symidx: temp_8_logic_28, tracked: true } | 
              #                          label branch_true_34: 
.branch_true_34:
              #                          new_var temp_14__33:i32 
              #                          temp_14__33 = Sub i32 0_0, x_18 
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a2 with x_18
              #                    occupy s5 with temp_14__33
              #                    regtab:    a0:Freed { symidx: temp_0_ret_of_getch_18, tracked: true } |     a1:Freed { symidx: ch_18, tracked: true } |     a2:Occupied { symidx: x_18, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: f_18, tracked: true } |     a4:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_6_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_21, tracked: true } |     s1:Freed { symidx: temp_3_logic_21, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_28, tracked: true } |     s4:Freed { symidx: temp_8_logic_28, tracked: true } |     s5:Occupied { symidx: temp_14__33, tracked: true, occupy_count: 1 } | 


    sub     s5,a4,a2
              #                    free a4
              #                    free a2
              #                    free s5
              #                          ret temp_14__33 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    store to temp_14__33 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_14__33
              #                    store to temp_0_ret_of_getch_18 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_18
              #                    occupy a0 with temp_14__33
              #                    load from temp_14__33 in mem


    lw      a0,4(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_18, tracked: true } |     a1:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: x_18, tracked: true } |     a3:Freed { symidx: f_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_6_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_21, tracked: true } |     s1:Freed { symidx: temp_3_logic_21, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_28, tracked: true } |     s4:Freed { symidx: temp_8_logic_28, tracked: true } | 
              #                          label branch_false_34: 
.branch_false_34:
              #                          ret x_18 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    store to x_18 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_18
              #                    store to temp_0_ret_of_getch_18 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_18
              #                    occupy a0 with x_18
              #                    load from x_18 in mem


    lw      a0,44(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ch_18, tracked: true } |     a3:Freed { symidx: f_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_6_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_21, tracked: true } |     s1:Freed { symidx: temp_3_logic_21, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_28, tracked: true } |     s4:Freed { symidx: temp_8_logic_28, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                    regtab     a1:Freed { symidx: ch_18, tracked: true } |     a3:Freed { symidx: f_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_6_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_21, tracked: true } |     s1:Freed { symidx: temp_3_logic_21, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_28, tracked: true } |     s4:Freed { symidx: temp_8_logic_28, tracked: true } | 
              #                    regtab 
              #                          Define init_0 [] -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 40|s0_init:8 at 32|i:4 at 28|temp_15_ptr2globl:4 at 24|temp_16_cmp:1 at 23|none:7 at 16|temp_17_index_ptr:8 at 8|temp_18_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_init_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 i_38 
              #                          alloc i32 temp_15_ptr2globl_40 
              #                          alloc i1 temp_16_cmp_40 
              #                          alloc ptr->i32 temp_17_index_ptr_42 
              #                          alloc i32 temp_18_arithop_42 
              #                    regtab 
              #                          label L7_0: 
.L7_0:
              #                          i_38 = i32 1_0 
              #                    occupy a0 with i_38
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_41 
    j       .while.head_41
              #                    regtab     a0:Freed { symidx: i_38, tracked: true } | 
              #                          label while.head_41: 
.while.head_41:
              #                          new_var temp_15_ptr2globl_40:i32 
              #                          temp_15_ptr2globl_40 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_15_ptr2globl_40
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_16_cmp_40:i1 
              #                          temp_16_cmp_40 = icmp i32 Sle i_38, temp_15_ptr2globl_40 
              #                    occupy a0 with i_38
              #                    occupy a2 with temp_15_ptr2globl_40
              #                    occupy a3 with temp_16_cmp_40
    slt     a3,a2,a0
    xori    a3,a3,1
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_16_cmp_40, label while.body_41, label while.exit_41 
              #                    occupy a3 with temp_16_cmp_40
              #                    free a3
              #                    occupy a3 with temp_16_cmp_40
    bnez    a3, .while.body_41
              #                    free a3
    j       .while.exit_41
              #                    regtab     a0:Freed { symidx: i_38, tracked: true } |     a2:Freed { symidx: temp_15_ptr2globl_40, tracked: true } |     a3:Freed { symidx: temp_16_cmp_40, tracked: true } | 
              #                          label while.body_41: 
.while.body_41:
              #                          new_var temp_17_index_ptr_42:ptr->i32 
              #                          temp_17_index_ptr_42 = getelementptr *fa_0:ptr->i32 [Some(i_38)] 
              #                    occupy a1 with temp_17_index_ptr_42
    li      a1, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with i_38
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
              #                    occupy a6 with *fa_0
              #                       load label fa as ptr to reg
    la      a6, fa
              #                    occupy reg a6 with *fa_0
    add     a1,a1,a6
              #                    free a6
              #                    free a1
              #                          store i_38:i32 temp_17_index_ptr_42:ptr->i32 
              #                    occupy a1 with temp_17_index_ptr_42
              #                    occupy a0 with i_38
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *fa_0:114 
              #                          *fa_0 = chi *fa_0:114 
              #                          new_var temp_18_arithop_42:i32 
              #                          temp_18_arithop_42 = Add i32 i_38, 1_0 
              #                    occupy a0 with i_38
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a7 with temp_18_arithop_42
    add     a7,a0,a4
              #                    free a0
              #                    free a4
              #                    free a7
              #                          i_38 = i32 temp_18_arithop_42 
              #                    occupy a7 with temp_18_arithop_42
              #                    occupy a0 with i_38
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: while.head_41 
              #                    store to temp_17_index_ptr_42 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_17_index_ptr_42
              #                    store to temp_18_arithop_42 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_18_arithop_42
              #                    store to temp_15_ptr2globl_40 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with temp_15_ptr2globl_40
              #                    store to temp_16_cmp_40 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_16_cmp_40
    j       .while.head_41
              #                    regtab     a0:Freed { symidx: i_38, tracked: true } |     a2:Freed { symidx: temp_15_ptr2globl_40, tracked: true } |     a3:Freed { symidx: temp_16_cmp_40, tracked: true } | 
              #                          label while.exit_41: 
.while.exit_41:
              #                    regtab 
              #                          Define find_0 [x_45] -> find_ret_0 
    .globl find
    .type find,@function
find:
              #                    mem layout:|ra_find:8 at 64|s0_find:8 at 56|x:4 at 52|none:4 at 48|temp_19_array_ptr:8 at 40|temp_20_array_ele:4 at 36|temp_21_cmp:1 at 35|none:3 at 32|temp_22_array_ptr:8 at 24|temp_23_array_ele:4 at 20|temp_24_ret_of_find:4 at 16|pa:4 at 12|none:4 at 8|temp_25_index_ptr:8 at 0
    addi    sp,sp,-72
              #                    store to ra_find_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_find_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc ptr->i32 temp_19_array_ptr_48 
              #                          alloc i32 temp_20_array_ele_48 
              #                          alloc i1 temp_21_cmp_48 
              #                          alloc ptr->i32 temp_22_array_ptr_51 
              #                          alloc i32 temp_23_array_ele_51 
              #                          alloc i32 temp_24_ret_of_find_51 
              #                          alloc i32 pa_51 
              #                          alloc ptr->i32 temp_25_index_ptr_51 
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_19_array_ptr_48:ptr->i32 
              #                          temp_19_array_ptr_48 = getelementptr *fa_0:ptr->i32 [Some(x_45)] 
              #                    occupy a1 with temp_19_array_ptr_48
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a0 with x_45
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a2,a0
              #                    free a2
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with *fa_0
              #                       load label fa as ptr to reg
    la      a4, fa
              #                    occupy reg a4 with *fa_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                          new_var temp_20_array_ele_48:i32 
              #                          temp_20_array_ele_48 = load temp_19_array_ptr_48:ptr->i32 
              #                    occupy a1 with temp_19_array_ptr_48
              #                    occupy a5 with temp_20_array_ele_48
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_21_cmp_48:i1 
              #                          temp_21_cmp_48 = icmp i32 Eq temp_20_array_ele_48, x_45 
              #                    occupy a5 with temp_20_array_ele_48
              #                    occupy a0 with x_45
              #                    occupy a6 with temp_21_cmp_48
    xor     a6,a5,a0
    seqz    a6, a6
              #                    free a5
              #                    free a0
              #                    free a6
              #                          br i1 temp_21_cmp_48, label branch_true_49, label branch_false_49 
              #                    occupy a6 with temp_21_cmp_48
              #                    free a6
              #                    occupy a6 with temp_21_cmp_48
    bnez    a6, .branch_true_49
              #                    free a6
    j       .branch_false_49
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: temp_19_array_ptr_48, tracked: true } |     a5:Freed { symidx: temp_20_array_ele_48, tracked: true } |     a6:Freed { symidx: temp_21_cmp_48, tracked: true } | 
              #                          label branch_true_49: 
.branch_true_49:
              #                          ret x_45 
              #                    load from ra_find_0 in mem
    ld      ra,64(sp)
              #                    load from s0_find_0 in mem
    ld      s0,56(sp)
              #                    store to x_45 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with x_45
              #                    occupy a0 with x_45
              #                    load from x_45 in mem


    lw      a0,52(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: temp_19_array_ptr_48, tracked: true } |     a5:Freed { symidx: temp_20_array_ele_48, tracked: true } |     a6:Freed { symidx: temp_21_cmp_48, tracked: true } | 
              #                          label branch_false_49: 
.branch_false_49:
              #                          new_var temp_22_array_ptr_51:ptr->i32 
              #                          temp_22_array_ptr_51 = getelementptr *fa_0:ptr->i32 [Some(x_45)] 
              #                    occupy a2 with temp_22_array_ptr_51
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a0 with x_45
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a7 with *fa_0
              #                       load label fa as ptr to reg
    la      a7, fa
              #                    occupy reg a7 with *fa_0
    add     a2,a2,a7
              #                    free a7
              #                    free a2
              #                          new_var temp_23_array_ele_51:i32 
              #                          temp_23_array_ele_51 = load temp_22_array_ptr_51:ptr->i32 
              #                    occupy a2 with temp_22_array_ptr_51
              #                    occupy s1 with temp_23_array_ele_51
    lw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                          new_var temp_24_ret_of_find_51:i32 
              #                          temp_24_ret_of_find_51 =  Call i32 find_0(temp_23_array_ele_51) 
              #                    saved register dumping to mem
              #                    store to temp_23_array_ele_51 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with temp_23_array_ele_51
              #                    store to x_45 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with x_45
              #                    store to temp_19_array_ptr_48 in mem offset legal
    sd      a1,40(sp)
              #                    release a1 with temp_19_array_ptr_48
              #                    store to temp_22_array_ptr_51 in mem offset legal
    sd      a2,24(sp)
              #                    release a2 with temp_22_array_ptr_51
              #                    store to temp_20_array_ele_48 in mem offset legal
    sw      a5,36(sp)
              #                    release a5 with temp_20_array_ele_48
              #                    store to temp_21_cmp_48 in mem offset legal
    sb      a6,35(sp)
              #                    release a6 with temp_21_cmp_48
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_23_array_ele_51_0
              #                    load from temp_23_array_ele_51 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    find
              #                    store to temp_24_ret_of_find_51 in mem offset legal
    sw      a0,16(sp)
              #                          pa_51 = i32 temp_24_ret_of_find_51 
              #                    occupy a0 with temp_24_ret_of_find_51
              #                    occupy a1 with pa_51
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_25_index_ptr_51:ptr->i32 
              #                          temp_25_index_ptr_51 = getelementptr *fa_0:ptr->i32 [Some(x_45)] 
              #                    occupy a2 with temp_25_index_ptr_51
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with x_45
              #                    load from x_45 in mem


    lw      a4,52(sp)
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with *fa_0
              #                       load label fa as ptr to reg
    la      a6, fa
              #                    occupy reg a6 with *fa_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          store pa_51:i32 temp_25_index_ptr_51:ptr->i32 
              #                    occupy a2 with temp_25_index_ptr_51
              #                    occupy a1 with pa_51
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                          mu *fa_0:149 
              #                          *fa_0 = chi *fa_0:149 
              #                          ret pa_51 
              #                    load from ra_find_0 in mem
    ld      ra,64(sp)
              #                    load from s0_find_0 in mem
    ld      s0,56(sp)
              #                    store to pa_51 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with pa_51
              #                    store to temp_24_ret_of_find_51 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_24_ret_of_find_51
              #                    occupy a0 with pa_51
              #                    load from pa_51 in mem


    lw      a0,12(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_25_index_ptr_51, tracked: true } |     a4:Freed { symidx: x_45, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                    regtab     a2:Freed { symidx: temp_25_index_ptr_51, tracked: true } |     a4:Freed { symidx: x_45, tracked: true } | 
              #                    regtab 
              #                          Define same_0 [x_55, y_55] -> same_ret_0 
    .globl same
    .type same,@function
same:
              #                    mem layout:|ra_same:8 at 32|s0_same:8 at 24|x:4 at 20|y:4 at 16|temp_26_ret_of_find:4 at 12|temp_27_ret_of_find:4 at 8|temp_28_cmp:1 at 7|none:7 at 0
    addi    sp,sp,-40
              #                    store to ra_same_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_same_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 temp_26_ret_of_find_58 
              #                          alloc i32 temp_27_ret_of_find_58 
              #                          alloc i1 temp_28_cmp_58 
              #                    regtab     a0:Freed { symidx: x_55, tracked: true } |     a1:Freed { symidx: y_55, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_26_ret_of_find_58:i32 
              #                          temp_26_ret_of_find_58 =  Call i32 find_0(y_55) 
              #                    saved register dumping to mem
              #                    store to x_55 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with x_55
              #                    store to y_55 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with y_55
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_y_55_0
              #                    load from y_55 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    find
              #                    store to temp_26_ret_of_find_58 in mem offset legal
    sw      a0,12(sp)
              #                          new_var temp_27_ret_of_find_58:i32 
              #                          temp_27_ret_of_find_58 =  Call i32 find_0(x_55) 
              #                    saved register dumping to mem
              #                    store to temp_26_ret_of_find_58 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_26_ret_of_find_58
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_55_0
              #                    load from x_55 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    find
              #                    store to temp_27_ret_of_find_58 in mem offset legal
    sw      a0,8(sp)
              #                          new_var temp_28_cmp_58:i1 
              #                          temp_28_cmp_58 = icmp i32 Eq temp_27_ret_of_find_58, temp_26_ret_of_find_58 
              #                    occupy a0 with temp_27_ret_of_find_58
              #                    occupy a1 with temp_26_ret_of_find_58
              #                    load from temp_26_ret_of_find_58 in mem


    lw      a1,12(sp)
              #                    occupy a2 with temp_28_cmp_58
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_28_cmp_58, label branch_true_59, label branch_false_59 
              #                    occupy a2 with temp_28_cmp_58
              #                    free a2
              #                    occupy a2 with temp_28_cmp_58
    bnez    a2, .branch_true_59
              #                    free a2
    j       .branch_false_59
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_find_58, tracked: true } |     a1:Freed { symidx: temp_26_ret_of_find_58, tracked: true } |     a2:Freed { symidx: temp_28_cmp_58, tracked: true } | 
              #                          label branch_true_59: 
.branch_true_59:
              #                          ret 1_0 
              #                    load from ra_same_0 in mem
    ld      ra,32(sp)
              #                    load from s0_same_0 in mem
    ld      s0,24(sp)
              #                    store to temp_27_ret_of_find_58 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_27_ret_of_find_58
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_find_58, tracked: true } |     a1:Freed { symidx: temp_26_ret_of_find_58, tracked: true } |     a2:Freed { symidx: temp_28_cmp_58, tracked: true } | 
              #                          label branch_false_59: 
.branch_false_59:
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_find_58, tracked: true } |     a1:Freed { symidx: temp_26_ret_of_find_58, tracked: true } |     a2:Freed { symidx: temp_28_cmp_58, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          ret 0_0 
              #                    load from ra_same_0 in mem
    ld      ra,32(sp)
              #                    load from s0_same_0 in mem
    ld      s0,24(sp)
              #                    store to temp_27_ret_of_find_58 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_27_ret_of_find_58
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_26_ret_of_find_58, tracked: true } |     a2:Freed { symidx: temp_28_cmp_58, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 104|s0_main:8 at 96|temp_29_ret_of_quick_read:4 at 92|temp_30_ret_of_quick_read:4 at 88|temp_31_ptr2globl:4 at 84|temp_32_:1 at 83|none:3 at 80|temp_33_ret_of_getch:4 at 76|ch:4 at 72|temp_34_cmp:1 at 71|temp_35_cmp:1 at 70|temp_36_logic:1 at 69|none:1 at 68|temp_37_ret_of_getch:4 at 64|temp_38_cmp:1 at 63|none:3 at 60|temp_39_ret_of_quick_read:4 at 56|x:4 at 52|temp_40_ret_of_quick_read:4 at 48|y:4 at 44|temp_41_ret_of_same:4 at 40|temp_42_ptr2globl:4 at 36|temp_43_arithop:4 at 32|temp_44_ret_of_quick_read:4 at 28|temp_45_ret_of_find:4 at 24|x:4 at 20|temp_46_ret_of_quick_read:4 at 16|temp_47_ret_of_find:4 at 12|y:4 at 8|temp_48_index_ptr:8 at 0
    addi    sp,sp,-112
              #                    store to ra_main_0 in mem offset legal
    sd      ra,104(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,96(sp)
    addi    s0,sp,112
              #                          alloc i32 temp_29_ret_of_quick_read_63 
              #                          alloc i32 temp_30_ret_of_quick_read_63 
              #                          alloc i32 temp_31_ptr2globl_67 
              #                          alloc i1 temp_32__1231 
              #                          alloc i32 temp_33_ret_of_getch_69 
              #                          alloc i32 ch_69 
              #                          alloc i1 temp_34_cmp_71 
              #                          alloc i1 temp_35_cmp_71 
              #                          alloc i1 temp_36_logic_71 
              #                          alloc i32 temp_37_ret_of_getch_73 
              #                          alloc i1 temp_38_cmp_75 
              #                          alloc i32 temp_39_ret_of_quick_read_77 
              #                          alloc i32 x_77 
              #                          alloc i32 temp_40_ret_of_quick_read_77 
              #                          alloc i32 y_77 
              #                          alloc i32 temp_41_ret_of_same_77 
              #                          alloc i32 temp_42_ptr2globl_69 
              #                          alloc i32 temp_43_arithop_69 
              #                          alloc i32 temp_44_ret_of_quick_read_81 
              #                          alloc i32 temp_45_ret_of_find_81 
              #                          alloc i32 x_81 
              #                          alloc i32 temp_46_ret_of_quick_read_81 
              #                          alloc i32 temp_47_ret_of_find_81 
              #                          alloc i32 y_81 
              #                          alloc ptr->i32 temp_48_index_ptr_81 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_29_ret_of_quick_read_63:i32 
              #                          temp_29_ret_of_quick_read_63 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_29_ret_of_quick_read_63 in mem offset legal
    sw      a0,92(sp)
              #                          store temp_29_ret_of_quick_read_63:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_29_ret_of_quick_read_63
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_30_ret_of_quick_read_63:i32 
              #                          temp_30_ret_of_quick_read_63 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_29_ret_of_quick_read_63 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_29_ret_of_quick_read_63
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_30_ret_of_quick_read_63 in mem offset legal
    sw      a0,88(sp)
              #                          store temp_30_ret_of_quick_read_63:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_30_ret_of_quick_read_63
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                           Call void init_0() 
              #                    saved register dumping to mem
              #                    store to temp_30_ret_of_quick_read_63 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_30_ret_of_quick_read_63
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    init
              #                          jump label: while.head_68 
    j       .while.head_68
              #                    regtab 
              #                          label while.head_68: 
.while.head_68:
              #                          new_var temp_31_ptr2globl_67:i32 
              #                          temp_31_ptr2globl_67 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_31_ptr2globl_67
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_32__1231:i1 
              #                          temp_32__1231 = icmp i32 Ne temp_31_ptr2globl_67, 0_0 
              #                    occupy a1 with temp_31_ptr2globl_67
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_32__1231
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_32__1231, label while.body_68, label while.exit_68 
              #                    occupy a3 with temp_32__1231
              #                    free a3
              #                    occupy a3 with temp_32__1231
    bnez    a3, .while.body_68
              #                    free a3
    j       .while.exit_68
              #                    regtab     a1:Freed { symidx: temp_31_ptr2globl_67, tracked: true } |     a3:Freed { symidx: temp_32__1231, tracked: true } | 
              #                          label while.body_68: 
.while.body_68:
              #                          new_var temp_33_ret_of_getch_69:i32 
              #                          temp_33_ret_of_getch_69 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_31_ptr2globl_67 in mem offset legal
    sw      a1,84(sp)
              #                    release a1 with temp_31_ptr2globl_67
              #                    store to temp_32__1231 in mem offset legal
    sb      a3,83(sp)
              #                    release a3 with temp_32__1231
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_33_ret_of_getch_69 in mem offset legal
    sw      a0,76(sp)
              #                          ch_69 = i32 temp_33_ret_of_getch_69 
              #                    occupy a0 with temp_33_ret_of_getch_69
              #                    occupy a1 with ch_69
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_72 
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: temp_33_ret_of_getch_69, tracked: true } |     a1:Freed { symidx: ch_69, tracked: true } | 
              #                          label while.head_72: 
.while.head_72:
              #                          new_var temp_34_cmp_71:i1 
              #                          temp_34_cmp_71 = icmp i32 Ne ch_69, 85_0 
              #                    occupy a1 with ch_69
              #                    occupy a2 with 85_0
    li      a2, 85
              #                    occupy a3 with temp_34_cmp_71
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_35_cmp_71:i1 
              #                          temp_35_cmp_71 = icmp i32 Ne ch_69, 81_0 
              #                    occupy a1 with ch_69
              #                    occupy a4 with 81_0
    li      a4, 81
              #                    occupy a5 with temp_35_cmp_71
    xor     a5,a1,a4
    snez    a5, a5
              #                    free a1
              #                    free a4
              #                    free a5
              #                          new_var temp_36_logic_71:i1 
              #                          temp_36_logic_71 = And i1 temp_35_cmp_71, temp_34_cmp_71 
              #                    occupy a5 with temp_35_cmp_71
              #                    occupy a3 with temp_34_cmp_71
              #                    occupy a6 with temp_36_logic_71
    and     a6,a5,a3
              #                    free a5
              #                    free a3
              #                    free a6
              #                          br i1 temp_36_logic_71, label while.body_72, label while.exit_72 
              #                    occupy a6 with temp_36_logic_71
              #                    free a6
              #                    occupy a6 with temp_36_logic_71
    bnez    a6, .while.body_72
              #                    free a6
    j       .while.exit_72
              #                    regtab     a0:Freed { symidx: temp_33_ret_of_getch_69, tracked: true } |     a1:Freed { symidx: ch_69, tracked: true } |     a3:Freed { symidx: temp_34_cmp_71, tracked: true } |     a5:Freed { symidx: temp_35_cmp_71, tracked: true } |     a6:Freed { symidx: temp_36_logic_71, tracked: true } | 
              #                          label while.body_72: 
.while.body_72:
              #                          new_var temp_37_ret_of_getch_73:i32 
              #                          temp_37_ret_of_getch_73 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_33_ret_of_getch_69 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_33_ret_of_getch_69
              #                    store to ch_69 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with ch_69
              #                    store to temp_34_cmp_71 in mem offset legal
    sb      a3,71(sp)
              #                    release a3 with temp_34_cmp_71
              #                    store to temp_35_cmp_71 in mem offset legal
    sb      a5,70(sp)
              #                    release a5 with temp_35_cmp_71
              #                    store to temp_36_logic_71 in mem offset legal
    sb      a6,69(sp)
              #                    release a6 with temp_36_logic_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_37_ret_of_getch_73 in mem offset legal
    sw      a0,64(sp)
              #                          ch_69 = i32 temp_37_ret_of_getch_73 
              #                    occupy a0 with temp_37_ret_of_getch_73
              #                    occupy a1 with ch_69
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_72 
              #                    store to temp_37_ret_of_getch_73 in mem offset legal
    sw      a0,64(sp)
              #                    release a0 with temp_37_ret_of_getch_73
              #                    occupy a0 with _anonymous_of_temp_33_ret_of_getch_69_0
              #                    load from temp_33_ret_of_getch_69 in mem


    lw      a0,76(sp)
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: temp_33_ret_of_getch_69, tracked: true } |     a1:Freed { symidx: ch_69, tracked: true } |     a3:Freed { symidx: temp_34_cmp_71, tracked: true } |     a5:Freed { symidx: temp_35_cmp_71, tracked: true } |     a6:Freed { symidx: temp_36_logic_71, tracked: true } | 
              #                          label while.exit_72: 
.while.exit_72:
              #                          new_var temp_38_cmp_75:i1 
              #                          temp_38_cmp_75 = icmp i32 Eq ch_69, 81_0 
              #                    occupy a1 with ch_69
              #                    occupy a2 with 81_0
    li      a2, 81
              #                    occupy a4 with temp_38_cmp_75
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                          br i1 temp_38_cmp_75, label branch_true_76, label branch_false_76 
              #                    occupy a4 with temp_38_cmp_75
              #                    free a4
              #                    occupy a4 with temp_38_cmp_75
    bnez    a4, .branch_true_76
              #                    free a4
    j       .branch_false_76
              #                    regtab     a0:Freed { symidx: temp_33_ret_of_getch_69, tracked: true } |     a1:Freed { symidx: ch_69, tracked: true } |     a3:Freed { symidx: temp_34_cmp_71, tracked: true } |     a4:Freed { symidx: temp_38_cmp_75, tracked: true } |     a5:Freed { symidx: temp_35_cmp_71, tracked: true } |     a6:Freed { symidx: temp_36_logic_71, tracked: true } | 
              #                          label branch_true_76: 
.branch_true_76:
              #                          new_var temp_39_ret_of_quick_read_77:i32 
              #                          temp_39_ret_of_quick_read_77 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_33_ret_of_getch_69 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_33_ret_of_getch_69
              #                    store to ch_69 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with ch_69
              #                    store to temp_34_cmp_71 in mem offset legal
    sb      a3,71(sp)
              #                    release a3 with temp_34_cmp_71
              #                    store to temp_38_cmp_75 in mem offset legal
    sb      a4,63(sp)
              #                    release a4 with temp_38_cmp_75
              #                    store to temp_35_cmp_71 in mem offset legal
    sb      a5,70(sp)
              #                    release a5 with temp_35_cmp_71
              #                    store to temp_36_logic_71 in mem offset legal
    sb      a6,69(sp)
              #                    release a6 with temp_36_logic_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_39_ret_of_quick_read_77 in mem offset legal
    sw      a0,56(sp)
              #                          x_77 = i32 temp_39_ret_of_quick_read_77 
              #                    occupy a0 with temp_39_ret_of_quick_read_77
              #                    occupy a1 with x_77
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_40_ret_of_quick_read_77:i32 
              #                          temp_40_ret_of_quick_read_77 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_39_ret_of_quick_read_77 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_39_ret_of_quick_read_77
              #                    store to x_77 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with x_77
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_40_ret_of_quick_read_77 in mem offset legal
    sw      a0,48(sp)
              #                          y_77 = i32 temp_40_ret_of_quick_read_77 
              #                    occupy a0 with temp_40_ret_of_quick_read_77
              #                    occupy a1 with y_77
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_41_ret_of_same_77:i32 
              #                          temp_41_ret_of_same_77 =  Call i32 same_0(x_77, y_77) 
              #                    saved register dumping to mem
              #                    store to temp_40_ret_of_quick_read_77 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_40_ret_of_quick_read_77
              #                    store to y_77 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with y_77
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_77_0
              #                    load from x_77 in mem


    lw      a0,52(sp)
              #                    occupy a1 with _anonymous_of_y_77_0
              #                    load from y_77 in mem


    lw      a1,44(sp)
              #                    arg load ended


    call    same
              #                    store to temp_41_ret_of_same_77 in mem offset legal
    sw      a0,40(sp)
              #                           Call void putint_0(temp_41_ret_of_same_77) 
              #                    saved register dumping to mem
              #                    store to temp_41_ret_of_same_77 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_41_ret_of_same_77
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_41_ret_of_same_77_0
              #                    load from temp_41_ret_of_same_77 in mem


    lw      a0,40(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_33_ret_of_getch_69, tracked: true } |     a1:Freed { symidx: ch_69, tracked: true } |     a3:Freed { symidx: temp_34_cmp_71, tracked: true } |     a4:Freed { symidx: temp_38_cmp_75, tracked: true } |     a5:Freed { symidx: temp_35_cmp_71, tracked: true } |     a6:Freed { symidx: temp_36_logic_71, tracked: true } | 
              #                          label branch_false_76: 
.branch_false_76:
              #                          new_var temp_44_ret_of_quick_read_81:i32 
              #                          temp_44_ret_of_quick_read_81 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_33_ret_of_getch_69 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_33_ret_of_getch_69
              #                    store to ch_69 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with ch_69
              #                    store to temp_34_cmp_71 in mem offset legal
    sb      a3,71(sp)
              #                    release a3 with temp_34_cmp_71
              #                    store to temp_38_cmp_75 in mem offset legal
    sb      a4,63(sp)
              #                    release a4 with temp_38_cmp_75
              #                    store to temp_35_cmp_71 in mem offset legal
    sb      a5,70(sp)
              #                    release a5 with temp_35_cmp_71
              #                    store to temp_36_logic_71 in mem offset legal
    sb      a6,69(sp)
              #                    release a6 with temp_36_logic_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_44_ret_of_quick_read_81 in mem offset legal
    sw      a0,28(sp)
              #                          new_var temp_45_ret_of_find_81:i32 
              #                          temp_45_ret_of_find_81 =  Call i32 find_0(temp_44_ret_of_quick_read_81) 
              #                    saved register dumping to mem
              #                    store to temp_44_ret_of_quick_read_81 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_44_ret_of_quick_read_81
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_44_ret_of_quick_read_81_0
              #                    load from temp_44_ret_of_quick_read_81 in mem


    lw      a0,28(sp)
              #                    arg load ended


    call    find
              #                    store to temp_45_ret_of_find_81 in mem offset legal
    sw      a0,24(sp)
              #                          x_81 = i32 temp_45_ret_of_find_81 
              #                    occupy a0 with temp_45_ret_of_find_81
              #                    occupy a1 with x_81
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_46_ret_of_quick_read_81:i32 
              #                          temp_46_ret_of_quick_read_81 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_45_ret_of_find_81 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_45_ret_of_find_81
              #                    store to x_81 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with x_81
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_46_ret_of_quick_read_81 in mem offset legal
    sw      a0,16(sp)
              #                          new_var temp_47_ret_of_find_81:i32 
              #                          temp_47_ret_of_find_81 =  Call i32 find_0(temp_46_ret_of_quick_read_81) 
              #                    saved register dumping to mem
              #                    store to temp_46_ret_of_quick_read_81 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_46_ret_of_quick_read_81
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_46_ret_of_quick_read_81_0
              #                    load from temp_46_ret_of_quick_read_81 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    find
              #                    store to temp_47_ret_of_find_81 in mem offset legal
    sw      a0,12(sp)
              #                          y_81 = i32 temp_47_ret_of_find_81 
              #                    occupy a0 with temp_47_ret_of_find_81
              #                    occupy a1 with y_81
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_48_index_ptr_81:ptr->i32 
              #                          temp_48_index_ptr_81 = getelementptr *fa_0:ptr->i32 [Some(x_81)] 
              #                    occupy a2 with temp_48_index_ptr_81
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with x_81
              #                    load from x_81 in mem


    lw      a4,20(sp)
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with *fa_0
              #                       load label fa as ptr to reg
    la      a6, fa
              #                    occupy reg a6 with *fa_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          store y_81:i32 temp_48_index_ptr_81:ptr->i32 
              #                    occupy a2 with temp_48_index_ptr_81
              #                    occupy a1 with y_81
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                          mu *fa_0:260 
              #                          *fa_0 = chi *fa_0:260 
              #                          jump label: L1_0 
              #                    store to x_81 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with x_81
              #                    store to y_81 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with y_81
              #                    store to temp_48_index_ptr_81 in mem offset legal
    sd      a2,0(sp)
              #                    release a2 with temp_48_index_ptr_81
              #                    store to temp_47_ret_of_find_81 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_47_ret_of_find_81
    j       .L1_0
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                    regtab 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_42_ptr2globl_69:i32 
              #                          temp_42_ptr2globl_69 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_42_ptr2globl_69
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_43_arithop_69:i32 
              #                          temp_43_arithop_69 = Sub i32 temp_42_ptr2globl_69, 1_0 
              #                    occupy a1 with temp_42_ptr2globl_69
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_43_arithop_69
              #                    regtab:    a0:Freed { symidx: *m_0, tracked: false } |     a1:Occupied { symidx: temp_42_ptr2globl_69, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_43_arithop_69, tracked: true, occupy_count: 1 } | 


    sub     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_43_arithop_69:i32 *m_0:ptr->i32 
              #                    occupy a4 with *m_0
              #                       load label m as ptr to reg
    la      a4, m
              #                    occupy reg a4 with *m_0
              #                    occupy a3 with temp_43_arithop_69
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          jump label: while.head_68 
              #                    store to temp_42_ptr2globl_69 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with temp_42_ptr2globl_69
              #                    store to temp_43_arithop_69 in mem offset legal
    sw      a3,32(sp)
              #                    release a3 with temp_43_arithop_69
    j       .while.head_68
              #                    regtab     a1:Freed { symidx: temp_31_ptr2globl_67, tracked: true } |     a3:Freed { symidx: temp_32__1231, tracked: true } | 
              #                          label while.exit_68: 
.while.exit_68:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,104(sp)
              #                    load from s0_main_0 in mem
    ld      s0,96(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,112
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_31_ptr2globl_67, tracked: true } |     a3:Freed { symidx: temp_32__1231, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl fa
              #                          global Array:i32:[Some(100005_0)] fa_0 
    .type fa,@object
fa:
    .zero 400020
    .align 4
    .globl m
              #                          global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
