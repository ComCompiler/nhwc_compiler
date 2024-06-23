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
              #                          alloc i32 temp_0_ret_of_getch_20 
              #                          alloc i32 ch_20 
              #                          alloc i32 x_20 
              #                          alloc i32 f_20 
              #                          alloc i1 temp_1_cmp_23 
              #                          alloc i1 temp_2_cmp_23 
              #                          alloc i1 temp_3_logic_23 
              #                          alloc i1 temp_4_cmp_26 
              #                          alloc i32 temp_5_ret_of_getch_25 
              #                          alloc i1 temp_6_cmp_30 
              #                          alloc i1 temp_7_cmp_30 
              #                          alloc i1 temp_8_logic_30 
              #                          alloc i32 temp_9_arithop_32 
              #                          alloc i32 temp_10_arithop_32 
              #                          alloc i32 temp_11_arithop_32 
              #                          alloc i32 temp_12_ret_of_getch_32 
              #                          alloc i1 temp_13__416 
              #                          alloc i32 temp_14__35 
              #                    regtab 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_0_ret_of_getch_20:i32 
              #                          temp_0_ret_of_getch_20 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_0_ret_of_getch_20 in mem offset legal
    sw      a0,52(sp)
              #                          ch_20 = i32 temp_0_ret_of_getch_20 
              #                    occupy a0 with temp_0_ret_of_getch_20
              #                    occupy a1 with ch_20
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          x_20 = i32 0_0 
              #                    occupy a2 with x_20
    li      a2, 0
              #                    free a2
              #                          f_20 = i32 0_0 
              #                    occupy a3 with f_20
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_24 
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_20, tracked: true } |     a1:Freed { symidx: ch_20, tracked: true } |     a2:Freed { symidx: x_20, tracked: true } |     a3:Freed { symidx: f_20, tracked: true } | 
              #                          label while.head_24: 
.while.head_24:
              #                          new_var temp_1_cmp_23:i1 
              #                          temp_1_cmp_23 = icmp i32 Sgt ch_20, 57_0 
              #                    occupy a1 with ch_20
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a5 with temp_1_cmp_23
    slt     a5,a4,a1
              #                    free a1
              #                    free a4
              #                    free a5
              #                          new_var temp_2_cmp_23:i1 
              #                          temp_2_cmp_23 = icmp i32 Slt ch_20, 48_0 
              #                    occupy a1 with ch_20
              #                    occupy a6 with 48_0
    li      a6, 48
              #                    occupy a7 with temp_2_cmp_23
    slt     a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                          new_var temp_3_logic_23:i1 
              #                          temp_3_logic_23 = Or i1 temp_2_cmp_23, temp_1_cmp_23 
              #                    occupy a7 with temp_2_cmp_23
              #                    occupy a5 with temp_1_cmp_23
              #                    occupy a5 with temp_1_cmp_23
              #                    free a7
              #                    free a5
              #                    free a5
              #                          br i1 temp_3_logic_23, label while.body_24, label while.exit_24 
              #                    occupy s1 with temp_3_logic_23
              #                    load from temp_3_logic_23 in mem
    lb      s1,37(sp)
              #                    free s1
              #                    occupy s1 with temp_3_logic_23
    bnez    s1, .while.body_24
              #                    free s1
    j       .while.exit_24
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_20, tracked: true } |     a1:Freed { symidx: ch_20, tracked: true } |     a2:Freed { symidx: x_20, tracked: true } |     a3:Freed { symidx: f_20, tracked: true } |     a5:Freed { symidx: temp_1_cmp_23, tracked: true } |     a7:Freed { symidx: temp_2_cmp_23, tracked: true } |     s1:Freed { symidx: temp_3_logic_23, tracked: true } | 
              #                          label while.body_24: 
.while.body_24:
              #                          new_var temp_4_cmp_26:i1 
              #                          temp_4_cmp_26 = icmp i32 Eq ch_20, 45_0 
              #                    occupy a1 with ch_20
              #                    occupy a4 with 45_0
    li      a4, 45
              #                    occupy a6 with temp_4_cmp_26
    xor     a6,a1,a4
    seqz    a6, a6
              #                    free a1
              #                    free a4
              #                    free a6
              #                          br i1 temp_4_cmp_26, label branch_true_27, label branch_false_27 
              #                    occupy a6 with temp_4_cmp_26
              #                    free a6
              #                    occupy a6 with temp_4_cmp_26
    bnez    a6, .branch_true_27
              #                    free a6
    j       .branch_false_27
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_20, tracked: true } |     a1:Freed { symidx: ch_20, tracked: true } |     a2:Freed { symidx: x_20, tracked: true } |     a3:Freed { symidx: f_20, tracked: true } |     a5:Freed { symidx: temp_1_cmp_23, tracked: true } |     a6:Freed { symidx: temp_4_cmp_26, tracked: true } |     a7:Freed { symidx: temp_2_cmp_23, tracked: true } |     s1:Freed { symidx: temp_3_logic_23, tracked: true } | 
              #                          label branch_true_27: 
.branch_true_27:
              #                          f_20 = i32 1_0 
              #                    occupy a3 with f_20
    li      a3, 1
              #                    free a3
              #                          jump label: branch_false_27 
    j       .branch_false_27
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_20, tracked: true } |     a1:Freed { symidx: ch_20, tracked: true } |     a2:Freed { symidx: x_20, tracked: true } |     a3:Freed { symidx: f_20, tracked: true } |     a5:Freed { symidx: temp_1_cmp_23, tracked: true } |     a6:Freed { symidx: temp_4_cmp_26, tracked: true } |     a7:Freed { symidx: temp_2_cmp_23, tracked: true } |     s1:Freed { symidx: temp_3_logic_23, tracked: true } | 
              #                          label branch_false_27: 
.branch_false_27:
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_20, tracked: true } |     a1:Freed { symidx: ch_20, tracked: true } |     a2:Freed { symidx: x_20, tracked: true } |     a3:Freed { symidx: f_20, tracked: true } |     a5:Freed { symidx: temp_1_cmp_23, tracked: true } |     a6:Freed { symidx: temp_4_cmp_26, tracked: true } |     a7:Freed { symidx: temp_2_cmp_23, tracked: true } |     s1:Freed { symidx: temp_3_logic_23, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_5_ret_of_getch_25:i32 
              #                          temp_5_ret_of_getch_25 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_3_logic_23 in mem offset legal
    sb      s1,37(sp)
              #                    release s1 with temp_3_logic_23
              #                    store to temp_0_ret_of_getch_20 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_20
              #                    store to ch_20 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_20
              #                    store to x_20 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_20
              #                    store to f_20 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with f_20
              #                    store to temp_1_cmp_23 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_1_cmp_23
              #                    store to temp_4_cmp_26 in mem offset legal
    sb      a6,36(sp)
              #                    release a6 with temp_4_cmp_26
              #                    store to temp_2_cmp_23 in mem offset legal
    sb      a7,38(sp)
              #                    release a7 with temp_2_cmp_23
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_5_ret_of_getch_25 in mem offset legal
    sw      a0,32(sp)
              #                          ch_20 = i32 temp_5_ret_of_getch_25 
              #                    occupy a0 with temp_5_ret_of_getch_25
              #                    occupy a1 with ch_20
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_24 
              #                    store to temp_5_ret_of_getch_25 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_5_ret_of_getch_25
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_20_0
              #                    load from temp_0_ret_of_getch_20 in mem


    lw      a0,52(sp)
              #                    occupy a2 with _anonymous_of_x_20_0
              #                    load from x_20 in mem


    lw      a2,44(sp)
              #                    occupy a3 with _anonymous_of_f_20_0
              #                    load from f_20 in mem


    lw      a3,40(sp)
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_20, tracked: true } |     a1:Freed { symidx: ch_20, tracked: true } |     a2:Freed { symidx: x_20, tracked: true } |     a3:Freed { symidx: f_20, tracked: true } |     a5:Freed { symidx: temp_1_cmp_23, tracked: true } |     a7:Freed { symidx: temp_2_cmp_23, tracked: true } |     s1:Freed { symidx: temp_3_logic_23, tracked: true } | 
              #                          label while.exit_24: 
.while.exit_24:
              #                          new_var temp_6_cmp_30:i1 
              #                          temp_6_cmp_30 = icmp i32 Sle ch_20, 57_0 
              #                    occupy a1 with ch_20
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a6 with temp_6_cmp_30
    slt     a6,a4,a1
    xori    a6,a6,1
              #                    free a1
              #                    free a4
              #                    free a6
              #                          new_var temp_7_cmp_30:i1 
              #                          temp_7_cmp_30 = icmp i32 Sge ch_20, 48_0 
              #                    occupy a1 with ch_20
              #                    occupy s2 with 48_0
    li      s2, 48
              #                    occupy s3 with temp_7_cmp_30
    slt     s3,a1,s2
    xori    s3,s3,1
              #                    free a1
              #                    free s2
              #                    free s3
              #                          new_var temp_8_logic_30:i1 
              #                          temp_8_logic_30 = And i1 temp_7_cmp_30, temp_6_cmp_30 
              #                    occupy s3 with temp_7_cmp_30
              #                    occupy a6 with temp_6_cmp_30
              #                    occupy s4 with temp_8_logic_30
    and     s4,s3,a6
              #                    free s3
              #                    free a6
              #                    free s4
              #                          br i1 temp_8_logic_30, label while.body_31, label while.exit_31 
              #                    occupy s4 with temp_8_logic_30
              #                    free s4
              #                    occupy s4 with temp_8_logic_30
    bnez    s4, .while.body_31
              #                    free s4
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_20, tracked: true } |     a1:Freed { symidx: ch_20, tracked: true } |     a2:Freed { symidx: x_20, tracked: true } |     a3:Freed { symidx: f_20, tracked: true } |     a5:Freed { symidx: temp_1_cmp_23, tracked: true } |     a6:Freed { symidx: temp_6_cmp_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_23, tracked: true } |     s1:Freed { symidx: temp_3_logic_23, tracked: true } |     s3:Freed { symidx: temp_7_cmp_30, tracked: true } |     s4:Freed { symidx: temp_8_logic_30, tracked: true } | 
              #                          label while.body_31: 
.while.body_31:
              #                          new_var temp_9_arithop_32:i32 
              #                          temp_9_arithop_32 = Mul i32 x_20, 10_0 
              #                    occupy a2 with x_20
              #                    occupy a4 with 10_0
    li      a4, 10
              #                    occupy s2 with temp_9_arithop_32
    mul     s2,a2,a4
              #                    free a2
              #                    free a4
              #                    free s2
              #                          new_var temp_10_arithop_32:i32 
              #                          temp_10_arithop_32 = Add i32 temp_9_arithop_32, ch_20 
              #                    occupy s2 with temp_9_arithop_32
              #                    occupy a1 with ch_20
              #                    occupy s5 with temp_10_arithop_32
    add     s5,s2,a1
              #                    free s2
              #                    free a1
              #                    free s5
              #                          new_var temp_11_arithop_32:i32 
              #                          temp_11_arithop_32 = Sub i32 temp_10_arithop_32, 48_0 
              #                    occupy s5 with temp_10_arithop_32
              #                    occupy s6 with 48_0
    li      s6, 48
              #                    occupy s7 with temp_11_arithop_32
              #                    regtab:    a0:Freed { symidx: temp_0_ret_of_getch_20, tracked: true } |     a1:Freed { symidx: ch_20, tracked: true } |     a2:Freed { symidx: x_20, tracked: true } |     a3:Freed { symidx: f_20, tracked: true } |     a4:Freed { symidx: 10_0, tracked: false } |     a5:Freed { symidx: temp_1_cmp_23, tracked: true } |     a6:Freed { symidx: temp_6_cmp_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_23, tracked: true } |     s1:Freed { symidx: temp_3_logic_23, tracked: true } |     s2:Freed { symidx: temp_9_arithop_32, tracked: true } |     s3:Freed { symidx: temp_7_cmp_30, tracked: true } |     s4:Freed { symidx: temp_8_logic_30, tracked: true } |     s5:Occupied { symidx: temp_10_arithop_32, tracked: true, occupy_count: 1 } |     s6:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     s7:Occupied { symidx: temp_11_arithop_32, tracked: true, occupy_count: 1 } | 


    sub     s7,s5,s6
              #                    free s5
              #                    free s6
              #                    free s7
              #                          x_20 = i32 temp_11_arithop_32 
              #                    occupy s7 with temp_11_arithop_32
              #                    occupy a2 with x_20
    mv      a2, s7
              #                    free s7
              #                    free a2
              #                          new_var temp_12_ret_of_getch_32:i32 
              #                          temp_12_ret_of_getch_32 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_3_logic_23 in mem offset legal
    sb      s1,37(sp)
              #                    release s1 with temp_3_logic_23
              #                    store to temp_9_arithop_32 in mem offset legal
    sw      s2,24(sp)
              #                    release s2 with temp_9_arithop_32
              #                    store to temp_7_cmp_30 in mem offset legal
    sb      s3,30(sp)
              #                    release s3 with temp_7_cmp_30
              #                    store to temp_8_logic_30 in mem offset legal
    sb      s4,29(sp)
              #                    release s4 with temp_8_logic_30
              #                    store to temp_10_arithop_32 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_10_arithop_32
              #                    store to temp_11_arithop_32 in mem offset legal
    sw      s7,16(sp)
              #                    release s7 with temp_11_arithop_32
              #                    store to temp_0_ret_of_getch_20 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_20
              #                    store to ch_20 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_20
              #                    store to x_20 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_20
              #                    store to f_20 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with f_20
              #                    store to temp_1_cmp_23 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_1_cmp_23
              #                    store to temp_6_cmp_30 in mem offset legal
    sb      a6,31(sp)
              #                    release a6 with temp_6_cmp_30
              #                    store to temp_2_cmp_23 in mem offset legal
    sb      a7,38(sp)
              #                    release a7 with temp_2_cmp_23
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_12_ret_of_getch_32 in mem offset legal
    sw      a0,12(sp)
              #                          ch_20 = i32 temp_12_ret_of_getch_32 
              #                    occupy a0 with temp_12_ret_of_getch_32
              #                    occupy a1 with ch_20
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.exit_24 
              #                    store to temp_12_ret_of_getch_32 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_12_ret_of_getch_32
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_20_0
              #                    load from temp_0_ret_of_getch_20 in mem


    lw      a0,52(sp)
              #                    occupy a5 with _anonymous_of_temp_1_cmp_23_0
              #                    load from temp_1_cmp_23 in mem
    lb      a5,39(sp)
              #                    occupy a2 with _anonymous_of_x_20_0
              #                    load from x_20 in mem


    lw      a2,44(sp)
              #                    occupy a3 with _anonymous_of_f_20_0
              #                    load from f_20 in mem


    lw      a3,40(sp)
              #                    occupy s1 with _anonymous_of_temp_3_logic_23_0
              #                    load from temp_3_logic_23 in mem
    lb      s1,37(sp)
              #                    occupy a7 with _anonymous_of_temp_2_cmp_23_0
              #                    load from temp_2_cmp_23 in mem
    lb      a7,38(sp)
    j       .while.exit_24
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_20, tracked: true } |     a1:Freed { symidx: ch_20, tracked: true } |     a2:Freed { symidx: x_20, tracked: true } |     a3:Freed { symidx: f_20, tracked: true } |     a5:Freed { symidx: temp_1_cmp_23, tracked: true } |     a6:Freed { symidx: temp_6_cmp_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_23, tracked: true } |     s1:Freed { symidx: temp_3_logic_23, tracked: true } |     s3:Freed { symidx: temp_7_cmp_30, tracked: true } |     s4:Freed { symidx: temp_8_logic_30, tracked: true } | 
              #                          label while.exit_31: 
.while.exit_31:
              #                          new_var temp_13__416:i1 
              #                          temp_13__416 = icmp i32 Ne f_20, 0_0 
              #                    occupy a3 with f_20
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy s2 with temp_13__416
    xor     s2,a3,a4
    snez    s2, s2
              #                    free a3
              #                    free a4
              #                    free s2
              #                          br i1 temp_13__416, label branch_true_36, label branch_false_36 
              #                    occupy s2 with temp_13__416
              #                    free s2
              #                    occupy s2 with temp_13__416
    bnez    s2, .branch_true_36
              #                    free s2
    j       .branch_false_36
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_20, tracked: true } |     a1:Freed { symidx: ch_20, tracked: true } |     a2:Freed { symidx: x_20, tracked: true } |     a3:Freed { symidx: f_20, tracked: true } |     a5:Freed { symidx: temp_1_cmp_23, tracked: true } |     a6:Freed { symidx: temp_6_cmp_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_23, tracked: true } |     s1:Freed { symidx: temp_3_logic_23, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_30, tracked: true } |     s4:Freed { symidx: temp_8_logic_30, tracked: true } | 
              #                          label branch_true_36: 
.branch_true_36:
              #                          new_var temp_14__35:i32 
              #                          temp_14__35 = Sub i32 0_0, x_20 
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a2 with x_20
              #                    occupy s5 with temp_14__35
              #                    regtab:    a0:Freed { symidx: temp_0_ret_of_getch_20, tracked: true } |     a1:Freed { symidx: ch_20, tracked: true } |     a2:Occupied { symidx: x_20, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: f_20, tracked: true } |     a4:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_1_cmp_23, tracked: true } |     a6:Freed { symidx: temp_6_cmp_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_23, tracked: true } |     s1:Freed { symidx: temp_3_logic_23, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_30, tracked: true } |     s4:Freed { symidx: temp_8_logic_30, tracked: true } |     s5:Occupied { symidx: temp_14__35, tracked: true, occupy_count: 1 } | 


    sub     s5,a4,a2
              #                    free a4
              #                    free a2
              #                    free s5
              #                          ret temp_14__35 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    store to temp_14__35 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_14__35
              #                    store to temp_0_ret_of_getch_20 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_20
              #                    occupy a0 with temp_14__35
              #                    load from temp_14__35 in mem


    lw      a0,4(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_20, tracked: true } |     a1:Freed { symidx: ch_20, tracked: true } |     a2:Freed { symidx: x_20, tracked: true } |     a3:Freed { symidx: f_20, tracked: true } |     a5:Freed { symidx: temp_1_cmp_23, tracked: true } |     a6:Freed { symidx: temp_6_cmp_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_23, tracked: true } |     s1:Freed { symidx: temp_3_logic_23, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_30, tracked: true } |     s4:Freed { symidx: temp_8_logic_30, tracked: true } | 
              #                          label branch_false_36: 
