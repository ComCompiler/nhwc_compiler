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
              #                     16   Define whileIf_0 "" -> whileIf_ret_0 
    .globl whileIf
    .type whileIf,@function
whileIf:
              #                    mem layout:|ra_whileIf:8 at 48|s0_whileIf:8 at 40|a _s17 _i0:4 at 36|a _s17 _i2:4 at 32|b _s17 _i0:4 at 28|b _s17 _i2:4 at 24|b _s17 _i4:4 at 20|b _s17 _i6:4 at 16|temp_0_arithop _s33 _i0:4 at 12|temp_1_arithop _s24 _i0:4 at 8|temp_2_cmp _s22 _i0:1 at 7|temp_3_cmp _s25 _i0:1 at 6|temp_4_cmp _s29 _i0:1 at 5|none:5 at 0
    addi    sp,sp,-56
              #                    store to ra_whileIf_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_whileIf_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     18   alloc i32 [a_17] 
              #                     21   alloc i32 [b_17] 
              #                     26   alloc i32 [temp_0_arithop_33] 
              #                     29   alloc i32 [temp_1_arithop_24] 
              #                     34   alloc i1 [temp_2_cmp_22] 
              #                     42   alloc i1 [temp_3_cmp_25] 
              #                     47   alloc i1 [temp_4_cmp_29] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     19    
              #                     20   (nop) 
              #                     22    
              #                     23   (nop) 
              #                     64   b_17_2 = i32 0_0 
              #                    occupy a0 with b_17_2
    li      a0, 0
              #                    free a0
              #                     65   a_17_2 = i32 0_0 
              #                    occupy a1 with a_17_2
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: b_17_2, tracked: true } |     a1:Freed { symidx: a_17_2, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     36   label while.head_23: 
.while.head_23:
              #                     35   temp_2_cmp_22_0 = icmp i32 Slt a_17_2, 100_0 
              #                    occupy a1 with a_17_2
              #                    occupy a2 with 100_0
    li      a2, 100
              #                    occupy a3 with temp_2_cmp_22_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     39   br i1 temp_2_cmp_22_0, label while.body_23, label while.exit_23 
              #                    occupy a3 with temp_2_cmp_22_0
              #                    free a3
              #                    occupy a3 with temp_2_cmp_22_0
    bnez    a3, .while.body_23
              #                    free a3
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: b_17_2, tracked: true } |     a1:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_2_cmp_22_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     37   label while.body_23: 
.while.body_23:
              #                     43   temp_3_cmp_25_0 = icmp i32 Eq a_17_2, 5_0 
              #                    occupy a1 with a_17_2
              #                    occupy a2 with 5_0
    li      a2, 5
              #                    occupy a4 with temp_3_cmp_25_0
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     46   br i1 temp_3_cmp_25_0, label branch_true_26, label branch_false_26 
              #                    occupy a4 with temp_3_cmp_25_0
              #                    free a4
              #                    occupy a4 with temp_3_cmp_25_0
    bnez    a4, .branch_true_26
              #                    free a4
    j       .branch_false_26
              #                    regtab     a0:Freed { symidx: b_17_2, tracked: true } |     a1:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_2_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_3_cmp_25_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     44   label branch_true_26: 
.branch_true_26:
              #                     77   untrack b_17_6 
              #                     76   untrack temp_0_arithop_33_0 
              #                     75   untrack temp_4_cmp_29_0 
              #                     74   untrack temp_3_cmp_25_0 
              #                    occupy a4 with temp_3_cmp_25_0
              #                    release a4 with temp_3_cmp_25_0
              #                     73   untrack temp_2_cmp_22_0 
              #                    occupy a3 with temp_2_cmp_22_0
              #                    release a3 with temp_2_cmp_22_0
              #                     33   (nop) 
              #                     66   b_17_4 = i32 25_0 
              #                    occupy a2 with b_17_4
    li      a2, 25
              #                    free a2
              #                          jump label: gather_10 
    j       .gather_10
              #                    regtab     a0:Freed { symidx: b_17_2, tracked: true } |     a1:Freed { symidx: a_17_2, tracked: true } |     a2:Freed { symidx: b_17_4, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     53   label gather_10: 
.gather_10:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: b_17_2, tracked: true } |     a1:Freed { symidx: a_17_2, tracked: true } |     a2:Freed { symidx: b_17_4, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     30   temp_1_arithop_24_0 = Add i32 a_17_2, 1_0 
              #                    occupy a1 with a_17_2
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_1_arithop_24_0
    ADDW    a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                     31   (nop) 
              #                     67   a_17_2 = i32 temp_1_arithop_24_0 
              #                    occupy a4 with temp_1_arithop_24_0
              #                    occupy a1 with a_17_2
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                     68   b_17_2 = i32 b_17_4 
              #                    occupy a2 with b_17_4
              #                    occupy a0 with b_17_2
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_23 
              #                    occupy a2 with b_17_4
              #                    store to b_17_4 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with b_17_4
              #                    occupy a4 with temp_1_arithop_24_0
              #                    store to temp_1_arithop_24_0 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_1_arithop_24_0
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: b_17_2, tracked: true } |     a1:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_2_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_3_cmp_25_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     45   label branch_false_26: 
.branch_false_26:
              #                     48   temp_4_cmp_29_0 = icmp i32 Eq a_17_2, 10_0 
              #                    occupy a1 with a_17_2
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    occupy a5 with temp_4_cmp_29_0
    xor     a5,a1,a2
    seqz    a5, a5
              #                    free a1
              #                    free a2
              #                    free a5
              #                     51   br i1 temp_4_cmp_29_0, label branch_true_30, label branch_false_30 
              #                    occupy a5 with temp_4_cmp_29_0
              #                    free a5
              #                    occupy a5 with temp_4_cmp_29_0
    bnez    a5, .branch_true_30
              #                    free a5
    j       .branch_false_30
              #                    regtab     a0:Freed { symidx: b_17_2, tracked: true } |     a1:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_2_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_3_cmp_25_0, tracked: true } |     a5:Freed { symidx: temp_4_cmp_29_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     49   label branch_true_30: 
