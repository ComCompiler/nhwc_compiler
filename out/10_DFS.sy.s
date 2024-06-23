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
              #                          alloc i32 temp_0_ret_of_getch_22 
              #                          alloc i32 ch_22 
              #                          alloc i32 x_22 
              #                          alloc i32 f_22 
              #                          alloc i1 temp_1_cmp_25 
              #                          alloc i1 temp_2_cmp_25 
              #                          alloc i1 temp_3_logic_25 
              #                          alloc i1 temp_4_cmp_28 
              #                          alloc i32 temp_5_ret_of_getch_27 
              #                          alloc i1 temp_6_cmp_32 
              #                          alloc i1 temp_7_cmp_32 
              #                          alloc i1 temp_8_logic_32 
              #                          alloc i32 temp_9_arithop_34 
              #                          alloc i32 temp_10_arithop_34 
              #                          alloc i32 temp_11_arithop_34 
              #                          alloc i32 temp_12_ret_of_getch_34 
              #                          alloc i1 temp_13__416 
              #                          alloc i32 temp_14__37 
              #                    regtab 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_0_ret_of_getch_22:i32 
              #                          temp_0_ret_of_getch_22 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_0_ret_of_getch_22 in mem offset legal
    sw      a0,52(sp)
              #                          ch_22 = i32 temp_0_ret_of_getch_22 
              #                    occupy a0 with temp_0_ret_of_getch_22
              #                    occupy a1 with ch_22
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          x_22 = i32 0_0 
              #                    occupy a2 with x_22
    li      a2, 0
              #                    free a2
              #                          f_22 = i32 0_0 
              #                    occupy a3 with f_22
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_26 
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } | 
              #                          label while.head_26: 
.while.head_26:
              #                          new_var temp_1_cmp_25:i1 
              #                          temp_1_cmp_25 = icmp i32 Sgt ch_22, 57_0 
              #                    occupy a1 with ch_22
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a5 with temp_1_cmp_25
    slt     a5,a4,a1
              #                    free a1
              #                    free a4
              #                    free a5
              #                          new_var temp_2_cmp_25:i1 
              #                          temp_2_cmp_25 = icmp i32 Slt ch_22, 48_0 
              #                    occupy a1 with ch_22
              #                    occupy a6 with 48_0
    li      a6, 48
              #                    occupy a7 with temp_2_cmp_25
    slt     a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                          new_var temp_3_logic_25:i1 
              #                          temp_3_logic_25 = Or i1 temp_2_cmp_25, temp_1_cmp_25 
              #                    occupy a7 with temp_2_cmp_25
              #                    occupy a5 with temp_1_cmp_25
              #                    occupy a5 with temp_1_cmp_25
              #                    free a7
              #                    free a5
              #                    free a5
              #                          br i1 temp_3_logic_25, label while.body_26, label while.exit_26 
              #                    occupy s1 with temp_3_logic_25
              #                    load from temp_3_logic_25 in mem
    lb      s1,37(sp)
              #                    free s1
              #                    occupy s1 with temp_3_logic_25
    bnez    s1, .while.body_26
              #                    free s1
    j       .while.exit_26
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } | 
              #                          label while.body_26: 
.while.body_26:
              #                          new_var temp_4_cmp_28:i1 
              #                          temp_4_cmp_28 = icmp i32 Eq ch_22, 45_0 
              #                    occupy a1 with ch_22
              #                    occupy a4 with 45_0
    li      a4, 45
              #                    occupy a6 with temp_4_cmp_28
    xor     a6,a1,a4
    seqz    a6, a6
              #                    free a1
              #                    free a4
              #                    free a6
              #                          br i1 temp_4_cmp_28, label branch_true_29, label branch_false_29 
              #                    occupy a6 with temp_4_cmp_28
              #                    free a6
              #                    occupy a6 with temp_4_cmp_28
    bnez    a6, .branch_true_29
              #                    free a6
    j       .branch_false_29
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_4_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } | 
              #                          label branch_true_29: 
.branch_true_29:
              #                          f_22 = i32 1_0 
              #                    occupy a3 with f_22
    li      a3, 1
              #                    free a3
              #                          jump label: branch_false_29 
    j       .branch_false_29
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_4_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } | 
              #                          label branch_false_29: 
.branch_false_29:
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_4_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_5_ret_of_getch_27:i32 
              #                          temp_5_ret_of_getch_27 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_3_logic_25 in mem offset legal
    sb      s1,37(sp)
              #                    release s1 with temp_3_logic_25
              #                    store to temp_0_ret_of_getch_22 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_22
              #                    store to ch_22 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_22
              #                    store to x_22 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_22
              #                    store to f_22 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with f_22
              #                    store to temp_1_cmp_25 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_1_cmp_25
              #                    store to temp_4_cmp_28 in mem offset legal
    sb      a6,36(sp)
              #                    release a6 with temp_4_cmp_28
              #                    store to temp_2_cmp_25 in mem offset legal
    sb      a7,38(sp)
              #                    release a7 with temp_2_cmp_25
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_5_ret_of_getch_27 in mem offset legal
    sw      a0,32(sp)
              #                          ch_22 = i32 temp_5_ret_of_getch_27 
              #                    occupy a0 with temp_5_ret_of_getch_27
              #                    occupy a1 with ch_22
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_26 
              #                    store to temp_5_ret_of_getch_27 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_5_ret_of_getch_27
              #                    occupy a3 with _anonymous_of_f_22_0
              #                    load from f_22 in mem


    lw      a3,40(sp)
              #                    occupy a2 with _anonymous_of_x_22_0
              #                    load from x_22 in mem


    lw      a2,44(sp)
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_22_0
              #                    load from temp_0_ret_of_getch_22 in mem


    lw      a0,52(sp)
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } | 
              #                          label while.exit_26: 
.while.exit_26:
              #                          new_var temp_6_cmp_32:i1 
              #                          temp_6_cmp_32 = icmp i32 Sle ch_22, 57_0 
              #                    occupy a1 with ch_22
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a6 with temp_6_cmp_32
    slt     a6,a4,a1
    xori    a6,a6,1
              #                    free a1
              #                    free a4
              #                    free a6
              #                          new_var temp_7_cmp_32:i1 
              #                          temp_7_cmp_32 = icmp i32 Sge ch_22, 48_0 
              #                    occupy a1 with ch_22
              #                    occupy s2 with 48_0
    li      s2, 48
              #                    occupy s3 with temp_7_cmp_32
    slt     s3,a1,s2
    xori    s3,s3,1
              #                    free a1
              #                    free s2
              #                    free s3
              #                          new_var temp_8_logic_32:i1 
              #                          temp_8_logic_32 = And i1 temp_7_cmp_32, temp_6_cmp_32 
              #                    occupy s3 with temp_7_cmp_32
              #                    occupy a6 with temp_6_cmp_32
              #                    occupy s4 with temp_8_logic_32
    and     s4,s3,a6
              #                    free s3
              #                    free a6
              #                    free s4
              #                          br i1 temp_8_logic_32, label while.body_33, label while.exit_33 
              #                    occupy s4 with temp_8_logic_32
              #                    free s4
              #                    occupy s4 with temp_8_logic_32
    bnez    s4, .while.body_33
              #                    free s4
    j       .while.exit_33
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } | 
              #                          label while.body_33: 
