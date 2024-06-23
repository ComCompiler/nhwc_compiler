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
              #                    occupy a3 with _anonymous_of_f_20_0
              #                    load from f_20 in mem


    lw      a3,40(sp)
              #                    occupy a2 with _anonymous_of_x_20_0
              #                    load from x_20 in mem


    lw      a2,44(sp)
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
              #                    occupy a3 with _anonymous_of_f_20_0
              #                    load from f_20 in mem


    lw      a3,40(sp)
              #                    occupy s1 with _anonymous_of_temp_3_logic_23_0
              #                    load from temp_3_logic_23 in mem
    lb      s1,37(sp)
              #                    occupy a7 with _anonymous_of_temp_2_cmp_23_0
              #                    load from temp_2_cmp_23 in mem
    lb      a7,38(sp)
              #                    occupy a2 with _anonymous_of_x_20_0
              #                    load from x_20 in mem


    lw      a2,44(sp)
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
              #                    mem layout:|ra_add_edge:8 at 96|s0_add_edge:8 at 88|from:4 at 84|To:4 at 80|temp_15_ptr2globl:4 at 76|none:4 at 72|temp_16_index_ptr:8 at 64|temp_17_ptr2globl:4 at 60|none:4 at 56|temp_18_index_ptr:8 at 48|temp_19_array_ptr:8 at 40|temp_20_array_ele:4 at 36|none:4 at 32|temp_21_index_ptr:8 at 24|temp_22_ptr2globl:4 at 20|temp_23_ptr2globl:4 at 16|temp_24_arithop:4 at 12|none:4 at 8|temp_25_index_ptr:8 at 0
    addi    sp,sp,-104
              #                    store to ra_add_edge_0 in mem offset legal
    sd      ra,96(sp)
              #                    store to s0_add_edge_0 in mem offset legal
    sd      s0,88(sp)
    addi    s0,sp,104
              #                          alloc i32 temp_15_ptr2globl_41 
              #                          alloc ptr->i32 temp_16_index_ptr_41 
              #                          alloc i32 temp_17_ptr2globl_41 
              #                          alloc ptr->i32 temp_18_index_ptr_41 
              #                          alloc ptr->i32 temp_19_array_ptr_41 
              #                          alloc i32 temp_20_array_ele_41 
              #                          alloc ptr->i32 temp_21_index_ptr_41 
              #                          alloc i32 temp_22_ptr2globl_41 
              #                          alloc i32 temp_23_ptr2globl_41 
              #                          alloc i32 temp_24_arithop_41 
              #                          alloc ptr->i32 temp_25_index_ptr_41 
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
              #                          temp_16_index_ptr_41 = getelementptr *to_0:ptr->i32 [Some(temp_15_ptr2globl_41)] 
              #                    occupy a4 with temp_16_index_ptr_41
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a3 with temp_15_ptr2globl_41
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a3
              #                    free a5
              #                    free a3
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *to_0
              #                       load label to as ptr to reg
    la      a7, to
              #                    occupy reg a7 with *to_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store To_39:i32 temp_16_index_ptr_41:ptr->i32 
              #                    occupy a4 with temp_16_index_ptr_41
              #                    occupy a1 with To_39
    sw      a1,0(a4)
              #                    free a1
              #                    free a4
              #                          mu *to_0:117 
              #                          *to_0 = chi *to_0:117 
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
              #                          temp_18_index_ptr_41 = getelementptr *next_0:ptr->i32 [Some(temp_17_ptr2globl_41)] 
              #                    occupy s3 with temp_18_index_ptr_41
    li      s3, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s2 with temp_17_ptr2globl_41
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a5,s2
              #                    free a5
              #                    free s2
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy s5 with *next_0
              #                       load label next as ptr to reg
    la      s5, next
              #                    occupy reg s5 with *next_0
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                          new_var temp_19_array_ptr_41:ptr->i32 
              #                          temp_19_array_ptr_41 = getelementptr *head_0:ptr->i32 [Some(from_39)] 
              #                    occupy s6 with temp_19_array_ptr_41
    li      s6, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with from_39
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a5,a0
              #                    free a5
              #                    free a0
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s8 with *head_0
              #                       load label head as ptr to reg
    la      s8, head
              #                    occupy reg s8 with *head_0
    add     s6,s6,s8
              #                    free s8
              #                    free s6
              #                          new_var temp_20_array_ele_41:i32 
              #                          temp_20_array_ele_41 = load temp_19_array_ptr_41:ptr->i32 
              #                    occupy s6 with temp_19_array_ptr_41
              #                    occupy s9 with temp_20_array_ele_41
    lw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          store temp_20_array_ele_41:i32 temp_18_index_ptr_41:ptr->i32 
              #                    occupy s3 with temp_18_index_ptr_41
              #                    occupy s9 with temp_20_array_ele_41
    sw      s9,0(s3)
              #                    free s9
              #                    free s3
              #                          mu *next_0:132 
              #                          *next_0 = chi *next_0:132 
              #                          new_var temp_21_index_ptr_41:ptr->i32 
              #                          temp_21_index_ptr_41 = getelementptr *head_0:ptr->i32 [Some(from_39)] 
              #                    occupy s10 with temp_21_index_ptr_41
    li      s10, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with from_39
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a5,a0
              #                    free a5
              #                    free a0
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
              #                    occupy a2 with *head_0
              #                       load label head as ptr to reg
    la      a2, head
              #                    occupy reg a2 with *head_0
    add     s10,s10,a2
              #                    free a2
              #                    free s10
              #                          new_var temp_22_ptr2globl_41:i32 
              #                          temp_22_ptr2globl_41 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a5 with temp_22_ptr2globl_41
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                          store temp_22_ptr2globl_41:i32 temp_21_index_ptr_41:ptr->i32 
              #                    occupy s10 with temp_21_index_ptr_41
              #                    occupy a5 with temp_22_ptr2globl_41
    sw      a5,0(s10)
              #                    free a5
              #                    free s10
              #                          mu *head_0:141 
              #                          *head_0 = chi *head_0:141 
              #                          new_var temp_23_ptr2globl_41:i32 
              #                          temp_23_ptr2globl_41 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a6 with temp_23_ptr2globl_41
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          new_var temp_24_arithop_41:i32 
              #                          temp_24_arithop_41 = Add i32 temp_23_ptr2globl_41, 1_0 
              #                    occupy a6 with temp_23_ptr2globl_41
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a7 with temp_24_arithop_41
    add     a7,a6,a2
              #                    free a6
              #                    free a2
              #                    free a7
              #                          store temp_24_arithop_41:i32 *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a7 with temp_24_arithop_41
    sw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_25_index_ptr_41:ptr->i32 
              #                          temp_25_index_ptr_41 = getelementptr *f_0:ptr->Array:i32:[Some(20_0)] [Some(To_39), Some(0_0)] 
              #                    occupy a2 with temp_25_index_ptr_41
    li      a2, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a1 with To_39
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,s1,a1
              #                    free s1
              #                    free a1
    add     a2,a2,s4
              #                    free s4
    slli a2,a2,2
              #                    occupy s1 with *f_0
              #                       load label f as ptr to reg
    la      s1, f
              #                    occupy reg s1 with *f_0
    add     a2,a2,s1
              #                    free s1
              #                    free a2
              #                          store from_39:i32 temp_25_index_ptr_41:ptr->i32 
              #                    occupy a2 with temp_25_index_ptr_41
              #                    occupy a0 with from_39
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          mu *f_0:154 
              #                          *f_0 = chi *f_0:154 
              #                    regtab     a0:Freed { symidx: from_39, tracked: true } |     a1:Freed { symidx: To_39, tracked: true } |     a2:Freed { symidx: temp_25_index_ptr_41, tracked: true } |     a3:Freed { symidx: temp_15_ptr2globl_41, tracked: true } |     a4:Freed { symidx: temp_16_index_ptr_41, tracked: true } |     a5:Freed { symidx: temp_22_ptr2globl_41, tracked: true } |     a6:Freed { symidx: temp_23_ptr2globl_41, tracked: true } |     a7:Freed { symidx: temp_24_arithop_41, tracked: true } |     s10:Freed { symidx: temp_21_index_ptr_41, tracked: true } |     s2:Freed { symidx: temp_17_ptr2globl_41, tracked: true } |     s3:Freed { symidx: temp_18_index_ptr_41, tracked: true } |     s6:Freed { symidx: temp_19_array_ptr_41, tracked: true } |     s9:Freed { symidx: temp_20_array_ele_41, tracked: true } | 
              #                    regtab 
              #                          Define init_0 [] -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 48|s0_init:8 at 40|temp_26_index_ptr:8 at 32|i:4 at 28|temp_27_ptr2globl:4 at 24|temp_28_cmp:1 at 23|none:7 at 16|temp_29_index_ptr:8 at 8|temp_30_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-56
              #                    store to ra_init_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc ptr->i32 temp_26_index_ptr_48 
              #                          alloc i32 i_48 
              #                          alloc i32 temp_27_ptr2globl_51 
              #                          alloc i1 temp_28_cmp_51 
              #                          alloc ptr->i32 temp_29_index_ptr_53 
              #                          alloc i32 temp_30_arithop_53 
              #                    regtab 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_26_index_ptr_48:ptr->i32 
              #                          temp_26_index_ptr_48 = getelementptr *dep_0:ptr->i32 [Some(0_0)] 
              #                    occupy a0 with temp_26_index_ptr_48
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *dep_0
              #                       load label dep as ptr to reg
    la      a4, dep
              #                    occupy reg a4 with *dep_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          store 0x3f3f3f3f_0:i32 temp_26_index_ptr_48:ptr->i32 
              #                    occupy a0 with temp_26_index_ptr_48
              #                    occupy a5 with 0x3f3f3f3f_0
    li      a5, 0x3f3f3f3f
    sw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                          mu *dep_0:160 
              #                          *dep_0 = chi *dep_0:160 
              #                          i_48 = i32 1_0 
              #                    occupy a6 with i_48
    li      a6, 1
              #                    free a6
              #                          jump label: while.head_52 
    j       .while.head_52
              #                    regtab     a0:Freed { symidx: temp_26_index_ptr_48, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } | 
              #                          label while.head_52: 