.branch_true_30:
              #                     81   untrack temp_2_cmp_22_0 
              #                    occupy a3 with temp_2_cmp_22_0
              #                    release a3 with temp_2_cmp_22_0
              #                     80   untrack temp_0_arithop_33_0 
              #                     79   untrack temp_3_cmp_25_0 
              #                    occupy a4 with temp_3_cmp_25_0
              #                    release a4 with temp_3_cmp_25_0
              #                     78   untrack temp_4_cmp_29_0 
              #                    occupy a5 with temp_4_cmp_29_0
              #                    release a5 with temp_4_cmp_29_0
              #                     32   (nop) 
              #                     69   b_17_6 = i32 42_0 
              #                    occupy a2 with b_17_6
    li      a2, 42
              #                    free a2
              #                          jump label: gather_8 
    j       .gather_8
              #                    regtab     a0:Freed { symidx: b_17_2, tracked: true } |     a1:Freed { symidx: a_17_2, tracked: true } |     a2:Freed { symidx: b_17_6, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     52   label gather_8: 
.gather_8:
              #                     70   b_17_4 = i32 b_17_6 
              #                    occupy a2 with b_17_6
              #                    occupy a3 with b_17_4
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: gather_10 
              #                    occupy a2 with b_17_6
              #                    store to b_17_6 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with b_17_6
              #                    occupy a3 with b_17_4
              #                    store to b_17_4 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with b_17_4
              #                    occupy a2 with b_17_4
              #                    load from b_17_4 in mem


    lw      a2,20(sp)
    j       .gather_10
              #                    regtab     a0:Freed { symidx: b_17_2, tracked: true } |     a1:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_2_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_3_cmp_25_0, tracked: true } |     a5:Freed { symidx: temp_4_cmp_29_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     50   label branch_false_30: 
.branch_false_30:
              #                     27   temp_0_arithop_33_0 = Mul i32 a_17_2, 2_0 
              #                    occupy a2 with temp_0_arithop_33_0
              #                    occupy a1 with a_17_2
    slliw a2,a1,1
              #                    free a1
              #                    free a2
              #                     28   (nop) 
              #                     71   b_17_6 = i32 temp_0_arithop_33_0 
              #                    occupy a2 with temp_0_arithop_33_0
              #                    occupy a6 with b_17_6
    mv      a6, a2
              #                    free a2
              #                    free a6
              #                          jump label: gather_8 
              #                    occupy a2 with temp_0_arithop_33_0
              #                    store to temp_0_arithop_33_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_0_arithop_33_0
              #                    occupy a6 with b_17_6
              #                    store to b_17_6 in mem offset legal
    sw      a6,16(sp)
              #                    release a6 with b_17_6
              #                    occupy a2 with b_17_6
              #                    load from b_17_6 in mem


    lw      a2,16(sp)
              #                    occupy a4 with temp_3_cmp_25_0
              #                    store to temp_3_cmp_25_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_3_cmp_25_0
              #                    occupy a5 with temp_4_cmp_29_0
              #                    store to temp_4_cmp_29_0 in mem offset legal
    sb      a5,5(sp)
              #                    release a5 with temp_4_cmp_29_0
              #                    occupy a3 with temp_2_cmp_22_0
              #                    store to temp_2_cmp_22_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_2_cmp_22_0
    j       .gather_8
              #                    regtab     a0:Freed { symidx: b_17_2, tracked: true } |     a1:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_2_cmp_22_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     38   label while.exit_23: 
.while.exit_23:
              #                     72   untrack a_17_2 
              #                    occupy a1 with a_17_2
              #                    release a1 with a_17_2
              #                     25   ret b_17_2 
              #                    load from ra_whileIf_0 in mem
    ld      ra,48(sp)
              #                    load from s0_whileIf_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with b_17_2
              #                    store to b_17_2 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with b_17_2
              #                    occupy a0 with b_17_2
              #                    load from b_17_2 in mem


    lw      a0,24(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_5_ret_of_whileIf _s38 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     55   alloc i32 [temp_5_ret_of_whileIf_38] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     56   temp_5_ret_of_whileIf_38_0 =  Call i32 whileIf_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    whileIf
              #                     57   ret temp_5_ret_of_whileIf_38_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with temp_5_ret_of_whileIf_38_0
              #                    store to temp_5_ret_of_whileIf_38_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_5_ret_of_whileIf_38_0
              #                    occupy a0 with temp_5_ret_of_whileIf_38_0
              #                    load from temp_5_ret_of_whileIf_38_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
