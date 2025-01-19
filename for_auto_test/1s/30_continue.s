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
              #                     16   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 40|s0_main:8 at 32|i _s17 _i0:4 at 28|i _s17 _i2:4 at 24|sum _s17 _i0:4 at 20|sum _s17 _i2:4 at 16|temp_0_arithop _s24 _i0:4 at 12|temp_1_arithop _s24 _i0:4 at 8|temp_2_arithop _s27 _i0:4 at 4|temp_3_cmp _s22 _i0:1 at 3|temp_4_cmp _s25 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-48
              #                    store to ra_main_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     17   alloc i32 [i_17] 
              #                     20   alloc i32 [sum_17] 
              #                     25   alloc i32 [temp_0_arithop_24] 
              #                     28   alloc i32 [temp_1_arithop_24] 
              #                     31   alloc i32 [temp_2_arithop_27] 
              #                     34   alloc i1 [temp_3_cmp_22] 
              #                     42   alloc i1 [temp_4_cmp_25] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     18    
              #                     19   (nop) 
              #                     21    
              #                     22   (nop) 
              #                     49   sum_17_2 = i32 0_0 
              #                    occupy a0 with sum_17_2
    li      a0, 0
              #                    free a0
              #                     50   i_17_2 = i32 0_0 
              #                    occupy a1 with i_17_2
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: sum_17_2, tracked: true } |     a1:Freed { symidx: i_17_2, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     36   label while.head_23: 
.while.head_23:
              #                     35   temp_3_cmp_22_0 = icmp i32 Slt i_17_2, 100_0 
              #                    occupy a1 with i_17_2
              #                    occupy a2 with 100_0
    li      a2, 100
              #                    occupy a3 with temp_3_cmp_22_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     39   br i1 temp_3_cmp_22_0, label while.body_23, label while.exit_23 
              #                    occupy a3 with temp_3_cmp_22_0
              #                    free a3
              #                    occupy a3 with temp_3_cmp_22_0
    bnez    a3, .while.body_23
              #                    free a3
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: sum_17_2, tracked: true } |     a1:Freed { symidx: i_17_2, tracked: true } |     a3:Freed { symidx: temp_3_cmp_22_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     37   label while.body_23: 
.while.body_23:
              #                     43   temp_4_cmp_25_0 = icmp i32 Eq i_17_2, 50_0 
              #                    occupy a1 with i_17_2
              #                    occupy a2 with 50_0
    li      a2, 50
              #                    occupy a4 with temp_4_cmp_25_0
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     46   br i1 temp_4_cmp_25_0, label branch_true_26, label branch_false_26 
              #                    occupy a4 with temp_4_cmp_25_0
              #                    free a4
              #                    occupy a4 with temp_4_cmp_25_0
    bnez    a4, .branch_true_26
              #                    free a4
    j       .branch_false_26
              #                    regtab     a0:Freed { symidx: sum_17_2, tracked: true } |     a1:Freed { symidx: i_17_2, tracked: true } |     a3:Freed { symidx: temp_3_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_4_cmp_25_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     44   label branch_true_26: 
.branch_true_26:
              #                     32   temp_2_arithop_27_0 = Add i32 i_17_2, 1_0 
              #                    occupy a1 with i_17_2
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a5 with temp_2_arithop_27_0
    ADDW    a5,a1,a2
              #                    free a1
              #                    free a2
              #                    free a5
              #                     33   (nop) 
              #                     51   i_17_2 = i32 temp_2_arithop_27_0 
              #                    occupy a5 with temp_2_arithop_27_0
              #                    occupy a1 with i_17_2
    mv      a1, a5
              #                    free a5
              #                    free a1
              #                          jump label: while.head_23 
              #                    occupy a5 with temp_2_arithop_27_0
              #                    store to temp_2_arithop_27_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_2_arithop_27_0
              #                    occupy a4 with temp_4_cmp_25_0
              #                    store to temp_4_cmp_25_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_4_cmp_25_0
              #                    occupy a3 with temp_3_cmp_22_0
              #                    store to temp_3_cmp_22_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_3_cmp_22_0
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: sum_17_2, tracked: true } |     a1:Freed { symidx: i_17_2, tracked: true } |     a3:Freed { symidx: temp_3_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_4_cmp_25_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     45   label branch_false_26: 
.branch_false_26:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: sum_17_2, tracked: true } |     a1:Freed { symidx: i_17_2, tracked: true } |     a3:Freed { symidx: temp_3_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_4_cmp_25_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     26   temp_0_arithop_24_0 = Add i32 sum_17_2, i_17_2 
              #                    occupy a0 with sum_17_2
              #                    occupy a1 with i_17_2
              #                    occupy a2 with temp_0_arithop_24_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     27   (nop) 
              #                     29   temp_1_arithop_24_0 = Add i32 i_17_2, 1_0 
              #                    occupy a1 with i_17_2
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_1_arithop_24_0
    ADDW    a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                     30   (nop) 
              #                     52   sum_17_2 = i32 temp_0_arithop_24_0 
              #                    occupy a2 with temp_0_arithop_24_0
              #                    occupy a0 with sum_17_2
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                     53   i_17_2 = i32 temp_1_arithop_24_0 
              #                    occupy a6 with temp_1_arithop_24_0
              #                    occupy a1 with i_17_2
    mv      a1, a6
              #                    free a6
              #                    free a1
              #                          jump label: while.head_23 
              #                    occupy a2 with temp_0_arithop_24_0
              #                    store to temp_0_arithop_24_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_0_arithop_24_0
              #                    occupy a4 with temp_4_cmp_25_0
              #                    store to temp_4_cmp_25_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_4_cmp_25_0
              #                    occupy a3 with temp_3_cmp_22_0
              #                    store to temp_3_cmp_22_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_3_cmp_22_0
              #                    occupy a6 with temp_1_arithop_24_0
              #                    store to temp_1_arithop_24_0 in mem offset legal
    sw      a6,8(sp)
              #                    release a6 with temp_1_arithop_24_0
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: sum_17_2, tracked: true } |     a1:Freed { symidx: i_17_2, tracked: true } |     a3:Freed { symidx: temp_3_cmp_22_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     38   label while.exit_23: 
.while.exit_23:
              #                     54   untrack i_17_2 
              #                    occupy a1 with i_17_2
              #                    release a1 with i_17_2
              #                     24   ret sum_17_2 
              #                    load from ra_main_0 in mem
    ld      ra,40(sp)
              #                    load from s0_main_0 in mem
    ld      s0,32(sp)
              #                    occupy a0 with sum_17_2
              #                    store to sum_17_2 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with sum_17_2
              #                    occupy a0 with sum_17_2
              #                    load from sum_17_2 in mem


    lw      a0,16(sp)
    addi    sp,sp,48
              #                    free a0
    ret
