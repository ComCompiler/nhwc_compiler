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
              #                     34   Define quick_read_0 "" -> quick_read_ret_0 
    .globl quick_read
    .type quick_read,@function
quick_read:
              #                    mem layout:|ra_quick_read:8 at 64|s0_quick_read:8 at 56|temp_0_ret_of_getch _s20 _i0:4 at 52|ch _s20 _i1:4 at 48|ch _s20 _i3:4 at 44|x _s20 _i1:4 at 40|f _s20 _i1:4 at 36|f _s20 _i3:4 at 32|temp_1_ _s35 _i0:4 at 28|temp_2_arithop _s32 _i0:4 at 24|temp_3_arithop _s32 _i0:4 at 20|temp_4_arithop _s32 _i0:4 at 16|temp_5_ret_of_getch _s32 _i0:4 at 12|temp_6_ret_of_getch _s25 _i0:4 at 8|temp_7_cmp _s23 _i0:1 at 7|temp_8_cmp _s23 _i0:1 at 6|temp_9_cmp _s30 _i0:1 at 5|temp_10_cmp _s30 _i0:1 at 4|temp_11_ _s803 _i0:1 at 3|temp_12_cmp _s26 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-72
              #                    store to ra_quick_read_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_quick_read_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     40   alloc i32 [temp_0_ret_of_getch_20] 
              #                     43   alloc i32 [ch_20] 
              #                     45   alloc i32 [x_20] 
              #                     47   alloc i32 [f_20] 
              #                     51   alloc i32 [temp_1__35] 
              #                     54   alloc i32 [temp_2_arithop_32] 
              #                     56   alloc i32 [temp_3_arithop_32] 
              #                     58   alloc i32 [temp_4_arithop_32] 
              #                     61   alloc i32 [temp_5_ret_of_getch_32] 
              #                     64   alloc i32 [temp_6_ret_of_getch_25] 
              #                     68   alloc i1 [temp_7_cmp_23] 
              #                     70   alloc i1 [temp_8_cmp_23] 
              #                     79   alloc i1 [temp_9_cmp_30] 
              #                     81   alloc i1 [temp_10_cmp_30] 
              #                     89   alloc i1 [temp_11__803] 
              #                     97   alloc i1 [temp_12_cmp_26] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     41   temp_0_ret_of_getch_20_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     42   (nop) 
              #                     44   (nop) 
              #                     46   (nop) 
              #                     519  ch_20_1 = i32 temp_0_ret_of_getch_20_0 
              #                    occupy a0 with temp_0_ret_of_getch_20_0
              #                    occupy a1 with ch_20_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     562  untrack temp_0_ret_of_getch_20_0 
              #                    occupy a0 with temp_0_ret_of_getch_20_0
              #                    release a0 with temp_0_ret_of_getch_20_0
              #                     520  f_20_1 = i32 0_0 
              #                    occupy a0 with f_20_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_24 
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: f_20_1, tracked: true } |     a1:Freed { symidx: ch_20_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     77   label while.head_24: 
.while.head_24:
              #                     69   temp_7_cmp_23_0 = icmp i32 Slt ch_20_1, 48_0 
              #                    occupy a1 with ch_20_1
              #                    occupy a2 with 48_0
    li      a2, 48
              #                    occupy a3 with temp_7_cmp_23_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     78   br i1 temp_7_cmp_23_0, label branch_short_circuit_c_true_200, label branch_short_circuit_p_false_200 
              #                    occupy a3 with temp_7_cmp_23_0
              #                    free a3
              #                    occupy a3 with temp_7_cmp_23_0
    bnez    a3, .branch_short_circuit_c_true_200
              #                    free a3
    j       .branch_short_circuit_p_false_200
              #                    regtab     a0:Freed { symidx: f_20_1, tracked: true } |     a1:Freed { symidx: ch_20_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_23_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     72   label branch_short_circuit_c_true_200: 
.branch_short_circuit_c_true_200:
              #                     98   temp_12_cmp_26_0 = icmp i32 Eq ch_20_1, 45_0 
              #                    occupy a1 with ch_20_1
              #                    occupy a2 with 45_0
    li      a2, 45
              #                    occupy a4 with temp_12_cmp_26_0
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     101  br i1 temp_12_cmp_26_0, label branch_true_27, label UP_53_0 
              #                    occupy a4 with temp_12_cmp_26_0
              #                    free a4
              #                    occupy a4 with temp_12_cmp_26_0
    bnez    a4, .branch_true_27
              #                    free a4
    j       .UP_53_0
              #                    regtab     a0:Freed { symidx: f_20_1, tracked: true } |     a1:Freed { symidx: ch_20_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_26_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     99   label branch_true_27: 
.branch_true_27:
              #                     573  untrack temp_10_cmp_30_0 
              #                     572  untrack x_20_1 
              #                     571  untrack temp_5_ret_of_getch_32_0 
              #                     570  untrack temp_7_cmp_23_0 
              #                    occupy a3 with temp_7_cmp_23_0
              #                    release a3 with temp_7_cmp_23_0
              #                     569  untrack temp_12_cmp_26_0 
              #                    occupy a4 with temp_12_cmp_26_0
              #                    release a4 with temp_12_cmp_26_0
              #                     568  untrack temp_3_arithop_32_0 
              #                     567  untrack temp_9_cmp_30_0 
              #                     566  untrack temp_2_arithop_32_0 
              #                     565  untrack temp_4_arithop_32_0 
              #                     564  untrack ch_20_3 
              #                     563  untrack temp_8_cmp_23_0 
              #                     67   (nop) 
              #                     521  f_20_3 = i32 1_0 
              #                    occupy a2 with f_20_3
    li      a2, 1
              #                    free a2
              #                          jump label: branch_false_27 
    j       .branch_false_27
              #                    regtab     a0:Freed { symidx: f_20_1, tracked: true } |     a1:Freed { symidx: ch_20_1, tracked: true } |     a2:Freed { symidx: f_20_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     100  label branch_false_27: 
.branch_false_27:
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a0:Freed { symidx: f_20_1, tracked: true } |     a1:Freed { symidx: ch_20_1, tracked: true } |     a2:Freed { symidx: f_20_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     65   temp_6_ret_of_getch_25_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with f_20_1
              #                    store to f_20_1 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with f_20_1
              #                    occupy a1 with ch_20_1
              #                    store to ch_20_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_20_1
              #                    occupy a2 with f_20_3
              #                    store to f_20_3 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with f_20_3
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     66   (nop) 
              #                     522  f_20_1 = i32 f_20_3 
              #                    occupy a1 with f_20_3
              #                    load from f_20_3 in mem


    lw      a1,32(sp)
              #                    occupy a2 with f_20_1
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     523  ch_20_1 = i32 temp_6_ret_of_getch_25_0 
              #                    occupy a0 with temp_6_ret_of_getch_25_0
              #                    occupy a3 with ch_20_1
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          jump label: while.head_24 
              #                    occupy a3 with ch_20_1
              #                    store to ch_20_1 in mem offset legal
    sw      a3,48(sp)
              #                    release a3 with ch_20_1
              #                    occupy a2 with f_20_1
              #                    store to f_20_1 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with f_20_1
              #                    occupy a0 with temp_6_ret_of_getch_25_0
              #                    store to temp_6_ret_of_getch_25_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_6_ret_of_getch_25_0
              #                    occupy a0 with f_20_1
              #                    load from f_20_1 in mem


    lw      a0,36(sp)
              #                    occupy a1 with f_20_3
              #                    store to f_20_3 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with f_20_3
              #                    occupy a1 with ch_20_1
              #                    load from ch_20_1 in mem


    lw      a1,48(sp)
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: f_20_1, tracked: true } |     a1:Freed { symidx: ch_20_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_26_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     517  label UP_53_0: 
.UP_53_0:
              #                     524  f_20_3 = i32 f_20_1 
              #                    occupy a0 with f_20_1
              #                    occupy a2 with f_20_3
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          jump label: branch_false_27 
              #                    occupy a3 with temp_7_cmp_23_0
              #                    store to temp_7_cmp_23_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_7_cmp_23_0
              #                    occupy a4 with temp_12_cmp_26_0
              #                    store to temp_12_cmp_26_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_12_cmp_26_0
    j       .branch_false_27
              #                    regtab     a0:Freed { symidx: f_20_1, tracked: true } |     a1:Freed { symidx: ch_20_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_23_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     74   label branch_short_circuit_p_false_200: 
.branch_short_circuit_p_false_200:
              #                     71   temp_8_cmp_23_0 = icmp i32 Sgt ch_20_1, 57_0 
              #                    occupy a1 with ch_20_1
              #                    occupy a2 with 57_0
    li      a2, 57
              #                    occupy a4 with temp_8_cmp_23_0
    slt     a4,a2,a1
              #                    free a1
              #                    free a2
              #                    free a4
              #                     76   br i1 temp_8_cmp_23_0, label branch_short_circuit_c_true_200, label UP_32_0 
              #                    occupy a4 with temp_8_cmp_23_0
              #                    free a4
              #                    occupy a4 with temp_8_cmp_23_0
              #                    store to temp_8_cmp_23_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_8_cmp_23_0
              #                    occupy a2 with temp_8_cmp_23_0
              #                    load from temp_8_cmp_23_0 in mem


    lb      a2,6(sp)
    bnez    a2, .branch_short_circuit_c_true_200
              #                    free a2
    j       .UP_32_0
              #                    regtab     a0:Freed { symidx: f_20_1, tracked: true } |     a1:Freed { symidx: ch_20_1, tracked: true } |     a2:Freed { symidx: temp_8_cmp_23_0, tracked: true } |     a3:Freed { symidx: temp_7_cmp_23_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     518  label UP_32_0: 
.UP_32_0:
              #                     578  untrack temp_6_ret_of_getch_25_0 
              #                     577  untrack temp_12_cmp_26_0 
              #                     576  untrack f_20_3 
              #                     575  untrack temp_7_cmp_23_0 
              #                    occupy a3 with temp_7_cmp_23_0
              #                    release a3 with temp_7_cmp_23_0
              #                     574  untrack temp_8_cmp_23_0 
              #                    occupy a2 with temp_8_cmp_23_0
              #                    release a2 with temp_8_cmp_23_0
              #                     525  ch_20_3 = i32 ch_20_1 
              #                    occupy a1 with ch_20_1
              #                    occupy a2 with ch_20_3
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     526  x_20_1 = i32 0_0 
              #                    occupy a3 with x_20_1
    li      a3, 0
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_200 
    j       .branch_short_circuit_c_false_200
              #                    regtab     a0:Freed { symidx: f_20_1, tracked: true } |     a1:Freed { symidx: ch_20_1, tracked: true } |     a2:Freed { symidx: ch_20_3, tracked: true } |     a3:Freed { symidx: x_20_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     73   label branch_short_circuit_c_false_200: 
.branch_short_circuit_c_false_200:
              #                     80   temp_9_cmp_30_0 = icmp i32 Sge ch_20_3, 48_0 
              #                    occupy a2 with ch_20_3
              #                    occupy a4 with 48_0
    li      a4, 48
              #                    occupy a5 with temp_9_cmp_30_0
    slt     a5,a2,a4
    xori    a5,a5,1
              #                    free a2
              #                    free a4
              #                    free a5
              #                     88   br i1 temp_9_cmp_30_0, label branch_short_circuit_p_true_216, label branch_short_circuit_c_false_216 
              #                    occupy a5 with temp_9_cmp_30_0
              #                    free a5
              #                    occupy a5 with temp_9_cmp_30_0
    bnez    a5, .branch_short_circuit_p_true_216
              #                    free a5
    j       .branch_short_circuit_c_false_216
              #                    regtab     a0:Freed { symidx: f_20_1, tracked: true } |     a1:Freed { symidx: ch_20_1, tracked: true } |     a2:Freed { symidx: ch_20_3, tracked: true } |     a3:Freed { symidx: x_20_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_30_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     85   label branch_short_circuit_p_true_216: 
.branch_short_circuit_p_true_216:
              #                     82   temp_10_cmp_30_0 = icmp i32 Sle ch_20_3, 57_0 
              #                    occupy a2 with ch_20_3
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a6 with temp_10_cmp_30_0
    slt     a6,a4,a2
    xori    a6,a6,1
              #                    free a2
              #                    free a4
              #                    free a6
              #                     87   br i1 temp_10_cmp_30_0, label branch_short_circuit_c_true_216, label branch_short_circuit_c_false_216 
              #                    occupy a6 with temp_10_cmp_30_0
              #                    free a6
              #                    occupy a6 with temp_10_cmp_30_0
    bnez    a6, .branch_short_circuit_c_true_216
              #                    free a6
              #                    occupy a6 with temp_10_cmp_30_0
              #                    store to temp_10_cmp_30_0 in mem offset legal
    sb      a6,4(sp)
              #                    release a6 with temp_10_cmp_30_0
    j       .branch_short_circuit_c_false_216
              #                    regtab     a0:Freed { symidx: f_20_1, tracked: true } |     a1:Freed { symidx: ch_20_1, tracked: true } |     a2:Freed { symidx: ch_20_3, tracked: true } |     a3:Freed { symidx: x_20_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_cmp_30_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     83   label branch_short_circuit_c_true_216: 
.branch_short_circuit_c_true_216:
              #                     55   temp_2_arithop_32_0 = Mul i32 x_20_1, 10_0 
              #                    occupy a4 with temp_2_arithop_32_0
              #                    occupy a3 with x_20_1
              #                    occupy a7 with 10_0
    li      a7, 10
    mulw    a4,a3,a7
              #                    free a3
              #                    free a7
              #                    free a4
              #                     57   temp_3_arithop_32_0 = Add i32 temp_2_arithop_32_0, ch_20_3 
              #                    occupy a4 with temp_2_arithop_32_0
              #                    occupy a2 with ch_20_3
              #                    occupy s1 with temp_3_arithop_32_0
    ADDW    s1,a4,a2
              #                    free a4
              #                    free a2
              #                    free s1
              #                     59   temp_4_arithop_32_0 = Sub i32 temp_3_arithop_32_0, 48_0 
              #                    occupy s1 with temp_3_arithop_32_0
              #                    occupy s2 with 48_0
    li      s2, 48
              #                    occupy s3 with temp_4_arithop_32_0
              #                    regtab:    a0:Freed { symidx: f_20_1, tracked: true } |     a1:Freed { symidx: ch_20_1, tracked: true } |     a2:Freed { symidx: ch_20_3, tracked: true } |     a3:Freed { symidx: x_20_1, tracked: true } |     a4:Freed { symidx: temp_2_arithop_32_0, tracked: true } |     a5:Freed { symidx: temp_9_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_cmp_30_0, tracked: true } |     a7:Freed { symidx: 10_0, tracked: false } |     s1:Occupied { symidx: temp_3_arithop_32_0, tracked: true, occupy_count: 1 } |     s2:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     s3:Occupied { symidx: temp_4_arithop_32_0, tracked: true, occupy_count: 1 } |  released_gpr_count:5,released_fpr_count:24


    subw    s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                     60   (nop) 
              #                     62   temp_5_ret_of_getch_32_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_3_arithop_32_0
              #                    store to temp_3_arithop_32_0 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with temp_3_arithop_32_0
              #                    occupy s3 with temp_4_arithop_32_0
              #                    store to temp_4_arithop_32_0 in mem offset legal
    sw      s3,16(sp)
              #                    release s3 with temp_4_arithop_32_0
              #                    occupy a0 with f_20_1
              #                    store to f_20_1 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with f_20_1
              #                    occupy a1 with ch_20_1
              #                    store to ch_20_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_20_1
              #                    occupy a2 with ch_20_3
              #                    store to ch_20_3 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with ch_20_3
              #                    occupy a3 with x_20_1
              #                    store to x_20_1 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with x_20_1
              #                    occupy a4 with temp_2_arithop_32_0
              #                    store to temp_2_arithop_32_0 in mem offset legal
    sw      a4,24(sp)
              #                    release a4 with temp_2_arithop_32_0
              #                    occupy a5 with temp_9_cmp_30_0
              #                    store to temp_9_cmp_30_0 in mem offset legal
    sb      a5,5(sp)
              #                    release a5 with temp_9_cmp_30_0
              #                    occupy a6 with temp_10_cmp_30_0
              #                    store to temp_10_cmp_30_0 in mem offset legal
    sb      a6,4(sp)
              #                    release a6 with temp_10_cmp_30_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     63   (nop) 
              #                     527  x_20_1 = i32 temp_4_arithop_32_0 
              #                    occupy a1 with temp_4_arithop_32_0
              #                    load from temp_4_arithop_32_0 in mem


    lw      a1,16(sp)
              #                    occupy a2 with x_20_1
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     528  ch_20_3 = i32 temp_5_ret_of_getch_32_0 
              #                    occupy a0 with temp_5_ret_of_getch_32_0
              #                    occupy a3 with ch_20_3
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_200 
              #                    occupy a3 with ch_20_3
              #                    store to ch_20_3 in mem offset legal
    sw      a3,44(sp)
              #                    release a3 with ch_20_3
              #                    occupy a2 with x_20_1
              #                    store to x_20_1 in mem offset legal
    sw      a2,40(sp)
              #                    release a2 with x_20_1
              #                    occupy a3 with x_20_1
              #                    load from x_20_1 in mem


    lw      a3,40(sp)
              #                    occupy a2 with ch_20_3
              #                    load from ch_20_3 in mem


    lw      a2,44(sp)
              #                    occupy a0 with temp_5_ret_of_getch_32_0
              #                    store to temp_5_ret_of_getch_32_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_5_ret_of_getch_32_0
              #                    occupy a0 with f_20_1
              #                    load from f_20_1 in mem


    lw      a0,36(sp)
              #                    occupy a1 with temp_4_arithop_32_0
              #                    store to temp_4_arithop_32_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_4_arithop_32_0
              #                    occupy a1 with ch_20_1
              #                    load from ch_20_1 in mem


    lw      a1,48(sp)
    j       .branch_short_circuit_c_false_200
              #                    regtab     a0:Freed { symidx: f_20_1, tracked: true } |     a1:Freed { symidx: ch_20_1, tracked: true } |     a2:Freed { symidx: ch_20_3, tracked: true } |     a3:Freed { symidx: x_20_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_30_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     84   label branch_short_circuit_c_false_216: 
.branch_short_circuit_c_false_216:
              #                     90   temp_11__803_0 = icmp i32 Ne f_20_1, 0_0 
              #                    occupy a0 with f_20_1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a6 with temp_11__803_0
    xor     a6,a0,a4
    snez    a6, a6
              #                    free a0
              #                    free a4
              #                    free a6
              #                     579  untrack f_20_1 
              #                    occupy a0 with f_20_1
              #                    release a0 with f_20_1
              #                     93   br i1 temp_11__803_0, label branch_true_36, label branch_false_36 
              #                    occupy a6 with temp_11__803_0
              #                    free a6
              #                    occupy a6 with temp_11__803_0
    bnez    a6, .branch_true_36
              #                    free a6
    j       .branch_false_36
              #                    regtab     a1:Freed { symidx: ch_20_1, tracked: true } |     a2:Freed { symidx: ch_20_3, tracked: true } |     a3:Freed { symidx: x_20_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_11__803_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     91   label branch_true_36: 
.branch_true_36:
              #                     580  untrack temp_11__803_0 
              #                    occupy a6 with temp_11__803_0
              #                    release a6 with temp_11__803_0
              #                     52   temp_1__35_0 = Sub i32 0_0, x_20_1 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a3 with x_20_1
              #                    occupy a4 with temp_1__35_0
              #                    regtab:    a0:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a1:Freed { symidx: ch_20_1, tracked: true } |     a2:Freed { symidx: ch_20_3, tracked: true } |     a3:Occupied { symidx: x_20_1, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: temp_1__35_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_9_cmp_30_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24


    subw    a4,a0,a3
              #                    free a0
              #                    free a3
              #                    free a4
              #                     53   ret temp_1__35_0 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    occupy a4 with temp_1__35_0
              #                    store to temp_1__35_0 in mem offset legal
    sw      a4,28(sp)
              #                    release a4 with temp_1__35_0
              #                    occupy a0 with temp_1__35_0
              #                    load from temp_1__35_0 in mem


    lw      a0,28(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ch_20_1, tracked: true } |     a2:Freed { symidx: ch_20_3, tracked: true } |     a3:Freed { symidx: x_20_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_11__803_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     92   label branch_false_36: 
.branch_false_36:
              #                     582  untrack temp_11__803_0 
              #                    occupy a6 with temp_11__803_0
              #                    release a6 with temp_11__803_0
              #                     581  untrack temp_1__35_0 
              #                     49   ret x_20_1 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    occupy a3 with x_20_1
              #                    store to x_20_1 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with x_20_1
              #                    occupy a0 with x_20_1
              #                    load from x_20_1 in mem


    lw      a0,40(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     35   Define add_edge_0 "from_39_0,To_39_0," -> add_edge_ret_0 
    .globl add_edge
    .type add_edge,@function
add_edge:
              #                    mem layout:|ra_add_edge:8 at 80|s0_add_edge:8 at 72|from _s39 _i0:4 at 68|To _s39 _i0:4 at 64|temp_13_value_from_ptr _s41 _i0:4 at 60|none:4 at 56|temp_14_ptr_of_*to_0:8 at 48|temp_16_ptr_of_*next_0:8 at 40|temp_17_ptr_of_*head_0:8 at 32|temp_18_ele_of_*head_0 _s41 _i0:4 at 28|none:4 at 24|temp_19_ptr_of_*head_0:8 at 16|temp_22_arithop _s41 _i0:4 at 12|none:4 at 8|temp_23_ptr_of_*f_0:8 at 0
    addi    sp,sp,-88
              #                    store to ra_add_edge_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_add_edge_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                     423  f_0_1 = chi f_0_0:35 
              #                     424  cnt_0_1 = chi cnt_0_0:35 
              #                     425  next_0_1 = chi next_0_0:35 
              #                     426  to_0_1 = chi to_0_0:35 
              #                     427  head_0_1 = chi head_0_0:35 
              #                     102  alloc i32 [temp_13_value_from_ptr_41] 
              #                     105  alloc ptr->i32 [temp_14_ptr_of_*to_0_41] 
              #                     109  alloc i32 [temp_15_value_from_ptr_41] 
              #                     112  alloc ptr->i32 [temp_16_ptr_of_*next_0_41] 
              #                     114  alloc ptr->i32 [temp_17_ptr_of_*head_0_41] 
              #                     116  alloc i32 [temp_18_ele_of_*head_0_41] 
              #                     121  alloc ptr->i32 [temp_19_ptr_of_*head_0_41] 
              #                     123  alloc i32 [temp_20_value_from_ptr_41] 
              #                     128  alloc i32 [temp_21_value_from_ptr_41] 
              #                     131  alloc i32 [temp_22_arithop_41] 
              #                     135  alloc ptr->i32 [temp_23_ptr_of_*f_0_41] 
              #                    regtab     a0:Freed { symidx: from_39_0, tracked: true } |     a1:Freed { symidx: To_39_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     103  temp_13_value_from_ptr_41_0 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a3 with temp_13_value_from_ptr_41_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     104  mu cnt_0_1:103 
              #                     106  temp_14_ptr_of_*to_0_41 = GEP *to_0:ptr->i32 [Some(temp_13_value_from_ptr_41_0)] 
              #                    occupy a4 with temp_14_ptr_of_*to_0_41
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_13_value_from_ptr_41_0
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
              #                     107  store To_39_0:i32 temp_14_ptr_of_*to_0_41:ptr->i32 
              #                    occupy a4 with temp_14_ptr_of_*to_0_41
              #                    occupy a1 with To_39_0
    sw      a1,0(a4)
              #                    free a1
              #                    free a4
              #                     586  untrack temp_14_ptr_of_*to_0_41 
              #                    occupy a4 with temp_14_ptr_of_*to_0_41
              #                    release a4 with temp_14_ptr_of_*to_0_41
              #                     108  to_0_2 = chi to_0_1:107 
              #                     110  (nop) 
              #                     111  mu cnt_0_1:110 
              #                     113  temp_16_ptr_of_*next_0_41 = GEP *next_0:ptr->i32 [Some(temp_13_value_from_ptr_41_0)] 
              #                    occupy a4 with temp_16_ptr_of_*next_0_41
    li      a4, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_13_value_from_ptr_41_0
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
              #                     115  temp_17_ptr_of_*head_0_41 = GEP *head_0:Array:i32:[None] [Some(from_39_0)] 
              #                    occupy s2 with temp_17_ptr_of_*head_0_41
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with from_39_0
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
              #                     117  temp_18_ele_of_*head_0_41_0 = load temp_17_ptr_of_*head_0_41:ptr->i32 
              #                    occupy s2 with temp_17_ptr_of_*head_0_41
              #                    occupy s5 with temp_18_ele_of_*head_0_41_0
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                     118  mu head_0_1:117 
              #                     119  store temp_18_ele_of_*head_0_41_0:i32 temp_16_ptr_of_*next_0_41:ptr->i32 
              #                    occupy a4 with temp_16_ptr_of_*next_0_41
              #                    occupy s5 with temp_18_ele_of_*head_0_41_0
    sw      s5,0(a4)
              #                    free s5
              #                    free a4
              #                     589  untrack temp_18_ele_of_*head_0_41_0 
              #                    occupy s5 with temp_18_ele_of_*head_0_41_0
              #                    release s5 with temp_18_ele_of_*head_0_41_0
              #                     585  untrack temp_16_ptr_of_*next_0_41 
              #                    occupy a4 with temp_16_ptr_of_*next_0_41
              #                    release a4 with temp_16_ptr_of_*next_0_41
              #                     120  next_0_2 = chi next_0_1:119 
              #                     122  (nop) 
              #                     124  (nop) 
              #                     125  mu cnt_0_1:124 
              #                     126  store temp_13_value_from_ptr_41_0:i32 temp_17_ptr_of_*head_0_41:ptr->i32 
              #                    occupy s2 with temp_17_ptr_of_*head_0_41
              #                    occupy a3 with temp_13_value_from_ptr_41_0
    sw      a3,0(s2)
              #                    free a3
              #                    free s2
              #                     583  untrack temp_17_ptr_of_*head_0_41 
              #                    occupy s2 with temp_17_ptr_of_*head_0_41
              #                    release s2 with temp_17_ptr_of_*head_0_41
              #                     127  head_0_2 = chi head_0_1:126 
              #                     129  (nop) 
              #                     130  mu cnt_0_1:129 
              #                     132  temp_22_arithop_41_0 = Add i32 temp_13_value_from_ptr_41_0, 1_0 
              #                    occupy a3 with temp_13_value_from_ptr_41_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s2 with temp_22_arithop_41_0
    ADDW    s2,a3,a4
              #                    free a3
              #                    free a4
              #                    free s2
              #                     588  untrack temp_13_value_from_ptr_41_0 
              #                    occupy a3 with temp_13_value_from_ptr_41_0
              #                    release a3 with temp_13_value_from_ptr_41_0
              #                     133  store temp_22_arithop_41_0:i32 *cnt_0:ptr->i32 
              #                    occupy a3 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a3, cnt
              #                    occupy reg a3 with *cnt_0
              #                    occupy s2 with temp_22_arithop_41_0
    sw      s2,0(a3)
              #                    free s2
              #                    free a3
              #                     591  untrack temp_22_arithop_41_0 
              #                    occupy s2 with temp_22_arithop_41_0
              #                    release s2 with temp_22_arithop_41_0
              #                     134  cnt_0_2 = chi cnt_0_1:133 
              #                     136  temp_23_ptr_of_*f_0_41 = GEP *f_0:ptr->Array:i32:[Some(20_0)] [Some(To_39_0), Some(0_0)] 
              #                    occupy s2 with temp_23_ptr_of_*f_0_41
    li      s2, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s6 with 20_0
    li      s6, 20
              #                    occupy a1 with To_39_0
    mul     s5,s6,a1
              #                    free s6
              #                    free a1
    add     s2,s2,s5
              #                    free s5
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     s2,s2,s7
              #                    free s7
    slli s2,s2,2
              #                    occupy s7 with *f_0
              #                       load label f as ptr to reg
    la      s7, f
              #                    occupy reg s7 with *f_0
    add     s2,s2,s7
              #                    free s7
              #                    free s2
              #                     584  untrack To_39_0 
              #                    occupy a1 with To_39_0
              #                    release a1 with To_39_0
              #                     137  store from_39_0:i32 temp_23_ptr_of_*f_0_41:ptr->i32 
              #                    occupy s2 with temp_23_ptr_of_*f_0_41
              #                    occupy a0 with from_39_0
    sw      a0,0(s2)
              #                    free a0
              #                    free s2
              #                     590  untrack from_39_0 
              #                    occupy a0 with from_39_0
              #                    release a0 with from_39_0
              #                     587  untrack temp_23_ptr_of_*f_0_41 
              #                    occupy s2 with temp_23_ptr_of_*f_0_41
              #                    release s2 with temp_23_ptr_of_*f_0_41
              #                     138  f_0_2 = chi f_0_1:137 
              #                          jump label: exit_16 
    j       .exit_16
              #                    regtab  released_gpr_count:8,released_fpr_count:24
              #                     140  label exit_16: 
.exit_16:
              #                     428  mu f_0_2:139 
              #                     429  mu cnt_0_2:139 
              #                     430  mu next_0_2:139 
              #                     431  mu to_0_2:139 
              #                     432  mu head_0_2:139 
              #                     139  ret 
              #                    load from ra_add_edge_0 in mem
    ld      ra,80(sp)
              #                    load from s0_add_edge_0 in mem
    ld      s0,72(sp)
    addi    sp,sp,88
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     36   Define init_0 "" -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 48|s0_init:8 at 40|temp_24_ptr_of_*dep_0:8 at 32|i _s48 _i1:4 at 28|none:4 at 24|temp_25_ptr_of_*head_0:8 at 16|temp_26_arithop _s53 _i0:4 at 12|temp_27_value_from_ptr _s51 _i0:4 at 8|temp_28_cmp _s51 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-56
              #                    store to ra_init_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     433  dep_0_1 = chi dep_0_0:36 
              #                     434  head_0_3 = chi head_0_0:36 
              #                     141  alloc ptr->i32 [temp_24_ptr_of_*dep_0_48] 
              #                     146  alloc i32 [i_48] 
              #                     147  alloc ptr->i32 [temp_25_ptr_of_*head_0_53] 
              #                     151  alloc i32 [temp_26_arithop_53] 
              #                     154  alloc i32 [temp_27_value_from_ptr_51] 
              #                     157  alloc i1 [temp_28_cmp_51] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     142  temp_24_ptr_of_*dep_0_48 = GEP *dep_0:ptr->i32 [Some(0_0)] 
              #                    occupy a0 with temp_24_ptr_of_*dep_0_48
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a2 with *dep_0
              #                       load label dep as ptr to reg
    la      a2, dep
              #                    occupy reg a2 with *dep_0
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                     143  store 0x3f3f3f3f_0:i32 temp_24_ptr_of_*dep_0_48:ptr->i32 
              #                    occupy a0 with temp_24_ptr_of_*dep_0_48
              #                    occupy a3 with 0x3f3f3f3f_0
    li      a3, 0x3f3f3f3f
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     592  untrack temp_24_ptr_of_*dep_0_48 
              #                    occupy a0 with temp_24_ptr_of_*dep_0_48
              #                    release a0 with temp_24_ptr_of_*dep_0_48
              #                     144  dep_0_2 = chi dep_0_1:143 
              #                     145  (nop) 
              #                     155  temp_27_value_from_ptr_51_0 = load *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a4 with temp_27_value_from_ptr_51_0
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     156  mu n_0_0:155 
              #                     529  i_48_1 = i32 1_0 
              #                    occupy a5 with i_48_1
    li      a5, 1
              #                    free a5
              #                          jump label: while.head_52 
    j       .while.head_52
              #                    regtab     a4:Freed { symidx: temp_27_value_from_ptr_51_0, tracked: true } |     a5:Freed { symidx: i_48_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     159  label while.head_52: 
.while.head_52:
              #                     158  temp_28_cmp_51_0 = icmp i32 Sle i_48_1, temp_27_value_from_ptr_51_0 
              #                    occupy a5 with i_48_1
              #                    occupy a4 with temp_27_value_from_ptr_51_0
              #                    occupy a0 with temp_28_cmp_51_0
    slt     a0,a4,a5
    xori    a0,a0,1
              #                    free a5
              #                    free a4
              #                    free a0
              #                     162  br i1 temp_28_cmp_51_0, label while.body_52, label while.exit_52 
              #                    occupy a0 with temp_28_cmp_51_0
              #                    free a0
              #                    occupy a0 with temp_28_cmp_51_0
    bnez    a0, .while.body_52
              #                    free a0
    j       .while.exit_52
              #                    regtab     a0:Freed { symidx: temp_28_cmp_51_0, tracked: true } |     a4:Freed { symidx: temp_27_value_from_ptr_51_0, tracked: true } |     a5:Freed { symidx: i_48_1, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     160  label while.body_52: 
.while.body_52:
              #                     148  temp_25_ptr_of_*head_0_53 = GEP *head_0:ptr->i32 [Some(i_48_1)] 
              #                    occupy a1 with temp_25_ptr_of_*head_0_53
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with i_48_1
    mv      a2, a5
              #                    free a5
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *head_0
              #                       load label head as ptr to reg
    la      a3, head
              #                    occupy reg a3 with *head_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     149  store -1_0:i32 temp_25_ptr_of_*head_0_53:ptr->i32 
              #                    occupy a1 with temp_25_ptr_of_*head_0_53
              #                    occupy a6 with -1_0
    li      a6, -1
    sw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                     150  head_0_5 = chi head_0_4:149 
              #                     152  temp_26_arithop_53_0 = Add i32 i_48_1, 1_0 
              #                    occupy a5 with i_48_1
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_26_arithop_53_0
    ADDW    s1,a5,a7
              #                    free a5
              #                    free a7
              #                    free s1
              #                     153  (nop) 
              #                     530  i_48_1 = i32 temp_26_arithop_53_0 
              #                    occupy s1 with temp_26_arithop_53_0
              #                    occupy a5 with i_48_1
    mv      a5, s1
              #                    free s1
              #                    free a5
              #                          jump label: while.head_52 
              #                    occupy s1 with temp_26_arithop_53_0
              #                    store to temp_26_arithop_53_0 in mem offset legal
    sw      s1,12(sp)
              #                    release s1 with temp_26_arithop_53_0
              #                    occupy a1 with temp_25_ptr_of_*head_0_53
              #                    store to temp_25_ptr_of_*head_0_53 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_25_ptr_of_*head_0_53
              #                    occupy a0 with temp_28_cmp_51_0
              #                    store to temp_28_cmp_51_0 in mem offset legal
    sb      a0,7(sp)
              #                    release a0 with temp_28_cmp_51_0
    j       .while.head_52
              #                    regtab     a0:Freed { symidx: temp_28_cmp_51_0, tracked: true } |     a4:Freed { symidx: temp_27_value_from_ptr_51_0, tracked: true } |     a5:Freed { symidx: i_48_1, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     161  label while.exit_52: 
.while.exit_52:
              #                     594  untrack i_48_1 
              #                    occupy a5 with i_48_1
              #                    release a5 with i_48_1
              #                     593  untrack temp_27_value_from_ptr_51_0 
              #                    occupy a4 with temp_27_value_from_ptr_51_0
              #                    release a4 with temp_27_value_from_ptr_51_0
              #                     435  mu dep_0_2:163 
              #                     436  mu head_0_4:163 
              #                     163  ret 
              #                    load from ra_init_0 in mem
    ld      ra,48(sp)
              #                    load from s0_init_0 in mem
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     37   Define tree_0 "x_56_0,d_56_0," -> tree_ret_0 
    .globl tree
    .type tree,@function
tree:
              #                    mem layout:|ra_tree:8 at 128|s0_tree:8 at 120|x _s56 _i0:4 at 116|d _s56 _i0:4 at 112|temp_29_ptr_of_*dep_0:8 at 104|i _s58 _i1:4 at 100|i _s58 _i4:4 at 96|temp_30_ptr_of_*head_0:8 at 88|temp_31_ele_of_*head_0 _s58 _i0:4 at 84|none:4 at 80|temp_32_ptr_of_*to_0:8 at 72|temp_33_ele_of_*to_0 _s69 _i0:4 at 68|temp_34_arithop _s69 _i0:4 at 64|temp_35_ptr_of_*next_0:8 at 56|temp_36_ele_of_*next_0 _s69 _i0:4 at 52|temp_37_arithop _s63 _i0:4 at 48|temp_38_ptr_of_*f_0:8 at 40|temp_39_ptr_of_*f_0:8 at 32|temp_41_ptr_of_*f_0:8 at 24|temp_42_ele_of_*f_0 _s63 _i0:4 at 20|none:4 at 16|temp_44_ptr_of_*f_0:8 at 8|temp_45_ele_of_*f_0 _s61 _i0:4 at 4|temp_46_ _s1761 _i0:1 at 3|temp_47_cmp _s67 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-136
              #                    store to ra_tree_0 in mem offset legal
    sd      ra,128(sp)
              #                    store to s0_tree_0 in mem offset legal
    sd      s0,120(sp)
    addi    s0,sp,136
              #                     437  dep_0_3 = chi dep_0_0:37 
              #                     438  f_0_3 = chi f_0_0:37 
              #                     164  alloc ptr->i32 [temp_29_ptr_of_*dep_0_58] 
              #                     169  alloc i32 [i_58] 
              #                     170  alloc ptr->i32 [temp_30_ptr_of_*head_0_58] 
              #                     172  alloc i32 [temp_31_ele_of_*head_0_58] 
              #                     176  alloc ptr->i32 [temp_32_ptr_of_*to_0_69] 
              #                     178  alloc i32 [temp_33_ele_of_*to_0_69] 
              #                     182  alloc i32 [y_69] 
              #                     183  alloc i32 [temp_34_arithop_69] 
              #                     186  alloc ptr->i32 [temp_35_ptr_of_*next_0_69] 
              #                     188  alloc i32 [temp_36_ele_of_*next_0_69] 
              #                     192  alloc i32 [temp_37_arithop_63] 
              #                     194  alloc ptr->i32 [temp_38_ptr_of_*f_0_63] 
              #                     196  alloc ptr->i32 [temp_39_ptr_of_*f_0_63] 
              #                     198  alloc i32 [temp_40_ele_of_*f_0_63] 
              #                     201  alloc ptr->i32 [temp_41_ptr_of_*f_0_63] 
              #                     203  alloc i32 [temp_42_ele_of_*f_0_63] 
              #                     208  alloc i32 [temp_43_arithop_63] 
              #                     211  alloc ptr->i32 [temp_44_ptr_of_*f_0_61] 
              #                     213  alloc i32 [temp_45_ele_of_*f_0_61] 
              #                     216  alloc i1 [temp_46__1761] 
              #                     222  alloc i1 [temp_47_cmp_67] 
              #                    regtab     a0:Freed { symidx: x_56_0, tracked: true } |     a1:Freed { symidx: d_56_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     165  temp_29_ptr_of_*dep_0_58 = GEP *dep_0:ptr->i32 [Some(x_56_0)] 
              #                    occupy a2 with temp_29_ptr_of_*dep_0_58
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with x_56_0
    mv      a3, a0
              #                    free a0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *dep_0
              #                       load label dep as ptr to reg
    la      a4, dep
              #                    occupy reg a4 with *dep_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     166  store d_56_0:i32 temp_29_ptr_of_*dep_0_58:ptr->i32 
              #                    occupy a2 with temp_29_ptr_of_*dep_0_58
              #                    occupy a1 with d_56_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     595  untrack temp_29_ptr_of_*dep_0_58 
              #                    occupy a2 with temp_29_ptr_of_*dep_0_58
              #                    release a2 with temp_29_ptr_of_*dep_0_58
              #                     167  dep_0_4 = chi dep_0_3:166 
              #                     168  (nop) 
              #                     531  i_58_1 = i32 0_0 
              #                    occupy a2 with i_58_1
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: x_56_0, tracked: true } |     a1:Freed { symidx: d_56_0, tracked: true } |     a2:Freed { symidx: i_58_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     218  label while.head_62: 
.while.head_62:
              #                     212  temp_44_ptr_of_*f_0_61 = GEP *f_0:Array:i32:[None, Some(20_0)] [Some(x_56_0), Some(i_58_1)] 
              #                    occupy a3 with temp_44_ptr_of_*f_0_61
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with 20_0
    li      a5, 20
              #                    occupy a0 with x_56_0
    mul     a4,a5,a0
              #                    free a5
              #                    free a0
    add     a3,a3,a4
              #                    free a4
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_58_1
    mv      a6, a2
              #                    free a2
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
              #                    occupy a7 with *f_0
              #                       load label f as ptr to reg
    la      a7, f
              #                    occupy reg a7 with *f_0
    add     a3,a3,a7
              #                    free a7
              #                    free a3
              #                     214  temp_45_ele_of_*f_0_61_0 = load temp_44_ptr_of_*f_0_61:ptr->i32 
              #                    occupy a3 with temp_44_ptr_of_*f_0_61
              #                    occupy s1 with temp_45_ele_of_*f_0_61_0
    lw      s1,0(a3)
              #                    free s1
              #                    free a3
              #                     215  mu f_0_4:214 
              #                     217  temp_46__1761_0 = icmp i32 Ne temp_45_ele_of_*f_0_61_0, 0_0 
              #                    occupy s1 with temp_45_ele_of_*f_0_61_0
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s3 with temp_46__1761_0
    xor     s3,s1,s2
    snez    s3, s3
              #                    free s1
              #                    free s2
              #                    free s3
              #                     221  br i1 temp_46__1761_0, label while.body_62, label while.exit_62 
              #                    occupy s3 with temp_46__1761_0
              #                    free s3
              #                    occupy s3 with temp_46__1761_0
    bnez    s3, .while.body_62
              #                    free s3
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: x_56_0, tracked: true } |     a1:Freed { symidx: d_56_0, tracked: true } |     a2:Freed { symidx: i_58_1, tracked: true } |     a3:Freed { symidx: temp_44_ptr_of_*f_0_61, tracked: true } |     s1:Freed { symidx: temp_45_ele_of_*f_0_61_0, tracked: true } |     s3:Freed { symidx: temp_46__1761_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     219  label while.body_62: 
.while.body_62:
              #                     193  temp_37_arithop_63_0 = Add i32 i_58_1, 1_0 
              #                    occupy a2 with i_58_1
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_37_arithop_63_0
    ADDW    a5,a2,a4
              #                    free a2
              #                    occupy a2 with i_58_1
              #                    store to i_58_1 in mem offset legal
    sw      a2,100(sp)
              #                    release a2 with i_58_1
              #                    free a4
              #                    free a5
              #                     195  temp_38_ptr_of_*f_0_63 = GEP *f_0:ptr->Array:i32:[Some(20_0)] [Some(x_56_0), Some(temp_37_arithop_63_0)] 
              #                    occupy a2 with temp_38_ptr_of_*f_0_63
    li      a2, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with 20_0
    li      a7, 20
              #                    occupy a0 with x_56_0
    mul     a6,a7,a0
              #                    free a7
              #                    free a0
              #                    occupy a0 with x_56_0
              #                    store to x_56_0 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with x_56_0
    add     a2,a2,a6
              #                    free a6
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_37_arithop_63_0
    mv      a0, a5
              #                    free a5
              #                    occupy a5 with temp_37_arithop_63_0
              #                    store to temp_37_arithop_63_0 in mem offset legal
    sw      a5,48(sp)
              #                    release a5 with temp_37_arithop_63_0
    add     a2,a2,a0
              #                    free a0
    slli a2,a2,2
              #                    occupy a5 with *f_0
              #                       load label f as ptr to reg
    la      a5, f
              #                    occupy reg a5 with *f_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                     197  (nop) 
              #                     199  (nop) 
              #                     200  mu f_0_4:199 
              #                     202  temp_41_ptr_of_*f_0_63 = GEP *f_0:Array:i32:[None, Some(20_0)] [Some(temp_45_ele_of_*f_0_61_0), Some(i_58_1)] 
              #                    occupy a5 with temp_41_ptr_of_*f_0_63
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with 20_0
    li      a7, 20
              #                    occupy s1 with temp_45_ele_of_*f_0_61_0
    mul     a6,a7,s1
              #                    free a7
              #                    free s1
              #                    occupy s1 with temp_45_ele_of_*f_0_61_0
              #                    store to temp_45_ele_of_*f_0_61_0 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_45_ele_of_*f_0_61_0
    add     a5,a5,a6
              #                    free a6
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with i_58_1
              #                    load from i_58_1 in mem


    lw      a7,100(sp)
    mv      a6, a7
              #                    free a7
              #                    occupy a7 with i_58_1
              #                    store to i_58_1 in mem offset legal
    sw      a7,100(sp)
              #                    release a7 with i_58_1
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a6 with *f_0
              #                       load label f as ptr to reg
    la      a6, f
              #                    occupy reg a6 with *f_0
    add     a5,a5,a6
              #                    free a6
              #                    free a5
              #                     204  temp_42_ele_of_*f_0_63_0 = load temp_41_ptr_of_*f_0_63:ptr->i32 
              #                    occupy a5 with temp_41_ptr_of_*f_0_63
              #                    occupy a6 with temp_42_ele_of_*f_0_63_0
    lw      a6,0(a5)
              #                    free a6
              #                    occupy a6 with temp_42_ele_of_*f_0_63_0
              #                    store to temp_42_ele_of_*f_0_63_0 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_42_ele_of_*f_0_63_0
              #                    free a5
              #                     205  mu f_0_4:204 
              #                     206  store temp_42_ele_of_*f_0_63_0:i32 temp_38_ptr_of_*f_0_63:ptr->i32 
              #                    occupy a2 with temp_38_ptr_of_*f_0_63
              #                    occupy a6 with temp_42_ele_of_*f_0_63_0
              #                    load from temp_42_ele_of_*f_0_63_0 in mem


    lw      a6,20(sp)
    sw      a6,0(a2)
              #                    free a6
              #                    occupy a6 with temp_42_ele_of_*f_0_63_0
              #                    store to temp_42_ele_of_*f_0_63_0 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_42_ele_of_*f_0_63_0
              #                    free a2
              #                     207  f_0_5 = chi f_0_4:206 
              #                     209  (nop) 
              #                     210  (nop) 
              #                     532  i_58_1 = i32 temp_37_arithop_63_0 
              #                    occupy a6 with temp_37_arithop_63_0
              #                    load from temp_37_arithop_63_0 in mem


    lw      a6,48(sp)
              #                    occupy a7 with i_58_1
    mv      a7, a6
              #                    free a6
              #                    occupy a6 with temp_37_arithop_63_0
              #                    store to temp_37_arithop_63_0 in mem offset legal
    sw      a6,48(sp)
              #                    release a6 with temp_37_arithop_63_0
              #                    free a7
              #                    occupy a7 with i_58_1
              #                    store to i_58_1 in mem offset legal
    sw      a7,100(sp)
              #                    release a7 with i_58_1
              #                          jump label: while.head_62 
              #                    occupy a0 with x_56_0
              #                    load from x_56_0 in mem


    lw      a0,116(sp)
              #                    occupy a2 with temp_38_ptr_of_*f_0_63
              #                    store to temp_38_ptr_of_*f_0_63 in mem offset legal
    sd      a2,40(sp)
              #                    release a2 with temp_38_ptr_of_*f_0_63
              #                    occupy a2 with i_58_1
              #                    load from i_58_1 in mem


    lw      a2,100(sp)
              #                    occupy s3 with temp_46__1761_0
              #                    store to temp_46__1761_0 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_46__1761_0
              #                    occupy a3 with temp_44_ptr_of_*f_0_61
              #                    store to temp_44_ptr_of_*f_0_61 in mem offset legal
    sd      a3,8(sp)
              #                    release a3 with temp_44_ptr_of_*f_0_61
              #                    occupy a5 with temp_41_ptr_of_*f_0_63
              #                    store to temp_41_ptr_of_*f_0_63 in mem offset legal
    sd      a5,24(sp)
              #                    release a5 with temp_41_ptr_of_*f_0_63
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: x_56_0, tracked: true } |     a1:Freed { symidx: d_56_0, tracked: true } |     a2:Freed { symidx: i_58_1, tracked: true } |     a3:Freed { symidx: temp_44_ptr_of_*f_0_61, tracked: true } |     s1:Freed { symidx: temp_45_ele_of_*f_0_61_0, tracked: true } |     s3:Freed { symidx: temp_46__1761_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     220  label while.exit_62: 
.while.exit_62:
              #                     596  untrack i_58_1 
              #                    occupy a2 with i_58_1
              #                    release a2 with i_58_1
              #                     171  temp_30_ptr_of_*head_0_58 = GEP *head_0:Array:i32:[None] [Some(x_56_0)] 
              #                    occupy a2 with temp_30_ptr_of_*head_0_58
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with x_56_0
    mv      a4, a0
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with *head_0
              #                       load label head as ptr to reg
    la      a5, head
              #                    occupy reg a5 with *head_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                     600  untrack x_56_0 
              #                    occupy a0 with x_56_0
              #                    release a0 with x_56_0
              #                     173  temp_31_ele_of_*head_0_58_0 = load temp_30_ptr_of_*head_0_58:ptr->i32 
              #                    occupy a2 with temp_30_ptr_of_*head_0_58
              #                    occupy a0 with temp_31_ele_of_*head_0_58_0
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                     599  untrack temp_30_ptr_of_*head_0_58 
              #                    occupy a2 with temp_30_ptr_of_*head_0_58
              #                    release a2 with temp_30_ptr_of_*head_0_58
              #                     174  mu head_0_0:173 
              #                     175  (nop) 
              #                     184  temp_34_arithop_69_0 = Add i32 d_56_0, 1_0 
              #                    occupy a1 with d_56_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a5 with temp_34_arithop_69_0
    ADDW    a5,a1,a2
              #                    free a1
              #                    occupy a1 with d_56_0
              #                    store to d_56_0 in mem offset legal
    sw      a1,112(sp)
              #                    release a1 with d_56_0
              #                    free a2
              #                    free a5
              #                     597  untrack d_56_0 
              #                     533  i_58_4 = i32 temp_31_ele_of_*head_0_58_0 
              #                    occupy a0 with temp_31_ele_of_*head_0_58_0
              #                    occupy a1 with i_58_4
    mv      a1, a0
              #                    free a0
              #                    occupy a0 with temp_31_ele_of_*head_0_58_0
              #                    store to temp_31_ele_of_*head_0_58_0 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_31_ele_of_*head_0_58_0
              #                    free a1
              #                     598  untrack temp_31_ele_of_*head_0_58_0 
              #                          jump label: while.head_68 
    j       .while.head_68
              #                    regtab     a1:Freed { symidx: i_58_4, tracked: true } |     a3:Freed { symidx: temp_44_ptr_of_*f_0_61, tracked: true } |     a5:Freed { symidx: temp_34_arithop_69_0, tracked: true } |     s1:Freed { symidx: temp_45_ele_of_*f_0_61_0, tracked: true } |     s3:Freed { symidx: temp_46__1761_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     224  label while.head_68: 
.while.head_68:
              #                     223  temp_47_cmp_67_0 = icmp i32 Ne i_58_4, -1_0 
              #                    occupy a1 with i_58_4
              #                    occupy a0 with -1_0
    li      a0, -1
              #                    occupy a2 with temp_47_cmp_67_0
    xor     a2,a1,a0
    snez    a2, a2
              #                    free a1
              #                    occupy a1 with i_58_4
              #                    store to i_58_4 in mem offset legal
    sw      a1,96(sp)
              #                    release a1 with i_58_4
              #                    free a0
              #                    free a2
              #                     227  br i1 temp_47_cmp_67_0, label while.body_68, label while.exit_68 
              #                    occupy a2 with temp_47_cmp_67_0
              #                    free a2
              #                    occupy a2 with temp_47_cmp_67_0
    bnez    a2, .while.body_68
              #                    free a2
    j       .while.exit_68
              #                    regtab     a2:Freed { symidx: temp_47_cmp_67_0, tracked: true } |     a3:Freed { symidx: temp_44_ptr_of_*f_0_61, tracked: true } |     a5:Freed { symidx: temp_34_arithop_69_0, tracked: true } |     s1:Freed { symidx: temp_45_ele_of_*f_0_61_0, tracked: true } |     s3:Freed { symidx: temp_46__1761_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     225  label while.body_68: 
.while.body_68:
              #                     177  temp_32_ptr_of_*to_0_69 = GEP *to_0:Array:i32:[None] [Some(i_58_4)] 
              #                    occupy a0 with temp_32_ptr_of_*to_0_69
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_58_4
              #                    load from i_58_4 in mem


    lw      a4,96(sp)
    mv      a1, a4
              #                    free a4
              #                    occupy a4 with i_58_4
              #                    store to i_58_4 in mem offset legal
    sw      a4,96(sp)
              #                    release a4 with i_58_4
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a1 with *to_0
              #                       load label to as ptr to reg
    la      a1, to
              #                    occupy reg a1 with *to_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                    occupy a0 with temp_32_ptr_of_*to_0_69
              #                    store to temp_32_ptr_of_*to_0_69 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with temp_32_ptr_of_*to_0_69
              #                     179  temp_33_ele_of_*to_0_69_0 = load temp_32_ptr_of_*to_0_69:ptr->i32 
              #                    occupy a0 with temp_32_ptr_of_*to_0_69
              #                    load from temp_32_ptr_of_*to_0_69 in mem
    ld      a0,72(sp)
              #                    occupy a1 with temp_33_ele_of_*to_0_69_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_33_ele_of_*to_0_69_0
              #                    store to temp_33_ele_of_*to_0_69_0 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with temp_33_ele_of_*to_0_69_0
              #                    free a0
              #                    occupy a0 with temp_32_ptr_of_*to_0_69
              #                    store to temp_32_ptr_of_*to_0_69 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with temp_32_ptr_of_*to_0_69
              #                     180  mu to_0_0:179 
              #                     181  (nop) 
              #                     185   Call void tree_0(temp_33_ele_of_*to_0_69_0, temp_34_arithop_69_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_45_ele_of_*f_0_61_0
              #                    store to temp_45_ele_of_*f_0_61_0 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_45_ele_of_*f_0_61_0
              #                    occupy s3 with temp_46__1761_0
              #                    store to temp_46__1761_0 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_46__1761_0
              #                    occupy a2 with temp_47_cmp_67_0
              #                    store to temp_47_cmp_67_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_47_cmp_67_0
              #                    occupy a3 with temp_44_ptr_of_*f_0_61
              #                    store to temp_44_ptr_of_*f_0_61 in mem offset legal
    sd      a3,8(sp)
              #                    release a3 with temp_44_ptr_of_*f_0_61
              #                    occupy a5 with temp_34_arithop_69_0
              #                    store to temp_34_arithop_69_0 in mem offset legal
    sw      a5,64(sp)
              #                    release a5 with temp_34_arithop_69_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_33_ele_of_*to_0_69_0_0
              #                    load from temp_33_ele_of_*to_0_69_0 in mem


    lw      a0,68(sp)
              #                    occupy a1 with _anonymous_of_temp_34_arithop_69_0_0
              #                    load from temp_34_arithop_69_0 in mem


    lw      a1,64(sp)
              #                    arg load ended


    call    tree
              #                     439  mu f_0_6:185 
              #                     440  mu dep_0_5:185 
              #                     441  mu next_0_0:185 
              #                     442  mu to_0_0:185 
              #                     443  mu head_0_0:185 
              #                     444  dep_0_6 = chi dep_0_5:185 
              #                     445  f_0_7 = chi f_0_6:185 
              #                     187  temp_35_ptr_of_*next_0_69 = GEP *next_0:Array:i32:[None] [Some(i_58_4)] 
              #                    occupy a0 with temp_35_ptr_of_*next_0_69
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_58_4
              #                    load from i_58_4 in mem


    lw      a2,96(sp)
    mv      a1, a2
              #                    free a2
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a3 with *next_0
              #                       load label next as ptr to reg
    la      a3, next
              #                    occupy reg a3 with *next_0
    add     a0,a0,a3
              #                    free a3
              #                    free a0
              #                     189  temp_36_ele_of_*next_0_69_0 = load temp_35_ptr_of_*next_0_69:ptr->i32 
              #                    occupy a0 with temp_35_ptr_of_*next_0_69
              #                    occupy a4 with temp_36_ele_of_*next_0_69_0
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     190  mu next_0_0:189 
              #                     191  (nop) 
              #                     534  i_58_4 = i32 temp_36_ele_of_*next_0_69_0 
              #                    occupy a4 with temp_36_ele_of_*next_0_69_0
              #                    occupy a2 with i_58_4
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_68 
              #                    occupy a2 with i_58_4
              #                    store to i_58_4 in mem offset legal
    sw      a2,96(sp)
              #                    release a2 with i_58_4
              #                    occupy a1 with i_58_4
              #                    load from i_58_4 in mem


    lw      a1,96(sp)
              #                    occupy a0 with temp_35_ptr_of_*next_0_69
              #                    store to temp_35_ptr_of_*next_0_69 in mem offset legal
    sd      a0,56(sp)
              #                    release a0 with temp_35_ptr_of_*next_0_69
              #                    occupy a4 with temp_36_ele_of_*next_0_69_0
              #                    store to temp_36_ele_of_*next_0_69_0 in mem offset legal
    sw      a4,52(sp)
              #                    release a4 with temp_36_ele_of_*next_0_69_0
              #                    occupy s1 with temp_45_ele_of_*f_0_61_0
              #                    load from temp_45_ele_of_*f_0_61_0 in mem


    lw      s1,4(sp)
              #                    occupy s3 with temp_46__1761_0
              #                    load from temp_46__1761_0 in mem


    lb      s3,3(sp)
              #                    occupy a3 with temp_44_ptr_of_*f_0_61
              #                    load from temp_44_ptr_of_*f_0_61 in mem
    ld      a3,8(sp)
              #                    occupy a5 with temp_34_arithop_69_0
              #                    load from temp_34_arithop_69_0 in mem


    lw      a5,64(sp)
    j       .while.head_68
              #                    regtab     a2:Freed { symidx: temp_47_cmp_67_0, tracked: true } |     a3:Freed { symidx: temp_44_ptr_of_*f_0_61, tracked: true } |     a5:Freed { symidx: temp_34_arithop_69_0, tracked: true } |     s1:Freed { symidx: temp_45_ele_of_*f_0_61_0, tracked: true } |     s3:Freed { symidx: temp_46__1761_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     226  label while.exit_68: 
.while.exit_68:
              #                     602  untrack i_58_4 
              #                     601  untrack temp_34_arithop_69_0 
              #                    occupy a5 with temp_34_arithop_69_0
              #                    release a5 with temp_34_arithop_69_0
              #                     446  mu dep_0_5:228 
              #                     447  mu f_0_6:228 
              #                     228  ret 
              #                    load from ra_tree_0 in mem
    ld      ra,128(sp)
              #                    load from s0_tree_0 in mem
    ld      s0,120(sp)
    addi    sp,sp,136
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     38   Define LCA_0 "x_73_0,y_73_0," -> LCA_ret_0 
    .globl LCA
    .type LCA,@function
LCA:
              #                    mem layout:|ra_LCA:8 at 264|s0_LCA:8 at 256|x _s73 _i0:4 at 252|x _s73 _i1:4 at 248|x _s73 _i2:4 at 244|x _s73 _i3:4 at 240|x _s73 _i4:4 at 236|x _s73 _i6:4 at 232|x _s73 _i8:4 at 228|y _s73 _i0:4 at 224|y _s73 _i1:4 at 220|y _s73 _i2:4 at 216|y _s73 _i3:4 at 212|y _s73 _i5:4 at 208|i _s75 _i1:4 at 204|i _s75 _i4:4 at 200|temp_48_ptr_of_*f_0:8 at 192|temp_49_ele_of_*f_0 _s75 _i0:4 at 188|temp_50_arithop _s96 _i0:4 at 184|temp_51_ptr_of_*f_0:8 at 176|temp_53_ptr_of_*f_0:8 at 168|temp_55_arithop _s85 _i0:4 at 164|none:4 at 160|temp_56_ptr_of_*f_0:8 at 152|t _s78 _i0:4 at 148|none:4 at 144|temp_58_ptr_of_*dep_0:8 at 136|temp_59_ele_of_*dep_0 _s76 _i0:4 at 132|none:4 at 128|temp_60_ptr_of_*dep_0:8 at 120|temp_61_ele_of_*dep_0 _s76 _i0:4 at 116|temp_62_cmp _s76 _i0:1 at 115|none:3 at 112|temp_63_ptr_of_*dep_0:8 at 104|temp_64_ele_of_*dep_0 _s83 _i0:4 at 100|none:4 at 96|temp_65_ptr_of_*dep_0:8 at 88|temp_66_ele_of_*dep_0 _s83 _i0:4 at 84|temp_67_cmp _s83 _i0:1 at 83|temp_68_cmp _s90 _i0:1 at 82|temp_69_cmp _s94 _i0:1 at 81|none:1 at 80|temp_70_ptr_of_*f_0:8 at 72|temp_71_ele_of_*f_0 _s97 _i0:4 at 68|none:4 at 64|temp_72_ptr_of_*f_0:8 at 56|temp_73_ele_of_*f_0 _s97 _i0:4 at 52|temp_74_cmp _s97 _i0:1 at 51|none:3 at 48|temp_75_ptr_of_*f_0:8 at 40|temp_76_ele_of_*f_0 _s86 _i0:4 at 36|none:4 at 32|temp_77_ptr_of_*dep_0:8 at 24|temp_79_ptr_of_*f_0:8 at 16|temp_81_ptr_of_*dep_0:8 at 8|temp_82_ele_of_*dep_0 _s86 _i0:4 at 4|temp_83_cmp _s86 _i0:1 at 3|temp_84_i32_to_bool _s86 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-272
              #                    store to ra_LCA_0 in mem offset legal
    sd      ra,264(sp)
              #                    store to s0_LCA_0 in mem offset legal
    sd      s0,256(sp)
    addi    s0,sp,272
              #                     230  alloc i32 [i_75] 
              #                     233  alloc ptr->i32 [temp_48_ptr_of_*f_0_75] 
              #                     235  alloc i32 [temp_49_ele_of_*f_0_75] 
              #                     239  alloc i32 [temp_50_arithop_96] 
              #                     242  alloc ptr->i32 [temp_51_ptr_of_*f_0_99] 
              #                     244  alloc i32 [temp_52_ele_of_*f_0_99] 
              #                     248  alloc ptr->i32 [temp_53_ptr_of_*f_0_99] 
              #                     250  alloc i32 [temp_54_ele_of_*f_0_99] 
              #                     256  alloc i32 [temp_55_arithop_85] 
              #                     259  alloc ptr->i32 [temp_56_ptr_of_*f_0_86] 
              #                     261  alloc i32 [temp_57_ele_of_*f_0_86] 
              #                     266  alloc i32 [t_78] 
              #                     269  alloc ptr->i32 [temp_58_ptr_of_*dep_0_76] 
              #                     271  alloc i32 [temp_59_ele_of_*dep_0_76] 
              #                     274  alloc ptr->i32 [temp_60_ptr_of_*dep_0_76] 
              #                     276  alloc i32 [temp_61_ele_of_*dep_0_76] 
              #                     279  alloc i1 [temp_62_cmp_76] 
              #                     284  alloc ptr->i32 [temp_63_ptr_of_*dep_0_83] 
              #                     286  alloc i32 [temp_64_ele_of_*dep_0_83] 
              #                     289  alloc ptr->i32 [temp_65_ptr_of_*dep_0_83] 
              #                     291  alloc i32 [temp_66_ele_of_*dep_0_83] 
              #                     294  alloc i1 [temp_67_cmp_83] 
              #                     300  alloc i1 [temp_68_cmp_90] 
              #                     305  alloc i1 [temp_69_cmp_94] 
              #                     313  alloc ptr->i32 [temp_70_ptr_of_*f_0_97] 
              #                     315  alloc i32 [temp_71_ele_of_*f_0_97] 
              #                     318  alloc ptr->i32 [temp_72_ptr_of_*f_0_97] 
              #                     320  alloc i32 [temp_73_ele_of_*f_0_97] 
              #                     323  alloc i1 [temp_74_cmp_97] 
              #                     328  alloc ptr->i32 [temp_75_ptr_of_*f_0_86] 
              #                     330  alloc i32 [temp_76_ele_of_*f_0_86] 
              #                     333  alloc ptr->i32 [temp_77_ptr_of_*dep_0_86] 
              #                     335  alloc i32 [temp_78_ele_of_*dep_0_86] 
              #                     338  alloc ptr->i32 [temp_79_ptr_of_*f_0_86] 
              #                     340  alloc i32 [temp_80_ele_of_*f_0_86] 
              #                     343  alloc ptr->i32 [temp_81_ptr_of_*dep_0_86] 
              #                     345  alloc i32 [temp_82_ele_of_*dep_0_86] 
              #                     348  alloc i1 [temp_83_cmp_86] 
              #                     350  alloc i1 [temp_84_i32_to_bool_86] 
              #                    regtab     a0:Freed { symidx: x_73_0, tracked: true } |     a1:Freed { symidx: y_73_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     270  temp_58_ptr_of_*dep_0_76 = GEP *dep_0:Array:i32:[None] [Some(y_73_0)] 
              #                    occupy a2 with temp_58_ptr_of_*dep_0_76
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with y_73_0
    mv      a3, a1
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *dep_0
              #                       load label dep as ptr to reg
    la      a4, dep
              #                    occupy reg a4 with *dep_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     272  temp_59_ele_of_*dep_0_76_0 = load temp_58_ptr_of_*dep_0_76:ptr->i32 
              #                    occupy a2 with temp_58_ptr_of_*dep_0_76
              #                    occupy a5 with temp_59_ele_of_*dep_0_76_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     605  untrack temp_58_ptr_of_*dep_0_76 
              #                    occupy a2 with temp_58_ptr_of_*dep_0_76
              #                    release a2 with temp_58_ptr_of_*dep_0_76
              #                     273  mu dep_0_0:272 
              #                     275  temp_60_ptr_of_*dep_0_76 = GEP *dep_0:Array:i32:[None] [Some(x_73_0)] 
              #                    occupy a2 with temp_60_ptr_of_*dep_0_76
    li      a2, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with x_73_0
    mv      a6, a0
              #                    free a0
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
              #                    occupy a7 with *dep_0
              #                       load label dep as ptr to reg
    la      a7, dep
              #                    occupy reg a7 with *dep_0
    add     a2,a2,a7
              #                    free a7
              #                    free a2
              #                     277  temp_61_ele_of_*dep_0_76_0 = load temp_60_ptr_of_*dep_0_76:ptr->i32 
              #                    occupy a2 with temp_60_ptr_of_*dep_0_76
              #                    occupy s1 with temp_61_ele_of_*dep_0_76_0
    lw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                     603  untrack temp_60_ptr_of_*dep_0_76 
              #                    occupy a2 with temp_60_ptr_of_*dep_0_76
              #                    release a2 with temp_60_ptr_of_*dep_0_76
              #                     278  mu dep_0_0:277 
              #                     280  temp_62_cmp_76_0 = icmp i32 Slt temp_61_ele_of_*dep_0_76_0, temp_59_ele_of_*dep_0_76_0 
              #                    occupy s1 with temp_61_ele_of_*dep_0_76_0
              #                    occupy a5 with temp_59_ele_of_*dep_0_76_0
              #                    occupy a2 with temp_62_cmp_76_0
    slt     a2,s1,a5
              #                    free s1
              #                    free a5
              #                    free a2
              #                     606  untrack temp_61_ele_of_*dep_0_76_0 
              #                    occupy s1 with temp_61_ele_of_*dep_0_76_0
              #                    release s1 with temp_61_ele_of_*dep_0_76_0
              #                     604  untrack temp_59_ele_of_*dep_0_76_0 
              #                    occupy a5 with temp_59_ele_of_*dep_0_76_0
              #                    release a5 with temp_59_ele_of_*dep_0_76_0
              #                     283  br i1 temp_62_cmp_76_0, label branch_true_77, label UP_14_0 
              #                    occupy a2 with temp_62_cmp_76_0
              #                    free a2
              #                    occupy a2 with temp_62_cmp_76_0
    bnez    a2, .branch_true_77
              #                    free a2
    j       .UP_14_0
              #                    regtab     a0:Freed { symidx: x_73_0, tracked: true } |     a1:Freed { symidx: y_73_0, tracked: true } |     a2:Freed { symidx: temp_62_cmp_76_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     281  label branch_true_77: 
.branch_true_77:
              #                     607  untrack temp_62_cmp_76_0 
              #                    occupy a2 with temp_62_cmp_76_0
              #                    release a2 with temp_62_cmp_76_0
              #                     265  t_78_0 = i32 x_73_0 
              #                    occupy a0 with x_73_0
              #                    occupy a2 with t_78_0
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                     612  untrack x_73_0 
              #                    occupy a0 with x_73_0
              #                    release a0 with x_73_0
              #                     267  x_73_1 = i32 y_73_0 
              #                    occupy a1 with y_73_0
              #                    occupy a0 with x_73_1
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                     615  untrack y_73_0 
              #                    occupy a1 with y_73_0
              #                    release a1 with y_73_0
              #                     268  y_73_1 = i32 t_78_0 
              #                    occupy a2 with t_78_0
              #                    occupy a1 with y_73_1
    mv      a1, a2
              #                    free a2
              #                    free a1
              #                     614  untrack t_78_0 
              #                    occupy a2 with t_78_0
              #                    release a2 with t_78_0
              #                     539  x_73_2 = i32 x_73_1 
              #                    occupy a0 with x_73_1
              #                    occupy a2 with x_73_2
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                     613  untrack x_73_1 
              #                    occupy a0 with x_73_1
              #                    release a0 with x_73_1
              #                     540  y_73_2 = i32 y_73_1 
              #                    occupy a1 with y_73_1
              #                    occupy a0 with y_73_2
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                     616  untrack y_73_1 
              #                    occupy a1 with y_73_1
              #                    release a1 with y_73_1
              #                          jump label: branch_false_77 
    j       .branch_false_77
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a2:Freed { symidx: x_73_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     282  label branch_false_77: 
.branch_false_77:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a2:Freed { symidx: x_73_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     229  (nop) 
              #                     285  temp_63_ptr_of_*dep_0_83 = GEP *dep_0:Array:i32:[None] [Some(y_73_2)] 
              #                    occupy a1 with temp_63_ptr_of_*dep_0_83
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with y_73_2
    mv      a3, a0
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with *dep_0
              #                       load label dep as ptr to reg
    la      a4, dep
              #                    occupy reg a4 with *dep_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                     334  (nop) 
              #                     541  x_73_3 = i32 x_73_2 
              #                    occupy a2 with x_73_2
              #                    occupy a5 with x_73_3
    mv      a5, a2
              #                    free a2
              #                    free a5
              #                     617  untrack x_73_2 
              #                    occupy a2 with x_73_2
              #                    release a2 with x_73_2
              #                     542  i_75_1 = i32 19_0 
              #                    occupy a2 with i_75_1
    li      a2, 19
              #                    free a2
              #                          jump label: while.head_84 
    j       .while.head_84
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a1:Freed { symidx: temp_63_ptr_of_*dep_0_83, tracked: true } |     a2:Freed { symidx: i_75_1, tracked: true } |     a5:Freed { symidx: x_73_3, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     296  label while.head_84: 
.while.head_84:
              #                     287  temp_64_ele_of_*dep_0_83_0 = load temp_63_ptr_of_*dep_0_83:ptr->i32 
              #                    occupy a1 with temp_63_ptr_of_*dep_0_83
              #                    occupy a3 with temp_64_ele_of_*dep_0_83_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     288  mu dep_0_0:287 
              #                     290  temp_65_ptr_of_*dep_0_83 = GEP *dep_0:Array:i32:[None] [Some(x_73_3)] 
              #                    occupy a4 with temp_65_ptr_of_*dep_0_83
    li      a4, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with x_73_3
    mv      a6, a5
              #                    free a5
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *dep_0
              #                       load label dep as ptr to reg
    la      a7, dep
              #                    occupy reg a7 with *dep_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                     292  temp_66_ele_of_*dep_0_83_0 = load temp_65_ptr_of_*dep_0_83:ptr->i32 
              #                    occupy a4 with temp_65_ptr_of_*dep_0_83
              #                    occupy s1 with temp_66_ele_of_*dep_0_83_0
    lw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_66_ele_of_*dep_0_83_0
              #                    store to temp_66_ele_of_*dep_0_83_0 in mem offset legal
    sw      s1,84(sp)
              #                    release s1 with temp_66_ele_of_*dep_0_83_0
              #                    free a4
              #                     293  mu dep_0_0:292 
              #                     295  temp_67_cmp_83_0 = icmp i32 Sgt temp_66_ele_of_*dep_0_83_0, temp_64_ele_of_*dep_0_83_0 
              #                    occupy s1 with temp_66_ele_of_*dep_0_83_0
              #                    load from temp_66_ele_of_*dep_0_83_0 in mem


    lw      s1,84(sp)
              #                    occupy a3 with temp_64_ele_of_*dep_0_83_0
              #                    occupy s2 with temp_67_cmp_83_0
    slt     s2,a3,s1
              #                    free s1
              #                    occupy s1 with temp_66_ele_of_*dep_0_83_0
              #                    store to temp_66_ele_of_*dep_0_83_0 in mem offset legal
    sw      s1,84(sp)
              #                    release s1 with temp_66_ele_of_*dep_0_83_0
              #                    free a3
              #                    occupy a3 with temp_64_ele_of_*dep_0_83_0
              #                    store to temp_64_ele_of_*dep_0_83_0 in mem offset legal
    sw      a3,100(sp)
              #                    release a3 with temp_64_ele_of_*dep_0_83_0
              #                    free s2
              #                     299  br i1 temp_67_cmp_83_0, label while.body_84, label while.exit_84 
              #                    occupy s2 with temp_67_cmp_83_0
              #                    free s2
              #                    occupy s2 with temp_67_cmp_83_0
    bnez    s2, .while.body_84
              #                    free s2
    j       .while.exit_84
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a1:Freed { symidx: temp_63_ptr_of_*dep_0_83, tracked: true } |     a2:Freed { symidx: i_75_1, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     a5:Freed { symidx: x_73_3, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     297  label while.body_84: 
.while.body_84:
              #                     329  temp_75_ptr_of_*f_0_86 = GEP *f_0:Array:i32:[None, Some(20_0)] [Some(x_73_3), Some(i_75_1)] 
              #                    occupy a3 with temp_75_ptr_of_*f_0_86
    li      a3, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with 20_0
    li      a7, 20
              #                    occupy a5 with x_73_3
    mul     a6,a7,a5
              #                    free a7
              #                    free a5
              #                    occupy a5 with x_73_3
              #                    store to x_73_3 in mem offset legal
    sw      a5,240(sp)
              #                    release a5 with x_73_3
    add     a3,a3,a6
              #                    free a6
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_75_1
    mv      a5, a2
              #                    free a2
              #                    occupy a2 with i_75_1
              #                    store to i_75_1 in mem offset legal
    sw      a2,204(sp)
              #                    release a2 with i_75_1
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a2 with *f_0
              #                       load label f as ptr to reg
    la      a2, f
              #                    occupy reg a2 with *f_0
    add     a3,a3,a2
              #                    free a2
              #                    free a3
              #                     331  temp_76_ele_of_*f_0_86_0 = load temp_75_ptr_of_*f_0_86:ptr->i32 
              #                    occupy a3 with temp_75_ptr_of_*f_0_86
              #                    occupy a2 with temp_76_ele_of_*f_0_86_0
    lw      a2,0(a3)
              #                    free a2
              #                    occupy a2 with temp_76_ele_of_*f_0_86_0
              #                    store to temp_76_ele_of_*f_0_86_0 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_76_ele_of_*f_0_86_0
              #                    free a3
              #                     332  mu f_0_0:331 
              #                     351  temp_84_i32_to_bool_86_0 = icmp i32 Ne temp_76_ele_of_*f_0_86_0, 0_0 
              #                    occupy a2 with temp_76_ele_of_*f_0_86_0
              #                    load from temp_76_ele_of_*f_0_86_0 in mem


    lw      a2,36(sp)
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with temp_84_i32_to_bool_86_0
    xor     a7,a2,a6
    snez    a7, a7
              #                    free a2
              #                    occupy a2 with temp_76_ele_of_*f_0_86_0
              #                    store to temp_76_ele_of_*f_0_86_0 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_76_ele_of_*f_0_86_0
              #                    free a6
              #                    free a7
              #                    occupy a7 with temp_84_i32_to_bool_86_0
              #                    store to temp_84_i32_to_bool_86_0 in mem offset legal
    sb      a7,2(sp)
              #                    release a7 with temp_84_i32_to_bool_86_0
              #                     357  br i1 temp_84_i32_to_bool_86_0, label branch_short_circuit_p_true_518, label UP_2_0 
              #                    occupy a2 with temp_84_i32_to_bool_86_0
              #                    load from temp_84_i32_to_bool_86_0 in mem


    lb      a2,2(sp)
              #                    free a2
              #                    occupy a2 with temp_84_i32_to_bool_86_0
              #                    store to temp_84_i32_to_bool_86_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_84_i32_to_bool_86_0
              #                    occupy a2 with temp_84_i32_to_bool_86_0
              #                    load from temp_84_i32_to_bool_86_0 in mem


    lb      a2,2(sp)
    bnez    a2, .branch_short_circuit_p_true_518
              #                    free a2
              #                    occupy a2 with temp_84_i32_to_bool_86_0
              #                    store to temp_84_i32_to_bool_86_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_84_i32_to_bool_86_0
    j       .UP_2_0
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a1:Freed { symidx: temp_63_ptr_of_*dep_0_83, tracked: true } |     a3:Freed { symidx: temp_75_ptr_of_*f_0_86, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     354  label branch_short_circuit_p_true_518: 
.branch_short_circuit_p_true_518:
              #                     633  untrack temp_75_ptr_of_*f_0_86 
              #                    occupy a3 with temp_75_ptr_of_*f_0_86
              #                    release a3 with temp_75_ptr_of_*f_0_86
              #                     632  untrack x_73_8 
              #                     631  untrack temp_73_ele_of_*f_0_97_0 
              #                     630  untrack temp_72_ptr_of_*f_0_97 
              #                     629  untrack temp_65_ptr_of_*dep_0_83 
              #                    occupy a4 with temp_65_ptr_of_*dep_0_83
              #                    release a4 with temp_65_ptr_of_*dep_0_83
              #                     628  untrack y_73_5 
              #                     627  untrack temp_84_i32_to_bool_86_0 
              #                     626  untrack temp_50_arithop_96_0 
              #                     625  untrack temp_70_ptr_of_*f_0_97 
              #                     624  untrack temp_74_cmp_97_0 
              #                     623  untrack temp_71_ele_of_*f_0_97_0 
              #                     622  untrack temp_66_ele_of_*dep_0_83_0 
              #                     621  untrack temp_69_cmp_94_0 
              #                     620  untrack temp_67_cmp_83_0 
              #                    occupy s2 with temp_67_cmp_83_0
              #                    release s2 with temp_67_cmp_83_0
              #                     336  (nop) 
              #                     337  mu dep_0_0:336 
              #                     339  (nop) 
              #                     341  (nop) 
              #                     342  mu f_0_0:341 
              #                     344  temp_81_ptr_of_*dep_0_86 = GEP *dep_0:Array:i32:[None] [Some(temp_76_ele_of_*f_0_86_0)] 
              #                    occupy a2 with temp_81_ptr_of_*dep_0_86
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_76_ele_of_*f_0_86_0
              #                    load from temp_76_ele_of_*f_0_86_0 in mem


    lw      a4,36(sp)
    mv      a3, a4
              #                    free a4
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a5 with *dep_0
              #                       load label dep as ptr to reg
    la      a5, dep
              #                    occupy reg a5 with *dep_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                     346  temp_82_ele_of_*dep_0_86_0 = load temp_81_ptr_of_*dep_0_86:ptr->i32 
              #                    occupy a2 with temp_81_ptr_of_*dep_0_86
              #                    occupy a5 with temp_82_ele_of_*dep_0_86_0
    lw      a5,0(a2)
              #                    free a5
              #                    occupy a5 with temp_82_ele_of_*dep_0_86_0
              #                    store to temp_82_ele_of_*dep_0_86_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_82_ele_of_*dep_0_86_0
              #                    free a2
              #                     635  untrack temp_81_ptr_of_*dep_0_86 
              #                    occupy a2 with temp_81_ptr_of_*dep_0_86
              #                    release a2 with temp_81_ptr_of_*dep_0_86
              #                     347  mu dep_0_0:346 
              #                     349  temp_83_cmp_86_0 = icmp i32 Sge temp_82_ele_of_*dep_0_86_0, temp_64_ele_of_*dep_0_83_0 
              #                    occupy a2 with temp_82_ele_of_*dep_0_86_0
              #                    load from temp_82_ele_of_*dep_0_86_0 in mem


    lw      a2,4(sp)
              #                    occupy a5 with temp_64_ele_of_*dep_0_83_0
              #                    load from temp_64_ele_of_*dep_0_83_0 in mem


    lw      a5,100(sp)
              #                    occupy a6 with temp_83_cmp_86_0
    slt     a6,a2,a5
    xori    a6,a6,1
              #                    free a2
              #                    occupy a2 with temp_82_ele_of_*dep_0_86_0
              #                    store to temp_82_ele_of_*dep_0_86_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_82_ele_of_*dep_0_86_0
              #                    free a5
              #                    occupy a5 with temp_64_ele_of_*dep_0_83_0
              #                    store to temp_64_ele_of_*dep_0_83_0 in mem offset legal
    sw      a5,100(sp)
              #                    release a5 with temp_64_ele_of_*dep_0_83_0
              #                    free a6
              #                     636  untrack temp_82_ele_of_*dep_0_86_0 
              #                     634  untrack temp_64_ele_of_*dep_0_83_0 
              #                     356  br i1 temp_83_cmp_86_0, label branch_short_circuit_c_true_518, label UP_64_0 
              #                    occupy a6 with temp_83_cmp_86_0
              #                    free a6
              #                    occupy a6 with temp_83_cmp_86_0
    bnez    a6, .branch_short_circuit_c_true_518
              #                    free a6
    j       .UP_64_0
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a1:Freed { symidx: temp_63_ptr_of_*dep_0_83, tracked: true } |     a4:Freed { symidx: temp_76_ele_of_*f_0_86_0, tracked: true } |     a6:Freed { symidx: temp_83_cmp_86_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     352  label branch_short_circuit_c_true_518: 
.branch_short_circuit_c_true_518:
              #                     637  untrack temp_83_cmp_86_0 
              #                    occupy a6 with temp_83_cmp_86_0
              #                    release a6 with temp_83_cmp_86_0
              #                     260  (nop) 
              #                     262  (nop) 
              #                     263  mu f_0_0:262 
              #                     264  (nop) 
              #                     543  x_73_4 = i32 temp_76_ele_of_*f_0_86_0 
              #                    occupy a4 with temp_76_ele_of_*f_0_86_0
              #                    occupy a2 with x_73_4
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                     640  untrack temp_76_ele_of_*f_0_86_0 
              #                    occupy a4 with temp_76_ele_of_*f_0_86_0
              #                    release a4 with temp_76_ele_of_*f_0_86_0
              #                          jump label: branch_short_circuit_c_false_518 
    j       .branch_short_circuit_c_false_518
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a1:Freed { symidx: temp_63_ptr_of_*dep_0_83, tracked: true } |     a2:Freed { symidx: x_73_4, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     353  label branch_short_circuit_c_false_518: 
.branch_short_circuit_c_false_518:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a1:Freed { symidx: temp_63_ptr_of_*dep_0_83, tracked: true } |     a2:Freed { symidx: x_73_4, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     257  temp_55_arithop_85_0 = Sub i32 i_75_1, 1_0 
              #                    occupy a3 with i_75_1
              #                    load from i_75_1 in mem


    lw      a3,204(sp)
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_55_arithop_85_0
              #                    regtab:    a0:Freed { symidx: y_73_2, tracked: true } |     a1:Freed { symidx: temp_63_ptr_of_*dep_0_83, tracked: true } |     a2:Freed { symidx: x_73_4, tracked: true } |     a3:Occupied { symidx: i_75_1, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Occupied { symidx: temp_55_arithop_85_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    a5,a3,a4
              #                    free a3
              #                    occupy a3 with i_75_1
              #                    store to i_75_1 in mem offset legal
    sw      a3,204(sp)
              #                    release a3 with i_75_1
              #                    free a4
              #                    free a5
              #                     258  (nop) 
              #                     544  x_73_3 = i32 x_73_4 
              #                    occupy a2 with x_73_4
              #                    occupy a3 with x_73_3
    mv      a3, a2
              #                    free a2
              #                    occupy a2 with x_73_4
              #                    store to x_73_4 in mem offset legal
    sw      a2,236(sp)
              #                    release a2 with x_73_4
              #                    free a3
              #                     545  i_75_1 = i32 temp_55_arithop_85_0 
              #                    occupy a5 with temp_55_arithop_85_0
              #                    occupy a2 with i_75_1
    mv      a2, a5
              #                    free a5
              #                    occupy a5 with temp_55_arithop_85_0
              #                    store to temp_55_arithop_85_0 in mem offset legal
    sw      a5,164(sp)
              #                    release a5 with temp_55_arithop_85_0
              #                    free a2
              #                          jump label: while.head_84 
              #                    occupy a3 with x_73_3
              #                    store to x_73_3 in mem offset legal
    sw      a3,240(sp)
              #                    release a3 with x_73_3
              #                    occupy a5 with x_73_3
              #                    load from x_73_3 in mem


    lw      a5,240(sp)
    j       .while.head_84
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a1:Freed { symidx: temp_63_ptr_of_*dep_0_83, tracked: true } |     a4:Freed { symidx: temp_76_ele_of_*f_0_86_0, tracked: true } |     a6:Freed { symidx: temp_83_cmp_86_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     537  label UP_64_0: 
.UP_64_0:
              #                     639  untrack temp_83_cmp_86_0 
              #                    occupy a6 with temp_83_cmp_86_0
              #                    release a6 with temp_83_cmp_86_0
              #                     638  untrack temp_76_ele_of_*f_0_86_0 
              #                    occupy a4 with temp_76_ele_of_*f_0_86_0
              #                    release a4 with temp_76_ele_of_*f_0_86_0
              #                     546  x_73_4 = i32 x_73_3 
              #                    occupy a2 with x_73_3
              #                    load from x_73_3 in mem


    lw      a2,240(sp)
              #                    occupy a3 with x_73_4
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_518 
              #                    occupy a3 with x_73_4
              #                    store to x_73_4 in mem offset legal
    sw      a3,236(sp)
              #                    release a3 with x_73_4
              #                    occupy a2 with x_73_3
              #                    store to x_73_3 in mem offset legal
    sw      a2,240(sp)
              #                    release a2 with x_73_3
              #                    occupy a2 with x_73_4
              #                    load from x_73_4 in mem


    lw      a2,236(sp)
    j       .branch_short_circuit_c_false_518
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a1:Freed { symidx: temp_63_ptr_of_*dep_0_83, tracked: true } |     a3:Freed { symidx: temp_75_ptr_of_*f_0_86, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     536  label UP_2_0: 
.UP_2_0:
              #                     547  x_73_4 = i32 x_73_3 
              #                    occupy a2 with x_73_3
              #                    load from x_73_3 in mem


    lw      a2,240(sp)
              #                    occupy a5 with x_73_4
    mv      a5, a2
              #                    free a2
              #                    occupy a2 with x_73_3
              #                    store to x_73_3 in mem offset legal
    sw      a2,240(sp)
              #                    release a2 with x_73_3
              #                    free a5
              #                    occupy a5 with x_73_4
              #                    store to x_73_4 in mem offset legal
    sw      a5,236(sp)
              #                    release a5 with x_73_4
              #                          jump label: branch_short_circuit_c_false_518 
              #                    occupy a4 with temp_65_ptr_of_*dep_0_83
              #                    store to temp_65_ptr_of_*dep_0_83 in mem offset legal
    sd      a4,88(sp)
              #                    release a4 with temp_65_ptr_of_*dep_0_83
              #                    occupy s2 with temp_67_cmp_83_0
              #                    store to temp_67_cmp_83_0 in mem offset legal
    sb      s2,83(sp)
              #                    release s2 with temp_67_cmp_83_0
              #                    occupy a3 with temp_75_ptr_of_*f_0_86
              #                    store to temp_75_ptr_of_*f_0_86 in mem offset legal
    sd      a3,40(sp)
              #                    release a3 with temp_75_ptr_of_*f_0_86
              #                    occupy a2 with x_73_4
              #                    load from x_73_4 in mem


    lw      a2,236(sp)
    j       .branch_short_circuit_c_false_518
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a1:Freed { symidx: temp_63_ptr_of_*dep_0_83, tracked: true } |     a2:Freed { symidx: i_75_1, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     a5:Freed { symidx: x_73_3, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     298  label while.exit_84: 
.while.exit_84:
              #                     619  untrack i_75_1 
              #                    occupy a2 with i_75_1
              #                    release a2 with i_75_1
              #                     618  untrack temp_63_ptr_of_*dep_0_83 
              #                    occupy a1 with temp_63_ptr_of_*dep_0_83
              #                    release a1 with temp_63_ptr_of_*dep_0_83
              #                     301  temp_68_cmp_90_0 = icmp i32 Eq x_73_3, y_73_2 
              #                    occupy a5 with x_73_3
              #                    occupy a0 with y_73_2
              #                    occupy a1 with temp_68_cmp_90_0
    xor     a1,a5,a0
    seqz    a1, a1
              #                    free a5
              #                    free a0
              #                    free a1
              #                     304  br i1 temp_68_cmp_90_0, label branch_true_91, label branch_false_91 
              #                    occupy a1 with temp_68_cmp_90_0
              #                    free a1
              #                    occupy a1 with temp_68_cmp_90_0
    bnez    a1, .branch_true_91
              #                    free a1
    j       .branch_false_91
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a1:Freed { symidx: temp_68_cmp_90_0, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     a5:Freed { symidx: x_73_3, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     302  label branch_true_91: 
.branch_true_91:
              #                     647  untrack x_73_6 
              #                     646  untrack temp_68_cmp_90_0 
              #                    occupy a1 with temp_68_cmp_90_0
              #                    release a1 with temp_68_cmp_90_0
              #                     645  untrack y_73_2 
              #                    occupy a0 with y_73_2
              #                    release a0 with y_73_2
              #                     644  untrack y_73_3 
              #                     643  untrack temp_48_ptr_of_*f_0_75 
              #                     642  untrack i_75_4 
              #                     641  untrack temp_49_ele_of_*f_0_75_0 
              #                     255  ret x_73_3 
              #                    load from ra_LCA_0 in mem
    ld      ra,264(sp)
              #                    load from s0_LCA_0 in mem
    ld      s0,256(sp)
              #                    occupy a5 with x_73_3
              #                    store to x_73_3 in mem offset legal
    sw      a5,240(sp)
              #                    release a5 with x_73_3
              #                    occupy a0 with x_73_3
              #                    load from x_73_3 in mem


    lw      a0,240(sp)
    addi    sp,sp,272
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a1:Freed { symidx: temp_68_cmp_90_0, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     a5:Freed { symidx: x_73_3, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     303  label branch_false_91: 
.branch_false_91:
              #                     648  untrack temp_68_cmp_90_0 
              #                    occupy a1 with temp_68_cmp_90_0
              #                    release a1 with temp_68_cmp_90_0
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: y_73_2, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     a5:Freed { symidx: x_73_3, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     231  (nop) 
              #                     548  y_73_3 = i32 y_73_2 
              #                    occupy a0 with y_73_2
              #                    occupy a1 with y_73_3
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     649  untrack y_73_2 
              #                    occupy a0 with y_73_2
              #                    release a0 with y_73_2
              #                     549  x_73_6 = i32 x_73_3 
              #                    occupy a5 with x_73_3
              #                    occupy a0 with x_73_6
    mv      a0, a5
              #                    free a5
              #                    free a0
              #                     650  untrack x_73_3 
              #                    occupy a5 with x_73_3
              #                    release a5 with x_73_3
              #                     550  i_75_4 = i32 19_0 
              #                    occupy a2 with i_75_4
    li      a2, 19
              #                    free a2
              #                          jump label: while.head_95 
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: x_73_6, tracked: true } |     a1:Freed { symidx: y_73_3, tracked: true } |     a2:Freed { symidx: i_75_4, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     307  label while.head_95: 
.while.head_95:
              #                     306  temp_69_cmp_94_0 = icmp i32 Sge i_75_4, 0_0 
              #                    occupy a2 with i_75_4
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a5 with temp_69_cmp_94_0
    slt     a5,a2,a3
    xori    a5,a5,1
              #                    free a2
              #                    occupy a2 with i_75_4
              #                    store to i_75_4 in mem offset legal
    sw      a2,200(sp)
              #                    release a2 with i_75_4
              #                    free a3
              #                    free a5
              #                     310  br i1 temp_69_cmp_94_0, label while.body_95, label while.exit_95 
              #                    occupy a5 with temp_69_cmp_94_0
              #                    free a5
              #                    occupy a5 with temp_69_cmp_94_0
    bnez    a5, .while.body_95
              #                    free a5
    j       .while.exit_95
              #                    regtab     a0:Freed { symidx: x_73_6, tracked: true } |     a1:Freed { symidx: y_73_3, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     a5:Freed { symidx: temp_69_cmp_94_0, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     308  label while.body_95: 
.while.body_95:
              #                     314  temp_70_ptr_of_*f_0_97 = GEP *f_0:Array:i32:[None, Some(20_0)] [Some(y_73_3), Some(i_75_4)] 
              #                    occupy a2 with temp_70_ptr_of_*f_0_97
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with 20_0
    li      a6, 20
              #                    occupy a1 with y_73_3
    mul     a3,a6,a1
              #                    free a6
              #                    free a1
              #                    occupy a1 with y_73_3
              #                    store to y_73_3 in mem offset legal
    sw      a1,212(sp)
              #                    release a1 with y_73_3
    add     a2,a2,a3
              #                    free a3
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_75_4
              #                    load from i_75_4 in mem


    lw      a3,200(sp)
    mv      a1, a3
              #                    free a3
              #                    occupy a3 with i_75_4
              #                    store to i_75_4 in mem offset legal
    sw      a3,200(sp)
              #                    release a3 with i_75_4
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
              #                    occupy a1 with *f_0
              #                       load label f as ptr to reg
    la      a1, f
              #                    occupy reg a1 with *f_0
    add     a2,a2,a1
              #                    free a1
              #                    free a2
              #                     316  temp_71_ele_of_*f_0_97_0 = load temp_70_ptr_of_*f_0_97:ptr->i32 
              #                    occupy a2 with temp_70_ptr_of_*f_0_97
              #                    occupy a1 with temp_71_ele_of_*f_0_97_0
    lw      a1,0(a2)
              #                    free a1
              #                    occupy a1 with temp_71_ele_of_*f_0_97_0
              #                    store to temp_71_ele_of_*f_0_97_0 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with temp_71_ele_of_*f_0_97_0
              #                    free a2
              #                     317  mu f_0_0:316 
              #                     319  temp_72_ptr_of_*f_0_97 = GEP *f_0:Array:i32:[None, Some(20_0)] [Some(x_73_6), Some(i_75_4)] 
              #                    occupy a1 with temp_72_ptr_of_*f_0_97
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with 20_0
    li      a6, 20
              #                    occupy a0 with x_73_6
    mul     a3,a6,a0
              #                    free a6
              #                    free a0
              #                    occupy a0 with x_73_6
              #                    store to x_73_6 in mem offset legal
    sw      a0,232(sp)
              #                    release a0 with x_73_6
    add     a1,a1,a3
              #                    free a3
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_75_4
              #                    load from i_75_4 in mem


    lw      a3,200(sp)
    mv      a0, a3
              #                    free a3
              #                    occupy a3 with i_75_4
              #                    store to i_75_4 in mem offset legal
    sw      a3,200(sp)
              #                    release a3 with i_75_4
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
              #                    occupy a0 with *f_0
              #                       load label f as ptr to reg
    la      a0, f
              #                    occupy reg a0 with *f_0
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                     321  temp_73_ele_of_*f_0_97_0 = load temp_72_ptr_of_*f_0_97:ptr->i32 
              #                    occupy a1 with temp_72_ptr_of_*f_0_97
              #                    occupy a0 with temp_73_ele_of_*f_0_97_0
    lw      a0,0(a1)
              #                    free a0
              #                    occupy a0 with temp_73_ele_of_*f_0_97_0
              #                    store to temp_73_ele_of_*f_0_97_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_73_ele_of_*f_0_97_0
              #                    free a1
              #                     322  mu f_0_0:321 
              #                     324  temp_74_cmp_97_0 = icmp i32 Ne temp_73_ele_of_*f_0_97_0, temp_71_ele_of_*f_0_97_0 
              #                    occupy a0 with temp_73_ele_of_*f_0_97_0
              #                    load from temp_73_ele_of_*f_0_97_0 in mem


    lw      a0,52(sp)
              #                    occupy a3 with temp_71_ele_of_*f_0_97_0
              #                    load from temp_71_ele_of_*f_0_97_0 in mem


    lw      a3,68(sp)
              #                    occupy a6 with temp_74_cmp_97_0
    xor     a6,a0,a3
    snez    a6, a6
              #                    free a0
              #                    occupy a0 with temp_73_ele_of_*f_0_97_0
              #                    store to temp_73_ele_of_*f_0_97_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_73_ele_of_*f_0_97_0
              #                    free a3
              #                    occupy a3 with temp_71_ele_of_*f_0_97_0
              #                    store to temp_71_ele_of_*f_0_97_0 in mem offset legal
    sw      a3,68(sp)
              #                    release a3 with temp_71_ele_of_*f_0_97_0
              #                    free a6
              #                    occupy a6 with temp_74_cmp_97_0
              #                    store to temp_74_cmp_97_0 in mem offset legal
    sb      a6,51(sp)
              #                    release a6 with temp_74_cmp_97_0
              #                     327  br i1 temp_74_cmp_97_0, label branch_true_98, label UP_65_0 
              #                    occupy a0 with temp_74_cmp_97_0
              #                    load from temp_74_cmp_97_0 in mem


    lb      a0,51(sp)
              #                    free a0
              #                    occupy a0 with temp_74_cmp_97_0
              #                    store to temp_74_cmp_97_0 in mem offset legal
    sb      a0,51(sp)
              #                    release a0 with temp_74_cmp_97_0
              #                    occupy a0 with temp_74_cmp_97_0
              #                    load from temp_74_cmp_97_0 in mem


    lb      a0,51(sp)
    bnez    a0, .branch_true_98
              #                    free a0
              #                    occupy a0 with temp_74_cmp_97_0
              #                    store to temp_74_cmp_97_0 in mem offset legal
    sb      a0,51(sp)
              #                    release a0 with temp_74_cmp_97_0
    j       .UP_65_0
              #                    regtab     a1:Freed { symidx: temp_72_ptr_of_*f_0_97, tracked: true } |     a2:Freed { symidx: temp_70_ptr_of_*f_0_97, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     a5:Freed { symidx: temp_69_cmp_94_0, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     325  label branch_true_98: 
.branch_true_98:
              #                     656  untrack temp_72_ptr_of_*f_0_97 
              #                    occupy a1 with temp_72_ptr_of_*f_0_97
              #                    release a1 with temp_72_ptr_of_*f_0_97
              #                     655  untrack temp_70_ptr_of_*f_0_97 
              #                    occupy a2 with temp_70_ptr_of_*f_0_97
              #                    release a2 with temp_70_ptr_of_*f_0_97
              #                     654  untrack temp_74_cmp_97_0 
              #                     653  untrack temp_69_cmp_94_0 
              #                    occupy a5 with temp_69_cmp_94_0
              #                    release a5 with temp_69_cmp_94_0
              #                     243  (nop) 
              #                     245  (nop) 
              #                     246  mu f_0_0:245 
              #                     247  (nop) 
              #                     249  (nop) 
              #                     251  (nop) 
              #                     252  mu f_0_0:251 
              #                     253  (nop) 
              #                     551  x_73_8 = i32 temp_73_ele_of_*f_0_97_0 
              #                    occupy a0 with temp_73_ele_of_*f_0_97_0
              #                    load from temp_73_ele_of_*f_0_97_0 in mem


    lw      a0,52(sp)
              #                    occupy a1 with x_73_8
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     658  untrack temp_73_ele_of_*f_0_97_0 
              #                    occupy a0 with temp_73_ele_of_*f_0_97_0
              #                    release a0 with temp_73_ele_of_*f_0_97_0
              #                     552  y_73_5 = i32 temp_71_ele_of_*f_0_97_0 
              #                    occupy a0 with temp_71_ele_of_*f_0_97_0
              #                    load from temp_71_ele_of_*f_0_97_0 in mem


    lw      a0,68(sp)
              #                    occupy a2 with y_73_5
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                     657  untrack temp_71_ele_of_*f_0_97_0 
              #                    occupy a0 with temp_71_ele_of_*f_0_97_0
              #                    release a0 with temp_71_ele_of_*f_0_97_0
              #                          jump label: branch_false_98 
    j       .branch_false_98
              #                    regtab     a1:Freed { symidx: x_73_8, tracked: true } |     a2:Freed { symidx: y_73_5, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     326  label branch_false_98: 
.branch_false_98:
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a1:Freed { symidx: x_73_8, tracked: true } |     a2:Freed { symidx: y_73_5, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     240  temp_50_arithop_96_0 = Sub i32 i_75_4, 1_0 
              #                    occupy a0 with i_75_4
              #                    load from i_75_4 in mem


    lw      a0,200(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_50_arithop_96_0
              #                    regtab:    a0:Occupied { symidx: i_75_4, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: x_73_8, tracked: true } |     a2:Freed { symidx: y_73_5, tracked: true } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     a5:Occupied { symidx: temp_50_arithop_96_0, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:3,released_fpr_count:24


    subw    a5,a0,a3
              #                    free a0
              #                    occupy a0 with i_75_4
              #                    store to i_75_4 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with i_75_4
              #                    free a3
              #                    free a5
              #                     241  (nop) 
              #                     553  i_75_4 = i32 temp_50_arithop_96_0 
              #                    occupy a5 with temp_50_arithop_96_0
              #                    occupy a0 with i_75_4
    mv      a0, a5
              #                    free a5
              #                    occupy a5 with temp_50_arithop_96_0
              #                    store to temp_50_arithop_96_0 in mem offset legal
    sw      a5,184(sp)
              #                    release a5 with temp_50_arithop_96_0
              #                    free a0
              #                     554  y_73_3 = i32 y_73_5 
              #                    occupy a2 with y_73_5
              #                    occupy a3 with y_73_3
    mv      a3, a2
              #                    free a2
              #                    occupy a2 with y_73_5
              #                    store to y_73_5 in mem offset legal
    sw      a2,208(sp)
              #                    release a2 with y_73_5
              #                    free a3
              #                     555  x_73_6 = i32 x_73_8 
              #                    occupy a1 with x_73_8
              #                    occupy a2 with x_73_6
    mv      a2, a1
              #                    free a1
              #                    occupy a1 with x_73_8
              #                    store to x_73_8 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with x_73_8
              #                    free a2
              #                          jump label: while.head_95 
              #                    occupy a3 with y_73_3
              #                    store to y_73_3 in mem offset legal
    sw      a3,212(sp)
              #                    release a3 with y_73_3
              #                    occupy a1 with y_73_3
              #                    load from y_73_3 in mem


    lw      a1,212(sp)
              #                    occupy a0 with i_75_4
              #                    store to i_75_4 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with i_75_4
              #                    occupy a2 with x_73_6
              #                    store to x_73_6 in mem offset legal
    sw      a2,232(sp)
              #                    release a2 with x_73_6
              #                    occupy a0 with x_73_6
              #                    load from x_73_6 in mem


    lw      a0,232(sp)
              #                    occupy a2 with i_75_4
              #                    load from i_75_4 in mem


    lw      a2,200(sp)
    j       .while.head_95
              #                    regtab     a1:Freed { symidx: temp_72_ptr_of_*f_0_97, tracked: true } |     a2:Freed { symidx: temp_70_ptr_of_*f_0_97, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     a5:Freed { symidx: temp_69_cmp_94_0, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     538  label UP_65_0: 
.UP_65_0:
              #                     556  x_73_8 = i32 x_73_6 
              #                    occupy a0 with x_73_6
              #                    load from x_73_6 in mem


    lw      a0,232(sp)
              #                    occupy a3 with x_73_8
    mv      a3, a0
              #                    free a0
              #                    occupy a0 with x_73_6
              #                    store to x_73_6 in mem offset legal
    sw      a0,232(sp)
              #                    release a0 with x_73_6
              #                    free a3
              #                    occupy a3 with x_73_8
              #                    store to x_73_8 in mem offset legal
    sw      a3,228(sp)
              #                    release a3 with x_73_8
              #                     557  y_73_5 = i32 y_73_3 
              #                    occupy a0 with y_73_3
              #                    load from y_73_3 in mem


    lw      a0,212(sp)
              #                    occupy a3 with y_73_5
    mv      a3, a0
              #                    free a0
              #                    occupy a0 with y_73_3
              #                    store to y_73_3 in mem offset legal
    sw      a0,212(sp)
              #                    release a0 with y_73_3
              #                    free a3
              #                    occupy a3 with y_73_5
              #                    store to y_73_5 in mem offset legal
    sw      a3,208(sp)
              #                    release a3 with y_73_5
              #                          jump label: branch_false_98 
              #                    occupy a1 with temp_72_ptr_of_*f_0_97
              #                    store to temp_72_ptr_of_*f_0_97 in mem offset legal
    sd      a1,56(sp)
              #                    release a1 with temp_72_ptr_of_*f_0_97
              #                    occupy a1 with x_73_8
              #                    load from x_73_8 in mem


    lw      a1,228(sp)
              #                    occupy a5 with temp_69_cmp_94_0
              #                    store to temp_69_cmp_94_0 in mem offset legal
    sb      a5,81(sp)
              #                    release a5 with temp_69_cmp_94_0
              #                    occupy a2 with temp_70_ptr_of_*f_0_97
              #                    store to temp_70_ptr_of_*f_0_97 in mem offset legal
    sd      a2,72(sp)
              #                    release a2 with temp_70_ptr_of_*f_0_97
              #                    occupy a2 with y_73_5
              #                    load from y_73_5 in mem


    lw      a2,208(sp)
    j       .branch_false_98
              #                    regtab     a0:Freed { symidx: x_73_6, tracked: true } |     a1:Freed { symidx: y_73_3, tracked: true } |     a4:Freed { symidx: temp_65_ptr_of_*dep_0_83, tracked: true } |     a5:Freed { symidx: temp_69_cmp_94_0, tracked: true } |     s2:Freed { symidx: temp_67_cmp_83_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     309  label while.exit_95: 
.while.exit_95:
              #                     652  untrack i_75_4 
              #                     651  untrack y_73_3 
              #                    occupy a1 with y_73_3
              #                    release a1 with y_73_3
              #                     234  temp_48_ptr_of_*f_0_75 = GEP *f_0:Array:i32:[None, Some(20_0)] [Some(x_73_6), Some(0_0)] 
              #                    occupy a1 with temp_48_ptr_of_*f_0_75
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with 20_0
    li      a3, 20
              #                    occupy a0 with x_73_6
    mul     a2,a3,a0
              #                    free a3
              #                    free a0
              #                    occupy a0 with x_73_6
              #                    store to x_73_6 in mem offset legal
    sw      a0,232(sp)
              #                    release a0 with x_73_6
    add     a1,a1,a2
              #                    free a2
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a0, 0
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
              #                    occupy a0 with *f_0
              #                       load label f as ptr to reg
    la      a0, f
              #                    occupy reg a0 with *f_0
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                     660  untrack x_73_6 
              #                     236  temp_49_ele_of_*f_0_75_0 = load temp_48_ptr_of_*f_0_75:ptr->i32 
              #                    occupy a1 with temp_48_ptr_of_*f_0_75
              #                    occupy a0 with temp_49_ele_of_*f_0_75_0
    lw      a0,0(a1)
              #                    free a0
              #                    occupy a0 with temp_49_ele_of_*f_0_75_0
              #                    store to temp_49_ele_of_*f_0_75_0 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_49_ele_of_*f_0_75_0
              #                    free a1
              #                     659  untrack temp_48_ptr_of_*f_0_75 
              #                    occupy a1 with temp_48_ptr_of_*f_0_75
              #                    release a1 with temp_48_ptr_of_*f_0_75
              #                     237  mu f_0_0:236 
              #                     238  ret temp_49_ele_of_*f_0_75_0 
              #                    load from ra_LCA_0 in mem
    ld      ra,264(sp)
              #                    load from s0_LCA_0 in mem
    ld      s0,256(sp)
              #                    occupy a0 with temp_49_ele_of_*f_0_75_0
              #                    load from temp_49_ele_of_*f_0_75_0 in mem


    lw      a0,188(sp)
    addi    sp,sp,272
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_73_0, tracked: true } |     a1:Freed { symidx: y_73_0, tracked: true } |     a2:Freed { symidx: temp_62_cmp_76_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     535  label UP_14_0: 
.UP_14_0:
              #                     611  untrack temp_62_cmp_76_0 
              #                    occupy a2 with temp_62_cmp_76_0
              #                    release a2 with temp_62_cmp_76_0
              #                     610  untrack x_73_1 
              #                     609  untrack t_78_0 
              #                     608  untrack y_73_1 
              #                     558  x_73_2 = i32 x_73_0 
              #                    occupy a0 with x_73_0
              #                    occupy a2 with x_73_2
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                     661  untrack x_73_0 
              #                    occupy a0 with x_73_0
              #                    release a0 with x_73_0
              #                     559  y_73_2 = i32 y_73_0 
              #                    occupy a1 with y_73_0
              #                    occupy a0 with y_73_2
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                     662  untrack y_73_0 
              #                    occupy a1 with y_73_0
              #                    release a1 with y_73_0
              #                          jump label: branch_false_77 
    j       .branch_false_77
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     39   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 64|s0_main:8 at 56|temp_85_ret_of_quick_read _s105 _i0:4 at 52|temp_86_ret_of_quick_read _s105 _i0:4 at 48|i _s105 _i1:4 at 44|temp_87_ret_of_quick_read _s119 _i0:4 at 40|temp_88_ret_of_quick_read _s119 _i0:4 at 36|temp_89_ret_of_LCA _s119 _i0:4 at 32|temp_91_arithop _s119 _i0:4 at 28|temp_92_ret_of_quick_read _s112 _i0:4 at 24|temp_93_ret_of_quick_read _s112 _i0:4 at 20|temp_94_arithop _s112 _i0:4 at 16|temp_95_value_from_ptr _s110 _i0:4 at 12|temp_96_cmp _s110 _i0:1 at 11|none:3 at 8|temp_97_value_from_ptr _s117 _i0:4 at 4|temp_98_ _s3786 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-72
              #                    store to ra_main_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     448  dep_0_7 = chi dep_0_0:39 
              #                     449  m_0_1 = chi m_0_0:39 
              #                     450  f_0_8 = chi f_0_0:39 
              #                     451  head_0_6 = chi head_0_0:39 
              #                     452  n_0_1 = chi n_0_0:39 
              #                     453  cnt_0_3 = chi cnt_0_0:39 
              #                     454  next_0_3 = chi next_0_0:39 
              #                     455  to_0_3 = chi to_0_0:39 
              #                     358  alloc i32 [temp_85_ret_of_quick_read_105] 
              #                     362  alloc i32 [temp_86_ret_of_quick_read_105] 
              #                     368  alloc i32 [i_105] 
              #                     372  alloc i32 [temp_87_ret_of_quick_read_119] 
              #                     375  alloc i32 [x_119] 
              #                     376  alloc i32 [temp_88_ret_of_quick_read_119] 
              #                     379  alloc i32 [y_119] 
              #                     380  alloc i32 [temp_89_ret_of_LCA_119] 
              #                     384  alloc i32 [temp_90_value_from_ptr_119] 
              #                     387  alloc i32 [temp_91_arithop_119] 
              #                     391  alloc i32 [temp_92_ret_of_quick_read_112] 
              #                     394  alloc i32 [x_112] 
              #                     395  alloc i32 [temp_93_ret_of_quick_read_112] 
              #                     398  alloc i32 [y_112] 
              #                     400  alloc i32 [temp_94_arithop_112] 
              #                     403  alloc i32 [temp_95_value_from_ptr_110] 
              #                     406  alloc i1 [temp_96_cmp_110] 
              #                     412  alloc i32 [temp_97_value_from_ptr_117] 
              #                     415  alloc i1 [temp_98__3786] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     359  temp_85_ret_of_quick_read_105_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     360  store temp_85_ret_of_quick_read_105_0:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_85_ret_of_quick_read_105_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     664  untrack temp_85_ret_of_quick_read_105_0 
              #                    occupy a0 with temp_85_ret_of_quick_read_105_0
              #                    release a0 with temp_85_ret_of_quick_read_105_0
              #                     361  n_0_2 = chi n_0_1:360 
              #                     363  temp_86_ret_of_quick_read_105_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     364  store temp_86_ret_of_quick_read_105_0:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_86_ret_of_quick_read_105_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     663  untrack temp_86_ret_of_quick_read_105_0 
              #                    occupy a0 with temp_86_ret_of_quick_read_105_0
              #                    release a0 with temp_86_ret_of_quick_read_105_0
              #                     365  m_0_2 = chi m_0_1:364 
              #                     366   Call void init_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    init
              #                     456  mu dep_0_7:366 
              #                     457  mu head_0_6:366 
              #                     458  mu n_0_2:366 
              #                     459  dep_0_8 = chi dep_0_7:366 
              #                     460  head_0_7 = chi head_0_6:366 
              #                     367  (nop) 
              #                     560  i_105_1 = i32 1_0 
              #                    occupy a0 with i_105_1
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_111 
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: i_105_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     408  label while.head_111: 
.while.head_111:
              #                     404  temp_95_value_from_ptr_110_0 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_95_value_from_ptr_110_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     405  mu n_0_2:404 
              #                     407  temp_96_cmp_110_0 = icmp i32 Ne i_105_1, temp_95_value_from_ptr_110_0 
              #                    occupy a0 with i_105_1
              #                    occupy a2 with temp_95_value_from_ptr_110_0
              #                    occupy a3 with temp_96_cmp_110_0
    xor     a3,a0,a2
    snez    a3, a3
              #                    free a0
              #                    free a2
              #                    free a3
              #                     411  br i1 temp_96_cmp_110_0, label while.body_111, label while.exit_111 
              #                    occupy a3 with temp_96_cmp_110_0
              #                    free a3
              #                    occupy a3 with temp_96_cmp_110_0
    bnez    a3, .while.body_111
              #                    free a3
    j       .while.exit_111
              #                    regtab     a0:Freed { symidx: i_105_1, tracked: true } |     a2:Freed { symidx: temp_95_value_from_ptr_110_0, tracked: true } |     a3:Freed { symidx: temp_96_cmp_110_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     409  label while.body_111: 
.while.body_111:
              #                     392  temp_92_ret_of_quick_read_112_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with i_105_1
              #                    store to i_105_1 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with i_105_1
              #                    occupy a2 with temp_95_value_from_ptr_110_0
              #                    store to temp_95_value_from_ptr_110_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_95_value_from_ptr_110_0
              #                    occupy a3 with temp_96_cmp_110_0
              #                    store to temp_96_cmp_110_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_96_cmp_110_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     393  (nop) 
              #                     396  temp_93_ret_of_quick_read_112_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_92_ret_of_quick_read_112_0
              #                    store to temp_92_ret_of_quick_read_112_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_92_ret_of_quick_read_112_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     397  (nop) 
              #                     399   Call void add_edge_0(temp_92_ret_of_quick_read_112_0, temp_93_ret_of_quick_read_112_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_93_ret_of_quick_read_112_0
              #                    store to temp_93_ret_of_quick_read_112_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_93_ret_of_quick_read_112_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_92_ret_of_quick_read_112_0_0
              #                    load from temp_92_ret_of_quick_read_112_0 in mem


    lw      a0,24(sp)
              #                    occupy a1 with _anonymous_of_temp_93_ret_of_quick_read_112_0_0
              #                    load from temp_93_ret_of_quick_read_112_0 in mem


    lw      a1,20(sp)
              #                    arg load ended


    call    add_edge
              #                     461  mu f_0_9:399 
              #                     462  mu to_0_4:399 
              #                     463  mu head_0_8:399 
              #                     464  mu next_0_4:399 
              #                     465  mu cnt_0_4:399 
              #                     466  f_0_10 = chi f_0_9:399 
              #                     467  cnt_0_5 = chi cnt_0_4:399 
              #                     468  next_0_5 = chi next_0_4:399 
              #                     469  to_0_5 = chi to_0_4:399 
              #                     470  head_0_9 = chi head_0_8:399 
              #                     401  temp_94_arithop_112_0 = Add i32 i_105_1, 1_0 
              #                    occupy a0 with i_105_1
              #                    load from i_105_1 in mem


    lw      a0,44(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_94_arithop_112_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     402  (nop) 
              #                     561  i_105_1 = i32 temp_94_arithop_112_0 
              #                    occupy a2 with temp_94_arithop_112_0
              #                    occupy a0 with i_105_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_111 
              #                    occupy a2 with temp_94_arithop_112_0
              #                    store to temp_94_arithop_112_0 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_94_arithop_112_0
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: i_105_1, tracked: true } |     a2:Freed { symidx: temp_95_value_from_ptr_110_0, tracked: true } |     a3:Freed { symidx: temp_96_cmp_110_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     410  label while.exit_111: 
.while.exit_111:
              #                     665  untrack i_105_1 
              #                    occupy a0 with i_105_1
              #                    release a0 with i_105_1
              #                     369   Call void tree_0(1_0, 1_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_95_value_from_ptr_110_0
              #                    store to temp_95_value_from_ptr_110_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_95_value_from_ptr_110_0
              #                    occupy a3 with temp_96_cmp_110_0
              #                    store to temp_96_cmp_110_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_96_cmp_110_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_1_0_0
    li      a1, 1
              #                    arg load ended


    call    tree
              #                     471  mu f_0_9:369 
              #                     472  mu dep_0_8:369 
              #                     473  mu next_0_4:369 
              #                     474  mu to_0_4:369 
              #                     475  mu head_0_8:369 
              #                     476  dep_0_9 = chi dep_0_8:369 
              #                     477  f_0_11 = chi f_0_9:369 
              #                          jump label: while.head_118 
    j       .while.head_118
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     417  label while.head_118: 
.while.head_118:
              #                     413  temp_97_value_from_ptr_117_0 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_97_value_from_ptr_117_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     414  mu m_0_3:413 
              #                     416  temp_98__3786_0 = icmp i32 Ne temp_97_value_from_ptr_117_0, 0_0 
              #                    occupy a1 with temp_97_value_from_ptr_117_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_98__3786_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     420  br i1 temp_98__3786_0, label while.body_118, label while.exit_118 
              #                    occupy a3 with temp_98__3786_0
              #                    free a3
              #                    occupy a3 with temp_98__3786_0
    bnez    a3, .while.body_118
              #                    free a3
    j       .while.exit_118
              #                    regtab     a1:Freed { symidx: temp_97_value_from_ptr_117_0, tracked: true } |     a3:Freed { symidx: temp_98__3786_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     418  label while.body_118: 
.while.body_118:
              #                     373  temp_87_ret_of_quick_read_119_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_97_value_from_ptr_117_0
              #                    store to temp_97_value_from_ptr_117_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_97_value_from_ptr_117_0
              #                    occupy a3 with temp_98__3786_0
              #                    store to temp_98__3786_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_98__3786_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     374  (nop) 
              #                     377  temp_88_ret_of_quick_read_119_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_87_ret_of_quick_read_119_0
              #                    store to temp_87_ret_of_quick_read_119_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_87_ret_of_quick_read_119_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     378  (nop) 
              #                     381  temp_89_ret_of_LCA_119_0 =  Call i32 LCA_0(temp_87_ret_of_quick_read_119_0, temp_88_ret_of_quick_read_119_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_88_ret_of_quick_read_119_0
              #                    store to temp_88_ret_of_quick_read_119_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_88_ret_of_quick_read_119_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_87_ret_of_quick_read_119_0_0
              #                    load from temp_87_ret_of_quick_read_119_0 in mem


    lw      a0,40(sp)
              #                    occupy a1 with _anonymous_of_temp_88_ret_of_quick_read_119_0_0
              #                    load from temp_88_ret_of_quick_read_119_0 in mem


    lw      a1,36(sp)
              #                    arg load ended


    call    LCA
              #                     478  mu f_0_11:381 
              #                     479  mu dep_0_9:381 
              #                     382   Call void putint_0(temp_89_ret_of_LCA_119_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_89_ret_of_LCA_119_0
              #                    store to temp_89_ret_of_LCA_119_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_89_ret_of_LCA_119_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_89_ret_of_LCA_119_0_0
              #                    load from temp_89_ret_of_LCA_119_0 in mem


    lw      a0,32(sp)
              #                    arg load ended


    call    putint
              #                     383   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     385  (nop) 
              #                     386  mu m_0_3:385 
              #                     388  temp_91_arithop_119_0 = Sub i32 temp_97_value_from_ptr_117_0, 1_0 
              #                    occupy a0 with temp_97_value_from_ptr_117_0
              #                    load from temp_97_value_from_ptr_117_0 in mem


    lw      a0,4(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_91_arithop_119_0
              #                    regtab:    a0:Occupied { symidx: temp_97_value_from_ptr_117_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_91_arithop_119_0, tracked: true, occupy_count: 1 } |  released_gpr_count:13,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     389  store temp_91_arithop_119_0:i32 *m_0:ptr->i32 
              #                    occupy a3 with *m_0
              #                       load label m as ptr to reg
    la      a3, m
              #                    occupy reg a3 with *m_0
              #                    occupy a2 with temp_91_arithop_119_0
    sw      a2,0(a3)
              #                    free a2
              #                    free a3
              #                     390  m_0_4 = chi m_0_3:389 
              #                          jump label: while.head_118 
              #                    occupy a2 with temp_91_arithop_119_0
              #                    store to temp_91_arithop_119_0 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_91_arithop_119_0
              #                    occupy a0 with temp_97_value_from_ptr_117_0
              #                    store to temp_97_value_from_ptr_117_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_97_value_from_ptr_117_0
    j       .while.head_118
              #                    regtab     a1:Freed { symidx: temp_97_value_from_ptr_117_0, tracked: true } |     a3:Freed { symidx: temp_98__3786_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     419  label while.exit_118: 
.while.exit_118:
              #                     480  mu dep_0_9:371 
              #                     481  mu m_0_3:371 
              #                     482  mu f_0_11:371 
              #                     483  mu head_0_8:371 
              #                     484  mu n_0_2:371 
              #                     485  mu cnt_0_4:371 
              #                     486  mu next_0_4:371 
              #                     487  mu to_0_4:371 
              #                     371  ret 0_0 
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
    .globl cnt
              #                     32   global i32 cnt_0 
    .type cnt,@object
cnt:
    .word 0
    .align 4
    .globl head
              #                     29   global Array:i32:[Some(10005_0)] head_0 
    .type head,@object
head:
    .zero 40020
    .align 4
    .globl next
              #                     27   global Array:i32:[Some(10005_0)] next_0 
    .type next,@object
next:
    .zero 40020
    .align 4
    .globl to
              #                     25   global Array:i32:[Some(10005_0)] to_0 
    .type to,@object
to:
    .zero 40020
    .align 4
    .globl dep
              #                     23   global Array:i32:[Some(10005_0)] dep_0 
    .type dep,@object
dep:
    .zero 40020
    .align 4
    .globl f
              #                     21   global Array:i32:[Some(10005_0), Some(20_0)] f_0 
    .type f,@object
f:
    .zero 800400
    .align 4
    .globl m
              #                     19   global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
              #                     18   global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl maxn
              #                     17   global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 10005
