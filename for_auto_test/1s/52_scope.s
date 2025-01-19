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
              #                     19   Define func_0 "" -> func_ret_0 
    .globl func
    .type func,@function
func:
              #                    mem layout:|ra_func:8 at 16|s0_func:8 at 8|temp_0_value_from_ptr _s18 _i0:4 at 4|temp_2_cmp _s21 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-24
              #                    store to ra_func_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_func_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     21   alloc i32 [temp_0_value_from_ptr_18] 
              #                     25   alloc i32 [b_18] 
              #                     27   alloc i32 [a_18] 
              #                     30   alloc i32 [temp_1_arithop_23] 
              #                     35   alloc i1 [temp_2_cmp_21] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     22   temp_0_value_from_ptr_18_0 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with temp_0_value_from_ptr_18_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     23   mu a_0_0:22 
              #                     24   (nop) 
              #                     26   (nop) 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a1:Freed { symidx: temp_0_value_from_ptr_18_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     36   temp_2_cmp_21_0 = icmp i32 Eq 1_0, temp_0_value_from_ptr_18_0 
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with temp_0_value_from_ptr_18_0
              #                    occupy a2 with temp_2_cmp_21_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     89   untrack temp_0_value_from_ptr_18_0 
              #                    occupy a1 with temp_0_value_from_ptr_18_0
              #                    release a1 with temp_0_value_from_ptr_18_0
              #                     39   br i1 temp_2_cmp_21_0, label branch_true_22, label branch_false_22 
              #                    occupy a2 with temp_2_cmp_21_0
              #                    free a2
              #                    occupy a2 with temp_2_cmp_21_0
    bnez    a2, .branch_true_22
              #                    free a2
    j       .branch_false_22
              #                    regtab     a2:Freed { symidx: temp_2_cmp_21_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     37   label branch_true_22: 
.branch_true_22:
              #                     90   untrack temp_2_cmp_21_0 
              #                    occupy a2 with temp_2_cmp_21_0
              #                    release a2 with temp_2_cmp_21_0
              #                     31   (nop) 
              #                     32   (nop) 
              #                     34   ret 1_0 
              #                    load from ra_func_0 in mem
    ld      ra,16(sp)
              #                    load from s0_func_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_2_cmp_21_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     38   label branch_false_22: 
.branch_false_22:
              #                     91   untrack temp_2_cmp_21_0 
              #                    occupy a2 with temp_2_cmp_21_0
              #                    release a2 with temp_2_cmp_21_0
              #                     29   ret 0_0 
              #                    load from ra_func_0 in mem
    ld      ra,16(sp)
              #                    load from s0_func_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     20   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 40|s0_main:8 at 32|result _s28 _i1:4 at 28|result _s28 _i3:4 at 24|i _s28 _i1:4 at 20|temp_3_arithop _s33 _i0:4 at 16|temp_4_arithop _s34 _i0:4 at 12|temp_5_cmp _s31 _i0:1 at 11|temp_6_cmp _s38 _i0:1 at 10|none:2 at 8|temp_7_ret_of_func _s34 _i0:4 at 4|temp_8_cmp _s34 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-48
              #                    store to ra_main_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     44   alloc i32 [result_28] 
              #                     46   alloc i32 [i_28] 
              #                     51   alloc i32 [temp_3_arithop_33] 
              #                     54   alloc i32 [temp_4_arithop_34] 
              #                     57   alloc i1 [temp_5_cmp_31] 
              #                     63   alloc i1 [temp_6_cmp_38] 
              #                     71   alloc i32 [temp_7_ret_of_func_34] 
              #                     73   alloc i1 [temp_8_cmp_34] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     43   (nop) 
              #                     45   (nop) 
              #                     83   result_28_1 = i32 0_0 
              #                    occupy a0 with result_28_1
    li      a0, 0
              #                    free a0
              #                     84   i_28_1 = i32 0_0 
              #                    occupy a1 with i_28_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: result_28_1, tracked: true } |     a1:Freed { symidx: i_28_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     59   label while.head_32: 