.while.body_33:
              #                          new_var temp_9_arithop_34:i32 
              #                          temp_9_arithop_34 = Mul i32 x_22, 10_0 
              #                    occupy a2 with x_22
              #                    occupy a4 with 10_0
    li      a4, 10
              #                    occupy s2 with temp_9_arithop_34
    mul     s2,a2,a4
              #                    free a2
              #                    free a4
              #                    free s2
              #                          new_var temp_10_arithop_34:i32 
              #                          temp_10_arithop_34 = Add i32 temp_9_arithop_34, ch_22 
              #                    occupy s2 with temp_9_arithop_34
              #                    occupy a1 with ch_22
              #                    occupy s5 with temp_10_arithop_34
    add     s5,s2,a1
              #                    free s2
              #                    free a1
              #                    free s5
              #                          new_var temp_11_arithop_34:i32 
              #                          temp_11_arithop_34 = Sub i32 temp_10_arithop_34, 48_0 
              #                    occupy s5 with temp_10_arithop_34
              #                    occupy s6 with 48_0
    li      s6, 48
              #                    occupy s7 with temp_11_arithop_34
              #                    regtab:    a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a4:Freed { symidx: 10_0, tracked: false } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s2:Freed { symidx: temp_9_arithop_34, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } |     s5:Occupied { symidx: temp_10_arithop_34, tracked: true, occupy_count: 1 } |     s6:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     s7:Occupied { symidx: temp_11_arithop_34, tracked: true, occupy_count: 1 } | 


    sub     s7,s5,s6
              #                    free s5
              #                    free s6
              #                    free s7
              #                          x_22 = i32 temp_11_arithop_34 
              #                    occupy s7 with temp_11_arithop_34
              #                    occupy a2 with x_22
    mv      a2, s7
              #                    free s7
              #                    free a2
              #                          new_var temp_12_ret_of_getch_34:i32 
              #                          temp_12_ret_of_getch_34 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_3_logic_25 in mem offset legal
    sb      s1,37(sp)
              #                    release s1 with temp_3_logic_25
              #                    store to temp_9_arithop_34 in mem offset legal
    sw      s2,24(sp)
              #                    release s2 with temp_9_arithop_34
              #                    store to temp_7_cmp_32 in mem offset legal
    sb      s3,30(sp)
              #                    release s3 with temp_7_cmp_32
              #                    store to temp_8_logic_32 in mem offset legal
    sb      s4,29(sp)
              #                    release s4 with temp_8_logic_32
              #                    store to temp_10_arithop_34 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_10_arithop_34
              #                    store to temp_11_arithop_34 in mem offset legal
    sw      s7,16(sp)
              #                    release s7 with temp_11_arithop_34
              #                    store to temp_0_ret_of_getch_22 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_22
              #                    store to ch_22 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_22
              #                    store to x_22 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_22
              #                    store to f_22 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with f_22
              #                    store to temp_1_cmp_25 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_1_cmp_25
              #                    store to temp_6_cmp_32 in mem offset legal
    sb      a6,31(sp)
              #                    release a6 with temp_6_cmp_32
              #                    store to temp_2_cmp_25 in mem offset legal
    sb      a7,38(sp)
              #                    release a7 with temp_2_cmp_25
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_12_ret_of_getch_34 in mem offset legal
    sw      a0,12(sp)
              #                          ch_22 = i32 temp_12_ret_of_getch_34 
              #                    occupy a0 with temp_12_ret_of_getch_34
              #                    occupy a1 with ch_22
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.exit_26 
              #                    store to temp_12_ret_of_getch_34 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_12_ret_of_getch_34
              #                    occupy a3 with _anonymous_of_f_22_0
              #                    load from f_22 in mem


    lw      a3,40(sp)
              #                    occupy a2 with _anonymous_of_x_22_0
              #                    load from x_22 in mem


    lw      a2,44(sp)
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_22_0
              #                    load from temp_0_ret_of_getch_22 in mem


    lw      a0,52(sp)
              #                    occupy s1 with _anonymous_of_temp_3_logic_25_0
              #                    load from temp_3_logic_25 in mem
    lb      s1,37(sp)
              #                    occupy a7 with _anonymous_of_temp_2_cmp_25_0
              #                    load from temp_2_cmp_25 in mem
    lb      a7,38(sp)
              #                    occupy a5 with _anonymous_of_temp_1_cmp_25_0
              #                    load from temp_1_cmp_25 in mem
    lb      a5,39(sp)
    j       .while.exit_26
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } | 
              #                          label while.exit_33: 
.while.exit_33:
              #                          new_var temp_13__416:i1 
              #                          temp_13__416 = icmp i32 Ne f_22, 0_0 
              #                    occupy a3 with f_22
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy s2 with temp_13__416
    xor     s2,a3,a4
    snez    s2, s2
              #                    free a3
              #                    free a4
              #                    free s2
              #                          br i1 temp_13__416, label branch_true_38, label branch_false_38 
              #                    occupy s2 with temp_13__416
              #                    free s2
              #                    occupy s2 with temp_13__416
    bnez    s2, .branch_true_38
              #                    free s2
    j       .branch_false_38
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } | 
              #                          label branch_true_38: 
.branch_true_38:
              #                          new_var temp_14__37:i32 
              #                          temp_14__37 = Sub i32 0_0, x_22 
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a2 with x_22
              #                    occupy s5 with temp_14__37
              #                    regtab:    a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Occupied { symidx: x_22, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: f_22, tracked: true } |     a4:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } |     s5:Occupied { symidx: temp_14__37, tracked: true, occupy_count: 1 } | 


    sub     s5,a4,a2
              #                    free a4
              #                    free a2
              #                    free s5
              #                          ret temp_14__37 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    store to temp_14__37 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_14__37
              #                    store to temp_0_ret_of_getch_22 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_22
              #                    occupy a0 with temp_14__37
              #                    load from temp_14__37 in mem


    lw      a0,4(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } | 
              #                          label branch_false_38: 