.while.head_52:
              #                          new_var temp_27_ptr2globl_51:i32 
              #                          temp_27_ptr2globl_51 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_27_ptr2globl_51
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_28_cmp_51:i1 
              #                          temp_28_cmp_51 = icmp i32 Sle i_48, temp_27_ptr2globl_51 
              #                    occupy a6 with i_48
              #                    occupy a2 with temp_27_ptr2globl_51
              #                    occupy a3 with temp_28_cmp_51
    slt     a3,a2,a6
    xori    a3,a3,1
              #                    free a6
              #                    free a2
              #                    free a3
              #                          br i1 temp_28_cmp_51, label while.body_52, label while.exit_52 
              #                    occupy a3 with temp_28_cmp_51
              #                    free a3
              #                    occupy a3 with temp_28_cmp_51
    bnez    a3, .while.body_52
              #                    free a3
    j       .while.exit_52
              #                    regtab     a0:Freed { symidx: temp_26_index_ptr_48, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_51, tracked: true } |     a3:Freed { symidx: temp_28_cmp_51, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } | 
              #                          label while.body_52: 
.while.body_52:
              #                          new_var temp_29_index_ptr_53:ptr->i32 
              #                          temp_29_index_ptr_53 = getelementptr *head_0:ptr->i32 [Some(i_48)] 
              #                    occupy a1 with temp_29_index_ptr_53
    li      a1, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with i_48
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a6
              #                    free a4
              #                    free a6
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
              #                    occupy a7 with *head_0
              #                       load label head as ptr to reg
    la      a7, head
              #                    occupy reg a7 with *head_0
    add     a1,a1,a7
              #                    free a7
              #                    free a1
              #                          store -1_0:i32 temp_29_index_ptr_53:ptr->i32 
              #                    occupy a1 with temp_29_index_ptr_53
              #                    occupy s1 with -1_0
    li      s1, -1
    sw      s1,0(a1)
              #                    free s1
              #                    free a1
              #                          mu *head_0:179 
              #                          *head_0 = chi *head_0:179 
              #                          new_var temp_30_arithop_53:i32 
              #                          temp_30_arithop_53 = Add i32 i_48, 1_0 
              #                    occupy a6 with i_48
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s2 with temp_30_arithop_53
    add     s2,a6,a4
              #                    free a6
              #                    free a4
              #                    free s2
              #                          i_48 = i32 temp_30_arithop_53 
              #                    occupy s2 with temp_30_arithop_53
              #                    occupy a6 with i_48
    mv      a6, s2
              #                    free s2
              #                    free a6
              #                          jump label: while.head_52 
              #                    store to temp_30_arithop_53 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_30_arithop_53
              #                    store to temp_27_ptr2globl_51 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with temp_27_ptr2globl_51
              #                    store to temp_29_index_ptr_53 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_29_index_ptr_53
              #                    store to temp_28_cmp_51 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_28_cmp_51
    j       .while.head_52
              #                    regtab     a0:Freed { symidx: temp_26_index_ptr_48, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_51, tracked: true } |     a3:Freed { symidx: temp_28_cmp_51, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } | 
              #                          label while.exit_52: 
.while.exit_52:
              #                    regtab 
              #                          Define tree_0 [x_56, d_56] -> tree_ret_0 
    .globl tree
    .type tree,@function
tree:
              #                    mem layout:|ra_tree:8 at 152|s0_tree:8 at 144|x:4 at 140|d:4 at 136|temp_31_index_ptr:8 at 128|i:4 at 124|none:4 at 120|temp_32_array_ptr:8 at 112|temp_33_array_ele:4 at 108|temp_34_:1 at 107|none:3 at 104|temp_35_arithop:4 at 100|none:4 at 96|temp_36_index_ptr:8 at 88|temp_37_array_ptr:8 at 80|temp_38_array_ele:4 at 76|none:4 at 72|temp_39_array_ptr:8 at 64|temp_40_array_ele:4 at 60|temp_41_arithop:4 at 56|temp_42_array_ptr:8 at 48|temp_43_array_ele:4 at 44|temp_44_cmp:1 at 43|none:3 at 40|temp_45_array_ptr:8 at 32|temp_46_array_ele:4 at 28|y:4 at 24|temp_47_arithop:4 at 20|none:4 at 16|temp_48_array_ptr:8 at 8|temp_49_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-160
              #                    store to ra_tree_0 in mem offset legal
    sd      ra,152(sp)
              #                    store to s0_tree_0 in mem offset legal
    sd      s0,144(sp)
    addi    s0,sp,160
              #                          alloc ptr->i32 temp_31_index_ptr_58 
              #                          alloc i32 i_58 
              #                          alloc ptr->i32 temp_32_array_ptr_61 
              #                          alloc i32 temp_33_array_ele_61 
              #                          alloc i1 temp_34__1374 
              #                          alloc i32 temp_35_arithop_63 
              #                          alloc ptr->i32 temp_36_index_ptr_63 
              #                          alloc ptr->i32 temp_37_array_ptr_63 
              #                          alloc i32 temp_38_array_ele_63 
              #                          alloc ptr->i32 temp_39_array_ptr_63 
              #                          alloc i32 temp_40_array_ele_63 
              #                          alloc i32 temp_41_arithop_63 
              #                          alloc ptr->i32 temp_42_array_ptr_58 
              #                          alloc i32 temp_43_array_ele_58 
              #                          alloc i1 temp_44_cmp_67 
              #                          alloc ptr->i32 temp_45_array_ptr_69 
              #                          alloc i32 temp_46_array_ele_69 
              #                          alloc i32 y_69 
              #                          alloc i32 temp_47_arithop_69 
              #                          alloc ptr->i32 temp_48_array_ptr_69 
              #                          alloc i32 temp_49_array_ele_69 
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_31_index_ptr_58:ptr->i32 
              #                          temp_31_index_ptr_58 = getelementptr *dep_0:ptr->i32 [Some(x_56)] 
              #                    occupy a2 with temp_31_index_ptr_58
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a0 with x_56
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with *dep_0
              #                       load label dep as ptr to reg
    la      a5, dep
              #                    occupy reg a5 with *dep_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                          store d_56:i32 temp_31_index_ptr_58:ptr->i32 
              #                    occupy a2 with temp_31_index_ptr_58
              #                    occupy a1 with d_56
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                          mu *dep_0:189 
              #                          *dep_0 = chi *dep_0:189 
              #                          i_58 = i32 0_0 
              #                    occupy a6 with i_58
    li      a6, 0
              #                    free a6
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } |     a2:Freed { symidx: temp_31_index_ptr_58, tracked: true } |     a6:Freed { symidx: i_58, tracked: true } | 
              #                          label while.head_62: 
.while.head_62:
              #                          new_var temp_32_array_ptr_61:ptr->i32 
              #                          temp_32_array_ptr_61 = getelementptr *f_0:ptr->Array:i32:[Some(20_0)] [Some(x_56), Some(i_58)] 
              #                    occupy a3 with temp_32_array_ptr_61
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with x_56
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a7 with *f_0
              #                       load label f as ptr to reg
    la      a7, f
              #                    occupy reg a7 with *f_0
    add     a3,a3,a7
              #                    free a7
              #                    free a3
              #                          new_var temp_33_array_ele_61:i32 
              #                          temp_33_array_ele_61 = load temp_32_array_ptr_61:ptr->i32 
              #                    occupy a3 with temp_32_array_ptr_61
              #                    occupy s1 with temp_33_array_ele_61
    lw      s1,0(a3)
              #                    free s1
              #                    free a3
              #                          new_var temp_34__1374:i1 
              #                          temp_34__1374 = icmp i32 Ne temp_33_array_ele_61, 0_0 
              #                    occupy s1 with temp_33_array_ele_61
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s3 with temp_34__1374
    xor     s3,s1,s2
    snez    s3, s3
              #                    free s1
              #                    free s2
              #                    free s3
              #                          br i1 temp_34__1374, label while.body_62, label while.exit_62 
              #                    occupy s3 with temp_34__1374
              #                    free s3
              #                    occupy s3 with temp_34__1374
    bnez    s3, .while.body_62
              #                    free s3
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } |     a2:Freed { symidx: temp_31_index_ptr_58, tracked: true } |     a3:Freed { symidx: temp_32_array_ptr_61, tracked: true } |     a6:Freed { symidx: i_58, tracked: true } |     s1:Freed { symidx: temp_33_array_ele_61, tracked: true } |     s3:Freed { symidx: temp_34__1374, tracked: true } | 
              #                          label while.body_62: 
