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
              #                     32   Define quick_read_0 "" -> quick_read_ret_0 
    .globl quick_read
    .type quick_read,@function
quick_read:
              #                    mem layout:|ra_quick_read:8 at 64|s0_quick_read:8 at 56|temp_0_ret_of_getch _s21 _i0:4 at 52|ch _s21 _i1:4 at 48|ch _s21 _i3:4 at 44|x _s21 _i1:4 at 40|f _s21 _i1:4 at 36|f _s21 _i3:4 at 32|temp_1_ _s36 _i0:4 at 28|temp_2_arithop _s33 _i0:4 at 24|temp_3_arithop _s33 _i0:4 at 20|temp_4_arithop _s33 _i0:4 at 16|temp_5_ret_of_getch _s33 _i0:4 at 12|temp_6_ret_of_getch _s26 _i0:4 at 8|temp_7_cmp _s24 _i0:1 at 7|temp_8_cmp _s24 _i0:1 at 6|temp_9_cmp _s31 _i0:1 at 5|temp_10_cmp _s31 _i0:1 at 4|temp_11_ _s803 _i0:1 at 3|temp_12_cmp _s27 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-72
              #                    store to ra_quick_read_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_quick_read_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     37   alloc i32 [temp_0_ret_of_getch_21] 
              #                     40   alloc i32 [ch_21] 
              #                     42   alloc i32 [x_21] 
              #                     44   alloc i32 [f_21] 
              #                     48   alloc i32 [temp_1__36] 
              #                     51   alloc i32 [temp_2_arithop_33] 
              #                     53   alloc i32 [temp_3_arithop_33] 
              #                     55   alloc i32 [temp_4_arithop_33] 
              #                     58   alloc i32 [temp_5_ret_of_getch_33] 
              #                     61   alloc i32 [temp_6_ret_of_getch_26] 
              #                     65   alloc i1 [temp_7_cmp_24] 
              #                     67   alloc i1 [temp_8_cmp_24] 
              #                     76   alloc i1 [temp_9_cmp_31] 
              #                     78   alloc i1 [temp_10_cmp_31] 
              #                     86   alloc i1 [temp_11__803] 
              #                     94   alloc i1 [temp_12_cmp_27] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     38   temp_0_ret_of_getch_21_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     39   (nop) 
              #                     41   (nop) 
              #                     43   (nop) 
              #                     435  ch_21_1 = i32 temp_0_ret_of_getch_21_0 
              #                    occupy a0 with temp_0_ret_of_getch_21_0
              #                    occupy a1 with ch_21_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     457  untrack temp_0_ret_of_getch_21_0 
              #                    occupy a0 with temp_0_ret_of_getch_21_0
              #                    release a0 with temp_0_ret_of_getch_21_0
              #                     436  f_21_1 = i32 0_0 
              #                    occupy a0 with f_21_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: f_21_1, tracked: true } |     a1:Freed { symidx: ch_21_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     74   label while.head_25: 
.while.head_25:
              #                     66   temp_7_cmp_24_0 = icmp i32 Slt ch_21_1, 48_0 
              #                    occupy a1 with ch_21_1
              #                    occupy a2 with 48_0
    li      a2, 48
              #                    occupy a3 with temp_7_cmp_24_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     75   br i1 temp_7_cmp_24_0, label branch_short_circuit_c_true_185, label branch_short_circuit_p_false_185 
              #                    occupy a3 with temp_7_cmp_24_0
              #                    free a3
              #                    occupy a3 with temp_7_cmp_24_0
    bnez    a3, .branch_short_circuit_c_true_185
              #                    free a3
    j       .branch_short_circuit_p_false_185
              #                    regtab     a0:Freed { symidx: f_21_1, tracked: true } |     a1:Freed { symidx: ch_21_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_24_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     69   label branch_short_circuit_c_true_185: 
.branch_short_circuit_c_true_185:
              #                     95   temp_12_cmp_27_0 = icmp i32 Eq ch_21_1, 45_0 
              #                    occupy a1 with ch_21_1
              #                    occupy a2 with 45_0
    li      a2, 45
              #                    occupy a4 with temp_12_cmp_27_0
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     98   br i1 temp_12_cmp_27_0, label branch_true_28, label UP_50_0 
              #                    occupy a4 with temp_12_cmp_27_0
              #                    free a4
              #                    occupy a4 with temp_12_cmp_27_0
    bnez    a4, .branch_true_28
              #                    free a4
    j       .UP_50_0
              #                    regtab     a0:Freed { symidx: f_21_1, tracked: true } |     a1:Freed { symidx: ch_21_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_27_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     96   label branch_true_28: 
.branch_true_28:
              #                     468  untrack temp_9_cmp_31_0 
              #                     467  untrack temp_3_arithop_33_0 
              #                     466  untrack temp_4_arithop_33_0 
              #                     465  untrack temp_7_cmp_24_0 
              #                    occupy a3 with temp_7_cmp_24_0
              #                    release a3 with temp_7_cmp_24_0
              #                     464  untrack temp_12_cmp_27_0 
              #                    occupy a4 with temp_12_cmp_27_0
              #                    release a4 with temp_12_cmp_27_0
              #                     463  untrack temp_8_cmp_24_0 
              #                     462  untrack ch_21_3 
              #                     461  untrack temp_5_ret_of_getch_33_0 
              #                     460  untrack temp_10_cmp_31_0 
              #                     459  untrack temp_2_arithop_33_0 
              #                     458  untrack x_21_1 
              #                     64   (nop) 
              #                     437  f_21_3 = i32 1_0 
              #                    occupy a2 with f_21_3
    li      a2, 1
              #                    free a2
              #                          jump label: branch_false_28 
    j       .branch_false_28
              #                    regtab     a0:Freed { symidx: f_21_1, tracked: true } |     a1:Freed { symidx: ch_21_1, tracked: true } |     a2:Freed { symidx: f_21_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     97   label branch_false_28: 