.branch_false_38:
              #                          ret x_22 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    store to x_22 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_22
              #                    store to temp_0_ret_of_getch_22 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_22
              #                    occupy a0 with x_22
              #                    load from x_22 in mem


    lw      a0,44(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ch_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                    regtab     a1:Freed { symidx: ch_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } | 
              #                    regtab 
              #                          Define add_edge_0 [from_41, To_41] -> add_edge_ret_0 
    .globl add_edge
    .type add_edge,@function
add_edge:
              #                    mem layout:|ra_add_edge:8 at 152|s0_add_edge:8 at 144|from:4 at 140|To:4 at 136|temp_15_ptr2globl:4 at 132|none:4 at 128|temp_16_index_ptr:8 at 120|temp_17_ptr2globl:4 at 116|none:4 at 112|temp_18_index_ptr:8 at 104|temp_19_array_ptr:8 at 96|temp_20_array_ele:4 at 92|none:4 at 88|temp_21_index_ptr:8 at 80|temp_22_ptr2globl:4 at 76|temp_23_ptr2globl:4 at 72|temp_24_arithop:4 at 68|temp_25_ptr2globl:4 at 64|temp_26_index_ptr:8 at 56|temp_27_ptr2globl:4 at 52|none:4 at 48|temp_28_index_ptr:8 at 40|temp_29_array_ptr:8 at 32|temp_30_array_ele:4 at 28|none:4 at 24|temp_31_index_ptr:8 at 16|temp_32_ptr2globl:4 at 12|temp_33_ptr2globl:4 at 8|temp_34_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-160
              #                    store to ra_add_edge_0 in mem offset legal
    sd      ra,152(sp)
              #                    store to s0_add_edge_0 in mem offset legal
    sd      s0,144(sp)
    addi    s0,sp,160
              #                          alloc i32 temp_15_ptr2globl_43 
              #                          alloc ptr->i32 temp_16_index_ptr_43 
              #                          alloc i32 temp_17_ptr2globl_43 
              #                          alloc ptr->i32 temp_18_index_ptr_43 
              #                          alloc ptr->i32 temp_19_array_ptr_43 
              #                          alloc i32 temp_20_array_ele_43 
              #                          alloc ptr->i32 temp_21_index_ptr_43 
              #                          alloc i32 temp_22_ptr2globl_43 
              #                          alloc i32 temp_23_ptr2globl_43 
              #                          alloc i32 temp_24_arithop_43 
              #                          alloc i32 temp_25_ptr2globl_43 
              #                          alloc ptr->i32 temp_26_index_ptr_43 
              #                          alloc i32 temp_27_ptr2globl_43 
              #                          alloc ptr->i32 temp_28_index_ptr_43 
              #                          alloc ptr->i32 temp_29_array_ptr_43 
              #                          alloc i32 temp_30_array_ele_43 
              #                          alloc ptr->i32 temp_31_index_ptr_43 
              #                          alloc i32 temp_32_ptr2globl_43 
              #                          alloc i32 temp_33_ptr2globl_43 
              #                          alloc i32 temp_34_arithop_43 
              #                    regtab     a0:Freed { symidx: from_41, tracked: true } |     a1:Freed { symidx: To_41, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_15_ptr2globl_43:i32 
              #                          temp_15_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a3 with temp_15_ptr2globl_43
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_16_index_ptr_43:ptr->i32 
              #                          temp_16_index_ptr_43 = getelementptr *to_0:ptr->i32 [Some(temp_15_ptr2globl_43)] 
              #                    occupy a4 with temp_16_index_ptr_43
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a3 with temp_15_ptr2globl_43
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
              #                          store To_41:i32 temp_16_index_ptr_43:ptr->i32 
              #                    occupy a4 with temp_16_index_ptr_43
              #                    occupy a1 with To_41
    sw      a1,0(a4)
              #                    free a1
              #                    free a4
              #                          mu *to_0:117 
              #                          *to_0 = chi *to_0:117 
              #                          new_var temp_17_ptr2globl_43:i32 
              #                          temp_17_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy s1 with *cnt_0
              #                       load label cnt as ptr to reg
    la      s1, cnt
              #                    occupy reg s1 with *cnt_0
              #                    occupy s2 with temp_17_ptr2globl_43
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_18_index_ptr_43:ptr->i32 
              #                          temp_18_index_ptr_43 = getelementptr *next_0:ptr->i32 [Some(temp_17_ptr2globl_43)] 
              #                    occupy s3 with temp_18_index_ptr_43
    li      s3, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s2 with temp_17_ptr2globl_43
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
              #                          new_var temp_19_array_ptr_43:ptr->i32 
              #                          temp_19_array_ptr_43 = getelementptr *head_0:ptr->i32 [Some(from_41)] 
              #                    occupy s6 with temp_19_array_ptr_43
    li      s6, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with from_41
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
              #                          new_var temp_20_array_ele_43:i32 
              #                          temp_20_array_ele_43 = load temp_19_array_ptr_43:ptr->i32 
              #                    occupy s6 with temp_19_array_ptr_43
              #                    occupy s9 with temp_20_array_ele_43
    lw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          store temp_20_array_ele_43:i32 temp_18_index_ptr_43:ptr->i32 
              #                    occupy s3 with temp_18_index_ptr_43
              #                    occupy s9 with temp_20_array_ele_43
    sw      s9,0(s3)
              #                    free s9
              #                    free s3
              #                          mu *next_0:132 
              #                          *next_0 = chi *next_0:132 
              #                          new_var temp_21_index_ptr_43:ptr->i32 
              #                          temp_21_index_ptr_43 = getelementptr *head_0:ptr->i32 [Some(from_41)] 
              #                    occupy s10 with temp_21_index_ptr_43
    li      s10, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with from_41
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
              #                          new_var temp_22_ptr2globl_43:i32 
              #                          temp_22_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a5 with temp_22_ptr2globl_43
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                          store temp_22_ptr2globl_43:i32 temp_21_index_ptr_43:ptr->i32 
              #                    occupy s10 with temp_21_index_ptr_43
              #                    occupy a5 with temp_22_ptr2globl_43
    sw      a5,0(s10)
              #                    free a5
              #                    free s10
              #                          mu *head_0:141 
              #                          *head_0 = chi *head_0:141 
              #                          new_var temp_23_ptr2globl_43:i32 
              #                          temp_23_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a6 with temp_23_ptr2globl_43
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          new_var temp_24_arithop_43:i32 
              #                          temp_24_arithop_43 = Add i32 temp_23_ptr2globl_43, 1_0 
              #                    occupy a6 with temp_23_ptr2globl_43
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a7 with temp_24_arithop_43
    add     a7,a6,a2
              #                    free a6
              #                    free a2
              #                    free a7
              #                          store temp_24_arithop_43:i32 *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a7 with temp_24_arithop_43
    sw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_25_ptr2globl_43:i32 
              #                          temp_25_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy s1 with temp_25_ptr2globl_43
    lw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                          new_var temp_26_index_ptr_43:ptr->i32 
              #                          temp_26_index_ptr_43 = getelementptr *to_0:ptr->i32 [Some(temp_25_ptr2globl_43)] 
              #                    occupy a2 with temp_26_index_ptr_43
    li      a2, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s1 with temp_25_ptr2globl_43
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s4,s1
              #                    free s4
              #                    free s1
    add     a2,a2,s5
              #                    free s5
    slli a2,a2,2
              #                    occupy s4 with *to_0
              #                       load label to as ptr to reg
    la      s4, to
              #                    occupy reg s4 with *to_0
    add     a2,a2,s4
              #                    free s4
              #                    free a2
              #                          store from_41:i32 temp_26_index_ptr_43:ptr->i32 
              #                    occupy a2 with temp_26_index_ptr_43
              #                    occupy a0 with from_41
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          mu *to_0:157 
              #                          *to_0 = chi *to_0:157 
              #                          new_var temp_27_ptr2globl_43:i32 
              #                          temp_27_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy s4 with *cnt_0
              #                       load label cnt as ptr to reg
    la      s4, cnt
              #                    occupy reg s4 with *cnt_0
              #                    occupy s5 with temp_27_ptr2globl_43
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_28_index_ptr_43:ptr->i32 
              #                          temp_28_index_ptr_43 = getelementptr *next_0:ptr->i32 [Some(temp_27_ptr2globl_43)] 
              #                    occupy s4 with temp_28_index_ptr_43
    li      s4, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s5 with temp_27_ptr2globl_43
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s7,s5
              #                    free s7
              #                    free s5
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
              #                    occupy s7 with *next_0
              #                       load label next as ptr to reg
    la      s7, next
              #                    occupy reg s7 with *next_0
    add     s4,s4,s7
              #                    free s7
              #                    free s4
              #                          new_var temp_29_array_ptr_43:ptr->i32 
              #                          temp_29_array_ptr_43 = getelementptr *head_0:ptr->i32 [Some(To_41)] 
              #                    occupy s7 with temp_29_array_ptr_43
    li      s7, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy a1 with To_41
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s8,a1
              #                    free s8
              #                    free a1
    add     s7,s7,s11
              #                    free s11
    slli s7,s7,2
              #                    occupy s8 with *head_0
              #                       load label head as ptr to reg
    la      s8, head
              #                    occupy reg s8 with *head_0
    add     s7,s7,s8
              #                    free s8
              #                    free s7
              #                          new_var temp_30_array_ele_43:i32 
              #                          temp_30_array_ele_43 = load temp_29_array_ptr_43:ptr->i32 
              #                    occupy s7 with temp_29_array_ptr_43
              #                    occupy s8 with temp_30_array_ele_43
    lw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                          store temp_30_array_ele_43:i32 temp_28_index_ptr_43:ptr->i32 
              #                    occupy s4 with temp_28_index_ptr_43
              #                    occupy s8 with temp_30_array_ele_43
    sw      s8,0(s4)
              #                    free s8
              #                    free s4
              #                          mu *next_0:172 
              #                          *next_0 = chi *next_0:172 
              #                          new_var temp_31_index_ptr_43:ptr->i32 
              #                          temp_31_index_ptr_43 = getelementptr *head_0:ptr->i32 [Some(To_41)] 
              #                    occupy s11 with temp_31_index_ptr_43
    li      s11, 0
              #                    store to from_41 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with from_41
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with To_41
              #                    store to temp_26_index_ptr_43 in mem offset legal
    sd      a2,56(sp)
              #                    release a2 with temp_26_index_ptr_43
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s11,s11,a2
              #                    free a2
    slli s11,s11,2
              #                    occupy a0 with *head_0
              #                       load label head as ptr to reg
    la      a0, head
              #                    occupy reg a0 with *head_0
    add     s11,s11,a0
              #                    free a0
              #                    free s11
              #                          new_var temp_32_ptr2globl_43:i32 
              #                          temp_32_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a0 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a0, cnt
              #                    occupy reg a0 with *cnt_0
              #                    occupy a2 with temp_32_ptr2globl_43
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          store temp_32_ptr2globl_43:i32 temp_31_index_ptr_43:ptr->i32 
              #                    occupy s11 with temp_31_index_ptr_43
              #                    occupy a2 with temp_32_ptr2globl_43
    sw      a2,0(s11)
              #                    free a2
              #                    free s11
              #                          mu *head_0:181 
              #                          *head_0 = chi *head_0:181 
              #                          new_var temp_33_ptr2globl_43:i32 
              #                          temp_33_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a0 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a0, cnt
              #                    occupy reg a0 with *cnt_0
              #                    store to To_41 in mem offset legal
    sw      a1,136(sp)
              #                    release a1 with To_41
              #                    occupy a1 with temp_33_ptr2globl_43
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_34_arithop_43:i32 
              #                          temp_34_arithop_43 = Add i32 temp_33_ptr2globl_43, 1_0 
              #                    occupy a1 with temp_33_ptr2globl_43
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_32_ptr2globl_43 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_32_ptr2globl_43
              #                    occupy a2 with temp_34_arithop_43
    add     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          store temp_34_arithop_43:i32 *cnt_0:ptr->i32 
              #                    occupy a0 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a0, cnt
              #                    occupy reg a0 with *cnt_0
              #                    occupy a2 with temp_34_arithop_43
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                    regtab     a1:Freed { symidx: temp_33_ptr2globl_43, tracked: true } |     a2:Freed { symidx: temp_34_arithop_43, tracked: true } |     a3:Freed { symidx: temp_15_ptr2globl_43, tracked: true } |     a4:Freed { symidx: temp_16_index_ptr_43, tracked: true } |     a5:Freed { symidx: temp_22_ptr2globl_43, tracked: true } |     a6:Freed { symidx: temp_23_ptr2globl_43, tracked: true } |     a7:Freed { symidx: temp_24_arithop_43, tracked: true } |     s10:Freed { symidx: temp_21_index_ptr_43, tracked: true } |     s11:Freed { symidx: temp_31_index_ptr_43, tracked: true } |     s1:Freed { symidx: temp_25_ptr2globl_43, tracked: true } |     s2:Freed { symidx: temp_17_ptr2globl_43, tracked: true } |     s3:Freed { symidx: temp_18_index_ptr_43, tracked: true } |     s4:Freed { symidx: temp_28_index_ptr_43, tracked: true } |     s5:Freed { symidx: temp_27_ptr2globl_43, tracked: true } |     s6:Freed { symidx: temp_19_array_ptr_43, tracked: true } |     s7:Freed { symidx: temp_29_array_ptr_43, tracked: true } |     s8:Freed { symidx: temp_30_array_ele_43, tracked: true } |     s9:Freed { symidx: temp_20_array_ele_43, tracked: true } | 
              #                    regtab 
              #                          Define init_0 [] -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 32|s0_init:8 at 24|i:4 at 20|temp_35_cmp:1 at 19|none:3 at 16|temp_36_index_ptr:8 at 8|temp_37_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_init_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 i_53 
              #                          alloc i1 temp_35_cmp_55 
              #                          alloc ptr->i32 temp_36_index_ptr_57 
              #                          alloc i32 temp_37_arithop_57 
              #                    regtab 
              #                          label L9_0: 
.L9_0:
              #                          i_53 = i32 0_0 
              #                    occupy a0 with i_53
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_56 
    j       .while.head_56
              #                    regtab     a0:Freed { symidx: i_53, tracked: true } | 
              #                          label while.head_56: 
.while.head_56:
              #                          new_var temp_35_cmp_55:i1 
              #                          temp_35_cmp_55 = icmp i32 Slt i_53, 1005_0 
              #                    occupy a0 with i_53
              #                    occupy a1 with 1005_0
    li      a1, 1005
              #                    occupy a2 with temp_35_cmp_55
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_35_cmp_55, label while.body_56, label while.exit_56 
              #                    occupy a2 with temp_35_cmp_55
              #                    free a2
              #                    occupy a2 with temp_35_cmp_55
    bnez    a2, .while.body_56
              #                    free a2
    j       .while.exit_56
              #                    regtab     a0:Freed { symidx: i_53, tracked: true } |     a2:Freed { symidx: temp_35_cmp_55, tracked: true } | 
              #                          label while.body_56: 
.while.body_56:
              #                          new_var temp_36_index_ptr_57:ptr->i32 
              #                          temp_36_index_ptr_57 = getelementptr *head_0:ptr->i32 [Some(i_53)] 
              #                    occupy a1 with temp_36_index_ptr_57
    li      a1, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a0 with i_53
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a5 with *head_0
              #                       load label head as ptr to reg
    la      a5, head
              #                    occupy reg a5 with *head_0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                          store -1_0:i32 temp_36_index_ptr_57:ptr->i32 
              #                    occupy a1 with temp_36_index_ptr_57
              #                    occupy a6 with -1_0
    li      a6, -1
    sw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          mu *head_0:204 
              #                          *head_0 = chi *head_0:204 
              #                          new_var temp_37_arithop_57:i32 
              #                          temp_37_arithop_57 = Add i32 i_53, 1_0 
              #                    occupy a0 with i_53
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a7 with temp_37_arithop_57
    add     a7,a0,a3
              #                    free a0
              #                    free a3
              #                    free a7
              #                          i_53 = i32 temp_37_arithop_57 
              #                    occupy a7 with temp_37_arithop_57
              #                    occupy a0 with i_53
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: while.head_56 
              #                    store to temp_37_arithop_57 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_37_arithop_57
              #                    store to temp_36_index_ptr_57 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_36_index_ptr_57
              #                    store to temp_35_cmp_55 in mem offset legal
    sb      a2,19(sp)
              #                    release a2 with temp_35_cmp_55
    j       .while.head_56
              #                    regtab     a0:Freed { symidx: i_53, tracked: true } |     a2:Freed { symidx: temp_35_cmp_55, tracked: true } | 
              #                          label while.exit_56: 
.while.exit_56:
              #                    regtab 
              #                          Define clear_0 [] -> clear_ret_0 
    .globl clear
    .type clear,@function
clear:
              #                    mem layout:|ra_clear:8 at 40|s0_clear:8 at 32|i:4 at 28|temp_38_ptr2globl:4 at 24|temp_39_cmp:1 at 23|none:7 at 16|temp_40_index_ptr:8 at 8|temp_41_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_clear_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_clear_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 i_61 
              #                          alloc i32 temp_38_ptr2globl_63 
              #                          alloc i1 temp_39_cmp_63 
              #                          alloc ptr->i32 temp_40_index_ptr_65 
              #                          alloc i32 temp_41_arithop_65 
              #                    regtab 
              #                          label L8_0: 
.L8_0:
              #                          i_61 = i32 1_0 
              #                    occupy a0 with i_61
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_64 
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: i_61, tracked: true } | 
              #                          label while.head_64: 