.branch_false_36:
              #                          ret x_20 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    store to x_20 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_20
              #                    store to temp_0_ret_of_getch_20 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_20
              #                    occupy a0 with x_20
              #                    load from x_20 in mem


    lw      a0,44(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ch_20, tracked: true } |     a3:Freed { symidx: f_20, tracked: true } |     a5:Freed { symidx: temp_1_cmp_23, tracked: true } |     a6:Freed { symidx: temp_6_cmp_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_23, tracked: true } |     s1:Freed { symidx: temp_3_logic_23, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_30, tracked: true } |     s4:Freed { symidx: temp_8_logic_30, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                    regtab     a1:Freed { symidx: ch_20, tracked: true } |     a3:Freed { symidx: f_20, tracked: true } |     a5:Freed { symidx: temp_1_cmp_23, tracked: true } |     a6:Freed { symidx: temp_6_cmp_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_23, tracked: true } |     s1:Freed { symidx: temp_3_logic_23, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_30, tracked: true } |     s4:Freed { symidx: temp_8_logic_30, tracked: true } | 
              #                    regtab 
              #                          Define add_edge_0 [from_39, To_39] -> add_edge_ret_0 
    .globl add_edge
    .type add_edge,@function
add_edge:
              #                    mem layout:|ra_add_edge:8 at 40120|s0_add_edge:8 at 40112|from:4 at 40108|To:4 at 40104|temp_15_ptr2globl:4 at 40100|none:4 at 40096|temp_16_index_ptr:8 at 40088|temp_17_ptr2globl:4 at 40084|none:4 at 40080|temp_18_index_ptr:8 at 40072|temp_19_ptr2globl:40020 at 52|none:4 at 48|temp_20_array_ptr:8 at 40|temp_21_array_ele:4 at 36|none:4 at 32|temp_22_index_ptr:8 at 24|temp_23_ptr2globl:4 at 20|temp_24_ptr2globl:4 at 16|temp_25_arithop:4 at 12|none:4 at 8|temp_26_index_ptr:8 at 0
              #                    occupy a2 with -40128_0
    li      a2, -40128
    li      a2, -40128
    add     sp,a2,sp
              #                    free a2
              #                    store to ra_add_edge_0 in mem offset_illegal
              #                    occupy a3 with 40120_0
    li      a3, 40120
    add     a3,sp,a3
    sd      ra,0(a3)
              #                    free a3
              #                    store to s0_add_edge_0 in mem offset_illegal
              #                    occupy a4 with 40112_0
    li      a4, 40112
    add     a4,sp,a4
    sd      s0,0(a4)
              #                    free a4
              #                    occupy a5 with 40128_0
    li      a5, 40128
    li      a5, 40128
    add     s0,a5,sp
              #                    free a5
              #                          alloc i32 temp_15_ptr2globl_41 
              #                          alloc ptr->i32 temp_16_index_ptr_41 
              #                          alloc i32 temp_17_ptr2globl_41 
              #                          alloc ptr->i32 temp_18_index_ptr_41 
              #                          alloc Array:i32:[Some(10005_0)] temp_19_ptr2globl_41 
              #                          alloc ptr->i32 temp_20_array_ptr_41 
              #                          alloc i32 temp_21_array_ele_41 
              #                          alloc ptr->i32 temp_22_index_ptr_41 
              #                          alloc i32 temp_23_ptr2globl_41 
              #                          alloc i32 temp_24_ptr2globl_41 
              #                          alloc i32 temp_25_arithop_41 
              #                          alloc ptr->i32 temp_26_index_ptr_41 
              #                    regtab     a0:Freed { symidx: from_39, tracked: true } |     a1:Freed { symidx: To_39, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_15_ptr2globl_41:i32 
              #                          temp_15_ptr2globl_41 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a3 with temp_15_ptr2globl_41
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_16_index_ptr_41:ptr->i32 
              #                          temp_16_index_ptr_41 = getelementptr to_0:Array:i32:[Some(10005_0)] [Some(temp_15_ptr2globl_41)] 
              #                    occupy a4 with temp_16_index_ptr_41
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a3 with temp_15_ptr2globl_41
              #                    occupy a6 with _anonymous_of_to_0_0
    mul     a6,a5,a3
              #                    free a5
              #                    free a3
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with _anonymous_of_to_0_0
    la      a7, to
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store To_39:i32 temp_16_index_ptr_41:ptr->i32 
              #                    occupy a4 with temp_16_index_ptr_41
              #                    occupy a1 with To_39
    sw      a1,0(a4)
              #                    free a1
              #                    free a4
              #                          mu to_0:117 
              #                          to_0 = chi to_0:117 
              #                          new_var temp_17_ptr2globl_41:i32 
              #                          temp_17_ptr2globl_41 = load *cnt_0:ptr->i32 
              #                    occupy s1 with *cnt_0
              #                       load label cnt as ptr to reg
    la      s1, cnt
              #                    occupy reg s1 with *cnt_0
              #                    occupy s2 with temp_17_ptr2globl_41
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_18_index_ptr_41:ptr->i32 
              #                          temp_18_index_ptr_41 = getelementptr next_0:Array:i32:[Some(10005_0)] [Some(temp_17_ptr2globl_41)] 
              #                    occupy s3 with temp_18_index_ptr_41
    li      s3, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s2 with temp_17_ptr2globl_41
              #                    occupy s4 with _anonymous_of_next_0_0
    mul     s4,a5,s2
              #                    free a5
              #                    free s2
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy s5 with _anonymous_of_next_0_0
    la      s5, next
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                          new_var temp_19_ptr2globl_41:Array:i32:[Some(10005_0)] 
              #                          temp_19_ptr2globl_41 = load *head_0:ptr->i32 
              #                    occupy s6 with *head_0
              #                       load label head as ptr to reg
    la      s6, head
              #                    occupy reg s6 with *head_0
              #                    occupy s7 with temp_19_ptr2globl_41
    lw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          new_var temp_20_array_ptr_41:ptr->i32 
              #                          temp_20_array_ptr_41 = getelementptr temp_19_ptr2globl_41:Array:i32:[Some(10005_0)] [Some(from_39)] 
              #                    occupy s8 with temp_20_array_ptr_41
    li      s8, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with from_39
              #                    occupy s9 with _anonymous_of_temp_19_ptr2globl_41_0
    mul     s9,a5,a0
              #                    free a5
              #                    free a0
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,52
              #                    free s8
              #                          new_var temp_21_array_ele_41:i32 
              #                          temp_21_array_ele_41 = load temp_20_array_ptr_41:ptr->i32 
              #                    occupy s8 with temp_20_array_ptr_41
              #                    occupy s10 with temp_21_array_ele_41
    lw      s10,0(s8)
              #                    free s10
              #                    free s8
              #                          store temp_21_array_ele_41:i32 temp_18_index_ptr_41:ptr->i32 
              #                    occupy s3 with temp_18_index_ptr_41
              #                    occupy s10 with temp_21_array_ele_41
    sw      s10,0(s3)
              #                    free s10
              #                    free s3
              #                          mu next_0:135 
              #                          next_0 = chi next_0:135 
              #                          new_var temp_22_index_ptr_41:ptr->i32 
              #                          temp_22_index_ptr_41 = getelementptr head_0:Array:i32:[Some(10005_0)] [Some(from_39)] 
              #                    occupy s11 with temp_22_index_ptr_41
    li      s11, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with from_39
              #                    occupy a2 with _anonymous_of_head_0_0
    mul     a2,a5,a0
              #                    free a5
              #                    free a0
    add     s11,s11,a2
              #                    free a2
    slli s11,s11,2
              #                    occupy a2 with _anonymous_of_head_0_0
    la      a2, head
    add     s11,s11,a2
              #                    free a2
              #                    free s11
              #                          new_var temp_23_ptr2globl_41:i32 
              #                          temp_23_ptr2globl_41 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a5 with temp_23_ptr2globl_41
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                          store temp_23_ptr2globl_41:i32 temp_22_index_ptr_41:ptr->i32 
              #                    occupy s11 with temp_22_index_ptr_41
              #                    occupy a5 with temp_23_ptr2globl_41
    sw      a5,0(s11)
              #                    free a5
              #                    free s11
              #                          mu head_0:144 
              #                          head_0 = chi head_0:144 
              #                          new_var temp_24_ptr2globl_41:i32 
              #                          temp_24_ptr2globl_41 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a6 with temp_24_ptr2globl_41
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          new_var temp_25_arithop_41:i32 
              #                          temp_25_arithop_41 = Add i32 temp_24_ptr2globl_41, 1_0 
              #                    occupy a6 with temp_24_ptr2globl_41
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a7 with temp_25_arithop_41
    add     a7,a6,a2
              #                    free a6
              #                    free a2
              #                    free a7
              #                          store temp_25_arithop_41:i32 *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a7 with temp_25_arithop_41
    sw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_26_index_ptr_41:ptr->i32 
              #                          temp_26_index_ptr_41 = getelementptr f_0:Array:i32:[Some(10005_0), Some(20_0)] [Some(To_39), Some(0_0)] 
              #                    occupy a2 with temp_26_index_ptr_41
    li      a2, 0
              #                    occupy s1 with 20_0
    li      s1, 20
              #                    occupy a1 with To_39
              #                    occupy s4 with _anonymous_of_f_0_0
    mul     s4,s1,a1
              #                    free s1
              #                    free a1
    add     a2,a2,s4
              #                    free s4
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s4 with 0_0
    li      s4, 0
              #                    occupy s5 with _anonymous_of_f_0_0
    mul     s5,s1,s4
              #                    free s1
              #                    free s4
    add     a2,a2,s5
              #                    free s5
    slli a2,a2,2
              #                    occupy s1 with _anonymous_of_f_0_0
    la      s1, f
    add     a2,a2,s1
              #                    free s1
              #                    free a2
              #                          store from_39:i32 temp_26_index_ptr_41:ptr->i32 
              #                    occupy a2 with temp_26_index_ptr_41
              #                    occupy a0 with from_39
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          mu f_0:157 
              #                          f_0 = chi f_0:157 
              #                    regtab     a0:Freed { symidx: from_39, tracked: true } |     a1:Freed { symidx: To_39, tracked: true } |     a2:Freed { symidx: temp_26_index_ptr_41, tracked: true } |     a3:Freed { symidx: temp_15_ptr2globl_41, tracked: true } |     a4:Freed { symidx: temp_16_index_ptr_41, tracked: true } |     a5:Freed { symidx: temp_23_ptr2globl_41, tracked: true } |     a6:Freed { symidx: temp_24_ptr2globl_41, tracked: true } |     a7:Freed { symidx: temp_25_arithop_41, tracked: true } |     s10:Freed { symidx: temp_21_array_ele_41, tracked: true } |     s11:Freed { symidx: temp_22_index_ptr_41, tracked: true } |     s2:Freed { symidx: temp_17_ptr2globl_41, tracked: true } |     s3:Freed { symidx: temp_18_index_ptr_41, tracked: true } |     s7:Freed { symidx: temp_19_ptr2globl_41, tracked: true } |     s8:Freed { symidx: temp_20_array_ptr_41, tracked: true } | 
              #                    regtab 
              #                          Define init_0 [] -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 48|s0_init:8 at 40|temp_27_index_ptr:8 at 32|i:4 at 28|temp_28_ptr2globl:4 at 24|temp_29_cmp:1 at 23|none:7 at 16|temp_30_index_ptr:8 at 8|temp_31_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-56
              #                    store to ra_init_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc ptr->i32 temp_27_index_ptr_48 
              #                          alloc i32 i_48 
              #                          alloc i32 temp_28_ptr2globl_51 
              #                          alloc i1 temp_29_cmp_51 
              #                          alloc ptr->i32 temp_30_index_ptr_53 
              #                          alloc i32 temp_31_arithop_53 
              #                    regtab 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_27_index_ptr_48:ptr->i32 
              #                          temp_27_index_ptr_48 = getelementptr dep_0:Array:i32:[Some(10005_0)] [Some(0_0)] 
              #                    occupy a0 with temp_27_index_ptr_48
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_dep_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with _anonymous_of_dep_0_0
    la      a4, dep
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          store 0x3f3f3f3f_0:i32 temp_27_index_ptr_48:ptr->i32 
              #                    occupy a0 with temp_27_index_ptr_48
              #                    occupy a5 with 0x3f3f3f3f_0
    li      a5, 0x3f3f3f3f
    sw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                          mu dep_0:163 
              #                          dep_0 = chi dep_0:163 
              #                          i_48 = i32 1_0 
              #                    occupy a6 with i_48
    li      a6, 1
              #                    free a6
              #                          jump label: while.head_52 
    j       .while.head_52
              #                    regtab     a0:Freed { symidx: temp_27_index_ptr_48, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } | 
              #                          label while.head_52: 
.while.head_52:
              #                          new_var temp_28_ptr2globl_51:i32 
              #                          temp_28_ptr2globl_51 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_28_ptr2globl_51
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_29_cmp_51:i1 
              #                          temp_29_cmp_51 = icmp i32 Sle i_48, temp_28_ptr2globl_51 
              #                    occupy a6 with i_48
              #                    occupy a2 with temp_28_ptr2globl_51
              #                    occupy a3 with temp_29_cmp_51
    slt     a3,a2,a6
    xori    a3,a3,1
              #                    free a6
              #                    free a2
              #                    free a3
              #                          br i1 temp_29_cmp_51, label while.body_52, label while.exit_52 
              #                    occupy a3 with temp_29_cmp_51
              #                    free a3
              #                    occupy a3 with temp_29_cmp_51
    bnez    a3, .while.body_52
              #                    free a3
    j       .while.exit_52
              #                    regtab     a0:Freed { symidx: temp_27_index_ptr_48, tracked: true } |     a2:Freed { symidx: temp_28_ptr2globl_51, tracked: true } |     a3:Freed { symidx: temp_29_cmp_51, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } | 
              #                          label while.body_52: 
.while.body_52:
              #                          new_var temp_30_index_ptr_53:ptr->i32 
              #                          temp_30_index_ptr_53 = getelementptr head_0:Array:i32:[Some(10005_0)] [Some(i_48)] 
              #                    occupy a1 with temp_30_index_ptr_53
    li      a1, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with i_48
              #                    occupy a5 with _anonymous_of_head_0_0
    mul     a5,a4,a6
              #                    free a4
              #                    free a6
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
              #                    occupy a7 with _anonymous_of_head_0_0
    la      a7, head
    add     a1,a1,a7
              #                    free a7
              #                    free a1
              #                          store -1_0:i32 temp_30_index_ptr_53:ptr->i32 
              #                    occupy a1 with temp_30_index_ptr_53
              #                    occupy s1 with -1_0
    li      s1, -1
    sw      s1,0(a1)
              #                    free s1
              #                    free a1
              #                          mu head_0:182 
              #                          head_0 = chi head_0:182 
              #                          new_var temp_31_arithop_53:i32 
              #                          temp_31_arithop_53 = Add i32 i_48, 1_0 
              #                    occupy a6 with i_48
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s2 with temp_31_arithop_53
    add     s2,a6,a4
              #                    free a6
              #                    free a4
              #                    free s2
              #                          i_48 = i32 temp_31_arithop_53 
              #                    occupy s2 with temp_31_arithop_53
              #                    occupy a6 with i_48
    mv      a6, s2
              #                    free s2
              #                    free a6
              #                          jump label: while.head_52 
              #                    store to temp_29_cmp_51 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_29_cmp_51
              #                    store to temp_30_index_ptr_53 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_30_index_ptr_53
              #                    store to temp_31_arithop_53 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_31_arithop_53
              #                    store to temp_28_ptr2globl_51 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with temp_28_ptr2globl_51
    j       .while.head_52
              #                    regtab     a0:Freed { symidx: temp_27_index_ptr_48, tracked: true } |     a2:Freed { symidx: temp_28_ptr2globl_51, tracked: true } |     a3:Freed { symidx: temp_29_cmp_51, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } | 
              #                          label while.exit_52: 
.while.exit_52:
              #                    regtab 
              #                          Define tree_0 [x_56, d_56] -> tree_ret_0 
    .globl tree
    .type tree,@function
tree:
              #                    mem layout:|ra_tree:8 at 2521416|s0_tree:8 at 2521408|x:4 at 2521404|d:4 at 2521400|temp_32_index_ptr:8 at 2521392|i:4 at 2521388|temp_33_ptr2globl:800400 at 1720988|none:4 at 1720984|temp_34_array_ptr:8 at 1720976|temp_35_array_ele:4 at 1720972|temp_36_:1 at 1720971|none:3 at 1720968|temp_37_arithop:4 at 1720964|none:4 at 1720960|temp_38_index_ptr:8 at 1720952|temp_39_ptr2globl:800400 at 920552|temp_40_array_ptr:8 at 920544|temp_41_array_ele:4 at 920540|temp_42_ptr2globl:800400 at 120140|none:4 at 120136|temp_43_array_ptr:8 at 120128|temp_44_array_ele:4 at 120124|temp_45_arithop:4 at 120120|temp_46_ptr2globl:40020 at 80100|none:4 at 80096|temp_47_array_ptr:8 at 80088|temp_48_array_ele:4 at 80084|temp_49_cmp:1 at 80083|none:3 at 80080|temp_50_ptr2globl:40020 at 40060|none:4 at 40056|temp_51_array_ptr:8 at 40048|temp_52_array_ele:4 at 40044|y:4 at 40040|temp_53_arithop:4 at 40036|temp_54_ptr2globl:40020 at 16|temp_55_array_ptr:8 at 8|temp_56_array_ele:4 at 4|none:4 at 0
              #                    occupy a2 with -2521424_0
    li      a2, -2521424
    li      a2, -2521424
    add     sp,a2,sp
              #                    free a2
              #                    store to ra_tree_0 in mem offset_illegal
              #                    occupy a3 with 2521416_0
    li      a3, 2521416
    add     a3,sp,a3
    sd      ra,0(a3)
              #                    free a3
              #                    store to s0_tree_0 in mem offset_illegal
              #                    occupy a4 with 2521408_0
    li      a4, 2521408
    add     a4,sp,a4
    sd      s0,0(a4)
              #                    free a4
              #                    occupy a5 with 2521424_0
    li      a5, 2521424
    li      a5, 2521424
    add     s0,a5,sp
              #                    free a5
              #                          alloc ptr->i32 temp_32_index_ptr_58 
              #                          alloc i32 i_58 
              #                          alloc Array:i32:[Some(10005_0), Some(20_0)] temp_33_ptr2globl_61 
              #                          alloc ptr->i32 temp_34_array_ptr_61 
              #                          alloc i32 temp_35_array_ele_61 
              #                          alloc i1 temp_36__1374 
              #                          alloc i32 temp_37_arithop_63 
              #                          alloc ptr->i32 temp_38_index_ptr_63 
              #                          alloc Array:i32:[Some(10005_0), Some(20_0)] temp_39_ptr2globl_63 
              #                          alloc ptr->i32 temp_40_array_ptr_63 
              #                          alloc i32 temp_41_array_ele_63 
              #                          alloc Array:i32:[Some(10005_0), Some(20_0)] temp_42_ptr2globl_63 
              #                          alloc ptr->i32 temp_43_array_ptr_63 
              #                          alloc i32 temp_44_array_ele_63 
              #                          alloc i32 temp_45_arithop_63 
              #                          alloc Array:i32:[Some(10005_0)] temp_46_ptr2globl_58 
              #                          alloc ptr->i32 temp_47_array_ptr_58 
              #                          alloc i32 temp_48_array_ele_58 
              #                          alloc i1 temp_49_cmp_67 
              #                          alloc Array:i32:[Some(10005_0)] temp_50_ptr2globl_69 
              #                          alloc ptr->i32 temp_51_array_ptr_69 
              #                          alloc i32 temp_52_array_ele_69 
              #                          alloc i32 y_69 
              #                          alloc i32 temp_53_arithop_69 
              #                          alloc Array:i32:[Some(10005_0)] temp_54_ptr2globl_69 
              #                          alloc ptr->i32 temp_55_array_ptr_69 
              #                          alloc i32 temp_56_array_ele_69 
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_32_index_ptr_58:ptr->i32 
              #                          temp_32_index_ptr_58 = getelementptr dep_0:Array:i32:[Some(10005_0)] [Some(x_56)] 
              #                    occupy a2 with temp_32_index_ptr_58
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a0 with x_56
              #                    occupy a4 with _anonymous_of_dep_0_0
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with _anonymous_of_dep_0_0
    la      a5, dep
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                          store d_56:i32 temp_32_index_ptr_58:ptr->i32 
              #                    occupy a2 with temp_32_index_ptr_58
              #                    occupy a1 with d_56
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                          mu dep_0:192 
              #                          dep_0 = chi dep_0:192 
              #                          i_58 = i32 0_0 
              #                    occupy a6 with i_58
    li      a6, 0
              #                    free a6
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } |     a2:Freed { symidx: temp_32_index_ptr_58, tracked: true } |     a6:Freed { symidx: i_58, tracked: true } | 
              #                          label while.head_62: 
