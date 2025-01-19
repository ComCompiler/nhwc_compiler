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
              #                     35   Define quick_read_0 "" -> quick_read_ret_0 
    .globl quick_read
    .type quick_read,@function
quick_read:
              #                    mem layout:|ra_quick_read:8 at 64|s0_quick_read:8 at 56|temp_0_ret_of_getch _s22 _i0:4 at 52|ch _s22 _i1:4 at 48|ch _s22 _i3:4 at 44|x _s22 _i1:4 at 40|f _s22 _i1:4 at 36|f _s22 _i3:4 at 32|temp_1_ _s37 _i0:4 at 28|temp_2_arithop _s34 _i0:4 at 24|temp_3_arithop _s34 _i0:4 at 20|temp_4_arithop _s34 _i0:4 at 16|temp_5_ret_of_getch _s34 _i0:4 at 12|temp_6_ret_of_getch _s27 _i0:4 at 8|temp_7_cmp _s25 _i0:1 at 7|temp_8_cmp _s25 _i0:1 at 6|temp_9_cmp _s32 _i0:1 at 5|temp_10_cmp _s32 _i0:1 at 4|temp_11_ _s803 _i0:1 at 3|temp_12_cmp _s28 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-72
              #                    store to ra_quick_read_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_quick_read_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     41   alloc i32 [temp_0_ret_of_getch_22] 
              #                     44   alloc i32 [ch_22] 
              #                     46   alloc i32 [x_22] 
              #                     48   alloc i32 [f_22] 
              #                     52   alloc i32 [temp_1__37] 
              #                     55   alloc i32 [temp_2_arithop_34] 
              #                     57   alloc i32 [temp_3_arithop_34] 
              #                     59   alloc i32 [temp_4_arithop_34] 
              #                     62   alloc i32 [temp_5_ret_of_getch_34] 
              #                     65   alloc i32 [temp_6_ret_of_getch_27] 
              #                     69   alloc i1 [temp_7_cmp_25] 
              #                     71   alloc i1 [temp_8_cmp_25] 
              #                     80   alloc i1 [temp_9_cmp_32] 
              #                     82   alloc i1 [temp_10_cmp_32] 
              #                     90   alloc i1 [temp_11__803] 
              #                     98   alloc i1 [temp_12_cmp_28] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     42   temp_0_ret_of_getch_22_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     43   (nop) 
              #                     45   (nop) 
              #                     47   (nop) 
              #                     422  ch_22_1 = i32 temp_0_ret_of_getch_22_0 
              #                    occupy a0 with temp_0_ret_of_getch_22_0
              #                    occupy a1 with ch_22_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     440  untrack temp_0_ret_of_getch_22_0 
              #                    occupy a0 with temp_0_ret_of_getch_22_0
              #                    release a0 with temp_0_ret_of_getch_22_0
              #                     423  f_22_1 = i32 0_0 
              #                    occupy a0 with f_22_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_26 
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     78   label while.head_26: 
.while.head_26:
              #                     70   temp_7_cmp_25_0 = icmp i32 Slt ch_22_1, 48_0 
              #                    occupy a1 with ch_22_1
              #                    occupy a2 with 48_0
    li      a2, 48
              #                    occupy a3 with temp_7_cmp_25_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     79   br i1 temp_7_cmp_25_0, label branch_short_circuit_c_true_192, label branch_short_circuit_p_false_192 
              #                    occupy a3 with temp_7_cmp_25_0
              #                    free a3
              #                    occupy a3 with temp_7_cmp_25_0
    bnez    a3, .branch_short_circuit_c_true_192
              #                    free a3
    j       .branch_short_circuit_p_false_192
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     73   label branch_short_circuit_c_true_192: 
.branch_short_circuit_c_true_192:
              #                     99   temp_12_cmp_28_0 = icmp i32 Eq ch_22_1, 45_0 
              #                    occupy a1 with ch_22_1
              #                    occupy a2 with 45_0
    li      a2, 45
              #                    occupy a4 with temp_12_cmp_28_0
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     102  br i1 temp_12_cmp_28_0, label branch_true_29, label UP_43_0 
              #                    occupy a4 with temp_12_cmp_28_0
              #                    free a4
              #                    occupy a4 with temp_12_cmp_28_0
    bnez    a4, .branch_true_29
              #                    free a4
    j       .UP_43_0
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_28_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     100  label branch_true_29: 
.branch_true_29:
              #                     451  untrack temp_10_cmp_32_0 
              #                     450  untrack ch_22_3 
              #                     449  untrack temp_8_cmp_25_0 
              #                     448  untrack x_22_1 
              #                     447  untrack temp_7_cmp_25_0 
              #                    occupy a3 with temp_7_cmp_25_0
              #                    release a3 with temp_7_cmp_25_0
              #                     446  untrack temp_2_arithop_34_0 
              #                     445  untrack temp_4_arithop_34_0 
              #                     444  untrack temp_5_ret_of_getch_34_0 
              #                     443  untrack temp_3_arithop_34_0 
              #                     442  untrack temp_12_cmp_28_0 
              #                    occupy a4 with temp_12_cmp_28_0
              #                    release a4 with temp_12_cmp_28_0
              #                     441  untrack temp_9_cmp_32_0 
              #                     68   (nop) 
              #                     424  f_22_3 = i32 1_0 
              #                    occupy a2 with f_22_3
    li      a2, 1
              #                    free a2
              #                          jump label: branch_false_29 
    j       .branch_false_29
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: f_22_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     101  label branch_false_29: 
.branch_false_29:
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: f_22_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     66   temp_6_ret_of_getch_27_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with f_22_1
              #                    store to f_22_1 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with f_22_1
              #                    occupy a1 with ch_22_1
              #                    store to ch_22_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_22_1
              #                    occupy a2 with f_22_3
              #                    store to f_22_3 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with f_22_3
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     67   (nop) 
              #                     425  ch_22_1 = i32 temp_6_ret_of_getch_27_0 
              #                    occupy a0 with temp_6_ret_of_getch_27_0
              #                    occupy a1 with ch_22_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     426  f_22_1 = i32 f_22_3 
              #                    occupy a2 with f_22_3
              #                    load from f_22_3 in mem


    lw      a2,32(sp)
              #                    occupy a3 with f_22_1
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: while.head_26 
              #                    occupy a2 with f_22_3
              #                    store to f_22_3 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with f_22_3
              #                    occupy a3 with f_22_1
              #                    store to f_22_1 in mem offset legal
    sw      a3,36(sp)
              #                    release a3 with f_22_1
              #                    occupy a0 with temp_6_ret_of_getch_27_0
              #                    store to temp_6_ret_of_getch_27_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_6_ret_of_getch_27_0
              #                    occupy a0 with f_22_1
              #                    load from f_22_1 in mem


    lw      a0,36(sp)
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_28_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     420  label UP_43_0: 
.UP_43_0:
              #                     427  f_22_3 = i32 f_22_1 
              #                    occupy a0 with f_22_1
              #                    occupy a2 with f_22_3
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          jump label: branch_false_29 
              #                    occupy a3 with temp_7_cmp_25_0
              #                    store to temp_7_cmp_25_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_7_cmp_25_0
              #                    occupy a4 with temp_12_cmp_28_0
              #                    store to temp_12_cmp_28_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_12_cmp_28_0
    j       .branch_false_29
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     75   label branch_short_circuit_p_false_192: 
.branch_short_circuit_p_false_192:
              #                     72   temp_8_cmp_25_0 = icmp i32 Sgt ch_22_1, 57_0 
              #                    occupy a1 with ch_22_1
              #                    occupy a2 with 57_0
    li      a2, 57
              #                    occupy a4 with temp_8_cmp_25_0
    slt     a4,a2,a1
              #                    free a1
              #                    free a2
              #                    free a4
              #                     77   br i1 temp_8_cmp_25_0, label branch_short_circuit_c_true_192, label UP_29_0 
              #                    occupy a4 with temp_8_cmp_25_0
              #                    free a4
              #                    occupy a4 with temp_8_cmp_25_0
              #                    store to temp_8_cmp_25_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_8_cmp_25_0
              #                    occupy a2 with temp_8_cmp_25_0
              #                    load from temp_8_cmp_25_0 in mem


    lb      a2,6(sp)
    bnez    a2, .branch_short_circuit_c_true_192
              #                    free a2
    j       .UP_29_0
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: temp_8_cmp_25_0, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     421  label UP_29_0: 
.UP_29_0:
              #                     456  untrack temp_12_cmp_28_0 
              #                     455  untrack temp_7_cmp_25_0 
              #                    occupy a3 with temp_7_cmp_25_0
              #                    release a3 with temp_7_cmp_25_0
              #                     454  untrack temp_8_cmp_25_0 
              #                    occupy a2 with temp_8_cmp_25_0
              #                    release a2 with temp_8_cmp_25_0
              #                     453  untrack temp_6_ret_of_getch_27_0 
              #                     452  untrack f_22_3 
              #                     428  ch_22_3 = i32 ch_22_1 
              #                    occupy a1 with ch_22_1
              #                    occupy a2 with ch_22_3
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     429  x_22_1 = i32 0_0 
              #                    occupy a3 with x_22_1
    li      a3, 0
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_192 
    j       .branch_short_circuit_c_false_192
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     74   label branch_short_circuit_c_false_192: 
.branch_short_circuit_c_false_192:
              #                     81   temp_9_cmp_32_0 = icmp i32 Sge ch_22_3, 48_0 
              #                    occupy a2 with ch_22_3
              #                    occupy a4 with 48_0
    li      a4, 48
              #                    occupy a5 with temp_9_cmp_32_0
    slt     a5,a2,a4
    xori    a5,a5,1
              #                    free a2
              #                    free a4
              #                    free a5
              #                     89   br i1 temp_9_cmp_32_0, label branch_short_circuit_p_true_208, label branch_short_circuit_c_false_208 
              #                    occupy a5 with temp_9_cmp_32_0
              #                    free a5
              #                    occupy a5 with temp_9_cmp_32_0
    bnez    a5, .branch_short_circuit_p_true_208
              #                    free a5
    j       .branch_short_circuit_c_false_208
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     86   label branch_short_circuit_p_true_208: 
.branch_short_circuit_p_true_208:
              #                     83   temp_10_cmp_32_0 = icmp i32 Sle ch_22_3, 57_0 
              #                    occupy a2 with ch_22_3
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a6 with temp_10_cmp_32_0
    slt     a6,a4,a2
    xori    a6,a6,1
              #                    free a2
              #                    free a4
              #                    free a6
              #                     88   br i1 temp_10_cmp_32_0, label branch_short_circuit_c_true_208, label branch_short_circuit_c_false_208 
              #                    occupy a6 with temp_10_cmp_32_0
              #                    free a6
              #                    occupy a6 with temp_10_cmp_32_0
    bnez    a6, .branch_short_circuit_c_true_208
              #                    free a6
              #                    occupy a6 with temp_10_cmp_32_0
              #                    store to temp_10_cmp_32_0 in mem offset legal
    sb      a6,4(sp)
              #                    release a6 with temp_10_cmp_32_0
    j       .branch_short_circuit_c_false_208
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |     a6:Freed { symidx: temp_10_cmp_32_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     84   label branch_short_circuit_c_true_208: 
.branch_short_circuit_c_true_208:
              #                     56   temp_2_arithop_34_0 = Mul i32 x_22_1, 10_0 
              #                    occupy a4 with temp_2_arithop_34_0
              #                    occupy a3 with x_22_1
              #                    occupy a7 with 10_0
    li      a7, 10
    mulw    a4,a3,a7
              #                    free a3
              #                    free a7
              #                    free a4
              #                     58   temp_3_arithop_34_0 = Add i32 temp_2_arithop_34_0, ch_22_3 
              #                    occupy a4 with temp_2_arithop_34_0
              #                    occupy a2 with ch_22_3
              #                    occupy s1 with temp_3_arithop_34_0
    ADDW    s1,a4,a2
              #                    free a4
              #                    free a2
              #                    free s1
              #                     60   temp_4_arithop_34_0 = Sub i32 temp_3_arithop_34_0, 48_0 
              #                    occupy s1 with temp_3_arithop_34_0
              #                    occupy s2 with 48_0
    li      s2, 48
              #                    occupy s3 with temp_4_arithop_34_0
              #                    regtab:    a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a4:Freed { symidx: temp_2_arithop_34_0, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |     a6:Freed { symidx: temp_10_cmp_32_0, tracked: true } |     a7:Freed { symidx: 10_0, tracked: false } |     s1:Occupied { symidx: temp_3_arithop_34_0, tracked: true, occupy_count: 1 } |     s2:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     s3:Occupied { symidx: temp_4_arithop_34_0, tracked: true, occupy_count: 1 } |  released_gpr_count:5,released_fpr_count:24


    subw    s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                     61   (nop) 
              #                     63   temp_5_ret_of_getch_34_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_3_arithop_34_0
              #                    store to temp_3_arithop_34_0 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with temp_3_arithop_34_0
              #                    occupy s3 with temp_4_arithop_34_0
              #                    store to temp_4_arithop_34_0 in mem offset legal
    sw      s3,16(sp)
              #                    release s3 with temp_4_arithop_34_0
              #                    occupy a0 with f_22_1
              #                    store to f_22_1 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with f_22_1
              #                    occupy a1 with ch_22_1
              #                    store to ch_22_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_22_1
              #                    occupy a2 with ch_22_3
              #                    store to ch_22_3 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with ch_22_3
              #                    occupy a3 with x_22_1
              #                    store to x_22_1 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with x_22_1
              #                    occupy a4 with temp_2_arithop_34_0
              #                    store to temp_2_arithop_34_0 in mem offset legal
    sw      a4,24(sp)
              #                    release a4 with temp_2_arithop_34_0
              #                    occupy a5 with temp_9_cmp_32_0
              #                    store to temp_9_cmp_32_0 in mem offset legal
    sb      a5,5(sp)
              #                    release a5 with temp_9_cmp_32_0
              #                    occupy a6 with temp_10_cmp_32_0
              #                    store to temp_10_cmp_32_0 in mem offset legal
    sb      a6,4(sp)
              #                    release a6 with temp_10_cmp_32_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     64   (nop) 
              #                     430  ch_22_3 = i32 temp_5_ret_of_getch_34_0 
              #                    occupy a0 with temp_5_ret_of_getch_34_0
              #                    occupy a1 with ch_22_3
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     431  x_22_1 = i32 temp_4_arithop_34_0 
              #                    occupy a2 with temp_4_arithop_34_0
              #                    load from temp_4_arithop_34_0 in mem


    lw      a2,16(sp)
              #                    occupy a3 with x_22_1
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_192 
              #                    occupy a2 with temp_4_arithop_34_0
              #                    store to temp_4_arithop_34_0 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_4_arithop_34_0
              #                    occupy a1 with ch_22_3
              #                    store to ch_22_3 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with ch_22_3
              #                    occupy a2 with ch_22_3
              #                    load from ch_22_3 in mem


    lw      a2,44(sp)
              #                    occupy a0 with temp_5_ret_of_getch_34_0
              #                    store to temp_5_ret_of_getch_34_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_5_ret_of_getch_34_0
              #                    occupy a0 with f_22_1
              #                    load from f_22_1 in mem


    lw      a0,36(sp)
              #                    occupy a1 with ch_22_1
              #                    load from ch_22_1 in mem


    lw      a1,48(sp)
    j       .branch_short_circuit_c_false_192
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     85   label branch_short_circuit_c_false_208: 
.branch_short_circuit_c_false_208:
              #                     91   temp_11__803_0 = icmp i32 Ne f_22_1, 0_0 
              #                    occupy a0 with f_22_1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a6 with temp_11__803_0
    xor     a6,a0,a4
    snez    a6, a6
              #                    free a0
              #                    free a4
              #                    free a6
              #                     457  untrack f_22_1 
              #                    occupy a0 with f_22_1
              #                    release a0 with f_22_1
              #                     94   br i1 temp_11__803_0, label branch_true_38, label branch_false_38 
              #                    occupy a6 with temp_11__803_0
              #                    free a6
              #                    occupy a6 with temp_11__803_0
    bnez    a6, .branch_true_38
              #                    free a6
    j       .branch_false_38
              #                    regtab     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |     a6:Freed { symidx: temp_11__803_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     92   label branch_true_38: 
.branch_true_38:
              #                     458  untrack temp_11__803_0 
              #                    occupy a6 with temp_11__803_0
              #                    release a6 with temp_11__803_0
              #                     53   temp_1__37_0 = Sub i32 0_0, x_22_1 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a3 with x_22_1
              #                    occupy a4 with temp_1__37_0
              #                    regtab:    a0:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Occupied { symidx: x_22_1, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: temp_1__37_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24


    subw    a4,a0,a3
              #                    free a0
              #                    free a3
              #                    free a4
              #                     54   ret temp_1__37_0 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    occupy a4 with temp_1__37_0
              #                    store to temp_1__37_0 in mem offset legal
    sw      a4,28(sp)
              #                    release a4 with temp_1__37_0
              #                    occupy a0 with temp_1__37_0
              #                    load from temp_1__37_0 in mem


    lw      a0,28(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |     a6:Freed { symidx: temp_11__803_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     93   label branch_false_38: 
.branch_false_38:
              #                     460  untrack temp_1__37_0 
              #                     459  untrack temp_11__803_0 
              #                    occupy a6 with temp_11__803_0
              #                    release a6 with temp_11__803_0
              #                     50   ret x_22_1 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    occupy a3 with x_22_1
              #                    store to x_22_1 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with x_22_1
              #                    occupy a0 with x_22_1
              #                    load from x_22_1 in mem


    lw      a0,40(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     36   Define add_edge_0 "from_41_0,To_41_0," -> add_edge_ret_0 
    .globl add_edge
    .type add_edge,@function
add_edge:
              #                    mem layout:|ra_add_edge:8 at 120|s0_add_edge:8 at 112|from _s41 _i0:4 at 108|To _s41 _i0:4 at 104|temp_13_value_from_ptr _s43 _i0:4 at 100|none:4 at 96|temp_14_ptr_of_*to_0:8 at 88|temp_16_ptr_of_*next_0:8 at 80|temp_17_ptr_of_*head_0:8 at 72|temp_18_ele_of_*head_0 _s43 _i0:4 at 68|none:4 at 64|temp_19_ptr_of_*head_0:8 at 56|temp_22_arithop _s43 _i0:4 at 52|temp_23_value_from_ptr _s43 _i0:4 at 48|temp_24_ptr_of_*to_0:8 at 40|temp_26_ptr_of_*next_0:8 at 32|temp_27_ptr_of_*head_0:8 at 24|temp_28_ele_of_*head_0 _s43 _i0:4 at 20|none:4 at 16|temp_29_ptr_of_*head_0:8 at 8|temp_32_arithop _s43 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-128
              #                    store to ra_add_edge_0 in mem offset legal
    sd      ra,120(sp)
              #                    store to s0_add_edge_0 in mem offset legal
    sd      s0,112(sp)
    addi    s0,sp,128
              #                     343  head_0_1 = chi head_0_0:36 
              #                     344  to_0_1 = chi to_0_0:36 
              #                     345  next_0_1 = chi next_0_0:36 
              #                     346  cnt_0_1 = chi cnt_0_0:36 
              #                     103  alloc i32 [temp_13_value_from_ptr_43] 
              #                     106  alloc ptr->i32 [temp_14_ptr_of_*to_0_43] 
              #                     110  alloc i32 [temp_15_value_from_ptr_43] 
              #                     113  alloc ptr->i32 [temp_16_ptr_of_*next_0_43] 
              #                     115  alloc ptr->i32 [temp_17_ptr_of_*head_0_43] 
              #                     117  alloc i32 [temp_18_ele_of_*head_0_43] 
              #                     122  alloc ptr->i32 [temp_19_ptr_of_*head_0_43] 
              #                     124  alloc i32 [temp_20_value_from_ptr_43] 
              #                     129  alloc i32 [temp_21_value_from_ptr_43] 
              #                     132  alloc i32 [temp_22_arithop_43] 
              #                     136  alloc i32 [temp_23_value_from_ptr_43] 
              #                     139  alloc ptr->i32 [temp_24_ptr_of_*to_0_43] 
              #                     143  alloc i32 [temp_25_value_from_ptr_43] 
              #                     146  alloc ptr->i32 [temp_26_ptr_of_*next_0_43] 
              #                     148  alloc ptr->i32 [temp_27_ptr_of_*head_0_43] 
              #                     150  alloc i32 [temp_28_ele_of_*head_0_43] 
              #                     155  alloc ptr->i32 [temp_29_ptr_of_*head_0_43] 
              #                     157  alloc i32 [temp_30_value_from_ptr_43] 
              #                     162  alloc i32 [temp_31_value_from_ptr_43] 
              #                     165  alloc i32 [temp_32_arithop_43] 
              #                    regtab     a0:Freed { symidx: from_41_0, tracked: true } |     a1:Freed { symidx: To_41_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     104  temp_13_value_from_ptr_43_0 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a3 with temp_13_value_from_ptr_43_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     105  mu cnt_0_1:104 
              #                     107  temp_14_ptr_of_*to_0_43 = GEP *to_0:ptr->i32 [Some(temp_13_value_from_ptr_43_0)] 
              #                    occupy a4 with temp_14_ptr_of_*to_0_43
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_13_value_from_ptr_43_0
    mv      a5, a3
              #                    free a3
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *to_0
              #                       load label to as ptr to reg
    la      a6, to
              #                    occupy reg a6 with *to_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     108  store To_41_0:i32 temp_14_ptr_of_*to_0_43:ptr->i32 
              #                    occupy a4 with temp_14_ptr_of_*to_0_43
              #                    occupy a1 with To_41_0
    sw      a1,0(a4)
              #                    free a1
              #                    free a4
              #                     469  untrack temp_14_ptr_of_*to_0_43 
              #                    occupy a4 with temp_14_ptr_of_*to_0_43
              #                    release a4 with temp_14_ptr_of_*to_0_43
              #                     109  to_0_2 = chi to_0_1:108 
              #                     111  (nop) 
              #                     112  mu cnt_0_1:111 
              #                     114  temp_16_ptr_of_*next_0_43 = GEP *next_0:ptr->i32 [Some(temp_13_value_from_ptr_43_0)] 
              #                    occupy a4 with temp_16_ptr_of_*next_0_43
    li      a4, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_13_value_from_ptr_43_0
    mv      a7, a3
              #                    free a3
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
              #                    occupy s1 with *next_0
              #                       load label next as ptr to reg
    la      s1, next
              #                    occupy reg s1 with *next_0
    add     a4,a4,s1
              #                    free s1
              #                    free a4
              #                     116  temp_17_ptr_of_*head_0_43 = GEP *head_0:Array:i32:[None] [Some(from_41_0)] 
              #                    occupy s2 with temp_17_ptr_of_*head_0_43
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with from_41_0
    mv      s3, a0
              #                    free a0
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy s4 with *head_0
              #                       load label head as ptr to reg
    la      s4, head
              #                    occupy reg s4 with *head_0
    add     s2,s2,s4
              #                    free s4
              #                    free s2
              #                     118  temp_18_ele_of_*head_0_43_0 = load temp_17_ptr_of_*head_0_43:ptr->i32 
              #                    occupy s2 with temp_17_ptr_of_*head_0_43
              #                    occupy s5 with temp_18_ele_of_*head_0_43_0
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                     119  mu head_0_1:118 
              #                     120  store temp_18_ele_of_*head_0_43_0:i32 temp_16_ptr_of_*next_0_43:ptr->i32 
              #                    occupy a4 with temp_16_ptr_of_*next_0_43
              #                    occupy s5 with temp_18_ele_of_*head_0_43_0
    sw      s5,0(a4)
              #                    free s5
              #                    free a4
              #                     468  untrack temp_16_ptr_of_*next_0_43 
              #                    occupy a4 with temp_16_ptr_of_*next_0_43
              #                    release a4 with temp_16_ptr_of_*next_0_43
              #                     465  untrack temp_18_ele_of_*head_0_43_0 
              #                    occupy s5 with temp_18_ele_of_*head_0_43_0
              #                    release s5 with temp_18_ele_of_*head_0_43_0
              #                     121  next_0_2 = chi next_0_1:120 
              #                     123  (nop) 
              #                     125  (nop) 
              #                     126  mu cnt_0_1:125 
              #                     127  store temp_13_value_from_ptr_43_0:i32 temp_17_ptr_of_*head_0_43:ptr->i32 
              #                    occupy s2 with temp_17_ptr_of_*head_0_43
              #                    occupy a3 with temp_13_value_from_ptr_43_0
    sw      a3,0(s2)
              #                    free a3
              #                    free s2
              #                     461  untrack temp_17_ptr_of_*head_0_43 
              #                    occupy s2 with temp_17_ptr_of_*head_0_43
              #                    release s2 with temp_17_ptr_of_*head_0_43
              #                     128  head_0_2 = chi head_0_1:127 
              #                     130  (nop) 
              #                     131  mu cnt_0_1:130 
              #                     133  temp_22_arithop_43_0 = Add i32 temp_13_value_from_ptr_43_0, 1_0 
              #                    occupy a3 with temp_13_value_from_ptr_43_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s2 with temp_22_arithop_43_0
    ADDW    s2,a3,a4
              #                    free a3
              #                    free a4
              #                    free s2
              #                     467  untrack temp_13_value_from_ptr_43_0 
              #                    occupy a3 with temp_13_value_from_ptr_43_0
              #                    release a3 with temp_13_value_from_ptr_43_0
              #                     134  store temp_22_arithop_43_0:i32 *cnt_0:ptr->i32 
              #                    occupy a3 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a3, cnt
              #                    occupy reg a3 with *cnt_0
              #                    occupy s2 with temp_22_arithop_43_0
    sw      s2,0(a3)
              #                    free s2
              #                    free a3
              #                     474  untrack temp_22_arithop_43_0 
              #                    occupy s2 with temp_22_arithop_43_0
              #                    release s2 with temp_22_arithop_43_0
              #                     135  cnt_0_2 = chi cnt_0_1:134 
              #                     137  temp_23_value_from_ptr_43_0 = load *cnt_0:ptr->i32 
              #                    occupy s2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      s2, cnt
              #                    occupy reg s2 with *cnt_0
              #                    occupy s5 with temp_23_value_from_ptr_43_0
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                     138  mu cnt_0_2:137 
              #                     140  temp_24_ptr_of_*to_0_43 = GEP *to_0:ptr->i32 [Some(temp_23_value_from_ptr_43_0)] 
              #                    occupy s6 with temp_24_ptr_of_*to_0_43
    li      s6, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with temp_23_value_from_ptr_43_0
    mv      s7, s5
              #                    free s5
              #                    occupy s5 with temp_23_value_from_ptr_43_0
              #                    store to temp_23_value_from_ptr_43_0 in mem offset legal
    sw      s5,48(sp)
              #                    release s5 with temp_23_value_from_ptr_43_0
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s5 with *to_0
              #                       load label to as ptr to reg
    la      s5, to
              #                    occupy reg s5 with *to_0
    add     s6,s6,s5
              #                    free s5
              #                    free s6
              #                     141  store from_41_0:i32 temp_24_ptr_of_*to_0_43:ptr->i32 
              #                    occupy s6 with temp_24_ptr_of_*to_0_43
              #                    occupy a0 with from_41_0
    sw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                     470  untrack from_41_0 
              #                    occupy a0 with from_41_0
              #                    release a0 with from_41_0
              #                     464  untrack temp_24_ptr_of_*to_0_43 
              #                    occupy s6 with temp_24_ptr_of_*to_0_43
              #                    release s6 with temp_24_ptr_of_*to_0_43
              #                     142  to_0_3 = chi to_0_2:141 
              #                     144  (nop) 
              #                     145  mu cnt_0_2:144 
              #                     147  temp_26_ptr_of_*next_0_43 = GEP *next_0:ptr->i32 [Some(temp_23_value_from_ptr_43_0)] 
              #                    occupy a0 with temp_26_ptr_of_*next_0_43
    li      a0, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s6 with temp_23_value_from_ptr_43_0
              #                    load from temp_23_value_from_ptr_43_0 in mem


    lw      s6,48(sp)
    mv      s5, s6
              #                    free s6
              #                    occupy s6 with temp_23_value_from_ptr_43_0
              #                    store to temp_23_value_from_ptr_43_0 in mem offset legal
    sw      s6,48(sp)
              #                    release s6 with temp_23_value_from_ptr_43_0
    add     a0,a0,s5
              #                    free s5
    slli a0,a0,2
              #                    occupy s6 with *next_0
              #                       load label next as ptr to reg
    la      s6, next
              #                    occupy reg s6 with *next_0
    add     a0,a0,s6
              #                    free s6
              #                    free a0
              #                     149  temp_27_ptr_of_*head_0_43 = GEP *head_0:Array:i32:[None] [Some(To_41_0)] 
              #                    occupy s6 with temp_27_ptr_of_*head_0_43
    li      s6, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with To_41_0
    mv      s8, a1
              #                    free a1
              #                    occupy a1 with To_41_0
              #                    store to To_41_0 in mem offset legal
    sw      a1,104(sp)
              #                    release a1 with To_41_0
    add     s6,s6,s8
              #                    free s8
    slli s6,s6,2
              #                    occupy a1 with *head_0
              #                       load label head as ptr to reg
    la      a1, head
              #                    occupy reg a1 with *head_0
    add     s6,s6,a1
              #                    free a1
              #                    free s6
              #                     473  untrack To_41_0 
              #                     151  temp_28_ele_of_*head_0_43_0 = load temp_27_ptr_of_*head_0_43:ptr->i32 
              #                    occupy s6 with temp_27_ptr_of_*head_0_43
              #                    occupy a1 with temp_28_ele_of_*head_0_43_0
    lw      a1,0(s6)
              #                    free a1
              #                    occupy a1 with temp_28_ele_of_*head_0_43_0
              #                    store to temp_28_ele_of_*head_0_43_0 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_28_ele_of_*head_0_43_0
              #                    free s6
              #                     152  mu head_0_2:151 
              #                     153  store temp_28_ele_of_*head_0_43_0:i32 temp_26_ptr_of_*next_0_43:ptr->i32 
              #                    occupy a0 with temp_26_ptr_of_*next_0_43
              #                    occupy a1 with temp_28_ele_of_*head_0_43_0
              #                    load from temp_28_ele_of_*head_0_43_0 in mem


    lw      a1,20(sp)
    sw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_28_ele_of_*head_0_43_0
              #                    store to temp_28_ele_of_*head_0_43_0 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_28_ele_of_*head_0_43_0
              #                    free a0
              #                     463  untrack temp_28_ele_of_*head_0_43_0 
              #                     462  untrack temp_26_ptr_of_*next_0_43 
              #                    occupy a0 with temp_26_ptr_of_*next_0_43
              #                    release a0 with temp_26_ptr_of_*next_0_43
              #                     154  next_0_3 = chi next_0_2:153 
              #                     156  (nop) 
              #                     158  (nop) 
              #                     159  mu cnt_0_2:158 
              #                     160  store temp_23_value_from_ptr_43_0:i32 temp_27_ptr_of_*head_0_43:ptr->i32 
              #                    occupy s6 with temp_27_ptr_of_*head_0_43
              #                    occupy a0 with temp_23_value_from_ptr_43_0
              #                    load from temp_23_value_from_ptr_43_0 in mem


    lw      a0,48(sp)
    sw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                     466  untrack temp_27_ptr_of_*head_0_43 
              #                    occupy s6 with temp_27_ptr_of_*head_0_43
              #                    release s6 with temp_27_ptr_of_*head_0_43
              #                     161  head_0_3 = chi head_0_2:160 
              #                     163  (nop) 
              #                     164  mu cnt_0_2:163 
              #                     166  temp_32_arithop_43_0 = Add i32 temp_23_value_from_ptr_43_0, 1_0 
              #                    occupy a0 with temp_23_value_from_ptr_43_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a1 with temp_32_arithop_43_0
    ADDW    a1,a0,a4
              #                    free a0
              #                    free a4
              #                    free a1
              #                     472  untrack temp_23_value_from_ptr_43_0 
              #                    occupy a0 with temp_23_value_from_ptr_43_0
              #                    release a0 with temp_23_value_from_ptr_43_0
              #                     167  store temp_32_arithop_43_0:i32 *cnt_0:ptr->i32 
              #                    occupy a0 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a0, cnt
              #                    occupy reg a0 with *cnt_0
              #                    occupy a1 with temp_32_arithop_43_0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     471  untrack temp_32_arithop_43_0 
              #                    occupy a1 with temp_32_arithop_43_0
              #                    release a1 with temp_32_arithop_43_0
              #                     168  cnt_0_3 = chi cnt_0_2:167 
              #                          jump label: exit_16 
    j       .exit_16
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     170  label exit_16: 
.exit_16:
              #                     347  mu head_0_3:169 
              #                     348  mu to_0_3:169 
              #                     349  mu next_0_3:169 
              #                     350  mu cnt_0_3:169 
              #                     169  ret 
              #                    load from ra_add_edge_0 in mem
    ld      ra,120(sp)
              #                    load from s0_add_edge_0 in mem
    ld      s0,112(sp)
    addi    sp,sp,128
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     37   Define init_0 "" -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 32|s0_init:8 at 24|i _s53 _i1:4 at 20|none:4 at 16|temp_33_ptr_of_*head_0:8 at 8|temp_34_arithop _s57 _i0:4 at 4|temp_35_cmp _s55 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-40
              #                    store to ra_init_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     351  head_0_4 = chi head_0_0:37 
              #                     172  alloc i32 [i_53] 
              #                     173  alloc ptr->i32 [temp_33_ptr_of_*head_0_57] 
              #                     177  alloc i32 [temp_34_arithop_57] 
              #                     180  alloc i1 [temp_35_cmp_55] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     171  (nop) 
              #                     432  i_53_1 = i32 0_0 
              #                    occupy a0 with i_53_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_56 
    j       .while.head_56
              #                    regtab     a0:Freed { symidx: i_53_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     182  label while.head_56: 
.while.head_56:
              #                     181  temp_35_cmp_55_0 = icmp i32 Slt i_53_1, 1005_0 
              #                    occupy a0 with i_53_1
              #                    occupy a1 with 1005_0
    li      a1, 1005
              #                    occupy a2 with temp_35_cmp_55_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     185  br i1 temp_35_cmp_55_0, label while.body_56, label while.exit_56 
              #                    occupy a2 with temp_35_cmp_55_0
              #                    free a2
              #                    occupy a2 with temp_35_cmp_55_0
    bnez    a2, .while.body_56
              #                    free a2
    j       .while.exit_56
              #                    regtab     a0:Freed { symidx: i_53_1, tracked: true } |     a2:Freed { symidx: temp_35_cmp_55_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     183  label while.body_56: 
.while.body_56:
              #                     174  temp_33_ptr_of_*head_0_57 = GEP *head_0:ptr->i32 [Some(i_53_1)] 
              #                    occupy a1 with temp_33_ptr_of_*head_0_57
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_53_1
    mv      a3, a0
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with *head_0
              #                       load label head as ptr to reg
    la      a4, head
              #                    occupy reg a4 with *head_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                     175  store -1_0:i32 temp_33_ptr_of_*head_0_57:ptr->i32 
              #                    occupy a1 with temp_33_ptr_of_*head_0_57
              #                    occupy a5 with -1_0
    li      a5, -1
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     176  head_0_6 = chi head_0_5:175 
              #                     178  temp_34_arithop_57_0 = Add i32 i_53_1, 1_0 
              #                    occupy a0 with i_53_1
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_34_arithop_57_0
    ADDW    a7,a0,a6
              #                    free a0
              #                    free a6
              #                    free a7
              #                     179  (nop) 
              #                     433  i_53_1 = i32 temp_34_arithop_57_0 
              #                    occupy a7 with temp_34_arithop_57_0
              #                    occupy a0 with i_53_1
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: while.head_56 
              #                    occupy a2 with temp_35_cmp_55_0
              #                    store to temp_35_cmp_55_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_35_cmp_55_0
              #                    occupy a7 with temp_34_arithop_57_0
              #                    store to temp_34_arithop_57_0 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_34_arithop_57_0
              #                    occupy a1 with temp_33_ptr_of_*head_0_57
              #                    store to temp_33_ptr_of_*head_0_57 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_33_ptr_of_*head_0_57
    j       .while.head_56
              #                    regtab     a0:Freed { symidx: i_53_1, tracked: true } |     a2:Freed { symidx: temp_35_cmp_55_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     184  label while.exit_56: 
.while.exit_56:
              #                     475  untrack i_53_1 
              #                    occupy a0 with i_53_1
              #                    release a0 with i_53_1
              #                     352  mu head_0_5:186 
              #                     186  ret 
              #                    load from ra_init_0 in mem
    ld      ra,32(sp)
              #                    load from s0_init_0 in mem
    ld      s0,24(sp)
    addi    sp,sp,40
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     38   Define clear_0 "" -> clear_ret_0 
    .globl clear
    .type clear,@function
clear:
              #                    mem layout:|ra_clear:8 at 40|s0_clear:8 at 32|i _s61 _i1:4 at 28|none:4 at 24|temp_36_ptr_of_*vis_0:8 at 16|temp_37_arithop _s65 _i0:4 at 12|temp_38_value_from_ptr _s63 _i0:4 at 8|temp_39_cmp _s63 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-48
              #                    store to ra_clear_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_clear_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     353  vis_0_1 = chi vis_0_0:38 
              #                     188  alloc i32 [i_61] 
              #                     189  alloc ptr->i32 [temp_36_ptr_of_*vis_0_65] 
              #                     193  alloc i32 [temp_37_arithop_65] 
              #                     196  alloc i32 [temp_38_value_from_ptr_63] 
              #                     199  alloc i1 [temp_39_cmp_63] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     187  (nop) 
              #                     197  temp_38_value_from_ptr_63_0 = load *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with temp_38_value_from_ptr_63_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     198  mu n_0_0:197 
              #                     434  i_61_1 = i32 1_0 
              #                    occupy a2 with i_61_1
    li      a2, 1
              #                    free a2
              #                          jump label: while.head_64 
    j       .while.head_64
              #                    regtab     a1:Freed { symidx: temp_38_value_from_ptr_63_0, tracked: true } |     a2:Freed { symidx: i_61_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     201  label while.head_64: 
.while.head_64:
              #                     200  temp_39_cmp_63_0 = icmp i32 Sle i_61_1, temp_38_value_from_ptr_63_0 
              #                    occupy a2 with i_61_1
              #                    occupy a1 with temp_38_value_from_ptr_63_0
              #                    occupy a0 with temp_39_cmp_63_0
    slt     a0,a1,a2
    xori    a0,a0,1
              #                    free a2
              #                    free a1
              #                    free a0
              #                     204  br i1 temp_39_cmp_63_0, label while.body_64, label while.exit_64 
              #                    occupy a0 with temp_39_cmp_63_0
              #                    free a0
              #                    occupy a0 with temp_39_cmp_63_0
    bnez    a0, .while.body_64
              #                    free a0
    j       .while.exit_64
              #                    regtab     a0:Freed { symidx: temp_39_cmp_63_0, tracked: true } |     a1:Freed { symidx: temp_38_value_from_ptr_63_0, tracked: true } |     a2:Freed { symidx: i_61_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     202  label while.body_64: 
.while.body_64:
              #                     190  temp_36_ptr_of_*vis_0_65 = GEP *vis_0:ptr->i32 [Some(i_61_1)] 
              #                    occupy a3 with temp_36_ptr_of_*vis_0_65
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_61_1
    mv      a4, a2
              #                    free a2
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *vis_0
              #                       load label vis as ptr to reg
    la      a5, vis
              #                    occupy reg a5 with *vis_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     191  store 0_0:i32 temp_36_ptr_of_*vis_0_65:ptr->i32 
              #                    occupy a3 with temp_36_ptr_of_*vis_0_65
              #                    occupy a6 with 0_0
    li      a6, 0
    sw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     192  vis_0_3 = chi vis_0_2:191 
              #                     194  temp_37_arithop_65_0 = Add i32 i_61_1, 1_0 
              #                    occupy a2 with i_61_1
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_37_arithop_65_0
    ADDW    s1,a2,a7
              #                    free a2
              #                    free a7
              #                    free s1
              #                     195  (nop) 
              #                     435  i_61_1 = i32 temp_37_arithop_65_0 
              #                    occupy s1 with temp_37_arithop_65_0
              #                    occupy a2 with i_61_1
    mv      a2, s1
              #                    free s1
              #                    free a2
              #                          jump label: while.head_64 
              #                    occupy s1 with temp_37_arithop_65_0
              #                    store to temp_37_arithop_65_0 in mem offset legal
    sw      s1,12(sp)
              #                    release s1 with temp_37_arithop_65_0
              #                    occupy a0 with temp_39_cmp_63_0
              #                    store to temp_39_cmp_63_0 in mem offset legal
    sb      a0,7(sp)
              #                    release a0 with temp_39_cmp_63_0
              #                    occupy a3 with temp_36_ptr_of_*vis_0_65
              #                    store to temp_36_ptr_of_*vis_0_65 in mem offset legal
    sd      a3,16(sp)
              #                    release a3 with temp_36_ptr_of_*vis_0_65
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_39_cmp_63_0, tracked: true } |     a1:Freed { symidx: temp_38_value_from_ptr_63_0, tracked: true } |     a2:Freed { symidx: i_61_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     203  label while.exit_64: 
.while.exit_64:
              #                     477  untrack i_61_1 
              #                    occupy a2 with i_61_1
              #                    release a2 with i_61_1
              #                     476  untrack temp_38_value_from_ptr_63_0 
              #                    occupy a1 with temp_38_value_from_ptr_63_0
              #                    release a1 with temp_38_value_from_ptr_63_0
              #                     354  mu vis_0_2:205 
              #                     205  ret 
              #                    load from ra_clear_0 in mem
    ld      ra,40(sp)
              #                    load from s0_clear_0 in mem
    ld      s0,32(sp)
    addi    sp,sp,48
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     39   Define same_0 "x_68_0,tar_68_0," -> same_ret_0 
    .globl same
    .type same,@function
same:
              #                    mem layout:|ra_same:8 at 96|s0_same:8 at 88|x _s68 _i0:4 at 84|tar _s68 _i0:4 at 80|temp_40_ptr_of_*vis_0:8 at 72|temp_41_ptr_of_*head_0:8 at 64|temp_42_ele_of_*head_0 _s70 _i0:4 at 60|i _s70 _i1:4 at 56|temp_43_ptr_of_*to_0:8 at 48|temp_44_ele_of_*to_0 _s78 _i0:4 at 44|none:4 at 40|temp_45_ptr_of_*next_0:8 at 32|temp_46_ele_of_*next_0 _s78 _i0:4 at 28|temp_47_cmp _s72 _i0:1 at 27|temp_48_cmp _s76 _i0:1 at 26|none:2 at 24|temp_49_ptr_of_*vis_0:8 at 16|temp_50_ele_of_*vis_0 _s80 _i0:4 at 12|temp_51_booltrans _s80 _i0:1 at 11|temp_52_logicnot _s80 _i0:1 at 10|none:2 at 8|temp_53_ret_of_same _s80 _i0:4 at 4|temp_54_i32_to_bool _s80 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-104
              #                    store to ra_same_0 in mem offset legal
    sd      ra,96(sp)
              #                    store to s0_same_0 in mem offset legal
    sd      s0,88(sp)
    addi    s0,sp,104
              #                     355  vis_0_4 = chi vis_0_0:39 
              #                     206  alloc ptr->i32 [temp_40_ptr_of_*vis_0_70] 
              #                     210  alloc ptr->i32 [temp_41_ptr_of_*head_0_70] 
              #                     212  alloc i32 [temp_42_ele_of_*head_0_70] 
              #                     216  alloc i32 [i_70] 
              #                     219  alloc ptr->i32 [temp_43_ptr_of_*to_0_78] 
              #                     221  alloc i32 [temp_44_ele_of_*to_0_78] 
              #                     225  alloc i32 [y_78] 
              #                     226  alloc ptr->i32 [temp_45_ptr_of_*next_0_78] 
              #                     228  alloc i32 [temp_46_ele_of_*next_0_78] 
              #                     236  alloc i1 [temp_47_cmp_72] 
              #                     241  alloc i1 [temp_48_cmp_76] 
              #                     249  alloc ptr->i32 [temp_49_ptr_of_*vis_0_80] 
              #                     251  alloc i32 [temp_50_ele_of_*vis_0_80] 
              #                     254  alloc i1 [temp_51_booltrans_80] 
              #                     256  alloc i1 [temp_52_logicnot_80] 
              #                     258  alloc i32 [temp_53_ret_of_same_80] 
              #                     260  alloc i1 [temp_54_i32_to_bool_80] 
              #                    regtab     a0:Freed { symidx: x_68_0, tracked: true } |     a1:Freed { symidx: tar_68_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     207  temp_40_ptr_of_*vis_0_70 = GEP *vis_0:ptr->i32 [Some(x_68_0)] 
              #                    occupy a2 with temp_40_ptr_of_*vis_0_70
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with x_68_0
    mv      a3, a0
              #                    free a0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *vis_0
              #                       load label vis as ptr to reg
    la      a4, vis
              #                    occupy reg a4 with *vis_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     208  store 1_0:i32 temp_40_ptr_of_*vis_0_70:ptr->i32 
              #                    occupy a2 with temp_40_ptr_of_*vis_0_70
              #                    occupy a5 with 1_0
    li      a5, 1
    sw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     478  untrack temp_40_ptr_of_*vis_0_70 
              #                    occupy a2 with temp_40_ptr_of_*vis_0_70
              #                    release a2 with temp_40_ptr_of_*vis_0_70
              #                     209  vis_0_5 = chi vis_0_4:208 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: x_68_0, tracked: true } |     a1:Freed { symidx: tar_68_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     237  temp_47_cmp_72_0 = icmp i32 Eq x_68_0, tar_68_0 
              #                    occupy a0 with x_68_0
              #                    occupy a1 with tar_68_0
              #                    occupy a2 with temp_47_cmp_72_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     240  br i1 temp_47_cmp_72_0, label branch_true_73, label branch_false_73 
              #                    occupy a2 with temp_47_cmp_72_0
              #                    free a2
              #                    occupy a2 with temp_47_cmp_72_0
    bnez    a2, .branch_true_73
              #                    free a2
    j       .branch_false_73
              #                    regtab     a0:Freed { symidx: x_68_0, tracked: true } |     a1:Freed { symidx: tar_68_0, tracked: true } |     a2:Freed { symidx: temp_47_cmp_72_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     238  label branch_true_73: 
.branch_true_73:
              #                     484  untrack x_68_0 
              #                    occupy a0 with x_68_0
              #                    release a0 with x_68_0
              #                     483  untrack temp_42_ele_of_*head_0_70_0 
              #                     482  untrack temp_41_ptr_of_*head_0_70 
              #                     481  untrack i_70_1 
              #                     480  untrack tar_68_0 
              #                    occupy a1 with tar_68_0
              #                    release a1 with tar_68_0
              #                     479  untrack temp_47_cmp_72_0 
              #                    occupy a2 with temp_47_cmp_72_0
              #                    release a2 with temp_47_cmp_72_0
              #                     356  mu vis_0_5:235 
              #                     235  ret 1_0 
              #                    load from ra_same_0 in mem
    ld      ra,96(sp)
              #                    load from s0_same_0 in mem
    ld      s0,88(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,104
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_68_0, tracked: true } |     a1:Freed { symidx: tar_68_0, tracked: true } |     a2:Freed { symidx: temp_47_cmp_72_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     239  label branch_false_73: 
.branch_false_73:
              #                     485  untrack temp_47_cmp_72_0 
              #                    occupy a2 with temp_47_cmp_72_0
              #                    release a2 with temp_47_cmp_72_0
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: x_68_0, tracked: true } |     a1:Freed { symidx: tar_68_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     211  temp_41_ptr_of_*head_0_70 = GEP *head_0:Array:i32:[None] [Some(x_68_0)] 
              #                    occupy a2 with temp_41_ptr_of_*head_0_70
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with x_68_0
    mv      a3, a0
              #                    free a0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *head_0
              #                       load label head as ptr to reg
    la      a4, head
              #                    occupy reg a4 with *head_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     488  untrack x_68_0 
              #                    occupy a0 with x_68_0
              #                    release a0 with x_68_0
              #                     213  temp_42_ele_of_*head_0_70_0 = load temp_41_ptr_of_*head_0_70:ptr->i32 
              #                    occupy a2 with temp_41_ptr_of_*head_0_70
              #                    occupy a0 with temp_42_ele_of_*head_0_70_0
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                     486  untrack temp_41_ptr_of_*head_0_70 
              #                    occupy a2 with temp_41_ptr_of_*head_0_70
              #                    release a2 with temp_41_ptr_of_*head_0_70
              #                     214  mu head_0_0:213 
              #                     215  (nop) 
              #                     436  i_70_1 = i32 temp_42_ele_of_*head_0_70_0 
              #                    occupy a0 with temp_42_ele_of_*head_0_70_0
              #                    occupy a2 with i_70_1
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                     487  untrack temp_42_ele_of_*head_0_70_0 
              #                    occupy a0 with temp_42_ele_of_*head_0_70_0
              #                    release a0 with temp_42_ele_of_*head_0_70_0
              #                          jump label: while.head_77 
    j       .while.head_77
              #                    regtab     a1:Freed { symidx: tar_68_0, tracked: true } |     a2:Freed { symidx: i_70_1, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     243  label while.head_77: 
.while.head_77:
              #                     242  temp_48_cmp_76_0 = icmp i32 Ne i_70_1, -1_0 
              #                    occupy a2 with i_70_1
              #                    occupy a0 with -1_0
    li      a0, -1
              #                    occupy a3 with temp_48_cmp_76_0
    xor     a3,a2,a0
    snez    a3, a3
              #                    free a2
              #                    free a0
              #                    free a3
              #                     246  br i1 temp_48_cmp_76_0, label while.body_77, label while.exit_77 
              #                    occupy a3 with temp_48_cmp_76_0
              #                    free a3
              #                    occupy a3 with temp_48_cmp_76_0
    bnez    a3, .while.body_77
              #                    free a3
    j       .while.exit_77
              #                    regtab     a1:Freed { symidx: tar_68_0, tracked: true } |     a2:Freed { symidx: i_70_1, tracked: true } |     a3:Freed { symidx: temp_48_cmp_76_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     244  label while.body_77: 
.while.body_77:
              #                     220  temp_43_ptr_of_*to_0_78 = GEP *to_0:Array:i32:[None] [Some(i_70_1)] 
              #                    occupy a0 with temp_43_ptr_of_*to_0_78
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_70_1
    mv      a4, a2
              #                    free a2
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
              #                    occupy a5 with *to_0
              #                       load label to as ptr to reg
    la      a5, to
              #                    occupy reg a5 with *to_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     222  temp_44_ele_of_*to_0_78_0 = load temp_43_ptr_of_*to_0_78:ptr->i32 
              #                    occupy a0 with temp_43_ptr_of_*to_0_78
              #                    occupy a6 with temp_44_ele_of_*to_0_78_0
    lw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     223  mu to_0_0:222 
              #                     224  (nop) 
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: temp_43_ptr_of_*to_0_78, tracked: true } |     a1:Freed { symidx: tar_68_0, tracked: true } |     a2:Freed { symidx: i_70_1, tracked: true } |     a3:Freed { symidx: temp_48_cmp_76_0, tracked: true } |     a6:Freed { symidx: temp_44_ele_of_*to_0_78_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     250  temp_49_ptr_of_*vis_0_80 = GEP *vis_0:Array:i32:[None] [Some(temp_44_ele_of_*to_0_78_0)] 
              #                    occupy a4 with temp_49_ptr_of_*vis_0_80
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with temp_44_ele_of_*to_0_78_0
    mv      a5, a6
              #                    free a6
              #                    occupy a6 with temp_44_ele_of_*to_0_78_0
              #                    store to temp_44_ele_of_*to_0_78_0 in mem offset legal
    sw      a6,44(sp)
              #                    release a6 with temp_44_ele_of_*to_0_78_0
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *vis_0
              #                       load label vis as ptr to reg
    la      a6, vis
              #                    occupy reg a6 with *vis_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     252  temp_50_ele_of_*vis_0_80_0 = load temp_49_ptr_of_*vis_0_80:ptr->i32 
              #                    occupy a4 with temp_49_ptr_of_*vis_0_80
              #                    occupy a6 with temp_50_ele_of_*vis_0_80_0
    lw      a6,0(a4)
              #                    free a6
              #                    occupy a6 with temp_50_ele_of_*vis_0_80_0
              #                    store to temp_50_ele_of_*vis_0_80_0 in mem offset legal
    sw      a6,12(sp)
              #                    release a6 with temp_50_ele_of_*vis_0_80_0
              #                    free a4
              #                     253  mu vis_0_6:252 
              #                     255  temp_51_booltrans_80_0 = icmp i32 Ne temp_50_ele_of_*vis_0_80_0, 0_0 
              #                    occupy a6 with temp_50_ele_of_*vis_0_80_0
              #                    load from temp_50_ele_of_*vis_0_80_0 in mem


    lw      a6,12(sp)
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s1 with temp_51_booltrans_80_0
    xor     s1,a6,a7
    snez    s1, s1
              #                    free a6
              #                    occupy a6 with temp_50_ele_of_*vis_0_80_0
              #                    store to temp_50_ele_of_*vis_0_80_0 in mem offset legal
    sw      a6,12(sp)
              #                    release a6 with temp_50_ele_of_*vis_0_80_0
              #                    free a7
              #                    free s1
              #                    occupy s1 with temp_51_booltrans_80_0
              #                    store to temp_51_booltrans_80_0 in mem offset legal
    sb      s1,11(sp)
              #                    release s1 with temp_51_booltrans_80_0
              #                     257  temp_52_logicnot_80_0 = xor i1 temp_51_booltrans_80_0, true 
              #                    occupy a6 with temp_51_booltrans_80_0
              #                    load from temp_51_booltrans_80_0 in mem


    lb      a6,11(sp)
              #                    occupy a7 with temp_52_logicnot_80_0
    seqz    a7, a6
              #                    free a6
              #                    occupy a6 with temp_51_booltrans_80_0
              #                    store to temp_51_booltrans_80_0 in mem offset legal
    sb      a6,11(sp)
              #                    release a6 with temp_51_booltrans_80_0
              #                    free a7
              #                    occupy a7 with temp_52_logicnot_80_0
              #                    store to temp_52_logicnot_80_0 in mem offset legal
    sb      a7,10(sp)
              #                    release a7 with temp_52_logicnot_80_0
              #                     267  br i1 temp_52_logicnot_80_0, label branch_short_circuit_p_true_403, label branch_short_circuit_c_false_403 
              #                    occupy a6 with temp_52_logicnot_80_0
              #                    load from temp_52_logicnot_80_0 in mem


    lb      a6,10(sp)
              #                    free a6
              #                    occupy a6 with temp_52_logicnot_80_0
              #                    store to temp_52_logicnot_80_0 in mem offset legal
    sb      a6,10(sp)
              #                    release a6 with temp_52_logicnot_80_0
              #                    occupy a5 with temp_52_logicnot_80_0
              #                    load from temp_52_logicnot_80_0 in mem


    lb      a5,10(sp)
    bnez    a5, .branch_short_circuit_p_true_403
              #                    free a5
              #                    occupy a5 with temp_52_logicnot_80_0
              #                    store to temp_52_logicnot_80_0 in mem offset legal
    sb      a5,10(sp)
              #                    release a5 with temp_52_logicnot_80_0
    j       .branch_short_circuit_c_false_403
              #                    regtab     a0:Freed { symidx: temp_43_ptr_of_*to_0_78, tracked: true } |     a1:Freed { symidx: tar_68_0, tracked: true } |     a2:Freed { symidx: i_70_1, tracked: true } |     a3:Freed { symidx: temp_48_cmp_76_0, tracked: true } |     a4:Freed { symidx: temp_49_ptr_of_*vis_0_80, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     264  label branch_short_circuit_p_true_403: 
.branch_short_circuit_p_true_403:
              #                     259  temp_53_ret_of_same_80_0 =  Call i32 same_0(temp_44_ele_of_*to_0_78_0, tar_68_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_43_ptr_of_*to_0_78
              #                    store to temp_43_ptr_of_*to_0_78 in mem offset legal
    sd      a0,48(sp)
              #                    release a0 with temp_43_ptr_of_*to_0_78
              #                    occupy a1 with tar_68_0
              #                    store to tar_68_0 in mem offset legal
    sw      a1,80(sp)
              #                    release a1 with tar_68_0
              #                    occupy a2 with i_70_1
              #                    store to i_70_1 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with i_70_1
              #                    occupy a3 with temp_48_cmp_76_0
              #                    store to temp_48_cmp_76_0 in mem offset legal
    sb      a3,26(sp)
              #                    release a3 with temp_48_cmp_76_0
              #                    occupy a4 with temp_49_ptr_of_*vis_0_80
              #                    store to temp_49_ptr_of_*vis_0_80 in mem offset legal
    sd      a4,16(sp)
              #                    release a4 with temp_49_ptr_of_*vis_0_80
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_44_ele_of_*to_0_78_0_0
              #                    load from temp_44_ele_of_*to_0_78_0 in mem


    lw      a0,44(sp)
              #                    occupy a1 with _anonymous_of_tar_68_0_0
              #                    load from tar_68_0 in mem


    lw      a1,80(sp)
              #                    arg load ended


    call    same
              #                     357  mu vis_0_6:259 
              #                     358  mu to_0_0:259 
              #                     359  mu head_0_0:259 
              #                     360  mu next_0_0:259 
              #                     361  vis_0_8 = chi vis_0_6:259 
              #                     261  temp_54_i32_to_bool_80_0 = icmp i32 Ne temp_53_ret_of_same_80_0, 0_0 
              #                    occupy a0 with temp_53_ret_of_same_80_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_54_i32_to_bool_80_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     266  br i1 temp_54_i32_to_bool_80_0, label branch_short_circuit_c_true_403, label branch_short_circuit_c_false_403 
              #                    occupy a2 with temp_54_i32_to_bool_80_0
              #                    free a2
              #                    occupy a2 with temp_54_i32_to_bool_80_0
    bnez    a2, .branch_short_circuit_c_true_403
              #                    free a2
              #                    occupy a2 with temp_54_i32_to_bool_80_0
              #                    store to temp_54_i32_to_bool_80_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_54_i32_to_bool_80_0
              #                    occupy a2 with i_70_1
              #                    load from i_70_1 in mem


    lw      a2,56(sp)
              #                    occupy a3 with temp_48_cmp_76_0
              #                    load from temp_48_cmp_76_0 in mem


    lb      a3,26(sp)
              #                    occupy a1 with tar_68_0
              #                    load from tar_68_0 in mem


    lw      a1,80(sp)
              #                    occupy a0 with temp_53_ret_of_same_80_0
              #                    store to temp_53_ret_of_same_80_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_53_ret_of_same_80_0
              #                    occupy a0 with temp_43_ptr_of_*to_0_78
              #                    load from temp_43_ptr_of_*to_0_78 in mem
    ld      a0,48(sp)
              #                    occupy a4 with temp_49_ptr_of_*vis_0_80
              #                    load from temp_49_ptr_of_*vis_0_80 in mem
    ld      a4,16(sp)
    j       .branch_short_circuit_c_false_403
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_same_80_0, tracked: true } |     a2:Freed { symidx: temp_54_i32_to_bool_80_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     262  label branch_short_circuit_c_true_403: 
.branch_short_circuit_c_true_403:
              #                     501  untrack temp_46_ele_of_*next_0_78_0 
              #                     500  untrack temp_44_ele_of_*to_0_78_0 
              #                     499  untrack temp_54_i32_to_bool_80_0 
              #                    occupy a2 with temp_54_i32_to_bool_80_0
              #                    release a2 with temp_54_i32_to_bool_80_0
              #                     498  untrack temp_53_ret_of_same_80_0 
              #                    occupy a0 with temp_53_ret_of_same_80_0
              #                    release a0 with temp_53_ret_of_same_80_0
              #                     497  untrack temp_48_cmp_76_0 
              #                     496  untrack temp_51_booltrans_80_0 
              #                     495  untrack temp_52_logicnot_80_0 
              #                     494  untrack temp_50_ele_of_*vis_0_80_0 
              #                     493  untrack temp_45_ptr_of_*next_0_78 
              #                     492  untrack temp_43_ptr_of_*to_0_78 
              #                     491  untrack temp_49_ptr_of_*vis_0_80 
              #                     362  mu vis_0_8:233 
              #                     233  ret 1_0 
              #                    load from ra_same_0 in mem
    ld      ra,96(sp)
              #                    load from s0_same_0 in mem
    ld      s0,88(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,104
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_43_ptr_of_*to_0_78, tracked: true } |     a1:Freed { symidx: tar_68_0, tracked: true } |     a2:Freed { symidx: i_70_1, tracked: true } |     a3:Freed { symidx: temp_48_cmp_76_0, tracked: true } |     a4:Freed { symidx: temp_49_ptr_of_*vis_0_80, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     263  label branch_short_circuit_c_false_403: 
.branch_short_circuit_c_false_403:
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: temp_43_ptr_of_*to_0_78, tracked: true } |     a1:Freed { symidx: tar_68_0, tracked: true } |     a2:Freed { symidx: i_70_1, tracked: true } |     a3:Freed { symidx: temp_48_cmp_76_0, tracked: true } |     a4:Freed { symidx: temp_49_ptr_of_*vis_0_80, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     227  temp_45_ptr_of_*next_0_78 = GEP *next_0:Array:i32:[None] [Some(i_70_1)] 
              #                    occupy a5 with temp_45_ptr_of_*next_0_78
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_70_1
    mv      a6, a2
              #                    free a2
              #                    occupy a2 with i_70_1
              #                    store to i_70_1 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with i_70_1
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a2 with *next_0
              #                       load label next as ptr to reg
    la      a2, next
              #                    occupy reg a2 with *next_0
    add     a5,a5,a2
              #                    free a2
              #                    free a5
              #                     229  temp_46_ele_of_*next_0_78_0 = load temp_45_ptr_of_*next_0_78:ptr->i32 
              #                    occupy a5 with temp_45_ptr_of_*next_0_78
              #                    occupy a2 with temp_46_ele_of_*next_0_78_0
    lw      a2,0(a5)
              #                    free a2
              #                    occupy a2 with temp_46_ele_of_*next_0_78_0
              #                    store to temp_46_ele_of_*next_0_78_0 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_46_ele_of_*next_0_78_0
              #                    free a5
              #                     230  mu next_0_0:229 
              #                     231  (nop) 
              #                     437  i_70_1 = i32 temp_46_ele_of_*next_0_78_0 
              #                    occupy a2 with temp_46_ele_of_*next_0_78_0
              #                    load from temp_46_ele_of_*next_0_78_0 in mem


    lw      a2,28(sp)
              #                    occupy a6 with i_70_1
    mv      a6, a2
              #                    free a2
              #                    occupy a2 with temp_46_ele_of_*next_0_78_0
              #                    store to temp_46_ele_of_*next_0_78_0 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_46_ele_of_*next_0_78_0
              #                    free a6
              #                    occupy a6 with i_70_1
              #                    store to i_70_1 in mem offset legal
    sw      a6,56(sp)
              #                    release a6 with i_70_1
              #                          jump label: while.head_77 
              #                    occupy a2 with i_70_1
              #                    load from i_70_1 in mem


    lw      a2,56(sp)
              #                    occupy a3 with temp_48_cmp_76_0
              #                    store to temp_48_cmp_76_0 in mem offset legal
    sb      a3,26(sp)
              #                    release a3 with temp_48_cmp_76_0
              #                    occupy a5 with temp_45_ptr_of_*next_0_78
              #                    store to temp_45_ptr_of_*next_0_78 in mem offset legal
    sd      a5,32(sp)
              #                    release a5 with temp_45_ptr_of_*next_0_78
              #                    occupy a0 with temp_43_ptr_of_*to_0_78
              #                    store to temp_43_ptr_of_*to_0_78 in mem offset legal
    sd      a0,48(sp)
              #                    release a0 with temp_43_ptr_of_*to_0_78
              #                    occupy a4 with temp_49_ptr_of_*vis_0_80
              #                    store to temp_49_ptr_of_*vis_0_80 in mem offset legal
    sd      a4,16(sp)
              #                    release a4 with temp_49_ptr_of_*vis_0_80
    j       .while.head_77
              #                    regtab     a1:Freed { symidx: tar_68_0, tracked: true } |     a2:Freed { symidx: i_70_1, tracked: true } |     a3:Freed { symidx: temp_48_cmp_76_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     245  label while.exit_77: 
.while.exit_77:
              #                     490  untrack tar_68_0 
              #                    occupy a1 with tar_68_0
              #                    release a1 with tar_68_0
              #                     489  untrack i_70_1 
              #                    occupy a2 with i_70_1
              #                    release a2 with i_70_1
              #                     363  mu vis_0_6:218 
              #                     218  ret 0_0 
              #                    load from ra_same_0 in mem
    ld      ra,96(sp)
              #                    load from s0_same_0 in mem
    ld      s0,88(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,104
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     40   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 64|s0_main:8 at 56|temp_55_ret_of_quick_read _s86 _i0:4 at 52|temp_56_ret_of_quick_read _s86 _i0:4 at 48|temp_57_ret_of_getch _s92 _i0:4 at 44|ch _s92 _i1:4 at 40|temp_58_ret_of_quick_read _s105 _i0:4 at 36|temp_59_ret_of_quick_read _s105 _i0:4 at 32|temp_61_arithop _s92 _i0:4 at 28|temp_62_ret_of_quick_read _s100 _i0:4 at 24|temp_63_ret_of_quick_read _s100 _i0:4 at 20|temp_64_ret_of_same _s100 _i0:4 at 16|temp_65_ret_of_getch _s96 _i0:4 at 12|temp_66_value_from_ptr _s90 _i0:4 at 8|temp_67_ _s2498 _i0:1 at 7|temp_68_cmp _s94 _i0:1 at 6|temp_69_cmp _s94 _i0:1 at 5|temp_70_cmp _s98 _i0:1 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_main_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     364  vis_0_9 = chi vis_0_0:40 
              #                     365  head_0_7 = chi head_0_0:40 
              #                     366  cnt_0_4 = chi cnt_0_0:40 
              #                     367  m_0_1 = chi m_0_0:40 
              #                     368  next_0_4 = chi next_0_0:40 
              #                     369  to_0_4 = chi to_0_0:40 
              #                     370  n_0_1 = chi n_0_0:40 
              #                     268  alloc i32 [temp_55_ret_of_quick_read_86] 
              #                     272  alloc i32 [temp_56_ret_of_quick_read_86] 
              #                     279  alloc i32 [temp_57_ret_of_getch_92] 
              #                     282  alloc i32 [ch_92] 
              #                     283  alloc i32 [temp_58_ret_of_quick_read_105] 
              #                     286  alloc i32 [x_105] 
              #                     287  alloc i32 [temp_59_ret_of_quick_read_105] 
              #                     290  alloc i32 [y_105] 
              #                     292  alloc i32 [temp_60_value_from_ptr_92] 
              #                     295  alloc i32 [temp_61_arithop_92] 
              #                     299  alloc i32 [temp_62_ret_of_quick_read_100] 
              #                     302  alloc i32 [x_100] 
              #                     303  alloc i32 [temp_63_ret_of_quick_read_100] 
              #                     306  alloc i32 [y_100] 
              #                     308  alloc i32 [temp_64_ret_of_same_100] 
              #                     312  alloc i32 [temp_65_ret_of_getch_96] 
              #                     315  alloc i32 [temp_66_value_from_ptr_90] 
              #                     318  alloc i1 [temp_67__2498] 
              #                     326  alloc i1 [temp_68_cmp_94] 
              #                     328  alloc i1 [temp_69_cmp_94] 
              #                     337  alloc i1 [temp_70_cmp_98] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     269  temp_55_ret_of_quick_read_86_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     270  store temp_55_ret_of_quick_read_86_0:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_55_ret_of_quick_read_86_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     503  untrack temp_55_ret_of_quick_read_86_0 
              #                    occupy a0 with temp_55_ret_of_quick_read_86_0
              #                    release a0 with temp_55_ret_of_quick_read_86_0
              #                     271  n_0_2 = chi n_0_1:270 
              #                     273  temp_56_ret_of_quick_read_86_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     274  store temp_56_ret_of_quick_read_86_0:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_56_ret_of_quick_read_86_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     502  untrack temp_56_ret_of_quick_read_86_0 
              #                    occupy a0 with temp_56_ret_of_quick_read_86_0
              #                    release a0 with temp_56_ret_of_quick_read_86_0
              #                     275  m_0_2 = chi m_0_1:274 
              #                     276   Call void init_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    init
              #                     371  mu head_0_7:276 
              #                     372  head_0_8 = chi head_0_7:276 
              #                          jump label: while.head_91 
    j       .while.head_91
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     320  label while.head_91: 
.while.head_91:
              #                     316  temp_66_value_from_ptr_90_0 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_66_value_from_ptr_90_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     317  mu m_0_3:316 
              #                     319  temp_67__2498_0 = icmp i32 Ne temp_66_value_from_ptr_90_0, 0_0 
              #                    occupy a1 with temp_66_value_from_ptr_90_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_67__2498_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     323  br i1 temp_67__2498_0, label while.body_91, label while.exit_91 
              #                    occupy a3 with temp_67__2498_0
              #                    free a3
              #                    occupy a3 with temp_67__2498_0
    bnez    a3, .while.body_91
              #                    free a3
    j       .while.exit_91
              #                    regtab     a1:Freed { symidx: temp_66_value_from_ptr_90_0, tracked: true } |     a3:Freed { symidx: temp_67__2498_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     321  label while.body_91: 
.while.body_91:
              #                     280  temp_57_ret_of_getch_92_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_66_value_from_ptr_90_0
              #                    store to temp_66_value_from_ptr_90_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_66_value_from_ptr_90_0
              #                    occupy a3 with temp_67__2498_0
              #                    store to temp_67__2498_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_67__2498_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     281  (nop) 
              #                     438  ch_92_1 = i32 temp_57_ret_of_getch_92_0 
              #                    occupy a0 with temp_57_ret_of_getch_92_0
              #                    occupy a1 with ch_92_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_95 
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getch_92_0, tracked: true } |     a1:Freed { symidx: ch_92_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     335  label while.head_95: 
.while.head_95:
              #                     327  temp_68_cmp_94_0 = icmp i32 Ne ch_92_1, 81_0 
              #                    occupy a1 with ch_92_1
              #                    occupy a2 with 81_0
    li      a2, 81
              #                    occupy a3 with temp_68_cmp_94_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     336  br i1 temp_68_cmp_94_0, label branch_short_circuit_p_true_498, label branch_short_circuit_c_false_498 
              #                    occupy a3 with temp_68_cmp_94_0
              #                    free a3
              #                    occupy a3 with temp_68_cmp_94_0
    bnez    a3, .branch_short_circuit_p_true_498
              #                    free a3
    j       .branch_short_circuit_c_false_498
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getch_92_0, tracked: true } |     a1:Freed { symidx: ch_92_1, tracked: true } |     a3:Freed { symidx: temp_68_cmp_94_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     332  label branch_short_circuit_p_true_498: 
.branch_short_circuit_p_true_498:
              #                     329  temp_69_cmp_94_0 = icmp i32 Ne ch_92_1, 85_0 
              #                    occupy a1 with ch_92_1
              #                    occupy a2 with 85_0
    li      a2, 85
              #                    occupy a4 with temp_69_cmp_94_0
    xor     a4,a1,a2
    snez    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     334  br i1 temp_69_cmp_94_0, label branch_short_circuit_c_true_498, label branch_short_circuit_c_false_498 
              #                    occupy a4 with temp_69_cmp_94_0
              #                    free a4
              #                    occupy a4 with temp_69_cmp_94_0
    bnez    a4, .branch_short_circuit_c_true_498
              #                    free a4
              #                    occupy a4 with temp_69_cmp_94_0
              #                    store to temp_69_cmp_94_0 in mem offset legal
    sb      a4,5(sp)
              #                    release a4 with temp_69_cmp_94_0
    j       .branch_short_circuit_c_false_498
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getch_92_0, tracked: true } |     a1:Freed { symidx: ch_92_1, tracked: true } |     a3:Freed { symidx: temp_68_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_69_cmp_94_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     330  label branch_short_circuit_c_true_498: 
.branch_short_circuit_c_true_498:
              #                     313  temp_65_ret_of_getch_96_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_57_ret_of_getch_92_0
              #                    store to temp_57_ret_of_getch_92_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_57_ret_of_getch_92_0
              #                    occupy a1 with ch_92_1
              #                    store to ch_92_1 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with ch_92_1
              #                    occupy a3 with temp_68_cmp_94_0
              #                    store to temp_68_cmp_94_0 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_68_cmp_94_0
              #                    occupy a4 with temp_69_cmp_94_0
              #                    store to temp_69_cmp_94_0 in mem offset legal
    sb      a4,5(sp)
              #                    release a4 with temp_69_cmp_94_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     314  (nop) 
              #                     439  ch_92_1 = i32 temp_65_ret_of_getch_96_0 
              #                    occupy a0 with temp_65_ret_of_getch_96_0
              #                    occupy a1 with ch_92_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_95 
              #                    occupy a0 with temp_65_ret_of_getch_96_0
              #                    store to temp_65_ret_of_getch_96_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_65_ret_of_getch_96_0
              #                    occupy a0 with temp_57_ret_of_getch_92_0
              #                    load from temp_57_ret_of_getch_92_0 in mem


    lw      a0,44(sp)
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getch_92_0, tracked: true } |     a1:Freed { symidx: ch_92_1, tracked: true } |     a3:Freed { symidx: temp_68_cmp_94_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     331  label branch_short_circuit_c_false_498: 
.branch_short_circuit_c_false_498:
              #                     338  temp_70_cmp_98_0 = icmp i32 Eq ch_92_1, 81_0 
              #                    occupy a1 with ch_92_1
              #                    occupy a2 with 81_0
    li      a2, 81
              #                    occupy a4 with temp_70_cmp_98_0
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     341  br i1 temp_70_cmp_98_0, label branch_true_99, label branch_false_99 
              #                    occupy a4 with temp_70_cmp_98_0
              #                    free a4
              #                    occupy a4 with temp_70_cmp_98_0
    bnez    a4, .branch_true_99
              #                    free a4
    j       .branch_false_99
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getch_92_0, tracked: true } |     a1:Freed { symidx: ch_92_1, tracked: true } |     a3:Freed { symidx: temp_68_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_70_cmp_98_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     339  label branch_true_99: 
.branch_true_99:
              #                     509  untrack temp_70_cmp_98_0 
              #                    occupy a4 with temp_70_cmp_98_0
              #                    release a4 with temp_70_cmp_98_0
              #                     508  untrack ch_92_1 
              #                    occupy a1 with ch_92_1
              #                    release a1 with ch_92_1
              #                     507  untrack temp_67__2498_0 
              #                     506  untrack temp_57_ret_of_getch_92_0 
              #                    occupy a0 with temp_57_ret_of_getch_92_0
              #                    release a0 with temp_57_ret_of_getch_92_0
              #                     505  untrack temp_59_ret_of_quick_read_105_0 
              #                     504  untrack temp_58_ret_of_quick_read_105_0 
              #                     300  temp_62_ret_of_quick_read_100_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_68_cmp_94_0
              #                    store to temp_68_cmp_94_0 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_68_cmp_94_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     301  (nop) 
              #                     304  temp_63_ret_of_quick_read_100_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_62_ret_of_quick_read_100_0
              #                    store to temp_62_ret_of_quick_read_100_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_62_ret_of_quick_read_100_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     305  (nop) 
              #                     307   Call void clear_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_63_ret_of_quick_read_100_0
              #                    store to temp_63_ret_of_quick_read_100_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_63_ret_of_quick_read_100_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    clear
              #                     373  mu n_0_2:307 
              #                     374  mu vis_0_10:307 
              #                     375  vis_0_11 = chi vis_0_10:307 
              #                     309  temp_64_ret_of_same_100_0 =  Call i32 same_0(temp_62_ret_of_quick_read_100_0, temp_63_ret_of_quick_read_100_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_62_ret_of_quick_read_100_0_0
              #                    load from temp_62_ret_of_quick_read_100_0 in mem


    lw      a0,24(sp)
              #                    occupy a1 with _anonymous_of_temp_63_ret_of_quick_read_100_0_0
              #                    load from temp_63_ret_of_quick_read_100_0 in mem


    lw      a1,20(sp)
              #                    arg load ended


    call    same
              #                     512  untrack temp_62_ret_of_quick_read_100_0 
              #                     511  untrack temp_63_ret_of_quick_read_100_0 
              #                     376  mu vis_0_11:309 
              #                     377  mu to_0_5:309 
              #                     378  mu head_0_9:309 
              #                     379  mu next_0_5:309 
              #                     380  vis_0_12 = chi vis_0_11:309 
              #                     310   Call void putint_0(temp_64_ret_of_same_100_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_64_ret_of_same_100_0
              #                    store to temp_64_ret_of_same_100_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_64_ret_of_same_100_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_64_ret_of_same_100_0_0
              #                    load from temp_64_ret_of_same_100_0 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putint
              #                     510  untrack temp_64_ret_of_same_100_0 
              #                     311   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: gather_51 
    j       .gather_51
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                     342  label gather_51: 
.gather_51:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     293  (nop) 
              #                     294  mu m_0_3:293 
              #                     296  temp_61_arithop_92_0 = Sub i32 temp_66_value_from_ptr_90_0, 1_0 
              #                    occupy a0 with temp_66_value_from_ptr_90_0
              #                    load from temp_66_value_from_ptr_90_0 in mem


    lw      a0,8(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_61_arithop_92_0
              #                    regtab:    a0:Occupied { symidx: temp_66_value_from_ptr_90_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_61_arithop_92_0, tracked: true, occupy_count: 1 } |  released_gpr_count:12,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     297  store temp_61_arithop_92_0:i32 *m_0:ptr->i32 
              #                    occupy a3 with *m_0
              #                       load label m as ptr to reg
    la      a3, m
              #                    occupy reg a3 with *m_0
              #                    occupy a2 with temp_61_arithop_92_0
    sw      a2,0(a3)
              #                    free a2
              #                    free a3
              #                     298  m_0_4 = chi m_0_3:297 
              #                          jump label: while.head_91 
              #                    occupy a2 with temp_61_arithop_92_0
              #                    store to temp_61_arithop_92_0 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_61_arithop_92_0
              #                    occupy a0 with temp_66_value_from_ptr_90_0
              #                    store to temp_66_value_from_ptr_90_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_66_value_from_ptr_90_0
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getch_92_0, tracked: true } |     a1:Freed { symidx: ch_92_1, tracked: true } |     a3:Freed { symidx: temp_68_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_70_cmp_98_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     340  label branch_false_99: 
.branch_false_99:
              #                     284  temp_58_ret_of_quick_read_105_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_57_ret_of_getch_92_0
              #                    store to temp_57_ret_of_getch_92_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_57_ret_of_getch_92_0
              #                    occupy a1 with ch_92_1
              #                    store to ch_92_1 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with ch_92_1
              #                    occupy a3 with temp_68_cmp_94_0
              #                    store to temp_68_cmp_94_0 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_68_cmp_94_0
              #                    occupy a4 with temp_70_cmp_98_0
              #                    store to temp_70_cmp_98_0 in mem offset legal
    sb      a4,4(sp)
              #                    release a4 with temp_70_cmp_98_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     285  (nop) 
              #                     288  temp_59_ret_of_quick_read_105_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_58_ret_of_quick_read_105_0
              #                    store to temp_58_ret_of_quick_read_105_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_58_ret_of_quick_read_105_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     289  (nop) 
              #                     291   Call void add_edge_0(temp_58_ret_of_quick_read_105_0, temp_59_ret_of_quick_read_105_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_59_ret_of_quick_read_105_0
              #                    store to temp_59_ret_of_quick_read_105_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_59_ret_of_quick_read_105_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_58_ret_of_quick_read_105_0_0
              #                    load from temp_58_ret_of_quick_read_105_0 in mem


    lw      a0,36(sp)
              #                    occupy a1 with _anonymous_of_temp_59_ret_of_quick_read_105_0_0
              #                    load from temp_59_ret_of_quick_read_105_0 in mem


    lw      a1,32(sp)
              #                    arg load ended


    call    add_edge
              #                     381  mu head_0_9:291 
              #                     382  mu to_0_5:291 
              #                     383  mu cnt_0_5:291 
              #                     384  mu next_0_5:291 
              #                     385  head_0_11 = chi head_0_9:291 
              #                     386  to_0_7 = chi to_0_5:291 
              #                     387  next_0_7 = chi next_0_5:291 
              #                     388  cnt_0_7 = chi cnt_0_5:291 
              #                          jump label: gather_51 
    j       .gather_51
              #                    regtab     a1:Freed { symidx: temp_66_value_from_ptr_90_0, tracked: true } |     a3:Freed { symidx: temp_67__2498_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     322  label while.exit_91: 
.while.exit_91:
              #                     389  mu vis_0_10:278 
              #                     390  mu head_0_9:278 
              #                     391  mu cnt_0_5:278 
              #                     392  mu m_0_3:278 
              #                     393  mu next_0_5:278 
              #                     394  mu to_0_5:278 
              #                     395  mu n_0_2:278 
              #                     278  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,64(sp)
              #                    load from s0_main_0 in mem
    ld      s0,56(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,72
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl vis
              #                     33   global Array:i32:[Some(1005_0)] vis_0 
    .type vis,@object
vis:
    .zero 4020
    .align 4
    .globl cnt
              #                     31   global i32 cnt_0 
    .type cnt,@object
cnt:
    .word 0
    .align 4
    .globl head
              #                     28   global Array:i32:[Some(1005_0)] head_0 
    .type head,@object
head:
    .zero 4020
    .align 4
    .globl next
              #                     26   global Array:i32:[Some(5005_0)] next_0 
    .type next,@object
next:
    .zero 20020
    .align 4
    .globl to
              #                     24   global Array:i32:[Some(5005_0)] to_0 
    .type to,@object
to:
    .zero 20020
    .align 4
    .globl maxm
              #                     22   global i32 maxm_0 
    .type maxm,@object
maxm:
    .word 5005
    .align 4
    .globl maxn
              #                     19   global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 1005
    .align 4
    .globl m
              #                     16   global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
              #                     15   global i32 n_0 
    .type n,@object
n:
    .word 0