.while.head_64:
              #                          new_var temp_38_ptr2globl_63:i32 
              #                          temp_38_ptr2globl_63 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_38_ptr2globl_63
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_39_cmp_63:i1 
              #                          temp_39_cmp_63 = icmp i32 Sle i_61, temp_38_ptr2globl_63 
              #                    occupy a0 with i_61
              #                    occupy a2 with temp_38_ptr2globl_63
              #                    occupy a3 with temp_39_cmp_63
    slt     a3,a2,a0
    xori    a3,a3,1
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_39_cmp_63, label while.body_64, label while.exit_64 
              #                    occupy a3 with temp_39_cmp_63
              #                    free a3
              #                    occupy a3 with temp_39_cmp_63
    bnez    a3, .while.body_64
              #                    free a3
    j       .while.exit_64
              #                    regtab     a0:Freed { symidx: i_61, tracked: true } |     a2:Freed { symidx: temp_38_ptr2globl_63, tracked: true } |     a3:Freed { symidx: temp_39_cmp_63, tracked: true } | 
              #                          label while.body_64: 
.while.body_64:
              #                          new_var temp_40_index_ptr_65:ptr->i32 
              #                          temp_40_index_ptr_65 = getelementptr *vis_0:ptr->i32 [Some(i_61)] 
              #                    occupy a1 with temp_40_index_ptr_65
    li      a1, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with i_61
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
              #                    occupy a6 with *vis_0
              #                       load label vis as ptr to reg
    la      a6, vis
              #                    occupy reg a6 with *vis_0
    add     a1,a1,a6
              #                    free a6
              #                    free a1
              #                          store 0_0:i32 temp_40_index_ptr_65:ptr->i32 
              #                    occupy a1 with temp_40_index_ptr_65
              #                    occupy a7 with 0_0
    li      a7, 0
    sw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                          mu *vis_0:227 
              #                          *vis_0 = chi *vis_0:227 
              #                          new_var temp_41_arithop_65:i32 
              #                          temp_41_arithop_65 = Add i32 i_61, 1_0 
              #                    occupy a0 with i_61
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s1 with temp_41_arithop_65
    add     s1,a0,a4
              #                    free a0
              #                    free a4
              #                    free s1
              #                          i_61 = i32 temp_41_arithop_65 
              #                    occupy s1 with temp_41_arithop_65
              #                    occupy a0 with i_61
    mv      a0, s1
              #                    free s1
              #                    free a0
              #                          jump label: while.head_64 
              #                    store to temp_41_arithop_65 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_41_arithop_65
              #                    store to temp_39_cmp_63 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_39_cmp_63
              #                    store to temp_40_index_ptr_65 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_40_index_ptr_65
              #                    store to temp_38_ptr2globl_63 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with temp_38_ptr2globl_63
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: i_61, tracked: true } |     a2:Freed { symidx: temp_38_ptr2globl_63, tracked: true } |     a3:Freed { symidx: temp_39_cmp_63, tracked: true } | 
              #                          label while.exit_64: 
.while.exit_64:
              #                    regtab 
              #                          Define same_0 [x_68, tar_68] -> same_ret_0 
    .globl same
    .type same,@function