.while.head_62:
              #                          new_var temp_33_ptr2globl_61:Array:i32:[Some(10005_0), Some(20_0)] 
              #                          temp_33_ptr2globl_61 = load *f_0:ptr->Array:i32:[Some(20_0)] 
              #                    occupy a3 with *f_0
              #                       load label f as ptr to reg
    la      a3, f
              #                    occupy reg a3 with *f_0
              #                    occupy a4 with temp_33_ptr2globl_61
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          new_var temp_34_array_ptr_61:ptr->i32 
              #                          temp_34_array_ptr_61 = getelementptr temp_33_ptr2globl_61:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_56), Some(i_58)] 
              #                    occupy a5 with temp_34_array_ptr_61
    li      a5, 0
              #                    occupy a7 with 20_0
    li      a7, 20
              #                    occupy a0 with x_56
              #                    occupy s1 with _anonymous_of_temp_33_ptr2globl_61_0
    mul     s1,a7,a0
              #                    free a7
              #                    free a0
    add     a5,a5,s1
              #                    free s1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a6 with i_58
              #                    occupy s3 with _anonymous_of_temp_33_ptr2globl_61_0
    mul     s3,s2,a6
              #                    free s2
              #                    free a6
    add     a5,a5,s3
              #                    free s3
    slli a5,a5,2
    add     a5,a5,sp
              #                    occupy s4 with 1720988_0
    li      s4, 1720988
    li      s4, 1720988
    add     a5,s4,a5
              #                    free s4
              #                    free a5
              #                          new_var temp_35_array_ele_61:i32 
              #                          temp_35_array_ele_61 = load temp_34_array_ptr_61:ptr->i32 
              #                    occupy a5 with temp_34_array_ptr_61
              #                    occupy s5 with temp_35_array_ele_61
    lw      s5,0(a5)
              #                    free s5
              #                    free a5
              #                          new_var temp_36__1374:i1 
              #                          temp_36__1374 = icmp i32 Ne temp_35_array_ele_61, 0_0 
              #                    occupy s5 with temp_35_array_ele_61
              #                    occupy s6 with 0_0
    li      s6, 0
              #                    occupy s7 with temp_36__1374
    xor     s7,s5,s6
    snez    s7, s7
              #                    free s5
              #                    free s6
              #                    free s7
              #                          br i1 temp_36__1374, label while.body_62, label while.exit_62 
              #                    occupy s7 with temp_36__1374
              #                    free s7
              #                    occupy s7 with temp_36__1374
    bnez    s7, .while.body_62
              #                    free s7
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } |     a2:Freed { symidx: temp_32_index_ptr_58, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_61, tracked: true } |     a5:Freed { symidx: temp_34_array_ptr_61, tracked: true } |     a6:Freed { symidx: i_58, tracked: true } |     s5:Freed { symidx: temp_35_array_ele_61, tracked: true } |     s7:Freed { symidx: temp_36__1374, tracked: true } | 
              #                          label while.body_62: 
.while.body_62:
              #                          new_var temp_37_arithop_63:i32 
              #                          temp_37_arithop_63 = Add i32 i_58, 1_0 
              #                    occupy a6 with i_58
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a7 with temp_37_arithop_63
    add     a7,a6,a3
              #                    free a6
              #                    free a3
              #                    free a7
              #                          new_var temp_38_index_ptr_63:ptr->i32 
              #                          temp_38_index_ptr_63 = getelementptr f_0:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_56), Some(temp_37_arithop_63)] 
              #                    occupy s1 with temp_38_index_ptr_63
    li      s1, 0
              #                    occupy s2 with 20_0
    li      s2, 20
              #                    occupy a0 with x_56
              #                    occupy s3 with _anonymous_of_f_0_0
    mul     s3,s2,a0
              #                    free s2
              #                    free a0
    add     s1,s1,s3
              #                    free s3
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a7 with temp_37_arithop_63
              #                    occupy s4 with _anonymous_of_f_0_0
    mul     s4,a3,a7
              #                    free a3
              #                    free a7
    add     s1,s1,s4
              #                    free s4
    slli s1,s1,2
              #                    occupy s6 with _anonymous_of_f_0_0
    la      s6, f
    add     s1,s1,s6
              #                    free s6
              #                    free s1
              #                          new_var temp_39_ptr2globl_63:Array:i32:[Some(10005_0), Some(20_0)] 
              #                          temp_39_ptr2globl_63 = load *f_0:ptr->Array:i32:[Some(20_0)] 
              #                    occupy s8 with *f_0
              #                       load label f as ptr to reg
    la      s8, f
              #                    occupy reg s8 with *f_0
              #                    occupy s9 with temp_39_ptr2globl_63
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_40_array_ptr_63:ptr->i32 
              #                          temp_40_array_ptr_63 = getelementptr temp_39_ptr2globl_63:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_56), Some(i_58)] 
              #                    occupy s10 with temp_40_array_ptr_63
    li      s10, 0
              #                    found literal reg Some(s2) already exist with 20_0
              #                    occupy s2 with 20_0
              #                    occupy a0 with x_56
              #                    occupy s11 with _anonymous_of_temp_39_ptr2globl_63_0
    mul     s11,s2,a0
              #                    free s2
              #                    free a0
    add     s10,s10,s11
              #                    free s11
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a6 with i_58
              #                    occupy s2 with _anonymous_of_temp_39_ptr2globl_63_0
    mul     s2,a3,a6
              #                    free a3
              #                    free a6
    add     s10,s10,s2
              #                    free s2
    slli s10,s10,2
    add     s10,s10,sp
              #                    occupy a3 with 920552_0
    li      a3, 920552
    li      a3, 920552
    add     s10,a3,s10
              #                    free a3
              #                    free s10
              #                          new_var temp_41_array_ele_63:i32 
              #                          temp_41_array_ele_63 = load temp_40_array_ptr_63:ptr->i32 
              #                    occupy s10 with temp_40_array_ptr_63
              #                    occupy a3 with temp_41_array_ele_63
    lw      a3,0(s10)
              #                    free a3
              #                    free s10
              #                          new_var temp_42_ptr2globl_63:Array:i32:[Some(10005_0), Some(20_0)] 
              #                          temp_42_ptr2globl_63 = load *f_0:ptr->Array:i32:[Some(20_0)] 
              #                    occupy s2 with *f_0
              #                       load label f as ptr to reg
    la      s2, f
              #                    occupy reg s2 with *f_0
              #                    occupy s3 with temp_42_ptr2globl_63
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_43_array_ptr_63:ptr->i32 
              #                          temp_43_array_ptr_63 = getelementptr temp_42_ptr2globl_63:Array:i32:[Some(10005_0), Some(20_0)] [Some(temp_41_array_ele_63), Some(i_58)] 
              #                    occupy s2 with temp_43_array_ptr_63
    li      s2, 0
              #                    occupy s4 with 20_0
    li      s4, 20
              #                    occupy a3 with temp_41_array_ele_63
              #                    occupy s6 with _anonymous_of_temp_42_ptr2globl_63_0
    mul     s6,s4,a3
              #                    free s4
              #                    free a3
    add     s2,s2,s6
              #                    free s6
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a6 with i_58
              #                    occupy s6 with _anonymous_of_temp_42_ptr2globl_63_0
    mul     s6,s4,a6
              #                    free s4
              #                    free a6
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
    add     s2,s2,sp
              #                    occupy s4 with 120140_0
    li      s4, 120140
    li      s4, 120140
    add     s2,s4,s2
              #                    free s4
              #                    free s2
              #                          new_var temp_44_array_ele_63:i32 
              #                          temp_44_array_ele_63 = load temp_43_array_ptr_63:ptr->i32 
              #                    occupy s2 with temp_43_array_ptr_63
              #                    occupy s4 with temp_44_array_ele_63
    lw      s4,0(s2)
              #                    free s4
              #                    free s2
              #                          store temp_44_array_ele_63:i32 temp_38_index_ptr_63:ptr->i32 
              #                    occupy s1 with temp_38_index_ptr_63
              #                    occupy s4 with temp_44_array_ele_63
    sw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          mu f_0:238 
              #                          f_0 = chi f_0:238 
              #                          new_var temp_45_arithop_63:i32 
              #                          temp_45_arithop_63 = Add i32 i_58, 1_0 
              #                    occupy a6 with i_58
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s8 with temp_45_arithop_63
    add     s8,a6,s6
              #                    free a6
              #                    free s6
              #                    free s8
              #                          i_58 = i32 temp_45_arithop_63 
              #                    occupy s8 with temp_45_arithop_63
              #                    occupy a6 with i_58
    mv      a6, s8
              #                    free s8
              #                    free a6
              #                          jump label: while.head_62 
              #                    store to temp_43_array_ptr_63 in mem offset_illegal
              #                    occupy s2 with 120128_0
    li      s2, 120128
    add     s2,sp,s2
    sd      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_43_array_ptr_63
              #                    store to temp_41_array_ele_63 in mem offset_illegal
              #                    occupy a3 with 920540_0
    li      a3, 920540
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_41_array_ele_63
              #                    store to temp_42_ptr2globl_63 in mem offset_illegal
              #                    occupy a3 with 120140_0
    li      a3, 120140
    add     a3,sp,a3
    sw      s3,0(a3)
              #                    free a3
              #                    release s3 with temp_42_ptr2globl_63
              #                    store to temp_35_array_ele_61 in mem offset_illegal
              #                    occupy s2 with 1720972_0
    li      s2, 1720972
    add     s2,sp,s2
    sw      s5,0(s2)
              #                    free s2
              #                    release s5 with temp_35_array_ele_61
              #                    store to temp_36__1374 in mem offset_illegal
              #                    occupy s3 with 1720971_0
    li      s3, 1720971
    add     s3,sp,s3
    sb      s7,0(s3)
              #                    free s3
              #                    release s7 with temp_36__1374
              #                    store to temp_39_ptr2globl_63 in mem offset_illegal
              #                    occupy s5 with 920552_0
    li      s5, 920552
    add     s5,sp,s5
    sw      s9,0(s5)
              #                    free s5
              #                    release s9 with temp_39_ptr2globl_63
              #                    store to temp_33_ptr2globl_61 in mem offset_illegal
              #                    occupy a4 with 1720988_0
    li      a4, 1720988
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_33_ptr2globl_61
              #                    store to temp_38_index_ptr_63 in mem offset_illegal
              #                    occupy a4 with 1720952_0
    li      a4, 1720952
    add     a4,sp,a4
    sd      s1,0(a4)
              #                    free a4
              #                    release s1 with temp_38_index_ptr_63
              #                    store to temp_44_array_ele_63 in mem offset_illegal
              #                    occupy s1 with 120124_0
    li      s1, 120124
    add     s1,sp,s1
    sw      s4,0(s1)
              #                    free s1
              #                    release s4 with temp_44_array_ele_63
              #                    store to temp_40_array_ptr_63 in mem offset_illegal
              #                    occupy s4 with 920544_0
    li      s4, 920544
    add     s4,sp,s4
    sd      s10,0(s4)
              #                    free s4
              #                    release s10 with temp_40_array_ptr_63
              #                    store to temp_34_array_ptr_61 in mem offset_illegal
              #                    occupy a5 with 1720976_0
    li      a5, 1720976
    add     a5,sp,a5
    sd      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_34_array_ptr_61
              #                    store to temp_45_arithop_63 in mem offset_illegal
              #                    occupy a5 with 120120_0
    li      a5, 120120
    add     a5,sp,a5
    sw      s8,0(a5)
              #                    free a5
              #                    release s8 with temp_45_arithop_63
              #                    store to temp_37_arithop_63 in mem offset_illegal
              #                    occupy a7 with 1720964_0
    li      a7, 1720964
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_37_arithop_63
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } |     a2:Freed { symidx: temp_32_index_ptr_58, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_61, tracked: true } |     a5:Freed { symidx: temp_34_array_ptr_61, tracked: true } |     a6:Freed { symidx: i_58, tracked: true } |     s5:Freed { symidx: temp_35_array_ele_61, tracked: true } |     s7:Freed { symidx: temp_36__1374, tracked: true } | 
              #                          label while.exit_62: 
.while.exit_62:
              #                          new_var temp_46_ptr2globl_58:Array:i32:[Some(10005_0)] 
              #                          temp_46_ptr2globl_58 = load *head_0:ptr->i32 
              #                    occupy a3 with *head_0
              #                       load label head as ptr to reg
    la      a3, head
              #                    occupy reg a3 with *head_0
              #                    occupy a7 with temp_46_ptr2globl_58
    lw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                          new_var temp_47_array_ptr_58:ptr->i32 
              #                          temp_47_array_ptr_58 = getelementptr temp_46_ptr2globl_58:Array:i32:[Some(10005_0)] [Some(x_56)] 
              #                    occupy s1 with temp_47_array_ptr_58
    li      s1, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a0 with x_56
              #                    occupy s3 with _anonymous_of_temp_46_ptr2globl_58_0
    mul     s3,s2,a0
              #                    free s2
              #                    free a0
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
    add     s1,s1,sp
              #                    occupy s4 with 80100_0
    li      s4, 80100
    li      s4, 80100
    add     s1,s4,s1
              #                    free s4
              #                    free s1
              #                          new_var temp_48_array_ele_58:i32 
              #                          temp_48_array_ele_58 = load temp_47_array_ptr_58:ptr->i32 
              #                    occupy s1 with temp_47_array_ptr_58
              #                    occupy s6 with temp_48_array_ele_58
    lw      s6,0(s1)
              #                    free s6
              #                    free s1
              #                          i_58 = i32 temp_48_array_ele_58 
              #                    occupy s6 with temp_48_array_ele_58
              #                    occupy a6 with i_58
    mv      a6, s6
              #                    free s6
              #                    free a6
              #                          jump label: while.head_68 
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } |     a2:Freed { symidx: temp_32_index_ptr_58, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_61, tracked: true } |     a5:Freed { symidx: temp_34_array_ptr_61, tracked: true } |     a6:Freed { symidx: i_58, tracked: true } |     a7:Freed { symidx: temp_46_ptr2globl_58, tracked: true } |     s1:Freed { symidx: temp_47_array_ptr_58, tracked: true } |     s5:Freed { symidx: temp_35_array_ele_61, tracked: true } |     s6:Freed { symidx: temp_48_array_ele_58, tracked: true } |     s7:Freed { symidx: temp_36__1374, tracked: true } | 
              #                          label while.head_68: 