.while.head_32:
              #                     58   temp_5_cmp_31_0 = icmp i32 Slt i_28_1, 100_0 
              #                    occupy a1 with i_28_1
              #                    occupy a2 with 100_0
    li      a2, 100
              #                    occupy a3 with temp_5_cmp_31_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     62   br i1 temp_5_cmp_31_0, label while.body_32, label while.exit_32 
              #                    occupy a3 with temp_5_cmp_31_0
              #                    free a3
              #                    occupy a3 with temp_5_cmp_31_0
    bnez    a3, .while.body_32
              #                    free a3
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: result_28_1, tracked: true } |     a1:Freed { symidx: i_28_1, tracked: true } |     a3:Freed { symidx: temp_5_cmp_31_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     60   label while.body_32: 
.while.body_32:
              #                     72   temp_7_ret_of_func_34_0 =  Call i32 func_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with result_28_1
              #                    store to result_28_1 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with result_28_1
              #                    occupy a1 with i_28_1
              #                    store to i_28_1 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with i_28_1
              #                    occupy a3 with temp_5_cmp_31_0
              #                    store to temp_5_cmp_31_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_5_cmp_31_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    func
              #                     78   mu a_0_0:72 
              #                     74   temp_8_cmp_34_0 = icmp i32 Eq temp_7_ret_of_func_34_0, 1_0 
              #                    occupy a0 with temp_7_ret_of_func_34_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_8_cmp_34_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     77   br i1 temp_8_cmp_34_0, label branch_true_35, label UP_9_0 
              #                    occupy a2 with temp_8_cmp_34_0
              #                    free a2
              #                    occupy a2 with temp_8_cmp_34_0
    bnez    a2, .branch_true_35
              #                    free a2
    j       .UP_9_0
              #                    regtab     a0:Freed { symidx: temp_7_ret_of_func_34_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_34_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     75   label branch_true_35: 
.branch_true_35:
              #                     95   untrack temp_5_cmp_31_0 
              #                     94   untrack temp_7_ret_of_func_34_0 
              #                    occupy a0 with temp_7_ret_of_func_34_0
              #                    release a0 with temp_7_ret_of_func_34_0
              #                     93   untrack temp_8_cmp_34_0 
              #                    occupy a2 with temp_8_cmp_34_0
              #                    release a2 with temp_8_cmp_34_0
              #                     55   temp_4_arithop_34_0 = Add i32 result_28_1, 1_0 
              #                    occupy a0 with result_28_1
              #                    load from result_28_1 in mem


    lw      a0,28(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_4_arithop_34_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     56   (nop) 
              #                     85   result_28_3 = i32 temp_4_arithop_34_0 
              #                    occupy a2 with temp_4_arithop_34_0
              #                    occupy a3 with result_28_3
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                     96   untrack temp_4_arithop_34_0 
              #                    occupy a2 with temp_4_arithop_34_0
              #                    release a2 with temp_4_arithop_34_0
              #                          jump label: branch_false_35 
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: result_28_1, tracked: true } |     a3:Freed { symidx: result_28_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     76   label branch_false_35: 
.branch_false_35:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: result_28_1, tracked: true } |     a3:Freed { symidx: result_28_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     52   temp_3_arithop_33_0 = Add i32 i_28_1, 1_0 
              #                    occupy a1 with i_28_1
              #                    load from i_28_1 in mem


    lw      a1,20(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with temp_3_arithop_33_0
    ADDW    a4,a1,a2
              #                    free a1
              #                    free a2
              #                    free a4
              #                     53   (nop) 
              #                     86   result_28_1 = i32 result_28_3 
              #                    occupy a3 with result_28_3
              #                    occupy a0 with result_28_1
    mv      a0, a3
              #                    free a3
              #                    free a0
              #                     87   i_28_1 = i32 temp_3_arithop_33_0 
              #                    occupy a4 with temp_3_arithop_33_0
              #                    occupy a1 with i_28_1
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: while.head_32 
              #                    occupy a4 with temp_3_arithop_33_0
              #                    store to temp_3_arithop_33_0 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_3_arithop_33_0
              #                    occupy a3 with result_28_3
              #                    store to result_28_3 in mem offset legal
    sw      a3,24(sp)
              #                    release a3 with result_28_3
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: temp_7_ret_of_func_34_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_34_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     82   label UP_9_0: 
.UP_9_0:
              #                     88   result_28_3 = i32 result_28_1 
              #                    occupy a1 with result_28_1
              #                    load from result_28_1 in mem


    lw      a1,28(sp)
              #                    occupy a3 with result_28_3
    mv      a3, a1
              #                    free a1
              #                    free a3
              #                          jump label: branch_false_35 
              #                    occupy a0 with temp_7_ret_of_func_34_0
              #                    store to temp_7_ret_of_func_34_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_7_ret_of_func_34_0
              #                    occupy a1 with result_28_1
              #                    store to result_28_1 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with result_28_1
              #                    occupy a0 with result_28_1
              #                    load from result_28_1 in mem


    lw      a0,28(sp)
              #                    occupy a2 with temp_8_cmp_34_0
              #                    store to temp_8_cmp_34_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_8_cmp_34_0
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: result_28_1, tracked: true } |     a1:Freed { symidx: i_28_1, tracked: true } |     a3:Freed { symidx: temp_5_cmp_31_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     61   label while.exit_32: 
.while.exit_32:
              #                     92   untrack i_28_1 
              #                    occupy a1 with i_28_1
              #                    release a1 with i_28_1
              #                     64   temp_6_cmp_38_0 = icmp i32 Slt result_28_1, 100_0 
              #                    occupy a0 with result_28_1
              #                    occupy a1 with 100_0
    li      a1, 100
              #                    occupy a2 with temp_6_cmp_38_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     97   untrack result_28_1 
              #                    occupy a0 with result_28_1
              #                    release a0 with result_28_1
              #                     67   br i1 temp_6_cmp_38_0, label branch_true_39, label branch_false_39 
              #                    occupy a2 with temp_6_cmp_38_0
              #                    free a2
              #                    occupy a2 with temp_6_cmp_38_0
    bnez    a2, .branch_true_39
              #                    free a2
    j       .branch_false_39
              #                    regtab     a2:Freed { symidx: temp_6_cmp_38_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_31_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     65   label branch_true_39: 
.branch_true_39:
              #                     98   untrack temp_6_cmp_38_0 
              #                    occupy a2 with temp_6_cmp_38_0
              #                    release a2 with temp_6_cmp_38_0
              #                     50    Call void putint_0(1_0) 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_5_cmp_31_0
              #                    store to temp_5_cmp_31_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_5_cmp_31_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    putint
              #                          jump label: gather_19 
    j       .gather_19
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                     68   label gather_19: 
.gather_19:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     49   ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,40(sp)
              #                    load from s0_main_0 in mem
    ld      s0,32(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_6_cmp_38_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_31_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     66   label branch_false_39: 
.branch_false_39:
              #                     99   untrack temp_6_cmp_38_0 
              #                    occupy a2 with temp_6_cmp_38_0
              #                    release a2 with temp_6_cmp_38_0
              #                     47    Call void putint_0(0_0) 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_5_cmp_31_0
              #                    store to temp_5_cmp_31_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_5_cmp_31_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    putint
              #                          jump label: gather_19 
    j       .gather_19
.section ___var
    .data
    .align 4
    .globl a
              #                     17   global i32 a_0 
    .type a,@object
a:
    .word 7