same:
              #                    mem layout:|ra_same:8 at 112|s0_same:8 at 104|x:4 at 100|tar:4 at 96|temp_42_index_ptr:8 at 88|temp_43_cmp:1 at 87|none:7 at 80|temp_44_array_ptr:8 at 72|temp_45_array_ele:4 at 68|i:4 at 64|temp_46_cmp:1 at 63|none:7 at 56|temp_47_array_ptr:8 at 48|temp_48_array_ele:4 at 44|y:4 at 40|temp_49_ret_of_same:4 at 36|none:4 at 32|temp_50_array_ptr:8 at 24|temp_51_array_ele:4 at 20|temp_52_booltrans:1 at 19|temp_53_logicnot:1 at 18|temp_54_:1 at 17|temp_55_logic:1 at 16|temp_56_array_ptr:8 at 8|temp_57_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-120
              #                    store to ra_same_0 in mem offset legal
    sd      ra,112(sp)
              #                    store to s0_same_0 in mem offset legal
    sd      s0,104(sp)
    addi    s0,sp,120
              #                          alloc ptr->i32 temp_42_index_ptr_70 
              #                          alloc i1 temp_43_cmp_72 
              #                          alloc ptr->i32 temp_44_array_ptr_70 
              #                          alloc i32 temp_45_array_ele_70 
              #                          alloc i32 i_70 
              #                          alloc i1 temp_46_cmp_76 
              #                          alloc ptr->i32 temp_47_array_ptr_78 
              #                          alloc i32 temp_48_array_ele_78 
              #                          alloc i32 y_78 
              #                          alloc i32 temp_49_ret_of_same_80 
              #                          alloc ptr->i32 temp_50_array_ptr_80 
              #                          alloc i32 temp_51_array_ele_80 
              #                          alloc i1 temp_52_booltrans_80 
              #                          alloc i1 temp_53_logicnot_80 
              #                          alloc i1 temp_54__80 
              #                          alloc i1 temp_55_logic_80 
              #                          alloc ptr->i32 temp_56_array_ptr_78 
              #                          alloc i32 temp_57_array_ele_78 
              #                    regtab     a0:Freed { symidx: x_68, tracked: true } |     a1:Freed { symidx: tar_68, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_42_index_ptr_70:ptr->i32 
              #                          temp_42_index_ptr_70 = getelementptr *vis_0:ptr->i32 [Some(x_68)] 
              #                    occupy a2 with temp_42_index_ptr_70
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a0 with x_68
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with *vis_0
              #                       load label vis as ptr to reg
    la      a5, vis
              #                    occupy reg a5 with *vis_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                          store 1_0:i32 temp_42_index_ptr_70:ptr->i32 
              #                    occupy a2 with temp_42_index_ptr_70
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu *vis_0:237 
              #                          *vis_0 = chi *vis_0:237 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: x_68, tracked: true } |     a1:Freed { symidx: tar_68, tracked: true } |     a2:Freed { symidx: temp_42_index_ptr_70, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_43_cmp_72:i1 
              #                          temp_43_cmp_72 = icmp i32 Eq x_68, tar_68 
              #                    occupy a0 with x_68
              #                    occupy a1 with tar_68
              #                    occupy a3 with temp_43_cmp_72
    xor     a3,a0,a1
    seqz    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                          br i1 temp_43_cmp_72, label branch_true_73, label branch_false_73 
              #                    occupy a3 with temp_43_cmp_72
              #                    free a3
              #                    occupy a3 with temp_43_cmp_72
    bnez    a3, .branch_true_73
              #                    free a3
    j       .branch_false_73
              #                    regtab     a0:Freed { symidx: x_68, tracked: true } |     a1:Freed { symidx: tar_68, tracked: true } |     a2:Freed { symidx: temp_42_index_ptr_70, tracked: true } |     a3:Freed { symidx: temp_43_cmp_72, tracked: true } | 
              #                          label branch_true_73: 
.branch_true_73:
              #                          ret 1_0 
              #                    load from ra_same_0 in mem
    ld      ra,112(sp)
              #                    load from s0_same_0 in mem
    ld      s0,104(sp)
              #                    store to x_68 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with x_68
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,120
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_68, tracked: true } |     a1:Freed { symidx: tar_68, tracked: true } |     a2:Freed { symidx: temp_42_index_ptr_70, tracked: true } |     a3:Freed { symidx: temp_43_cmp_72, tracked: true } | 
              #                          label branch_false_73: 
.branch_false_73:
              #                    regtab     a0:Freed { symidx: x_68, tracked: true } |     a1:Freed { symidx: tar_68, tracked: true } |     a2:Freed { symidx: temp_42_index_ptr_70, tracked: true } |     a3:Freed { symidx: temp_43_cmp_72, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_44_array_ptr_70:ptr->i32 
              #                          temp_44_array_ptr_70 = getelementptr *head_0:ptr->i32 [Some(x_68)] 
              #                    occupy a4 with temp_44_array_ptr_70
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with x_68
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *head_0
              #                       load label head as ptr to reg
    la      a7, head
              #                    occupy reg a7 with *head_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          new_var temp_45_array_ele_70:i32 
              #                          temp_45_array_ele_70 = load temp_44_array_ptr_70:ptr->i32 
              #                    occupy a4 with temp_44_array_ptr_70
              #                    occupy s1 with temp_45_array_ele_70
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          i_70 = i32 temp_45_array_ele_70 
              #                    occupy s1 with temp_45_array_ele_70
              #                    occupy s2 with i_70
    mv      s2, s1
              #                    free s1
              #                    free s2
              #                          jump label: while.head_77 
    j       .while.head_77
              #                    regtab     a0:Freed { symidx: x_68, tracked: true } |     a1:Freed { symidx: tar_68, tracked: true } |     a2:Freed { symidx: temp_42_index_ptr_70, tracked: true } |     a3:Freed { symidx: temp_43_cmp_72, tracked: true } |     a4:Freed { symidx: temp_44_array_ptr_70, tracked: true } |     s1:Freed { symidx: temp_45_array_ele_70, tracked: true } |     s2:Freed { symidx: i_70, tracked: true } | 
              #                          label while.head_77: 
.while.head_77:
              #                          new_var temp_46_cmp_76:i1 
              #                          temp_46_cmp_76 = icmp i32 Ne i_70, -1_0 
              #                    occupy s2 with i_70
              #                    occupy a5 with -1_0
    li      a5, -1
              #                    occupy a6 with temp_46_cmp_76
    xor     a6,s2,a5
    snez    a6, a6
              #                    free s2
              #                    free a5
              #                    free a6
              #                          br i1 temp_46_cmp_76, label while.body_77, label while.exit_77 
              #                    occupy a6 with temp_46_cmp_76
              #                    free a6
              #                    occupy a6 with temp_46_cmp_76
    bnez    a6, .while.body_77
              #                    free a6
    j       .while.exit_77
              #                    regtab     a0:Freed { symidx: x_68, tracked: true } |     a1:Freed { symidx: tar_68, tracked: true } |     a2:Freed { symidx: temp_42_index_ptr_70, tracked: true } |     a3:Freed { symidx: temp_43_cmp_72, tracked: true } |     a4:Freed { symidx: temp_44_array_ptr_70, tracked: true } |     a6:Freed { symidx: temp_46_cmp_76, tracked: true } |     s1:Freed { symidx: temp_45_array_ele_70, tracked: true } |     s2:Freed { symidx: i_70, tracked: true } | 
              #                          label while.body_77: 