.while.head_68:
              #                          new_var temp_49_cmp_67:i1 
              #                          temp_49_cmp_67 = icmp i32 Ne i_58, -1_0 
              #                    occupy a6 with i_58
              #                    occupy a3 with -1_0
    li      a3, -1
              #                    occupy s2 with temp_49_cmp_67
    xor     s2,a6,a3
    snez    s2, s2
              #                    free a6
              #                    free a3
              #                    free s2
              #                          br i1 temp_49_cmp_67, label while.body_68, label while.exit_68 
              #                    occupy s2 with temp_49_cmp_67
              #                    free s2
              #                    occupy s2 with temp_49_cmp_67
    bnez    s2, .while.body_68
              #                    free s2
    j       .while.exit_68
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } |     a2:Freed { symidx: temp_32_index_ptr_58, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_61, tracked: true } |     a5:Freed { symidx: temp_34_array_ptr_61, tracked: true } |     a6:Freed { symidx: i_58, tracked: true } |     a7:Freed { symidx: temp_46_ptr2globl_58, tracked: true } |     s1:Freed { symidx: temp_47_array_ptr_58, tracked: true } |     s2:Freed { symidx: temp_49_cmp_67, tracked: true } |     s5:Freed { symidx: temp_35_array_ele_61, tracked: true } |     s6:Freed { symidx: temp_48_array_ele_58, tracked: true } |     s7:Freed { symidx: temp_36__1374, tracked: true } | 
              #                          label while.body_68: 
.while.body_68:
              #                          new_var temp_50_ptr2globl_69:Array:i32:[Some(10005_0)] 
              #                          temp_50_ptr2globl_69 = load *to_0:ptr->i32 
              #                    occupy a3 with *to_0
              #                       load label to as ptr to reg
    la      a3, to
              #                    occupy reg a3 with *to_0
              #                    occupy s3 with temp_50_ptr2globl_69
    lw      s3,0(a3)
              #                    free s3
              #                    free a3
              #                          new_var temp_51_array_ptr_69:ptr->i32 
              #                          temp_51_array_ptr_69 = getelementptr temp_50_ptr2globl_69:Array:i32:[Some(10005_0)] [Some(i_58)] 
              #                    occupy s4 with temp_51_array_ptr_69
    li      s4, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy a6 with i_58
              #                    occupy s9 with _anonymous_of_temp_50_ptr2globl_69_0
    mul     s9,s8,a6
              #                    free s8
              #                    free a6
    add     s4,s4,s9
              #                    free s9
    slli s4,s4,2
    add     s4,s4,sp
              #                    occupy s10 with 40060_0
    li      s10, 40060
    li      s10, 40060
    add     s4,s10,s4
              #                    free s10
              #                    free s4
              #                          new_var temp_52_array_ele_69:i32 
              #                          temp_52_array_ele_69 = load temp_51_array_ptr_69:ptr->i32 
              #                    occupy s4 with temp_51_array_ptr_69
              #                    occupy s11 with temp_52_array_ele_69
    lw      s11,0(s4)
              #                    free s11
              #                    free s4
              #                          y_69 = i32 temp_52_array_ele_69 
              #                    occupy s11 with temp_52_array_ele_69
              #                    occupy a3 with y_69
    mv      a3, s11
              #                    free s11
              #                    free a3
              #                          new_var temp_53_arithop_69:i32 
              #                          temp_53_arithop_69 = Add i32 d_56, 1_0 
              #                    occupy a1 with d_56
              #                    found literal reg Some(s8) already exist with 1_0
              #                    occupy s8 with 1_0
              #                    occupy s9 with temp_53_arithop_69
    add     s9,a1,s8
              #                    free a1
              #                    free s8
              #                    free s9
              #                           Call void tree_0(y_69, temp_53_arithop_69) 
              #                    saved register dumping to mem
              #                    store to temp_47_array_ptr_58 in mem offset_illegal
              #                    occupy s1 with 80088_0
    li      s1, 80088
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_47_array_ptr_58
              #                    store to temp_49_cmp_67 in mem offset_illegal
              #                    occupy s1 with 80083_0
    li      s1, 80083
    add     s1,sp,s1
    sb      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_49_cmp_67
              #                    store to temp_50_ptr2globl_69 in mem offset_illegal
              #                    found literal reg Some(s10) already exist with 40060_0
              #                    occupy s10 with 40060_0
    add     s10,sp,s10
    sw      s3,0(s10)
              #                    free s10
              #                    release s3 with temp_50_ptr2globl_69
              #                    store to temp_51_array_ptr_69 in mem offset_illegal
              #                    occupy s2 with 40048_0
    li      s2, 40048
    add     s2,sp,s2
    sd      s4,0(s2)
              #                    free s2
              #                    release s4 with temp_51_array_ptr_69
              #                    store to temp_35_array_ele_61 in mem offset_illegal
              #                    occupy s3 with 1720972_0
    li      s3, 1720972
    add     s3,sp,s3
    sw      s5,0(s3)
              #                    free s3
              #                    release s5 with temp_35_array_ele_61
              #                    store to temp_48_array_ele_58 in mem offset_illegal
              #                    occupy s4 with 80084_0
    li      s4, 80084
    add     s4,sp,s4
    sw      s6,0(s4)
              #                    free s4
              #                    release s6 with temp_48_array_ele_58
              #                    store to temp_36__1374 in mem offset_illegal
              #                    occupy s5 with 1720971_0
    li      s5, 1720971
    add     s5,sp,s5
    sb      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_36__1374
              #                    store to temp_53_arithop_69 in mem offset_illegal
              #                    occupy s6 with 40036_0
    li      s6, 40036
    add     s6,sp,s6
    sw      s9,0(s6)
              #                    free s6
              #                    release s9 with temp_53_arithop_69
              #                    store to temp_52_array_ele_69 in mem offset_illegal
              #                    occupy s7 with 40044_0
    li      s7, 40044
    add     s7,sp,s7
    sw      s11,0(s7)
              #                    free s7
              #                    release s11 with temp_52_array_ele_69
              #                    store to x_56 in mem offset_illegal
              #                    occupy a0 with 2521404_0
    li      a0, 2521404
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with x_56
              #                    store to d_56 in mem offset_illegal
              #                    occupy a0 with 2521400_0
    li      a0, 2521400
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with d_56
              #                    store to temp_32_index_ptr_58 in mem offset_illegal
              #                    occupy a1 with 2521392_0
    li      a1, 2521392
    add     a1,sp,a1
    sd      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_32_index_ptr_58
              #                    store to y_69 in mem offset_illegal
              #                    occupy a2 with 40040_0
    li      a2, 40040
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with y_69
              #                    store to temp_33_ptr2globl_61 in mem offset_illegal
              #                    occupy a3 with 1720988_0
    li      a3, 1720988
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_33_ptr2globl_61
              #                    store to temp_34_array_ptr_61 in mem offset_illegal
              #                    occupy a4 with 1720976_0
    li      a4, 1720976
    add     a4,sp,a4
    sd      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_34_array_ptr_61
              #                    store to i_58 in mem offset_illegal
              #                    occupy a5 with 2521388_0
    li      a5, 2521388
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with i_58
              #                    store to temp_46_ptr2globl_58 in mem offset_illegal
              #                    occupy a6 with 80100_0
    li      a6, 80100
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_46_ptr2globl_58
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_y_69_0
              #                    load from y_69 in mem

              #                    occupy a7 with y_69
    li      a7, 40040
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    occupy a1 with _anonymous_of_temp_53_arithop_69_0
              #                    load from temp_53_arithop_69 in mem

              #                    occupy s8 with temp_53_arithop_69
    li      s8, 40036
    add     s8,sp,s8
    lw      a1,0(s8)
              #                    free s8
              #                    arg load ended


    call    tree
              #                          new_var temp_54_ptr2globl_69:Array:i32:[Some(10005_0)] 
              #                          temp_54_ptr2globl_69 = load *next_0:ptr->i32 
              #                    occupy a0 with *next_0
              #                       load label next as ptr to reg
    la      a0, next
              #                    occupy reg a0 with *next_0
              #                    occupy a1 with temp_54_ptr2globl_69
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_55_array_ptr_69:ptr->i32 
              #                          temp_55_array_ptr_69 = getelementptr temp_54_ptr2globl_69:Array:i32:[Some(10005_0)] [Some(i_58)] 
              #                    occupy s9 with temp_55_array_ptr_69
    li      s9, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with i_58
              #                    load from i_58 in mem

              #                    occupy s11 with i_58
    add     s11,sp,s11
    lw      s11,0(s11)
              #                    free s11
              #                    occupy a0 with _anonymous_of_temp_54_ptr2globl_69_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     s9,s9,a0
              #                    free a0
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,16
              #                    free s9
              #                          new_var temp_56_array_ele_69:i32 
              #                          temp_56_array_ele_69 = load temp_55_array_ptr_69:ptr->i32 
              #                    occupy s9 with temp_55_array_ptr_69
              #                    occupy a0 with temp_56_array_ele_69
    lw      a0,0(s9)
              #                    free a0
              #                    free s9
              #                          i_58 = i32 temp_56_array_ele_69 
              #                    occupy a0 with temp_56_array_ele_69
              #                    occupy s11 with i_58
    mv      s11, a0
              #                    free a0
              #                    free s11
              #                          jump label: while.head_68 
              #                    store to temp_55_array_ptr_69 in mem offset legal
    sd      s9,8(sp)
              #                    release s9 with temp_55_array_ptr_69
              #                    store to i_58 in mem offset_illegal
              #                    found literal reg Some(a5) already exist with 2521388_0
              #                    occupy a5 with 2521388_0
    add     a5,sp,a5
    sw      s11,0(a5)
              #                    free a5
              #                    release s11 with i_58
              #                    store to temp_54_ptr2globl_69 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_54_ptr2globl_69
              #                    store to temp_56_array_ele_69 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_56_array_ele_69
              #                    store to temp_53_arithop_69 in mem offset_illegal
              #                    occupy a0 with 40036_0
    li      a0, 40036
    add     a0,sp,a0
    sw      s8,0(a0)
              #                    free a0
              #                    release s8 with temp_53_arithop_69
              #                    store to y_69 in mem offset_illegal
              #                    occupy a1 with 40040_0
    li      a1, 40040
    add     a1,sp,a1
    sw      a7,0(a1)
              #                    free a1
              #                    release a7 with y_69
              #                    occupy s5 with _anonymous_of_temp_35_array_ele_61_0
              #                    load from temp_35_array_ele_61 in mem

              #                    occupy a2 with temp_35_array_ele_61
    li      a2, 1720972
    add     a2,sp,a2
    lw      s5,0(a2)
              #                    free a2
              #                    occupy s7 with _anonymous_of_temp_36__1374_0
              #                    load from temp_36__1374 in mem
              #                    occupy a3 with temp_36__1374
    li      a3, 1720971
    add     a3,sp,a3
    lb      s7,0(a3)
              #                    free a3
              #                    occupy a4 with _anonymous_of_temp_33_ptr2globl_61_0
              #                    load from temp_33_ptr2globl_61 in mem
              #                    occupy a5 with temp_33_ptr2globl_61
    li      a5, 1720988
    add     a5,sp,a5
    lw      a4,0(a5)
              #                    free a5
              #                    occupy s1 with _anonymous_of_temp_47_array_ptr_58_0
              #                    load from temp_47_array_ptr_58 in mem
              #                    occupy a6 with temp_47_array_ptr_58
    li      a6, 80088
    add     a6,sp,a6
    ld      s1,0(a6)
              #                    free a6
              #                    store to temp_35_array_ele_61 in mem offset_illegal
              #                    occupy a2 with 1720972_0
    li      a2, 1720972
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_35_array_ele_61
              #                    occupy a2 with _anonymous_of_temp_32_index_ptr_58_0
              #                    load from temp_32_index_ptr_58 in mem
              #                    occupy a7 with temp_32_index_ptr_58
    li      a7, 2521392
    add     a7,sp,a7
    ld      a2,0(a7)
              #                    free a7
              #                    occupy s6 with _anonymous_of_temp_48_array_ele_58_0
              #                    load from temp_48_array_ele_58 in mem

              #                    occupy s2 with temp_48_array_ele_58
    li      s2, 80084
    add     s2,sp,s2
    lw      s6,0(s2)
              #                    free s2
              #                    occupy a1 with _anonymous_of_d_56_0
              #                    load from d_56 in mem

              #                    occupy s3 with d_56
    li      s3, 2521400
    add     s3,sp,s3
    lw      a1,0(s3)
              #                    free s3
              #                    store to temp_33_ptr2globl_61 in mem offset_illegal
              #                    occupy a5 with 1720988_0
    li      a5, 1720988
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_33_ptr2globl_61
              #                    occupy a5 with _anonymous_of_temp_34_array_ptr_61_0
              #                    load from temp_34_array_ptr_61 in mem
              #                    occupy s4 with temp_34_array_ptr_61
    li      s4, 1720976
    add     s4,sp,s4
    ld      a5,0(s4)
              #                    free s4
              #                    occupy a0 with _anonymous_of_x_56_0
              #                    load from x_56 in mem

              #                    occupy s8 with x_56
    li      s8, 2521404
    add     s8,sp,s8
    lw      a0,0(s8)
              #                    free s8
              #                    store to x_56 in mem offset_illegal
              #                    occupy s8 with 2521404_0
    li      s8, 2521404
    add     s8,sp,s8
    sw      s8,0(s8)
              #                    free s8
              #                    release s8 with x_56
              #                    store to temp_47_array_ptr_58 in mem offset_illegal
              #                    occupy a6 with 80088_0
    li      a6, 80088
    add     a6,sp,a6
    sd      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_47_array_ptr_58
              #                    occupy a6 with _anonymous_of_i_58_0
              #                    load from i_58 in mem

              #                    occupy s8 with i_58
    li      s8, 2521388
    add     s8,sp,s8
    lw      a6,0(s8)
              #                    free s8
              #                    store to temp_32_index_ptr_58 in mem offset_illegal
              #                    occupy a7 with 2521392_0
    li      a7, 2521392
    add     a7,sp,a7
    sd      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_32_index_ptr_58
              #                    occupy a7 with _anonymous_of_temp_46_ptr2globl_58_0
              #                    load from temp_46_ptr2globl_58 in mem
              #                    occupy s9 with temp_46_ptr2globl_58
    li      s9, 80100
    add     s9,sp,s9
    lw      a7,0(s9)
              #                    free s9
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } |     a2:Freed { symidx: temp_32_index_ptr_58, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_61, tracked: true } |     a5:Freed { symidx: temp_34_array_ptr_61, tracked: true } |     a6:Freed { symidx: i_58, tracked: true } |     a7:Freed { symidx: temp_46_ptr2globl_58, tracked: true } |     s1:Freed { symidx: temp_47_array_ptr_58, tracked: true } |     s2:Freed { symidx: temp_49_cmp_67, tracked: true } |     s5:Freed { symidx: temp_35_array_ele_61, tracked: true } |     s6:Freed { symidx: temp_48_array_ele_58, tracked: true } |     s7:Freed { symidx: temp_36__1374, tracked: true } | 
              #                          label while.exit_68: 
.while.exit_68:
              #                    regtab 
              #                          Define LCA_0 [x_73, y_73] -> LCA_ret_0 
    .globl LCA
    .type LCA,@function