.while.body_62:
              #                          new_var temp_35_arithop_63:i32 
              #                          temp_35_arithop_63 = Add i32 i_58, 1_0 
              #                    occupy a6 with i_58
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_35_arithop_63
    add     a5,a6,a4
              #                    free a6
              #                    free a4
              #                    free a5
              #                          new_var temp_36_index_ptr_63:ptr->i32 
              #                          temp_36_index_ptr_63 = getelementptr *f_0:ptr->Array:i32:[Some(20_0)] [Some(x_56), Some(temp_35_arithop_63)] 
              #                    occupy a7 with temp_36_index_ptr_63
    li      a7, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a0 with x_56
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a4,a0
              #                    free a4
              #                    free a0
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
              #                    occupy s4 with *f_0
              #                       load label f as ptr to reg
    la      s4, f
              #                    occupy reg s4 with *f_0
    add     a7,a7,s4
              #                    free s4
              #                    free a7
              #                          new_var temp_37_array_ptr_63:ptr->i32 
              #                          temp_37_array_ptr_63 = getelementptr *f_0:ptr->Array:i32:[Some(20_0)] [Some(x_56), Some(i_58)] 
              #                    occupy s5 with temp_37_array_ptr_63
    li      s5, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a0 with x_56
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a4,a0
              #                    free a4
              #                    free a0
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy s7 with *f_0
              #                       load label f as ptr to reg
    la      s7, f
              #                    occupy reg s7 with *f_0
    add     s5,s5,s7
              #                    free s7
              #                    free s5
              #                          new_var temp_38_array_ele_63:i32 
              #                          temp_38_array_ele_63 = load temp_37_array_ptr_63:ptr->i32 
              #                    occupy s5 with temp_37_array_ptr_63
              #                    occupy s8 with temp_38_array_ele_63
    lw      s8,0(s5)
              #                    free s8
              #                    free s5
              #                          new_var temp_39_array_ptr_63:ptr->i32 
              #                          temp_39_array_ptr_63 = getelementptr *f_0:ptr->Array:i32:[Some(20_0)] [Some(temp_38_array_ele_63), Some(i_58)] 
              #                    occupy s9 with temp_39_array_ptr_63
    li      s9, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s8 with temp_38_array_ele_63
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a4,s8
              #                    free a4
              #                    free s8
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
              #                    occupy s11 with *f_0
              #                       load label f as ptr to reg
    la      s11, f
              #                    occupy reg s11 with *f_0
    add     s9,s9,s11
              #                    free s11
              #                    free s9
              #                          new_var temp_40_array_ele_63:i32 
              #                          temp_40_array_ele_63 = load temp_39_array_ptr_63:ptr->i32 
              #                    occupy s9 with temp_39_array_ptr_63
              #                    occupy a4 with temp_40_array_ele_63
    lw      a4,0(s9)
              #                    free a4
              #                    free s9
              #                          store temp_40_array_ele_63:i32 temp_36_index_ptr_63:ptr->i32 
              #                    occupy a7 with temp_36_index_ptr_63
              #                    occupy a4 with temp_40_array_ele_63
    sw      a4,0(a7)
              #                    free a4
              #                    free a7
              #                          mu *f_0:226 
              #                          *f_0 = chi *f_0:226 
              #                          new_var temp_41_arithop_63:i32 
              #                          temp_41_arithop_63 = Add i32 i_58, 1_0 
              #                    occupy a6 with i_58
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s4 with temp_41_arithop_63
    add     s4,a6,s2
              #                    free a6
              #                    free s2
              #                    free s4
              #                          i_58 = i32 temp_41_arithop_63 
              #                    occupy s4 with temp_41_arithop_63
              #                    occupy a6 with i_58
    mv      a6, s4
              #                    free s4
              #                    free a6
              #                          jump label: while.head_62 
              #                    store to temp_38_array_ele_63 in mem offset legal
    sw      s8,76(sp)
              #                    release s8 with temp_38_array_ele_63
              #                    store to temp_36_index_ptr_63 in mem offset legal
    sd      a7,88(sp)
              #                    release a7 with temp_36_index_ptr_63
              #                    store to temp_35_arithop_63 in mem offset legal
    sw      a5,100(sp)
              #                    release a5 with temp_35_arithop_63
              #                    store to temp_37_array_ptr_63 in mem offset legal
    sd      s5,80(sp)
              #                    release s5 with temp_37_array_ptr_63
              #                    store to temp_39_array_ptr_63 in mem offset legal
    sd      s9,64(sp)
              #                    release s9 with temp_39_array_ptr_63
              #                    store to temp_33_array_ele_61 in mem offset legal
    sw      s1,108(sp)
              #                    release s1 with temp_33_array_ele_61
              #                    store to temp_34__1374 in mem offset legal
    sb      s3,107(sp)
              #                    release s3 with temp_34__1374
              #                    store to temp_32_array_ptr_61 in mem offset legal
    sd      a3,112(sp)
              #                    release a3 with temp_32_array_ptr_61
              #                    store to temp_41_arithop_63 in mem offset legal
    sw      s4,56(sp)
              #                    release s4 with temp_41_arithop_63
              #                    store to temp_40_array_ele_63 in mem offset legal
    sw      a4,60(sp)
              #                    release a4 with temp_40_array_ele_63
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } |     a2:Freed { symidx: temp_31_index_ptr_58, tracked: true } |     a3:Freed { symidx: temp_32_array_ptr_61, tracked: true } |     a6:Freed { symidx: i_58, tracked: true } |     s1:Freed { symidx: temp_33_array_ele_61, tracked: true } |     s3:Freed { symidx: temp_34__1374, tracked: true } | 
              #                          label while.exit_62: 
.while.exit_62:
              #                          new_var temp_42_array_ptr_58:ptr->i32 
              #                          temp_42_array_ptr_58 = getelementptr *head_0:ptr->i32 [Some(x_56)] 
              #                    occupy a4 with temp_42_array_ptr_58
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with x_56
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
              #                    occupy s2 with *head_0
              #                       load label head as ptr to reg
    la      s2, head
              #                    occupy reg s2 with *head_0
    add     a4,a4,s2
              #                    free s2
              #                    free a4
              #                          new_var temp_43_array_ele_58:i32 
              #                          temp_43_array_ele_58 = load temp_42_array_ptr_58:ptr->i32 
              #                    occupy a4 with temp_42_array_ptr_58
              #                    occupy s4 with temp_43_array_ele_58
    lw      s4,0(a4)
              #                    free s4
              #                    free a4
              #                          i_58 = i32 temp_43_array_ele_58 
              #                    occupy s4 with temp_43_array_ele_58
              #                    occupy a6 with i_58
    mv      a6, s4
              #                    free s4
              #                    free a6
              #                          jump label: while.head_68 
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } |     a2:Freed { symidx: temp_31_index_ptr_58, tracked: true } |     a3:Freed { symidx: temp_32_array_ptr_61, tracked: true } |     a4:Freed { symidx: temp_42_array_ptr_58, tracked: true } |     a6:Freed { symidx: i_58, tracked: true } |     s1:Freed { symidx: temp_33_array_ele_61, tracked: true } |     s3:Freed { symidx: temp_34__1374, tracked: true } |     s4:Freed { symidx: temp_43_array_ele_58, tracked: true } | 
              #                          label while.head_68: 
.while.head_68:
              #                          new_var temp_44_cmp_67:i1 
              #                          temp_44_cmp_67 = icmp i32 Ne i_58, -1_0 
              #                    occupy a6 with i_58
              #                    occupy a5 with -1_0
    li      a5, -1
              #                    occupy a7 with temp_44_cmp_67
    xor     a7,a6,a5
    snez    a7, a7
              #                    free a6
              #                    free a5
              #                    free a7
              #                          br i1 temp_44_cmp_67, label while.body_68, label while.exit_68 
              #                    occupy a7 with temp_44_cmp_67
              #                    free a7
              #                    occupy a7 with temp_44_cmp_67
    bnez    a7, .while.body_68
              #                    free a7
    j       .while.exit_68
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } |     a2:Freed { symidx: temp_31_index_ptr_58, tracked: true } |     a3:Freed { symidx: temp_32_array_ptr_61, tracked: true } |     a4:Freed { symidx: temp_42_array_ptr_58, tracked: true } |     a6:Freed { symidx: i_58, tracked: true } |     a7:Freed { symidx: temp_44_cmp_67, tracked: true } |     s1:Freed { symidx: temp_33_array_ele_61, tracked: true } |     s3:Freed { symidx: temp_34__1374, tracked: true } |     s4:Freed { symidx: temp_43_array_ele_58, tracked: true } | 
              #                          label while.body_68: 
.while.body_68:
              #                          new_var temp_45_array_ptr_69:ptr->i32 
              #                          temp_45_array_ptr_69 = getelementptr *to_0:ptr->i32 [Some(i_58)] 
              #                    occupy a5 with temp_45_array_ptr_69
    li      a5, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a6 with i_58
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s2,a6
              #                    free s2
              #                    free a6
    add     a5,a5,s5
              #                    free s5
    slli a5,a5,2
              #                    occupy s6 with *to_0
              #                       load label to as ptr to reg
    la      s6, to
              #                    occupy reg s6 with *to_0
    add     a5,a5,s6
              #                    free s6
              #                    free a5
              #                          new_var temp_46_array_ele_69:i32 
              #                          temp_46_array_ele_69 = load temp_45_array_ptr_69:ptr->i32 
              #                    occupy a5 with temp_45_array_ptr_69
              #                    occupy s7 with temp_46_array_ele_69
    lw      s7,0(a5)
              #                    free s7
              #                    free a5
              #                          y_69 = i32 temp_46_array_ele_69 
              #                    occupy s7 with temp_46_array_ele_69
              #                    occupy s8 with y_69
    mv      s8, s7
              #                    free s7
              #                    free s8
              #                          new_var temp_47_arithop_69:i32 
              #                          temp_47_arithop_69 = Add i32 d_56, 1_0 
              #                    occupy a1 with d_56
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s9 with temp_47_arithop_69
    add     s9,a1,s2
              #                    free a1
              #                    free s2
              #                    free s9
              #                           Call void tree_0(y_69, temp_47_arithop_69) 
              #                    saved register dumping to mem
              #                    store to temp_33_array_ele_61 in mem offset legal
    sw      s1,108(sp)
              #                    release s1 with temp_33_array_ele_61
              #                    store to temp_34__1374 in mem offset legal
    sb      s3,107(sp)
              #                    release s3 with temp_34__1374
              #                    store to temp_43_array_ele_58 in mem offset legal
    sw      s4,44(sp)
              #                    release s4 with temp_43_array_ele_58
              #                    store to temp_46_array_ele_69 in mem offset legal
    sw      s7,28(sp)
              #                    release s7 with temp_46_array_ele_69
              #                    store to y_69 in mem offset legal
    sw      s8,24(sp)
              #                    release s8 with y_69
              #                    store to temp_47_arithop_69 in mem offset legal
    sw      s9,20(sp)
              #                    release s9 with temp_47_arithop_69
              #                    store to x_56 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with x_56
              #                    store to d_56 in mem offset legal
    sw      a1,136(sp)
              #                    release a1 with d_56
              #                    store to temp_31_index_ptr_58 in mem offset legal
    sd      a2,128(sp)
              #                    release a2 with temp_31_index_ptr_58
              #                    store to temp_32_array_ptr_61 in mem offset legal
    sd      a3,112(sp)
              #                    release a3 with temp_32_array_ptr_61
              #                    store to temp_42_array_ptr_58 in mem offset legal
    sd      a4,48(sp)
              #                    release a4 with temp_42_array_ptr_58
              #                    store to temp_45_array_ptr_69 in mem offset legal
    sd      a5,32(sp)
              #                    release a5 with temp_45_array_ptr_69
              #                    store to i_58 in mem offset legal
    sw      a6,124(sp)
              #                    release a6 with i_58
              #                    store to temp_44_cmp_67 in mem offset legal
    sb      a7,43(sp)
              #                    release a7 with temp_44_cmp_67
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_y_69_0
              #                    load from y_69 in mem


    lw      a0,24(sp)
              #                    occupy a1 with _anonymous_of_temp_47_arithop_69_0
              #                    load from temp_47_arithop_69 in mem


    lw      a1,20(sp)
              #                    arg load ended


    call    tree
              #                          new_var temp_48_array_ptr_69:ptr->i32 
              #                          temp_48_array_ptr_69 = getelementptr *next_0:ptr->i32 [Some(i_58)] 
              #                    occupy a0 with temp_48_array_ptr_69
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with i_58
              #                    load from i_58 in mem


    lw      a2,124(sp)
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *next_0
              #                       load label next as ptr to reg
    la      a4, next
              #                    occupy reg a4 with *next_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          new_var temp_49_array_ele_69:i32 
              #                          temp_49_array_ele_69 = load temp_48_array_ptr_69:ptr->i32 
              #                    occupy a0 with temp_48_array_ptr_69
              #                    occupy a5 with temp_49_array_ele_69
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                          i_58 = i32 temp_49_array_ele_69 
              #                    occupy a5 with temp_49_array_ele_69
              #                    occupy a2 with i_58
    mv      a2, a5
              #                    free a5
              #                    free a2
              #                          jump label: while.head_68 
              #                    store to i_58 in mem offset legal
    sw      a2,124(sp)
              #                    release a2 with i_58
              #                    store to temp_49_array_ele_69 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_49_array_ele_69
              #                    store to temp_48_array_ptr_69 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_48_array_ptr_69
              #                    occupy a6 with _anonymous_of_i_58_0
              #                    load from i_58 in mem


    lw      a6,124(sp)
              #                    occupy a2 with _anonymous_of_temp_31_index_ptr_58_0
              #                    load from temp_31_index_ptr_58 in mem
    ld      a2,128(sp)
              #                    occupy a0 with _anonymous_of_x_56_0
              #                    load from x_56 in mem


    lw      a0,140(sp)
              #                    occupy s1 with _anonymous_of_temp_33_array_ele_61_0
              #                    load from temp_33_array_ele_61 in mem


    lw      s1,108(sp)
              #                    occupy s3 with _anonymous_of_temp_34__1374_0
              #                    load from temp_34__1374 in mem
    lb      s3,107(sp)
              #                    occupy a3 with _anonymous_of_temp_32_array_ptr_61_0
              #                    load from temp_32_array_ptr_61 in mem
    ld      a3,112(sp)
              #                    occupy s4 with _anonymous_of_temp_43_array_ele_58_0
              #                    load from temp_43_array_ele_58 in mem


    lw      s4,44(sp)
              #                    occupy a1 with _anonymous_of_d_56_0
              #                    load from d_56 in mem


    lw      a1,136(sp)
              #                    occupy a4 with _anonymous_of_temp_42_array_ptr_58_0
              #                    load from temp_42_array_ptr_58 in mem
    ld      a4,48(sp)
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: d_56, tracked: true } |     a2:Freed { symidx: temp_31_index_ptr_58, tracked: true } |     a3:Freed { symidx: temp_32_array_ptr_61, tracked: true } |     a4:Freed { symidx: temp_42_array_ptr_58, tracked: true } |     a6:Freed { symidx: i_58, tracked: true } |     a7:Freed { symidx: temp_44_cmp_67, tracked: true } |     s1:Freed { symidx: temp_33_array_ele_61, tracked: true } |     s3:Freed { symidx: temp_34__1374, tracked: true } |     s4:Freed { symidx: temp_43_array_ele_58, tracked: true } | 
              #                          label while.exit_68: 