.while.body_77:
              #                          new_var temp_47_array_ptr_78:ptr->i32 
              #                          temp_47_array_ptr_78 = getelementptr *to_0:ptr->i32 [Some(i_70)] 
              #                    occupy a5 with temp_47_array_ptr_78
    li      a5, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with i_70
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a7,s2
              #                    free a7
              #                    free s2
    add     a5,a5,s3
              #                    free s3
    slli a5,a5,2
              #                    occupy s4 with *to_0
              #                       load label to as ptr to reg
    la      s4, to
              #                    occupy reg s4 with *to_0
    add     a5,a5,s4
              #                    free s4
              #                    free a5
              #                          new_var temp_48_array_ele_78:i32 
              #                          temp_48_array_ele_78 = load temp_47_array_ptr_78:ptr->i32 
              #                    occupy a5 with temp_47_array_ptr_78
              #                    occupy s5 with temp_48_array_ele_78
    lw      s5,0(a5)
              #                    free s5
              #                    free a5
              #                          y_78 = i32 temp_48_array_ele_78 
              #                    occupy s5 with temp_48_array_ele_78
              #                    occupy s6 with y_78
    mv      s6, s5
              #                    free s5
              #                    free s6
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: x_68, tracked: true } |     a1:Freed { symidx: tar_68, tracked: true } |     a2:Freed { symidx: temp_42_index_ptr_70, tracked: true } |     a3:Freed { symidx: temp_43_cmp_72, tracked: true } |     a4:Freed { symidx: temp_44_array_ptr_70, tracked: true } |     a5:Freed { symidx: temp_47_array_ptr_78, tracked: true } |     a6:Freed { symidx: temp_46_cmp_76, tracked: true } |     s1:Freed { symidx: temp_45_array_ele_70, tracked: true } |     s2:Freed { symidx: i_70, tracked: true } |     s5:Freed { symidx: temp_48_array_ele_78, tracked: true } |     s6:Freed { symidx: y_78, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_49_ret_of_same_80:i32 
              #                          temp_49_ret_of_same_80 =  Call i32 same_0(y_78, tar_68) 
              #                    saved register dumping to mem
              #                    store to temp_45_array_ele_70 in mem offset legal
    sw      s1,68(sp)
              #                    release s1 with temp_45_array_ele_70
              #                    store to i_70 in mem offset legal
    sw      s2,64(sp)
              #                    release s2 with i_70
              #                    store to temp_48_array_ele_78 in mem offset legal
    sw      s5,44(sp)
              #                    release s5 with temp_48_array_ele_78
              #                    store to y_78 in mem offset legal
    sw      s6,40(sp)
              #                    release s6 with y_78
              #                    store to x_68 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with x_68
              #                    store to tar_68 in mem offset legal
    sw      a1,96(sp)
              #                    release a1 with tar_68
              #                    store to temp_42_index_ptr_70 in mem offset legal
    sd      a2,88(sp)
              #                    release a2 with temp_42_index_ptr_70
              #                    store to temp_43_cmp_72 in mem offset legal
    sb      a3,87(sp)
              #                    release a3 with temp_43_cmp_72
              #                    store to temp_44_array_ptr_70 in mem offset legal
    sd      a4,72(sp)
              #                    release a4 with temp_44_array_ptr_70
              #                    store to temp_47_array_ptr_78 in mem offset legal
    sd      a5,48(sp)
              #                    release a5 with temp_47_array_ptr_78
              #                    store to temp_46_cmp_76 in mem offset legal
    sb      a6,63(sp)
              #                    release a6 with temp_46_cmp_76
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_y_78_0
              #                    load from y_78 in mem


    lw      a0,40(sp)
              #                    occupy a1 with _anonymous_of_tar_68_0
              #                    load from tar_68 in mem


    lw      a1,96(sp)
              #                    arg load ended


    call    same
              #                    store to temp_49_ret_of_same_80 in mem offset legal
    sw      a0,36(sp)
              #                          new_var temp_50_array_ptr_80:ptr->i32 
              #                          temp_50_array_ptr_80 = getelementptr *vis_0:ptr->i32 [Some(y_78)] 
              #                    occupy a1 with temp_50_array_ptr_80
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with y_78
              #                    load from y_78 in mem


    lw      a3,40(sp)
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a5 with *vis_0
              #                       load label vis as ptr to reg
    la      a5, vis
              #                    occupy reg a5 with *vis_0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                          new_var temp_51_array_ele_80:i32 
              #                          temp_51_array_ele_80 = load temp_50_array_ptr_80:ptr->i32 
              #                    occupy a1 with temp_50_array_ptr_80
              #                    occupy a6 with temp_51_array_ele_80
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          new_var temp_52_booltrans_80:i1 
              #                          temp_52_booltrans_80 = icmp i1 Ne temp_51_array_ele_80, 0_0 
              #                    occupy a6 with temp_51_array_ele_80
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s1 with temp_52_booltrans_80
    xor     s1,a6,a7
    snez    s1, s1
              #                    free a6
              #                    free a7
              #                    free s1
              #                          new_var temp_53_logicnot_80:i1 
              #                          temp_53_logicnot_80 = xor i1 temp_52_booltrans_80, true 
              #                    occupy s1 with temp_52_booltrans_80
              #                    occupy s2 with temp_53_logicnot_80
    seqz    s2, s1
              #                    free s1
              #                    free s2
              #                          new_var temp_54__80:i1 
              #                          temp_54__80 = icmp i32 Ne temp_49_ret_of_same_80, 0_0 
              #                    occupy a0 with temp_49_ret_of_same_80
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
              #                    occupy s3 with temp_54__80
    xor     s3,a0,a7
    snez    s3, s3
              #                    free a0
              #                    free a7
              #                    free s3
              #                          new_var temp_55_logic_80:i1 
              #                          temp_55_logic_80 = And i1 temp_53_logicnot_80, temp_54__80 
              #                    occupy s2 with temp_53_logicnot_80
              #                    occupy s3 with temp_54__80
              #                    occupy s4 with temp_55_logic_80
    and     s4,s2,s3
              #                    free s2
              #                    free s3
              #                    free s4
              #                          br i1 temp_55_logic_80, label branch_true_81, label branch_false_81 
              #                    occupy s4 with temp_55_logic_80
              #                    free s4
              #                    occupy s4 with temp_55_logic_80
    bnez    s4, .branch_true_81
              #                    free s4
    j       .branch_false_81
              #                    regtab     a0:Freed { symidx: temp_49_ret_of_same_80, tracked: true } |     a1:Freed { symidx: temp_50_array_ptr_80, tracked: true } |     a3:Freed { symidx: y_78, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_80, tracked: true } |     s1:Freed { symidx: temp_52_booltrans_80, tracked: true } |     s2:Freed { symidx: temp_53_logicnot_80, tracked: true } |     s3:Freed { symidx: temp_54__80, tracked: true } |     s4:Freed { symidx: temp_55_logic_80, tracked: true } | 
              #                          label branch_true_81: 
.branch_true_81:
              #                          ret 1_0 
              #                    load from ra_same_0 in mem
    ld      ra,112(sp)
              #                    load from s0_same_0 in mem
    ld      s0,104(sp)
              #                    store to temp_49_ret_of_same_80 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_49_ret_of_same_80
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,120
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_49_ret_of_same_80, tracked: true } |     a1:Freed { symidx: temp_50_array_ptr_80, tracked: true } |     a3:Freed { symidx: y_78, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_80, tracked: true } |     s1:Freed { symidx: temp_52_booltrans_80, tracked: true } |     s2:Freed { symidx: temp_53_logicnot_80, tracked: true } |     s3:Freed { symidx: temp_54__80, tracked: true } |     s4:Freed { symidx: temp_55_logic_80, tracked: true } | 
              #                          label branch_false_81: 
.branch_false_81:
              #                    regtab     a0:Freed { symidx: temp_49_ret_of_same_80, tracked: true } |     a1:Freed { symidx: temp_50_array_ptr_80, tracked: true } |     a3:Freed { symidx: y_78, tracked: true } |     a6:Freed { symidx: temp_51_array_ele_80, tracked: true } |     s1:Freed { symidx: temp_52_booltrans_80, tracked: true } |     s2:Freed { symidx: temp_53_logicnot_80, tracked: true } |     s3:Freed { symidx: temp_54__80, tracked: true } |     s4:Freed { symidx: temp_55_logic_80, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_56_array_ptr_78:ptr->i32 
              #                          temp_56_array_ptr_78 = getelementptr *next_0:ptr->i32 [Some(i_70)] 
              #                    occupy a2 with temp_56_array_ptr_78
    li      a2, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with i_70
              #                    load from i_70 in mem


    lw      a5,64(sp)
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a4,a5
              #                    free a4
              #                    free a5
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
              #                    occupy s5 with *next_0
              #                       load label next as ptr to reg
    la      s5, next
              #                    occupy reg s5 with *next_0
    add     a2,a2,s5
              #                    free s5
              #                    free a2
              #                          new_var temp_57_array_ele_78:i32 
              #                          temp_57_array_ele_78 = load temp_56_array_ptr_78:ptr->i32 
              #                    occupy a2 with temp_56_array_ptr_78
              #                    occupy s6 with temp_57_array_ele_78
    lw      s6,0(a2)
              #                    free s6
              #                    free a2
              #                          i_70 = i32 temp_57_array_ele_78 
              #                    occupy s6 with temp_57_array_ele_78
              #                    occupy a5 with i_70
    mv      a5, s6
              #                    free s6
              #                    free a5
              #                          jump label: while.head_77 
              #                    store to temp_54__80 in mem offset legal
    sb      s3,17(sp)
              #                    release s3 with temp_54__80
              #                    store to temp_55_logic_80 in mem offset legal
    sb      s4,16(sp)
              #                    release s4 with temp_55_logic_80
              #                    store to temp_50_array_ptr_80 in mem offset legal
    sd      a1,24(sp)
              #                    release a1 with temp_50_array_ptr_80
              #                    store to temp_56_array_ptr_78 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_56_array_ptr_78
              #                    store to temp_49_ret_of_same_80 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_49_ret_of_same_80
              #                    store to temp_51_array_ele_80 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_51_array_ele_80
              #                    store to temp_52_booltrans_80 in mem offset legal
    sb      s1,19(sp)
              #                    release s1 with temp_52_booltrans_80
              #                    store to temp_53_logicnot_80 in mem offset legal
    sb      s2,18(sp)
              #                    release s2 with temp_53_logicnot_80
              #                    store to temp_57_array_ele_78 in mem offset legal
    sw      s6,4(sp)
              #                    release s6 with temp_57_array_ele_78
              #                    store to i_70 in mem offset legal
    sw      a5,64(sp)
              #                    release a5 with i_70
              #                    store to y_78 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with y_78
              #                    occupy a1 with _anonymous_of_tar_68_0
              #                    load from tar_68 in mem


    lw      a1,96(sp)
              #                    occupy a2 with _anonymous_of_temp_42_index_ptr_70_0
              #                    load from temp_42_index_ptr_70 in mem
    ld      a2,88(sp)
              #                    occupy a0 with _anonymous_of_x_68_0
              #                    load from x_68 in mem


    lw      a0,100(sp)
              #                    occupy s1 with _anonymous_of_temp_45_array_ele_70_0
              #                    load from temp_45_array_ele_70 in mem


    lw      s1,68(sp)
              #                    occupy s2 with _anonymous_of_i_70_0
              #                    load from i_70 in mem


    lw      s2,64(sp)
              #                    occupy a3 with _anonymous_of_temp_43_cmp_72_0
              #                    load from temp_43_cmp_72 in mem
    lb      a3,87(sp)
              #                    occupy a4 with _anonymous_of_temp_44_array_ptr_70_0
              #                    load from temp_44_array_ptr_70 in mem
    ld      a4,72(sp)
    j       .while.head_77
              #                    regtab     a0:Freed { symidx: x_68, tracked: true } |     a1:Freed { symidx: tar_68, tracked: true } |     a2:Freed { symidx: temp_42_index_ptr_70, tracked: true } |     a3:Freed { symidx: temp_43_cmp_72, tracked: true } |     a4:Freed { symidx: temp_44_array_ptr_70, tracked: true } |     a6:Freed { symidx: temp_46_cmp_76, tracked: true } |     s1:Freed { symidx: temp_45_array_ele_70, tracked: true } |     s2:Freed { symidx: i_70, tracked: true } | 
              #                          label while.exit_77: 