LCA:
              #                    mem layout:|ra_LCA:8 at 6643576|s0_LCA:8 at 6643568|x:4 at 6643564|y:4 at 6643560|temp_57_ptr2globl:40020 at 6603540|none:4 at 6603536|temp_58_array_ptr:8 at 6603528|temp_59_array_ele:4 at 6603524|temp_60_ptr2globl:40020 at 6563504|temp_61_array_ptr:8 at 6563496|temp_62_array_ele:4 at 6563492|temp_63_cmp:1 at 6563491|none:3 at 6563488|t:4 at 6563484|i:4 at 6563480|temp_64_ptr2globl:40020 at 6523460|none:4 at 6523456|temp_65_array_ptr:8 at 6523448|temp_66_array_ele:4 at 6523444|temp_67_ptr2globl:40020 at 6483424|temp_68_array_ptr:8 at 6483416|temp_69_array_ele:4 at 6483412|temp_70_cmp:1 at 6483411|none:3 at 6483408|temp_71_ptr2globl:40020 at 6443388|none:4 at 6443384|temp_72_array_ptr:8 at 6443376|temp_73_array_ele:4 at 6443372|temp_74_ptr2globl:800400 at 5642972|none:4 at 5642968|temp_75_array_ptr:8 at 5642960|temp_76_array_ele:4 at 5642956|temp_77_ptr2globl:40020 at 5602936|temp_78_array_ptr:8 at 5602928|temp_79_array_ele:4 at 5602924|temp_80_cmp:1 at 5602923|none:3 at 5602920|temp_81_ptr2globl:800400 at 4802520|temp_82_array_ptr:8 at 4802512|temp_83_array_ele:4 at 4802508|temp_84_:1 at 4802507|temp_85_logic:1 at 4802506|none:2 at 4802504|temp_86_ptr2globl:800400 at 4002104|temp_87_array_ptr:8 at 4002096|temp_88_array_ele:4 at 4002092|temp_89_arithop:4 at 4002088|temp_90_cmp:1 at 4002087|temp_91_cmp:1 at 4002086|none:2 at 4002084|temp_92_ptr2globl:800400 at 3201684|none:4 at 3201680|temp_93_array_ptr:8 at 3201672|temp_94_array_ele:4 at 3201668|temp_95_ptr2globl:800400 at 2401268|none:4 at 2401264|temp_96_array_ptr:8 at 2401256|temp_97_array_ele:4 at 2401252|temp_98_cmp:1 at 2401251|none:3 at 2401248|temp_99_ptr2globl:800400 at 1600848|temp_100_array_ptr:8 at 1600840|temp_101_array_ele:4 at 1600836|temp_102_ptr2globl:800400 at 800436|none:4 at 800432|temp_103_array_ptr:8 at 800424|temp_104_array_ele:4 at 800420|temp_105_arithop:4 at 800416|temp_106_ptr2globl:800400 at 16|temp_107_array_ptr:8 at 8|temp_108_array_ele:4 at 4|none:4 at 0
              #                    occupy a2 with -6643584_0
    li      a2, -6643584
    li      a2, -6643584
    add     sp,a2,sp
              #                    free a2
              #                    store to ra_LCA_0 in mem offset_illegal
              #                    occupy a3 with 6643576_0
    li      a3, 6643576
    add     a3,sp,a3
    sd      ra,0(a3)
              #                    free a3
              #                    store to s0_LCA_0 in mem offset_illegal
              #                    occupy a4 with 6643568_0
    li      a4, 6643568
    add     a4,sp,a4
    sd      s0,0(a4)
              #                    free a4
              #                    occupy a5 with 6643584_0
    li      a5, 6643584
    li      a5, 6643584
    add     s0,a5,sp
              #                    free a5
              #                          alloc Array:i32:[Some(10005_0)] temp_57_ptr2globl_76 
              #                          alloc ptr->i32 temp_58_array_ptr_76 
              #                          alloc i32 temp_59_array_ele_76 
              #                          alloc Array:i32:[Some(10005_0)] temp_60_ptr2globl_76 
              #                          alloc ptr->i32 temp_61_array_ptr_76 
              #                          alloc i32 temp_62_array_ele_76 
              #                          alloc i1 temp_63_cmp_76 
              #                          alloc i32 t_78 
              #                          alloc i32 i_75 
              #                          alloc Array:i32:[Some(10005_0)] temp_64_ptr2globl_83 
              #                          alloc ptr->i32 temp_65_array_ptr_83 
              #                          alloc i32 temp_66_array_ele_83 
              #                          alloc Array:i32:[Some(10005_0)] temp_67_ptr2globl_83 
              #                          alloc ptr->i32 temp_68_array_ptr_83 
              #                          alloc i32 temp_69_array_ele_83 
              #                          alloc i1 temp_70_cmp_83 
              #                          alloc Array:i32:[Some(10005_0)] temp_71_ptr2globl_86 
              #                          alloc ptr->i32 temp_72_array_ptr_86 
              #                          alloc i32 temp_73_array_ele_86 
              #                          alloc Array:i32:[Some(10005_0), Some(20_0)] temp_74_ptr2globl_86 
              #                          alloc ptr->i32 temp_75_array_ptr_86 
              #                          alloc i32 temp_76_array_ele_86 
              #                          alloc Array:i32:[Some(10005_0)] temp_77_ptr2globl_86 
              #                          alloc ptr->i32 temp_78_array_ptr_86 
              #                          alloc i32 temp_79_array_ele_86 
              #                          alloc i1 temp_80_cmp_86 
              #                          alloc Array:i32:[Some(10005_0), Some(20_0)] temp_81_ptr2globl_86 
              #                          alloc ptr->i32 temp_82_array_ptr_86 
              #                          alloc i32 temp_83_array_ele_86 
              #                          alloc i1 temp_84__86 
              #                          alloc i1 temp_85_logic_86 
              #                          alloc Array:i32:[Some(10005_0), Some(20_0)] temp_86_ptr2globl_86 
              #                          alloc ptr->i32 temp_87_array_ptr_86 
              #                          alloc i32 temp_88_array_ele_86 
              #                          alloc i32 temp_89_arithop_85 
              #                          alloc i1 temp_90_cmp_90 
              #                          alloc i1 temp_91_cmp_94 
              #                          alloc Array:i32:[Some(10005_0), Some(20_0)] temp_92_ptr2globl_97 
              #                          alloc ptr->i32 temp_93_array_ptr_97 
              #                          alloc i32 temp_94_array_ele_97 
              #                          alloc Array:i32:[Some(10005_0), Some(20_0)] temp_95_ptr2globl_97 
              #                          alloc ptr->i32 temp_96_array_ptr_97 
              #                          alloc i32 temp_97_array_ele_97 
              #                          alloc i1 temp_98_cmp_97 
              #                          alloc Array:i32:[Some(10005_0), Some(20_0)] temp_99_ptr2globl_99 
              #                          alloc ptr->i32 temp_100_array_ptr_99 
              #                          alloc i32 temp_101_array_ele_99 
              #                          alloc Array:i32:[Some(10005_0), Some(20_0)] temp_102_ptr2globl_99 
              #                          alloc ptr->i32 temp_103_array_ptr_99 
              #                          alloc i32 temp_104_array_ele_99 
              #                          alloc i32 temp_105_arithop_96 
              #                          alloc Array:i32:[Some(10005_0), Some(20_0)] temp_106_ptr2globl_75 
              #                          alloc ptr->i32 temp_107_array_ptr_75 
              #                          alloc i32 temp_108_array_ele_75 
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_57_ptr2globl_76:Array:i32:[Some(10005_0)] 
              #                          temp_57_ptr2globl_76 = load *dep_0:ptr->i32 
              #                    occupy a2 with *dep_0
              #                       load label dep as ptr to reg
    la      a2, dep
              #                    occupy reg a2 with *dep_0
              #                    occupy a3 with temp_57_ptr2globl_76
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_58_array_ptr_76:ptr->i32 
              #                          temp_58_array_ptr_76 = getelementptr temp_57_ptr2globl_76:Array:i32:[Some(10005_0)] [Some(y_73)] 
              #                    occupy a4 with temp_58_array_ptr_76
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with y_73
              #                    occupy a6 with _anonymous_of_temp_57_ptr2globl_76_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
              #                    occupy a7 with 6603540_0
    li      a7, 6603540
    li      a7, 6603540
    add     a4,a7,a4
              #                    free a7
              #                    free a4
              #                          new_var temp_59_array_ele_76:i32 
              #                          temp_59_array_ele_76 = load temp_58_array_ptr_76:ptr->i32 
              #                    occupy a4 with temp_58_array_ptr_76
              #                    occupy s1 with temp_59_array_ele_76
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          new_var temp_60_ptr2globl_76:Array:i32:[Some(10005_0)] 
              #                          temp_60_ptr2globl_76 = load *dep_0:ptr->i32 
              #                    occupy s2 with *dep_0
              #                       load label dep as ptr to reg
    la      s2, dep
              #                    occupy reg s2 with *dep_0
              #                    occupy s3 with temp_60_ptr2globl_76
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_61_array_ptr_76:ptr->i32 
              #                          temp_61_array_ptr_76 = getelementptr temp_60_ptr2globl_76:Array:i32:[Some(10005_0)] [Some(x_73)] 
              #                    occupy s4 with temp_61_array_ptr_76
    li      s4, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with x_73
              #                    occupy s5 with _anonymous_of_temp_60_ptr2globl_76_0
    mul     s5,a5,a0
              #                    free a5
              #                    free a0
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
    add     s4,s4,sp
              #                    occupy s6 with 6563504_0
    li      s6, 6563504
    li      s6, 6563504
    add     s4,s6,s4
              #                    free s6
              #                    free s4
              #                          new_var temp_62_array_ele_76:i32 
              #                          temp_62_array_ele_76 = load temp_61_array_ptr_76:ptr->i32 
              #                    occupy s4 with temp_61_array_ptr_76
              #                    occupy s7 with temp_62_array_ele_76
    lw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          new_var temp_63_cmp_76:i1 
              #                          temp_63_cmp_76 = icmp i32 Slt temp_62_array_ele_76, temp_59_array_ele_76 
              #                    occupy s7 with temp_62_array_ele_76
              #                    occupy s1 with temp_59_array_ele_76
              #                    occupy s8 with temp_63_cmp_76
    slt     s8,s7,s1
              #                    free s7
              #                    free s1
              #                    free s8
              #                          br i1 temp_63_cmp_76, label branch_true_77, label branch_false_77 
              #                    occupy s8 with temp_63_cmp_76
              #                    free s8
              #                    occupy s8 with temp_63_cmp_76
    bnez    s8, .branch_true_77
              #                    free s8
    j       .branch_false_77
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     s1:Freed { symidx: temp_59_array_ele_76, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } | 
              #                          label branch_true_77: 
.branch_true_77:
              #                          t_78 = i32 x_73 
              #                    occupy a0 with x_73
              #                    occupy a2 with t_78
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          x_73 = i32 y_73 
              #                    occupy a1 with y_73
              #                    occupy a0 with x_73
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          y_73 = i32 t_78 
              #                    occupy a2 with t_78
              #                    occupy a1 with y_73
    mv      a1, a2
              #                    free a2
              #                    free a1
              #                          jump label: branch_false_77 
              #                    store to t_78 in mem offset_illegal
              #                    occupy a2 with 6563484_0
    li      a2, 6563484
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with t_78
    j       .branch_false_77
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     s1:Freed { symidx: temp_59_array_ele_76, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } | 
              #                          label branch_false_77: 
