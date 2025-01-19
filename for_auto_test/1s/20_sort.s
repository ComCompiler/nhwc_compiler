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
              #                     30   Define quick_read_0 "" -> quick_read_ret_0 
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
              #                     38   alloc i32 [temp_0_ret_of_getch_22] 
              #                     41   alloc i32 [ch_22] 
              #                     43   alloc i32 [x_22] 
              #                     45   alloc i32 [f_22] 
              #                     49   alloc i32 [temp_1__37] 
              #                     52   alloc i32 [temp_2_arithop_34] 
              #                     54   alloc i32 [temp_3_arithop_34] 
              #                     56   alloc i32 [temp_4_arithop_34] 
              #                     59   alloc i32 [temp_5_ret_of_getch_34] 
              #                     62   alloc i32 [temp_6_ret_of_getch_27] 
              #                     66   alloc i1 [temp_7_cmp_25] 
              #                     68   alloc i1 [temp_8_cmp_25] 
              #                     77   alloc i1 [temp_9_cmp_32] 
              #                     79   alloc i1 [temp_10_cmp_32] 
              #                     87   alloc i1 [temp_11__803] 
              #                     95   alloc i1 [temp_12_cmp_28] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     39   temp_0_ret_of_getch_22_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     40   (nop) 
              #                     42   (nop) 
              #                     44   (nop) 
              #                     539  ch_22_1 = i32 temp_0_ret_of_getch_22_0 
              #                    occupy a0 with temp_0_ret_of_getch_22_0
              #                    occupy a1 with ch_22_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     583  untrack temp_0_ret_of_getch_22_0 
              #                    occupy a0 with temp_0_ret_of_getch_22_0
              #                    release a0 with temp_0_ret_of_getch_22_0
              #                     540  f_22_1 = i32 0_0 
              #                    occupy a0 with f_22_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_26 
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     75   label while.head_26: 
.while.head_26:
              #                     67   temp_7_cmp_25_0 = icmp i32 Slt ch_22_1, 48_0 
              #                    occupy a1 with ch_22_1
              #                    occupy a2 with 48_0
    li      a2, 48
              #                    occupy a3 with temp_7_cmp_25_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     76   br i1 temp_7_cmp_25_0, label branch_short_circuit_c_true_206, label branch_short_circuit_p_false_206 
              #                    occupy a3 with temp_7_cmp_25_0
              #                    free a3
              #                    occupy a3 with temp_7_cmp_25_0
    bnez    a3, .branch_short_circuit_c_true_206
              #                    free a3
    j       .branch_short_circuit_p_false_206
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     70   label branch_short_circuit_c_true_206: 
.branch_short_circuit_c_true_206:
              #                     96   temp_12_cmp_28_0 = icmp i32 Eq ch_22_1, 45_0 
              #                    occupy a1 with ch_22_1
              #                    occupy a2 with 45_0
    li      a2, 45
              #                    occupy a4 with temp_12_cmp_28_0
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     99   br i1 temp_12_cmp_28_0, label branch_true_29, label UP_53_0 
              #                    occupy a4 with temp_12_cmp_28_0
              #                    free a4
              #                    occupy a4 with temp_12_cmp_28_0
    bnez    a4, .branch_true_29
              #                    free a4
    j       .UP_53_0
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_28_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     97   label branch_true_29: 
.branch_true_29:
              #                     594  untrack temp_3_arithop_34_0 
              #                     593  untrack temp_7_cmp_25_0 
              #                    occupy a3 with temp_7_cmp_25_0
              #                    release a3 with temp_7_cmp_25_0
              #                     592  untrack temp_5_ret_of_getch_34_0 
              #                     591  untrack ch_22_3 
              #                     590  untrack temp_8_cmp_25_0 
              #                     589  untrack temp_9_cmp_32_0 
              #                     588  untrack temp_2_arithop_34_0 
              #                     587  untrack temp_12_cmp_28_0 
              #                    occupy a4 with temp_12_cmp_28_0
              #                    release a4 with temp_12_cmp_28_0
              #                     586  untrack temp_4_arithop_34_0 
              #                     585  untrack x_22_1 
              #                     584  untrack temp_10_cmp_32_0 
              #                     65   (nop) 
              #                     541  f_22_3 = i32 1_0 
              #                    occupy a2 with f_22_3
    li      a2, 1
              #                    free a2
              #                          jump label: branch_false_29 
    j       .branch_false_29
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: f_22_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     98   label branch_false_29: 
.branch_false_29:
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: f_22_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     63   temp_6_ret_of_getch_27_0 =  Call i32 getch_0() 
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
              #                     64   (nop) 
              #                     542  f_22_1 = i32 f_22_3 
              #                    occupy a1 with f_22_3
              #                    load from f_22_3 in mem


    lw      a1,32(sp)
              #                    occupy a2 with f_22_1
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     543  ch_22_1 = i32 temp_6_ret_of_getch_27_0 
              #                    occupy a0 with temp_6_ret_of_getch_27_0
              #                    occupy a3 with ch_22_1
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          jump label: while.head_26 
              #                    occupy a3 with ch_22_1
              #                    store to ch_22_1 in mem offset legal
    sw      a3,48(sp)
              #                    release a3 with ch_22_1
              #                    occupy a0 with temp_6_ret_of_getch_27_0
              #                    store to temp_6_ret_of_getch_27_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_6_ret_of_getch_27_0
              #                    occupy a2 with f_22_1
              #                    store to f_22_1 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with f_22_1
              #                    occupy a0 with f_22_1
              #                    load from f_22_1 in mem


    lw      a0,36(sp)
              #                    occupy a1 with f_22_3
              #                    store to f_22_3 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with f_22_3
              #                    occupy a1 with ch_22_1
              #                    load from ch_22_1 in mem


    lw      a1,48(sp)
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_28_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     537  label UP_53_0: 
.UP_53_0:
              #                     544  f_22_3 = i32 f_22_1 
              #                    occupy a0 with f_22_1
              #                    occupy a2 with f_22_3
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          jump label: branch_false_29 
              #                    occupy a4 with temp_12_cmp_28_0
              #                    store to temp_12_cmp_28_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_12_cmp_28_0
              #                    occupy a3 with temp_7_cmp_25_0
              #                    store to temp_7_cmp_25_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_7_cmp_25_0
    j       .branch_false_29
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     72   label branch_short_circuit_p_false_206: 
.branch_short_circuit_p_false_206:
              #                     69   temp_8_cmp_25_0 = icmp i32 Sgt ch_22_1, 57_0 
              #                    occupy a1 with ch_22_1
              #                    occupy a2 with 57_0
    li      a2, 57
              #                    occupy a4 with temp_8_cmp_25_0
    slt     a4,a2,a1
              #                    free a1
              #                    free a2
              #                    free a4
              #                     74   br i1 temp_8_cmp_25_0, label branch_short_circuit_c_true_206, label UP_14_0 
              #                    occupy a4 with temp_8_cmp_25_0
              #                    free a4
              #                    occupy a4 with temp_8_cmp_25_0
              #                    store to temp_8_cmp_25_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_8_cmp_25_0
              #                    occupy a2 with temp_8_cmp_25_0
              #                    load from temp_8_cmp_25_0 in mem


    lb      a2,6(sp)
    bnez    a2, .branch_short_circuit_c_true_206
              #                    free a2
    j       .UP_14_0
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: temp_8_cmp_25_0, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     538  label UP_14_0: 
.UP_14_0:
              #                     599  untrack temp_6_ret_of_getch_27_0 
              #                     598  untrack temp_7_cmp_25_0 
              #                    occupy a3 with temp_7_cmp_25_0
              #                    release a3 with temp_7_cmp_25_0
              #                     597  untrack temp_8_cmp_25_0 
              #                    occupy a2 with temp_8_cmp_25_0
              #                    release a2 with temp_8_cmp_25_0
              #                     596  untrack temp_12_cmp_28_0 
              #                     595  untrack f_22_3 
              #                     545  ch_22_3 = i32 ch_22_1 
              #                    occupy a1 with ch_22_1
              #                    occupy a2 with ch_22_3
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     546  x_22_1 = i32 0_0 
              #                    occupy a3 with x_22_1
    li      a3, 0
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_206 
    j       .branch_short_circuit_c_false_206
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     71   label branch_short_circuit_c_false_206: 
.branch_short_circuit_c_false_206:
              #                     78   temp_9_cmp_32_0 = icmp i32 Sge ch_22_3, 48_0 
              #                    occupy a2 with ch_22_3
              #                    occupy a4 with 48_0
    li      a4, 48
              #                    occupy a5 with temp_9_cmp_32_0
    slt     a5,a2,a4
    xori    a5,a5,1
              #                    free a2
              #                    free a4
              #                    free a5
              #                     86   br i1 temp_9_cmp_32_0, label branch_short_circuit_p_true_222, label branch_short_circuit_c_false_222 
              #                    occupy a5 with temp_9_cmp_32_0
              #                    free a5
              #                    occupy a5 with temp_9_cmp_32_0
    bnez    a5, .branch_short_circuit_p_true_222
              #                    free a5
    j       .branch_short_circuit_c_false_222
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     83   label branch_short_circuit_p_true_222: 
.branch_short_circuit_p_true_222:
              #                     80   temp_10_cmp_32_0 = icmp i32 Sle ch_22_3, 57_0 
              #                    occupy a2 with ch_22_3
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a6 with temp_10_cmp_32_0
    slt     a6,a4,a2
    xori    a6,a6,1
              #                    free a2
              #                    free a4
              #                    free a6
              #                     85   br i1 temp_10_cmp_32_0, label branch_short_circuit_c_true_222, label branch_short_circuit_c_false_222 
              #                    occupy a6 with temp_10_cmp_32_0
              #                    free a6
              #                    occupy a6 with temp_10_cmp_32_0
    bnez    a6, .branch_short_circuit_c_true_222
              #                    free a6
              #                    occupy a6 with temp_10_cmp_32_0
              #                    store to temp_10_cmp_32_0 in mem offset legal
    sb      a6,4(sp)
              #                    release a6 with temp_10_cmp_32_0
    j       .branch_short_circuit_c_false_222
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |     a6:Freed { symidx: temp_10_cmp_32_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     81   label branch_short_circuit_c_true_222: 
.branch_short_circuit_c_true_222:
              #                     53   temp_2_arithop_34_0 = Mul i32 x_22_1, 10_0 
              #                    occupy a4 with temp_2_arithop_34_0
              #                    occupy a3 with x_22_1
              #                    occupy a7 with 10_0
    li      a7, 10
    mulw    a4,a3,a7
              #                    free a3
              #                    free a7
              #                    free a4
              #                     55   temp_3_arithop_34_0 = Add i32 temp_2_arithop_34_0, ch_22_3 
              #                    occupy a4 with temp_2_arithop_34_0
              #                    occupy a2 with ch_22_3
              #                    occupy s1 with temp_3_arithop_34_0
    ADDW    s1,a4,a2
              #                    free a4
              #                    free a2
              #                    free s1
              #                     57   temp_4_arithop_34_0 = Sub i32 temp_3_arithop_34_0, 48_0 
              #                    occupy s1 with temp_3_arithop_34_0
              #                    occupy s2 with 48_0
    li      s2, 48
              #                    occupy s3 with temp_4_arithop_34_0
              #                    regtab:    a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a4:Freed { symidx: temp_2_arithop_34_0, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |     a6:Freed { symidx: temp_10_cmp_32_0, tracked: true } |     a7:Freed { symidx: 10_0, tracked: false } |     s1:Occupied { symidx: temp_3_arithop_34_0, tracked: true, occupy_count: 1 } |     s2:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     s3:Occupied { symidx: temp_4_arithop_34_0, tracked: true, occupy_count: 1 } |  released_gpr_count:5,released_fpr_count:24


    subw    s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                     58   (nop) 
              #                     60   temp_5_ret_of_getch_34_0 =  Call i32 getch_0() 
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
              #                     61   (nop) 
              #                     547  x_22_1 = i32 temp_4_arithop_34_0 
              #                    occupy a1 with temp_4_arithop_34_0
              #                    load from temp_4_arithop_34_0 in mem


    lw      a1,16(sp)
              #                    occupy a2 with x_22_1
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     548  ch_22_3 = i32 temp_5_ret_of_getch_34_0 
              #                    occupy a0 with temp_5_ret_of_getch_34_0
              #                    occupy a3 with ch_22_3
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_206 
              #                    occupy a3 with ch_22_3
              #                    store to ch_22_3 in mem offset legal
    sw      a3,44(sp)
              #                    release a3 with ch_22_3
              #                    occupy a2 with x_22_1
              #                    store to x_22_1 in mem offset legal
    sw      a2,40(sp)
              #                    release a2 with x_22_1
              #                    occupy a3 with x_22_1
              #                    load from x_22_1 in mem


    lw      a3,40(sp)
              #                    occupy a0 with temp_5_ret_of_getch_34_0
              #                    store to temp_5_ret_of_getch_34_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_5_ret_of_getch_34_0
              #                    occupy a0 with f_22_1
              #                    load from f_22_1 in mem


    lw      a0,36(sp)
              #                    occupy a1 with temp_4_arithop_34_0
              #                    store to temp_4_arithop_34_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_4_arithop_34_0
              #                    occupy a1 with ch_22_1
              #                    load from ch_22_1 in mem


    lw      a1,48(sp)
              #                    occupy a2 with ch_22_3
              #                    load from ch_22_3 in mem


    lw      a2,44(sp)
    j       .branch_short_circuit_c_false_206
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     82   label branch_short_circuit_c_false_222: 
.branch_short_circuit_c_false_222:
              #                     88   temp_11__803_0 = icmp i32 Ne f_22_1, 0_0 
              #                    occupy a0 with f_22_1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a6 with temp_11__803_0
    xor     a6,a0,a4
    snez    a6, a6
              #                    free a0
              #                    free a4
              #                    free a6
              #                     600  untrack f_22_1 
              #                    occupy a0 with f_22_1
              #                    release a0 with f_22_1
              #                     91   br i1 temp_11__803_0, label branch_true_38, label branch_false_38 
              #                    occupy a6 with temp_11__803_0
              #                    free a6
              #                    occupy a6 with temp_11__803_0
    bnez    a6, .branch_true_38
              #                    free a6
    j       .branch_false_38
              #                    regtab     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |     a6:Freed { symidx: temp_11__803_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     89   label branch_true_38: 
.branch_true_38:
              #                     601  untrack temp_11__803_0 
              #                    occupy a6 with temp_11__803_0
              #                    release a6 with temp_11__803_0
              #                     50   temp_1__37_0 = Sub i32 0_0, x_22_1 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a3 with x_22_1
              #                    occupy a4 with temp_1__37_0
              #                    regtab:    a0:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Occupied { symidx: x_22_1, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: temp_1__37_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24


    subw    a4,a0,a3
              #                    free a0
              #                    free a3
              #                    free a4
              #                     51   ret temp_1__37_0 
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
              #                     90   label branch_false_38: 
.branch_false_38:
              #                     603  untrack temp_1__37_0 
              #                     602  untrack temp_11__803_0 
              #                    occupy a6 with temp_11__803_0
              #                    release a6 with temp_11__803_0
              #                     47   ret x_22_1 
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
              #                     32   Define sortA_0 "a_41," -> sortA_ret_0 
    .globl sortA
    .type sortA,@function
sortA:
              #                    mem layout:|ra_sortA:8 at 160|s0_sortA:8 at 152|a:8 at 144|a:8 at 136|a:8 at 128|a:8 at 120|a:8 at 112|a:8 at 104|a _s41 _i6:8 at 96|i _s43 _i1:4 at 92|j _s43 _i0:4 at 88|j _s43 _i1:4 at 84|j _s43 _i3:4 at 80|temp_13_arithop _s47 _i0:4 at 76|temp_15_arithop _s51 _i0:4 at 72|temp_16_ptr_of_a_41:8 at 64|temp_18_ptr_of_a_41:8 at 56|temp_19_ptr_of_a_41:8 at 48|temp_21_ptr_of_a_41:8 at 40|temp_22_value_from_ptr _s45 _i0:4 at 36|temp_23_cmp _s45 _i0:1 at 35|temp_25_cmp _s49 _i0:1 at 34|none:2 at 32|temp_26_ptr_of_a_41:8 at 24|temp_27_ele_of_a_41 _s52 _i0:4 at 20|none:4 at 16|temp_28_ptr_of_a_41:8 at 8|temp_29_ele_of_a_41 _s52 _i0:4 at 4|temp_30_cmp _s52 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-168
              #                    store to ra_sortA_0 in mem offset legal
    sd      ra,160(sp)
              #                    store to s0_sortA_0 in mem offset legal
    sd      s0,152(sp)
    addi    s0,sp,168
              #                     101  alloc i32 [i_43] 
              #                     102  alloc i32 [j_43] 
              #                     104  alloc i32 [temp_13_arithop_47] 
              #                     107  alloc i32 [temp_14_arithop_47] 
              #                     110  alloc i32 [temp_15_arithop_51] 
              #                     113  alloc ptr->i32 [temp_16_ptr_of_a_41_54] 
              #                     115  alloc i32 [temp_17_ele_of_a_41_54] 
              #                     119  alloc i32 [t_54] 
              #                     120  alloc ptr->i32 [temp_18_ptr_of_a_41_54] 
              #                     122  alloc ptr->i32 [temp_19_ptr_of_a_41_54] 
              #                     124  alloc i32 [temp_20_ele_of_a_41_54] 
              #                     129  alloc ptr->i32 [temp_21_ptr_of_a_41_54] 
              #                     133  alloc i32 [temp_22_value_from_ptr_45] 
              #                     136  alloc i1 [temp_23_cmp_45] 
              #                     143  alloc i32 [temp_24_value_from_ptr_49] 
              #                     146  alloc i1 [temp_25_cmp_49] 
              #                     152  alloc ptr->i32 [temp_26_ptr_of_a_41_52] 
              #                     154  alloc i32 [temp_27_ele_of_a_41_52] 
              #                     157  alloc ptr->i32 [temp_28_ptr_of_a_41_52] 
              #                     159  alloc i32 [temp_29_ele_of_a_41_52] 
              #                     162  alloc i1 [temp_30_cmp_52] 
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     31    
              #                     100  (nop) 
              #                     103   
              #                     134  temp_22_value_from_ptr_45_0 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_22_value_from_ptr_45_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     135  mu n_0_0:134 
              #                     144  (nop) 
              #                     145  mu n_0_0:144 
              #                     549  i_43_1 = i32 0_0 
              #                    occupy a3 with i_43_1
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_46 
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a2:Freed { symidx: temp_22_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_43_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     138  label while.head_46: 
.while.head_46:
              #                     137  temp_23_cmp_45_0 = icmp i32 Slt i_43_1, temp_22_value_from_ptr_45_0 
              #                    occupy a3 with i_43_1
              #                    occupy a2 with temp_22_value_from_ptr_45_0
              #                    occupy a1 with temp_23_cmp_45_0
    slt     a1,a3,a2
              #                    free a3
              #                    free a2
              #                    free a1
              #                     141  br i1 temp_23_cmp_45_0, label while.body_46, label while.exit_46 
              #                    occupy a1 with temp_23_cmp_45_0
              #                    free a1
              #                    occupy a1 with temp_23_cmp_45_0
    bnez    a1, .while.body_46
              #                    free a1
    j       .while.exit_46
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: temp_23_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_22_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_43_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     139  label while.body_46: 
.while.body_46:
              #                     105  temp_13_arithop_47_0 = Add i32 i_43_1, 1_0 
              #                    occupy a3 with i_43_1
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_13_arithop_47_0
    ADDW    a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     106  (nop) 
              #                     550  j_43_3 = i32 temp_13_arithop_47_0 
              #                    occupy a5 with temp_13_arithop_47_0
              #                    occupy a6 with j_43_3
    mv      a6, a5
              #                    free a5
              #                    free a6
              #                          jump label: while.head_50 
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: temp_23_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_22_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_43_1, tracked: true } |     a5:Freed { symidx: temp_13_arithop_47_0, tracked: true } |     a6:Freed { symidx: j_43_3, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     148  label while.head_50: 
.while.head_50:
              #                     147  temp_25_cmp_49_0 = icmp i32 Slt j_43_3, temp_22_value_from_ptr_45_0 
              #                    occupy a6 with j_43_3
              #                    occupy a2 with temp_22_value_from_ptr_45_0
              #                    occupy a4 with temp_25_cmp_49_0
    slt     a4,a6,a2
              #                    free a6
              #                    free a2
              #                    free a4
              #                     151  br i1 temp_25_cmp_49_0, label while.body_50, label while.exit_50 
              #                    occupy a4 with temp_25_cmp_49_0
              #                    free a4
              #                    occupy a4 with temp_25_cmp_49_0
    bnez    a4, .while.body_50
              #                    free a4
    j       .while.exit_50
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: temp_23_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_22_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_43_1, tracked: true } |     a4:Freed { symidx: temp_25_cmp_49_0, tracked: true } |     a5:Freed { symidx: temp_13_arithop_47_0, tracked: true } |     a6:Freed { symidx: j_43_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     149  label while.body_50: 
.while.body_50:
              #                     153  temp_26_ptr_of_a_41_52 = GEP a_41:Array:i32:[None] [Some(j_43_3)] 
              #                    occupy a7 with temp_26_ptr_of_a_41_52
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with j_43_3
    mv      s1, a6
              #                    free a6
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy a0 with a_41
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                     155  temp_27_ele_of_a_41_52_0 = load temp_26_ptr_of_a_41_52:ptr->i32 
              #                    occupy a7 with temp_26_ptr_of_a_41_52
              #                    occupy s2 with temp_27_ele_of_a_41_52_0
    lw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                     156  mu a_41:155 
              #                     158  temp_28_ptr_of_a_41_52 = GEP a_41:Array:i32:[None] [Some(i_43_1)] 
              #                    occupy s3 with temp_28_ptr_of_a_41_52
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_43_1
    mv      s4, a3
              #                    free a3
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a0 with a_41
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                     160  temp_29_ele_of_a_41_52_0 = load temp_28_ptr_of_a_41_52:ptr->i32 
              #                    occupy s3 with temp_28_ptr_of_a_41_52
              #                    occupy s5 with temp_29_ele_of_a_41_52_0
    lw      s5,0(s3)
              #                    free s5
              #                    occupy s5 with temp_29_ele_of_a_41_52_0
              #                    store to temp_29_ele_of_a_41_52_0 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_29_ele_of_a_41_52_0
              #                    free s3
              #                     161  mu a_41:160 
              #                     163  temp_30_cmp_52_0 = icmp i32 Sgt temp_29_ele_of_a_41_52_0, temp_27_ele_of_a_41_52_0 
              #                    occupy s5 with temp_29_ele_of_a_41_52_0
              #                    load from temp_29_ele_of_a_41_52_0 in mem


    lw      s5,4(sp)
              #                    occupy s2 with temp_27_ele_of_a_41_52_0
              #                    occupy s6 with temp_30_cmp_52_0
    slt     s6,s2,s5
              #                    free s5
              #                    occupy s5 with temp_29_ele_of_a_41_52_0
              #                    store to temp_29_ele_of_a_41_52_0 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_29_ele_of_a_41_52_0
              #                    free s2
              #                    occupy s2 with temp_27_ele_of_a_41_52_0
              #                    store to temp_27_ele_of_a_41_52_0 in mem offset legal
    sw      s2,20(sp)
              #                    release s2 with temp_27_ele_of_a_41_52_0
              #                    free s6
              #                     166  br i1 temp_30_cmp_52_0, label branch_true_53, label branch_false_53 
              #                    occupy s6 with temp_30_cmp_52_0
              #                    free s6
              #                    occupy s6 with temp_30_cmp_52_0
    bnez    s6, .branch_true_53
              #                    free s6
    j       .branch_false_53
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: temp_23_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_22_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_43_1, tracked: true } |     a4:Freed { symidx: temp_25_cmp_49_0, tracked: true } |     a5:Freed { symidx: temp_13_arithop_47_0, tracked: true } |     a6:Freed { symidx: j_43_3, tracked: true } |     a7:Freed { symidx: temp_26_ptr_of_a_41_52, tracked: true } |     s3:Freed { symidx: temp_28_ptr_of_a_41_52, tracked: true } |     s6:Freed { symidx: temp_30_cmp_52_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     164  label branch_true_53: 
.branch_true_53:
              #                     608  untrack temp_25_cmp_49_0 
              #                    occupy a4 with temp_25_cmp_49_0
              #                    release a4 with temp_25_cmp_49_0
              #                     607  untrack temp_30_cmp_52_0 
              #                    occupy s6 with temp_30_cmp_52_0
              #                    release s6 with temp_30_cmp_52_0
              #                     606  untrack temp_26_ptr_of_a_41_52 
              #                    occupy a7 with temp_26_ptr_of_a_41_52
              #                    release a7 with temp_26_ptr_of_a_41_52
              #                     114  (nop) 
              #                     116  (nop) 
              #                     117  mu a_41:116 
              #                     118  (nop) 
              #                     121  (nop) 
              #                     123  (nop) 
              #                     125  (nop) 
              #                     126  mu a_41:125 
              #                     127  store temp_27_ele_of_a_41_52_0:i32 temp_28_ptr_of_a_41_52:ptr->i32 
              #                    occupy s3 with temp_28_ptr_of_a_41_52
              #                    occupy a4 with temp_27_ele_of_a_41_52_0
              #                    load from temp_27_ele_of_a_41_52_0 in mem


    lw      a4,20(sp)
    sw      a4,0(s3)
              #                    free a4
              #                    free s3
              #                     612  untrack temp_28_ptr_of_a_41_52 
              #                    occupy s3 with temp_28_ptr_of_a_41_52
              #                    release s3 with temp_28_ptr_of_a_41_52
              #                     611  untrack temp_27_ele_of_a_41_52_0 
              #                    occupy a4 with temp_27_ele_of_a_41_52_0
              #                    release a4 with temp_27_ele_of_a_41_52_0
              #                     128  a_41 = chi a_41:127 
              #                     130  temp_21_ptr_of_a_41_54 = GEP a_41:ptr->i32 [Some(j_43_3)] 
              #                    occupy a4 with temp_21_ptr_of_a_41_54
    li      a4, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with j_43_3
    mv      a7, a6
              #                    free a6
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
              #                    occupy a0 with a_41
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                     131  store temp_29_ele_of_a_41_52_0:i32 temp_21_ptr_of_a_41_54:ptr->i32 
              #                    occupy a4 with temp_21_ptr_of_a_41_54
              #                    occupy s1 with temp_29_ele_of_a_41_52_0
              #                    load from temp_29_ele_of_a_41_52_0 in mem


    lw      s1,4(sp)
    sw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                     610  untrack temp_21_ptr_of_a_41_54 
              #                    occupy a4 with temp_21_ptr_of_a_41_54
              #                    release a4 with temp_21_ptr_of_a_41_54
              #                     609  untrack temp_29_ele_of_a_41_52_0 
              #                    occupy s1 with temp_29_ele_of_a_41_52_0
              #                    release s1 with temp_29_ele_of_a_41_52_0
              #                     132  a_41 = chi a_41:131 
              #                          jump label: branch_false_53 
              #                    occupy a7 with temp_26_ptr_of_a_41_52
              #                    load from temp_26_ptr_of_a_41_52 in mem
    ld      a7,24(sp)
              #                    occupy s3 with temp_28_ptr_of_a_41_52
              #                    load from temp_28_ptr_of_a_41_52 in mem
    ld      s3,8(sp)
              #                    occupy a4 with temp_25_cmp_49_0
              #                    load from temp_25_cmp_49_0 in mem


    lb      a4,34(sp)
              #                    occupy s6 with temp_30_cmp_52_0
              #                    load from temp_30_cmp_52_0 in mem


    lb      s6,3(sp)
    j       .branch_false_53
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: temp_23_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_22_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_43_1, tracked: true } |     a4:Freed { symidx: temp_25_cmp_49_0, tracked: true } |     a5:Freed { symidx: temp_13_arithop_47_0, tracked: true } |     a6:Freed { symidx: j_43_3, tracked: true } |     a7:Freed { symidx: temp_26_ptr_of_a_41_52, tracked: true } |     s3:Freed { symidx: temp_28_ptr_of_a_41_52, tracked: true } |     s6:Freed { symidx: temp_30_cmp_52_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     165  label branch_false_53: 
.branch_false_53:
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: temp_23_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_22_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_43_1, tracked: true } |     a4:Freed { symidx: temp_25_cmp_49_0, tracked: true } |     a5:Freed { symidx: temp_13_arithop_47_0, tracked: true } |     a6:Freed { symidx: j_43_3, tracked: true } |     a7:Freed { symidx: temp_26_ptr_of_a_41_52, tracked: true } |     s3:Freed { symidx: temp_28_ptr_of_a_41_52, tracked: true } |     s6:Freed { symidx: temp_30_cmp_52_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     111  temp_15_arithop_51_0 = Add i32 j_43_3, 1_0 
              #                    occupy a6 with j_43_3
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_15_arithop_51_0
    ADDW    s2,a6,s1
              #                    free a6
              #                    occupy a6 with j_43_3
              #                    store to j_43_3 in mem offset legal
    sw      a6,80(sp)
              #                    release a6 with j_43_3
              #                    free s1
              #                    free s2
              #                     112  (nop) 
              #                     551  j_43_3 = i32 temp_15_arithop_51_0 
              #                    occupy s2 with temp_15_arithop_51_0
              #                    occupy a6 with j_43_3
    mv      a6, s2
              #                    free s2
              #                    occupy s2 with temp_15_arithop_51_0
              #                    store to temp_15_arithop_51_0 in mem offset legal
    sw      s2,72(sp)
              #                    release s2 with temp_15_arithop_51_0
              #                    free a6
              #                          jump label: while.head_50 
              #                    occupy a7 with temp_26_ptr_of_a_41_52
              #                    store to temp_26_ptr_of_a_41_52 in mem offset legal
    sd      a7,24(sp)
              #                    release a7 with temp_26_ptr_of_a_41_52
              #                    occupy s3 with temp_28_ptr_of_a_41_52
              #                    store to temp_28_ptr_of_a_41_52 in mem offset legal
    sd      s3,8(sp)
              #                    release s3 with temp_28_ptr_of_a_41_52
              #                    occupy a4 with temp_25_cmp_49_0
              #                    store to temp_25_cmp_49_0 in mem offset legal
    sb      a4,34(sp)
              #                    release a4 with temp_25_cmp_49_0
              #                    occupy s6 with temp_30_cmp_52_0
              #                    store to temp_30_cmp_52_0 in mem offset legal
    sb      s6,3(sp)
              #                    release s6 with temp_30_cmp_52_0
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: temp_23_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_22_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_43_1, tracked: true } |     a4:Freed { symidx: temp_25_cmp_49_0, tracked: true } |     a5:Freed { symidx: temp_13_arithop_47_0, tracked: true } |     a6:Freed { symidx: j_43_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     150  label while.exit_50: 
.while.exit_50:
              #                     108  (nop) 
              #                     109  (nop) 
              #                     552  i_43_1 = i32 temp_13_arithop_47_0 
              #                    occupy a5 with temp_13_arithop_47_0
              #                    occupy a3 with i_43_1
    mv      a3, a5
              #                    free a5
              #                    free a3
              #                          jump label: while.head_46 
              #                    occupy a1 with temp_23_cmp_45_0
              #                    store to temp_23_cmp_45_0 in mem offset legal
    sb      a1,35(sp)
              #                    release a1 with temp_23_cmp_45_0
              #                    occupy a6 with j_43_3
              #                    store to j_43_3 in mem offset legal
    sw      a6,80(sp)
              #                    release a6 with j_43_3
              #                    occupy a5 with temp_13_arithop_47_0
              #                    store to temp_13_arithop_47_0 in mem offset legal
    sw      a5,76(sp)
              #                    release a5 with temp_13_arithop_47_0
              #                    occupy a4 with temp_25_cmp_49_0
              #                    store to temp_25_cmp_49_0 in mem offset legal
    sb      a4,34(sp)
              #                    release a4 with temp_25_cmp_49_0
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: temp_23_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_22_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_43_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     140  label while.exit_46: 
.while.exit_46:
              #                     605  untrack i_43_1 
              #                    occupy a3 with i_43_1
              #                    release a3 with i_43_1
              #                     604  untrack temp_22_value_from_ptr_45_0 
              #                    occupy a2 with temp_22_value_from_ptr_45_0
              #                    release a2 with temp_22_value_from_ptr_45_0
              #                     467  mu a_41:142 
              #                     613  untrack a_41 
              #                    occupy a0 with a_41
              #                    release a0 with a_41
              #                     142  ret 
              #                    load from ra_sortA_0 in mem
    ld      ra,160(sp)
              #                    load from s0_sortA_0 in mem
    ld      s0,152(sp)
    addi    sp,sp,168
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     34   Define sortB_0 "a_60," -> sortB_ret_0 
    .globl sortB
    .type sortB,@function
sortB:
              #                    mem layout:|ra_sortB:8 at 200|s0_sortB:8 at 192|a:8 at 184|a:8 at 176|a:8 at 168|a:8 at 160|a:8 at 152|i _s62 _i1:4 at 148|i _s62 _i4:4 at 144|mx _s62 _i1:4 at 140|mx _s62 _i3:4 at 136|now _s62 _i1:4 at 132|now _s62 _i2:4 at 128|temp_31_ptr_of_*cnt_0:8 at 120|temp_32_ele_of_*cnt_0 _s76 _i0:4 at 116|j _s76 _i1:4 at 112|temp_33_arithop _s76 _i0:4 at 108|none:4 at 104|temp_34_ptr_of_a_60:8 at 96|temp_35_arithop _s80 _i0:4 at 92|temp_36_arithop _s80 _i0:4 at 88|temp_37_ptr_of_a_60:8 at 80|temp_38_ele_of_a_60 _s66 _i0:4 at 76|none:4 at 72|temp_39_ptr_of_*cnt_0:8 at 64|temp_40_ptr_of_a_60:8 at 56|temp_42_ptr_of_*cnt_0:8 at 48|temp_43_ele_of_*cnt_0 _s66 _i0:4 at 44|temp_44_arithop _s66 _i0:4 at 40|temp_45_arithop _s66 _i0:4 at 36|none:4 at 32|temp_46_ptr_of_a_60:8 at 24|temp_48_value_from_ptr _s64 _i0:4 at 20|temp_49_cmp _s64 _i0:1 at 19|temp_50_cmp _s74 _i0:1 at 18|temp_51_ _s2005 _i0:1 at 17|none:1 at 16|temp_52_ptr_of_a_60:8 at 8|temp_54_cmp _s68 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-208
              #                    store to ra_sortB_0 in mem offset legal
    sd      ra,200(sp)
              #                    store to s0_sortB_0 in mem offset legal
    sd      s0,192(sp)
    addi    s0,sp,208
              #                     468  cnt_0_1 = chi cnt_0_0:34 
              #                     168  alloc i32 [i_62] 
              #                     170  alloc i32 [mx_62] 
              #                     173  alloc i32 [now_62] 
              #                     174  alloc ptr->i32 [temp_31_ptr_of_*cnt_0_76] 
              #                     176  alloc i32 [temp_32_ele_of_*cnt_0_76] 
              #                     180  alloc i32 [j_76] 
              #                     181  alloc i32 [temp_33_arithop_76] 
              #                     184  alloc ptr->i32 [temp_34_ptr_of_a_60_80] 
              #                     188  alloc i32 [temp_35_arithop_80] 
              #                     191  alloc i32 [temp_36_arithop_80] 
              #                     194  alloc ptr->i32 [temp_37_ptr_of_a_60_66] 
              #                     196  alloc i32 [temp_38_ele_of_a_60_66] 
              #                     199  alloc ptr->i32 [temp_39_ptr_of_*cnt_0_66] 
              #                     201  alloc ptr->i32 [temp_40_ptr_of_a_60_66] 
              #                     203  alloc i32 [temp_41_ele_of_a_60_66] 
              #                     206  alloc ptr->i32 [temp_42_ptr_of_*cnt_0_66] 
              #                     208  alloc i32 [temp_43_ele_of_*cnt_0_66] 
              #                     211  alloc i32 [temp_44_arithop_66] 
              #                     215  alloc i32 [temp_45_arithop_66] 
              #                     218  alloc ptr->i32 [temp_46_ptr_of_a_60_68] 
              #                     220  alloc i32 [temp_47_ele_of_a_60_68] 
              #                     224  alloc i32 [temp_48_value_from_ptr_64] 
              #                     227  alloc i1 [temp_49_cmp_64] 
              #                     233  alloc i1 [temp_50_cmp_74] 
              #                     240  alloc i1 [temp_51__2005] 
              #                     246  alloc ptr->i32 [temp_52_ptr_of_a_60_68] 
              #                     248  alloc i32 [temp_53_ele_of_a_60_68] 
              #                     251  alloc i1 [temp_54_cmp_68] 
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     33    
              #                     167  (nop) 
              #                     169  (nop) 
              #                     225  temp_48_value_from_ptr_64_0 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_48_value_from_ptr_64_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     226  mu n_0_0:225 
              #                     554  i_62_1 = i32 0_0 
              #                    occupy a3 with i_62_1
    li      a3, 0
              #                    free a3
              #                     555  mx_62_1 = i32 -100_0 
              #                    occupy a4 with mx_62_1
    li      a4, -100
              #                    free a4
              #                          jump label: while.head_65 
    j       .while.head_65
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a2:Freed { symidx: temp_48_value_from_ptr_64_0, tracked: true } |     a3:Freed { symidx: i_62_1, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     229  label while.head_65: 
.while.head_65:
              #                     228  temp_49_cmp_64_0 = icmp i32 Slt i_62_1, temp_48_value_from_ptr_64_0 
              #                    occupy a3 with i_62_1
              #                    occupy a2 with temp_48_value_from_ptr_64_0
              #                    occupy a1 with temp_49_cmp_64_0
    slt     a1,a3,a2
              #                    free a3
              #                    free a2
              #                    free a1
              #                     232  br i1 temp_49_cmp_64_0, label while.body_65, label while.exit_65 
              #                    occupy a1 with temp_49_cmp_64_0
              #                    free a1
              #                    occupy a1 with temp_49_cmp_64_0
    bnez    a1, .while.body_65
              #                    free a1
    j       .while.exit_65
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: temp_49_cmp_64_0, tracked: true } |     a2:Freed { symidx: temp_48_value_from_ptr_64_0, tracked: true } |     a3:Freed { symidx: i_62_1, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     230  label while.body_65: 
.while.body_65:
              #                     195  temp_37_ptr_of_a_60_66 = GEP a_60:Array:i32:[None] [Some(i_62_1)] 
              #                    occupy a5 with temp_37_ptr_of_a_60_66
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_62_1
    mv      a6, a3
              #                    free a3
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a0 with a_60
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                     197  temp_38_ele_of_a_60_66_0 = load temp_37_ptr_of_a_60_66:ptr->i32 
              #                    occupy a5 with temp_37_ptr_of_a_60_66
              #                    occupy a7 with temp_38_ele_of_a_60_66_0
    lw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                     198  mu a_60:197 
              #                     200  temp_39_ptr_of_*cnt_0_66 = GEP *cnt_0:ptr->i32 [Some(temp_38_ele_of_a_60_66_0)] 
              #                    occupy s1 with temp_39_ptr_of_*cnt_0_66
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with temp_38_ele_of_a_60_66_0
    mv      s2, a7
              #                    free a7
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *cnt_0
              #                       load label cnt as ptr to reg
    la      s3, cnt
              #                    occupy reg s3 with *cnt_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                     202  (nop) 
              #                     204  (nop) 
              #                     205  mu a_60:204 
              #                     207  (nop) 
              #                     209  temp_43_ele_of_*cnt_0_66_0 = load temp_39_ptr_of_*cnt_0_66:ptr->i32 
              #                    occupy s1 with temp_39_ptr_of_*cnt_0_66
              #                    occupy s4 with temp_43_ele_of_*cnt_0_66_0
    lw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                     210  mu cnt_0_2:209 
              #                     212  temp_44_arithop_66_0 = Add i32 temp_43_ele_of_*cnt_0_66_0, 1_0 
              #                    occupy s4 with temp_43_ele_of_*cnt_0_66_0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with temp_44_arithop_66_0
    ADDW    s6,s4,s5
              #                    free s4
              #                    occupy s4 with temp_43_ele_of_*cnt_0_66_0
              #                    store to temp_43_ele_of_*cnt_0_66_0 in mem offset legal
    sw      s4,44(sp)
              #                    release s4 with temp_43_ele_of_*cnt_0_66_0
              #                    free s5
              #                    free s6
              #                     213  store temp_44_arithop_66_0:i32 temp_39_ptr_of_*cnt_0_66:ptr->i32 
              #                    occupy s1 with temp_39_ptr_of_*cnt_0_66
              #                    occupy s6 with temp_44_arithop_66_0
    sw      s6,0(s1)
              #                    free s6
              #                    free s1
              #                     214  cnt_0_3 = chi cnt_0_2:213 
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: temp_49_cmp_64_0, tracked: true } |     a2:Freed { symidx: temp_48_value_from_ptr_64_0, tracked: true } |     a3:Freed { symidx: i_62_1, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |     a5:Freed { symidx: temp_37_ptr_of_a_60_66, tracked: true } |     a7:Freed { symidx: temp_38_ele_of_a_60_66_0, tracked: true } |     s1:Freed { symidx: temp_39_ptr_of_*cnt_0_66, tracked: true } |     s6:Freed { symidx: temp_44_arithop_66_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     247  (nop) 
              #                     249  (nop) 
              #                     250  mu a_60:249 
              #                     252  temp_54_cmp_68_0 = icmp i32 Sgt temp_38_ele_of_a_60_66_0, mx_62_1 
              #                    occupy a7 with temp_38_ele_of_a_60_66_0
              #                    occupy a4 with mx_62_1
              #                    occupy a6 with temp_54_cmp_68_0
    slt     a6,a4,a7
              #                    free a7
              #                    occupy a7 with temp_38_ele_of_a_60_66_0
              #                    store to temp_38_ele_of_a_60_66_0 in mem offset legal
    sw      a7,76(sp)
              #                    release a7 with temp_38_ele_of_a_60_66_0
              #                    free a4
              #                    free a6
              #                     255  br i1 temp_54_cmp_68_0, label branch_true_69, label UP_2_0 
              #                    occupy a6 with temp_54_cmp_68_0
              #                    free a6
              #                    occupy a6 with temp_54_cmp_68_0
    bnez    a6, .branch_true_69
              #                    free a6
    j       .UP_2_0
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: temp_49_cmp_64_0, tracked: true } |     a2:Freed { symidx: temp_48_value_from_ptr_64_0, tracked: true } |     a3:Freed { symidx: i_62_1, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |     a5:Freed { symidx: temp_37_ptr_of_a_60_66, tracked: true } |     a6:Freed { symidx: temp_54_cmp_68_0, tracked: true } |     s1:Freed { symidx: temp_39_ptr_of_*cnt_0_66, tracked: true } |     s6:Freed { symidx: temp_44_arithop_66_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     253  label branch_true_69: 
.branch_true_69:
              #                     627  untrack j_76_1 
              #                     626  untrack temp_33_arithop_76_0 
              #                     625  untrack temp_49_cmp_64_0 
              #                    occupy a1 with temp_49_cmp_64_0
              #                    release a1 with temp_49_cmp_64_0
              #                     624  untrack temp_43_ele_of_*cnt_0_66_0 
              #                     623  untrack temp_44_arithop_66_0 
              #                    occupy s6 with temp_44_arithop_66_0
              #                    release s6 with temp_44_arithop_66_0
              #                     622  untrack temp_31_ptr_of_*cnt_0_76 
              #                     621  untrack temp_37_ptr_of_a_60_66 
              #                    occupy a5 with temp_37_ptr_of_a_60_66
              #                    release a5 with temp_37_ptr_of_a_60_66
              #                     620  untrack temp_54_cmp_68_0 
              #                    occupy a6 with temp_54_cmp_68_0
              #                    release a6 with temp_54_cmp_68_0
              #                     619  untrack temp_39_ptr_of_*cnt_0_66 
              #                    occupy s1 with temp_39_ptr_of_*cnt_0_66
              #                    release s1 with temp_39_ptr_of_*cnt_0_66
              #                     618  untrack temp_50_cmp_74_0 
              #                     617  untrack now_62_2 
              #                     616  untrack temp_32_ele_of_*cnt_0_76_0 
              #                     219  (nop) 
              #                     221  (nop) 
              #                     222  mu a_60:221 
              #                     223  (nop) 
              #                     556  mx_62_3 = i32 temp_38_ele_of_a_60_66_0 
              #                    occupy a1 with temp_38_ele_of_a_60_66_0
              #                    load from temp_38_ele_of_a_60_66_0 in mem


    lw      a1,76(sp)
              #                    occupy a5 with mx_62_3
    mv      a5, a1
              #                    free a1
              #                    free a5
              #                     628  untrack temp_38_ele_of_a_60_66_0 
              #                    occupy a1 with temp_38_ele_of_a_60_66_0
              #                    release a1 with temp_38_ele_of_a_60_66_0
              #                          jump label: branch_false_69 
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a2:Freed { symidx: temp_48_value_from_ptr_64_0, tracked: true } |     a3:Freed { symidx: i_62_1, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |     a5:Freed { symidx: mx_62_3, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     254  label branch_false_69: 
.branch_false_69:
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a2:Freed { symidx: temp_48_value_from_ptr_64_0, tracked: true } |     a3:Freed { symidx: i_62_1, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |     a5:Freed { symidx: mx_62_3, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     216  temp_45_arithop_66_0 = Add i32 i_62_1, 1_0 
              #                    occupy a3 with i_62_1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a6 with temp_45_arithop_66_0
    ADDW    a6,a3,a1
              #                    free a3
              #                    free a1
              #                    free a6
              #                     217  (nop) 
              #                     557  mx_62_1 = i32 mx_62_3 
              #                    occupy a5 with mx_62_3
              #                    occupy a4 with mx_62_1
    mv      a4, a5
              #                    free a5
              #                    free a4
              #                     558  i_62_1 = i32 temp_45_arithop_66_0 
              #                    occupy a6 with temp_45_arithop_66_0
              #                    occupy a3 with i_62_1
    mv      a3, a6
              #                    free a6
              #                    free a3
              #                          jump label: while.head_65 
              #                    occupy a5 with mx_62_3
              #                    store to mx_62_3 in mem offset legal
    sw      a5,136(sp)
              #                    release a5 with mx_62_3
              #                    occupy a6 with temp_45_arithop_66_0
              #                    store to temp_45_arithop_66_0 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with temp_45_arithop_66_0
    j       .while.head_65
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: temp_49_cmp_64_0, tracked: true } |     a2:Freed { symidx: temp_48_value_from_ptr_64_0, tracked: true } |     a3:Freed { symidx: i_62_1, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |     a5:Freed { symidx: temp_37_ptr_of_a_60_66, tracked: true } |     a6:Freed { symidx: temp_54_cmp_68_0, tracked: true } |     s1:Freed { symidx: temp_39_ptr_of_*cnt_0_66, tracked: true } |     s6:Freed { symidx: temp_44_arithop_66_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     553  label UP_2_0: 
.UP_2_0:
              #                     559  mx_62_3 = i32 mx_62_1 
              #                    occupy a4 with mx_62_1
              #                    occupy a7 with mx_62_3
    mv      a7, a4
              #                    free a4
              #                    occupy a4 with mx_62_1
              #                    store to mx_62_1 in mem offset legal
    sw      a4,140(sp)
              #                    release a4 with mx_62_1
              #                    free a7
              #                          jump label: branch_false_69 
              #                    occupy a5 with temp_37_ptr_of_a_60_66
              #                    store to temp_37_ptr_of_a_60_66 in mem offset legal
    sd      a5,80(sp)
              #                    release a5 with temp_37_ptr_of_a_60_66
              #                    occupy a7 with mx_62_3
              #                    store to mx_62_3 in mem offset legal
    sw      a7,136(sp)
              #                    release a7 with mx_62_3
              #                    occupy a5 with mx_62_3
              #                    load from mx_62_3 in mem


    lw      a5,136(sp)
              #                    occupy a6 with temp_54_cmp_68_0
              #                    store to temp_54_cmp_68_0 in mem offset legal
    sb      a6,7(sp)
              #                    release a6 with temp_54_cmp_68_0
              #                    occupy a1 with temp_49_cmp_64_0
              #                    store to temp_49_cmp_64_0 in mem offset legal
    sb      a1,19(sp)
              #                    release a1 with temp_49_cmp_64_0
              #                    occupy a4 with mx_62_1
              #                    load from mx_62_1 in mem


    lw      a4,140(sp)
              #                    occupy s6 with temp_44_arithop_66_0
              #                    store to temp_44_arithop_66_0 in mem offset legal
    sw      s6,40(sp)
              #                    release s6 with temp_44_arithop_66_0
              #                    occupy s1 with temp_39_ptr_of_*cnt_0_66
              #                    store to temp_39_ptr_of_*cnt_0_66 in mem offset legal
    sd      s1,64(sp)
              #                    release s1 with temp_39_ptr_of_*cnt_0_66
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: temp_49_cmp_64_0, tracked: true } |     a2:Freed { symidx: temp_48_value_from_ptr_64_0, tracked: true } |     a3:Freed { symidx: i_62_1, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     231  label while.exit_65: 
.while.exit_65:
              #                     615  untrack i_62_1 
              #                    occupy a3 with i_62_1
              #                    release a3 with i_62_1
              #                     614  untrack temp_48_value_from_ptr_64_0 
              #                    occupy a2 with temp_48_value_from_ptr_64_0
              #                    release a2 with temp_48_value_from_ptr_64_0
              #                     171  (nop) 
              #                     172  (nop) 
              #                     560  now_62_1 = i32 0_0 
              #                    occupy a2 with now_62_1
    li      a2, 0
              #                    free a2
              #                     561  i_62_4 = i32 0_0 
              #                    occupy a3 with i_62_4
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_75 
    j       .while.head_75
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: temp_49_cmp_64_0, tracked: true } |     a2:Freed { symidx: now_62_1, tracked: true } |     a3:Freed { symidx: i_62_4, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     235  label while.head_75: 
.while.head_75:
              #                     234  temp_50_cmp_74_0 = icmp i32 Sle i_62_4, mx_62_1 
              #                    occupy a3 with i_62_4
              #                    occupy a4 with mx_62_1
              #                    occupy a5 with temp_50_cmp_74_0
    slt     a5,a4,a3
    xori    a5,a5,1
              #                    free a3
              #                    free a4
              #                    free a5
              #                     238  br i1 temp_50_cmp_74_0, label while.body_75, label while.exit_75 
              #                    occupy a5 with temp_50_cmp_74_0
              #                    free a5
              #                    occupy a5 with temp_50_cmp_74_0
    bnez    a5, .while.body_75
              #                    free a5
    j       .while.exit_75
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: temp_49_cmp_64_0, tracked: true } |     a2:Freed { symidx: now_62_1, tracked: true } |     a3:Freed { symidx: i_62_4, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |     a5:Freed { symidx: temp_50_cmp_74_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     236  label while.body_75: 
.while.body_75:
              #                     175  temp_31_ptr_of_*cnt_0_76 = GEP *cnt_0:Array:i32:[None] [Some(i_62_4)] 
              #                    occupy a6 with temp_31_ptr_of_*cnt_0_76
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_62_4
    mv      a7, a3
              #                    free a3
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy s1 with *cnt_0
              #                       load label cnt as ptr to reg
    la      s1, cnt
              #                    occupy reg s1 with *cnt_0
    add     a6,a6,s1
              #                    free s1
              #                    free a6
              #                     177  temp_32_ele_of_*cnt_0_76_0 = load temp_31_ptr_of_*cnt_0_76:ptr->i32 
              #                    occupy a6 with temp_31_ptr_of_*cnt_0_76
              #                    occupy s2 with temp_32_ele_of_*cnt_0_76_0
    lw      s2,0(a6)
              #                    free s2
              #                    free a6
              #                     178  mu cnt_0_2:177 
              #                     179  (nop) 
              #                     562  now_62_2 = i32 now_62_1 
              #                    occupy a2 with now_62_1
              #                    occupy s3 with now_62_2
    mv      s3, a2
              #                    free a2
              #                    free s3
              #                     563  j_76_1 = i32 temp_32_ele_of_*cnt_0_76_0 
              #                    occupy s2 with temp_32_ele_of_*cnt_0_76_0
              #                    occupy s4 with j_76_1
    mv      s4, s2
              #                    free s2
              #                    free s4
              #                          jump label: while.head_79 
    j       .while.head_79
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: temp_49_cmp_64_0, tracked: true } |     a2:Freed { symidx: now_62_1, tracked: true } |     a3:Freed { symidx: i_62_4, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |     a5:Freed { symidx: temp_50_cmp_74_0, tracked: true } |     a6:Freed { symidx: temp_31_ptr_of_*cnt_0_76, tracked: true } |     s2:Freed { symidx: temp_32_ele_of_*cnt_0_76_0, tracked: true } |     s3:Freed { symidx: now_62_2, tracked: true } |     s4:Freed { symidx: j_76_1, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     242  label while.head_79: 
.while.head_79:
              #                     241  temp_51__2005_0 = icmp i32 Ne j_76_1, 0_0 
              #                    occupy s4 with j_76_1
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s1 with temp_51__2005_0
    xor     s1,s4,a7
    snez    s1, s1
              #                    free s4
              #                    occupy s4 with j_76_1
              #                    store to j_76_1 in mem offset legal
    sw      s4,112(sp)
              #                    release s4 with j_76_1
              #                    free a7
              #                    free s1
              #                     245  br i1 temp_51__2005_0, label while.body_79, label while.exit_79 
              #                    occupy s1 with temp_51__2005_0
              #                    free s1
              #                    occupy s1 with temp_51__2005_0
    bnez    s1, .while.body_79
              #                    free s1
    j       .while.exit_79
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: temp_49_cmp_64_0, tracked: true } |     a2:Freed { symidx: now_62_1, tracked: true } |     a3:Freed { symidx: i_62_4, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |     a5:Freed { symidx: temp_50_cmp_74_0, tracked: true } |     a6:Freed { symidx: temp_31_ptr_of_*cnt_0_76, tracked: true } |     s1:Freed { symidx: temp_51__2005_0, tracked: true } |     s2:Freed { symidx: temp_32_ele_of_*cnt_0_76_0, tracked: true } |     s3:Freed { symidx: now_62_2, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     243  label while.body_79: 
.while.body_79:
              #                     185  temp_34_ptr_of_a_60_80 = GEP a_60:ptr->i32 [Some(now_62_2)] 
              #                    occupy a7 with temp_34_ptr_of_a_60_80
    li      a7, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with now_62_2
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with now_62_2
              #                    store to now_62_2 in mem offset legal
    sw      s3,128(sp)
              #                    release s3 with now_62_2
    add     a7,a7,s4
              #                    free s4
    slli a7,a7,2
              #                    occupy a0 with a_60
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                     186  store i_62_4:i32 temp_34_ptr_of_a_60_80:ptr->i32 
              #                    occupy a7 with temp_34_ptr_of_a_60_80
              #                    occupy a3 with i_62_4
    sw      a3,0(a7)
              #                    free a3
              #                    free a7
              #                     187  a_60 = chi a_60:186 
              #                     189  temp_35_arithop_80_0 = Add i32 now_62_2, 1_0 
              #                    occupy s3 with now_62_2
              #                    load from now_62_2 in mem


    lw      s3,128(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_35_arithop_80_0
    ADDW    s5,s3,s4
              #                    free s3
              #                    occupy s3 with now_62_2
              #                    store to now_62_2 in mem offset legal
    sw      s3,128(sp)
              #                    release s3 with now_62_2
              #                    free s4
              #                    free s5
              #                    occupy s5 with temp_35_arithop_80_0
              #                    store to temp_35_arithop_80_0 in mem offset legal
    sw      s5,92(sp)
              #                    release s5 with temp_35_arithop_80_0
              #                     190  (nop) 
              #                     192  temp_36_arithop_80_0 = Sub i32 j_76_1, 1_0 
              #                    occupy s3 with j_76_1
              #                    load from j_76_1 in mem


    lw      s3,112(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_36_arithop_80_0
              #                    regtab:    a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: temp_49_cmp_64_0, tracked: true } |     a2:Freed { symidx: now_62_1, tracked: true } |     a3:Freed { symidx: i_62_4, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |     a5:Freed { symidx: temp_50_cmp_74_0, tracked: true } |     a6:Freed { symidx: temp_31_ptr_of_*cnt_0_76, tracked: true } |     a7:Freed { symidx: temp_34_ptr_of_a_60_80, tracked: true } |     s1:Freed { symidx: temp_51__2005_0, tracked: true } |     s2:Freed { symidx: temp_32_ele_of_*cnt_0_76_0, tracked: true } |     s3:Occupied { symidx: j_76_1, tracked: true, occupy_count: 1 } |     s4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s5:Occupied { symidx: temp_36_arithop_80_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s5,s3,s4
              #                    free s3
              #                    occupy s3 with j_76_1
              #                    store to j_76_1 in mem offset legal
    sw      s3,112(sp)
              #                    release s3 with j_76_1
              #                    free s4
              #                    free s5
              #                    occupy s5 with temp_36_arithop_80_0
              #                    store to temp_36_arithop_80_0 in mem offset legal
    sw      s5,88(sp)
              #                    release s5 with temp_36_arithop_80_0
              #                     193  (nop) 
              #                     564  now_62_2 = i32 temp_35_arithop_80_0 
              #                    occupy s3 with temp_35_arithop_80_0
              #                    load from temp_35_arithop_80_0 in mem


    lw      s3,92(sp)
              #                    occupy s4 with now_62_2
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_35_arithop_80_0
              #                    store to temp_35_arithop_80_0 in mem offset legal
    sw      s3,92(sp)
              #                    release s3 with temp_35_arithop_80_0
              #                    free s4
              #                    occupy s4 with now_62_2
              #                    store to now_62_2 in mem offset legal
    sw      s4,128(sp)
              #                    release s4 with now_62_2
              #                     565  j_76_1 = i32 temp_36_arithop_80_0 
              #                    occupy s3 with temp_36_arithop_80_0
              #                    load from temp_36_arithop_80_0 in mem


    lw      s3,88(sp)
              #                    occupy s4 with j_76_1
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_36_arithop_80_0
              #                    store to temp_36_arithop_80_0 in mem offset legal
    sw      s3,88(sp)
              #                    release s3 with temp_36_arithop_80_0
              #                    free s4
              #                    occupy s4 with j_76_1
              #                    store to j_76_1 in mem offset legal
    sw      s4,112(sp)
              #                    release s4 with j_76_1
              #                          jump label: while.head_79 
              #                    occupy s3 with now_62_2
              #                    load from now_62_2 in mem


    lw      s3,128(sp)
              #                    occupy a7 with temp_34_ptr_of_a_60_80
              #                    store to temp_34_ptr_of_a_60_80 in mem offset legal
    sd      a7,96(sp)
              #                    release a7 with temp_34_ptr_of_a_60_80
              #                    occupy s4 with j_76_1
              #                    load from j_76_1 in mem


    lw      s4,112(sp)
              #                    occupy s1 with temp_51__2005_0
              #                    store to temp_51__2005_0 in mem offset legal
    sb      s1,17(sp)
              #                    release s1 with temp_51__2005_0
    j       .while.head_79
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: temp_49_cmp_64_0, tracked: true } |     a2:Freed { symidx: now_62_1, tracked: true } |     a3:Freed { symidx: i_62_4, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |     a5:Freed { symidx: temp_50_cmp_74_0, tracked: true } |     a6:Freed { symidx: temp_31_ptr_of_*cnt_0_76, tracked: true } |     s1:Freed { symidx: temp_51__2005_0, tracked: true } |     s2:Freed { symidx: temp_32_ele_of_*cnt_0_76_0, tracked: true } |     s3:Freed { symidx: now_62_2, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     244  label while.exit_79: 
.while.exit_79:
              #                     182  temp_33_arithop_76_0 = Add i32 i_62_4, 1_0 
              #                    occupy a3 with i_62_4
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s4 with temp_33_arithop_76_0
    ADDW    s4,a3,a7
              #                    free a3
              #                    occupy a3 with i_62_4
              #                    store to i_62_4 in mem offset legal
    sw      a3,144(sp)
              #                    release a3 with i_62_4
              #                    free a7
              #                    free s4
              #                     183  (nop) 
              #                     566  i_62_4 = i32 temp_33_arithop_76_0 
              #                    occupy s4 with temp_33_arithop_76_0
              #                    occupy a3 with i_62_4
    mv      a3, s4
              #                    free s4
              #                    occupy s4 with temp_33_arithop_76_0
              #                    store to temp_33_arithop_76_0 in mem offset legal
    sw      s4,108(sp)
              #                    release s4 with temp_33_arithop_76_0
              #                    free a3
              #                     567  now_62_1 = i32 now_62_2 
              #                    occupy s3 with now_62_2
              #                    occupy a2 with now_62_1
    mv      a2, s3
              #                    free s3
              #                    free a2
              #                          jump label: while.head_75 
              #                    occupy s2 with temp_32_ele_of_*cnt_0_76_0
              #                    store to temp_32_ele_of_*cnt_0_76_0 in mem offset legal
    sw      s2,116(sp)
              #                    release s2 with temp_32_ele_of_*cnt_0_76_0
              #                    occupy a5 with temp_50_cmp_74_0
              #                    store to temp_50_cmp_74_0 in mem offset legal
    sb      a5,18(sp)
              #                    release a5 with temp_50_cmp_74_0
              #                    occupy s3 with now_62_2
              #                    store to now_62_2 in mem offset legal
    sw      s3,128(sp)
              #                    release s3 with now_62_2
              #                    occupy a6 with temp_31_ptr_of_*cnt_0_76
              #                    store to temp_31_ptr_of_*cnt_0_76 in mem offset legal
    sd      a6,120(sp)
              #                    release a6 with temp_31_ptr_of_*cnt_0_76
              #                    occupy s1 with temp_51__2005_0
              #                    store to temp_51__2005_0 in mem offset legal
    sb      s1,17(sp)
              #                    release s1 with temp_51__2005_0
    j       .while.head_75
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: temp_49_cmp_64_0, tracked: true } |     a2:Freed { symidx: now_62_1, tracked: true } |     a3:Freed { symidx: i_62_4, tracked: true } |     a4:Freed { symidx: mx_62_1, tracked: true } |     a5:Freed { symidx: temp_50_cmp_74_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     237  label while.exit_75: 
.while.exit_75:
              #                     631  untrack now_62_1 
              #                    occupy a2 with now_62_1
              #                    release a2 with now_62_1
              #                     630  untrack mx_62_1 
              #                    occupy a4 with mx_62_1
              #                    release a4 with mx_62_1
              #                     629  untrack i_62_4 
              #                    occupy a3 with i_62_4
              #                    release a3 with i_62_4
              #                     469  mu cnt_0_2:239 
              #                     470  mu a_60:239 
              #                     632  untrack a_60 
              #                    occupy a0 with a_60
              #                    release a0 with a_60
              #                     239  ret 
              #                    load from ra_sortB_0 in mem
    ld      ra,200(sp)
              #                    load from s0_sortB_0 in mem
    ld      s0,192(sp)
    addi    sp,sp,208
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     36   Define sortC_0 "a_85," -> sortC_ret_0 
    .globl sortC
    .type sortC,@function
sortC:
              #                    mem layout:|ra_sortC:8 at 176|s0_sortC:8 at 168|a:8 at 160|a:8 at 152|a:8 at 144|a:8 at 136|a:8 at 128|i _s87 _i1:4 at 124|id _s91 _i0:4 at 120|id _s91 _i1:4 at 116|id _s91 _i2:4 at 112|id _s91 _i3:4 at 108|temp_55_arithop _s91 _i0:4 at 104|j _s91 _i1:4 at 100|none:4 at 96|temp_56_ptr_of_a_85:8 at 88|temp_57_ele_of_a_85 _s91 _i0:4 at 84|none:4 at 80|temp_58_ptr_of_a_85:8 at 72|temp_59_ptr_of_a_85:8 at 64|temp_60_ele_of_a_85 _s91 _i0:4 at 60|none:4 at 56|temp_61_ptr_of_a_85:8 at 48|temp_63_arithop _s95 _i0:4 at 44|temp_64_value_from_ptr _s89 _i0:4 at 40|temp_65_cmp _s89 _i0:1 at 39|temp_67_cmp _s93 _i0:1 at 38|none:6 at 32|temp_68_ptr_of_a_85:8 at 24|temp_69_ele_of_a_85 _s96 _i0:4 at 20|none:4 at 16|temp_70_ptr_of_a_85:8 at 8|temp_71_ele_of_a_85 _s96 _i0:4 at 4|temp_72_cmp _s96 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-184
              #                    store to ra_sortC_0 in mem offset legal
    sd      ra,176(sp)
              #                    store to s0_sortC_0 in mem offset legal
    sd      s0,168(sp)
    addi    s0,sp,184
              #                     257  alloc i32 [i_87] 
              #                     259  alloc i32 [id_91] 
              #                     260  alloc i32 [temp_55_arithop_91] 
              #                     263  alloc i32 [j_91] 
              #                     264  alloc ptr->i32 [temp_56_ptr_of_a_85_91] 
              #                     266  alloc i32 [temp_57_ele_of_a_85_91] 
              #                     270  alloc i32 [t_91] 
              #                     271  alloc ptr->i32 [temp_58_ptr_of_a_85_91] 
              #                     273  alloc ptr->i32 [temp_59_ptr_of_a_85_91] 
              #                     275  alloc i32 [temp_60_ele_of_a_85_91] 
              #                     280  alloc ptr->i32 [temp_61_ptr_of_a_85_91] 
              #                     284  alloc i32 [temp_62_arithop_91] 
              #                     287  alloc i32 [temp_63_arithop_95] 
              #                     291  alloc i32 [temp_64_value_from_ptr_89] 
              #                     294  alloc i1 [temp_65_cmp_89] 
              #                     301  alloc i32 [temp_66_value_from_ptr_93] 
              #                     304  alloc i1 [temp_67_cmp_93] 
              #                     310  alloc ptr->i32 [temp_68_ptr_of_a_85_96] 
              #                     312  alloc i32 [temp_69_ele_of_a_85_96] 
              #                     315  alloc ptr->i32 [temp_70_ptr_of_a_85_96] 
              #                     317  alloc i32 [temp_71_ele_of_a_85_96] 
              #                     320  alloc i1 [temp_72_cmp_96] 
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     35    
              #                     256  (nop) 
              #                     292  temp_64_value_from_ptr_89_0 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_64_value_from_ptr_89_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     293  mu n_0_0:292 
              #                     302  (nop) 
              #                     303  mu n_0_0:302 
              #                     569  i_87_1 = i32 0_0 
              #                    occupy a3 with i_87_1
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_90 
    j       .while.head_90
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a2:Freed { symidx: temp_64_value_from_ptr_89_0, tracked: true } |     a3:Freed { symidx: i_87_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     296  label while.head_90: 
.while.head_90:
              #                     295  temp_65_cmp_89_0 = icmp i32 Slt i_87_1, temp_64_value_from_ptr_89_0 
              #                    occupy a3 with i_87_1
              #                    occupy a2 with temp_64_value_from_ptr_89_0
              #                    occupy a1 with temp_65_cmp_89_0
    slt     a1,a3,a2
              #                    free a3
              #                    free a2
              #                    free a1
              #                     299  br i1 temp_65_cmp_89_0, label while.body_90, label while.exit_90 
              #                    occupy a1 with temp_65_cmp_89_0
              #                    free a1
              #                    occupy a1 with temp_65_cmp_89_0
    bnez    a1, .while.body_90
              #                    free a1
    j       .while.exit_90
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: temp_65_cmp_89_0, tracked: true } |     a2:Freed { symidx: temp_64_value_from_ptr_89_0, tracked: true } |     a3:Freed { symidx: i_87_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     297  label while.body_90: 
.while.body_90:
              #                     258  id_91_0 = i32 i_87_1 
              #                    occupy a3 with i_87_1
              #                    occupy a4 with id_91_0
    mv      a4, a3
              #                    free a3
              #                    free a4
              #                     261  temp_55_arithop_91_0 = Add i32 i_87_1, 1_0 
              #                    occupy a3 with i_87_1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_55_arithop_91_0
    ADDW    a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                     262  (nop) 
              #                     570  j_91_1 = i32 temp_55_arithop_91_0 
              #                    occupy a6 with temp_55_arithop_91_0
              #                    occupy a7 with j_91_1
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                     571  id_91_1 = i32 id_91_0 
              #                    occupy a4 with id_91_0
              #                    occupy s1 with id_91_1
    mv      s1, a4
              #                    free a4
              #                    free s1
              #                          jump label: while.head_94 
    j       .while.head_94
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: temp_65_cmp_89_0, tracked: true } |     a2:Freed { symidx: temp_64_value_from_ptr_89_0, tracked: true } |     a3:Freed { symidx: i_87_1, tracked: true } |     a4:Freed { symidx: id_91_0, tracked: true } |     a6:Freed { symidx: temp_55_arithop_91_0, tracked: true } |     a7:Freed { symidx: j_91_1, tracked: true } |     s1:Freed { symidx: id_91_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     306  label while.head_94: 
.while.head_94:
              #                     305  temp_67_cmp_93_0 = icmp i32 Slt j_91_1, temp_64_value_from_ptr_89_0 
              #                    occupy a7 with j_91_1
              #                    occupy a2 with temp_64_value_from_ptr_89_0
              #                    occupy a5 with temp_67_cmp_93_0
    slt     a5,a7,a2
              #                    free a7
              #                    free a2
              #                    free a5
              #                     309  br i1 temp_67_cmp_93_0, label while.body_94, label while.exit_94 
              #                    occupy a5 with temp_67_cmp_93_0
              #                    free a5
              #                    occupy a5 with temp_67_cmp_93_0
    bnez    a5, .while.body_94
              #                    free a5
    j       .while.exit_94
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: temp_65_cmp_89_0, tracked: true } |     a2:Freed { symidx: temp_64_value_from_ptr_89_0, tracked: true } |     a3:Freed { symidx: i_87_1, tracked: true } |     a4:Freed { symidx: id_91_0, tracked: true } |     a5:Freed { symidx: temp_67_cmp_93_0, tracked: true } |     a6:Freed { symidx: temp_55_arithop_91_0, tracked: true } |     a7:Freed { symidx: j_91_1, tracked: true } |     s1:Freed { symidx: id_91_1, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     307  label while.body_94: 
.while.body_94:
              #                     311  temp_68_ptr_of_a_85_96 = GEP a_85:Array:i32:[None] [Some(id_91_1)] 
              #                    occupy s2 with temp_68_ptr_of_a_85_96
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with id_91_1
    mv      s3, s1
              #                    free s1
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy a0 with a_85
    add     s2,s2,a0
              #                    free a0
              #                    free s2
              #                     313  temp_69_ele_of_a_85_96_0 = load temp_68_ptr_of_a_85_96:ptr->i32 
              #                    occupy s2 with temp_68_ptr_of_a_85_96
              #                    occupy s4 with temp_69_ele_of_a_85_96_0
    lw      s4,0(s2)
              #                    free s4
              #                    free s2
              #                     314  mu a_85:313 
              #                     316  temp_70_ptr_of_a_85_96 = GEP a_85:Array:i32:[None] [Some(j_91_1)] 
              #                    occupy s5 with temp_70_ptr_of_a_85_96
    li      s5, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with j_91_1
    mv      s6, a7
              #                    free a7
              #                    occupy a7 with j_91_1
              #                    store to j_91_1 in mem offset legal
    sw      a7,100(sp)
              #                    release a7 with j_91_1
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy a0 with a_85
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                     318  temp_71_ele_of_a_85_96_0 = load temp_70_ptr_of_a_85_96:ptr->i32 
              #                    occupy s5 with temp_70_ptr_of_a_85_96
              #                    occupy a7 with temp_71_ele_of_a_85_96_0
    lw      a7,0(s5)
              #                    free a7
              #                    occupy a7 with temp_71_ele_of_a_85_96_0
              #                    store to temp_71_ele_of_a_85_96_0 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_71_ele_of_a_85_96_0
              #                    free s5
              #                     319  mu a_85:318 
              #                     321  temp_72_cmp_96_0 = icmp i32 Slt temp_71_ele_of_a_85_96_0, temp_69_ele_of_a_85_96_0 
              #                    occupy a7 with temp_71_ele_of_a_85_96_0
              #                    load from temp_71_ele_of_a_85_96_0 in mem


    lw      a7,4(sp)
              #                    occupy s4 with temp_69_ele_of_a_85_96_0
              #                    occupy s6 with temp_72_cmp_96_0
    slt     s6,a7,s4
              #                    free a7
              #                    occupy a7 with temp_71_ele_of_a_85_96_0
              #                    store to temp_71_ele_of_a_85_96_0 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_71_ele_of_a_85_96_0
              #                    free s4
              #                    occupy s4 with temp_69_ele_of_a_85_96_0
              #                    store to temp_69_ele_of_a_85_96_0 in mem offset legal
    sw      s4,20(sp)
              #                    release s4 with temp_69_ele_of_a_85_96_0
              #                    free s6
              #                     324  br i1 temp_72_cmp_96_0, label branch_true_97, label UP_72_0 
              #                    occupy s6 with temp_72_cmp_96_0
              #                    free s6
              #                    occupy s6 with temp_72_cmp_96_0
    bnez    s6, .branch_true_97
              #                    free s6
    j       .UP_72_0
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: temp_65_cmp_89_0, tracked: true } |     a2:Freed { symidx: temp_64_value_from_ptr_89_0, tracked: true } |     a3:Freed { symidx: i_87_1, tracked: true } |     a4:Freed { symidx: id_91_0, tracked: true } |     a5:Freed { symidx: temp_67_cmp_93_0, tracked: true } |     a6:Freed { symidx: temp_55_arithop_91_0, tracked: true } |     s1:Freed { symidx: id_91_1, tracked: true } |     s2:Freed { symidx: temp_68_ptr_of_a_85_96, tracked: true } |     s5:Freed { symidx: temp_70_ptr_of_a_85_96, tracked: true } |     s6:Freed { symidx: temp_72_cmp_96_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     322  label branch_true_97: 
.branch_true_97:
              #                     640  untrack temp_67_cmp_93_0 
              #                    occupy a5 with temp_67_cmp_93_0
              #                    release a5 with temp_67_cmp_93_0
              #                     639  untrack temp_70_ptr_of_a_85_96 
              #                    occupy s5 with temp_70_ptr_of_a_85_96
              #                    release s5 with temp_70_ptr_of_a_85_96
              #                     638  untrack temp_69_ele_of_a_85_96_0 
              #                     637  untrack temp_72_cmp_96_0 
              #                    occupy s6 with temp_72_cmp_96_0
              #                    release s6 with temp_72_cmp_96_0
              #                     636  untrack temp_68_ptr_of_a_85_96 
              #                    occupy s2 with temp_68_ptr_of_a_85_96
              #                    release s2 with temp_68_ptr_of_a_85_96
              #                     635  untrack temp_71_ele_of_a_85_96_0 
              #                     290  id_91_2 = i32 j_91_1 
              #                    occupy a5 with j_91_1
              #                    load from j_91_1 in mem


    lw      a5,100(sp)
              #                    occupy a7 with id_91_2
    mv      a7, a5
              #                    free a5
              #                    free a7
              #                     572  id_91_3 = i32 id_91_2 
              #                    occupy a7 with id_91_2
              #                    occupy s2 with id_91_3
    mv      s2, a7
              #                    free a7
              #                    free s2
              #                     641  untrack id_91_2 
              #                    occupy a7 with id_91_2
              #                    release a7 with id_91_2
              #                          jump label: branch_false_97 
    j       .branch_false_97
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: temp_65_cmp_89_0, tracked: true } |     a2:Freed { symidx: temp_64_value_from_ptr_89_0, tracked: true } |     a3:Freed { symidx: i_87_1, tracked: true } |     a4:Freed { symidx: id_91_0, tracked: true } |     a5:Freed { symidx: j_91_1, tracked: true } |     a6:Freed { symidx: temp_55_arithop_91_0, tracked: true } |     s1:Freed { symidx: id_91_1, tracked: true } |     s2:Freed { symidx: id_91_3, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     323  label branch_false_97: 
.branch_false_97:
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: temp_65_cmp_89_0, tracked: true } |     a2:Freed { symidx: temp_64_value_from_ptr_89_0, tracked: true } |     a3:Freed { symidx: i_87_1, tracked: true } |     a4:Freed { symidx: id_91_0, tracked: true } |     a5:Freed { symidx: j_91_1, tracked: true } |     a6:Freed { symidx: temp_55_arithop_91_0, tracked: true } |     s1:Freed { symidx: id_91_1, tracked: true } |     s2:Freed { symidx: id_91_3, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     288  temp_63_arithop_95_0 = Add i32 j_91_1, 1_0 
              #                    occupy a5 with j_91_1
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_63_arithop_95_0
    ADDW    s3,a5,a7
              #                    free a5
              #                    free a7
              #                    free s3
              #                     289  (nop) 
              #                     573  id_91_1 = i32 id_91_3 
              #                    occupy s2 with id_91_3
              #                    occupy s1 with id_91_1
    mv      s1, s2
              #                    free s2
              #                    free s1
              #                     574  j_91_1 = i32 temp_63_arithop_95_0 
              #                    occupy s3 with temp_63_arithop_95_0
              #                    occupy a5 with j_91_1
    mv      a5, s3
              #                    free s3
              #                    free a5
              #                          jump label: while.head_94 
              #                    occupy a5 with j_91_1
              #                    store to j_91_1 in mem offset legal
    sw      a5,100(sp)
              #                    release a5 with j_91_1
              #                    occupy a7 with j_91_1
              #                    load from j_91_1 in mem


    lw      a7,100(sp)
              #                    occupy s3 with temp_63_arithop_95_0
              #                    store to temp_63_arithop_95_0 in mem offset legal
    sw      s3,44(sp)
              #                    release s3 with temp_63_arithop_95_0
              #                    occupy s2 with id_91_3
              #                    store to id_91_3 in mem offset legal
    sw      s2,108(sp)
              #                    release s2 with id_91_3
    j       .while.head_94
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: temp_65_cmp_89_0, tracked: true } |     a2:Freed { symidx: temp_64_value_from_ptr_89_0, tracked: true } |     a3:Freed { symidx: i_87_1, tracked: true } |     a4:Freed { symidx: id_91_0, tracked: true } |     a5:Freed { symidx: temp_67_cmp_93_0, tracked: true } |     a6:Freed { symidx: temp_55_arithop_91_0, tracked: true } |     s1:Freed { symidx: id_91_1, tracked: true } |     s2:Freed { symidx: temp_68_ptr_of_a_85_96, tracked: true } |     s5:Freed { symidx: temp_70_ptr_of_a_85_96, tracked: true } |     s6:Freed { symidx: temp_72_cmp_96_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     568  label UP_72_0: 
.UP_72_0:
              #                     575  id_91_3 = i32 id_91_1 
              #                    occupy s1 with id_91_1
              #                    occupy a7 with id_91_3
    mv      a7, s1
              #                    free s1
              #                    occupy s1 with id_91_1
              #                    store to id_91_1 in mem offset legal
    sw      s1,116(sp)
              #                    release s1 with id_91_1
              #                    free a7
              #                          jump label: branch_false_97 
              #                    occupy a5 with temp_67_cmp_93_0
              #                    store to temp_67_cmp_93_0 in mem offset legal
    sb      a5,38(sp)
              #                    release a5 with temp_67_cmp_93_0
              #                    occupy a5 with j_91_1
              #                    load from j_91_1 in mem


    lw      a5,100(sp)
              #                    occupy s6 with temp_72_cmp_96_0
              #                    store to temp_72_cmp_96_0 in mem offset legal
    sb      s6,3(sp)
              #                    release s6 with temp_72_cmp_96_0
              #                    occupy a7 with id_91_3
              #                    store to id_91_3 in mem offset legal
    sw      a7,108(sp)
              #                    release a7 with id_91_3
              #                    occupy s5 with temp_70_ptr_of_a_85_96
              #                    store to temp_70_ptr_of_a_85_96 in mem offset legal
    sd      s5,8(sp)
              #                    release s5 with temp_70_ptr_of_a_85_96
              #                    occupy s2 with temp_68_ptr_of_a_85_96
              #                    store to temp_68_ptr_of_a_85_96 in mem offset legal
    sd      s2,24(sp)
              #                    release s2 with temp_68_ptr_of_a_85_96
              #                    occupy s2 with id_91_3
              #                    load from id_91_3 in mem


    lw      s2,108(sp)
              #                    occupy s1 with id_91_1
              #                    load from id_91_1 in mem


    lw      s1,116(sp)
    j       .branch_false_97
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: temp_65_cmp_89_0, tracked: true } |     a2:Freed { symidx: temp_64_value_from_ptr_89_0, tracked: true } |     a3:Freed { symidx: i_87_1, tracked: true } |     a4:Freed { symidx: id_91_0, tracked: true } |     a5:Freed { symidx: temp_67_cmp_93_0, tracked: true } |     a6:Freed { symidx: temp_55_arithop_91_0, tracked: true } |     a7:Freed { symidx: j_91_1, tracked: true } |     s1:Freed { symidx: id_91_1, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     308  label while.exit_94: 
.while.exit_94:
              #                     265  temp_56_ptr_of_a_85_91 = GEP a_85:Array:i32:[None] [Some(i_87_1)] 
              #                    occupy s2 with temp_56_ptr_of_a_85_91
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_87_1
    mv      s3, a3
              #                    free a3
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy a0 with a_85
    add     s2,s2,a0
              #                    free a0
              #                    free s2
              #                     267  temp_57_ele_of_a_85_91_0 = load temp_56_ptr_of_a_85_91:ptr->i32 
              #                    occupy s2 with temp_56_ptr_of_a_85_91
              #                    occupy s4 with temp_57_ele_of_a_85_91_0
    lw      s4,0(s2)
              #                    free s4
              #                    free s2
              #                     268  mu a_85:267 
              #                     269  (nop) 
              #                     272  (nop) 
              #                     274  temp_59_ptr_of_a_85_91 = GEP a_85:Array:i32:[None] [Some(id_91_1)] 
              #                    occupy s5 with temp_59_ptr_of_a_85_91
    li      s5, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with id_91_1
    mv      s6, s1
              #                    free s1
              #                    occupy s1 with id_91_1
              #                    store to id_91_1 in mem offset legal
    sw      s1,116(sp)
              #                    release s1 with id_91_1
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy a0 with a_85
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                     276  temp_60_ele_of_a_85_91_0 = load temp_59_ptr_of_a_85_91:ptr->i32 
              #                    occupy s5 with temp_59_ptr_of_a_85_91
              #                    occupy s1 with temp_60_ele_of_a_85_91_0
    lw      s1,0(s5)
              #                    free s1
              #                    occupy s1 with temp_60_ele_of_a_85_91_0
              #                    store to temp_60_ele_of_a_85_91_0 in mem offset legal
    sw      s1,60(sp)
              #                    release s1 with temp_60_ele_of_a_85_91_0
              #                    free s5
              #                     277  mu a_85:276 
              #                     278  store temp_60_ele_of_a_85_91_0:i32 temp_56_ptr_of_a_85_91:ptr->i32 
              #                    occupy s2 with temp_56_ptr_of_a_85_91
              #                    occupy s1 with temp_60_ele_of_a_85_91_0
              #                    load from temp_60_ele_of_a_85_91_0 in mem


    lw      s1,60(sp)
    sw      s1,0(s2)
              #                    free s1
              #                    occupy s1 with temp_60_ele_of_a_85_91_0
              #                    store to temp_60_ele_of_a_85_91_0 in mem offset legal
    sw      s1,60(sp)
              #                    release s1 with temp_60_ele_of_a_85_91_0
              #                    free s2
              #                     279  a_85 = chi a_85:278 
              #                     281  temp_61_ptr_of_a_85_91 = GEP a_85:ptr->i32 [Some(id_91_1)] 
              #                    occupy s1 with temp_61_ptr_of_a_85_91
    li      s1, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with id_91_1
              #                    load from id_91_1 in mem


    lw      s7,116(sp)
    mv      s6, s7
              #                    free s7
              #                    occupy s7 with id_91_1
              #                    store to id_91_1 in mem offset legal
    sw      s7,116(sp)
              #                    release s7 with id_91_1
    add     s1,s1,s6
              #                    free s6
    slli s1,s1,2
              #                    occupy a0 with a_85
    add     s1,s1,a0
              #                    free a0
              #                    occupy a0 with a_85
              #                    store to a_85 in mem offset legal
    sd      a0,128(sp)
              #                    release a0 with a_85
              #                    free s1
              #                     282  store temp_57_ele_of_a_85_91_0:i32 temp_61_ptr_of_a_85_91:ptr->i32 
              #                    occupy s1 with temp_61_ptr_of_a_85_91
              #                    occupy s4 with temp_57_ele_of_a_85_91_0
    sw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                     283  a_85 = chi a_85:282 
              #                     285  (nop) 
              #                     286  (nop) 
              #                     576  i_87_1 = i32 temp_55_arithop_91_0 
              #                    occupy a6 with temp_55_arithop_91_0
              #                    occupy a3 with i_87_1
    mv      a3, a6
              #                    free a6
              #                    free a3
              #                          jump label: while.head_90 
              #                    occupy a5 with temp_67_cmp_93_0
              #                    store to temp_67_cmp_93_0 in mem offset legal
    sb      a5,38(sp)
              #                    release a5 with temp_67_cmp_93_0
              #                    occupy a7 with j_91_1
              #                    store to j_91_1 in mem offset legal
    sw      a7,100(sp)
              #                    release a7 with j_91_1
              #                    occupy a4 with id_91_0
              #                    store to id_91_0 in mem offset legal
    sw      a4,120(sp)
              #                    release a4 with id_91_0
              #                    occupy s5 with temp_59_ptr_of_a_85_91
              #                    store to temp_59_ptr_of_a_85_91 in mem offset legal
    sd      s5,64(sp)
              #                    release s5 with temp_59_ptr_of_a_85_91
              #                    occupy s2 with temp_56_ptr_of_a_85_91
              #                    store to temp_56_ptr_of_a_85_91 in mem offset legal
    sd      s2,88(sp)
              #                    release s2 with temp_56_ptr_of_a_85_91
              #                    occupy a0 with a_85
              #                    load from a_85 in mem
    ld      a0,128(sp)
              #                    occupy a6 with temp_55_arithop_91_0
              #                    store to temp_55_arithop_91_0 in mem offset legal
    sw      a6,104(sp)
              #                    release a6 with temp_55_arithop_91_0
              #                    occupy s4 with temp_57_ele_of_a_85_91_0
              #                    store to temp_57_ele_of_a_85_91_0 in mem offset legal
    sw      s4,84(sp)
              #                    release s4 with temp_57_ele_of_a_85_91_0
              #                    occupy a1 with temp_65_cmp_89_0
              #                    store to temp_65_cmp_89_0 in mem offset legal
    sb      a1,39(sp)
              #                    release a1 with temp_65_cmp_89_0
              #                    occupy s1 with temp_61_ptr_of_a_85_91
              #                    store to temp_61_ptr_of_a_85_91 in mem offset legal
    sd      s1,48(sp)
              #                    release s1 with temp_61_ptr_of_a_85_91
    j       .while.head_90
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: temp_65_cmp_89_0, tracked: true } |     a2:Freed { symidx: temp_64_value_from_ptr_89_0, tracked: true } |     a3:Freed { symidx: i_87_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     298  label while.exit_90: 
.while.exit_90:
              #                     634  untrack i_87_1 
              #                    occupy a3 with i_87_1
              #                    release a3 with i_87_1
              #                     633  untrack temp_64_value_from_ptr_89_0 
              #                    occupy a2 with temp_64_value_from_ptr_89_0
              #                    release a2 with temp_64_value_from_ptr_89_0
              #                     471  mu a_85:300 
              #                     642  untrack a_85 
              #                    occupy a0 with a_85
              #                    release a0 with a_85
              #                     300  ret 
              #                    load from ra_sortC_0 in mem
    ld      ra,176(sp)
              #                    load from s0_sortC_0 in mem
    ld      s0,168(sp)
    addi    sp,sp,184
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     37   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 248|s0_main:8 at 240|temp_73_ret_of_quick_read _s105 _i0:4 at 236|i _s105 _i1:4 at 232|i _s105 _i4:4 at 228|i _s105 _i7:4 at 224|temp_74_arithop _s128 _i0:4 at 220|none:4 at 216|temp_75_ptr_of_*b_0:8 at 208|temp_76_ptr_of_*b_0:8 at 200|temp_77_ele_of_*b_0 _s121 _i0:4 at 196|none:4 at 192|temp_78_ptr_of_*a_0:8 at 184|temp_79_ele_of_*a_0 _s121 _i0:4 at 180|temp_80_arithop _s121 _i0:4 at 176|temp_81_ptr_of_*c_0:8 at 168|temp_82_ptr_of_*c_0:8 at 160|temp_83_ele_of_*c_0 _s121 _i0:4 at 156|none:4 at 152|temp_84_ptr_of_*b_0:8 at 144|temp_85_ele_of_*b_0 _s121 _i0:4 at 140|temp_86_arithop _s121 _i0:4 at 136|temp_87_ptr_of_*a_0:8 at 128|temp_89_arithop _s121 _i0:4 at 124|temp_90_arithop _s121 _i0:4 at 120|temp_91_ptr_of_*a_0:8 at 112|temp_92_ret_of_quick_read _s110 _i0:4 at 108|none:4 at 104|temp_93_ptr_of_*b_0:8 at 96|temp_94_ptr_of_*a_0:8 at 88|temp_95_ele_of_*a_0 _s110 _i0:4 at 84|none:4 at 80|temp_96_ptr_of_*c_0:8 at 72|temp_97_ptr_of_*b_0:8 at 64|temp_98_ele_of_*b_0 _s110 _i0:4 at 60|temp_99_arithop _s110 _i0:4 at 56|temp_100_value_from_ptr _s108 _i0:4 at 52|temp_101_cmp _s108 _i0:1 at 51|none:3 at 48|temp_103_arithop _s119 _i0:4 at 44|temp_104_ _s3367 _i0:1 at 43|none:3 at 40|temp_106_arithop _s126 _i0:4 at 36|temp_107_ _s3695 _i0:1 at 35|none:3 at 32|temp_108_ptr_of_*b_0:8 at 24|temp_109_ele_of_*b_0 _s129 _i0:4 at 20|temp_110_ _s3731 _i0:1 at 19|none:3 at 16|temp_111_ptr_of_*c_0:8 at 8|temp_112_ele_of_*c_0 _s132 _i0:4 at 4|temp_113_ _s3800 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-256
              #                    store to ra_main_0 in mem offset legal
    sd      ra,248(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,240(sp)
    addi    s0,sp,256
              #                     472  n_0_1 = chi n_0_0:37 
              #                     473  a_0_1 = chi a_0_0:37 
              #                     474  cnt_0_4 = chi cnt_0_0:37 
              #                     475  b_0_1 = chi b_0_0:37 
              #                     476  c_0_1 = chi c_0_0:37 
              #                     325  alloc i32 [temp_73_ret_of_quick_read_105] 
              #                     330  alloc i32 [i_105] 
              #                     338  alloc i32 [temp_74_arithop_128] 
              #                     345  alloc ptr->i32 [temp_75_ptr_of_*b_0_121] 
              #                     347  alloc ptr->i32 [temp_76_ptr_of_*b_0_121] 
              #                     349  alloc i32 [temp_77_ele_of_*b_0_121] 
              #                     352  alloc ptr->i32 [temp_78_ptr_of_*a_0_121] 
              #                     354  alloc i32 [temp_79_ele_of_*a_0_121] 
              #                     357  alloc i32 [temp_80_arithop_121] 
              #                     361  alloc ptr->i32 [temp_81_ptr_of_*c_0_121] 
              #                     363  alloc ptr->i32 [temp_82_ptr_of_*c_0_121] 
              #                     365  alloc i32 [temp_83_ele_of_*c_0_121] 
              #                     368  alloc ptr->i32 [temp_84_ptr_of_*b_0_121] 
              #                     370  alloc i32 [temp_85_ele_of_*b_0_121] 
              #                     373  alloc i32 [temp_86_arithop_121] 
              #                     375  alloc ptr->i32 [temp_87_ptr_of_*a_0_121] 
              #                     377  alloc i32 [temp_88_ele_of_*a_0_121] 
              #                     380  alloc i32 [temp_89_arithop_121] 
              #                     384  alloc i32 [temp_90_arithop_121] 
              #                     387  alloc ptr->i32 [temp_91_ptr_of_*a_0_110] 
              #                     389  alloc i32 [temp_92_ret_of_quick_read_110] 
              #                     393  alloc ptr->i32 [temp_93_ptr_of_*b_0_110] 
              #                     395  alloc ptr->i32 [temp_94_ptr_of_*a_0_110] 
              #                     397  alloc i32 [temp_95_ele_of_*a_0_110] 
              #                     402  alloc ptr->i32 [temp_96_ptr_of_*c_0_110] 
              #                     404  alloc ptr->i32 [temp_97_ptr_of_*b_0_110] 
              #                     406  alloc i32 [temp_98_ele_of_*b_0_110] 
              #                     411  alloc i32 [temp_99_arithop_110] 
              #                     414  alloc i32 [temp_100_value_from_ptr_108] 
              #                     417  alloc i1 [temp_101_cmp_108] 
              #                     423  alloc i32 [temp_102_value_from_ptr_119] 
              #                     426  alloc i32 [temp_103_arithop_119] 
              #                     428  alloc i1 [temp_104__3367] 
              #                     434  alloc i32 [temp_105_value_from_ptr_126] 
              #                     437  alloc i32 [temp_106_arithop_126] 
              #                     439  alloc i1 [temp_107__3695] 
              #                     447  alloc ptr->i32 [temp_108_ptr_of_*b_0_129] 
              #                     449  alloc i32 [temp_109_ele_of_*b_0_129] 
              #                     452  alloc i1 [temp_110__3731] 
              #                     457  alloc ptr->i32 [temp_111_ptr_of_*c_0_132] 
              #                     459  alloc i32 [temp_112_ele_of_*c_0_132] 
              #                     462  alloc i1 [temp_113__3800] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     326  temp_73_ret_of_quick_read_105_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     327  store temp_73_ret_of_quick_read_105_0:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_73_ret_of_quick_read_105_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     643  untrack temp_73_ret_of_quick_read_105_0 
              #                    occupy a0 with temp_73_ret_of_quick_read_105_0
              #                    release a0 with temp_73_ret_of_quick_read_105_0
              #                     328  n_0_2 = chi n_0_1:327 
              #                     329  (nop) 
              #                     577  i_105_1 = i32 0_0 
              #                    occupy a0 with i_105_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_109 
    j       .while.head_109
              #                    regtab     a0:Freed { symidx: i_105_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     419  label while.head_109: 
.while.head_109:
              #                     415  temp_100_value_from_ptr_108_0 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_100_value_from_ptr_108_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     416  mu n_0_2:415 
              #                     418  temp_101_cmp_108_0 = icmp i32 Ne i_105_1, temp_100_value_from_ptr_108_0 
              #                    occupy a0 with i_105_1
              #                    occupy a2 with temp_100_value_from_ptr_108_0
              #                    occupy a3 with temp_101_cmp_108_0
    xor     a3,a0,a2
    snez    a3, a3
              #                    free a0
              #                    free a2
              #                    free a3
              #                     422  br i1 temp_101_cmp_108_0, label while.body_109, label while.exit_109 
              #                    occupy a3 with temp_101_cmp_108_0
              #                    free a3
              #                    occupy a3 with temp_101_cmp_108_0
    bnez    a3, .while.body_109
              #                    free a3
    j       .while.exit_109
              #                    regtab     a0:Freed { symidx: i_105_1, tracked: true } |     a2:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a3:Freed { symidx: temp_101_cmp_108_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     420  label while.body_109: 
.while.body_109:
              #                     388  temp_91_ptr_of_*a_0_110 = GEP *a_0:ptr->i32 [Some(i_105_1)] 
              #                    occupy a1 with temp_91_ptr_of_*a_0_110
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_105_1
    mv      a4, a0
              #                    free a0
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a5 with *a_0
              #                       load label a as ptr to reg
    la      a5, a
              #                    occupy reg a5 with *a_0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                     390  temp_92_ret_of_quick_read_110_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with i_105_1
              #                    store to i_105_1 in mem offset legal
    sw      a0,232(sp)
              #                    release a0 with i_105_1
              #                    occupy a1 with temp_91_ptr_of_*a_0_110
              #                    store to temp_91_ptr_of_*a_0_110 in mem offset legal
    sd      a1,112(sp)
              #                    release a1 with temp_91_ptr_of_*a_0_110
              #                    occupy a2 with temp_100_value_from_ptr_108_0
              #                    store to temp_100_value_from_ptr_108_0 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_100_value_from_ptr_108_0
              #                    occupy a3 with temp_101_cmp_108_0
              #                    store to temp_101_cmp_108_0 in mem offset legal
    sb      a3,51(sp)
              #                    release a3 with temp_101_cmp_108_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     391  store temp_92_ret_of_quick_read_110_0:i32 temp_91_ptr_of_*a_0_110:ptr->i32 
              #                    occupy a1 with temp_91_ptr_of_*a_0_110
              #                    load from temp_91_ptr_of_*a_0_110 in mem
    ld      a1,112(sp)
              #                    occupy a0 with temp_92_ret_of_quick_read_110_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     392  a_0_3 = chi a_0_2:391 
              #                     394  temp_93_ptr_of_*b_0_110 = GEP *b_0:ptr->i32 [Some(i_105_1)] 
              #                    occupy a2 with temp_93_ptr_of_*b_0_110
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_105_1
              #                    load from i_105_1 in mem


    lw      a4,232(sp)
    mv      a3, a4
              #                    free a4
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a5 with *b_0
              #                       load label b as ptr to reg
    la      a5, b
              #                    occupy reg a5 with *b_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                     396  (nop) 
              #                     398  temp_95_ele_of_*a_0_110_0 = load temp_91_ptr_of_*a_0_110:ptr->i32 
              #                    occupy a1 with temp_91_ptr_of_*a_0_110
              #                    occupy a6 with temp_95_ele_of_*a_0_110_0
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                     399  mu a_0_3:398 
              #                     400  store temp_95_ele_of_*a_0_110_0:i32 temp_93_ptr_of_*b_0_110:ptr->i32 
              #                    occupy a2 with temp_93_ptr_of_*b_0_110
              #                    occupy a6 with temp_95_ele_of_*a_0_110_0
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     401  b_0_3 = chi b_0_2:400 
              #                     403  temp_96_ptr_of_*c_0_110 = GEP *c_0:ptr->i32 [Some(i_105_1)] 
              #                    occupy a7 with temp_96_ptr_of_*c_0_110
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_105_1
    mv      s1, a4
              #                    free a4
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy s2 with *c_0
              #                       load label c as ptr to reg
    la      s2, c
              #                    occupy reg s2 with *c_0
    add     a7,a7,s2
              #                    free s2
              #                    free a7
              #                     405  (nop) 
              #                     407  temp_98_ele_of_*b_0_110_0 = load temp_93_ptr_of_*b_0_110:ptr->i32 
              #                    occupy a2 with temp_93_ptr_of_*b_0_110
              #                    occupy s3 with temp_98_ele_of_*b_0_110_0
    lw      s3,0(a2)
              #                    free s3
              #                    free a2
              #                     408  mu b_0_3:407 
              #                     409  store temp_98_ele_of_*b_0_110_0:i32 temp_96_ptr_of_*c_0_110:ptr->i32 
              #                    occupy a7 with temp_96_ptr_of_*c_0_110
              #                    occupy s3 with temp_98_ele_of_*b_0_110_0
    sw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                     410  c_0_3 = chi c_0_2:409 
              #                     412  temp_99_arithop_110_0 = Add i32 i_105_1, 1_0 
              #                    occupy a4 with i_105_1
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_99_arithop_110_0
    ADDW    s5,a4,s4
              #                    free a4
              #                    occupy a4 with i_105_1
              #                    store to i_105_1 in mem offset legal
    sw      a4,232(sp)
              #                    release a4 with i_105_1
              #                    free s4
              #                    free s5
              #                     413  (nop) 
              #                     578  i_105_1 = i32 temp_99_arithop_110_0 
              #                    occupy s5 with temp_99_arithop_110_0
              #                    occupy a4 with i_105_1
    mv      a4, s5
              #                    free s5
              #                    occupy s5 with temp_99_arithop_110_0
              #                    store to temp_99_arithop_110_0 in mem offset legal
    sw      s5,56(sp)
              #                    release s5 with temp_99_arithop_110_0
              #                    free a4
              #                          jump label: while.head_109 
              #                    occupy a2 with temp_93_ptr_of_*b_0_110
              #                    store to temp_93_ptr_of_*b_0_110 in mem offset legal
    sd      a2,96(sp)
              #                    release a2 with temp_93_ptr_of_*b_0_110
              #                    occupy a7 with temp_96_ptr_of_*c_0_110
              #                    store to temp_96_ptr_of_*c_0_110 in mem offset legal
    sd      a7,72(sp)
              #                    release a7 with temp_96_ptr_of_*c_0_110
              #                    occupy a0 with temp_92_ret_of_quick_read_110_0
              #                    store to temp_92_ret_of_quick_read_110_0 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_92_ret_of_quick_read_110_0
              #                    occupy a4 with i_105_1
              #                    store to i_105_1 in mem offset legal
    sw      a4,232(sp)
              #                    release a4 with i_105_1
              #                    occupy a0 with i_105_1
              #                    load from i_105_1 in mem


    lw      a0,232(sp)
              #                    occupy s3 with temp_98_ele_of_*b_0_110_0
              #                    store to temp_98_ele_of_*b_0_110_0 in mem offset legal
    sw      s3,60(sp)
              #                    release s3 with temp_98_ele_of_*b_0_110_0
              #                    occupy a6 with temp_95_ele_of_*a_0_110_0
              #                    store to temp_95_ele_of_*a_0_110_0 in mem offset legal
    sw      a6,84(sp)
              #                    release a6 with temp_95_ele_of_*a_0_110_0
              #                    occupy a1 with temp_91_ptr_of_*a_0_110
              #                    store to temp_91_ptr_of_*a_0_110 in mem offset legal
    sd      a1,112(sp)
              #                    release a1 with temp_91_ptr_of_*a_0_110
    j       .while.head_109
              #                    regtab     a0:Freed { symidx: i_105_1, tracked: true } |     a2:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a3:Freed { symidx: temp_101_cmp_108_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     421  label while.exit_109: 
.while.exit_109:
              #                     644  untrack i_105_1 
              #                    occupy a0 with i_105_1
              #                    release a0 with i_105_1
              #                     331   Call void sortA_0(*a_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_100_value_from_ptr_108_0
              #                    store to temp_100_value_from_ptr_108_0 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_100_value_from_ptr_108_0
              #                    occupy a3 with temp_101_cmp_108_0
              #                    store to temp_101_cmp_108_0 in mem offset legal
    sb      a3,51(sp)
              #                    release a3 with temp_101_cmp_108_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*a_0_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    arg load ended


    call    sortA
              #                     477  mu n_0_2:331 
              #                     478  mu a_0_2:331 
              #                     479  a_0_4 = chi a_0_2:331 
              #                     332   Call void sortB_0(*b_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*b_0_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    arg load ended


    call    sortB
              #                     480  mu n_0_2:332 
              #                     481  mu cnt_0_4:332 
              #                     482  mu b_0_2:332 
              #                     483  b_0_4 = chi b_0_2:332 
              #                     484  cnt_0_5 = chi cnt_0_4:332 
              #                     333   Call void sortC_0(*c_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*c_0_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    arg load ended


    call    sortC
              #                     485  mu n_0_2:333 
              #                     486  mu c_0_2:333 
              #                     487  c_0_4 = chi c_0_2:333 
              #                     334  (nop) 
              #                     424  (nop) 
              #                     425  mu n_0_2:424 
              #                     579  i_105_4 = i32 0_0 
              #                    occupy a0 with i_105_4
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_120 
    j       .while.head_120
              #                    regtab     a0:Freed { symidx: i_105_4, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     430  label while.head_120: 
.while.head_120:
              #                     427  temp_103_arithop_119_0 = Sub i32 temp_100_value_from_ptr_108_0, i_105_4 
              #                    occupy a1 with temp_100_value_from_ptr_108_0
              #                    load from temp_100_value_from_ptr_108_0 in mem


    lw      a1,52(sp)
              #                    occupy a0 with i_105_4
              #                    occupy a2 with temp_103_arithop_119_0
              #                    regtab:    a0:Occupied { symidx: i_105_4, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_100_value_from_ptr_108_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_103_arithop_119_0, tracked: true, occupy_count: 1 } |  released_gpr_count:14,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     429  temp_104__3367_0 = icmp i32 Ne temp_103_arithop_119_0, 0_0 
              #                    occupy a2 with temp_103_arithop_119_0
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_104__3367_0
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                     433  br i1 temp_104__3367_0, label while.body_120, label while.exit_120 
              #                    occupy a4 with temp_104__3367_0
              #                    free a4
              #                    occupy a4 with temp_104__3367_0
    bnez    a4, .while.body_120
              #                    free a4
    j       .while.exit_120
              #                    regtab     a0:Freed { symidx: i_105_4, tracked: true } |     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     431  label while.body_120: 
.while.body_120:
              #                     346  temp_75_ptr_of_*b_0_121 = GEP *b_0:ptr->i32 [Some(i_105_4)] 
              #                    occupy a3 with temp_75_ptr_of_*b_0_121
    li      a3, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_105_4
    mv      a5, a0
              #                    free a0
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a6 with *b_0
              #                       load label b as ptr to reg
    la      a6, b
              #                    occupy reg a6 with *b_0
    add     a3,a3,a6
              #                    free a6
              #                    free a3
              #                     348  (nop) 
              #                     350  temp_77_ele_of_*b_0_121_0 = load temp_75_ptr_of_*b_0_121:ptr->i32 
              #                    occupy a3 with temp_75_ptr_of_*b_0_121
              #                    occupy a7 with temp_77_ele_of_*b_0_121_0
    lw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                     351  mu b_0_5:350 
              #                     353  temp_78_ptr_of_*a_0_121 = GEP *a_0:Array:i32:[None] [Some(i_105_4)] 
              #                    occupy s1 with temp_78_ptr_of_*a_0_121
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_105_4
    mv      s2, a0
              #                    free a0
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *a_0
              #                       load label a as ptr to reg
    la      s3, a
              #                    occupy reg s3 with *a_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                     355  temp_79_ele_of_*a_0_121_0 = load temp_78_ptr_of_*a_0_121:ptr->i32 
              #                    occupy s1 with temp_78_ptr_of_*a_0_121
              #                    occupy s4 with temp_79_ele_of_*a_0_121_0
    lw      s4,0(s1)
              #                    free s4
              #                    occupy s4 with temp_79_ele_of_*a_0_121_0
              #                    store to temp_79_ele_of_*a_0_121_0 in mem offset legal
    sw      s4,180(sp)
              #                    release s4 with temp_79_ele_of_*a_0_121_0
              #                    free s1
              #                     356  mu a_0_4:355 
              #                     358  temp_80_arithop_121_0 = Sub i32 temp_77_ele_of_*b_0_121_0, temp_79_ele_of_*a_0_121_0 
              #                    occupy a7 with temp_77_ele_of_*b_0_121_0
              #                    occupy s4 with temp_79_ele_of_*a_0_121_0
              #                    load from temp_79_ele_of_*a_0_121_0 in mem


    lw      s4,180(sp)
              #                    occupy s5 with temp_80_arithop_121_0
              #                    regtab:    a0:Freed { symidx: i_105_4, tracked: true } |     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a3:Freed { symidx: temp_75_ptr_of_*b_0_121, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |     a5:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a6:Freed { symidx: *b_0, tracked: false } |     a7:Occupied { symidx: temp_77_ele_of_*b_0_121_0, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_78_ptr_of_*a_0_121, tracked: true } |     s2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s3:Freed { symidx: *a_0, tracked: false } |     s4:Occupied { symidx: temp_79_ele_of_*a_0_121_0, tracked: true, occupy_count: 1 } |     s5:Occupied { symidx: temp_80_arithop_121_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    s5,a7,s4
              #                    free a7
              #                    occupy a7 with temp_77_ele_of_*b_0_121_0
              #                    store to temp_77_ele_of_*b_0_121_0 in mem offset legal
    sw      a7,196(sp)
              #                    release a7 with temp_77_ele_of_*b_0_121_0
              #                    free s4
              #                    occupy s4 with temp_79_ele_of_*a_0_121_0
              #                    store to temp_79_ele_of_*a_0_121_0 in mem offset legal
    sw      s4,180(sp)
              #                    release s4 with temp_79_ele_of_*a_0_121_0
              #                    free s5
              #                     359  store temp_80_arithop_121_0:i32 temp_75_ptr_of_*b_0_121:ptr->i32 
              #                    occupy a3 with temp_75_ptr_of_*b_0_121
              #                    occupy s5 with temp_80_arithop_121_0
    sw      s5,0(a3)
              #                    free s5
              #                    free a3
              #                     360  b_0_6 = chi b_0_5:359 
              #                     362  temp_81_ptr_of_*c_0_121 = GEP *c_0:ptr->i32 [Some(i_105_4)] 
              #                    occupy a7 with temp_81_ptr_of_*c_0_121
    li      a7, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_105_4
    mv      s4, a0
              #                    free a0
              #                    occupy a0 with i_105_4
              #                    store to i_105_4 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with i_105_4
    add     a7,a7,s4
              #                    free s4
    slli a7,a7,2
              #                    occupy a0 with *c_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    occupy reg a0 with *c_0
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                     364  (nop) 
              #                     366  temp_83_ele_of_*c_0_121_0 = load temp_81_ptr_of_*c_0_121:ptr->i32 
              #                    occupy a7 with temp_81_ptr_of_*c_0_121
              #                    occupy a0 with temp_83_ele_of_*c_0_121_0
    lw      a0,0(a7)
              #                    free a0
              #                    occupy a0 with temp_83_ele_of_*c_0_121_0
              #                    store to temp_83_ele_of_*c_0_121_0 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with temp_83_ele_of_*c_0_121_0
              #                    free a7
              #                     367  mu c_0_5:366 
              #                     369  (nop) 
              #                     371  temp_85_ele_of_*b_0_121_0 = load temp_75_ptr_of_*b_0_121:ptr->i32 
              #                    occupy a3 with temp_75_ptr_of_*b_0_121
              #                    occupy a0 with temp_85_ele_of_*b_0_121_0
    lw      a0,0(a3)
              #                    free a0
              #                    occupy a0 with temp_85_ele_of_*b_0_121_0
              #                    store to temp_85_ele_of_*b_0_121_0 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with temp_85_ele_of_*b_0_121_0
              #                    free a3
              #                     372  mu b_0_6:371 
              #                     374  temp_86_arithop_121_0 = Sub i32 temp_83_ele_of_*c_0_121_0, temp_85_ele_of_*b_0_121_0 
              #                    occupy a0 with temp_83_ele_of_*c_0_121_0
              #                    load from temp_83_ele_of_*c_0_121_0 in mem


    lw      a0,156(sp)
              #                    occupy s4 with temp_85_ele_of_*b_0_121_0
              #                    load from temp_85_ele_of_*b_0_121_0 in mem


    lw      s4,140(sp)
              #                    occupy s6 with temp_86_arithop_121_0
              #                    regtab:    a0:Occupied { symidx: temp_83_ele_of_*c_0_121_0, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a3:Freed { symidx: temp_75_ptr_of_*b_0_121, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |     a5:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a6:Freed { symidx: *b_0, tracked: false } |     a7:Freed { symidx: temp_81_ptr_of_*c_0_121, tracked: true } |     s1:Freed { symidx: temp_78_ptr_of_*a_0_121, tracked: true } |     s2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s3:Freed { symidx: *a_0, tracked: false } |     s4:Occupied { symidx: temp_85_ele_of_*b_0_121_0, tracked: true, occupy_count: 1 } |     s5:Freed { symidx: temp_80_arithop_121_0, tracked: true } |     s6:Occupied { symidx: temp_86_arithop_121_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s6,a0,s4
              #                    free a0
              #                    occupy a0 with temp_83_ele_of_*c_0_121_0
              #                    store to temp_83_ele_of_*c_0_121_0 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with temp_83_ele_of_*c_0_121_0
              #                    free s4
              #                    occupy s4 with temp_85_ele_of_*b_0_121_0
              #                    store to temp_85_ele_of_*b_0_121_0 in mem offset legal
    sw      s4,140(sp)
              #                    release s4 with temp_85_ele_of_*b_0_121_0
              #                    free s6
              #                    occupy s6 with temp_86_arithop_121_0
              #                    store to temp_86_arithop_121_0 in mem offset legal
    sw      s6,136(sp)
              #                    release s6 with temp_86_arithop_121_0
              #                     376  (nop) 
              #                     378  (nop) 
              #                     379  mu a_0_4:378 
              #                     381  temp_89_arithop_121_0 = Sub i32 temp_86_arithop_121_0, temp_79_ele_of_*a_0_121_0 
              #                    occupy a0 with temp_86_arithop_121_0
              #                    load from temp_86_arithop_121_0 in mem


    lw      a0,136(sp)
              #                    occupy s4 with temp_79_ele_of_*a_0_121_0
              #                    load from temp_79_ele_of_*a_0_121_0 in mem


    lw      s4,180(sp)
              #                    occupy s6 with temp_89_arithop_121_0
              #                    regtab:    a0:Occupied { symidx: temp_86_arithop_121_0, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a3:Freed { symidx: temp_75_ptr_of_*b_0_121, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |     a5:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a6:Freed { symidx: *b_0, tracked: false } |     a7:Freed { symidx: temp_81_ptr_of_*c_0_121, tracked: true } |     s1:Freed { symidx: temp_78_ptr_of_*a_0_121, tracked: true } |     s2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s3:Freed { symidx: *a_0, tracked: false } |     s4:Occupied { symidx: temp_79_ele_of_*a_0_121_0, tracked: true, occupy_count: 1 } |     s5:Freed { symidx: temp_80_arithop_121_0, tracked: true } |     s6:Occupied { symidx: temp_89_arithop_121_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s6,a0,s4
              #                    free a0
              #                    occupy a0 with temp_86_arithop_121_0
              #                    store to temp_86_arithop_121_0 in mem offset legal
    sw      a0,136(sp)
              #                    release a0 with temp_86_arithop_121_0
              #                    free s4
              #                    occupy s4 with temp_79_ele_of_*a_0_121_0
              #                    store to temp_79_ele_of_*a_0_121_0 in mem offset legal
    sw      s4,180(sp)
              #                    release s4 with temp_79_ele_of_*a_0_121_0
              #                    free s6
              #                    occupy s6 with temp_89_arithop_121_0
              #                    store to temp_89_arithop_121_0 in mem offset legal
    sw      s6,124(sp)
              #                    release s6 with temp_89_arithop_121_0
              #                     382  store temp_89_arithop_121_0:i32 temp_81_ptr_of_*c_0_121:ptr->i32 
              #                    occupy a7 with temp_81_ptr_of_*c_0_121
              #                    occupy a0 with temp_89_arithop_121_0
              #                    load from temp_89_arithop_121_0 in mem


    lw      a0,124(sp)
    sw      a0,0(a7)
              #                    free a0
              #                    occupy a0 with temp_89_arithop_121_0
              #                    store to temp_89_arithop_121_0 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_89_arithop_121_0
              #                    free a7
              #                     383  c_0_6 = chi c_0_5:382 
              #                     385  temp_90_arithop_121_0 = Add i32 i_105_4, 1_0 
              #                    occupy a0 with i_105_4
              #                    load from i_105_4 in mem


    lw      a0,228(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_90_arithop_121_0
    ADDW    s6,a0,s4
              #                    free a0
              #                    occupy a0 with i_105_4
              #                    store to i_105_4 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with i_105_4
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_90_arithop_121_0
              #                    store to temp_90_arithop_121_0 in mem offset legal
    sw      s6,120(sp)
              #                    release s6 with temp_90_arithop_121_0
              #                     386  (nop) 
              #                     580  i_105_4 = i32 temp_90_arithop_121_0 
              #                    occupy a0 with temp_90_arithop_121_0
              #                    load from temp_90_arithop_121_0 in mem


    lw      a0,120(sp)
              #                    occupy s4 with i_105_4
    mv      s4, a0
              #                    free a0
              #                    occupy a0 with temp_90_arithop_121_0
              #                    store to temp_90_arithop_121_0 in mem offset legal
    sw      a0,120(sp)
              #                    release a0 with temp_90_arithop_121_0
              #                    free s4
              #                    occupy s4 with i_105_4
              #                    store to i_105_4 in mem offset legal
    sw      s4,228(sp)
              #                    release s4 with i_105_4
              #                          jump label: while.head_120 
              #                    occupy a2 with temp_103_arithop_119_0
              #                    store to temp_103_arithop_119_0 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with temp_103_arithop_119_0
              #                    occupy a7 with temp_81_ptr_of_*c_0_121
              #                    store to temp_81_ptr_of_*c_0_121 in mem offset legal
    sd      a7,168(sp)
              #                    release a7 with temp_81_ptr_of_*c_0_121
              #                    occupy s5 with temp_80_arithop_121_0
              #                    store to temp_80_arithop_121_0 in mem offset legal
    sw      s5,176(sp)
              #                    release s5 with temp_80_arithop_121_0
              #                    occupy a0 with i_105_4
              #                    load from i_105_4 in mem


    lw      a0,228(sp)
              #                    occupy a4 with temp_104__3367_0
              #                    store to temp_104__3367_0 in mem offset legal
    sb      a4,43(sp)
              #                    release a4 with temp_104__3367_0
              #                    occupy a3 with temp_75_ptr_of_*b_0_121
              #                    store to temp_75_ptr_of_*b_0_121 in mem offset legal
    sd      a3,208(sp)
              #                    release a3 with temp_75_ptr_of_*b_0_121
              #                    occupy s1 with temp_78_ptr_of_*a_0_121
              #                    store to temp_78_ptr_of_*a_0_121 in mem offset legal
    sd      s1,184(sp)
              #                    release s1 with temp_78_ptr_of_*a_0_121
              #                    occupy a1 with temp_100_value_from_ptr_108_0
              #                    store to temp_100_value_from_ptr_108_0 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with temp_100_value_from_ptr_108_0
    j       .while.head_120
              #                    regtab     a0:Freed { symidx: i_105_4, tracked: true } |     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     432  label while.exit_120: 
.while.exit_120:
              #                     645  untrack i_105_4 
              #                    occupy a0 with i_105_4
              #                    release a0 with i_105_4
              #                     335  (nop) 
              #                     435  (nop) 
              #                     436  mu n_0_2:435 
              #                     581  i_105_7 = i32 0_0 
              #                    occupy a0 with i_105_7
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_127 
    j       .while.head_127
              #                    regtab     a0:Freed { symidx: i_105_7, tracked: true } |     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     441  label while.head_127: 
.while.head_127:
              #                     438  temp_106_arithop_126_0 = Sub i32 i_105_7, temp_100_value_from_ptr_108_0 
              #                    occupy a0 with i_105_7
              #                    occupy a1 with temp_100_value_from_ptr_108_0
              #                    occupy a3 with temp_106_arithop_126_0
              #                    regtab:    a0:Occupied { symidx: i_105_7, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_100_value_from_ptr_108_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a3:Occupied { symidx: temp_106_arithop_126_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24


    subw    a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                     440  temp_107__3695_0 = icmp i32 Ne temp_106_arithop_126_0, 0_0 
              #                    occupy a3 with temp_106_arithop_126_0
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_107__3695_0
    xor     a6,a3,a5
    snez    a6, a6
              #                    free a3
              #                    free a5
              #                    free a6
              #                     444  br i1 temp_107__3695_0, label while.body_127, label while.exit_127 
              #                    occupy a6 with temp_107__3695_0
              #                    free a6
              #                    occupy a6 with temp_107__3695_0
    bnez    a6, .while.body_127
              #                    free a6
    j       .while.exit_127
              #                    regtab     a0:Freed { symidx: i_105_7, tracked: true } |     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a3:Freed { symidx: temp_106_arithop_126_0, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |     a6:Freed { symidx: temp_107__3695_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     442  label while.body_127: 
.while.body_127:
              #                     448  temp_108_ptr_of_*b_0_129 = GEP *b_0:Array:i32:[None] [Some(i_105_7)] 
              #                    occupy a5 with temp_108_ptr_of_*b_0_129
    li      a5, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_105_7
    mv      a7, a0
              #                    free a0
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with *b_0
              #                       load label b as ptr to reg
    la      s1, b
              #                    occupy reg s1 with *b_0
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                     450  temp_109_ele_of_*b_0_129_0 = load temp_108_ptr_of_*b_0_129:ptr->i32 
              #                    occupy a5 with temp_108_ptr_of_*b_0_129
              #                    occupy s2 with temp_109_ele_of_*b_0_129_0
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                     451  mu b_0_5:450 
              #                     453  temp_110__3731_0 = icmp i32 Ne temp_109_ele_of_*b_0_129_0, 0_0 
              #                    occupy s2 with temp_109_ele_of_*b_0_129_0
              #                    occupy s3 with 0_0
    li      s3, 0
              #                    occupy s4 with temp_110__3731_0
    xor     s4,s2,s3
    snez    s4, s4
              #                    free s2
              #                    occupy s2 with temp_109_ele_of_*b_0_129_0
              #                    store to temp_109_ele_of_*b_0_129_0 in mem offset legal
    sw      s2,20(sp)
              #                    release s2 with temp_109_ele_of_*b_0_129_0
              #                    free s3
              #                    free s4
              #                     456  br i1 temp_110__3731_0, label branch_true_130, label branch_false_130 
              #                    occupy s4 with temp_110__3731_0
              #                    free s4
              #                    occupy s4 with temp_110__3731_0
    bnez    s4, .branch_true_130
              #                    free s4
    j       .branch_false_130
              #                    regtab     a0:Freed { symidx: i_105_7, tracked: true } |     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a3:Freed { symidx: temp_106_arithop_126_0, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |     a5:Freed { symidx: temp_108_ptr_of_*b_0_129, tracked: true } |     a6:Freed { symidx: temp_107__3695_0, tracked: true } |     s4:Freed { symidx: temp_110__3731_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     454  label branch_true_130: 
.branch_true_130:
              #                     656  untrack temp_110__3731_0 
              #                    occupy s4 with temp_110__3731_0
              #                    release s4 with temp_110__3731_0
              #                     655  untrack temp_112_ele_of_*c_0_132_0 
              #                     654  untrack temp_100_value_from_ptr_108_0 
              #                    occupy a1 with temp_100_value_from_ptr_108_0
              #                    release a1 with temp_100_value_from_ptr_108_0
              #                     653  untrack temp_107__3695_0 
              #                    occupy a6 with temp_107__3695_0
              #                    release a6 with temp_107__3695_0
              #                     652  untrack temp_113__3800_0 
              #                     651  untrack temp_109_ele_of_*b_0_129_0 
              #                     650  untrack temp_74_arithop_128_0 
              #                     649  untrack temp_106_arithop_126_0 
              #                    occupy a3 with temp_106_arithop_126_0
              #                    release a3 with temp_106_arithop_126_0
              #                     648  untrack temp_111_ptr_of_*c_0_132 
              #                     647  untrack temp_108_ptr_of_*b_0_129 
              #                    occupy a5 with temp_108_ptr_of_*b_0_129
              #                    release a5 with temp_108_ptr_of_*b_0_129
              #                     488  mu n_0_2:344 
              #                     489  mu a_0_4:344 
              #                     490  mu cnt_0_5:344 
              #                     491  mu b_0_5:344 
              #                     492  mu c_0_5:344 
              #                     344  ret 1_0 
              #                    load from ra_main_0 in mem
    ld      ra,248(sp)
              #                    load from s0_main_0 in mem
    ld      s0,240(sp)
              #                    occupy a0 with i_105_7
              #                    store to i_105_7 in mem offset legal
    sw      a0,224(sp)
              #                    release a0 with i_105_7
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,256
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_105_7, tracked: true } |     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a3:Freed { symidx: temp_106_arithop_126_0, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |     a5:Freed { symidx: temp_108_ptr_of_*b_0_129, tracked: true } |     a6:Freed { symidx: temp_107__3695_0, tracked: true } |     s4:Freed { symidx: temp_110__3731_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     455  label branch_false_130: 
.branch_false_130:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: i_105_7, tracked: true } |     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a3:Freed { symidx: temp_106_arithop_126_0, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |     a5:Freed { symidx: temp_108_ptr_of_*b_0_129, tracked: true } |     a6:Freed { symidx: temp_107__3695_0, tracked: true } |     s4:Freed { symidx: temp_110__3731_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     458  temp_111_ptr_of_*c_0_132 = GEP *c_0:Array:i32:[None] [Some(i_105_7)] 
              #                    occupy a7 with temp_111_ptr_of_*c_0_132
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_105_7
    mv      s1, a0
              #                    free a0
              #                    occupy a0 with i_105_7
              #                    store to i_105_7 in mem offset legal
    sw      a0,224(sp)
              #                    release a0 with i_105_7
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy a0 with *c_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    occupy reg a0 with *c_0
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                     460  temp_112_ele_of_*c_0_132_0 = load temp_111_ptr_of_*c_0_132:ptr->i32 
              #                    occupy a7 with temp_111_ptr_of_*c_0_132
              #                    occupy a0 with temp_112_ele_of_*c_0_132_0
    lw      a0,0(a7)
              #                    free a0
              #                    occupy a0 with temp_112_ele_of_*c_0_132_0
              #                    store to temp_112_ele_of_*c_0_132_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_112_ele_of_*c_0_132_0
              #                    free a7
              #                     461  mu c_0_5:460 
              #                     463  temp_113__3800_0 = icmp i32 Ne temp_112_ele_of_*c_0_132_0, 0_0 
              #                    occupy a0 with temp_112_ele_of_*c_0_132_0
              #                    load from temp_112_ele_of_*c_0_132_0 in mem


    lw      a0,4(sp)
              #                    occupy s1 with 0_0
    li      s1, 0
              #                    occupy s2 with temp_113__3800_0
    xor     s2,a0,s1
    snez    s2, s2
              #                    free a0
              #                    occupy a0 with temp_112_ele_of_*c_0_132_0
              #                    store to temp_112_ele_of_*c_0_132_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_112_ele_of_*c_0_132_0
              #                    free s1
              #                    free s2
              #                    occupy s2 with temp_113__3800_0
              #                    store to temp_113__3800_0 in mem offset legal
    sb      s2,3(sp)
              #                    release s2 with temp_113__3800_0
              #                     466  br i1 temp_113__3800_0, label branch_true_133, label branch_false_133 
              #                    occupy a0 with temp_113__3800_0
              #                    load from temp_113__3800_0 in mem


    lb      a0,3(sp)
              #                    free a0
              #                    occupy a0 with temp_113__3800_0
              #                    store to temp_113__3800_0 in mem offset legal
    sb      a0,3(sp)
              #                    release a0 with temp_113__3800_0
              #                    occupy a0 with temp_113__3800_0
              #                    load from temp_113__3800_0 in mem


    lb      a0,3(sp)
    bnez    a0, .branch_true_133
              #                    free a0
              #                    occupy a0 with temp_113__3800_0
              #                    store to temp_113__3800_0 in mem offset legal
    sb      a0,3(sp)
              #                    release a0 with temp_113__3800_0
    j       .branch_false_133
              #                    regtab     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a3:Freed { symidx: temp_106_arithop_126_0, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |     a5:Freed { symidx: temp_108_ptr_of_*b_0_129, tracked: true } |     a6:Freed { symidx: temp_107__3695_0, tracked: true } |     a7:Freed { symidx: temp_111_ptr_of_*c_0_132, tracked: true } |     s4:Freed { symidx: temp_110__3731_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     464  label branch_true_133: 
.branch_true_133:
              #                     666  untrack temp_111_ptr_of_*c_0_132 
              #                    occupy a7 with temp_111_ptr_of_*c_0_132
              #                    release a7 with temp_111_ptr_of_*c_0_132
              #                     665  untrack temp_74_arithop_128_0 
              #                     664  untrack temp_107__3695_0 
              #                    occupy a6 with temp_107__3695_0
              #                    release a6 with temp_107__3695_0
              #                     663  untrack temp_109_ele_of_*b_0_129_0 
              #                     662  untrack temp_108_ptr_of_*b_0_129 
              #                    occupy a5 with temp_108_ptr_of_*b_0_129
              #                    release a5 with temp_108_ptr_of_*b_0_129
              #                     661  untrack temp_113__3800_0 
              #                     660  untrack temp_110__3731_0 
              #                    occupy s4 with temp_110__3731_0
              #                    release s4 with temp_110__3731_0
              #                     659  untrack temp_100_value_from_ptr_108_0 
              #                    occupy a1 with temp_100_value_from_ptr_108_0
              #                    release a1 with temp_100_value_from_ptr_108_0
              #                     658  untrack temp_112_ele_of_*c_0_132_0 
              #                     657  untrack temp_106_arithop_126_0 
              #                    occupy a3 with temp_106_arithop_126_0
              #                    release a3 with temp_106_arithop_126_0
              #                     493  mu n_0_2:342 
              #                     494  mu a_0_4:342 
              #                     495  mu cnt_0_5:342 
              #                     496  mu b_0_5:342 
              #                     497  mu c_0_5:342 
              #                     342  ret 2_0 
              #                    load from ra_main_0 in mem
    ld      ra,248(sp)
              #                    load from s0_main_0 in mem
    ld      s0,240(sp)
              #                    occupy a0 with 2_0
    li      a0, 2
    addi    sp,sp,256
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a3:Freed { symidx: temp_106_arithop_126_0, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |     a5:Freed { symidx: temp_108_ptr_of_*b_0_129, tracked: true } |     a6:Freed { symidx: temp_107__3695_0, tracked: true } |     a7:Freed { symidx: temp_111_ptr_of_*c_0_132, tracked: true } |     s4:Freed { symidx: temp_110__3731_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     465  label branch_false_133: 
.branch_false_133:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a3:Freed { symidx: temp_106_arithop_126_0, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |     a5:Freed { symidx: temp_108_ptr_of_*b_0_129, tracked: true } |     a6:Freed { symidx: temp_107__3695_0, tracked: true } |     a7:Freed { symidx: temp_111_ptr_of_*c_0_132, tracked: true } |     s4:Freed { symidx: temp_110__3731_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     339  temp_74_arithop_128_0 = Add i32 i_105_7, 1_0 
              #                    occupy a0 with i_105_7
              #                    load from i_105_7 in mem


    lw      a0,224(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_74_arithop_128_0
    ADDW    s2,a0,s1
              #                    free a0
              #                    occupy a0 with i_105_7
              #                    store to i_105_7 in mem offset legal
    sw      a0,224(sp)
              #                    release a0 with i_105_7
              #                    free s1
              #                    free s2
              #                    occupy s2 with temp_74_arithop_128_0
              #                    store to temp_74_arithop_128_0 in mem offset legal
    sw      s2,220(sp)
              #                    release s2 with temp_74_arithop_128_0
              #                     340  (nop) 
              #                     582  i_105_7 = i32 temp_74_arithop_128_0 
              #                    occupy a0 with temp_74_arithop_128_0
              #                    load from temp_74_arithop_128_0 in mem


    lw      a0,220(sp)
              #                    occupy s1 with i_105_7
    mv      s1, a0
              #                    free a0
              #                    occupy a0 with temp_74_arithop_128_0
              #                    store to temp_74_arithop_128_0 in mem offset legal
    sw      a0,220(sp)
              #                    release a0 with temp_74_arithop_128_0
              #                    free s1
              #                    occupy s1 with i_105_7
              #                    store to i_105_7 in mem offset legal
    sw      s1,224(sp)
              #                    release s1 with i_105_7
              #                          jump label: while.head_127 
              #                    occupy a7 with temp_111_ptr_of_*c_0_132
              #                    store to temp_111_ptr_of_*c_0_132 in mem offset legal
    sd      a7,8(sp)
              #                    release a7 with temp_111_ptr_of_*c_0_132
              #                    occupy a0 with i_105_7
              #                    load from i_105_7 in mem


    lw      a0,224(sp)
              #                    occupy a3 with temp_106_arithop_126_0
              #                    store to temp_106_arithop_126_0 in mem offset legal
    sw      a3,36(sp)
              #                    release a3 with temp_106_arithop_126_0
              #                    occupy a6 with temp_107__3695_0
              #                    store to temp_107__3695_0 in mem offset legal
    sb      a6,35(sp)
              #                    release a6 with temp_107__3695_0
              #                    occupy s4 with temp_110__3731_0
              #                    store to temp_110__3731_0 in mem offset legal
    sb      s4,19(sp)
              #                    release s4 with temp_110__3731_0
              #                    occupy a5 with temp_108_ptr_of_*b_0_129
              #                    store to temp_108_ptr_of_*b_0_129 in mem offset legal
    sd      a5,24(sp)
              #                    release a5 with temp_108_ptr_of_*b_0_129
    j       .while.head_127
              #                    regtab     a0:Freed { symidx: i_105_7, tracked: true } |     a1:Freed { symidx: temp_100_value_from_ptr_108_0, tracked: true } |     a2:Freed { symidx: temp_103_arithop_119_0, tracked: true } |     a3:Freed { symidx: temp_106_arithop_126_0, tracked: true } |     a4:Freed { symidx: temp_104__3367_0, tracked: true } |     a6:Freed { symidx: temp_107__3695_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     443  label while.exit_127: 
.while.exit_127:
              #                     646  untrack i_105_7 
              #                    occupy a0 with i_105_7
              #                    release a0 with i_105_7
              #                     498  mu n_0_2:337 
              #                     499  mu a_0_4:337 
              #                     500  mu cnt_0_5:337 
              #                     501  mu b_0_5:337 
              #                     502  mu c_0_5:337 
              #                     337  ret -123_0 
              #                    load from ra_main_0 in mem
    ld      ra,248(sp)
              #                    load from s0_main_0 in mem
    ld      s0,240(sp)
              #                    occupy a0 with -123_0
    li      a0, -123
    addi    sp,sp,256
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl c
              #                     28   global Array:i32:[Some(100005_0)] c_0 
    .type c,@object
c:
    .zero 400020
    .align 4
    .globl b
              #                     26   global Array:i32:[Some(100005_0)] b_0 
    .type b,@object
b:
    .zero 400020
    .align 4
    .globl a
              #                     24   global Array:i32:[Some(100005_0)] a_0 
    .type a,@object
a:
    .zero 400020
    .align 4
    .globl x
              #                     22   global Array:i32:[Some(100005_0)] x_0 
    .type x,@object
x:
    .zero 400020
    .align 4
    .globl cnt
              #                     20   global Array:i32:[Some(400020_0)] cnt_0 
    .type cnt,@object
cnt:
    .zero 1600080
    .align 4
    .globl maxn
              #                     18   global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 100005
    .align 4
    .globl n
              #                     15   global i32 n_0 
    .type n,@object
n:
    .word 0