.while.exit_77:
              #                          ret 0_0 
              #                    load from ra_same_0 in mem
    ld      ra,112(sp)
              #                    load from s0_same_0 in mem
    ld      s0,104(sp)
              #                    store to x_68 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with x_68
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,120
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: tar_68, tracked: true } |     a2:Freed { symidx: temp_42_index_ptr_70, tracked: true } |     a3:Freed { symidx: temp_43_cmp_72, tracked: true } |     a4:Freed { symidx: temp_44_array_ptr_70, tracked: true } |     a6:Freed { symidx: temp_46_cmp_76, tracked: true } |     s1:Freed { symidx: temp_45_array_ele_70, tracked: true } |     s2:Freed { symidx: i_70, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 88|s0_main:8 at 80|temp_58_ret_of_quick_read:4 at 76|temp_59_ret_of_quick_read:4 at 72|temp_60_ptr2globl:4 at 68|temp_61_:1 at 67|none:3 at 64|temp_62_ret_of_getch:4 at 60|ch:4 at 56|temp_63_cmp:1 at 55|temp_64_cmp:1 at 54|temp_65_logic:1 at 53|none:1 at 52|temp_66_ret_of_getch:4 at 48|temp_67_cmp:1 at 47|none:3 at 44|temp_68_ret_of_quick_read:4 at 40|x:4 at 36|temp_69_ret_of_quick_read:4 at 32|y:4 at 28|temp_70_ret_of_same:4 at 24|temp_71_ptr2globl:4 at 20|temp_72_arithop:4 at 16|temp_73_ret_of_quick_read:4 at 12|x:4 at 8|temp_74_ret_of_quick_read:4 at 4|y:4 at 0
    addi    sp,sp,-96
              #                    store to ra_main_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                          alloc i32 temp_58_ret_of_quick_read_86 
              #                          alloc i32 temp_59_ret_of_quick_read_86 
              #                          alloc i32 temp_60_ptr2globl_90 
              #                          alloc i1 temp_61__2111 
              #                          alloc i32 temp_62_ret_of_getch_92 
              #                          alloc i32 ch_92 
              #                          alloc i1 temp_63_cmp_94 
              #                          alloc i1 temp_64_cmp_94 
              #                          alloc i1 temp_65_logic_94 
              #                          alloc i32 temp_66_ret_of_getch_96 
              #                          alloc i1 temp_67_cmp_98 
              #                          alloc i32 temp_68_ret_of_quick_read_100 
              #                          alloc i32 x_100 
              #                          alloc i32 temp_69_ret_of_quick_read_100 
              #                          alloc i32 y_100 
              #                          alloc i32 temp_70_ret_of_same_100 
              #                          alloc i32 temp_71_ptr2globl_92 
              #                          alloc i32 temp_72_arithop_92 
              #                          alloc i32 temp_73_ret_of_quick_read_105 
              #                          alloc i32 x_105 
              #                          alloc i32 temp_74_ret_of_quick_read_105 
              #                          alloc i32 y_105 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_58_ret_of_quick_read_86:i32 
              #                          temp_58_ret_of_quick_read_86 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_58_ret_of_quick_read_86 in mem offset legal
    sw      a0,76(sp)
              #                          store temp_58_ret_of_quick_read_86:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_58_ret_of_quick_read_86
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_59_ret_of_quick_read_86:i32 
              #                          temp_59_ret_of_quick_read_86 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_58_ret_of_quick_read_86 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_58_ret_of_quick_read_86
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_59_ret_of_quick_read_86 in mem offset legal
    sw      a0,72(sp)
              #                          store temp_59_ret_of_quick_read_86:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_59_ret_of_quick_read_86
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                           Call void init_0() 
              #                    saved register dumping to mem
              #                    store to temp_59_ret_of_quick_read_86 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_59_ret_of_quick_read_86
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    init
              #                          jump label: while.head_91 
    j       .while.head_91
              #                    regtab 
              #                          label while.head_91: 
.while.head_91:
              #                          new_var temp_60_ptr2globl_90:i32 
              #                          temp_60_ptr2globl_90 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_60_ptr2globl_90
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_61__2111:i1 
              #                          temp_61__2111 = icmp i32 Ne temp_60_ptr2globl_90, 0_0 
              #                    occupy a1 with temp_60_ptr2globl_90
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_61__2111
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_61__2111, label while.body_91, label while.exit_91 
              #                    occupy a3 with temp_61__2111
              #                    free a3
              #                    occupy a3 with temp_61__2111
    bnez    a3, .while.body_91
              #                    free a3
    j       .while.exit_91
              #                    regtab     a1:Freed { symidx: temp_60_ptr2globl_90, tracked: true } |     a3:Freed { symidx: temp_61__2111, tracked: true } | 
              #                          label while.body_91: 
.while.body_91:
              #                          new_var temp_62_ret_of_getch_92:i32 
              #                          temp_62_ret_of_getch_92 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_60_ptr2globl_90 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with temp_60_ptr2globl_90
              #                    store to temp_61__2111 in mem offset legal
    sb      a3,67(sp)
              #                    release a3 with temp_61__2111
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_62_ret_of_getch_92 in mem offset legal
    sw      a0,60(sp)
              #                          ch_92 = i32 temp_62_ret_of_getch_92 
              #                    occupy a0 with temp_62_ret_of_getch_92
              #                    occupy a1 with ch_92
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_95 
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_getch_92, tracked: true } |     a1:Freed { symidx: ch_92, tracked: true } | 
              #                          label while.head_95: 
.while.head_95:
              #                          new_var temp_63_cmp_94:i1 
              #                          temp_63_cmp_94 = icmp i32 Ne ch_92, 85_0 
              #                    occupy a1 with ch_92
              #                    occupy a2 with 85_0
    li      a2, 85
              #                    occupy a3 with temp_63_cmp_94
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_64_cmp_94:i1 
              #                          temp_64_cmp_94 = icmp i32 Ne ch_92, 81_0 
              #                    occupy a1 with ch_92
              #                    occupy a4 with 81_0
    li      a4, 81
              #                    occupy a5 with temp_64_cmp_94
    xor     a5,a1,a4
    snez    a5, a5
              #                    free a1
              #                    free a4
              #                    free a5
              #                          new_var temp_65_logic_94:i1 
              #                          temp_65_logic_94 = And i1 temp_64_cmp_94, temp_63_cmp_94 
              #                    occupy a5 with temp_64_cmp_94
              #                    occupy a3 with temp_63_cmp_94
              #                    occupy a6 with temp_65_logic_94
    and     a6,a5,a3
              #                    free a5
              #                    free a3
              #                    free a6
              #                          br i1 temp_65_logic_94, label while.body_95, label while.exit_95 
              #                    occupy a6 with temp_65_logic_94
              #                    free a6
              #                    occupy a6 with temp_65_logic_94
    bnez    a6, .while.body_95
              #                    free a6
    j       .while.exit_95
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_getch_92, tracked: true } |     a1:Freed { symidx: ch_92, tracked: true } |     a3:Freed { symidx: temp_63_cmp_94, tracked: true } |     a5:Freed { symidx: temp_64_cmp_94, tracked: true } |     a6:Freed { symidx: temp_65_logic_94, tracked: true } | 
              #                          label while.body_95: 
.while.body_95:
              #                          new_var temp_66_ret_of_getch_96:i32 
              #                          temp_66_ret_of_getch_96 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_62_ret_of_getch_92 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_62_ret_of_getch_92
              #                    store to ch_92 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with ch_92
              #                    store to temp_63_cmp_94 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_63_cmp_94
              #                    store to temp_64_cmp_94 in mem offset legal
    sb      a5,54(sp)
              #                    release a5 with temp_64_cmp_94
              #                    store to temp_65_logic_94 in mem offset legal
    sb      a6,53(sp)
              #                    release a6 with temp_65_logic_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_66_ret_of_getch_96 in mem offset legal
    sw      a0,48(sp)
              #                          ch_92 = i32 temp_66_ret_of_getch_96 
              #                    occupy a0 with temp_66_ret_of_getch_96
              #                    occupy a1 with ch_92
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_95 
              #                    store to temp_66_ret_of_getch_96 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_66_ret_of_getch_96
              #                    occupy a0 with _anonymous_of_temp_62_ret_of_getch_92_0
              #                    load from temp_62_ret_of_getch_92 in mem


    lw      a0,60(sp)
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_getch_92, tracked: true } |     a1:Freed { symidx: ch_92, tracked: true } |     a3:Freed { symidx: temp_63_cmp_94, tracked: true } |     a5:Freed { symidx: temp_64_cmp_94, tracked: true } |     a6:Freed { symidx: temp_65_logic_94, tracked: true } | 
              #                          label while.exit_95: 