.branch_false_77:
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     s1:Freed { symidx: temp_59_array_ele_76, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          i_75 = i32 19_0 
              #                    occupy a2 with i_75
    li      a2, 19
              #                    free a2
              #                          jump label: while.head_84 
    j       .while.head_84
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: i_75, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     s1:Freed { symidx: temp_59_array_ele_76, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } | 
              #                          label while.head_84: 
.while.head_84:
              #                          new_var temp_64_ptr2globl_83:Array:i32:[Some(10005_0)] 
              #                          temp_64_ptr2globl_83 = load *dep_0:ptr->i32 
              #                    occupy a5 with *dep_0
              #                       load label dep as ptr to reg
    la      a5, dep
              #                    occupy reg a5 with *dep_0
              #                    occupy a6 with temp_64_ptr2globl_83
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_65_array_ptr_83:ptr->i32 
              #                          temp_65_array_ptr_83 = getelementptr temp_64_ptr2globl_83:Array:i32:[Some(10005_0)] [Some(y_73)] 
              #                    occupy a7 with temp_65_array_ptr_83
    li      a7, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a1 with y_73
              #                    occupy s5 with _anonymous_of_temp_64_ptr2globl_83_0
    mul     s5,s2,a1
              #                    free s2
              #                    free a1
    add     a7,a7,s5
              #                    free s5
    slli a7,a7,2
    add     a7,a7,sp
              #                    occupy s6 with 6523460_0
    li      s6, 6523460
    li      s6, 6523460
    add     a7,s6,a7
              #                    free s6
              #                    free a7
              #                          new_var temp_66_array_ele_83:i32 
              #                          temp_66_array_ele_83 = load temp_65_array_ptr_83:ptr->i32 
              #                    occupy a7 with temp_65_array_ptr_83
              #                    occupy s9 with temp_66_array_ele_83
    lw      s9,0(a7)
              #                    free s9
              #                    free a7
              #                          new_var temp_67_ptr2globl_83:Array:i32:[Some(10005_0)] 
              #                          temp_67_ptr2globl_83 = load *dep_0:ptr->i32 
              #                    occupy s10 with *dep_0
              #                       load label dep as ptr to reg
    la      s10, dep
              #                    occupy reg s10 with *dep_0
              #                    occupy s11 with temp_67_ptr2globl_83
    lw      s11,0(s10)
              #                    free s11
              #                    free s10
              #                          new_var temp_68_array_ptr_83:ptr->i32 
              #                          temp_68_array_ptr_83 = getelementptr temp_67_ptr2globl_83:Array:i32:[Some(10005_0)] [Some(x_73)] 
              #                    occupy a5 with temp_68_array_ptr_83
    li      a5, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy a0 with x_73
              #                    occupy s5 with _anonymous_of_temp_67_ptr2globl_83_0
    mul     s5,s2,a0
              #                    free s2
              #                    free a0
    add     a5,a5,s5
              #                    free s5
    slli a5,a5,2
    add     a5,a5,sp
              #                    occupy s2 with 6483424_0
    li      s2, 6483424
    li      s2, 6483424
    add     a5,s2,a5
              #                    free s2
              #                    free a5
              #                          new_var temp_69_array_ele_83:i32 
              #                          temp_69_array_ele_83 = load temp_68_array_ptr_83:ptr->i32 
              #                    occupy a5 with temp_68_array_ptr_83
              #                    occupy s2 with temp_69_array_ele_83
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_70_cmp_83:i1 
              #                          temp_70_cmp_83 = icmp i32 Sgt temp_69_array_ele_83, temp_66_array_ele_83 
              #                    occupy s2 with temp_69_array_ele_83
              #                    occupy s9 with temp_66_array_ele_83
              #                    occupy s5 with temp_70_cmp_83
    slt     s5,s9,s2
              #                    free s2
              #                    free s9
              #                    free s5
              #                          br i1 temp_70_cmp_83, label while.body_84, label while.exit_84 
              #                    occupy s5 with temp_70_cmp_83
              #                    free s5
              #                    occupy s5 with temp_70_cmp_83
    bnez    s5, .while.body_84
              #                    free s5
    j       .while.exit_84
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: i_75, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s1:Freed { symidx: temp_59_array_ele_76, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label while.body_84: 
.while.body_84:
              #                          new_var temp_71_ptr2globl_86:Array:i32:[Some(10005_0)] 
              #                          temp_71_ptr2globl_86 = load *dep_0:ptr->i32 
              #                    occupy s6 with *dep_0
              #                       load label dep as ptr to reg
    la      s6, dep
              #                    occupy reg s6 with *dep_0
              #                    occupy s10 with temp_71_ptr2globl_86
    lw      s10,0(s6)
              #                    free s10
              #                    free s6
              #                          new_var temp_72_array_ptr_86:ptr->i32 
              #                          temp_72_array_ptr_86 = getelementptr temp_71_ptr2globl_86:Array:i32:[Some(10005_0)] [Some(y_73)] 
              #                    occupy s6 with temp_72_array_ptr_86
    li      s6, 0
              #                    store to x_73 in mem offset_illegal
              #                    occupy a0 with 6643564_0
    li      a0, 6643564
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with x_73
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with y_73
              #                    store to i_75 in mem offset_illegal
              #                    occupy a2 with 6563480_0
    li      a2, 6563480
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_75
              #                    occupy a2 with _anonymous_of_temp_71_ptr2globl_86_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s6,s6,a2
              #                    free a2
    slli s6,s6,2
    add     s6,s6,sp
              #                    occupy a0 with 6443388_0
    li      a0, 6443388
    li      a0, 6443388
    add     s6,a0,s6
              #                    free a0
              #                    free s6
              #                          new_var temp_73_array_ele_86:i32 
              #                          temp_73_array_ele_86 = load temp_72_array_ptr_86:ptr->i32 
              #                    occupy s6 with temp_72_array_ptr_86
              #                    occupy a0 with temp_73_array_ele_86
    lw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                          new_var temp_74_ptr2globl_86:Array:i32:[Some(10005_0), Some(20_0)] 
              #                          temp_74_ptr2globl_86 = load *f_0:ptr->Array:i32:[Some(20_0)] 
              #                    occupy a2 with *f_0
              #                       load label f as ptr to reg
    la      a2, f
              #                    occupy reg a2 with *f_0
              #                    store to temp_73_array_ele_86 in mem offset_illegal
              #                    occupy a0 with 6443372_0
    li      a0, 6443372
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_73_array_ele_86
              #                    occupy a0 with temp_74_ptr2globl_86
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_75_array_ptr_86:ptr->i32 
              #                          temp_75_array_ptr_86 = getelementptr temp_74_ptr2globl_86:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_73), Some(i_75)] 
              #                    occupy a2 with temp_75_array_ptr_86
    li      a2, 0
              #                    store to temp_74_ptr2globl_86 in mem offset_illegal
              #                    occupy a0 with 5642972_0
    li      a0, 5642972
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_74_ptr2globl_86
              #                    occupy a0 with 20_0
    li      a0, 20
              #                    store to y_73 in mem offset_illegal
              #                    occupy a1 with 6643560_0
    li      a1, 6643560
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with y_73
              #                    occupy a1 with x_73
              #                    load from x_73 in mem

              #                    occupy a1 with x_73
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_57_ptr2globl_76 in mem offset_illegal
              #                    occupy a3 with 6603540_0
    li      a3, 6603540
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_57_ptr2globl_76
              #                    occupy a3 with _anonymous_of_temp_74_ptr2globl_86_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with i_75
              #                    load from i_75 in mem

              #                    occupy a3 with i_75
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to x_73 in mem offset_illegal
              #                    occupy a1 with 6643564_0
    li      a1, 6643564
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with x_73
              #                    occupy a1 with _anonymous_of_temp_74_ptr2globl_86_0
    mul     a1,a0,a3
              #                    free a0
              #                    free a3
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a0 with 5642972_0
    li      a0, 5642972
    li      a0, 5642972
    add     a2,a0,a2
              #                    free a0
              #                    free a2
              #                          new_var temp_76_array_ele_86:i32 
              #                          temp_76_array_ele_86 = load temp_75_array_ptr_86:ptr->i32 
              #                    occupy a2 with temp_75_array_ptr_86
              #                    occupy a0 with temp_76_array_ele_86
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_77_ptr2globl_86:Array:i32:[Some(10005_0)] 
              #                          temp_77_ptr2globl_86 = load *dep_0:ptr->i32 
              #                    occupy a1 with *dep_0
              #                       load label dep as ptr to reg
    la      a1, dep
              #                    occupy reg a1 with *dep_0
              #                    store to temp_76_array_ele_86 in mem offset_illegal
              #                    occupy a0 with 5642956_0
    li      a0, 5642956
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_76_array_ele_86
              #                    occupy a0 with temp_77_ptr2globl_86
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_78_array_ptr_86:ptr->i32 
              #                          temp_78_array_ptr_86 = getelementptr temp_77_ptr2globl_86:Array:i32:[Some(10005_0)] [Some(temp_76_array_ele_86)] 
              #                    occupy a1 with temp_78_array_ptr_86
    li      a1, 0
              #                    store to temp_77_ptr2globl_86 in mem offset_illegal
              #                    occupy a0 with 5602936_0
    li      a0, 5602936
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_77_ptr2globl_86
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_75_array_ptr_86 in mem offset_illegal
              #                    occupy a2 with 5642960_0
    li      a2, 5642960
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_75_array_ptr_86
              #                    occupy a2 with temp_76_array_ele_86
              #                    load from temp_76_array_ele_86 in mem

              #                    occupy a2 with temp_76_array_ele_86
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to i_75 in mem offset_illegal
              #                    occupy a3 with 6563480_0
    li      a3, 6563480
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with i_75
              #                    occupy a3 with _anonymous_of_temp_77_ptr2globl_86_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
              #                    occupy a0 with 5602936_0
    li      a0, 5602936
    li      a0, 5602936
    add     a1,a0,a1
              #                    free a0
              #                    free a1
              #                          new_var temp_79_array_ele_86:i32 
              #                          temp_79_array_ele_86 = load temp_78_array_ptr_86:ptr->i32 
              #                    occupy a1 with temp_78_array_ptr_86
              #                    occupy a0 with temp_79_array_ele_86
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_80_cmp_86:i1 
              #                          temp_80_cmp_86 = icmp i32 Sge temp_79_array_ele_86, temp_73_array_ele_86 
              #                    occupy a0 with temp_79_array_ele_86
              #                    occupy a3 with temp_73_array_ele_86
              #                    load from temp_73_array_ele_86 in mem

              #                    occupy a3 with temp_73_array_ele_86
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to temp_78_array_ptr_86 in mem offset_illegal
              #                    occupy a1 with 5602928_0
    li      a1, 5602928
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_78_array_ptr_86
              #                    occupy a1 with temp_80_cmp_86
    slt     a1,a0,a3
    xori    a1,a1,1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          new_var temp_81_ptr2globl_86:Array:i32:[Some(10005_0), Some(20_0)] 
              #                          temp_81_ptr2globl_86 = load *f_0:ptr->Array:i32:[Some(20_0)] 
              #                    store to temp_79_array_ele_86 in mem offset_illegal
              #                    occupy a0 with 5602924_0
    li      a0, 5602924
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_79_array_ele_86
              #                    occupy a0 with *f_0
              #                       load label f as ptr to reg
    la      a0, f
              #                    occupy reg a0 with *f_0
              #                    store to temp_80_cmp_86 in mem offset_illegal
              #                    occupy a1 with 5602923_0
    li      a1, 5602923
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_80_cmp_86
              #                    occupy a1 with temp_81_ptr2globl_86
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_82_array_ptr_86:ptr->i32 
              #                          temp_82_array_ptr_86 = getelementptr temp_81_ptr2globl_86:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_73), Some(i_75)] 
              #                    occupy a0 with temp_82_array_ptr_86
    li      a0, 0
              #                    store to temp_81_ptr2globl_86 in mem offset_illegal
              #                    occupy a1 with 4802520_0
    li      a1, 4802520
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_81_ptr2globl_86
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    store to temp_76_array_ele_86 in mem offset_illegal
              #                    occupy a2 with 5642956_0
    li      a2, 5642956
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_76_array_ele_86
              #                    occupy a2 with x_73
              #                    load from x_73 in mem

              #                    occupy a2 with x_73
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_73_array_ele_86 in mem offset_illegal
              #                    occupy a3 with 6443372_0
    li      a3, 6443372
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_73_array_ele_86
              #                    occupy a3 with _anonymous_of_temp_81_ptr2globl_86_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with i_75
              #                    load from i_75 in mem

              #                    occupy a3 with i_75
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to x_73 in mem offset_illegal
              #                    occupy a2 with 6643564_0
    li      a2, 6643564
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with x_73
              #                    occupy a2 with _anonymous_of_temp_81_ptr2globl_86_0
    mul     a2,a1,a3
              #                    free a1
              #                    free a3
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 4802520_0
    li      a1, 4802520
    li      a1, 4802520
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_83_array_ele_86:i32 
              #                          temp_83_array_ele_86 = load temp_82_array_ptr_86:ptr->i32 
              #                    occupy a0 with temp_82_array_ptr_86
              #                    occupy a1 with temp_83_array_ele_86
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_84__86:i1 
              #                          temp_84__86 = icmp i32 Ne temp_83_array_ele_86, 0_0 
              #                    occupy a1 with temp_83_array_ele_86
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    store to temp_82_array_ptr_86 in mem offset_illegal
              #                    occupy a0 with 4802512_0
    li      a0, 4802512
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_82_array_ptr_86
              #                    occupy a0 with temp_84__86
    xor     a0,a1,a2
    snez    a0, a0
              #                    free a1
              #                    free a2
              #                    free a0
              #                          new_var temp_85_logic_86:i1 
              #                          temp_85_logic_86 = And i1 temp_84__86, temp_80_cmp_86 
              #                    occupy a0 with temp_84__86
              #                    occupy a2 with temp_80_cmp_86
              #                    load from temp_80_cmp_86 in mem
              #                    occupy a2 with temp_80_cmp_86
    add     a2,sp,a2
    lb      a2,0(a2)
              #                    free a2
              #                    store to temp_83_array_ele_86 in mem offset_illegal
              #                    occupy a1 with 4802508_0
    li      a1, 4802508
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_83_array_ele_86
              #                    occupy a1 with temp_85_logic_86
    and     a1,a0,a2
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_85_logic_86, label branch_true_87, label branch_false_87 
              #                    occupy a1 with temp_85_logic_86
              #                    free a1
              #                    store to temp_59_array_ele_76 in mem offset_illegal
              #                    occupy s1 with 6603524_0
    li      s1, 6603524
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_59_array_ele_76
              #                    occupy a1 with temp_85_logic_86
    bnez    a1, .branch_true_87
              #                    free a1
    j       .branch_false_87
              #                    regtab     a0:Freed { symidx: temp_84__86, tracked: true } |     a1:Freed { symidx: temp_85_logic_86, tracked: true } |     a2:Freed { symidx: temp_80_cmp_86, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s10:Freed { symidx: temp_71_ptr2globl_86, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_72_array_ptr_86, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label branch_true_87: 
.branch_true_87:
              #                          new_var temp_86_ptr2globl_86:Array:i32:[Some(10005_0), Some(20_0)] 
              #                          temp_86_ptr2globl_86 = load *f_0:ptr->Array:i32:[Some(20_0)] 
              #                    occupy s1 with *f_0
              #                       load label f as ptr to reg
    la      s1, f
              #                    occupy reg s1 with *f_0
              #                    store to temp_84__86 in mem offset_illegal
              #                    occupy a0 with 4802507_0
    li      a0, 4802507
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84__86
              #                    occupy a0 with temp_86_ptr2globl_86
    lw      a0,0(s1)
              #                    free a0
              #                    free s1
              #                          new_var temp_87_array_ptr_86:ptr->i32 
              #                          temp_87_array_ptr_86 = getelementptr temp_86_ptr2globl_86:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_73), Some(i_75)] 
              #                    occupy s1 with temp_87_array_ptr_86
    li      s1, 0
              #                    store to temp_86_ptr2globl_86 in mem offset_illegal
              #                    occupy a0 with 4002104_0
    li      a0, 4002104
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_86_ptr2globl_86
              #                    occupy a0 with 20_0
    li      a0, 20
              #                    store to temp_85_logic_86 in mem offset_illegal
              #                    occupy a1 with 4802506_0
    li      a1, 4802506
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_85_logic_86
              #                    occupy a1 with x_73
              #                    load from x_73 in mem

              #                    occupy a1 with x_73
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_80_cmp_86 in mem offset_illegal
              #                    occupy a2 with 5602923_0
    li      a2, 5602923
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_80_cmp_86
              #                    occupy a2 with _anonymous_of_temp_86_ptr2globl_86_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s1,s1,a2
              #                    free a2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with i_75
              #                    occupy a2 with _anonymous_of_temp_86_ptr2globl_86_0
    mul     a2,a0,a3
              #                    free a0
              #                    free a3
    add     s1,s1,a2
              #                    free a2
    slli s1,s1,2
    add     s1,s1,sp
              #                    occupy a0 with 4002104_0
    li      a0, 4002104
    li      a0, 4002104
    add     s1,a0,s1
              #                    free a0
              #                    free s1
              #                          new_var temp_88_array_ele_86:i32 
              #                          temp_88_array_ele_86 = load temp_87_array_ptr_86:ptr->i32 
              #                    occupy s1 with temp_87_array_ptr_86
              #                    occupy a0 with temp_88_array_ele_86
    lw      a0,0(s1)
              #                    free a0
              #                    free s1
              #                          x_73 = i32 temp_88_array_ele_86 
              #                    occupy a0 with temp_88_array_ele_86
              #                    occupy a1 with x_73
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: branch_false_87 
              #                    store to temp_87_array_ptr_86 in mem offset_illegal
              #                    occupy s1 with 4002096_0
    li      s1, 4002096
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_87_array_ptr_86
              #                    store to x_73 in mem offset_illegal
              #                    occupy a1 with 6643564_0
    li      a1, 6643564
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with x_73
              #                    store to temp_88_array_ele_86 in mem offset_illegal
              #                    occupy a0 with 4002092_0
    li      a0, 4002092
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_88_array_ele_86
              #                    occupy a2 with _anonymous_of_temp_80_cmp_86_0
              #                    load from temp_80_cmp_86 in mem
              #                    occupy a0 with temp_80_cmp_86
    li      a0, 5602923
    add     a0,sp,a0
    lb      a2,0(a0)
              #                    free a0
              #                    occupy a1 with _anonymous_of_temp_85_logic_86_0
              #                    load from temp_85_logic_86 in mem
              #                    occupy s1 with temp_85_logic_86
    li      s1, 4802506
    add     s1,sp,s1
    lb      a1,0(s1)
              #                    free s1
              #                    store to temp_80_cmp_86 in mem offset_illegal
              #                    occupy a0 with 5602923_0
    li      a0, 5602923
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_80_cmp_86
              #                    occupy a0 with _anonymous_of_temp_84__86_0
              #                    load from temp_84__86 in mem
              #                    store to i_75 in mem offset_illegal
              #                    occupy a3 with 6563480_0
    li      a3, 6563480
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with i_75
              #                    occupy a3 with temp_84__86
    li      a3, 4802507
    add     a3,sp,a3
    lb      a0,0(a3)
              #                    free a3
    j       .branch_false_87
              #                    regtab     a0:Freed { symidx: temp_84__86, tracked: true } |     a1:Freed { symidx: temp_85_logic_86, tracked: true } |     a2:Freed { symidx: temp_80_cmp_86, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s10:Freed { symidx: temp_71_ptr2globl_86, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_72_array_ptr_86, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label branch_false_87: 
.branch_false_87:
              #                    regtab     a0:Freed { symidx: temp_84__86, tracked: true } |     a1:Freed { symidx: temp_85_logic_86, tracked: true } |     a2:Freed { symidx: temp_80_cmp_86, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s10:Freed { symidx: temp_71_ptr2globl_86, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_72_array_ptr_86, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_89_arithop_85:i32 
              #                          temp_89_arithop_85 = Sub i32 i_75, 1_0 
              #                    occupy a3 with i_75
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    store to temp_84__86 in mem offset_illegal
              #                    occupy a0 with 4802507_0
    li      a0, 4802507
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84__86
              #                    occupy a0 with temp_89_arithop_85
              #                    regtab:    a0:Occupied { symidx: temp_89_arithop_85, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_85_logic_86, tracked: true } |     a2:Freed { symidx: temp_80_cmp_86, tracked: true } |     a3:Occupied { symidx: i_75, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s10:Freed { symidx: temp_71_ptr2globl_86, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_72_array_ptr_86, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 


    sub     a0,a3,s1
              #                    free a3
              #                    free s1
              #                    free a0
              #                          i_75 = i32 temp_89_arithop_85 
              #                    occupy a0 with temp_89_arithop_85
              #                    occupy a3 with i_75
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          jump label: while.head_84 
              #                    store to temp_71_ptr2globl_86 in mem offset_illegal
              #                    occupy s1 with 6443388_0
    li      s1, 6443388
    add     s1,sp,s1
    sw      s10,0(s1)
              #                    free s1
              #                    release s10 with temp_71_ptr2globl_86
              #                    store to temp_65_array_ptr_83 in mem offset_illegal
              #                    occupy a7 with 6523448_0
    li      a7, 6523448
    add     a7,sp,a7
    sd      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_65_array_ptr_83
              #                    store to i_75 in mem offset_illegal
              #                    occupy a3 with 6563480_0
    li      a3, 6563480
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with i_75
              #                    store to temp_69_array_ele_83 in mem offset_illegal
              #                    occupy a3 with 6483412_0
    li      a3, 6483412
    add     a3,sp,a3
    sw      s2,0(a3)
              #                    free a3
              #                    release s2 with temp_69_array_ele_83
              #                    store to temp_64_ptr2globl_83 in mem offset_illegal
              #                    occupy a6 with 6523460_0
    li      a6, 6523460
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_64_ptr2globl_83
              #                    store to temp_80_cmp_86 in mem offset_illegal
              #                    occupy a2 with 5602923_0
    li      a2, 5602923
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_80_cmp_86
              #                    store to temp_85_logic_86 in mem offset_illegal
              #                    occupy a1 with 4802506_0
    li      a1, 4802506
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_85_logic_86
              #                    store to temp_67_ptr2globl_83 in mem offset_illegal
              #                    occupy a1 with 6483424_0
    li      a1, 6483424
    add     a1,sp,a1
    sw      s11,0(a1)
              #                    free a1
              #                    release s11 with temp_67_ptr2globl_83
              #                    store to temp_70_cmp_83 in mem offset_illegal
              #                    occupy a2 with 6483411_0
    li      a2, 6483411
    add     a2,sp,a2
    sb      s5,0(a2)
              #                    free a2
              #                    release s5 with temp_70_cmp_83
              #                    store to temp_89_arithop_85 in mem offset_illegal
              #                    occupy a0 with 4002088_0
    li      a0, 4002088
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_89_arithop_85
              #                    store to temp_66_array_ele_83 in mem offset_illegal
              #                    occupy a0 with 6523444_0
    li      a0, 6523444
    add     a0,sp,a0
    sw      s9,0(a0)
              #                    free a0
              #                    release s9 with temp_66_array_ele_83
              #                    store to temp_68_array_ptr_83 in mem offset_illegal
              #                    occupy a5 with 6483416_0
    li      a5, 6483416
    add     a5,sp,a5
    sd      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_68_array_ptr_83
              #                    store to temp_72_array_ptr_86 in mem offset_illegal
              #                    occupy a5 with 6443376_0
    li      a5, 6443376
    add     a5,sp,a5
    sd      s6,0(a5)
              #                    free a5
              #                    release s6 with temp_72_array_ptr_86
              #                    occupy s1 with _anonymous_of_temp_59_array_ele_76_0
              #                    load from temp_59_array_ele_76 in mem

              #                    occupy a6 with temp_59_array_ele_76
    li      a6, 6603524
    add     a6,sp,a6
    lw      s1,0(a6)
              #                    free a6
              #                    occupy a3 with _anonymous_of_temp_57_ptr2globl_76_0
              #                    load from temp_57_ptr2globl_76 in mem
              #                    occupy a7 with temp_57_ptr2globl_76
    li      a7, 6603540
    add     a7,sp,a7
    lw      a3,0(a7)
              #                    free a7
              #                    store to temp_59_array_ele_76 in mem offset_illegal
              #                    occupy a6 with 6603524_0
    li      a6, 6603524
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_59_array_ele_76
              #                    occupy a2 with _anonymous_of_i_75_0
              #                    load from i_75 in mem

              #                    occupy a6 with i_75
    li      a6, 6563480
    add     a6,sp,a6
    lw      a2,0(a6)
              #                    free a6
              #                    occupy a1 with _anonymous_of_y_73_0
              #                    load from y_73 in mem

              #                    occupy s2 with y_73
    li      s2, 6643560
    add     s2,sp,s2
    lw      a1,0(s2)
              #                    free s2
              #                    occupy a0 with _anonymous_of_x_73_0
              #                    load from x_73 in mem

              #                    occupy s5 with x_73
    li      s5, 6643564
    add     s5,sp,s5
    lw      a0,0(s5)
              #                    free s5
    j       .while.head_84
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: i_75, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s1:Freed { symidx: temp_59_array_ele_76, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label while.exit_84: 
.while.exit_84:
              #                          new_var temp_90_cmp_90:i1 
              #                          temp_90_cmp_90 = icmp i32 Eq x_73, y_73 
              #                    occupy a0 with x_73
              #                    occupy a1 with y_73
              #                    occupy s6 with temp_90_cmp_90
    xor     s6,a0,a1
    seqz    s6, s6
              #                    free a0
              #                    free a1
              #                    free s6
              #                          br i1 temp_90_cmp_90, label branch_true_91, label branch_false_91 
              #                    occupy s6 with temp_90_cmp_90
              #                    free s6
              #                    occupy s6 with temp_90_cmp_90
    bnez    s6, .branch_true_91
              #                    free s6
    j       .branch_false_91
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: i_75, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s1:Freed { symidx: temp_59_array_ele_76, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_90_cmp_90, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label branch_true_91: 
.branch_true_91:
              #                          ret x_73 
              #                    load from ra_LCA_0 in mem
              #                    occupy s10 with ra_LCA_0
    li      s10, 6643576
    add     s10,sp,s10
    ld      ra,0(s10)
              #                    free s10
              #                    load from s0_LCA_0 in mem
              #                    store to x_73 in mem offset_illegal
              #                    occupy a0 with 6643564_0
    li      a0, 6643564
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with x_73
              #                    occupy a0 with s0_LCA_0
    li      a0, 6643568
    add     a0,sp,a0
    ld      s0,0(a0)
              #                    free a0
              #                    store to s0_LCA_0 in mem offset_illegal
              #                    occupy a0 with 6643568_0
    li      a0, 6643568
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with s0_LCA_0
              #                    occupy a0 with x_73
              #                    load from x_73 in mem

              #                    store to y_73 in mem offset_illegal
              #                    occupy a1 with 6643560_0
    li      a1, 6643560
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with y_73
              #                    occupy a1 with x_73
    li      a1, 6643564
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    store to x_73 in mem offset_illegal
              #                    occupy a1 with 6643564_0
    li      a1, 6643564
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with x_73
              #                    occupy a1 with 6643584_0
    li      a1, 6643584
    li      a1, 6643584
    add     sp,a1,sp
              #                    free a1
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: i_75, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s1:Freed { symidx: temp_59_array_ele_76, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_90_cmp_90, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label branch_false_91: 
.branch_false_91:
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: i_75, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s1:Freed { symidx: temp_59_array_ele_76, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_90_cmp_90, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          i_75 = i32 19_0 
              #                    occupy a2 with i_75
    li      a2, 19
              #                    free a2
              #                          jump label: while.head_95 
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: i_75, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s1:Freed { symidx: temp_59_array_ele_76, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_90_cmp_90, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label while.head_95: 
.while.head_95:
              #                          new_var temp_91_cmp_94:i1 
              #                          temp_91_cmp_94 = icmp i32 Sge i_75, 0_0 
              #                    occupy a2 with i_75
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    store to x_73 in mem offset_illegal
              #                    occupy a0 with 6643564_0
    li      a0, 6643564
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with x_73
              #                    occupy a0 with temp_91_cmp_94
    slt     a0,a2,s10
    xori    a0,a0,1
              #                    free a2
              #                    free s10
              #                    free a0
              #                          br i1 temp_91_cmp_94, label while.body_95, label while.exit_95 
              #                    occupy a0 with temp_91_cmp_94
              #                    free a0
              #                    occupy a0 with temp_91_cmp_94
    bnez    a0, .while.body_95
              #                    free a0
    j       .while.exit_95
              #                    regtab     a0:Freed { symidx: temp_91_cmp_94, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: i_75, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s1:Freed { symidx: temp_59_array_ele_76, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_90_cmp_90, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label while.body_95: 
.while.body_95:
              #                          new_var temp_92_ptr2globl_97:Array:i32:[Some(10005_0), Some(20_0)] 
              #                          temp_92_ptr2globl_97 = load *f_0:ptr->Array:i32:[Some(20_0)] 
              #                    occupy s10 with *f_0
              #                       load label f as ptr to reg
    la      s10, f
              #                    occupy reg s10 with *f_0
              #                    store to temp_91_cmp_94 in mem offset_illegal
              #                    occupy a0 with 4002086_0
    li      a0, 4002086
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_91_cmp_94
              #                    occupy a0 with temp_92_ptr2globl_97
    lw      a0,0(s10)
              #                    free a0
              #                    free s10
              #                          new_var temp_93_array_ptr_97:ptr->i32 
              #                          temp_93_array_ptr_97 = getelementptr temp_92_ptr2globl_97:Array:i32:[Some(10005_0), Some(20_0)] [Some(y_73), Some(i_75)] 
              #                    occupy s10 with temp_93_array_ptr_97
    li      s10, 0
              #                    store to temp_92_ptr2globl_97 in mem offset_illegal
              #                    occupy a0 with 3201684_0
    li      a0, 3201684
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_92_ptr2globl_97
              #                    occupy a0 with 20_0
    li      a0, 20
              #                    occupy a1 with y_73
              #                    store to i_75 in mem offset_illegal
              #                    occupy a2 with 6563480_0
    li      a2, 6563480
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_75
              #                    occupy a2 with _anonymous_of_temp_92_ptr2globl_97_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s10,s10,a2
              #                    free a2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with i_75
              #                    load from i_75 in mem

              #                    occupy a2 with i_75
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to y_73 in mem offset_illegal
              #                    occupy a1 with 6643560_0
    li      a1, 6643560
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with y_73
              #                    occupy a1 with _anonymous_of_temp_92_ptr2globl_97_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     s10,s10,a1
              #                    free a1
    slli s10,s10,2
    add     s10,s10,sp
              #                    occupy a0 with 3201684_0
    li      a0, 3201684
    li      a0, 3201684
    add     s10,a0,s10
              #                    free a0
              #                    free s10
              #                          new_var temp_94_array_ele_97:i32 
              #                          temp_94_array_ele_97 = load temp_93_array_ptr_97:ptr->i32 
              #                    occupy s10 with temp_93_array_ptr_97
              #                    occupy a0 with temp_94_array_ele_97
    lw      a0,0(s10)
              #                    free a0
              #                    free s10
              #                          new_var temp_95_ptr2globl_97:Array:i32:[Some(10005_0), Some(20_0)] 
              #                          temp_95_ptr2globl_97 = load *f_0:ptr->Array:i32:[Some(20_0)] 
              #                    occupy a1 with *f_0
              #                       load label f as ptr to reg
    la      a1, f
              #                    occupy reg a1 with *f_0
              #                    store to temp_94_array_ele_97 in mem offset_illegal
              #                    occupy a0 with 3201668_0
    li      a0, 3201668
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_94_array_ele_97
              #                    occupy a0 with temp_95_ptr2globl_97
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_96_array_ptr_97:ptr->i32 
              #                          temp_96_array_ptr_97 = getelementptr temp_95_ptr2globl_97:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_73), Some(i_75)] 
              #                    occupy a1 with temp_96_array_ptr_97
    li      a1, 0
              #                    store to temp_95_ptr2globl_97 in mem offset_illegal
              #                    occupy a0 with 2401268_0
    li      a0, 2401268
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_95_ptr2globl_97
              #                    occupy a0 with 20_0
    li      a0, 20
              #                    store to i_75 in mem offset_illegal
              #                    occupy a2 with 6563480_0
    li      a2, 6563480
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_75
              #                    occupy a2 with x_73
              #                    load from x_73 in mem

              #                    occupy a2 with x_73
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_57_ptr2globl_76 in mem offset_illegal
              #                    occupy a3 with 6603540_0
    li      a3, 6603540
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_57_ptr2globl_76
              #                    occupy a3 with _anonymous_of_temp_95_ptr2globl_97_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with i_75
              #                    load from i_75 in mem

              #                    occupy a3 with i_75
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to x_73 in mem offset_illegal
              #                    occupy a2 with 6643564_0
    li      a2, 6643564
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with x_73
              #                    occupy a2 with _anonymous_of_temp_95_ptr2globl_97_0
    mul     a2,a0,a3
              #                    free a0
              #                    free a3
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
              #                    occupy a0 with 2401268_0
    li      a0, 2401268
    li      a0, 2401268
    add     a1,a0,a1
              #                    free a0
              #                    free a1
              #                          new_var temp_97_array_ele_97:i32 
              #                          temp_97_array_ele_97 = load temp_96_array_ptr_97:ptr->i32 
              #                    occupy a1 with temp_96_array_ptr_97
              #                    occupy a0 with temp_97_array_ele_97
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_98_cmp_97:i1 
              #                          temp_98_cmp_97 = icmp i32 Ne temp_97_array_ele_97, temp_94_array_ele_97 
              #                    occupy a0 with temp_97_array_ele_97
              #                    occupy a2 with temp_94_array_ele_97
              #                    load from temp_94_array_ele_97 in mem

              #                    occupy a2 with temp_94_array_ele_97
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_96_array_ptr_97 in mem offset_illegal
              #                    occupy a1 with 2401256_0
    li      a1, 2401256
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_96_array_ptr_97
              #                    occupy a1 with temp_98_cmp_97
    xor     a1,a0,a2
    snez    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_98_cmp_97, label branch_true_98, label branch_false_98 
              #                    occupy a1 with temp_98_cmp_97
              #                    free a1
              #                    store to temp_59_array_ele_76 in mem offset_illegal
              #                    occupy s1 with 6603524_0
    li      s1, 6603524
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_59_array_ele_76
              #                    occupy a1 with temp_98_cmp_97
    bnez    a1, .branch_true_98
              #                    free a1
    j       .branch_false_98
              #                    regtab     a0:Freed { symidx: temp_97_array_ele_97, tracked: true } |     a1:Freed { symidx: temp_98_cmp_97, tracked: true } |     a2:Freed { symidx: temp_94_array_ele_97, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s10:Freed { symidx: temp_93_array_ptr_97, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_90_cmp_90, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label branch_true_98: 
.branch_true_98:
              #                          new_var temp_99_ptr2globl_99:Array:i32:[Some(10005_0), Some(20_0)] 
              #                          temp_99_ptr2globl_99 = load *f_0:ptr->Array:i32:[Some(20_0)] 
              #                    occupy s1 with *f_0
              #                       load label f as ptr to reg
    la      s1, f
              #                    occupy reg s1 with *f_0
              #                    store to temp_97_array_ele_97 in mem offset_illegal
              #                    occupy a0 with 2401252_0
    li      a0, 2401252
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_97_array_ele_97
              #                    occupy a0 with temp_99_ptr2globl_99
    lw      a0,0(s1)
              #                    free a0
              #                    free s1
              #                          new_var temp_100_array_ptr_99:ptr->i32 
              #                          temp_100_array_ptr_99 = getelementptr temp_99_ptr2globl_99:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_73), Some(i_75)] 
              #                    occupy s1 with temp_100_array_ptr_99
    li      s1, 0
              #                    store to temp_99_ptr2globl_99 in mem offset_illegal
              #                    occupy a0 with 1600848_0
    li      a0, 1600848
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_99_ptr2globl_99
              #                    occupy a0 with 20_0
    li      a0, 20
              #                    store to temp_98_cmp_97 in mem offset_illegal
              #                    occupy a1 with 2401251_0
    li      a1, 2401251
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_98_cmp_97
              #                    occupy a1 with x_73
              #                    load from x_73 in mem

              #                    occupy a1 with x_73
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_94_array_ele_97 in mem offset_illegal
              #                    occupy a2 with 3201668_0
    li      a2, 3201668
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_94_array_ele_97
              #                    occupy a2 with _anonymous_of_temp_99_ptr2globl_99_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s1,s1,a2
              #                    free a2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with i_75
              #                    occupy a2 with _anonymous_of_temp_99_ptr2globl_99_0
    mul     a2,a0,a3
              #                    free a0
              #                    free a3
    add     s1,s1,a2
              #                    free a2
    slli s1,s1,2
    add     s1,s1,sp
              #                    occupy a0 with 1600848_0
    li      a0, 1600848
    li      a0, 1600848
    add     s1,a0,s1
              #                    free a0
              #                    free s1
              #                          new_var temp_101_array_ele_99:i32 
              #                          temp_101_array_ele_99 = load temp_100_array_ptr_99:ptr->i32 
              #                    occupy s1 with temp_100_array_ptr_99
              #                    occupy a0 with temp_101_array_ele_99
    lw      a0,0(s1)
              #                    free a0
              #                    free s1
              #                          x_73 = i32 temp_101_array_ele_99 
              #                    occupy a0 with temp_101_array_ele_99
              #                    occupy a1 with x_73
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_102_ptr2globl_99:Array:i32:[Some(10005_0), Some(20_0)] 
              #                          temp_102_ptr2globl_99 = load *f_0:ptr->Array:i32:[Some(20_0)] 
              #                    occupy a2 with *f_0
              #                       load label f as ptr to reg
    la      a2, f
              #                    occupy reg a2 with *f_0
              #                    store to temp_101_array_ele_99 in mem offset_illegal
              #                    occupy a0 with 1600836_0
    li      a0, 1600836
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_101_array_ele_99
              #                    occupy a0 with temp_102_ptr2globl_99
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_103_array_ptr_99:ptr->i32 
              #                          temp_103_array_ptr_99 = getelementptr temp_102_ptr2globl_99:Array:i32:[Some(10005_0), Some(20_0)] [Some(y_73), Some(i_75)] 
              #                    occupy a2 with temp_103_array_ptr_99
    li      a2, 0
              #                    store to temp_102_ptr2globl_99 in mem offset_illegal
              #                    occupy a0 with 800436_0
    li      a0, 800436
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_102_ptr2globl_99
              #                    occupy a0 with 20_0
    li      a0, 20
              #                    store to x_73 in mem offset_illegal
              #                    occupy a1 with 6643564_0
    li      a1, 6643564
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with x_73
              #                    occupy a1 with y_73
              #                    load from y_73 in mem

              #                    occupy a1 with y_73
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to i_75 in mem offset_illegal
              #                    occupy a3 with 6563480_0
    li      a3, 6563480
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with i_75
              #                    occupy a3 with _anonymous_of_temp_102_ptr2globl_99_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with i_75
              #                    load from i_75 in mem

              #                    occupy a3 with i_75
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to y_73 in mem offset_illegal
              #                    occupy a1 with 6643560_0
    li      a1, 6643560
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with y_73
              #                    occupy a1 with _anonymous_of_temp_102_ptr2globl_99_0
    mul     a1,a0,a3
              #                    free a0
              #                    free a3
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a0 with 800436_0
    li      a0, 800436
    li      a0, 800436
    add     a2,a0,a2
              #                    free a0
              #                    free a2
              #                          new_var temp_104_array_ele_99:i32 
              #                          temp_104_array_ele_99 = load temp_103_array_ptr_99:ptr->i32 
              #                    occupy a2 with temp_103_array_ptr_99
              #                    occupy a0 with temp_104_array_ele_99
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          y_73 = i32 temp_104_array_ele_99 
              #                    occupy a0 with temp_104_array_ele_99
              #                    occupy a1 with y_73
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: branch_false_98 
              #                    store to temp_100_array_ptr_99 in mem offset_illegal
              #                    occupy s1 with 1600840_0
    li      s1, 1600840
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_100_array_ptr_99
              #                    store to temp_103_array_ptr_99 in mem offset_illegal
              #                    occupy a2 with 800424_0
    li      a2, 800424
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_103_array_ptr_99
              #                    store to y_73 in mem offset_illegal
              #                    occupy a1 with 6643560_0
    li      a1, 6643560
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with y_73
              #                    store to temp_104_array_ele_99 in mem offset_illegal
              #                    occupy a0 with 800420_0
    li      a0, 800420
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_104_array_ele_99
              #                    occupy a2 with _anonymous_of_temp_94_array_ele_97_0
              #                    load from temp_94_array_ele_97 in mem

              #                    occupy a0 with temp_94_array_ele_97
    li      a0, 3201668
    add     a0,sp,a0
    lw      a2,0(a0)
              #                    free a0
              #                    occupy a1 with _anonymous_of_temp_98_cmp_97_0
              #                    load from temp_98_cmp_97 in mem
              #                    occupy s1 with temp_98_cmp_97
    li      s1, 2401251
    add     s1,sp,s1
    lb      a1,0(s1)
              #                    free s1
              #                    store to temp_94_array_ele_97 in mem offset_illegal
              #                    occupy a0 with 3201668_0
    li      a0, 3201668
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_94_array_ele_97
              #                    occupy a0 with _anonymous_of_temp_97_array_ele_97_0
              #                    load from temp_97_array_ele_97 in mem

              #                    store to i_75 in mem offset_illegal
              #                    occupy a3 with 6563480_0
    li      a3, 6563480
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with i_75
              #                    occupy a3 with temp_97_array_ele_97
    li      a3, 2401252
    add     a3,sp,a3
    lw      a0,0(a3)
              #                    free a3
    j       .branch_false_98
              #                    regtab     a0:Freed { symidx: temp_97_array_ele_97, tracked: true } |     a1:Freed { symidx: temp_98_cmp_97, tracked: true } |     a2:Freed { symidx: temp_94_array_ele_97, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s10:Freed { symidx: temp_93_array_ptr_97, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_90_cmp_90, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label branch_false_98: 
.branch_false_98:
              #                    regtab     a0:Freed { symidx: temp_97_array_ele_97, tracked: true } |     a1:Freed { symidx: temp_98_cmp_97, tracked: true } |     a2:Freed { symidx: temp_94_array_ele_97, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s10:Freed { symidx: temp_93_array_ptr_97, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_90_cmp_90, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_105_arithop_96:i32 
              #                          temp_105_arithop_96 = Sub i32 i_75, 1_0 
              #                    occupy a3 with i_75
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    store to temp_97_array_ele_97 in mem offset_illegal
              #                    occupy a0 with 2401252_0
    li      a0, 2401252
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_97_array_ele_97
              #                    occupy a0 with temp_105_arithop_96
              #                    regtab:    a0:Occupied { symidx: temp_105_arithop_96, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_98_cmp_97, tracked: true } |     a2:Freed { symidx: temp_94_array_ele_97, tracked: true } |     a3:Occupied { symidx: i_75, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s10:Freed { symidx: temp_93_array_ptr_97, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_90_cmp_90, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 


    sub     a0,a3,s1
              #                    free a3
              #                    free s1
              #                    free a0
              #                          i_75 = i32 temp_105_arithop_96 
              #                    occupy a0 with temp_105_arithop_96
              #                    occupy a3 with i_75
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          jump label: while.head_95 
              #                    store to temp_93_array_ptr_97 in mem offset_illegal
              #                    occupy s1 with 3201672_0
    li      s1, 3201672
    add     s1,sp,s1
    sd      s10,0(s1)
              #                    free s1
              #                    release s10 with temp_93_array_ptr_97
              #                    store to i_75 in mem offset_illegal
              #                    occupy a3 with 6563480_0
    li      a3, 6563480
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with i_75
              #                    store to temp_94_array_ele_97 in mem offset_illegal
              #                    occupy a2 with 3201668_0
    li      a2, 3201668
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_94_array_ele_97
              #                    store to temp_98_cmp_97 in mem offset_illegal
              #                    occupy a1 with 2401251_0
    li      a1, 2401251
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_98_cmp_97
              #                    store to temp_105_arithop_96 in mem offset_illegal
              #                    occupy a0 with 800416_0
    li      a0, 800416
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_105_arithop_96
              #                    occupy s1 with _anonymous_of_temp_59_array_ele_76_0
              #                    load from temp_59_array_ele_76 in mem

              #                    occupy a0 with temp_59_array_ele_76
    li      a0, 6603524
    add     a0,sp,a0
    lw      s1,0(a0)
              #                    free a0
              #                    occupy a3 with _anonymous_of_temp_57_ptr2globl_76_0
              #                    load from temp_57_ptr2globl_76 in mem
              #                    occupy a1 with temp_57_ptr2globl_76
    li      a1, 6603540
    add     a1,sp,a1
    lw      a3,0(a1)
              #                    free a1
              #                    occupy a2 with _anonymous_of_i_75_0
              #                    load from i_75 in mem

              #                    occupy s10 with i_75
    li      s10, 6563480
    add     s10,sp,s10
    lw      a2,0(s10)
              #                    free s10
              #                    store to temp_57_ptr2globl_76 in mem offset_illegal
              #                    occupy a1 with 6603540_0
    li      a1, 6603540
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_57_ptr2globl_76
              #                    occupy a1 with _anonymous_of_y_73_0
              #                    load from y_73 in mem

              #                    store to temp_59_array_ele_76 in mem offset_illegal
              #                    occupy a0 with 6603524_0
    li      a0, 6603524
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_59_array_ele_76
              #                    occupy a0 with y_73
    li      a0, 6643560
    add     a0,sp,a0
    lw      a1,0(a0)
              #                    free a0
              #                    store to y_73 in mem offset_illegal
              #                    occupy a0 with 6643560_0
    li      a0, 6643560
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with y_73
              #                    occupy a0 with _anonymous_of_x_73_0
              #                    load from x_73 in mem

              #                    store to temp_58_array_ptr_76 in mem offset_illegal
              #                    occupy a4 with 6603528_0
    li      a4, 6603528
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_58_array_ptr_76
              #                    occupy a4 with x_73
    li      a4, 6643564
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    store to x_73 in mem offset_illegal
              #                    occupy a4 with 6643564_0
    li      a4, 6643564
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with x_73
              #                    occupy a4 with _anonymous_of_temp_58_array_ptr_76_0
              #                    load from temp_58_array_ptr_76 in mem
              #                    store to temp_68_array_ptr_83 in mem offset_illegal
              #                    occupy a5 with 6483416_0
    li      a5, 6483416
    add     a5,sp,a5
    sd      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_68_array_ptr_83
              #                    occupy a5 with temp_58_array_ptr_76
    li      a5, 6603528
    add     a5,sp,a5
    ld      a4,0(a5)
              #                    free a5
              #                    store to temp_58_array_ptr_76 in mem offset_illegal
              #                    occupy a5 with 6603528_0
    li      a5, 6603528
    add     a5,sp,a5
    sd      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_58_array_ptr_76
              #                    occupy a5 with _anonymous_of_temp_68_array_ptr_83_0
              #                    load from temp_68_array_ptr_83 in mem
              #                    store to temp_64_ptr2globl_83 in mem offset_illegal
              #                    occupy a6 with 6523460_0
    li      a6, 6523460
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_64_ptr2globl_83
              #                    occupy a6 with temp_68_array_ptr_83
    li      a6, 6483416
    add     a6,sp,a6
    ld      a5,0(a6)
              #                    free a6
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: temp_91_cmp_94, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: i_75, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s1:Freed { symidx: temp_59_array_ele_76, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_90_cmp_90, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                          label while.exit_95: 
.while.exit_95:
              #                          new_var temp_106_ptr2globl_75:Array:i32:[Some(10005_0), Some(20_0)] 
              #                          temp_106_ptr2globl_75 = load *f_0:ptr->Array:i32:[Some(20_0)] 
              #                    occupy s10 with *f_0
              #                       load label f as ptr to reg
    la      s10, f
              #                    occupy reg s10 with *f_0
              #                    store to temp_91_cmp_94 in mem offset_illegal
              #                    occupy a0 with 4002086_0
    li      a0, 4002086
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_91_cmp_94
              #                    occupy a0 with temp_106_ptr2globl_75
    lw      a0,0(s10)
              #                    free a0
              #                    free s10
              #                          new_var temp_107_array_ptr_75:ptr->i32 
              #                          temp_107_array_ptr_75 = getelementptr temp_106_ptr2globl_75:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_73), Some(0_0)] 
              #                    occupy s10 with temp_107_array_ptr_75
    li      s10, 0
              #                    store to temp_106_ptr2globl_75 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_106_ptr2globl_75
              #                    occupy a0 with 20_0
    li      a0, 20
              #                    store to y_73 in mem offset_illegal
              #                    occupy a1 with 6643560_0
    li      a1, 6643560
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with y_73
              #                    occupy a1 with x_73
              #                    load from x_73 in mem

              #                    occupy a1 with x_73
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to i_75 in mem offset_illegal
              #                    occupy a2 with 6563480_0
    li      a2, 6563480
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_75
              #                    occupy a2 with _anonymous_of_temp_106_ptr2globl_75_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s10,s10,a2
              #                    free a2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    store to x_73 in mem offset_illegal
              #                    occupy a1 with 6643564_0
    li      a1, 6643564
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with x_73
              #                    occupy a1 with _anonymous_of_temp_106_ptr2globl_75_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     s10,s10,a1
              #                    free a1
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,16
              #                    free s10
              #                          new_var temp_108_array_ele_75:i32 
              #                          temp_108_array_ele_75 = load temp_107_array_ptr_75:ptr->i32 
              #                    occupy s10 with temp_107_array_ptr_75
              #                    occupy a0 with temp_108_array_ele_75
    lw      a0,0(s10)
              #                    free a0
              #                    free s10
              #                          ret temp_108_array_ele_75 
              #                    load from ra_LCA_0 in mem
              #                    occupy a1 with ra_LCA_0
    li      a1, 6643576
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_LCA_0 in mem
              #                    occupy a2 with s0_LCA_0
    li      a2, 6643568
    add     a2,sp,a2
    ld      s0,0(a2)
              #                    free a2
              #                    store to temp_108_array_ele_75 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_108_array_ele_75
              #                    occupy a0 with temp_108_array_ele_75
              #                    load from temp_108_array_ele_75 in mem


    lw      a0,4(sp)
              #                    store to ra_LCA_0 in mem offset_illegal
              #                    occupy a1 with 6643576_0
    li      a1, 6643576
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with ra_LCA_0
              #                    occupy a1 with 6643584_0
    li      a1, 6643584
    li      a1, 6643584
    add     sp,a1,sp
              #                    free a1
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: s0_LCA_0, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_58_array_ptr_76, tracked: true } |     a5:Freed { symidx: temp_68_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_64_ptr2globl_83, tracked: true } |     a7:Freed { symidx: temp_65_array_ptr_83, tracked: true } |     s10:Freed { symidx: temp_107_array_ptr_75, tracked: true } |     s11:Freed { symidx: temp_67_ptr2globl_83, tracked: true } |     s1:Freed { symidx: temp_59_array_ele_76, tracked: true } |     s2:Freed { symidx: temp_69_array_ele_83, tracked: true } |     s3:Freed { symidx: temp_60_ptr2globl_76, tracked: true } |     s4:Freed { symidx: temp_61_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_70_cmp_83, tracked: true } |     s6:Freed { symidx: temp_90_cmp_90, tracked: true } |     s7:Freed { symidx: temp_62_array_ele_76, tracked: true } |     s8:Freed { symidx: temp_63_cmp_76, tracked: true } |     s9:Freed { symidx: temp_66_array_ele_83, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 88|s0_main:8 at 80|temp_109_ret_of_quick_read:4 at 76|temp_110_ret_of_quick_read:4 at 72|i:4 at 68|temp_111_ptr2globl:4 at 64|temp_112_cmp:1 at 63|none:3 at 60|temp_113_ret_of_quick_read:4 at 56|x:4 at 52|temp_114_ret_of_quick_read:4 at 48|y:4 at 44|temp_115_arithop:4 at 40|temp_116_ptr2globl:4 at 36|temp_117_:1 at 35|none:3 at 32|temp_118_ret_of_quick_read:4 at 28|x:4 at 24|temp_119_ret_of_quick_read:4 at 20|y:4 at 16|temp_120_ret_of_LCA:4 at 12|temp_121_ptr2globl:4 at 8|temp_122_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-96
              #                    store to ra_main_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                          alloc i32 temp_109_ret_of_quick_read_105 
              #                          alloc i32 temp_110_ret_of_quick_read_105 
              #                          alloc i32 i_105 
              #                          alloc i32 temp_111_ptr2globl_110 
              #                          alloc i1 temp_112_cmp_110 
              #                          alloc i32 temp_113_ret_of_quick_read_112 
              #                          alloc i32 x_112 
              #                          alloc i32 temp_114_ret_of_quick_read_112 
              #                          alloc i32 y_112 
              #                          alloc i32 temp_115_arithop_112 
              #                          alloc i32 temp_116_ptr2globl_117 
              #                          alloc i1 temp_117__3399 
              #                          alloc i32 temp_118_ret_of_quick_read_119 
              #                          alloc i32 x_119 
              #                          alloc i32 temp_119_ret_of_quick_read_119 
              #                          alloc i32 y_119 
              #                          alloc i32 temp_120_ret_of_LCA_119 
              #                          alloc i32 temp_121_ptr2globl_119 
              #                          alloc i32 temp_122_arithop_119 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_109_ret_of_quick_read_105:i32 
              #                          temp_109_ret_of_quick_read_105 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_109_ret_of_quick_read_105 in mem offset legal
    sw      a0,76(sp)
              #                          store temp_109_ret_of_quick_read_105:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_109_ret_of_quick_read_105
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_110_ret_of_quick_read_105:i32 
              #                          temp_110_ret_of_quick_read_105 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_109_ret_of_quick_read_105 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_109_ret_of_quick_read_105
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_110_ret_of_quick_read_105 in mem offset legal
    sw      a0,72(sp)
              #                          store temp_110_ret_of_quick_read_105:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_110_ret_of_quick_read_105
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                           Call void init_0() 
              #                    saved register dumping to mem
              #                    store to temp_110_ret_of_quick_read_105 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_110_ret_of_quick_read_105
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    init
              #                          i_105 = i32 1_0 
              #                    occupy a0 with i_105
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_111 
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } | 
              #                          label while.head_111: 
.while.head_111:
              #                          new_var temp_111_ptr2globl_110:i32 
              #                          temp_111_ptr2globl_110 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_111_ptr2globl_110
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_112_cmp_110:i1 
              #                          temp_112_cmp_110 = icmp i32 Ne i_105, temp_111_ptr2globl_110 
              #                    occupy a0 with i_105
              #                    occupy a2 with temp_111_ptr2globl_110
              #                    occupy a3 with temp_112_cmp_110
    xor     a3,a0,a2
    snez    a3, a3
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_112_cmp_110, label while.body_111, label while.exit_111 
              #                    occupy a3 with temp_112_cmp_110
              #                    free a3
              #                    occupy a3 with temp_112_cmp_110
    bnez    a3, .while.body_111
              #                    free a3
    j       .while.exit_111
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a2:Freed { symidx: temp_111_ptr2globl_110, tracked: true } |     a3:Freed { symidx: temp_112_cmp_110, tracked: true } | 
              #                          label while.body_111: 
.while.body_111:
              #                          new_var temp_113_ret_of_quick_read_112:i32 
              #                          temp_113_ret_of_quick_read_112 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to i_105 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with i_105
              #                    store to temp_111_ptr2globl_110 in mem offset legal
    sw      a2,64(sp)
              #                    release a2 with temp_111_ptr2globl_110
              #                    store to temp_112_cmp_110 in mem offset legal
    sb      a3,63(sp)
              #                    release a3 with temp_112_cmp_110
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_113_ret_of_quick_read_112 in mem offset legal
    sw      a0,56(sp)
              #                          x_112 = i32 temp_113_ret_of_quick_read_112 
              #                    occupy a0 with temp_113_ret_of_quick_read_112
              #                    occupy a1 with x_112
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_114_ret_of_quick_read_112:i32 
              #                          temp_114_ret_of_quick_read_112 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_113_ret_of_quick_read_112 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_113_ret_of_quick_read_112
              #                    store to x_112 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with x_112
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_114_ret_of_quick_read_112 in mem offset legal
    sw      a0,48(sp)
              #                          y_112 = i32 temp_114_ret_of_quick_read_112 
              #                    occupy a0 with temp_114_ret_of_quick_read_112
              #                    occupy a1 with y_112
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void add_edge_0(x_112, y_112) 
              #                    saved register dumping to mem
              #                    store to temp_114_ret_of_quick_read_112 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_114_ret_of_quick_read_112
              #                    store to y_112 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with y_112
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_112_0
              #                    load from x_112 in mem


    lw      a0,52(sp)
              #                    occupy a1 with _anonymous_of_y_112_0
              #                    load from y_112 in mem


    lw      a1,44(sp)
              #                    arg load ended


    call    add_edge
              #                          new_var temp_115_arithop_112:i32 
              #                          temp_115_arithop_112 = Add i32 i_105, 1_0 
              #                    occupy a0 with i_105
              #                    load from i_105 in mem


    lw      a0,68(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_115_arithop_112
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_105 = i32 temp_115_arithop_112 
              #                    occupy a2 with temp_115_arithop_112
              #                    occupy a0 with i_105
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_111 
              #                    store to temp_115_arithop_112 in mem offset legal
    sw      a2,40(sp)
              #                    release a2 with temp_115_arithop_112
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a2:Freed { symidx: temp_111_ptr2globl_110, tracked: true } |     a3:Freed { symidx: temp_112_cmp_110, tracked: true } | 
              #                          label while.exit_111: 
.while.exit_111:
              #                           Call void tree_0(1_0, 1_0) 
              #                    saved register dumping to mem
              #                    store to i_105 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with i_105
              #                    store to temp_111_ptr2globl_110 in mem offset legal
    sw      a2,64(sp)
              #                    release a2 with temp_111_ptr2globl_110
              #                    store to temp_112_cmp_110 in mem offset legal
    sb      a3,63(sp)
              #                    release a3 with temp_112_cmp_110
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_1_0_0
    li      a1, 1
              #                    arg load ended


    call    tree
              #                          jump label: while.head_118 
    j       .while.head_118
              #                    regtab 
              #                          label while.head_118: 
.while.head_118:
              #                          new_var temp_116_ptr2globl_117:i32 
              #                          temp_116_ptr2globl_117 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_116_ptr2globl_117
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_117__3399:i1 
              #                          temp_117__3399 = icmp i32 Ne temp_116_ptr2globl_117, 0_0 
              #                    occupy a1 with temp_116_ptr2globl_117
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_117__3399
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_117__3399, label while.body_118, label while.exit_118 
              #                    occupy a3 with temp_117__3399
              #                    free a3
              #                    occupy a3 with temp_117__3399
    bnez    a3, .while.body_118
              #                    free a3
    j       .while.exit_118
              #                    regtab     a1:Freed { symidx: temp_116_ptr2globl_117, tracked: true } |     a3:Freed { symidx: temp_117__3399, tracked: true } | 
              #                          label while.body_118: 
.while.body_118:
              #                          new_var temp_118_ret_of_quick_read_119:i32 
              #                          temp_118_ret_of_quick_read_119 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_116_ptr2globl_117 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with temp_116_ptr2globl_117
              #                    store to temp_117__3399 in mem offset legal
    sb      a3,35(sp)
              #                    release a3 with temp_117__3399
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_118_ret_of_quick_read_119 in mem offset legal
    sw      a0,28(sp)
              #                          x_119 = i32 temp_118_ret_of_quick_read_119 
              #                    occupy a0 with temp_118_ret_of_quick_read_119
              #                    occupy a1 with x_119
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_119_ret_of_quick_read_119:i32 
              #                          temp_119_ret_of_quick_read_119 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_118_ret_of_quick_read_119 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_118_ret_of_quick_read_119
              #                    store to x_119 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with x_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_119_ret_of_quick_read_119 in mem offset legal
    sw      a0,20(sp)
              #                          y_119 = i32 temp_119_ret_of_quick_read_119 
              #                    occupy a0 with temp_119_ret_of_quick_read_119
              #                    occupy a1 with y_119
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_120_ret_of_LCA_119:i32 
              #                          temp_120_ret_of_LCA_119 =  Call i32 LCA_0(x_119, y_119) 
              #                    saved register dumping to mem
              #                    store to temp_119_ret_of_quick_read_119 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_119_ret_of_quick_read_119
              #                    store to y_119 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with y_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_119_0
              #                    load from x_119 in mem


    lw      a0,24(sp)
              #                    occupy a1 with _anonymous_of_y_119_0
              #                    load from y_119 in mem


    lw      a1,16(sp)
              #                    arg load ended


    call    LCA
              #                    store to temp_120_ret_of_LCA_119 in mem offset legal
    sw      a0,12(sp)
              #                           Call void putint_0(temp_120_ret_of_LCA_119) 
              #                    saved register dumping to mem
              #                    store to temp_120_ret_of_LCA_119 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_120_ret_of_LCA_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_120_ret_of_LCA_119_0
              #                    load from temp_120_ret_of_LCA_119 in mem


    lw      a0,12(sp)
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
              #                          new_var temp_121_ptr2globl_119:i32 
              #                          temp_121_ptr2globl_119 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_121_ptr2globl_119
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_122_arithop_119:i32 
              #                          temp_122_arithop_119 = Sub i32 temp_121_ptr2globl_119, 1_0 
              #                    occupy a1 with temp_121_ptr2globl_119
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_122_arithop_119
              #                    regtab:    a0:Freed { symidx: *m_0, tracked: false } |     a1:Occupied { symidx: temp_121_ptr2globl_119, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_122_arithop_119, tracked: true, occupy_count: 1 } | 


    sub     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_122_arithop_119:i32 *m_0:ptr->i32 
              #                    occupy a4 with *m_0
              #                       load label m as ptr to reg
    la      a4, m
              #                    occupy reg a4 with *m_0
              #                    occupy a3 with temp_122_arithop_119
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          jump label: while.head_118 
              #                    store to temp_122_arithop_119 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_122_arithop_119
              #                    store to temp_121_ptr2globl_119 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_121_ptr2globl_119
    j       .while.head_118
              #                    regtab     a1:Freed { symidx: temp_116_ptr2globl_117, tracked: true } |     a3:Freed { symidx: temp_117__3399, tracked: true } | 
              #                          label while.exit_118: 
.while.exit_118:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,88(sp)
              #                    load from s0_main_0 in mem
    ld      s0,80(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_116_ptr2globl_117, tracked: true } |     a3:Freed { symidx: temp_117__3399, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl cnt
              #                          global i32 cnt_0 
    .type cnt,@object
cnt:
    .word 0
    .align 4
    .globl head
              #                          global Array:i32:[Some(10005_0)] head_0 
    .type head,@object
head:
    .zero 40020
    .align 4
    .globl next
              #                          global Array:i32:[Some(10005_0)] next_0 
    .type next,@object
next:
    .zero 40020
    .align 4
    .globl to
              #                          global Array:i32:[Some(10005_0)] to_0 
    .type to,@object
to:
    .zero 40020
    .align 4
    .globl dep
              #                          global Array:i32:[Some(10005_0)] dep_0 
    .type dep,@object
dep:
    .zero 40020
    .align 4
    .globl f
              #                          global Array:i32:[Some(10005_0), Some(20_0)] f_0 
    .type f,@object
f:
    .zero 800400
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
    .align 4
    .globl maxn
              #                          global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 10005