.branch_false_28:
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a0:Freed { symidx: f_21_1, tracked: true } |     a1:Freed { symidx: ch_21_1, tracked: true } |     a2:Freed { symidx: f_21_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     62   temp_6_ret_of_getch_26_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with f_21_1
              #                    store to f_21_1 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with f_21_1
              #                    occupy a1 with ch_21_1
              #                    store to ch_21_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_21_1
              #                    occupy a2 with f_21_3
              #                    store to f_21_3 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with f_21_3
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     63   (nop) 
              #                     438  ch_21_1 = i32 temp_6_ret_of_getch_26_0 
              #                    occupy a0 with temp_6_ret_of_getch_26_0
              #                    occupy a1 with ch_21_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     439  f_21_1 = i32 f_21_3 
              #                    occupy a2 with f_21_3
              #                    load from f_21_3 in mem


    lw      a2,32(sp)
              #                    occupy a3 with f_21_1
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: while.head_25 
              #                    occupy a3 with f_21_1
              #                    store to f_21_1 in mem offset legal
    sw      a3,36(sp)
              #                    release a3 with f_21_1
              #                    occupy a0 with temp_6_ret_of_getch_26_0
              #                    store to temp_6_ret_of_getch_26_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_6_ret_of_getch_26_0
              #                    occupy a0 with f_21_1
              #                    load from f_21_1 in mem


    lw      a0,36(sp)
              #                    occupy a2 with f_21_3
              #                    store to f_21_3 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with f_21_3
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: f_21_1, tracked: true } |     a1:Freed { symidx: ch_21_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_27_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     433  label UP_50_0: 
.UP_50_0:
              #                     440  f_21_3 = i32 f_21_1 
              #                    occupy a0 with f_21_1
              #                    occupy a2 with f_21_3
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          jump label: branch_false_28 
              #                    occupy a3 with temp_7_cmp_24_0
              #                    store to temp_7_cmp_24_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_7_cmp_24_0
              #                    occupy a4 with temp_12_cmp_27_0
              #                    store to temp_12_cmp_27_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_12_cmp_27_0
    j       .branch_false_28
              #                    regtab     a0:Freed { symidx: f_21_1, tracked: true } |     a1:Freed { symidx: ch_21_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_24_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     71   label branch_short_circuit_p_false_185: 
.branch_short_circuit_p_false_185:
              #                     68   temp_8_cmp_24_0 = icmp i32 Sgt ch_21_1, 57_0 
              #                    occupy a1 with ch_21_1
              #                    occupy a2 with 57_0
    li      a2, 57
              #                    occupy a4 with temp_8_cmp_24_0
    slt     a4,a2,a1
              #                    free a1
              #                    free a2
              #                    free a4
              #                     73   br i1 temp_8_cmp_24_0, label branch_short_circuit_c_true_185, label UP_29_0 
              #                    occupy a4 with temp_8_cmp_24_0
              #                    free a4
              #                    occupy a4 with temp_8_cmp_24_0
              #                    store to temp_8_cmp_24_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_8_cmp_24_0
              #                    occupy a2 with temp_8_cmp_24_0
              #                    load from temp_8_cmp_24_0 in mem


    lb      a2,6(sp)
    bnez    a2, .branch_short_circuit_c_true_185
              #                    free a2
    j       .UP_29_0
              #                    regtab     a0:Freed { symidx: f_21_1, tracked: true } |     a1:Freed { symidx: ch_21_1, tracked: true } |     a2:Freed { symidx: temp_8_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_7_cmp_24_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     434  label UP_29_0: 
.UP_29_0:
              #                     473  untrack temp_7_cmp_24_0 
              #                    occupy a3 with temp_7_cmp_24_0
              #                    release a3 with temp_7_cmp_24_0
              #                     472  untrack temp_6_ret_of_getch_26_0 
              #                     471  untrack f_21_3 
              #                     470  untrack temp_8_cmp_24_0 
              #                    occupy a2 with temp_8_cmp_24_0
              #                    release a2 with temp_8_cmp_24_0
              #                     469  untrack temp_12_cmp_27_0 
              #                     441  ch_21_3 = i32 ch_21_1 
              #                    occupy a1 with ch_21_1
              #                    occupy a2 with ch_21_3
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     442  x_21_1 = i32 0_0 
              #                    occupy a3 with x_21_1
    li      a3, 0
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_185 
    j       .branch_short_circuit_c_false_185
              #                    regtab     a0:Freed { symidx: f_21_1, tracked: true } |     a1:Freed { symidx: ch_21_1, tracked: true } |     a2:Freed { symidx: ch_21_3, tracked: true } |     a3:Freed { symidx: x_21_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     70   label branch_short_circuit_c_false_185: 
.branch_short_circuit_c_false_185:
              #                     77   temp_9_cmp_31_0 = icmp i32 Sge ch_21_3, 48_0 
              #                    occupy a2 with ch_21_3
              #                    occupy a4 with 48_0
    li      a4, 48
              #                    occupy a5 with temp_9_cmp_31_0
    slt     a5,a2,a4
    xori    a5,a5,1
              #                    free a2
              #                    free a4
              #                    free a5
              #                     85   br i1 temp_9_cmp_31_0, label branch_short_circuit_p_true_201, label branch_short_circuit_c_false_201 
              #                    occupy a5 with temp_9_cmp_31_0
              #                    free a5
              #                    occupy a5 with temp_9_cmp_31_0
    bnez    a5, .branch_short_circuit_p_true_201
              #                    free a5
    j       .branch_short_circuit_c_false_201
              #                    regtab     a0:Freed { symidx: f_21_1, tracked: true } |     a1:Freed { symidx: ch_21_1, tracked: true } |     a2:Freed { symidx: ch_21_3, tracked: true } |     a3:Freed { symidx: x_21_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_31_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     82   label branch_short_circuit_p_true_201: 
.branch_short_circuit_p_true_201:
              #                     79   temp_10_cmp_31_0 = icmp i32 Sle ch_21_3, 57_0 
              #                    occupy a2 with ch_21_3
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a6 with temp_10_cmp_31_0
    slt     a6,a4,a2
    xori    a6,a6,1
              #                    free a2
              #                    free a4
              #                    free a6
              #                     84   br i1 temp_10_cmp_31_0, label branch_short_circuit_c_true_201, label branch_short_circuit_c_false_201 
              #                    occupy a6 with temp_10_cmp_31_0
              #                    free a6
              #                    occupy a6 with temp_10_cmp_31_0
    bnez    a6, .branch_short_circuit_c_true_201
              #                    free a6
              #                    occupy a6 with temp_10_cmp_31_0
              #                    store to temp_10_cmp_31_0 in mem offset legal
    sb      a6,4(sp)
              #                    release a6 with temp_10_cmp_31_0
    j       .branch_short_circuit_c_false_201
              #                    regtab     a0:Freed { symidx: f_21_1, tracked: true } |     a1:Freed { symidx: ch_21_1, tracked: true } |     a2:Freed { symidx: ch_21_3, tracked: true } |     a3:Freed { symidx: x_21_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_31_0, tracked: true } |     a6:Freed { symidx: temp_10_cmp_31_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     80   label branch_short_circuit_c_true_201: 
.branch_short_circuit_c_true_201:
              #                     52   temp_2_arithop_33_0 = Mul i32 x_21_1, 10_0 
              #                    occupy a4 with temp_2_arithop_33_0
              #                    occupy a3 with x_21_1
              #                    occupy a7 with 10_0
    li      a7, 10
    mulw    a4,a3,a7
              #                    free a3
              #                    free a7
              #                    free a4
              #                     54   temp_3_arithop_33_0 = Add i32 temp_2_arithop_33_0, ch_21_3 
              #                    occupy a4 with temp_2_arithop_33_0
              #                    occupy a2 with ch_21_3
              #                    occupy s1 with temp_3_arithop_33_0
    ADDW    s1,a4,a2
              #                    free a4
              #                    free a2
              #                    free s1
              #                     56   temp_4_arithop_33_0 = Sub i32 temp_3_arithop_33_0, 48_0 
              #                    occupy s1 with temp_3_arithop_33_0
              #                    occupy s2 with 48_0
    li      s2, 48
              #                    occupy s3 with temp_4_arithop_33_0
              #                    regtab:    a0:Freed { symidx: f_21_1, tracked: true } |     a1:Freed { symidx: ch_21_1, tracked: true } |     a2:Freed { symidx: ch_21_3, tracked: true } |     a3:Freed { symidx: x_21_1, tracked: true } |     a4:Freed { symidx: temp_2_arithop_33_0, tracked: true } |     a5:Freed { symidx: temp_9_cmp_31_0, tracked: true } |     a6:Freed { symidx: temp_10_cmp_31_0, tracked: true } |     a7:Freed { symidx: 10_0, tracked: false } |     s1:Occupied { symidx: temp_3_arithop_33_0, tracked: true, occupy_count: 1 } |     s2:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     s3:Occupied { symidx: temp_4_arithop_33_0, tracked: true, occupy_count: 1 } |  released_gpr_count:5,released_fpr_count:24


    subw    s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                     57   (nop) 
              #                     59   temp_5_ret_of_getch_33_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_3_arithop_33_0
              #                    store to temp_3_arithop_33_0 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with temp_3_arithop_33_0
              #                    occupy s3 with temp_4_arithop_33_0
              #                    store to temp_4_arithop_33_0 in mem offset legal
    sw      s3,16(sp)
              #                    release s3 with temp_4_arithop_33_0
              #                    occupy a0 with f_21_1
              #                    store to f_21_1 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with f_21_1
              #                    occupy a1 with ch_21_1
              #                    store to ch_21_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_21_1
              #                    occupy a2 with ch_21_3
              #                    store to ch_21_3 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with ch_21_3
              #                    occupy a3 with x_21_1
              #                    store to x_21_1 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with x_21_1
              #                    occupy a4 with temp_2_arithop_33_0
              #                    store to temp_2_arithop_33_0 in mem offset legal
    sw      a4,24(sp)
              #                    release a4 with temp_2_arithop_33_0
              #                    occupy a5 with temp_9_cmp_31_0
              #                    store to temp_9_cmp_31_0 in mem offset legal
    sb      a5,5(sp)
              #                    release a5 with temp_9_cmp_31_0
              #                    occupy a6 with temp_10_cmp_31_0
              #                    store to temp_10_cmp_31_0 in mem offset legal
    sb      a6,4(sp)
              #                    release a6 with temp_10_cmp_31_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     60   (nop) 
              #                     443  x_21_1 = i32 temp_4_arithop_33_0 
              #                    occupy a1 with temp_4_arithop_33_0
              #                    load from temp_4_arithop_33_0 in mem


    lw      a1,16(sp)
              #                    occupy a2 with x_21_1
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     444  ch_21_3 = i32 temp_5_ret_of_getch_33_0 
              #                    occupy a0 with temp_5_ret_of_getch_33_0
              #                    occupy a3 with ch_21_3
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_185 
              #                    occupy a3 with ch_21_3
              #                    store to ch_21_3 in mem offset legal
    sw      a3,44(sp)
              #                    release a3 with ch_21_3
              #                    occupy a2 with x_21_1
              #                    store to x_21_1 in mem offset legal
    sw      a2,40(sp)
              #                    release a2 with x_21_1
              #                    occupy a3 with x_21_1
              #                    load from x_21_1 in mem


    lw      a3,40(sp)
              #                    occupy a1 with temp_4_arithop_33_0
              #                    store to temp_4_arithop_33_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_4_arithop_33_0
              #                    occupy a1 with ch_21_1
              #                    load from ch_21_1 in mem


    lw      a1,48(sp)
              #                    occupy a0 with temp_5_ret_of_getch_33_0
              #                    store to temp_5_ret_of_getch_33_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_5_ret_of_getch_33_0
              #                    occupy a0 with f_21_1
              #                    load from f_21_1 in mem


    lw      a0,36(sp)
              #                    occupy a2 with ch_21_3
              #                    load from ch_21_3 in mem


    lw      a2,44(sp)
    j       .branch_short_circuit_c_false_185
              #                    regtab     a0:Freed { symidx: f_21_1, tracked: true } |     a1:Freed { symidx: ch_21_1, tracked: true } |     a2:Freed { symidx: ch_21_3, tracked: true } |     a3:Freed { symidx: x_21_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_31_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     81   label branch_short_circuit_c_false_201: 
.branch_short_circuit_c_false_201:
              #                     87   temp_11__803_0 = icmp i32 Ne f_21_1, 0_0 
              #                    occupy a0 with f_21_1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a6 with temp_11__803_0
    xor     a6,a0,a4
    snez    a6, a6
              #                    free a0
              #                    free a4
              #                    free a6
              #                     474  untrack f_21_1 
              #                    occupy a0 with f_21_1
              #                    release a0 with f_21_1
              #                     90   br i1 temp_11__803_0, label branch_true_37, label branch_false_37 
              #                    occupy a6 with temp_11__803_0
              #                    free a6
              #                    occupy a6 with temp_11__803_0
    bnez    a6, .branch_true_37
              #                    free a6
    j       .branch_false_37
              #                    regtab     a1:Freed { symidx: ch_21_1, tracked: true } |     a2:Freed { symidx: ch_21_3, tracked: true } |     a3:Freed { symidx: x_21_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_31_0, tracked: true } |     a6:Freed { symidx: temp_11__803_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     88   label branch_true_37: 
.branch_true_37:
              #                     475  untrack temp_11__803_0 
              #                    occupy a6 with temp_11__803_0
              #                    release a6 with temp_11__803_0
              #                     49   temp_1__36_0 = Sub i32 0_0, x_21_1 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a3 with x_21_1
              #                    occupy a4 with temp_1__36_0
              #                    regtab:    a0:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a1:Freed { symidx: ch_21_1, tracked: true } |     a2:Freed { symidx: ch_21_3, tracked: true } |     a3:Occupied { symidx: x_21_1, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: temp_1__36_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_9_cmp_31_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24


    subw    a4,a0,a3
              #                    free a0
              #                    free a3
              #                    free a4
              #                     50   ret temp_1__36_0 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    occupy a4 with temp_1__36_0
              #                    store to temp_1__36_0 in mem offset legal
    sw      a4,28(sp)
              #                    release a4 with temp_1__36_0
              #                    occupy a0 with temp_1__36_0
              #                    load from temp_1__36_0 in mem


    lw      a0,28(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ch_21_1, tracked: true } |     a2:Freed { symidx: ch_21_3, tracked: true } |     a3:Freed { symidx: x_21_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_31_0, tracked: true } |     a6:Freed { symidx: temp_11__803_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     89   label branch_false_37: 
.branch_false_37:
              #                     477  untrack temp_11__803_0 
              #                    occupy a6 with temp_11__803_0
              #                    release a6 with temp_11__803_0
              #                     476  untrack temp_1__36_0 
              #                     46   ret x_21_1 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    occupy a3 with x_21_1
              #                    store to x_21_1 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with x_21_1
              #                    occupy a0 with x_21_1
              #                    load from x_21_1 in mem


    lw      a0,40(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     33   Define find_0 "x_40_0," -> find_ret_0 
    .globl find
    .type find,@function
find:
              #                    mem layout:|ra_find:8 at 56|s0_find:8 at 48|x _s40 _i0:4 at 44|none:4 at 40|temp_13_ptr_of_*fa_0:8 at 32|temp_15_ret_of_find _s42 _i0:4 at 28|none:4 at 24|temp_16_ptr_of_*fa_0:8 at 16|temp_17_ptr_of_*fa_0:8 at 8|temp_18_ele_of_*fa_0 _s43 _i0:4 at 4|temp_19_cmp _s43 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-64
              #                    store to ra_find_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_find_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     368  fa_0_1 = chi fa_0_0:33 
              #                     99   alloc ptr->i32 [temp_13_ptr_of_*fa_0_42] 
              #                     101  alloc i32 [temp_14_ele_of_*fa_0_42] 
              #                     104  alloc i32 [temp_15_ret_of_find_42] 
              #                     107  alloc i32 [asdf_42] 
              #                     108  alloc ptr->i32 [temp_16_ptr_of_*fa_0_42] 
              #                     116  alloc ptr->i32 [temp_17_ptr_of_*fa_0_43] 
              #                     118  alloc i32 [temp_18_ele_of_*fa_0_43] 
              #                     121  alloc i1 [temp_19_cmp_43] 
              #                    regtab     a0:Freed { symidx: x_40_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     117  temp_17_ptr_of_*fa_0_43 = GEP *fa_0:Array:i32:[None] [Some(x_40_0)] 
              #                    occupy a1 with temp_17_ptr_of_*fa_0_43
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with x_40_0
    mv      a2, a0
              #                    free a0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *fa_0
              #                       load label fa as ptr to reg
    la      a3, fa
              #                    occupy reg a3 with *fa_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     119  temp_18_ele_of_*fa_0_43_0 = load temp_17_ptr_of_*fa_0_43:ptr->i32 
              #                    occupy a1 with temp_17_ptr_of_*fa_0_43
              #                    occupy a4 with temp_18_ele_of_*fa_0_43_0
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     120  mu fa_0_1:119 
              #                     122  temp_19_cmp_43_0 = icmp i32 Eq x_40_0, temp_18_ele_of_*fa_0_43_0 
              #                    occupy a0 with x_40_0
              #                    occupy a4 with temp_18_ele_of_*fa_0_43_0
              #                    occupy a5 with temp_19_cmp_43_0
    xor     a5,a0,a4
    seqz    a5, a5
              #                    free a0
              #                    free a4
              #                    free a5
              #                     125  br i1 temp_19_cmp_43_0, label branch_true_44, label branch_false_44 
              #                    occupy a5 with temp_19_cmp_43_0
              #                    free a5
              #                    occupy a5 with temp_19_cmp_43_0
    bnez    a5, .branch_true_44
              #                    free a5
    j       .branch_false_44
              #                    regtab     a0:Freed { symidx: x_40_0, tracked: true } |     a1:Freed { symidx: temp_17_ptr_of_*fa_0_43, tracked: true } |     a4:Freed { symidx: temp_18_ele_of_*fa_0_43_0, tracked: true } |     a5:Freed { symidx: temp_19_cmp_43_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     123  label branch_true_44: 
.branch_true_44:
              #                     481  untrack temp_18_ele_of_*fa_0_43_0 
              #                    occupy a4 with temp_18_ele_of_*fa_0_43_0
              #                    release a4 with temp_18_ele_of_*fa_0_43_0
              #                     480  untrack temp_17_ptr_of_*fa_0_43 
              #                    occupy a1 with temp_17_ptr_of_*fa_0_43
              #                    release a1 with temp_17_ptr_of_*fa_0_43
              #                     479  untrack temp_19_cmp_43_0 
              #                    occupy a5 with temp_19_cmp_43_0
              #                    release a5 with temp_19_cmp_43_0
              #                     478  untrack temp_15_ret_of_find_42_0 
              #                     369  mu fa_0_1:115 
              #                     115  ret x_40_0 
              #                    load from ra_find_0 in mem
    ld      ra,56(sp)
              #                    load from s0_find_0 in mem
    ld      s0,48(sp)
              #                    occupy a0 with x_40_0
              #                    store to x_40_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with x_40_0
              #                    occupy a0 with x_40_0
              #                    load from x_40_0 in mem


    lw      a0,44(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_40_0, tracked: true } |     a1:Freed { symidx: temp_17_ptr_of_*fa_0_43, tracked: true } |     a4:Freed { symidx: temp_18_ele_of_*fa_0_43_0, tracked: true } |     a5:Freed { symidx: temp_19_cmp_43_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     124  label branch_false_44: 
.branch_false_44:
              #                     483  untrack x_40_0 
              #                    occupy a0 with x_40_0
              #                    release a0 with x_40_0
              #                     482  untrack temp_19_cmp_43_0 
              #                    occupy a5 with temp_19_cmp_43_0
              #                    release a5 with temp_19_cmp_43_0
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a1:Freed { symidx: temp_17_ptr_of_*fa_0_43, tracked: true } |     a4:Freed { symidx: temp_18_ele_of_*fa_0_43_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     100  (nop) 
              #                     102  (nop) 
              #                     103  mu fa_0_1:102 
              #                     105  temp_15_ret_of_find_42_0 =  Call i32 find_0(temp_18_ele_of_*fa_0_43_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_17_ptr_of_*fa_0_43
              #                    store to temp_17_ptr_of_*fa_0_43 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_17_ptr_of_*fa_0_43
              #                    occupy a4 with temp_18_ele_of_*fa_0_43_0
              #                    store to temp_18_ele_of_*fa_0_43_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_18_ele_of_*fa_0_43_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_18_ele_of_*fa_0_43_0_0
              #                    load from temp_18_ele_of_*fa_0_43_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    find
              #                     484  untrack temp_18_ele_of_*fa_0_43_0 
              #                     370  mu fa_0_1:105 
              #                     371  fa_0_2 = chi fa_0_1:105 
              #                     106  (nop) 
              #                     109  (nop) 
              #                     110  store temp_15_ret_of_find_42_0:i32 temp_17_ptr_of_*fa_0_43:ptr->i32 
              #                    occupy a1 with temp_17_ptr_of_*fa_0_43
              #                    load from temp_17_ptr_of_*fa_0_43 in mem
    ld      a1,8(sp)
              #                    occupy a0 with temp_15_ret_of_find_42_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     485  untrack temp_17_ptr_of_*fa_0_43 
              #                    occupy a1 with temp_17_ptr_of_*fa_0_43
              #                    release a1 with temp_17_ptr_of_*fa_0_43
              #                     111  fa_0_3 = chi fa_0_2:110 
              #                     372  mu fa_0_3:113 
              #                     113  ret temp_15_ret_of_find_42_0 
              #                    load from ra_find_0 in mem
    ld      ra,56(sp)
              #                    load from s0_find_0 in mem
    ld      s0,48(sp)
              #                    occupy a0 with temp_15_ret_of_find_42_0
              #                    store to temp_15_ret_of_find_42_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_15_ret_of_find_42_0
              #                    occupy a0 with temp_15_ret_of_find_42_0
              #                    load from temp_15_ret_of_find_42_0 in mem


    lw      a0,28(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     34   Define same_0 "x_49_0,y_49_0," -> same_ret_0 
    .globl same
    .type same,@function
same:
              #                    mem layout:|ra_same:8 at 32|s0_same:8 at 24|x _s49 _i0:4 at 20|y _s49 _i0:4 at 16|temp_20_ret_of_find _s51 _i0:4 at 12|temp_21_ret_of_find _s51 _i0:4 at 8|temp_22_cmp _s54 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-40
              #                    store to ra_same_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_same_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     373  fa_0_4 = chi fa_0_0:34 
              #                     128  alloc i32 [temp_20_ret_of_find_51] 
              #                     131  alloc i32 [temp_21_ret_of_find_51] 
              #                     138  alloc i1 [temp_22_cmp_54] 
              #                    regtab     a0:Freed { symidx: x_49_0, tracked: true } |     a1:Freed { symidx: y_49_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     129  temp_20_ret_of_find_51_0 =  Call i32 find_0(x_49_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with x_49_0
              #                    store to x_49_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with x_49_0
              #                    occupy a1 with y_49_0
              #                    store to y_49_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with y_49_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_49_0_0
              #                    load from x_49_0 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    find
              #                     487  untrack x_49_0 
              #                     374  mu fa_0_4:129 
              #                     375  fa_0_5 = chi fa_0_4:129 
              #                     130  (nop) 
              #                     132  temp_21_ret_of_find_51_0 =  Call i32 find_0(y_49_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_20_ret_of_find_51_0
              #                    store to temp_20_ret_of_find_51_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_20_ret_of_find_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_y_49_0_0
              #                    load from y_49_0 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    find
              #                     486  untrack y_49_0 
              #                     376  mu fa_0_5:132 
              #                     377  fa_0_6 = chi fa_0_5:132 
              #                     133  (nop) 
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: temp_21_ret_of_find_51_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     139  temp_22_cmp_54_0 = icmp i32 Eq temp_20_ret_of_find_51_0, temp_21_ret_of_find_51_0 
              #                    occupy a1 with temp_20_ret_of_find_51_0
              #                    load from temp_20_ret_of_find_51_0 in mem


    lw      a1,12(sp)
              #                    occupy a0 with temp_21_ret_of_find_51_0
              #                    occupy a2 with temp_22_cmp_54_0
    xor     a2,a1,a0
    seqz    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                     489  untrack temp_21_ret_of_find_51_0 
              #                    occupy a0 with temp_21_ret_of_find_51_0
              #                    release a0 with temp_21_ret_of_find_51_0
              #                     488  untrack temp_20_ret_of_find_51_0 
              #                    occupy a1 with temp_20_ret_of_find_51_0
              #                    release a1 with temp_20_ret_of_find_51_0
              #                     142  br i1 temp_22_cmp_54_0, label branch_true_55, label branch_false_55 
              #                    occupy a2 with temp_22_cmp_54_0
              #                    free a2
              #                    occupy a2 with temp_22_cmp_54_0
    bnez    a2, .branch_true_55
              #                    free a2
    j       .branch_false_55
              #                    regtab     a2:Freed { symidx: temp_22_cmp_54_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     140  label branch_true_55: 
.branch_true_55:
              #                     490  untrack temp_22_cmp_54_0 
              #                    occupy a2 with temp_22_cmp_54_0
              #                    release a2 with temp_22_cmp_54_0
              #                     378  mu fa_0_6:137 
              #                     137  ret 1_0 
              #                    load from ra_same_0 in mem
    ld      ra,32(sp)
              #                    load from s0_same_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_22_cmp_54_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     141  label branch_false_55: 
.branch_false_55:
              #                     491  untrack temp_22_cmp_54_0 
              #                    occupy a2 with temp_22_cmp_54_0
              #                    release a2 with temp_22_cmp_54_0
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     379  mu fa_0_6:135 
              #                     135  ret 0_0 
              #                    load from ra_same_0 in mem
    ld      ra,32(sp)
              #                    load from s0_same_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     35   Define prim_0 "" -> prim_ret_0 
    .globl prim
    .type prim,@function
prim:
              #                    mem layout:|ra_prim:8 at 320|s0_prim:8 at 312|i _s59 _i1:4 at 308|i _s59 _i4:4 at 304|i _s59 _i7:4 at 300|res _s59 _i1:4 at 296|temp_23_ptr_of_*c_0:8 at 288|temp_24_ele_of_*c_0 _s92 _i0:4 at 284|temp_25_arithop _s92 _i0:4 at 280|temp_26_ptr_of_*u_0:8 at 272|temp_28_ret_of_find _s92 _i0:4 at 268|none:4 at 264|temp_29_ptr_of_*fa_0:8 at 256|temp_30_ptr_of_*v_0:8 at 248|temp_32_arithop _s92 _i0:4 at 244|none:4 at 240|temp_33_ptr_of_*fa_0:8 at 232|temp_34_arithop _s85 _i0:4 at 228|temp_35_arithop _s63 _i0:4 at 224|j _s63 _i1:4 at 220|temp_37_arithop _s67 _i0:4 at 216|temp_38_ptr_of_*u_0:8 at 208|temp_39_ele_of_*u_0 _s70 _i0:4 at 204|none:4 at 200|temp_40_ptr_of_*u_0:8 at 192|temp_41_ptr_of_*u_0:8 at 184|temp_42_ele_of_*u_0 _s70 _i0:4 at 180|none:4 at 176|temp_43_ptr_of_*u_0:8 at 168|temp_44_ptr_of_*v_0:8 at 160|temp_45_ele_of_*v_0 _s70 _i0:4 at 156|none:4 at 152|temp_46_ptr_of_*v_0:8 at 144|temp_47_ptr_of_*v_0:8 at 136|temp_48_ele_of_*v_0 _s70 _i0:4 at 132|none:4 at 128|temp_49_ptr_of_*v_0:8 at 120|temp_50_ptr_of_*c_0:8 at 112|temp_52_ptr_of_*c_0:8 at 104|temp_53_ptr_of_*c_0:8 at 96|temp_55_ptr_of_*c_0:8 at 88|temp_56_value_from_ptr _s61 _i0:4 at 84|temp_57_cmp _s61 _i0:1 at 83|none:3 at 80|temp_58_value_from_ptr _s83 _i0:4 at 76|temp_59_cmp _s83 _i0:1 at 75|temp_61_cmp _s90 _i0:1 at 74|none:2 at 72|temp_62_ptr_of_*u_0:8 at 64|temp_63_ele_of_*u_0 _s93 _i0:4 at 60|none:4 at 56|temp_64_ptr_of_*v_0:8 at 48|temp_65_ele_of_*v_0 _s93 _i0:4 at 44|temp_66_ret_of_same _s93 _i0:4 at 40|temp_67_ _s2623 _i0:1 at 39|temp_69_cmp _s65 _i0:1 at 38|none:6 at 32|temp_70_ptr_of_*c_0:8 at 24|temp_71_ele_of_*c_0 _s68 _i0:4 at 20|none:4 at 16|temp_72_ptr_of_*c_0:8 at 8|temp_73_ele_of_*c_0 _s68 _i0:4 at 4|temp_74_cmp _s68 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-328
              #                    store to ra_prim_0 in mem offset legal
    sd      ra,320(sp)
              #                    store to s0_prim_0 in mem offset legal
    sd      s0,312(sp)
    addi    s0,sp,328
              #                     380  u_0_1 = chi u_0_0:35 
              #                     381  c_0_1 = chi c_0_0:35 
              #                     382  fa_0_7 = chi fa_0_0:35 
              #                     383  v_0_1 = chi v_0_0:35 
              #                     146  alloc i32 [i_59] 
              #                     150  alloc i32 [res_59] 
              #                     153  alloc ptr->i32 [temp_23_ptr_of_*c_0_92] 
              #                     155  alloc i32 [temp_24_ele_of_*c_0_92] 
              #                     158  alloc i32 [temp_25_arithop_92] 
              #                     161  alloc ptr->i32 [temp_26_ptr_of_*u_0_92] 
              #                     163  alloc i32 [temp_27_ele_of_*u_0_92] 
              #                     166  alloc i32 [temp_28_ret_of_find_92] 
              #                     168  alloc ptr->i32 [temp_29_ptr_of_*fa_0_92] 
              #                     170  alloc ptr->i32 [temp_30_ptr_of_*v_0_92] 
              #                     172  alloc i32 [temp_31_ele_of_*v_0_92] 
              #                     177  alloc i32 [temp_32_arithop_92] 
              #                     180  alloc ptr->i32 [temp_33_ptr_of_*fa_0_85] 
              #                     184  alloc i32 [temp_34_arithop_85] 
              #                     187  alloc i32 [temp_35_arithop_63] 
              #                     190  alloc i32 [j_63] 
              #                     191  alloc i32 [temp_36_arithop_63] 
              #                     194  alloc i32 [temp_37_arithop_67] 
              #                     197  alloc ptr->i32 [temp_38_ptr_of_*u_0_70] 
              #                     199  alloc i32 [temp_39_ele_of_*u_0_70] 
              #                     203  alloc i32 [t_70] 
              #                     204  alloc ptr->i32 [temp_40_ptr_of_*u_0_70] 
              #                     206  alloc ptr->i32 [temp_41_ptr_of_*u_0_70] 
              #                     208  alloc i32 [temp_42_ele_of_*u_0_70] 
              #                     213  alloc ptr->i32 [temp_43_ptr_of_*u_0_70] 
              #                     217  alloc ptr->i32 [temp_44_ptr_of_*v_0_70] 
              #                     219  alloc i32 [temp_45_ele_of_*v_0_70] 
              #                     223  alloc ptr->i32 [temp_46_ptr_of_*v_0_70] 
              #                     225  alloc ptr->i32 [temp_47_ptr_of_*v_0_70] 
              #                     227  alloc i32 [temp_48_ele_of_*v_0_70] 
              #                     232  alloc ptr->i32 [temp_49_ptr_of_*v_0_70] 
              #                     236  alloc ptr->i32 [temp_50_ptr_of_*c_0_70] 
              #                     238  alloc i32 [temp_51_ele_of_*c_0_70] 
              #                     242  alloc ptr->i32 [temp_52_ptr_of_*c_0_70] 
              #                     244  alloc ptr->i32 [temp_53_ptr_of_*c_0_70] 
              #                     246  alloc i32 [temp_54_ele_of_*c_0_70] 
              #                     251  alloc ptr->i32 [temp_55_ptr_of_*c_0_70] 
              #                     255  alloc i32 [temp_56_value_from_ptr_61] 
              #                     258  alloc i1 [temp_57_cmp_61] 
              #                     264  alloc i32 [temp_58_value_from_ptr_83] 
              #                     267  alloc i1 [temp_59_cmp_83] 
              #                     273  alloc i32 [temp_60_value_from_ptr_90] 
              #                     276  alloc i1 [temp_61_cmp_90] 
              #                     284  alloc ptr->i32 [temp_62_ptr_of_*u_0_93] 
              #                     286  alloc i32 [temp_63_ele_of_*u_0_93] 
              #                     289  alloc ptr->i32 [temp_64_ptr_of_*v_0_93] 
              #                     291  alloc i32 [temp_65_ele_of_*v_0_93] 
              #                     294  alloc i32 [temp_66_ret_of_same_93] 
              #                     296  alloc i1 [temp_67__2623] 
              #                     301  alloc i32 [temp_68_value_from_ptr_65] 
              #                     304  alloc i1 [temp_69_cmp_65] 
              #                     310  alloc ptr->i32 [temp_70_ptr_of_*c_0_68] 
              #                     312  alloc i32 [temp_71_ele_of_*c_0_68] 
              #                     315  alloc ptr->i32 [temp_72_ptr_of_*c_0_68] 
              #                     317  alloc i32 [temp_73_ele_of_*c_0_68] 
              #                     320  alloc i1 [temp_74_cmp_68] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     145  (nop) 
              #                     256  temp_56_value_from_ptr_61_0 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_56_value_from_ptr_61_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     257  mu m_0_0:256 
              #                     302  (nop) 
              #                     303  mu m_0_0:302 
              #                     445  i_59_1 = i32 0_0 
              #                    occupy a2 with i_59_1
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: i_59_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     260  label while.head_62: 
.while.head_62:
              #                     259  temp_57_cmp_61_0 = icmp i32 Slt i_59_1, temp_56_value_from_ptr_61_0 
              #                    occupy a2 with i_59_1
              #                    occupy a1 with temp_56_value_from_ptr_61_0
              #                    occupy a0 with temp_57_cmp_61_0
    slt     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                     263  br i1 temp_57_cmp_61_0, label while.body_62, label while.exit_62 
              #                    occupy a0 with temp_57_cmp_61_0
              #                    free a0
              #                    occupy a0 with temp_57_cmp_61_0
    bnez    a0, .while.body_62
              #                    free a0
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: i_59_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     261  label while.body_62: 
.while.body_62:
              #                     188  temp_35_arithop_63_0 = Add i32 i_59_1, 1_0 
              #                    occupy a2 with i_59_1
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_35_arithop_63_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     189  (nop) 
              #                     316  temp_72_ptr_of_*c_0_68 = GEP *c_0:Array:i32:[None] [Some(i_59_1)] 
              #                    occupy a5 with temp_72_ptr_of_*c_0_68
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_59_1
    mv      a6, a2
              #                    free a2
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a7 with *c_0
              #                       load label c as ptr to reg
    la      a7, c
              #                    occupy reg a7 with *c_0
    add     a5,a5,a7
              #                    free a7
              #                    free a5
              #                     198  temp_38_ptr_of_*u_0_70 = GEP *u_0:Array:i32:[None] [Some(i_59_1)] 
              #                    occupy s1 with temp_38_ptr_of_*u_0_70
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_59_1
    mv      s2, a2
              #                    free a2
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *u_0
              #                       load label u as ptr to reg
    la      s3, u
              #                    occupy reg s3 with *u_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                     205  (nop) 
              #                     218  temp_44_ptr_of_*v_0_70 = GEP *v_0:Array:i32:[None] [Some(i_59_1)] 
              #                    occupy s4 with temp_44_ptr_of_*v_0_70
    li      s4, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_59_1
    mv      s5, a2
              #                    free a2
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy s6 with *v_0
              #                       load label v as ptr to reg
    la      s6, v
              #                    occupy reg s6 with *v_0
    add     s4,s4,s6
              #                    free s6
              #                    free s4
              #                     224  (nop) 
              #                     237  (nop) 
              #                     243  (nop) 
              #                     446  j_63_1 = i32 temp_35_arithop_63_0 
              #                    occupy a4 with temp_35_arithop_63_0
              #                    occupy s6 with j_63_1
    mv      s6, a4
              #                    free a4
              #                    occupy a4 with temp_35_arithop_63_0
              #                    store to temp_35_arithop_63_0 in mem offset legal
    sw      a4,224(sp)
              #                    release a4 with temp_35_arithop_63_0
              #                    free s6
              #                          jump label: while.head_66 
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: i_59_1, tracked: true } |     a5:Freed { symidx: temp_72_ptr_of_*c_0_68, tracked: true } |     s1:Freed { symidx: temp_38_ptr_of_*u_0_70, tracked: true } |     s4:Freed { symidx: temp_44_ptr_of_*v_0_70, tracked: true } |     s6:Freed { symidx: j_63_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     306  label while.head_66: 
.while.head_66:
              #                     305  temp_69_cmp_65_0 = icmp i32 Slt j_63_1, temp_56_value_from_ptr_61_0 
              #                    occupy s6 with j_63_1
              #                    occupy a1 with temp_56_value_from_ptr_61_0
              #                    occupy a3 with temp_69_cmp_65_0
    slt     a3,s6,a1
              #                    free s6
              #                    occupy s6 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      s6,220(sp)
              #                    release s6 with j_63_1
              #                    free a1
              #                    free a3
              #                     309  br i1 temp_69_cmp_65_0, label while.body_66, label while.exit_66 
              #                    occupy a3 with temp_69_cmp_65_0
              #                    free a3
              #                    occupy a3 with temp_69_cmp_65_0
    bnez    a3, .while.body_66
              #                    free a3
    j       .while.exit_66
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: i_59_1, tracked: true } |     a3:Freed { symidx: temp_69_cmp_65_0, tracked: true } |     a5:Freed { symidx: temp_72_ptr_of_*c_0_68, tracked: true } |     s1:Freed { symidx: temp_38_ptr_of_*u_0_70, tracked: true } |     s4:Freed { symidx: temp_44_ptr_of_*v_0_70, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     307  label while.body_66: 
.while.body_66:
              #                     311  temp_70_ptr_of_*c_0_68 = GEP *c_0:Array:i32:[None] [Some(j_63_1)] 
              #                    occupy a4 with temp_70_ptr_of_*c_0_68
    li      a4, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with j_63_1
              #                    load from j_63_1 in mem


    lw      a7,220(sp)
    mv      a6, a7
              #                    free a7
              #                    occupy a7 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      a7,220(sp)
              #                    release a7 with j_63_1
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a6 with *c_0
              #                       load label c as ptr to reg
    la      a6, c
              #                    occupy reg a6 with *c_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                    occupy a4 with temp_70_ptr_of_*c_0_68
              #                    store to temp_70_ptr_of_*c_0_68 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_70_ptr_of_*c_0_68
              #                     313  temp_71_ele_of_*c_0_68_0 = load temp_70_ptr_of_*c_0_68:ptr->i32 
              #                    occupy a4 with temp_70_ptr_of_*c_0_68
              #                    load from temp_70_ptr_of_*c_0_68 in mem
    ld      a4,24(sp)
              #                    occupy a6 with temp_71_ele_of_*c_0_68_0
    lw      a6,0(a4)
              #                    free a6
              #                    occupy a6 with temp_71_ele_of_*c_0_68_0
              #                    store to temp_71_ele_of_*c_0_68_0 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_71_ele_of_*c_0_68_0
              #                    free a4
              #                    occupy a4 with temp_70_ptr_of_*c_0_68
              #                    store to temp_70_ptr_of_*c_0_68 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_70_ptr_of_*c_0_68
              #                     314  mu c_0_3:313 
              #                     318  temp_73_ele_of_*c_0_68_0 = load temp_72_ptr_of_*c_0_68:ptr->i32 
              #                    occupy a5 with temp_72_ptr_of_*c_0_68
              #                    occupy a4 with temp_73_ele_of_*c_0_68_0
    lw      a4,0(a5)
              #                    free a4
              #                    occupy a4 with temp_73_ele_of_*c_0_68_0
              #                    store to temp_73_ele_of_*c_0_68_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_73_ele_of_*c_0_68_0
              #                    free a5
              #                     319  mu c_0_3:318 
              #                     321  temp_74_cmp_68_0 = icmp i32 Sgt temp_73_ele_of_*c_0_68_0, temp_71_ele_of_*c_0_68_0 
              #                    occupy a4 with temp_73_ele_of_*c_0_68_0
              #                    load from temp_73_ele_of_*c_0_68_0 in mem


    lw      a4,4(sp)
              #                    occupy a6 with temp_71_ele_of_*c_0_68_0
              #                    load from temp_71_ele_of_*c_0_68_0 in mem


    lw      a6,20(sp)
              #                    occupy a7 with temp_74_cmp_68_0
    slt     a7,a6,a4
              #                    free a4
              #                    occupy a4 with temp_73_ele_of_*c_0_68_0
              #                    store to temp_73_ele_of_*c_0_68_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_73_ele_of_*c_0_68_0
              #                    free a6
              #                    occupy a6 with temp_71_ele_of_*c_0_68_0
              #                    store to temp_71_ele_of_*c_0_68_0 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_71_ele_of_*c_0_68_0
              #                    free a7
              #                    occupy a7 with temp_74_cmp_68_0
              #                    store to temp_74_cmp_68_0 in mem offset legal
    sb      a7,3(sp)
              #                    release a7 with temp_74_cmp_68_0
              #                     324  br i1 temp_74_cmp_68_0, label branch_true_69, label branch_false_69 
              #                    occupy a4 with temp_74_cmp_68_0
              #                    load from temp_74_cmp_68_0 in mem


    lb      a4,3(sp)
              #                    free a4
              #                    occupy a4 with temp_74_cmp_68_0
              #                    store to temp_74_cmp_68_0 in mem offset legal
    sb      a4,3(sp)
              #                    release a4 with temp_74_cmp_68_0
              #                    occupy a4 with temp_74_cmp_68_0
              #                    load from temp_74_cmp_68_0 in mem


    lb      a4,3(sp)
    bnez    a4, .branch_true_69
              #                    free a4
              #                    occupy a4 with temp_74_cmp_68_0
              #                    store to temp_74_cmp_68_0 in mem offset legal
    sb      a4,3(sp)
              #                    release a4 with temp_74_cmp_68_0
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: i_59_1, tracked: true } |     a3:Freed { symidx: temp_69_cmp_65_0, tracked: true } |     a5:Freed { symidx: temp_72_ptr_of_*c_0_68, tracked: true } |     s1:Freed { symidx: temp_38_ptr_of_*u_0_70, tracked: true } |     s4:Freed { symidx: temp_44_ptr_of_*v_0_70, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     322  label branch_true_69: 
.branch_true_69:
              #                     494  untrack temp_74_cmp_68_0 
              #                     493  untrack temp_69_cmp_65_0 
              #                    occupy a3 with temp_69_cmp_65_0
              #                    release a3 with temp_69_cmp_65_0
              #                     200  temp_39_ele_of_*u_0_70_0 = load temp_38_ptr_of_*u_0_70:ptr->i32 
              #                    occupy s1 with temp_38_ptr_of_*u_0_70
              #                    occupy a3 with temp_39_ele_of_*u_0_70_0
    lw      a3,0(s1)
              #                    free a3
              #                    free s1
              #                     201  mu u_0_3:200 
              #                     202  (nop) 
              #                     207  temp_41_ptr_of_*u_0_70 = GEP *u_0:Array:i32:[None] [Some(j_63_1)] 
              #                    occupy a4 with temp_41_ptr_of_*u_0_70
    li      a4, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with j_63_1
              #                    load from j_63_1 in mem


    lw      a7,220(sp)
    mv      a6, a7
              #                    free a7
              #                    occupy a7 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      a7,220(sp)
              #                    release a7 with j_63_1
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a6 with *u_0
              #                       load label u as ptr to reg
    la      a6, u
              #                    occupy reg a6 with *u_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                    occupy a4 with temp_41_ptr_of_*u_0_70
              #                    store to temp_41_ptr_of_*u_0_70 in mem offset legal
    sd      a4,184(sp)
              #                    release a4 with temp_41_ptr_of_*u_0_70
              #                     209  temp_42_ele_of_*u_0_70_0 = load temp_41_ptr_of_*u_0_70:ptr->i32 
              #                    occupy a4 with temp_41_ptr_of_*u_0_70
              #                    load from temp_41_ptr_of_*u_0_70 in mem
    ld      a4,184(sp)
              #                    occupy a6 with temp_42_ele_of_*u_0_70_0
    lw      a6,0(a4)
              #                    free a6
              #                    occupy a6 with temp_42_ele_of_*u_0_70_0
              #                    store to temp_42_ele_of_*u_0_70_0 in mem offset legal
    sw      a6,180(sp)
              #                    release a6 with temp_42_ele_of_*u_0_70_0
              #                    free a4
              #                    occupy a4 with temp_41_ptr_of_*u_0_70
              #                    store to temp_41_ptr_of_*u_0_70 in mem offset legal
    sd      a4,184(sp)
              #                    release a4 with temp_41_ptr_of_*u_0_70
              #                     210  mu u_0_3:209 
              #                     211  store temp_42_ele_of_*u_0_70_0:i32 temp_38_ptr_of_*u_0_70:ptr->i32 
              #                    occupy s1 with temp_38_ptr_of_*u_0_70
              #                    occupy a4 with temp_42_ele_of_*u_0_70_0
              #                    load from temp_42_ele_of_*u_0_70_0 in mem


    lw      a4,180(sp)
    sw      a4,0(s1)
              #                    free a4
              #                    occupy a4 with temp_42_ele_of_*u_0_70_0
              #                    store to temp_42_ele_of_*u_0_70_0 in mem offset legal
    sw      a4,180(sp)
              #                    release a4 with temp_42_ele_of_*u_0_70_0
              #                    free s1
              #                     501  untrack temp_42_ele_of_*u_0_70_0 
              #                     212  u_0_4 = chi u_0_3:211 
              #                     214  (nop) 
              #                     215  store temp_39_ele_of_*u_0_70_0:i32 temp_41_ptr_of_*u_0_70:ptr->i32 
              #                    occupy a4 with temp_41_ptr_of_*u_0_70
              #                    load from temp_41_ptr_of_*u_0_70 in mem
    ld      a4,184(sp)
              #                    occupy a3 with temp_39_ele_of_*u_0_70_0
    sw      a3,0(a4)
              #                    free a3
              #                    occupy a3 with temp_39_ele_of_*u_0_70_0
              #                    store to temp_39_ele_of_*u_0_70_0 in mem offset legal
    sw      a3,204(sp)
              #                    release a3 with temp_39_ele_of_*u_0_70_0
              #                    free a4
              #                     500  untrack temp_41_ptr_of_*u_0_70 
              #                    occupy a4 with temp_41_ptr_of_*u_0_70
              #                    release a4 with temp_41_ptr_of_*u_0_70
              #                     495  untrack temp_39_ele_of_*u_0_70_0 
              #                     216  u_0_5 = chi u_0_4:215 
              #                     220  temp_45_ele_of_*v_0_70_0 = load temp_44_ptr_of_*v_0_70:ptr->i32 
              #                    occupy s4 with temp_44_ptr_of_*v_0_70
              #                    occupy a3 with temp_45_ele_of_*v_0_70_0
    lw      a3,0(s4)
              #                    free a3
              #                    free s4
              #                     221  mu v_0_3:220 
              #                     222  (nop) 
              #                     226  temp_47_ptr_of_*v_0_70 = GEP *v_0:Array:i32:[None] [Some(j_63_1)] 
              #                    occupy a4 with temp_47_ptr_of_*v_0_70
    li      a4, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with j_63_1
              #                    load from j_63_1 in mem


    lw      a7,220(sp)
    mv      a6, a7
              #                    free a7
              #                    occupy a7 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      a7,220(sp)
              #                    release a7 with j_63_1
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a6 with *v_0
              #                       load label v as ptr to reg
    la      a6, v
              #                    occupy reg a6 with *v_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                    occupy a4 with temp_47_ptr_of_*v_0_70
              #                    store to temp_47_ptr_of_*v_0_70 in mem offset legal
    sd      a4,136(sp)
              #                    release a4 with temp_47_ptr_of_*v_0_70
              #                     228  temp_48_ele_of_*v_0_70_0 = load temp_47_ptr_of_*v_0_70:ptr->i32 
              #                    occupy a4 with temp_47_ptr_of_*v_0_70
              #                    load from temp_47_ptr_of_*v_0_70 in mem
    ld      a4,136(sp)
              #                    occupy a6 with temp_48_ele_of_*v_0_70_0
    lw      a6,0(a4)
              #                    free a6
              #                    occupy a6 with temp_48_ele_of_*v_0_70_0
              #                    store to temp_48_ele_of_*v_0_70_0 in mem offset legal
    sw      a6,132(sp)
              #                    release a6 with temp_48_ele_of_*v_0_70_0
              #                    free a4
              #                    occupy a4 with temp_47_ptr_of_*v_0_70
              #                    store to temp_47_ptr_of_*v_0_70 in mem offset legal
    sd      a4,136(sp)
              #                    release a4 with temp_47_ptr_of_*v_0_70
              #                     229  mu v_0_3:228 
              #                     230  store temp_48_ele_of_*v_0_70_0:i32 temp_44_ptr_of_*v_0_70:ptr->i32 
              #                    occupy s4 with temp_44_ptr_of_*v_0_70
              #                    occupy a4 with temp_48_ele_of_*v_0_70_0
              #                    load from temp_48_ele_of_*v_0_70_0 in mem


    lw      a4,132(sp)
    sw      a4,0(s4)
              #                    free a4
              #                    occupy a4 with temp_48_ele_of_*v_0_70_0
              #                    store to temp_48_ele_of_*v_0_70_0 in mem offset legal
    sw      a4,132(sp)
              #                    release a4 with temp_48_ele_of_*v_0_70_0
              #                    free s4
              #                     502  untrack temp_48_ele_of_*v_0_70_0 
              #                     231  v_0_4 = chi v_0_3:230 
              #                     233  (nop) 
              #                     234  store temp_45_ele_of_*v_0_70_0:i32 temp_47_ptr_of_*v_0_70:ptr->i32 
              #                    occupy a4 with temp_47_ptr_of_*v_0_70
              #                    load from temp_47_ptr_of_*v_0_70 in mem
    ld      a4,136(sp)
              #                    occupy a3 with temp_45_ele_of_*v_0_70_0
    sw      a3,0(a4)
              #                    free a3
              #                    occupy a3 with temp_45_ele_of_*v_0_70_0
              #                    store to temp_45_ele_of_*v_0_70_0 in mem offset legal
    sw      a3,156(sp)
              #                    release a3 with temp_45_ele_of_*v_0_70_0
              #                    free a4
              #                     498  untrack temp_45_ele_of_*v_0_70_0 
              #                     496  untrack temp_47_ptr_of_*v_0_70 
              #                    occupy a4 with temp_47_ptr_of_*v_0_70
              #                    release a4 with temp_47_ptr_of_*v_0_70
              #                     235  v_0_5 = chi v_0_4:234 
              #                     239  (nop) 
              #                     240  mu c_0_3:239 
              #                     241  (nop) 
              #                     245  (nop) 
              #                     247  (nop) 
              #                     248  mu c_0_3:247 
              #                     249  store temp_71_ele_of_*c_0_68_0:i32 temp_72_ptr_of_*c_0_68:ptr->i32 
              #                    occupy a5 with temp_72_ptr_of_*c_0_68
              #                    occupy a3 with temp_71_ele_of_*c_0_68_0
              #                    load from temp_71_ele_of_*c_0_68_0 in mem


    lw      a3,20(sp)
    sw      a3,0(a5)
              #                    free a3
              #                    free a5
              #                     503  untrack temp_71_ele_of_*c_0_68_0 
              #                    occupy a3 with temp_71_ele_of_*c_0_68_0
              #                    release a3 with temp_71_ele_of_*c_0_68_0
              #                     250  c_0_4 = chi c_0_3:249 
              #                     252  (nop) 
              #                     253  store temp_73_ele_of_*c_0_68_0:i32 temp_70_ptr_of_*c_0_68:ptr->i32 
              #                    occupy a3 with temp_70_ptr_of_*c_0_68
              #                    load from temp_70_ptr_of_*c_0_68 in mem
    ld      a3,24(sp)
              #                    occupy a4 with temp_73_ele_of_*c_0_68_0
              #                    load from temp_73_ele_of_*c_0_68_0 in mem


    lw      a4,4(sp)
    sw      a4,0(a3)
              #                    free a4
              #                    occupy a4 with temp_73_ele_of_*c_0_68_0
              #                    store to temp_73_ele_of_*c_0_68_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_73_ele_of_*c_0_68_0
              #                    free a3
              #                     499  untrack temp_73_ele_of_*c_0_68_0 
              #                     497  untrack temp_70_ptr_of_*c_0_68 
              #                    occupy a3 with temp_70_ptr_of_*c_0_68
              #                    release a3 with temp_70_ptr_of_*c_0_68
              #                     254  c_0_5 = chi c_0_4:253 
              #                          jump label: branch_false_69 
              #                    occupy a3 with temp_69_cmp_65_0
              #                    load from temp_69_cmp_65_0 in mem


    lb      a3,38(sp)
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: i_59_1, tracked: true } |     a3:Freed { symidx: temp_69_cmp_65_0, tracked: true } |     a5:Freed { symidx: temp_72_ptr_of_*c_0_68, tracked: true } |     s1:Freed { symidx: temp_38_ptr_of_*u_0_70, tracked: true } |     s4:Freed { symidx: temp_44_ptr_of_*v_0_70, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     323  label branch_false_69: 
.branch_false_69:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: i_59_1, tracked: true } |     a3:Freed { symidx: temp_69_cmp_65_0, tracked: true } |     a5:Freed { symidx: temp_72_ptr_of_*c_0_68, tracked: true } |     s1:Freed { symidx: temp_38_ptr_of_*u_0_70, tracked: true } |     s4:Freed { symidx: temp_44_ptr_of_*v_0_70, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     195  temp_37_arithop_67_0 = Add i32 j_63_1, 1_0 
              #                    occupy a4 with j_63_1
              #                    load from j_63_1 in mem


    lw      a4,220(sp)
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_37_arithop_67_0
    ADDW    a7,a4,a6
              #                    free a4
              #                    occupy a4 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      a4,220(sp)
              #                    release a4 with j_63_1
              #                    free a6
              #                    free a7
              #                    occupy a7 with temp_37_arithop_67_0
              #                    store to temp_37_arithop_67_0 in mem offset legal
    sw      a7,216(sp)
              #                    release a7 with temp_37_arithop_67_0
              #                     196  (nop) 
              #                     447  j_63_1 = i32 temp_37_arithop_67_0 
              #                    occupy a4 with temp_37_arithop_67_0
              #                    load from temp_37_arithop_67_0 in mem


    lw      a4,216(sp)
              #                    occupy a6 with j_63_1
    mv      a6, a4
              #                    free a4
              #                    occupy a4 with temp_37_arithop_67_0
              #                    store to temp_37_arithop_67_0 in mem offset legal
    sw      a4,216(sp)
              #                    release a4 with temp_37_arithop_67_0
              #                    free a6
              #                    occupy a6 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      a6,220(sp)
              #                    release a6 with j_63_1
              #                          jump label: while.head_66 
              #                    occupy s6 with j_63_1
              #                    load from j_63_1 in mem


    lw      s6,220(sp)
              #                    occupy a3 with temp_69_cmp_65_0
              #                    store to temp_69_cmp_65_0 in mem offset legal
    sb      a3,38(sp)
              #                    release a3 with temp_69_cmp_65_0
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: i_59_1, tracked: true } |     a3:Freed { symidx: temp_69_cmp_65_0, tracked: true } |     a5:Freed { symidx: temp_72_ptr_of_*c_0_68, tracked: true } |     s1:Freed { symidx: temp_38_ptr_of_*u_0_70, tracked: true } |     s4:Freed { symidx: temp_44_ptr_of_*v_0_70, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     308  label while.exit_66: 
.while.exit_66:
              #                     192  (nop) 
              #                     193  (nop) 
              #                     448  i_59_1 = i32 temp_35_arithop_63_0 
              #                    occupy a4 with temp_35_arithop_63_0
              #                    load from temp_35_arithop_63_0 in mem


    lw      a4,224(sp)
              #                    occupy a2 with i_59_1
    mv      a2, a4
              #                    free a4
              #                    occupy a4 with temp_35_arithop_63_0
              #                    store to temp_35_arithop_63_0 in mem offset legal
    sw      a4,224(sp)
              #                    release a4 with temp_35_arithop_63_0
              #                    free a2
              #                          jump label: while.head_62 
              #                    occupy a5 with temp_72_ptr_of_*c_0_68
              #                    store to temp_72_ptr_of_*c_0_68 in mem offset legal
    sd      a5,8(sp)
              #                    release a5 with temp_72_ptr_of_*c_0_68
              #                    occupy s4 with temp_44_ptr_of_*v_0_70
              #                    store to temp_44_ptr_of_*v_0_70 in mem offset legal
    sd      s4,160(sp)
              #                    release s4 with temp_44_ptr_of_*v_0_70
              #                    occupy s1 with temp_38_ptr_of_*u_0_70
              #                    store to temp_38_ptr_of_*u_0_70 in mem offset legal
    sd      s1,208(sp)
              #                    release s1 with temp_38_ptr_of_*u_0_70
              #                    occupy a3 with temp_69_cmp_65_0
              #                    store to temp_69_cmp_65_0 in mem offset legal
    sb      a3,38(sp)
              #                    release a3 with temp_69_cmp_65_0
              #                    occupy a0 with temp_57_cmp_61_0
              #                    store to temp_57_cmp_61_0 in mem offset legal
    sb      a0,83(sp)
              #                    release a0 with temp_57_cmp_61_0
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: i_59_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     262  label while.exit_62: 
.while.exit_62:
              #                     492  untrack i_59_1 
              #                    occupy a2 with i_59_1
              #                    release a2 with i_59_1
              #                     147  (nop) 
              #                     265  temp_58_value_from_ptr_83_0 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_58_value_from_ptr_83_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     266  mu n_0_0:265 
              #                     449  i_59_4 = i32 1_0 
              #                    occupy a4 with i_59_4
    li      a4, 1
              #                    free a4
              #                          jump label: while.head_84 
    j       .while.head_84
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a3:Freed { symidx: temp_58_value_from_ptr_83_0, tracked: true } |     a4:Freed { symidx: i_59_4, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     269  label while.head_84: 
.while.head_84:
              #                     268  temp_59_cmp_83_0 = icmp i32 Sle i_59_4, temp_58_value_from_ptr_83_0 
              #                    occupy a4 with i_59_4
              #                    occupy a3 with temp_58_value_from_ptr_83_0
              #                    occupy a2 with temp_59_cmp_83_0
    slt     a2,a3,a4
    xori    a2,a2,1
              #                    free a4
              #                    free a3
              #                    free a2
              #                     272  br i1 temp_59_cmp_83_0, label while.body_84, label while.exit_84 
              #                    occupy a2 with temp_59_cmp_83_0
              #                    free a2
              #                    occupy a2 with temp_59_cmp_83_0
    bnez    a2, .while.body_84
              #                    free a2
    j       .while.exit_84
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: temp_59_cmp_83_0, tracked: true } |     a3:Freed { symidx: temp_58_value_from_ptr_83_0, tracked: true } |     a4:Freed { symidx: i_59_4, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     270  label while.body_84: 
.while.body_84:
              #                     181  temp_33_ptr_of_*fa_0_85 = GEP *fa_0:ptr->i32 [Some(i_59_4)] 
              #                    occupy a5 with temp_33_ptr_of_*fa_0_85
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_59_4
    mv      a6, a4
              #                    free a4
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a7 with *fa_0
              #                       load label fa as ptr to reg
    la      a7, fa
              #                    occupy reg a7 with *fa_0
    add     a5,a5,a7
              #                    free a7
              #                    free a5
              #                     182  store i_59_4:i32 temp_33_ptr_of_*fa_0_85:ptr->i32 
              #                    occupy a5 with temp_33_ptr_of_*fa_0_85
              #                    occupy a4 with i_59_4
    sw      a4,0(a5)
              #                    free a4
              #                    free a5
              #                     183  fa_0_9 = chi fa_0_8:182 
              #                     185  temp_34_arithop_85_0 = Add i32 i_59_4, 1_0 
              #                    occupy a4 with i_59_4
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_34_arithop_85_0
    ADDW    s2,a4,s1
              #                    free a4
              #                    free s1
              #                    free s2
              #                     186  (nop) 
              #                     450  i_59_4 = i32 temp_34_arithop_85_0 
              #                    occupy s2 with temp_34_arithop_85_0
              #                    occupy a4 with i_59_4
    mv      a4, s2
              #                    free s2
              #                    free a4
              #                          jump label: while.head_84 
              #                    occupy a5 with temp_33_ptr_of_*fa_0_85
              #                    store to temp_33_ptr_of_*fa_0_85 in mem offset legal
    sd      a5,232(sp)
              #                    release a5 with temp_33_ptr_of_*fa_0_85
              #                    occupy s2 with temp_34_arithop_85_0
              #                    store to temp_34_arithop_85_0 in mem offset legal
    sw      s2,228(sp)
              #                    release s2 with temp_34_arithop_85_0
              #                    occupy a2 with temp_59_cmp_83_0
              #                    store to temp_59_cmp_83_0 in mem offset legal
    sb      a2,75(sp)
              #                    release a2 with temp_59_cmp_83_0
    j       .while.head_84
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: temp_59_cmp_83_0, tracked: true } |     a3:Freed { symidx: temp_58_value_from_ptr_83_0, tracked: true } |     a4:Freed { symidx: i_59_4, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     271  label while.exit_84: 
.while.exit_84:
              #                     505  untrack temp_58_value_from_ptr_83_0 
              #                    occupy a3 with temp_58_value_from_ptr_83_0
              #                    release a3 with temp_58_value_from_ptr_83_0
              #                     504  untrack i_59_4 
              #                    occupy a4 with i_59_4
              #                    release a4 with i_59_4
              #                     148  (nop) 
              #                     149  (nop) 
              #                     274  (nop) 
              #                     275  mu m_0_0:274 
              #                     451  i_59_7 = i32 0_0 
              #                    occupy a3 with i_59_7
    li      a3, 0
              #                    free a3
              #                     452  res_59_1 = i32 0_0 
              #                    occupy a4 with res_59_1
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_91 
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: temp_59_cmp_83_0, tracked: true } |     a3:Freed { symidx: i_59_7, tracked: true } |     a4:Freed { symidx: res_59_1, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     278  label while.head_91: 
.while.head_91:
              #                     277  temp_61_cmp_90_0 = icmp i32 Slt i_59_7, temp_56_value_from_ptr_61_0 
              #                    occupy a3 with i_59_7
              #                    occupy a1 with temp_56_value_from_ptr_61_0
              #                    occupy a5 with temp_61_cmp_90_0
    slt     a5,a3,a1
              #                    free a3
              #                    free a1
              #                    free a5
              #                     281  br i1 temp_61_cmp_90_0, label while.body_91, label while.exit_91 
              #                    occupy a5 with temp_61_cmp_90_0
              #                    free a5
              #                    occupy a5 with temp_61_cmp_90_0
    bnez    a5, .while.body_91
              #                    free a5
    j       .while.exit_91
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: temp_59_cmp_83_0, tracked: true } |     a3:Freed { symidx: i_59_7, tracked: true } |     a4:Freed { symidx: res_59_1, tracked: true } |     a5:Freed { symidx: temp_61_cmp_90_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     279  label while.body_91: 
.while.body_91:
              #                     285  temp_62_ptr_of_*u_0_93 = GEP *u_0:Array:i32:[None] [Some(i_59_7)] 
              #                    occupy a6 with temp_62_ptr_of_*u_0_93
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_59_7
    mv      a7, a3
              #                    free a3
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy s1 with *u_0
              #                       load label u as ptr to reg
    la      s1, u
              #                    occupy reg s1 with *u_0
    add     a6,a6,s1
              #                    free s1
              #                    free a6
              #                     287  temp_63_ele_of_*u_0_93_0 = load temp_62_ptr_of_*u_0_93:ptr->i32 
              #                    occupy a6 with temp_62_ptr_of_*u_0_93
              #                    occupy s2 with temp_63_ele_of_*u_0_93_0
    lw      s2,0(a6)
              #                    free s2
              #                    free a6
              #                     288  mu u_0_2:287 
              #                     290  temp_64_ptr_of_*v_0_93 = GEP *v_0:Array:i32:[None] [Some(i_59_7)] 
              #                    occupy s3 with temp_64_ptr_of_*v_0_93
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_59_7
    mv      s4, a3
              #                    free a3
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy s5 with *v_0
              #                       load label v as ptr to reg
    la      s5, v
              #                    occupy reg s5 with *v_0
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                     292  temp_65_ele_of_*v_0_93_0 = load temp_64_ptr_of_*v_0_93:ptr->i32 
              #                    occupy s3 with temp_64_ptr_of_*v_0_93
              #                    occupy s5 with temp_65_ele_of_*v_0_93_0
    lw      s5,0(s3)
              #                    free s5
              #                    occupy s5 with temp_65_ele_of_*v_0_93_0
              #                    store to temp_65_ele_of_*v_0_93_0 in mem offset legal
    sw      s5,44(sp)
              #                    release s5 with temp_65_ele_of_*v_0_93_0
              #                    free s3
              #                     293  mu v_0_2:292 
              #                     295  temp_66_ret_of_same_93_0 =  Call i32 same_0(temp_63_ele_of_*u_0_93_0, temp_65_ele_of_*v_0_93_0) 
              #                    saved register dumping to mem
              #                    occupy s2 with temp_63_ele_of_*u_0_93_0
              #                    store to temp_63_ele_of_*u_0_93_0 in mem offset legal
    sw      s2,60(sp)
              #                    release s2 with temp_63_ele_of_*u_0_93_0
              #                    occupy s3 with temp_64_ptr_of_*v_0_93
              #                    store to temp_64_ptr_of_*v_0_93 in mem offset legal
    sd      s3,48(sp)
              #                    release s3 with temp_64_ptr_of_*v_0_93
              #                    occupy a0 with temp_57_cmp_61_0
              #                    store to temp_57_cmp_61_0 in mem offset legal
    sb      a0,83(sp)
              #                    release a0 with temp_57_cmp_61_0
              #                    occupy a1 with temp_56_value_from_ptr_61_0
              #                    store to temp_56_value_from_ptr_61_0 in mem offset legal
    sw      a1,84(sp)
              #                    release a1 with temp_56_value_from_ptr_61_0
              #                    occupy a2 with temp_59_cmp_83_0
              #                    store to temp_59_cmp_83_0 in mem offset legal
    sb      a2,75(sp)
              #                    release a2 with temp_59_cmp_83_0
              #                    occupy a3 with i_59_7
              #                    store to i_59_7 in mem offset legal
    sw      a3,300(sp)
              #                    release a3 with i_59_7
              #                    occupy a4 with res_59_1
              #                    store to res_59_1 in mem offset legal
    sw      a4,296(sp)
              #                    release a4 with res_59_1
              #                    occupy a5 with temp_61_cmp_90_0
              #                    store to temp_61_cmp_90_0 in mem offset legal
    sb      a5,74(sp)
              #                    release a5 with temp_61_cmp_90_0
              #                    occupy a6 with temp_62_ptr_of_*u_0_93
              #                    store to temp_62_ptr_of_*u_0_93 in mem offset legal
    sd      a6,64(sp)
              #                    release a6 with temp_62_ptr_of_*u_0_93
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_63_ele_of_*u_0_93_0_0
              #                    load from temp_63_ele_of_*u_0_93_0 in mem


    lw      a0,60(sp)
              #                    occupy a1 with _anonymous_of_temp_65_ele_of_*v_0_93_0_0
              #                    load from temp_65_ele_of_*v_0_93_0 in mem


    lw      a1,44(sp)
              #                    arg load ended


    call    same
              #                     384  mu fa_0_10:295 
              #                     385  fa_0_11 = chi fa_0_10:295 
              #                     297  temp_67__2623_0 = icmp i32 Ne temp_66_ret_of_same_93_0, 0_0 
              #                    occupy a0 with temp_66_ret_of_same_93_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_67__2623_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     300  br i1 temp_67__2623_0, label branch_true_94, label branch_false_94 
              #                    occupy a2 with temp_67__2623_0
              #                    free a2
              #                    occupy a2 with temp_67__2623_0
    bnez    a2, .branch_true_94
              #                    free a2
    j       .branch_false_94
              #                    regtab     a0:Freed { symidx: temp_66_ret_of_same_93_0, tracked: true } |     a2:Freed { symidx: temp_67__2623_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     298  label branch_true_94: 
.branch_true_94:
              #                          jump label: while.head_91 
              #                    occupy a4 with res_59_1
              #                    load from res_59_1 in mem


    lw      a4,296(sp)
              #                    occupy a2 with temp_67__2623_0
              #                    store to temp_67__2623_0 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_67__2623_0
              #                    occupy a2 with temp_59_cmp_83_0
              #                    load from temp_59_cmp_83_0 in mem


    lb      a2,75(sp)
              #                    occupy a1 with temp_56_value_from_ptr_61_0
              #                    load from temp_56_value_from_ptr_61_0 in mem


    lw      a1,84(sp)
              #                    occupy a3 with i_59_7
              #                    load from i_59_7 in mem


    lw      a3,300(sp)
              #                    occupy a0 with temp_66_ret_of_same_93_0
              #                    store to temp_66_ret_of_same_93_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_66_ret_of_same_93_0
              #                    occupy a0 with temp_57_cmp_61_0
              #                    load from temp_57_cmp_61_0 in mem


    lb      a0,83(sp)
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_66_ret_of_same_93_0, tracked: true } |     a2:Freed { symidx: temp_67__2623_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     299  label branch_false_94: 
.branch_false_94:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_66_ret_of_same_93_0, tracked: true } |     a2:Freed { symidx: temp_67__2623_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     154  temp_23_ptr_of_*c_0_92 = GEP *c_0:Array:i32:[None] [Some(i_59_7)] 
              #                    occupy a1 with temp_23_ptr_of_*c_0_92
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_59_7
              #                    load from i_59_7 in mem


    lw      a4,300(sp)
    mv      a3, a4
              #                    free a4
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a5 with *c_0
              #                       load label c as ptr to reg
    la      a5, c
              #                    occupy reg a5 with *c_0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                     156  temp_24_ele_of_*c_0_92_0 = load temp_23_ptr_of_*c_0_92:ptr->i32 
              #                    occupy a1 with temp_23_ptr_of_*c_0_92
              #                    occupy a6 with temp_24_ele_of_*c_0_92_0
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                     157  mu c_0_2:156 
              #                     159  temp_25_arithop_92_0 = Add i32 res_59_1, temp_24_ele_of_*c_0_92_0 
              #                    occupy a7 with res_59_1
              #                    load from res_59_1 in mem


    lw      a7,296(sp)
              #                    occupy a6 with temp_24_ele_of_*c_0_92_0
              #                    occupy s1 with temp_25_arithop_92_0
    ADDW    s1,a7,a6
              #                    free a7
              #                    free a6
              #                    free s1
              #                     160  (nop) 
              #                     162  (nop) 
              #                     164  (nop) 
              #                     165  mu u_0_2:164 
              #                     167  temp_28_ret_of_find_92_0 =  Call i32 find_0(temp_63_ele_of_*u_0_93_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_25_arithop_92_0
              #                    store to temp_25_arithop_92_0 in mem offset legal
    sw      s1,280(sp)
              #                    release s1 with temp_25_arithop_92_0
              #                    occupy a0 with temp_66_ret_of_same_93_0
              #                    store to temp_66_ret_of_same_93_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_66_ret_of_same_93_0
              #                    occupy a1 with temp_23_ptr_of_*c_0_92
              #                    store to temp_23_ptr_of_*c_0_92 in mem offset legal
    sd      a1,288(sp)
              #                    release a1 with temp_23_ptr_of_*c_0_92
              #                    occupy a2 with temp_67__2623_0
              #                    store to temp_67__2623_0 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_67__2623_0
              #                    occupy a4 with i_59_7
              #                    store to i_59_7 in mem offset legal
    sw      a4,300(sp)
              #                    release a4 with i_59_7
              #                    occupy a6 with temp_24_ele_of_*c_0_92_0
              #                    store to temp_24_ele_of_*c_0_92_0 in mem offset legal
    sw      a6,284(sp)
              #                    release a6 with temp_24_ele_of_*c_0_92_0
              #                    occupy a7 with res_59_1
              #                    store to res_59_1 in mem offset legal
    sw      a7,296(sp)
              #                    release a7 with res_59_1
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_63_ele_of_*u_0_93_0_0
              #                    load from temp_63_ele_of_*u_0_93_0 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    find
              #                     386  mu fa_0_11:167 
              #                     387  fa_0_12 = chi fa_0_11:167 
              #                     169  temp_29_ptr_of_*fa_0_92 = GEP *fa_0:ptr->i32 [Some(temp_28_ret_of_find_92_0)] 
              #                    occupy a1 with temp_29_ptr_of_*fa_0_92
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with temp_28_ret_of_find_92_0
    mv      a2, a0
              #                    free a0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *fa_0
              #                       load label fa as ptr to reg
    la      a3, fa
              #                    occupy reg a3 with *fa_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     171  (nop) 
              #                     173  (nop) 
              #                     174  mu v_0_2:173 
              #                     175  store temp_65_ele_of_*v_0_93_0:i32 temp_29_ptr_of_*fa_0_92:ptr->i32 
              #                    occupy a1 with temp_29_ptr_of_*fa_0_92
              #                    occupy a4 with temp_65_ele_of_*v_0_93_0
              #                    load from temp_65_ele_of_*v_0_93_0 in mem


    lw      a4,44(sp)
    sw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     176  fa_0_13 = chi fa_0_12:175 
              #                     178  temp_32_arithop_92_0 = Add i32 i_59_7, 1_0 
              #                    occupy a5 with i_59_7
              #                    load from i_59_7 in mem


    lw      a5,300(sp)
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_32_arithop_92_0
    ADDW    a7,a5,a6
              #                    free a5
              #                    free a6
              #                    free a7
              #                     179  (nop) 
              #                     453  res_59_1 = i32 temp_25_arithop_92_0 
              #                    occupy s1 with temp_25_arithop_92_0
              #                    load from temp_25_arithop_92_0 in mem


    lw      s1,280(sp)
              #                    occupy s2 with res_59_1
    mv      s2, s1
              #                    free s1
              #                    free s2
              #                     454  i_59_7 = i32 temp_32_arithop_92_0 
              #                    occupy a7 with temp_32_arithop_92_0
              #                    occupy a5 with i_59_7
    mv      a5, a7
              #                    free a7
              #                    free a5
              #                          jump label: while.head_91 
              #                    occupy a7 with temp_32_arithop_92_0
              #                    store to temp_32_arithop_92_0 in mem offset legal
    sw      a7,244(sp)
              #                    release a7 with temp_32_arithop_92_0
              #                    occupy a5 with i_59_7
              #                    store to i_59_7 in mem offset legal
    sw      a5,300(sp)
              #                    release a5 with i_59_7
              #                    occupy a4 with temp_65_ele_of_*v_0_93_0
              #                    store to temp_65_ele_of_*v_0_93_0 in mem offset legal
    sw      a4,44(sp)
              #                    release a4 with temp_65_ele_of_*v_0_93_0
              #                    occupy s2 with res_59_1
              #                    store to res_59_1 in mem offset legal
    sw      s2,296(sp)
              #                    release s2 with res_59_1
              #                    occupy a4 with res_59_1
              #                    load from res_59_1 in mem


    lw      a4,296(sp)
              #                    occupy a2 with temp_59_cmp_83_0
              #                    load from temp_59_cmp_83_0 in mem


    lb      a2,75(sp)
              #                    occupy a1 with temp_29_ptr_of_*fa_0_92
              #                    store to temp_29_ptr_of_*fa_0_92 in mem offset legal
    sd      a1,256(sp)
              #                    release a1 with temp_29_ptr_of_*fa_0_92
              #                    occupy a1 with temp_56_value_from_ptr_61_0
              #                    load from temp_56_value_from_ptr_61_0 in mem


    lw      a1,84(sp)
              #                    occupy s1 with temp_25_arithop_92_0
              #                    store to temp_25_arithop_92_0 in mem offset legal
    sw      s1,280(sp)
              #                    release s1 with temp_25_arithop_92_0
              #                    occupy a3 with i_59_7
              #                    load from i_59_7 in mem


    lw      a3,300(sp)
              #                    occupy a0 with temp_28_ret_of_find_92_0
              #                    store to temp_28_ret_of_find_92_0 in mem offset legal
    sw      a0,268(sp)
              #                    release a0 with temp_28_ret_of_find_92_0
              #                    occupy a0 with temp_57_cmp_61_0
              #                    load from temp_57_cmp_61_0 in mem


    lb      a0,83(sp)
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_57_cmp_61_0, tracked: true } |     a1:Freed { symidx: temp_56_value_from_ptr_61_0, tracked: true } |     a2:Freed { symidx: temp_59_cmp_83_0, tracked: true } |     a3:Freed { symidx: i_59_7, tracked: true } |     a4:Freed { symidx: res_59_1, tracked: true } |     a5:Freed { symidx: temp_61_cmp_90_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     280  label while.exit_91: 
.while.exit_91:
              #                     507  untrack i_59_7 
              #                    occupy a3 with i_59_7
              #                    release a3 with i_59_7
              #                     506  untrack temp_56_value_from_ptr_61_0 
              #                    occupy a1 with temp_56_value_from_ptr_61_0
              #                    release a1 with temp_56_value_from_ptr_61_0
              #                     388  mu u_0_2:152 
              #                     389  mu c_0_2:152 
              #                     390  mu fa_0_10:152 
              #                     391  mu v_0_2:152 
              #                     152  ret res_59_1 
              #                    load from ra_prim_0 in mem
    ld      ra,320(sp)
              #                    load from s0_prim_0 in mem
    ld      s0,312(sp)
              #                    occupy a4 with res_59_1
              #                    store to res_59_1 in mem offset legal
    sw      a4,296(sp)
              #                    release a4 with res_59_1
              #                    occupy a0 with temp_57_cmp_61_0
              #                    store to temp_57_cmp_61_0 in mem offset legal
    sb      a0,83(sp)
              #                    release a0 with temp_57_cmp_61_0
              #                    occupy a0 with res_59_1
              #                    load from res_59_1 in mem


    lw      a0,296(sp)
    addi    sp,sp,328
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     36   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 80|s0_main:8 at 72|temp_75_ret_of_quick_read _s101 _i0:4 at 68|temp_76_ret_of_quick_read _s101 _i0:4 at 64|i _s101 _i1:4 at 60|temp_77_ret_of_prim _s101 _i0:4 at 56|temp_78_ptr_of_*u_0:8 at 48|temp_79_ret_of_quick_read _s106 _i0:4 at 44|none:4 at 40|temp_80_ptr_of_*v_0:8 at 32|temp_81_ret_of_quick_read _s106 _i0:4 at 28|none:4 at 24|temp_82_ptr_of_*c_0:8 at 16|temp_83_ret_of_quick_read _s106 _i0:4 at 12|temp_84_arithop _s106 _i0:4 at 8|temp_85_cmp _s104 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-88
              #                    store to ra_main_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                     392  c_0_7 = chi c_0_0:36 
              #                     393  v_0_7 = chi v_0_0:36 
              #                     394  fa_0_14 = chi fa_0_0:36 
              #                     395  u_0_7 = chi u_0_0:36 
              #                     325  alloc i32 [temp_75_ret_of_quick_read_101] 
              #                     328  alloc i32 [n_101] 
              #                     329  alloc i32 [temp_76_ret_of_quick_read_101] 
              #                     332  alloc i32 [m_101] 
              #                     334  alloc i32 [i_101] 
              #                     336  alloc i32 [temp_77_ret_of_prim_101] 
              #                     339  alloc ptr->i32 [temp_78_ptr_of_*u_0_106] 
              #                     341  alloc i32 [temp_79_ret_of_quick_read_106] 
              #                     345  alloc ptr->i32 [temp_80_ptr_of_*v_0_106] 
              #                     347  alloc i32 [temp_81_ret_of_quick_read_106] 
              #                     351  alloc ptr->i32 [temp_82_ptr_of_*c_0_106] 
              #                     353  alloc i32 [temp_83_ret_of_quick_read_106] 
              #                     357  alloc i32 [temp_84_arithop_106] 
              #                     360  alloc i1 [temp_85_cmp_104] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     326  temp_75_ret_of_quick_read_101_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     327  (nop) 
              #                     330  temp_76_ret_of_quick_read_101_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_75_ret_of_quick_read_101_0
              #                    store to temp_75_ret_of_quick_read_101_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_75_ret_of_quick_read_101_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     331  (nop) 
              #                     333  (nop) 
              #                     455  i_101_1 = i32 0_0 
              #                    occupy a1 with i_101_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_105 
    j       .while.head_105
              #                    regtab     a0:Freed { symidx: temp_76_ret_of_quick_read_101_0, tracked: true } |     a1:Freed { symidx: i_101_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     362  label while.head_105: 
.while.head_105:
              #                     361  temp_85_cmp_104_0 = icmp i32 Slt i_101_1, temp_76_ret_of_quick_read_101_0 
              #                    occupy a1 with i_101_1
              #                    occupy a0 with temp_76_ret_of_quick_read_101_0
              #                    occupy a2 with temp_85_cmp_104_0
    slt     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     365  br i1 temp_85_cmp_104_0, label while.body_105, label while.exit_105 
              #                    occupy a2 with temp_85_cmp_104_0
              #                    free a2
              #                    occupy a2 with temp_85_cmp_104_0
    bnez    a2, .while.body_105
              #                    free a2
    j       .while.exit_105
              #                    regtab     a0:Freed { symidx: temp_76_ret_of_quick_read_101_0, tracked: true } |     a1:Freed { symidx: i_101_1, tracked: true } |     a2:Freed { symidx: temp_85_cmp_104_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     363  label while.body_105: 
.while.body_105:
              #                     340  temp_78_ptr_of_*u_0_106 = GEP *u_0:ptr->i32 [Some(i_101_1)] 
              #                    occupy a3 with temp_78_ptr_of_*u_0_106
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_101_1
    mv      a4, a1
              #                    free a1
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *u_0
              #                       load label u as ptr to reg
    la      a5, u
              #                    occupy reg a5 with *u_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     342  temp_79_ret_of_quick_read_106_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_76_ret_of_quick_read_101_0
              #                    store to temp_76_ret_of_quick_read_101_0 in mem offset legal
    sw      a0,64(sp)
              #                    release a0 with temp_76_ret_of_quick_read_101_0
              #                    occupy a1 with i_101_1
              #                    store to i_101_1 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with i_101_1
              #                    occupy a2 with temp_85_cmp_104_0
              #                    store to temp_85_cmp_104_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_85_cmp_104_0
              #                    occupy a3 with temp_78_ptr_of_*u_0_106
              #                    store to temp_78_ptr_of_*u_0_106 in mem offset legal
    sd      a3,48(sp)
              #                    release a3 with temp_78_ptr_of_*u_0_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     343  store temp_79_ret_of_quick_read_106_0:i32 temp_78_ptr_of_*u_0_106:ptr->i32 
              #                    occupy a1 with temp_78_ptr_of_*u_0_106
              #                    load from temp_78_ptr_of_*u_0_106 in mem
    ld      a1,48(sp)
              #                    occupy a0 with temp_79_ret_of_quick_read_106_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     344  u_0_9 = chi u_0_8:343 
              #                     346  temp_80_ptr_of_*v_0_106 = GEP *v_0:ptr->i32 [Some(i_101_1)] 
              #                    occupy a2 with temp_80_ptr_of_*v_0_106
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_101_1
              #                    load from i_101_1 in mem


    lw      a4,60(sp)
    mv      a3, a4
              #                    free a4
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a5 with *v_0
              #                       load label v as ptr to reg
    la      a5, v
              #                    occupy reg a5 with *v_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                     348  temp_81_ret_of_quick_read_106_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_79_ret_of_quick_read_106_0
              #                    store to temp_79_ret_of_quick_read_106_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_79_ret_of_quick_read_106_0
              #                    occupy a1 with temp_78_ptr_of_*u_0_106
              #                    store to temp_78_ptr_of_*u_0_106 in mem offset legal
    sd      a1,48(sp)
              #                    release a1 with temp_78_ptr_of_*u_0_106
              #                    occupy a2 with temp_80_ptr_of_*v_0_106
              #                    store to temp_80_ptr_of_*v_0_106 in mem offset legal
    sd      a2,32(sp)
              #                    release a2 with temp_80_ptr_of_*v_0_106
              #                    occupy a4 with i_101_1
              #                    store to i_101_1 in mem offset legal
    sw      a4,60(sp)
              #                    release a4 with i_101_1
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     349  store temp_81_ret_of_quick_read_106_0:i32 temp_80_ptr_of_*v_0_106:ptr->i32 
              #                    occupy a1 with temp_80_ptr_of_*v_0_106
              #                    load from temp_80_ptr_of_*v_0_106 in mem
    ld      a1,32(sp)
              #                    occupy a0 with temp_81_ret_of_quick_read_106_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     350  v_0_9 = chi v_0_8:349 
              #                     352  temp_82_ptr_of_*c_0_106 = GEP *c_0:ptr->i32 [Some(i_101_1)] 
              #                    occupy a2 with temp_82_ptr_of_*c_0_106
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_101_1
              #                    load from i_101_1 in mem


    lw      a4,60(sp)
    mv      a3, a4
              #                    free a4
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a5 with *c_0
              #                       load label c as ptr to reg
    la      a5, c
              #                    occupy reg a5 with *c_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                     354  temp_83_ret_of_quick_read_106_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_81_ret_of_quick_read_106_0
              #                    store to temp_81_ret_of_quick_read_106_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_81_ret_of_quick_read_106_0
              #                    occupy a1 with temp_80_ptr_of_*v_0_106
              #                    store to temp_80_ptr_of_*v_0_106 in mem offset legal
    sd      a1,32(sp)
              #                    release a1 with temp_80_ptr_of_*v_0_106
              #                    occupy a2 with temp_82_ptr_of_*c_0_106
              #                    store to temp_82_ptr_of_*c_0_106 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_82_ptr_of_*c_0_106
              #                    occupy a4 with i_101_1
              #                    store to i_101_1 in mem offset legal
    sw      a4,60(sp)
              #                    release a4 with i_101_1
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     355  store temp_83_ret_of_quick_read_106_0:i32 temp_82_ptr_of_*c_0_106:ptr->i32 
              #                    occupy a1 with temp_82_ptr_of_*c_0_106
              #                    load from temp_82_ptr_of_*c_0_106 in mem
    ld      a1,16(sp)
              #                    occupy a0 with temp_83_ret_of_quick_read_106_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     356  c_0_9 = chi c_0_8:355 
              #                     358  temp_84_arithop_106_0 = Add i32 i_101_1, 1_0 
              #                    occupy a2 with i_101_1
              #                    load from i_101_1 in mem


    lw      a2,60(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_84_arithop_106_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     359  (nop) 
              #                     456  i_101_1 = i32 temp_84_arithop_106_0 
              #                    occupy a4 with temp_84_arithop_106_0
              #                    occupy a2 with i_101_1
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_105 
              #                    occupy a0 with temp_83_ret_of_quick_read_106_0
              #                    store to temp_83_ret_of_quick_read_106_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_83_ret_of_quick_read_106_0
              #                    occupy a0 with temp_76_ret_of_quick_read_101_0
              #                    load from temp_76_ret_of_quick_read_101_0 in mem


    lw      a0,64(sp)
              #                    occupy a2 with i_101_1
              #                    store to i_101_1 in mem offset legal
    sw      a2,60(sp)
              #                    release a2 with i_101_1
              #                    occupy a1 with temp_82_ptr_of_*c_0_106
              #                    store to temp_82_ptr_of_*c_0_106 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_82_ptr_of_*c_0_106
              #                    occupy a1 with i_101_1
              #                    load from i_101_1 in mem


    lw      a1,60(sp)
              #                    occupy a4 with temp_84_arithop_106_0
              #                    store to temp_84_arithop_106_0 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_84_arithop_106_0
    j       .while.head_105
              #                    regtab     a0:Freed { symidx: temp_76_ret_of_quick_read_101_0, tracked: true } |     a1:Freed { symidx: i_101_1, tracked: true } |     a2:Freed { symidx: temp_85_cmp_104_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     364  label while.exit_105: 
.while.exit_105:
              #                     509  untrack temp_76_ret_of_quick_read_101_0 
              #                    occupy a0 with temp_76_ret_of_quick_read_101_0
              #                    release a0 with temp_76_ret_of_quick_read_101_0
              #                     508  untrack i_101_1 
              #                    occupy a1 with i_101_1
              #                    release a1 with i_101_1
              #                     337  temp_77_ret_of_prim_101_0 =  Call i32 prim_0() 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_85_cmp_104_0
              #                    store to temp_85_cmp_104_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_85_cmp_104_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    prim
              #                     396  mu v_0_8:337 
              #                     397  mu u_0_8:337 
              #                     398  mu c_0_8:337 
              #                     399  mu fa_0_14:337 
              #                     400  u_0_10 = chi u_0_8:337 
              #                     401  c_0_10 = chi c_0_8:337 
              #                     402  fa_0_15 = chi fa_0_14:337 
              #                     403  v_0_10 = chi v_0_8:337 
              #                     404  mu c_0_10:338 
              #                     405  mu v_0_10:338 
              #                     406  mu fa_0_15:338 
              #                     407  mu u_0_10:338 
              #                     338  ret temp_77_ret_of_prim_101_0 
              #                    load from ra_main_0 in mem
    ld      ra,80(sp)
              #                    load from s0_main_0 in mem
    ld      s0,72(sp)
              #                    occupy a0 with temp_77_ret_of_prim_101_0
              #                    store to temp_77_ret_of_prim_101_0 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_77_ret_of_prim_101_0
              #                    occupy a0 with temp_77_ret_of_prim_101_0
              #                    load from temp_77_ret_of_prim_101_0 in mem


    lw      a0,56(sp)
    addi    sp,sp,88
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl fa
              #                     30   global Array:i32:[Some(1005_0)] fa_0 
    .type fa,@object
fa:
    .zero 4020
    .align 4
    .globl c
              #                     28   global Array:i32:[Some(1005_0)] c_0 
    .type c,@object
c:
    .zero 4020
    .align 4
    .globl v
              #                     26   global Array:i32:[Some(1005_0)] v_0 
    .type v,@object
v:
    .zero 4020
    .align 4
    .globl u
              #                     24   global Array:i32:[Some(1005_0)] u_0 
    .type u,@object
u:
    .zero 4020
    .align 4
    .globl m
              #                     22   global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
              #                     21   global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl maxn
              #                     20   global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 105
    .align 4
    .globl maxm
              #                     17   global i32 maxm_0 
    .type maxm,@object
maxm:
    .word 1005