.while.exit_95:
              #                          new_var temp_67_cmp_98:i1 
              #                          temp_67_cmp_98 = icmp i32 Eq ch_92, 81_0 
              #                    occupy a1 with ch_92
              #                    occupy a2 with 81_0
    li      a2, 81
              #                    occupy a4 with temp_67_cmp_98
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                          br i1 temp_67_cmp_98, label branch_true_99, label branch_false_99 
              #                    occupy a4 with temp_67_cmp_98
              #                    free a4
              #                    occupy a4 with temp_67_cmp_98
    bnez    a4, .branch_true_99
              #                    free a4
    j       .branch_false_99
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_getch_92, tracked: true } |     a1:Freed { symidx: ch_92, tracked: true } |     a3:Freed { symidx: temp_63_cmp_94, tracked: true } |     a4:Freed { symidx: temp_67_cmp_98, tracked: true } |     a5:Freed { symidx: temp_64_cmp_94, tracked: true } |     a6:Freed { symidx: temp_65_logic_94, tracked: true } | 
              #                          label branch_true_99: 
.branch_true_99:
              #                          new_var temp_68_ret_of_quick_read_100:i32 
              #                          temp_68_ret_of_quick_read_100 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_62_ret_of_getch_92 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_62_ret_of_getch_92
              #                    store to ch_92 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with ch_92
              #                    store to temp_63_cmp_94 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_63_cmp_94
              #                    store to temp_67_cmp_98 in mem offset legal
    sb      a4,47(sp)
              #                    release a4 with temp_67_cmp_98
              #                    store to temp_64_cmp_94 in mem offset legal
    sb      a5,54(sp)
              #                    release a5 with temp_64_cmp_94
              #                    store to temp_65_logic_94 in mem offset legal
    sb      a6,53(sp)
              #                    release a6 with temp_65_logic_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_68_ret_of_quick_read_100 in mem offset legal
    sw      a0,40(sp)
              #                          x_100 = i32 temp_68_ret_of_quick_read_100 
              #                    occupy a0 with temp_68_ret_of_quick_read_100
              #                    occupy a1 with x_100
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_69_ret_of_quick_read_100:i32 
              #                          temp_69_ret_of_quick_read_100 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_68_ret_of_quick_read_100 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_68_ret_of_quick_read_100
              #                    store to x_100 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with x_100
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_69_ret_of_quick_read_100 in mem offset legal
    sw      a0,32(sp)
              #                          y_100 = i32 temp_69_ret_of_quick_read_100 
              #                    occupy a0 with temp_69_ret_of_quick_read_100
              #                    occupy a1 with y_100
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void clear_0() 
              #                    saved register dumping to mem
              #                    store to temp_69_ret_of_quick_read_100 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_69_ret_of_quick_read_100
              #                    store to y_100 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with y_100
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    clear
              #                          new_var temp_70_ret_of_same_100:i32 
              #                          temp_70_ret_of_same_100 =  Call i32 same_0(x_100, y_100) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_100_0
              #                    load from x_100 in mem


    lw      a0,36(sp)
              #                    occupy a1 with _anonymous_of_y_100_0
              #                    load from y_100 in mem


    lw      a1,28(sp)
              #                    arg load ended


    call    same
              #                    store to temp_70_ret_of_same_100 in mem offset legal
    sw      a0,24(sp)
              #                           Call void putint_0(temp_70_ret_of_same_100) 
              #                    saved register dumping to mem
              #                    store to temp_70_ret_of_same_100 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_70_ret_of_same_100
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_70_ret_of_same_100_0
              #                    load from temp_70_ret_of_same_100 in mem


    lw      a0,24(sp)
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
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_getch_92, tracked: true } |     a1:Freed { symidx: ch_92, tracked: true } |     a3:Freed { symidx: temp_63_cmp_94, tracked: true } |     a4:Freed { symidx: temp_67_cmp_98, tracked: true } |     a5:Freed { symidx: temp_64_cmp_94, tracked: true } |     a6:Freed { symidx: temp_65_logic_94, tracked: true } | 
              #                          label branch_false_99: 
.branch_false_99:
              #                          new_var temp_73_ret_of_quick_read_105:i32 
              #                          temp_73_ret_of_quick_read_105 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_62_ret_of_getch_92 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_62_ret_of_getch_92
              #                    store to ch_92 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with ch_92
              #                    store to temp_63_cmp_94 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_63_cmp_94
              #                    store to temp_67_cmp_98 in mem offset legal
    sb      a4,47(sp)
              #                    release a4 with temp_67_cmp_98
              #                    store to temp_64_cmp_94 in mem offset legal
    sb      a5,54(sp)
              #                    release a5 with temp_64_cmp_94
              #                    store to temp_65_logic_94 in mem offset legal
    sb      a6,53(sp)
              #                    release a6 with temp_65_logic_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_73_ret_of_quick_read_105 in mem offset legal
    sw      a0,12(sp)
              #                          x_105 = i32 temp_73_ret_of_quick_read_105 
              #                    occupy a0 with temp_73_ret_of_quick_read_105
              #                    occupy a1 with x_105
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_74_ret_of_quick_read_105:i32 
              #                          temp_74_ret_of_quick_read_105 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_73_ret_of_quick_read_105 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_73_ret_of_quick_read_105
              #                    store to x_105 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with x_105
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_74_ret_of_quick_read_105 in mem offset legal
    sw      a0,4(sp)
              #                          y_105 = i32 temp_74_ret_of_quick_read_105 
              #                    occupy a0 with temp_74_ret_of_quick_read_105
              #                    occupy a1 with y_105
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void add_edge_0(x_105, y_105) 
              #                    saved register dumping to mem
              #                    store to temp_74_ret_of_quick_read_105 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_74_ret_of_quick_read_105
              #                    store to y_105 in mem offset legal
    sw      a1,0(sp)
              #                    release a1 with y_105
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_105_0
              #                    load from x_105 in mem


    lw      a0,8(sp)
              #                    occupy a1 with _anonymous_of_y_105_0
              #                    load from y_105 in mem


    lw      a1,0(sp)
              #                    arg load ended


    call    add_edge
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                    regtab 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_71_ptr2globl_92:i32 
              #                          temp_71_ptr2globl_92 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_71_ptr2globl_92
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_72_arithop_92:i32 
              #                          temp_72_arithop_92 = Sub i32 temp_71_ptr2globl_92, 1_0 
              #                    occupy a1 with temp_71_ptr2globl_92
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_72_arithop_92
              #                    regtab:    a0:Freed { symidx: *m_0, tracked: false } |     a1:Occupied { symidx: temp_71_ptr2globl_92, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_72_arithop_92, tracked: true, occupy_count: 1 } | 


    sub     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_72_arithop_92:i32 *m_0:ptr->i32 
              #                    occupy a4 with *m_0
              #                       load label m as ptr to reg
    la      a4, m
              #                    occupy reg a4 with *m_0
              #                    occupy a3 with temp_72_arithop_92
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          jump label: while.head_91 
              #                    store to temp_72_arithop_92 in mem offset legal
    sw      a3,16(sp)
              #                    release a3 with temp_72_arithop_92
              #                    store to temp_71_ptr2globl_92 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_71_ptr2globl_92
    j       .while.head_91
              #                    regtab     a1:Freed { symidx: temp_60_ptr2globl_90, tracked: true } |     a3:Freed { symidx: temp_61__2111, tracked: true } | 
              #                          label while.exit_91: 
.while.exit_91:
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
              #                    regtab     a1:Freed { symidx: temp_60_ptr2globl_90, tracked: true } |     a3:Freed { symidx: temp_61__2111, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl vis
              #                          global Array:i32:[Some(1005_0)] vis_0 
    .type vis,@object
vis:
    .zero 4020
    .align 4
    .globl cnt
              #                          global i32 cnt_0 
    .type cnt,@object
cnt:
    .word 0
    .align 4
    .globl head
              #                          global Array:i32:[Some(1005_0)] head_0 
    .type head,@object
head:
    .zero 4020
    .align 4
    .globl next
              #                          global Array:i32:[Some(5005_0)] next_0 
    .type next,@object
next:
    .zero 20020
    .align 4
    .globl to
              #                          global Array:i32:[Some(5005_0)] to_0 
    .type to,@object
to:
    .zero 20020
    .align 4
    .globl maxm
              #                          global i32 maxm_0 
    .type maxm,@object
maxm:
    .word 5005
    .align 4
    .globl maxn
              #                          global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 1005
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