.while.exit_68:
              #                    regtab 
              #                          Define LCA_0 [x_73, y_73] -> LCA_ret_0 
    .globl LCA
    .type LCA,@function
LCA:
              #                    mem layout:|ra_LCA:8 at 256|s0_LCA:8 at 248|x:4 at 244|y:4 at 240|temp_50_array_ptr:8 at 232|temp_51_array_ele:4 at 228|none:4 at 224|temp_52_array_ptr:8 at 216|temp_53_array_ele:4 at 212|temp_54_cmp:1 at 211|none:3 at 208|t:4 at 204|i:4 at 200|temp_55_array_ptr:8 at 192|temp_56_array_ele:4 at 188|none:4 at 184|temp_57_array_ptr:8 at 176|temp_58_array_ele:4 at 172|temp_59_cmp:1 at 171|none:3 at 168|temp_60_array_ptr:8 at 160|temp_61_array_ele:4 at 156|none:4 at 152|temp_62_array_ptr:8 at 144|temp_63_array_ele:4 at 140|none:4 at 136|temp_64_array_ptr:8 at 128|temp_65_array_ele:4 at 124|temp_66_cmp:1 at 123|none:3 at 120|temp_67_array_ptr:8 at 112|temp_68_array_ele:4 at 108|temp_69_:1 at 107|temp_70_logic:1 at 106|none:2 at 104|temp_71_array_ptr:8 at 96|temp_72_array_ele:4 at 92|temp_73_arithop:4 at 88|temp_74_cmp:1 at 87|temp_75_cmp:1 at 86|none:6 at 80|temp_76_array_ptr:8 at 72|temp_77_array_ele:4 at 68|none:4 at 64|temp_78_array_ptr:8 at 56|temp_79_array_ele:4 at 52|temp_80_cmp:1 at 51|none:3 at 48|temp_81_array_ptr:8 at 40|temp_82_array_ele:4 at 36|none:4 at 32|temp_83_array_ptr:8 at 24|temp_84_array_ele:4 at 20|temp_85_arithop:4 at 16|temp_86_array_ptr:8 at 8|temp_87_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-264
              #                    store to ra_LCA_0 in mem offset legal
    sd      ra,256(sp)
              #                    store to s0_LCA_0 in mem offset legal
    sd      s0,248(sp)
    addi    s0,sp,264
              #                          alloc ptr->i32 temp_50_array_ptr_76 
              #                          alloc i32 temp_51_array_ele_76 
              #                          alloc ptr->i32 temp_52_array_ptr_76 
              #                          alloc i32 temp_53_array_ele_76 
              #                          alloc i1 temp_54_cmp_76 
              #                          alloc i32 t_78 
              #                          alloc i32 i_75 
              #                          alloc ptr->i32 temp_55_array_ptr_83 
              #                          alloc i32 temp_56_array_ele_83 
              #                          alloc ptr->i32 temp_57_array_ptr_83 
              #                          alloc i32 temp_58_array_ele_83 
              #                          alloc i1 temp_59_cmp_83 
              #                          alloc ptr->i32 temp_60_array_ptr_86 
              #                          alloc i32 temp_61_array_ele_86 
              #                          alloc ptr->i32 temp_62_array_ptr_86 
              #                          alloc i32 temp_63_array_ele_86 
              #                          alloc ptr->i32 temp_64_array_ptr_86 
              #                          alloc i32 temp_65_array_ele_86 
              #                          alloc i1 temp_66_cmp_86 
              #                          alloc ptr->i32 temp_67_array_ptr_86 
              #                          alloc i32 temp_68_array_ele_86 
              #                          alloc i1 temp_69__86 
              #                          alloc i1 temp_70_logic_86 
              #                          alloc ptr->i32 temp_71_array_ptr_86 
              #                          alloc i32 temp_72_array_ele_86 
              #                          alloc i32 temp_73_arithop_85 
              #                          alloc i1 temp_74_cmp_90 
              #                          alloc i1 temp_75_cmp_94 
              #                          alloc ptr->i32 temp_76_array_ptr_97 
              #                          alloc i32 temp_77_array_ele_97 
              #                          alloc ptr->i32 temp_78_array_ptr_97 
              #                          alloc i32 temp_79_array_ele_97 
              #                          alloc i1 temp_80_cmp_97 
              #                          alloc ptr->i32 temp_81_array_ptr_99 
              #                          alloc i32 temp_82_array_ele_99 
              #                          alloc ptr->i32 temp_83_array_ptr_99 
              #                          alloc i32 temp_84_array_ele_99 
              #                          alloc i32 temp_85_arithop_96 
              #                          alloc ptr->i32 temp_86_array_ptr_75 
              #                          alloc i32 temp_87_array_ele_75 
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_50_array_ptr_76:ptr->i32 
              #                          temp_50_array_ptr_76 = getelementptr *dep_0:ptr->i32 [Some(y_73)] 
              #                    occupy a2 with temp_50_array_ptr_76
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a1 with y_73
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a1
              #                    free a3
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with *dep_0
              #                       load label dep as ptr to reg
    la      a5, dep
              #                    occupy reg a5 with *dep_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                          new_var temp_51_array_ele_76:i32 
              #                          temp_51_array_ele_76 = load temp_50_array_ptr_76:ptr->i32 
              #                    occupy a2 with temp_50_array_ptr_76
              #                    occupy a6 with temp_51_array_ele_76
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          new_var temp_52_array_ptr_76:ptr->i32 
              #                          temp_52_array_ptr_76 = getelementptr *dep_0:ptr->i32 [Some(x_73)] 
              #                    occupy a7 with temp_52_array_ptr_76
    li      a7, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a0 with x_73
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a3,a0
              #                    free a3
              #                    free a0
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy s2 with *dep_0
              #                       load label dep as ptr to reg
    la      s2, dep
              #                    occupy reg s2 with *dep_0
    add     a7,a7,s2
              #                    free s2
              #                    free a7
              #                          new_var temp_53_array_ele_76:i32 
              #                          temp_53_array_ele_76 = load temp_52_array_ptr_76:ptr->i32 
              #                    occupy a7 with temp_52_array_ptr_76
              #                    occupy s3 with temp_53_array_ele_76
    lw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          new_var temp_54_cmp_76:i1 
              #                          temp_54_cmp_76 = icmp i32 Slt temp_53_array_ele_76, temp_51_array_ele_76 
              #                    occupy s3 with temp_53_array_ele_76
              #                    occupy a6 with temp_51_array_ele_76
              #                    occupy s4 with temp_54_cmp_76
    slt     s4,s3,a6
              #                    free s3
              #                    free a6
              #                    free s4
              #                          br i1 temp_54_cmp_76, label branch_true_77, label branch_false_77 
              #                    occupy s4 with temp_54_cmp_76
              #                    free s4
              #                    occupy s4 with temp_54_cmp_76
    bnez    s4, .branch_true_77
              #                    free s4
    j       .branch_false_77
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } | 
              #                          label branch_true_77: 
.branch_true_77:
              #                          t_78 = i32 x_73 
              #                    occupy a0 with x_73
              #                    occupy a3 with t_78
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          x_73 = i32 y_73 
              #                    occupy a1 with y_73
              #                    occupy a0 with x_73
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          y_73 = i32 t_78 
              #                    occupy a3 with t_78
              #                    occupy a1 with y_73
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: branch_false_77 
              #                    store to t_78 in mem offset legal
    sw      a3,204(sp)
              #                    release a3 with t_78
    j       .branch_false_77
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } | 
              #                          label branch_false_77: 
.branch_false_77:
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          i_75 = i32 19_0 
              #                    occupy a3 with i_75
    li      a3, 19
              #                    free a3
              #                          jump label: while.head_84 
    j       .while.head_84
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } | 
              #                          label while.head_84: 
.while.head_84:
              #                          new_var temp_55_array_ptr_83:ptr->i32 
              #                          temp_55_array_ptr_83 = getelementptr *dep_0:ptr->i32 [Some(y_73)] 
              #                    occupy a4 with temp_55_array_ptr_83
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with y_73
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a5,a1
              #                    free a5
              #                    free a1
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
              #                    occupy s2 with *dep_0
              #                       load label dep as ptr to reg
    la      s2, dep
              #                    occupy reg s2 with *dep_0
    add     a4,a4,s2
              #                    free s2
              #                    free a4
              #                          new_var temp_56_array_ele_83:i32 
              #                          temp_56_array_ele_83 = load temp_55_array_ptr_83:ptr->i32 
              #                    occupy a4 with temp_55_array_ptr_83
              #                    occupy s5 with temp_56_array_ele_83
    lw      s5,0(a4)
              #                    free s5
              #                    free a4
              #                          new_var temp_57_array_ptr_83:ptr->i32 
              #                          temp_57_array_ptr_83 = getelementptr *dep_0:ptr->i32 [Some(x_73)] 
              #                    occupy s6 with temp_57_array_ptr_83
    li      s6, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with x_73
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a5,a0
              #                    free a5
              #                    free a0
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s8 with *dep_0
              #                       load label dep as ptr to reg
    la      s8, dep
              #                    occupy reg s8 with *dep_0
    add     s6,s6,s8
              #                    free s8
              #                    free s6
              #                          new_var temp_58_array_ele_83:i32 
              #                          temp_58_array_ele_83 = load temp_57_array_ptr_83:ptr->i32 
              #                    occupy s6 with temp_57_array_ptr_83
              #                    occupy s9 with temp_58_array_ele_83
    lw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          new_var temp_59_cmp_83:i1 
              #                          temp_59_cmp_83 = icmp i32 Sgt temp_58_array_ele_83, temp_56_array_ele_83 
              #                    occupy s9 with temp_58_array_ele_83
              #                    occupy s5 with temp_56_array_ele_83
              #                    occupy s10 with temp_59_cmp_83
    slt     s10,s5,s9
              #                    free s9
              #                    free s5
              #                    free s10
              #                          br i1 temp_59_cmp_83, label while.body_84, label while.exit_84 
              #                    occupy s10 with temp_59_cmp_83
              #                    free s10
              #                    occupy s10 with temp_59_cmp_83
    bnez    s10, .while.body_84
              #                    free s10
    j       .while.exit_84
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s6:Freed { symidx: temp_57_array_ptr_83, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label while.body_84: 
.while.body_84:
              #                          new_var temp_60_array_ptr_86:ptr->i32 
              #                          temp_60_array_ptr_86 = getelementptr *dep_0:ptr->i32 [Some(y_73)] 
              #                    occupy a5 with temp_60_array_ptr_86
    li      a5, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a1 with y_73
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,s1,a1
              #                    free s1
              #                    free a1
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
              #                    occupy s7 with *dep_0
              #                       load label dep as ptr to reg
    la      s7, dep
              #                    occupy reg s7 with *dep_0
    add     a5,a5,s7
              #                    free s7
              #                    free a5
              #                          new_var temp_61_array_ele_86:i32 
              #                          temp_61_array_ele_86 = load temp_60_array_ptr_86:ptr->i32 
              #                    occupy a5 with temp_60_array_ptr_86
              #                    occupy s8 with temp_61_array_ele_86
    lw      s8,0(a5)
              #                    free s8
              #                    free a5
              #                          new_var temp_62_array_ptr_86:ptr->i32 
              #                          temp_62_array_ptr_86 = getelementptr *f_0:ptr->Array:i32:[Some(20_0)] [Some(x_73), Some(i_75)] 
              #                    occupy s11 with temp_62_array_ptr_86
    li      s11, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a0 with x_73
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,s1,a0
              #                    free s1
              #                    free a0
    add     s11,s11,s2
              #                    free s2
    slli s11,s11,2
              #                    occupy s1 with *f_0
              #                       load label f as ptr to reg
    la      s1, f
              #                    occupy reg s1 with *f_0
    add     s11,s11,s1
              #                    free s1
              #                    free s11
              #                          new_var temp_63_array_ele_86:i32 
              #                          temp_63_array_ele_86 = load temp_62_array_ptr_86:ptr->i32 
              #                    occupy s11 with temp_62_array_ptr_86
              #                    occupy s1 with temp_63_array_ele_86
    lw      s1,0(s11)
              #                    free s1
              #                    free s11
              #                          new_var temp_64_array_ptr_86:ptr->i32 
              #                          temp_64_array_ptr_86 = getelementptr *dep_0:ptr->i32 [Some(temp_63_array_ele_86)] 
              #                    occupy s2 with temp_64_array_ptr_86
    li      s2, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s1 with temp_63_array_ele_86
              #                    store to x_73 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with x_73
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,s7,s1
              #                    free s7
              #                    free s1
    add     s2,s2,a0
              #                    free a0
    slli s2,s2,2
              #                    occupy a0 with *dep_0
              #                       load label dep as ptr to reg
    la      a0, dep
              #                    occupy reg a0 with *dep_0
    add     s2,s2,a0
              #                    free a0
              #                    free s2
              #                          new_var temp_65_array_ele_86:i32 
              #                          temp_65_array_ele_86 = load temp_64_array_ptr_86:ptr->i32 
              #                    occupy s2 with temp_64_array_ptr_86
              #                    occupy a0 with temp_65_array_ele_86
    lw      a0,0(s2)
              #                    free a0
              #                    free s2
              #                          new_var temp_66_cmp_86:i1 
              #                          temp_66_cmp_86 = icmp i32 Sge temp_65_array_ele_86, temp_61_array_ele_86 
              #                    occupy a0 with temp_65_array_ele_86
              #                    occupy s8 with temp_61_array_ele_86
              #                    occupy s7 with temp_66_cmp_86
    slt     s7,a0,s8
    xori    s7,s7,1
              #                    free a0
              #                    free s8
              #                    free s7
              #                          new_var temp_67_array_ptr_86:ptr->i32 
              #                          temp_67_array_ptr_86 = getelementptr *f_0:ptr->Array:i32:[Some(20_0)] [Some(x_73), Some(i_75)] 
              #                    store to temp_65_array_ele_86 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_65_array_ele_86
              #                    occupy a0 with temp_67_array_ptr_86
    li      a0, 0
              #                    store to y_73 in mem offset legal
    sw      a1,240(sp)
              #                    release a1 with y_73
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_50_array_ptr_76 in mem offset legal
    sd      a2,232(sp)
              #                    release a2 with temp_50_array_ptr_76
              #                    occupy a2 with x_73
              #                    load from x_73 in mem


    lw      a2,244(sp)
              #                    store to i_75 in mem offset legal
    sw      a3,200(sp)
              #                    release a3 with i_75
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *f_0
              #                       load label f as ptr to reg
    la      a1, f
              #                    occupy reg a1 with *f_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_68_array_ele_86:i32 
              #                          temp_68_array_ele_86 = load temp_67_array_ptr_86:ptr->i32 
              #                    occupy a0 with temp_67_array_ptr_86
              #                    occupy a1 with temp_68_array_ele_86
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_69__86:i1 
              #                          temp_69__86 = icmp i32 Ne temp_68_array_ele_86, 0_0 
              #                    occupy a1 with temp_68_array_ele_86
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    store to temp_67_array_ptr_86 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with temp_67_array_ptr_86
              #                    occupy a0 with temp_69__86
    xor     a0,a1,a3
    snez    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_70_logic_86:i1 
              #                          temp_70_logic_86 = And i1 temp_69__86, temp_66_cmp_86 
              #                    occupy a0 with temp_69__86
              #                    occupy s7 with temp_66_cmp_86
              #                    occupy a3 with temp_70_logic_86
    and     a3,a0,s7
              #                    free a0
              #                    free s7
              #                    free a3
              #                          br i1 temp_70_logic_86, label branch_true_87, label branch_false_87 
              #                    occupy a3 with temp_70_logic_86
              #                    free a3
              #                    store to temp_57_array_ptr_83 in mem offset legal
    sd      s6,176(sp)
              #                    release s6 with temp_57_array_ptr_83
              #                    occupy a3 with temp_70_logic_86
    bnez    a3, .branch_true_87
              #                    free a3
    j       .branch_false_87
              #                    regtab     a0:Freed { symidx: temp_69__86, tracked: true } |     a1:Freed { symidx: temp_68_array_ele_86, tracked: true } |     a2:Freed { symidx: x_73, tracked: true } |     a3:Freed { symidx: temp_70_logic_86, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_60_array_ptr_86, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s11:Freed { symidx: temp_62_array_ptr_86, tracked: true } |     s1:Freed { symidx: temp_63_array_ele_86, tracked: true } |     s2:Freed { symidx: temp_64_array_ptr_86, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s7:Freed { symidx: temp_66_cmp_86, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_86, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label branch_true_87: 
.branch_true_87:
              #                          new_var temp_71_array_ptr_86:ptr->i32 
              #                          temp_71_array_ptr_86 = getelementptr *f_0:ptr->Array:i32:[Some(20_0)] [Some(x_73), Some(i_75)] 
              #                    occupy s6 with temp_71_array_ptr_86
    li      s6, 0
              #                    store to temp_69__86 in mem offset legal
    sb      a0,107(sp)
              #                    release a0 with temp_69__86
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with x_73
              #                    store to temp_68_array_ele_86 in mem offset legal
    sw      a1,108(sp)
              #                    release a1 with temp_68_array_ele_86
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     s6,s6,a1
              #                    free a1
    slli s6,s6,2
              #                    occupy a0 with *f_0
              #                       load label f as ptr to reg
    la      a0, f
              #                    occupy reg a0 with *f_0
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                          new_var temp_72_array_ele_86:i32 
              #                          temp_72_array_ele_86 = load temp_71_array_ptr_86:ptr->i32 
              #                    occupy s6 with temp_71_array_ptr_86
              #                    occupy a0 with temp_72_array_ele_86
    lw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                          x_73 = i32 temp_72_array_ele_86 
              #                    occupy a0 with temp_72_array_ele_86
              #                    occupy a2 with x_73
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          jump label: branch_false_87 
              #                    store to temp_71_array_ptr_86 in mem offset legal
    sd      s6,96(sp)
              #                    release s6 with temp_71_array_ptr_86
              #                    store to temp_72_array_ele_86 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_72_array_ele_86
              #                    occupy a0 with _anonymous_of_temp_69__86_0
              #                    load from temp_69__86 in mem
    lb      a0,107(sp)
              #                    occupy a1 with _anonymous_of_temp_68_array_ele_86_0
              #                    load from temp_68_array_ele_86 in mem


    lw      a1,108(sp)
    j       .branch_false_87
              #                    regtab     a0:Freed { symidx: temp_69__86, tracked: true } |     a1:Freed { symidx: temp_68_array_ele_86, tracked: true } |     a2:Freed { symidx: x_73, tracked: true } |     a3:Freed { symidx: temp_70_logic_86, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_60_array_ptr_86, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s11:Freed { symidx: temp_62_array_ptr_86, tracked: true } |     s1:Freed { symidx: temp_63_array_ele_86, tracked: true } |     s2:Freed { symidx: temp_64_array_ptr_86, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s7:Freed { symidx: temp_66_cmp_86, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_86, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label branch_false_87: 
.branch_false_87:
              #                    regtab     a0:Freed { symidx: temp_69__86, tracked: true } |     a1:Freed { symidx: temp_68_array_ele_86, tracked: true } |     a2:Freed { symidx: x_73, tracked: true } |     a3:Freed { symidx: temp_70_logic_86, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_60_array_ptr_86, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s11:Freed { symidx: temp_62_array_ptr_86, tracked: true } |     s1:Freed { symidx: temp_63_array_ele_86, tracked: true } |     s2:Freed { symidx: temp_64_array_ptr_86, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s7:Freed { symidx: temp_66_cmp_86, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_86, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_73_arithop_85:i32 
              #                          temp_73_arithop_85 = Sub i32 i_75, 1_0 
              #                    occupy s6 with i_75
              #                    load from i_75 in mem


    lw      s6,200(sp)
              #                    store to temp_69__86 in mem offset legal
    sb      a0,107(sp)
              #                    release a0 with temp_69__86
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_68_array_ele_86 in mem offset legal
    sw      a1,108(sp)
              #                    release a1 with temp_68_array_ele_86
              #                    occupy a1 with temp_73_arithop_85
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_73_arithop_85, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: x_73, tracked: true } |     a3:Freed { symidx: temp_70_logic_86, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_60_array_ptr_86, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s11:Freed { symidx: temp_62_array_ptr_86, tracked: true } |     s1:Freed { symidx: temp_63_array_ele_86, tracked: true } |     s2:Freed { symidx: temp_64_array_ptr_86, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s6:Occupied { symidx: i_75, tracked: true, occupy_count: 1 } |     s7:Freed { symidx: temp_66_cmp_86, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_86, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 


    sub     a1,s6,a0
              #                    free s6
              #                    free a0
              #                    free a1
              #                          i_75 = i32 temp_73_arithop_85 
              #                    occupy a1 with temp_73_arithop_85
              #                    occupy s6 with i_75
    mv      s6, a1
              #                    free a1
              #                    free s6
              #                          jump label: while.head_84 
              #                    store to i_75 in mem offset legal
    sw      s6,200(sp)
              #                    release s6 with i_75
              #                    store to temp_60_array_ptr_86 in mem offset legal
    sd      a5,160(sp)
              #                    release a5 with temp_60_array_ptr_86
              #                    store to temp_63_array_ele_86 in mem offset legal
    sw      s1,140(sp)
              #                    release s1 with temp_63_array_ele_86
              #                    store to temp_64_array_ptr_86 in mem offset legal
    sd      s2,128(sp)
              #                    release s2 with temp_64_array_ptr_86
              #                    store to temp_73_arithop_85 in mem offset legal
    sw      a1,88(sp)
              #                    release a1 with temp_73_arithop_85
              #                    store to temp_62_array_ptr_86 in mem offset legal
    sd      s11,144(sp)
              #                    release s11 with temp_62_array_ptr_86
              #                    store to temp_56_array_ele_83 in mem offset legal
    sw      s5,188(sp)
              #                    release s5 with temp_56_array_ele_83
              #                    store to temp_66_cmp_86 in mem offset legal
    sb      s7,123(sp)
              #                    release s7 with temp_66_cmp_86
              #                    store to temp_70_logic_86 in mem offset legal
    sb      a3,106(sp)
              #                    release a3 with temp_70_logic_86
              #                    store to temp_55_array_ptr_83 in mem offset legal
    sd      a4,192(sp)
              #                    release a4 with temp_55_array_ptr_83
              #                    store to temp_61_array_ele_86 in mem offset legal
    sw      s8,156(sp)
              #                    release s8 with temp_61_array_ele_86
              #                    store to x_73 in mem offset legal
    sw      a2,244(sp)
              #                    release a2 with x_73
              #                    store to temp_59_cmp_83 in mem offset legal
    sb      s10,171(sp)
              #                    release s10 with temp_59_cmp_83
              #                    store to temp_58_array_ele_83 in mem offset legal
    sw      s9,172(sp)
              #                    release s9 with temp_58_array_ele_83
              #                    occupy a0 with _anonymous_of_x_73_0
              #                    load from x_73 in mem


    lw      a0,244(sp)
              #                    occupy a1 with _anonymous_of_y_73_0
              #                    load from y_73 in mem


    lw      a1,240(sp)
              #                    occupy a3 with _anonymous_of_i_75_0
              #                    load from i_75 in mem


    lw      a3,200(sp)
              #                    occupy a2 with _anonymous_of_temp_50_array_ptr_76_0
              #                    load from temp_50_array_ptr_76 in mem
    ld      a2,232(sp)
    j       .while.head_84
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s6:Freed { symidx: temp_57_array_ptr_83, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label while.exit_84: 
.while.exit_84:
              #                          new_var temp_74_cmp_90:i1 
              #                          temp_74_cmp_90 = icmp i32 Eq x_73, y_73 
              #                    occupy a0 with x_73
              #                    occupy a1 with y_73
              #                    occupy a5 with temp_74_cmp_90
    xor     a5,a0,a1
    seqz    a5, a5
              #                    free a0
              #                    free a1
              #                    free a5
              #                          br i1 temp_74_cmp_90, label branch_true_91, label branch_false_91 
              #                    occupy a5 with temp_74_cmp_90
              #                    free a5
              #                    occupy a5 with temp_74_cmp_90
    bnez    a5, .branch_true_91
              #                    free a5
    j       .branch_false_91
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_74_cmp_90, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s6:Freed { symidx: temp_57_array_ptr_83, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label branch_true_91: 
.branch_true_91:
              #                          ret x_73 
              #                    load from ra_LCA_0 in mem
    ld      ra,256(sp)
              #                    load from s0_LCA_0 in mem
    ld      s0,248(sp)
              #                    store to x_73 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with x_73
              #                    occupy a0 with x_73
              #                    load from x_73 in mem


    lw      a0,244(sp)
    addi    sp,sp,264
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_74_cmp_90, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s6:Freed { symidx: temp_57_array_ptr_83, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label branch_false_91: 
.branch_false_91:
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_74_cmp_90, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s6:Freed { symidx: temp_57_array_ptr_83, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          i_75 = i32 19_0 
              #                    occupy a3 with i_75
    li      a3, 19
              #                    free a3
              #                          jump label: while.head_95 
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_74_cmp_90, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s6:Freed { symidx: temp_57_array_ptr_83, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label while.head_95: 
.while.head_95:
              #                          new_var temp_75_cmp_94:i1 
              #                          temp_75_cmp_94 = icmp i32 Sge i_75, 0_0 
              #                    occupy a3 with i_75
              #                    occupy s1 with 0_0
    li      s1, 0
              #                    occupy s2 with temp_75_cmp_94
    slt     s2,a3,s1
    xori    s2,s2,1
              #                    free a3
              #                    free s1
              #                    free s2
              #                          br i1 temp_75_cmp_94, label while.body_95, label while.exit_95 
              #                    occupy s2 with temp_75_cmp_94
              #                    free s2
              #                    occupy s2 with temp_75_cmp_94
    bnez    s2, .while.body_95
              #                    free s2
    j       .while.exit_95
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_74_cmp_90, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s2:Freed { symidx: temp_75_cmp_94, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s6:Freed { symidx: temp_57_array_ptr_83, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label while.body_95: 
.while.body_95:
              #                          new_var temp_76_array_ptr_97:ptr->i32 
              #                          temp_76_array_ptr_97 = getelementptr *f_0:ptr->Array:i32:[Some(20_0)] [Some(y_73), Some(i_75)] 
              #                    occupy s1 with temp_76_array_ptr_97
    li      s1, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy a1 with y_73
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s7,a1
              #                    free s7
              #                    free a1
    add     s1,s1,s8
              #                    free s8
    slli s1,s1,2
              #                    occupy s11 with *f_0
              #                       load label f as ptr to reg
    la      s11, f
              #                    occupy reg s11 with *f_0
    add     s1,s1,s11
              #                    free s11
              #                    free s1
              #                          new_var temp_77_array_ele_97:i32 
              #                          temp_77_array_ele_97 = load temp_76_array_ptr_97:ptr->i32 
              #                    occupy s1 with temp_76_array_ptr_97
              #                    occupy s7 with temp_77_array_ele_97
    lw      s7,0(s1)
              #                    free s7
              #                    free s1
              #                          new_var temp_78_array_ptr_97:ptr->i32 
              #                          temp_78_array_ptr_97 = getelementptr *f_0:ptr->Array:i32:[Some(20_0)] [Some(x_73), Some(i_75)] 
              #                    occupy s8 with temp_78_array_ptr_97
    li      s8, 0
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    occupy a0 with x_73
              #                    store to y_73 in mem offset legal
    sw      a1,240(sp)
              #                    release a1 with y_73
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,s11,a0
              #                    free s11
              #                    free a0
    add     s8,s8,a1
              #                    free a1
    slli s8,s8,2
              #                    occupy a1 with *f_0
              #                       load label f as ptr to reg
    la      a1, f
              #                    occupy reg a1 with *f_0
    add     s8,s8,a1
              #                    free a1
              #                    free s8
              #                          new_var temp_79_array_ele_97:i32 
              #                          temp_79_array_ele_97 = load temp_78_array_ptr_97:ptr->i32 
              #                    occupy s8 with temp_78_array_ptr_97
              #                    occupy a1 with temp_79_array_ele_97
    lw      a1,0(s8)
              #                    free a1
              #                    free s8
              #                          new_var temp_80_cmp_97:i1 
              #                          temp_80_cmp_97 = icmp i32 Ne temp_79_array_ele_97, temp_77_array_ele_97 
              #                    occupy a1 with temp_79_array_ele_97
              #                    occupy s7 with temp_77_array_ele_97
              #                    occupy s11 with temp_80_cmp_97
    xor     s11,a1,s7
    snez    s11, s11
              #                    free a1
              #                    free s7
              #                    free s11
              #                          br i1 temp_80_cmp_97, label branch_true_98, label branch_false_98 
              #                    occupy s11 with temp_80_cmp_97
              #                    free s11
              #                    store to temp_57_array_ptr_83 in mem offset legal
    sd      s6,176(sp)
              #                    release s6 with temp_57_array_ptr_83
              #                    occupy s11 with temp_80_cmp_97
    bnez    s11, .branch_true_98
              #                    free s11
    j       .branch_false_98
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: temp_79_array_ele_97, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_74_cmp_90, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s11:Freed { symidx: temp_80_cmp_97, tracked: true } |     s1:Freed { symidx: temp_76_array_ptr_97, tracked: true } |     s2:Freed { symidx: temp_75_cmp_94, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s7:Freed { symidx: temp_77_array_ele_97, tracked: true } |     s8:Freed { symidx: temp_78_array_ptr_97, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label branch_true_98: 
.branch_true_98:
              #                          new_var temp_81_array_ptr_99:ptr->i32 
              #                          temp_81_array_ptr_99 = getelementptr *f_0:ptr->Array:i32:[Some(20_0)] [Some(x_73), Some(i_75)] 
              #                    occupy s6 with temp_81_array_ptr_99
    li      s6, 0
              #                    store to x_73 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with x_73
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_79_array_ele_97 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with temp_79_array_ele_97
              #                    occupy a1 with x_73
              #                    load from x_73 in mem


    lw      a1,244(sp)
              #                    store to temp_50_array_ptr_76 in mem offset legal
    sd      a2,232(sp)
              #                    release a2 with temp_50_array_ptr_76
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s6,s6,a2
              #                    free a2
    slli s6,s6,2
              #                    occupy a0 with *f_0
              #                       load label f as ptr to reg
    la      a0, f
              #                    occupy reg a0 with *f_0
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                          new_var temp_82_array_ele_99:i32 
              #                          temp_82_array_ele_99 = load temp_81_array_ptr_99:ptr->i32 
              #                    occupy s6 with temp_81_array_ptr_99
              #                    occupy a0 with temp_82_array_ele_99
    lw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                          x_73 = i32 temp_82_array_ele_99 
              #                    occupy a0 with temp_82_array_ele_99
              #                    occupy a1 with x_73
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_83_array_ptr_99:ptr->i32 
              #                          temp_83_array_ptr_99 = getelementptr *f_0:ptr->Array:i32:[Some(20_0)] [Some(y_73), Some(i_75)] 
              #                    occupy a2 with temp_83_array_ptr_99
    li      a2, 0
              #                    store to temp_82_array_ele_99 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_82_array_ele_99
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to x_73 in mem offset legal
    sw      a1,244(sp)
              #                    release a1 with x_73
              #                    occupy a1 with y_73
              #                    load from y_73 in mem


    lw      a1,240(sp)
              #                    store to i_75 in mem offset legal
    sw      a3,200(sp)
              #                    release a3 with i_75
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with *f_0
              #                       load label f as ptr to reg
    la      a0, f
              #                    occupy reg a0 with *f_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_84_array_ele_99:i32 
              #                          temp_84_array_ele_99 = load temp_83_array_ptr_99:ptr->i32 
              #                    occupy a2 with temp_83_array_ptr_99
              #                    occupy a0 with temp_84_array_ele_99
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          y_73 = i32 temp_84_array_ele_99 
              #                    occupy a0 with temp_84_array_ele_99
              #                    occupy a1 with y_73
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: branch_false_98 
              #                    store to temp_81_array_ptr_99 in mem offset legal
    sd      s6,40(sp)
              #                    release s6 with temp_81_array_ptr_99
              #                    store to temp_84_array_ele_99 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_84_array_ele_99
              #                    store to y_73 in mem offset legal
    sw      a1,240(sp)
              #                    release a1 with y_73
              #                    store to temp_83_array_ptr_99 in mem offset legal
    sd      a2,24(sp)
              #                    release a2 with temp_83_array_ptr_99
              #                    occupy a0 with _anonymous_of_x_73_0
              #                    load from x_73 in mem


    lw      a0,244(sp)
              #                    occupy a1 with _anonymous_of_temp_79_array_ele_97_0
              #                    load from temp_79_array_ele_97 in mem


    lw      a1,52(sp)
              #                    occupy a3 with _anonymous_of_i_75_0
              #                    load from i_75 in mem


    lw      a3,200(sp)
              #                    occupy a2 with _anonymous_of_temp_50_array_ptr_76_0
              #                    load from temp_50_array_ptr_76 in mem
    ld      a2,232(sp)
    j       .branch_false_98
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: temp_79_array_ele_97, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_74_cmp_90, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s11:Freed { symidx: temp_80_cmp_97, tracked: true } |     s1:Freed { symidx: temp_76_array_ptr_97, tracked: true } |     s2:Freed { symidx: temp_75_cmp_94, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s7:Freed { symidx: temp_77_array_ele_97, tracked: true } |     s8:Freed { symidx: temp_78_array_ptr_97, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label branch_false_98: 
.branch_false_98:
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: temp_79_array_ele_97, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_74_cmp_90, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s11:Freed { symidx: temp_80_cmp_97, tracked: true } |     s1:Freed { symidx: temp_76_array_ptr_97, tracked: true } |     s2:Freed { symidx: temp_75_cmp_94, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s7:Freed { symidx: temp_77_array_ele_97, tracked: true } |     s8:Freed { symidx: temp_78_array_ptr_97, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_85_arithop_96:i32 
              #                          temp_85_arithop_96 = Sub i32 i_75, 1_0 
              #                    occupy a3 with i_75
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    store to x_73 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with x_73
              #                    occupy a0 with temp_85_arithop_96
              #                    regtab:    a0:Occupied { symidx: temp_85_arithop_96, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_79_array_ele_97, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Occupied { symidx: i_75, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_74_cmp_90, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s11:Freed { symidx: temp_80_cmp_97, tracked: true } |     s1:Freed { symidx: temp_76_array_ptr_97, tracked: true } |     s2:Freed { symidx: temp_75_cmp_94, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s7:Freed { symidx: temp_77_array_ele_97, tracked: true } |     s8:Freed { symidx: temp_78_array_ptr_97, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 


    sub     a0,a3,s6
              #                    free a3
              #                    free s6
              #                    free a0
              #                          i_75 = i32 temp_85_arithop_96 
              #                    occupy a0 with temp_85_arithop_96
              #                    occupy a3 with i_75
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          jump label: while.head_95 
              #                    store to temp_85_arithop_96 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_85_arithop_96
              #                    store to temp_76_array_ptr_97 in mem offset legal
    sd      s1,72(sp)
              #                    release s1 with temp_76_array_ptr_97
              #                    store to temp_75_cmp_94 in mem offset legal
    sb      s2,86(sp)
              #                    release s2 with temp_75_cmp_94
              #                    store to temp_79_array_ele_97 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with temp_79_array_ele_97
              #                    store to temp_80_cmp_97 in mem offset legal
    sb      s11,51(sp)
              #                    release s11 with temp_80_cmp_97
              #                    store to temp_77_array_ele_97 in mem offset legal
    sw      s7,68(sp)
              #                    release s7 with temp_77_array_ele_97
              #                    store to temp_78_array_ptr_97 in mem offset legal
    sd      s8,56(sp)
              #                    release s8 with temp_78_array_ptr_97
              #                    occupy s6 with _anonymous_of_temp_57_array_ptr_83_0
              #                    load from temp_57_array_ptr_83 in mem
    ld      s6,176(sp)
              #                    occupy a0 with _anonymous_of_x_73_0
              #                    load from x_73 in mem


    lw      a0,244(sp)
              #                    occupy a1 with _anonymous_of_y_73_0
              #                    load from y_73 in mem


    lw      a1,240(sp)
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: x_73, tracked: true } |     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_74_cmp_90, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s2:Freed { symidx: temp_75_cmp_94, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s6:Freed { symidx: temp_57_array_ptr_83, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                          label while.exit_95: 
.while.exit_95:
              #                          new_var temp_86_array_ptr_75:ptr->i32 
              #                          temp_86_array_ptr_75 = getelementptr *f_0:ptr->Array:i32:[Some(20_0)] [Some(x_73), Some(0_0)] 
              #                    occupy s1 with temp_86_array_ptr_75
    li      s1, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy a0 with x_73
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s7,a0
              #                    free s7
              #                    free a0
    add     s1,s1,s8
              #                    free s8
    slli s1,s1,2
              #                    occupy s11 with *f_0
              #                       load label f as ptr to reg
    la      s11, f
              #                    occupy reg s11 with *f_0
    add     s1,s1,s11
              #                    free s11
              #                    free s1
              #                          new_var temp_87_array_ele_75:i32 
              #                          temp_87_array_ele_75 = load temp_86_array_ptr_75:ptr->i32 
              #                    occupy s1 with temp_86_array_ptr_75
              #                    occupy s7 with temp_87_array_ele_75
    lw      s7,0(s1)
              #                    free s7
              #                    free s1
              #                          ret temp_87_array_ele_75 
              #                    load from ra_LCA_0 in mem
    ld      ra,256(sp)
              #                    load from s0_LCA_0 in mem
    ld      s0,248(sp)
              #                    store to temp_87_array_ele_75 in mem offset legal
    sw      s7,4(sp)
              #                    release s7 with temp_87_array_ele_75
              #                    store to x_73 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with x_73
              #                    occupy a0 with temp_87_array_ele_75
              #                    load from temp_87_array_ele_75 in mem


    lw      a0,4(sp)
    addi    sp,sp,264
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: y_73, tracked: true } |     a2:Freed { symidx: temp_50_array_ptr_76, tracked: true } |     a3:Freed { symidx: i_75, tracked: true } |     a4:Freed { symidx: temp_55_array_ptr_83, tracked: true } |     a5:Freed { symidx: temp_74_cmp_90, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_76, tracked: true } |     a7:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s10:Freed { symidx: temp_59_cmp_83, tracked: true } |     s1:Freed { symidx: temp_86_array_ptr_75, tracked: true } |     s2:Freed { symidx: temp_75_cmp_94, tracked: true } |     s3:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s4:Freed { symidx: temp_54_cmp_76, tracked: true } |     s5:Freed { symidx: temp_56_array_ele_83, tracked: true } |     s6:Freed { symidx: temp_57_array_ptr_83, tracked: true } |     s9:Freed { symidx: temp_58_array_ele_83, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 88|s0_main:8 at 80|temp_88_ret_of_quick_read:4 at 76|temp_89_ret_of_quick_read:4 at 72|i:4 at 68|temp_90_ptr2globl:4 at 64|temp_91_cmp:1 at 63|none:3 at 60|temp_92_ret_of_quick_read:4 at 56|x:4 at 52|temp_93_ret_of_quick_read:4 at 48|y:4 at 44|temp_94_arithop:4 at 40|temp_95_ptr2globl:4 at 36|temp_96_:1 at 35|none:3 at 32|temp_97_ret_of_quick_read:4 at 28|x:4 at 24|temp_98_ret_of_quick_read:4 at 20|y:4 at 16|temp_99_ret_of_LCA:4 at 12|temp_100_ptr2globl:4 at 8|temp_101_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-96
              #                    store to ra_main_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                          alloc i32 temp_88_ret_of_quick_read_105 
              #                          alloc i32 temp_89_ret_of_quick_read_105 
              #                          alloc i32 i_105 
              #                          alloc i32 temp_90_ptr2globl_110 
              #                          alloc i1 temp_91_cmp_110 
              #                          alloc i32 temp_92_ret_of_quick_read_112 
              #                          alloc i32 x_112 
              #                          alloc i32 temp_93_ret_of_quick_read_112 
              #                          alloc i32 y_112 
              #                          alloc i32 temp_94_arithop_112 
              #                          alloc i32 temp_95_ptr2globl_117 
              #                          alloc i1 temp_96__3399 
              #                          alloc i32 temp_97_ret_of_quick_read_119 
              #                          alloc i32 x_119 
              #                          alloc i32 temp_98_ret_of_quick_read_119 
              #                          alloc i32 y_119 
              #                          alloc i32 temp_99_ret_of_LCA_119 
              #                          alloc i32 temp_100_ptr2globl_119 
              #                          alloc i32 temp_101_arithop_119 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_88_ret_of_quick_read_105:i32 
              #                          temp_88_ret_of_quick_read_105 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_88_ret_of_quick_read_105 in mem offset legal
    sw      a0,76(sp)
              #                          store temp_88_ret_of_quick_read_105:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_88_ret_of_quick_read_105
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_89_ret_of_quick_read_105:i32 
              #                          temp_89_ret_of_quick_read_105 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_88_ret_of_quick_read_105 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_88_ret_of_quick_read_105
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_89_ret_of_quick_read_105 in mem offset legal
    sw      a0,72(sp)
              #                          store temp_89_ret_of_quick_read_105:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_89_ret_of_quick_read_105
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                           Call void init_0() 
              #                    saved register dumping to mem
              #                    store to temp_89_ret_of_quick_read_105 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_89_ret_of_quick_read_105
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
              #                          new_var temp_90_ptr2globl_110:i32 
              #                          temp_90_ptr2globl_110 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_90_ptr2globl_110
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_91_cmp_110:i1 
              #                          temp_91_cmp_110 = icmp i32 Ne i_105, temp_90_ptr2globl_110 
              #                    occupy a0 with i_105
              #                    occupy a2 with temp_90_ptr2globl_110
              #                    occupy a3 with temp_91_cmp_110
    xor     a3,a0,a2
    snez    a3, a3
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_91_cmp_110, label while.body_111, label while.exit_111 
              #                    occupy a3 with temp_91_cmp_110
              #                    free a3
              #                    occupy a3 with temp_91_cmp_110
    bnez    a3, .while.body_111
              #                    free a3
    j       .while.exit_111
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a2:Freed { symidx: temp_90_ptr2globl_110, tracked: true } |     a3:Freed { symidx: temp_91_cmp_110, tracked: true } | 
              #                          label while.body_111: 
.while.body_111:
              #                          new_var temp_92_ret_of_quick_read_112:i32 
              #                          temp_92_ret_of_quick_read_112 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to i_105 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with i_105
              #                    store to temp_90_ptr2globl_110 in mem offset legal
    sw      a2,64(sp)
              #                    release a2 with temp_90_ptr2globl_110
              #                    store to temp_91_cmp_110 in mem offset legal
    sb      a3,63(sp)
              #                    release a3 with temp_91_cmp_110
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_92_ret_of_quick_read_112 in mem offset legal
    sw      a0,56(sp)
              #                          x_112 = i32 temp_92_ret_of_quick_read_112 
              #                    occupy a0 with temp_92_ret_of_quick_read_112
              #                    occupy a1 with x_112
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_93_ret_of_quick_read_112:i32 
              #                          temp_93_ret_of_quick_read_112 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_92_ret_of_quick_read_112 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_92_ret_of_quick_read_112
              #                    store to x_112 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with x_112
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_93_ret_of_quick_read_112 in mem offset legal
    sw      a0,48(sp)
              #                          y_112 = i32 temp_93_ret_of_quick_read_112 
              #                    occupy a0 with temp_93_ret_of_quick_read_112
              #                    occupy a1 with y_112
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void add_edge_0(x_112, y_112) 
              #                    saved register dumping to mem
              #                    store to temp_93_ret_of_quick_read_112 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_93_ret_of_quick_read_112
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
              #                          new_var temp_94_arithop_112:i32 
              #                          temp_94_arithop_112 = Add i32 i_105, 1_0 
              #                    occupy a0 with i_105
              #                    load from i_105 in mem


    lw      a0,68(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_94_arithop_112
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_105 = i32 temp_94_arithop_112 
              #                    occupy a2 with temp_94_arithop_112
              #                    occupy a0 with i_105
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_111 
              #                    store to temp_94_arithop_112 in mem offset legal
    sw      a2,40(sp)
              #                    release a2 with temp_94_arithop_112
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a2:Freed { symidx: temp_90_ptr2globl_110, tracked: true } |     a3:Freed { symidx: temp_91_cmp_110, tracked: true } | 
              #                          label while.exit_111: 
.while.exit_111:
              #                           Call void tree_0(1_0, 1_0) 
              #                    saved register dumping to mem
              #                    store to i_105 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with i_105
              #                    store to temp_90_ptr2globl_110 in mem offset legal
    sw      a2,64(sp)
              #                    release a2 with temp_90_ptr2globl_110
              #                    store to temp_91_cmp_110 in mem offset legal
    sb      a3,63(sp)
              #                    release a3 with temp_91_cmp_110
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
              #                          new_var temp_95_ptr2globl_117:i32 
              #                          temp_95_ptr2globl_117 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_95_ptr2globl_117
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_96__3399:i1 
              #                          temp_96__3399 = icmp i32 Ne temp_95_ptr2globl_117, 0_0 
              #                    occupy a1 with temp_95_ptr2globl_117
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_96__3399
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_96__3399, label while.body_118, label while.exit_118 
              #                    occupy a3 with temp_96__3399
              #                    free a3
              #                    occupy a3 with temp_96__3399
    bnez    a3, .while.body_118
              #                    free a3
    j       .while.exit_118
              #                    regtab     a1:Freed { symidx: temp_95_ptr2globl_117, tracked: true } |     a3:Freed { symidx: temp_96__3399, tracked: true } | 
              #                          label while.body_118: 
.while.body_118:
              #                          new_var temp_97_ret_of_quick_read_119:i32 
              #                          temp_97_ret_of_quick_read_119 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_95_ptr2globl_117 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with temp_95_ptr2globl_117
              #                    store to temp_96__3399 in mem offset legal
    sb      a3,35(sp)
              #                    release a3 with temp_96__3399
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_97_ret_of_quick_read_119 in mem offset legal
    sw      a0,28(sp)
              #                          x_119 = i32 temp_97_ret_of_quick_read_119 
              #                    occupy a0 with temp_97_ret_of_quick_read_119
              #                    occupy a1 with x_119
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_98_ret_of_quick_read_119:i32 
              #                          temp_98_ret_of_quick_read_119 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_97_ret_of_quick_read_119 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_97_ret_of_quick_read_119
              #                    store to x_119 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with x_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_98_ret_of_quick_read_119 in mem offset legal
    sw      a0,20(sp)
              #                          y_119 = i32 temp_98_ret_of_quick_read_119 
              #                    occupy a0 with temp_98_ret_of_quick_read_119
              #                    occupy a1 with y_119
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_99_ret_of_LCA_119:i32 
              #                          temp_99_ret_of_LCA_119 =  Call i32 LCA_0(x_119, y_119) 
              #                    saved register dumping to mem
              #                    store to temp_98_ret_of_quick_read_119 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_98_ret_of_quick_read_119
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
              #                    store to temp_99_ret_of_LCA_119 in mem offset legal
    sw      a0,12(sp)
              #                           Call void putint_0(temp_99_ret_of_LCA_119) 
              #                    saved register dumping to mem
              #                    store to temp_99_ret_of_LCA_119 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_99_ret_of_LCA_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_99_ret_of_LCA_119_0
              #                    load from temp_99_ret_of_LCA_119 in mem


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
              #                          new_var temp_100_ptr2globl_119:i32 
              #                          temp_100_ptr2globl_119 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_100_ptr2globl_119
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_101_arithop_119:i32 
              #                          temp_101_arithop_119 = Sub i32 temp_100_ptr2globl_119, 1_0 
              #                    occupy a1 with temp_100_ptr2globl_119
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_101_arithop_119
              #                    regtab:    a0:Freed { symidx: *m_0, tracked: false } |     a1:Occupied { symidx: temp_100_ptr2globl_119, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_101_arithop_119, tracked: true, occupy_count: 1 } | 


    sub     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_101_arithop_119:i32 *m_0:ptr->i32 
              #                    occupy a4 with *m_0
              #                       load label m as ptr to reg
    la      a4, m
              #                    occupy reg a4 with *m_0
              #                    occupy a3 with temp_101_arithop_119
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          jump label: while.head_118 
              #                    store to temp_101_arithop_119 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_101_arithop_119
              #                    store to temp_100_ptr2globl_119 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_100_ptr2globl_119
    j       .while.head_118
              #                    regtab     a1:Freed { symidx: temp_95_ptr2globl_117, tracked: true } |     a3:Freed { symidx: temp_96__3399, tracked: true } | 
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
              #                    regtab     a1:Freed { symidx: temp_95_ptr2globl_117, tracked: true } |     a3:Freed { symidx: temp_96__3399, tracked: true } | 
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
