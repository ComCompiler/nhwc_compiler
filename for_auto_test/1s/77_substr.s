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
              #                     16   Define MAX_0 "a_16_0,b_16_0," -> MAX_ret_0 
    .globl MAX
    .type MAX,@function
MAX:
              #                    mem layout:|ra_MAX:8 at 24|s0_MAX:8 at 16|a _s16 _i0:4 at 12|b _s16 _i0:4 at 8|temp_0_cmp _s19 _i0:1 at 7|temp_1_cmp _s22 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-32
              #                    store to ra_MAX_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_MAX_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     29   alloc i1 [temp_0_cmp_19] 
              #                     34   alloc i1 [temp_1_cmp_22] 
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |     a1:Freed { symidx: b_16_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     30   temp_0_cmp_19_0 = icmp i32 Eq a_16_0, b_16_0 
              #                    occupy a0 with a_16_0
              #                    occupy a1 with b_16_0
              #                    occupy a2 with temp_0_cmp_19_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     33   br i1 temp_0_cmp_19_0, label branch_true_20, label branch_false_20 
              #                    occupy a2 with temp_0_cmp_19_0
              #                    free a2
              #                    occupy a2 with temp_0_cmp_19_0
    bnez    a2, .branch_true_20
              #                    free a2
    j       .branch_false_20
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |     a1:Freed { symidx: b_16_0, tracked: true } |     a2:Freed { symidx: temp_0_cmp_19_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     31   label branch_true_20: 
.branch_true_20:
              #                     389  untrack temp_1_cmp_22_0 
              #                     388  untrack b_16_0 
              #                    occupy a1 with b_16_0
              #                    release a1 with b_16_0
              #                     387  untrack temp_0_cmp_19_0 
              #                    occupy a2 with temp_0_cmp_19_0
              #                    release a2 with temp_0_cmp_19_0
              #                     28   ret a_16_0 
              #                    load from ra_MAX_0 in mem
    ld      ra,24(sp)
              #                    load from s0_MAX_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with a_16_0
              #                    store to a_16_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with a_16_0
              #                    occupy a0 with a_16_0
              #                    load from a_16_0 in mem


    lw      a0,12(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |     a1:Freed { symidx: b_16_0, tracked: true } |     a2:Freed { symidx: temp_0_cmp_19_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     32   label branch_false_20: 
.branch_false_20:
              #                     390  untrack temp_0_cmp_19_0 
              #                    occupy a2 with temp_0_cmp_19_0
              #                    release a2 with temp_0_cmp_19_0
              #                     35   temp_1_cmp_22_0 = icmp i32 Sgt a_16_0, b_16_0 
              #                    occupy a0 with a_16_0
              #                    occupy a1 with b_16_0
              #                    occupy a2 with temp_1_cmp_22_0
    slt     a2,a1,a0
              #                    free a0
              #                    free a1
              #                    free a2
              #                     38   br i1 temp_1_cmp_22_0, label branch_true_23, label branch_false_23 
              #                    occupy a2 with temp_1_cmp_22_0
              #                    free a2
              #                    occupy a2 with temp_1_cmp_22_0
    bnez    a2, .branch_true_23
              #                    free a2
    j       .branch_false_23
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |     a1:Freed { symidx: b_16_0, tracked: true } |     a2:Freed { symidx: temp_1_cmp_22_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     36   label branch_true_23: 
.branch_true_23:
              #                     392  untrack temp_1_cmp_22_0 
              #                    occupy a2 with temp_1_cmp_22_0
              #                    release a2 with temp_1_cmp_22_0
              #                     391  untrack b_16_0 
              #                    occupy a1 with b_16_0
              #                    release a1 with b_16_0
              #                     26   ret a_16_0 
              #                    load from ra_MAX_0 in mem
    ld      ra,24(sp)
              #                    load from s0_MAX_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with a_16_0
              #                    store to a_16_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with a_16_0
              #                    occupy a0 with a_16_0
              #                    load from a_16_0 in mem


    lw      a0,12(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |     a1:Freed { symidx: b_16_0, tracked: true } |     a2:Freed { symidx: temp_1_cmp_22_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     37   label branch_false_23: 
.branch_false_23:
              #                     394  untrack temp_1_cmp_22_0 
              #                    occupy a2 with temp_1_cmp_22_0
              #                    release a2 with temp_1_cmp_22_0
              #                     393  untrack a_16_0 
              #                    occupy a0 with a_16_0
              #                    release a0 with a_16_0
              #                     24   ret b_16_0 
              #                    load from ra_MAX_0 in mem
    ld      ra,24(sp)
              #                    load from s0_MAX_0 in mem
    ld      s0,16(sp)
              #                    occupy a1 with b_16_0
              #                    store to b_16_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with b_16_0
              #                    occupy a0 with b_16_0
              #                    load from b_16_0 in mem


    lw      a0,8(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     18   Define max_sum_nonadjacent_0 "arr_26,n_26_0," -> max_sum_nonadjacent_ret_0 
    .globl max_sum_nonadjacent
    .type max_sum_nonadjacent,@function
max_sum_nonadjacent:
              #                    mem layout:|ra_max_sum_nonadjacent:8 at 264|s0_max_sum_nonadjacent:8 at 256|arr:8 at 248|arr:8 at 240|n _s26 _i0:4 at 236|none:4 at 232|temp_2_array_init_ptr:8 at 224|temp:64 at 160|temp_3_ptr_of_temp_28:8 at 152|temp_4_ptr_of_arr_26:8 at 144|temp_5_ele_of_arr_26 _s28 _i0:4 at 140|none:4 at 136|temp_6_ptr_of_temp_28:8 at 128|temp_7_ptr_of_arr_26:8 at 120|temp_9_ptr_of_arr_26:8 at 112|temp_10_ele_of_arr_26 _s28 _i0:4 at 108|temp_11_ret_of_MAX _s28 _i0:4 at 104|i _s28 _i1:4 at 100|temp_12_arithop _s28 _i0:4 at 96|temp_13_ptr_of_temp_28:8 at 88|temp_14_ele_of_temp_28 _s28 _i0:4 at 84|none:4 at 80|temp_15_ptr_of_temp_28:8 at 72|temp_16_arithop _s35 _i0:4 at 68|none:4 at 64|temp_17_ptr_of_temp_28:8 at 56|temp_18_ele_of_temp_28 _s35 _i0:4 at 52|none:4 at 48|temp_19_ptr_of_arr_26:8 at 40|temp_20_ele_of_arr_26 _s35 _i0:4 at 36|temp_21_arithop _s35 _i0:4 at 32|temp_22_arithop _s35 _i0:4 at 28|none:4 at 24|temp_23_ptr_of_temp_28:8 at 16|temp_24_ele_of_temp_28 _s35 _i0:4 at 12|temp_25_ret_of_MAX _s35 _i0:4 at 8|temp_26_arithop _s35 _i0:4 at 4|temp_27_cmp _s33 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-272
              #                    store to ra_max_sum_nonadjacent_0 in mem offset legal
    sd      ra,264(sp)
              #                    store to s0_max_sum_nonadjacent_0 in mem offset legal
    sd      s0,256(sp)
    addi    s0,sp,272
              #                     44   alloc ptr->i32 [temp_2_array_init_ptr_28] 
              #                     47   alloc Array:i32:[Some(16_0)] [temp_28] 
              #                     48   alloc ptr->i32 [temp_3_ptr_of_temp_28_28] 
              #                     50   alloc ptr->i32 [temp_4_ptr_of_arr_26_28] 
              #                     52   alloc i32 [temp_5_ele_of_arr_26_28] 
              #                     57   alloc ptr->i32 [temp_6_ptr_of_temp_28_28] 
              #                     59   alloc ptr->i32 [temp_7_ptr_of_arr_26_28] 
              #                     61   alloc i32 [temp_8_ele_of_arr_26_28] 
              #                     64   alloc ptr->i32 [temp_9_ptr_of_arr_26_28] 
              #                     66   alloc i32 [temp_10_ele_of_arr_26_28] 
              #                     69   alloc i32 [temp_11_ret_of_MAX_28] 
              #                     74   alloc i32 [i_28] 
              #                     76   alloc i32 [temp_12_arithop_28] 
              #                     78   alloc ptr->i32 [temp_13_ptr_of_temp_28_28] 
              #                     80   alloc i32 [temp_14_ele_of_temp_28_28] 
              #                     84   alloc ptr->i32 [temp_15_ptr_of_temp_28_35] 
              #                     86   alloc i32 [temp_16_arithop_35] 
              #                     88   alloc ptr->i32 [temp_17_ptr_of_temp_28_35] 
              #                     90   alloc i32 [temp_18_ele_of_temp_28_35] 
              #                     93   alloc ptr->i32 [temp_19_ptr_of_arr_26_35] 
              #                     95   alloc i32 [temp_20_ele_of_arr_26_35] 
              #                     98   alloc i32 [temp_21_arithop_35] 
              #                     100  alloc i32 [temp_22_arithop_35] 
              #                     102  alloc ptr->i32 [temp_23_ptr_of_temp_28_35] 
              #                     104  alloc i32 [temp_24_ele_of_temp_28_35] 
              #                     107  alloc i32 [temp_25_ret_of_MAX_35] 
              #                     111  alloc i32 [temp_26_arithop_35] 
              #                     114  alloc i1 [temp_27_cmp_33] 
              #                    regtab     a0:Freed { symidx: arr_26, tracked: true } |     a1:Freed { symidx: n_26_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     17    
              #                     43    
              #                     45   temp_2_array_init_ptr_28 = GEP temp_28_0:Array:i32:[Some(16_0)] [] 
              #                    occupy a2 with temp_2_array_init_ptr_28
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,160
              #                    free a2
              #                     46    Call void memset_0(temp_2_array_init_ptr_28, 0_0, 64_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with arr_26
              #                    store to arr_26 in mem offset legal
    sd      a0,240(sp)
              #                    release a0 with arr_26
              #                    occupy a1 with n_26_0
              #                    store to n_26_0 in mem offset legal
    sw      a1,236(sp)
              #                    release a1 with n_26_0
              #                    occupy a2 with temp_2_array_init_ptr_28
              #                    store to temp_2_array_init_ptr_28 in mem offset legal
    sd      a2,224(sp)
              #                    release a2 with temp_2_array_init_ptr_28
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_2_array_init_ptr_28_0
              #                    load from temp_2_array_init_ptr_28 in mem
    ld      a0,224(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_64_0_0
    li      a2, 64
              #                    arg load ended


    call    memset
              #                     398  untrack temp_2_array_init_ptr_28 
              #                     359  mu temp_28_0:46 
              #                     360  temp_28_1 = chi temp_28_0:46 
              #                     49   temp_3_ptr_of_temp_28_28 = GEP temp_28_1:Array:i32:[Some(16_0)] [Some(0_0)] 
              #                    occupy a0 with temp_3_ptr_of_temp_28_28
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,160
              #                    free a0
              #                     51   temp_4_ptr_of_arr_26_28 = GEP arr_26:Array:i32:[None] [Some(0_0)] 
              #                    occupy a2 with temp_4_ptr_of_arr_26_28
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with arr_26
              #                    load from arr_26 in mem
    ld      a4,240(sp)
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     53   temp_5_ele_of_arr_26_28_0 = load temp_4_ptr_of_arr_26_28:ptr->i32 
              #                    occupy a2 with temp_4_ptr_of_arr_26_28
              #                    occupy a5 with temp_5_ele_of_arr_26_28_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     399  untrack temp_4_ptr_of_arr_26_28 
              #                    occupy a2 with temp_4_ptr_of_arr_26_28
              #                    release a2 with temp_4_ptr_of_arr_26_28
              #                     54   mu arr_26:53 
              #                     55   store temp_5_ele_of_arr_26_28_0:i32 temp_3_ptr_of_temp_28_28:ptr->i32 
              #                    occupy a0 with temp_3_ptr_of_temp_28_28
              #                    occupy a5 with temp_5_ele_of_arr_26_28_0
    sw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     401  untrack temp_3_ptr_of_temp_28_28 
              #                    occupy a0 with temp_3_ptr_of_temp_28_28
              #                    release a0 with temp_3_ptr_of_temp_28_28
              #                     56   temp_28_2 = chi temp_28_1:55 
              #                     58   temp_6_ptr_of_temp_28_28 = GEP temp_28_2:Array:i32:[Some(16_0)] [Some(1_0)] 
              #                    occupy a0 with temp_6_ptr_of_temp_28_28
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,160
              #                    free a0
              #                     60   (nop) 
              #                     62   (nop) 
              #                     63   mu arr_26:62 
              #                     65   temp_9_ptr_of_arr_26_28 = GEP arr_26:Array:i32:[None] [Some(1_0)] 
              #                    occupy a6 with temp_9_ptr_of_arr_26_28
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 1
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy a4 with arr_26
    add     a6,a6,a4
              #                    free a4
              #                    free a6
              #                     67   temp_10_ele_of_arr_26_28_0 = load temp_9_ptr_of_arr_26_28:ptr->i32 
              #                    occupy a6 with temp_9_ptr_of_arr_26_28
              #                    occupy s1 with temp_10_ele_of_arr_26_28_0
    lw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                     397  untrack temp_9_ptr_of_arr_26_28 
              #                    occupy a6 with temp_9_ptr_of_arr_26_28
              #                    release a6 with temp_9_ptr_of_arr_26_28
              #                     68   mu arr_26:67 
              #                     70   temp_11_ret_of_MAX_28_0 =  Call i32 MAX_0(temp_5_ele_of_arr_26_28_0, temp_10_ele_of_arr_26_28_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_10_ele_of_arr_26_28_0
              #                    store to temp_10_ele_of_arr_26_28_0 in mem offset legal
    sw      s1,108(sp)
              #                    release s1 with temp_10_ele_of_arr_26_28_0
              #                    occupy a0 with temp_6_ptr_of_temp_28_28
              #                    store to temp_6_ptr_of_temp_28_28 in mem offset legal
    sd      a0,128(sp)
              #                    release a0 with temp_6_ptr_of_temp_28_28
              #                    occupy a4 with arr_26
              #                    store to arr_26 in mem offset legal
    sd      a4,240(sp)
              #                    release a4 with arr_26
              #                    occupy a5 with temp_5_ele_of_arr_26_28_0
              #                    store to temp_5_ele_of_arr_26_28_0 in mem offset legal
    sw      a5,140(sp)
              #                    release a5 with temp_5_ele_of_arr_26_28_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_5_ele_of_arr_26_28_0_0
              #                    load from temp_5_ele_of_arr_26_28_0 in mem


    lw      a0,140(sp)
              #                    occupy a1 with _anonymous_of_temp_10_ele_of_arr_26_28_0_0
              #                    load from temp_10_ele_of_arr_26_28_0 in mem


    lw      a1,108(sp)
              #                    arg load ended


    call    MAX
              #                     400  untrack temp_10_ele_of_arr_26_28_0 
              #                     396  untrack temp_5_ele_of_arr_26_28_0 
              #                     71   store temp_11_ret_of_MAX_28_0:i32 temp_6_ptr_of_temp_28_28:ptr->i32 
              #                    occupy a1 with temp_6_ptr_of_temp_28_28
              #                    load from temp_6_ptr_of_temp_28_28 in mem
    ld      a1,128(sp)
              #                    occupy a0 with temp_11_ret_of_MAX_28_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     402  untrack temp_11_ret_of_MAX_28_0 
              #                    occupy a0 with temp_11_ret_of_MAX_28_0
              #                    release a0 with temp_11_ret_of_MAX_28_0
              #                     395  untrack temp_6_ptr_of_temp_28_28 
              #                    occupy a1 with temp_6_ptr_of_temp_28_28
              #                    release a1 with temp_6_ptr_of_temp_28_28
              #                     72   temp_28_3 = chi temp_28_2:71 
              #                     73   (nop) 
              #                     381  i_28_1 = i32 2_0 
              #                    occupy a0 with i_28_1
    li      a0, 2
              #                    free a0
              #                          jump label: while.head_34 
    j       .while.head_34
              #                    regtab     a0:Freed { symidx: i_28_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     116  label while.head_34: 
.while.head_34:
              #                     115  temp_27_cmp_33_0 = icmp i32 Slt i_28_1, n_26_0 
              #                    occupy a0 with i_28_1
              #                    occupy a1 with n_26_0
              #                    load from n_26_0 in mem


    lw      a1,236(sp)
              #                    occupy a2 with temp_27_cmp_33_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     119  br i1 temp_27_cmp_33_0, label while.body_34, label while.exit_34 
              #                    occupy a2 with temp_27_cmp_33_0
              #                    free a2
              #                    occupy a2 with temp_27_cmp_33_0
    bnez    a2, .while.body_34
              #                    free a2
    j       .while.exit_34
              #                    regtab     a0:Freed { symidx: i_28_1, tracked: true } |     a1:Freed { symidx: n_26_0, tracked: true } |     a2:Freed { symidx: temp_27_cmp_33_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     117  label while.body_34: 
.while.body_34:
              #                     85   temp_15_ptr_of_temp_28_35 = GEP temp_28_4:Array:i32:[Some(16_0)] [Some(i_28_1)] 
              #                    occupy a3 with temp_15_ptr_of_temp_28_35
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_28_1
    mv      a4, a0
              #                    free a0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,160
              #                    free a3
              #                     87   temp_16_arithop_35_0 = Sub i32 i_28_1, 2_0 
              #                    occupy a0 with i_28_1
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy a6 with temp_16_arithop_35_0
              #                    regtab:    a0:Occupied { symidx: i_28_1, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: n_26_0, tracked: true } |     a2:Freed { symidx: temp_27_cmp_33_0, tracked: true } |     a3:Freed { symidx: temp_15_ptr_of_temp_28_35, tracked: true } |     a4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a5:Occupied { symidx: 2_0, tracked: false, occupy_count: 1 } |     a6:Occupied { symidx: temp_16_arithop_35_0, tracked: true, occupy_count: 1 } |  released_gpr_count:12,released_fpr_count:24


    subw    a6,a0,a5
              #                    free a0
              #                    free a5
              #                    free a6
              #                     89   temp_17_ptr_of_temp_28_35 = GEP temp_28_4:Array:i32:[Some(16_0)] [Some(temp_16_arithop_35_0)] 
              #                    occupy a7 with temp_17_ptr_of_temp_28_35
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with temp_16_arithop_35_0
    mv      s1, a6
              #                    free a6
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,160
              #                    free a7
              #                     91   temp_18_ele_of_temp_28_35_0 = load temp_17_ptr_of_temp_28_35:ptr->i32 
              #                    occupy a7 with temp_17_ptr_of_temp_28_35
              #                    occupy s2 with temp_18_ele_of_temp_28_35_0
    lw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                     92   mu temp_28_4:91 
              #                     94   temp_19_ptr_of_arr_26_35 = GEP arr_26:Array:i32:[None] [Some(i_28_1)] 
              #                    occupy s3 with temp_19_ptr_of_arr_26_35
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_28_1
    mv      s4, a0
              #                    free a0
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy s5 with arr_26
              #                    load from arr_26 in mem
    ld      s5,240(sp)
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                     96   temp_20_ele_of_arr_26_35_0 = load temp_19_ptr_of_arr_26_35:ptr->i32 
              #                    occupy s3 with temp_19_ptr_of_arr_26_35
              #                    occupy s6 with temp_20_ele_of_arr_26_35_0
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                     97   mu arr_26:96 
              #                     99   temp_21_arithop_35_0 = Add i32 temp_18_ele_of_temp_28_35_0, temp_20_ele_of_arr_26_35_0 
              #                    occupy s2 with temp_18_ele_of_temp_28_35_0
              #                    occupy s6 with temp_20_ele_of_arr_26_35_0
              #                    occupy s7 with temp_21_arithop_35_0
    ADDW    s7,s2,s6
              #                    free s2
              #                    occupy s2 with temp_18_ele_of_temp_28_35_0
              #                    store to temp_18_ele_of_temp_28_35_0 in mem offset legal
    sw      s2,52(sp)
              #                    release s2 with temp_18_ele_of_temp_28_35_0
              #                    free s6
              #                    free s7
              #                     101  temp_22_arithop_35_0 = Sub i32 i_28_1, 1_0 
              #                    occupy a0 with i_28_1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s8 with temp_22_arithop_35_0
              #                    regtab:    a0:Occupied { symidx: i_28_1, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: n_26_0, tracked: true } |     a2:Freed { symidx: temp_27_cmp_33_0, tracked: true } |     a3:Freed { symidx: temp_15_ptr_of_temp_28_35, tracked: true } |     a4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a5:Freed { symidx: 2_0, tracked: false } |     a6:Freed { symidx: temp_16_arithop_35_0, tracked: true } |     a7:Freed { symidx: temp_17_ptr_of_temp_28_35, tracked: true } |     s1:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s3:Freed { symidx: temp_19_ptr_of_arr_26_35, tracked: true } |     s4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s5:Freed { symidx: arr_26, tracked: true } |     s6:Freed { symidx: temp_20_ele_of_arr_26_35_0, tracked: true } |     s7:Freed { symidx: temp_21_arithop_35_0, tracked: true } |     s8:Occupied { symidx: temp_22_arithop_35_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    s8,a0,s2
              #                    free a0
              #                    occupy a0 with i_28_1
              #                    store to i_28_1 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with i_28_1
              #                    free s2
              #                    free s8
              #                     103  temp_23_ptr_of_temp_28_35 = GEP temp_28_4:Array:i32:[Some(16_0)] [Some(temp_22_arithop_35_0)] 
              #                    occupy a0 with temp_23_ptr_of_temp_28_35
    li      a0, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with temp_22_arithop_35_0
    mv      s2, s8
              #                    free s8
              #                    occupy s8 with temp_22_arithop_35_0
              #                    store to temp_22_arithop_35_0 in mem offset legal
    sw      s8,28(sp)
              #                    release s8 with temp_22_arithop_35_0
    add     a0,a0,s2
              #                    free s2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,160
              #                    free a0
              #                     105  temp_24_ele_of_temp_28_35_0 = load temp_23_ptr_of_temp_28_35:ptr->i32 
              #                    occupy a0 with temp_23_ptr_of_temp_28_35
              #                    occupy s2 with temp_24_ele_of_temp_28_35_0
    lw      s2,0(a0)
              #                    free s2
              #                    occupy s2 with temp_24_ele_of_temp_28_35_0
              #                    store to temp_24_ele_of_temp_28_35_0 in mem offset legal
    sw      s2,12(sp)
              #                    release s2 with temp_24_ele_of_temp_28_35_0
              #                    free a0
              #                     106  mu temp_28_4:105 
              #                     108  temp_25_ret_of_MAX_35_0 =  Call i32 MAX_0(temp_21_arithop_35_0, temp_24_ele_of_temp_28_35_0) 
              #                    saved register dumping to mem
              #                    occupy s3 with temp_19_ptr_of_arr_26_35
              #                    store to temp_19_ptr_of_arr_26_35 in mem offset legal
    sd      s3,40(sp)
              #                    release s3 with temp_19_ptr_of_arr_26_35
              #                    occupy s5 with arr_26
              #                    store to arr_26 in mem offset legal
    sd      s5,240(sp)
              #                    release s5 with arr_26
              #                    occupy s6 with temp_20_ele_of_arr_26_35_0
              #                    store to temp_20_ele_of_arr_26_35_0 in mem offset legal
    sw      s6,36(sp)
              #                    release s6 with temp_20_ele_of_arr_26_35_0
              #                    occupy s7 with temp_21_arithop_35_0
              #                    store to temp_21_arithop_35_0 in mem offset legal
    sw      s7,32(sp)
              #                    release s7 with temp_21_arithop_35_0
              #                    occupy a0 with temp_23_ptr_of_temp_28_35
              #                    store to temp_23_ptr_of_temp_28_35 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_23_ptr_of_temp_28_35
              #                    occupy a1 with n_26_0
              #                    store to n_26_0 in mem offset legal
    sw      a1,236(sp)
              #                    release a1 with n_26_0
              #                    occupy a2 with temp_27_cmp_33_0
              #                    store to temp_27_cmp_33_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_27_cmp_33_0
              #                    occupy a3 with temp_15_ptr_of_temp_28_35
              #                    store to temp_15_ptr_of_temp_28_35 in mem offset legal
    sd      a3,72(sp)
              #                    release a3 with temp_15_ptr_of_temp_28_35
              #                    occupy a6 with temp_16_arithop_35_0
              #                    store to temp_16_arithop_35_0 in mem offset legal
    sw      a6,68(sp)
              #                    release a6 with temp_16_arithop_35_0
              #                    occupy a7 with temp_17_ptr_of_temp_28_35
              #                    store to temp_17_ptr_of_temp_28_35 in mem offset legal
    sd      a7,56(sp)
              #                    release a7 with temp_17_ptr_of_temp_28_35
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_21_arithop_35_0_0
              #                    load from temp_21_arithop_35_0 in mem


    lw      a0,32(sp)
              #                    occupy a1 with _anonymous_of_temp_24_ele_of_temp_28_35_0_0
              #                    load from temp_24_ele_of_temp_28_35_0 in mem


    lw      a1,12(sp)
              #                    arg load ended


    call    MAX
              #                     109  store temp_25_ret_of_MAX_35_0:i32 temp_15_ptr_of_temp_28_35:ptr->i32 
              #                    occupy a1 with temp_15_ptr_of_temp_28_35
              #                    load from temp_15_ptr_of_temp_28_35 in mem
    ld      a1,72(sp)
              #                    occupy a0 with temp_25_ret_of_MAX_35_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     110  temp_28_5 = chi temp_28_4:109 
              #                     112  temp_26_arithop_35_0 = Add i32 i_28_1, 1_0 
              #                    occupy a2 with i_28_1
              #                    load from i_28_1 in mem


    lw      a2,100(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_26_arithop_35_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     113  (nop) 
              #                     382  i_28_1 = i32 temp_26_arithop_35_0 
              #                    occupy a4 with temp_26_arithop_35_0
              #                    occupy a2 with i_28_1
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_34 
              #                    occupy a2 with i_28_1
              #                    store to i_28_1 in mem offset legal
    sw      a2,100(sp)
              #                    release a2 with i_28_1
              #                    occupy a1 with temp_15_ptr_of_temp_28_35
              #                    store to temp_15_ptr_of_temp_28_35 in mem offset legal
    sd      a1,72(sp)
              #                    release a1 with temp_15_ptr_of_temp_28_35
              #                    occupy a0 with temp_25_ret_of_MAX_35_0
              #                    store to temp_25_ret_of_MAX_35_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_25_ret_of_MAX_35_0
              #                    occupy a0 with i_28_1
              #                    load from i_28_1 in mem


    lw      a0,100(sp)
              #                    occupy a4 with temp_26_arithop_35_0
              #                    store to temp_26_arithop_35_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_26_arithop_35_0
    j       .while.head_34
              #                    regtab     a0:Freed { symidx: i_28_1, tracked: true } |     a1:Freed { symidx: n_26_0, tracked: true } |     a2:Freed { symidx: temp_27_cmp_33_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     118  label while.exit_34: 
.while.exit_34:
              #                     404  untrack i_28_1 
              #                    occupy a0 with i_28_1
              #                    release a0 with i_28_1
              #                     403  untrack arr_26 
              #                     77   temp_12_arithop_28_0 = Sub i32 n_26_0, 1_0 
              #                    occupy a1 with n_26_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with temp_12_arithop_28_0
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: n_26_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_27_cmp_33_0, tracked: true } |     a3:Occupied { symidx: temp_12_arithop_28_0, tracked: true, occupy_count: 1 } |  released_gpr_count:15,released_fpr_count:24


    subw    a3,a1,a0
              #                    free a1
              #                    free a0
              #                    free a3
              #                     405  untrack n_26_0 
              #                    occupy a1 with n_26_0
              #                    release a1 with n_26_0
              #                     79   temp_13_ptr_of_temp_28_28 = GEP temp_28_4:Array:i32:[Some(16_0)] [Some(temp_12_arithop_28_0)] 
              #                    occupy a1 with temp_13_ptr_of_temp_28_28
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_12_arithop_28_0
    mv      a4, a3
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,160
              #                    free a1
              #                     407  untrack temp_12_arithop_28_0 
              #                    occupy a3 with temp_12_arithop_28_0
              #                    release a3 with temp_12_arithop_28_0
              #                     81   temp_14_ele_of_temp_28_28_0 = load temp_13_ptr_of_temp_28_28:ptr->i32 
              #                    occupy a1 with temp_13_ptr_of_temp_28_28
              #                    occupy a3 with temp_14_ele_of_temp_28_28_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     406  untrack temp_13_ptr_of_temp_28_28 
              #                    occupy a1 with temp_13_ptr_of_temp_28_28
              #                    release a1 with temp_13_ptr_of_temp_28_28
              #                     82   mu temp_28_4:81 
              #                     83   ret temp_14_ele_of_temp_28_28_0 
              #                    load from ra_max_sum_nonadjacent_0 in mem
    ld      ra,264(sp)
              #                    load from s0_max_sum_nonadjacent_0 in mem
    ld      s0,256(sp)
              #                    occupy a3 with temp_14_ele_of_temp_28_28_0
              #                    store to temp_14_ele_of_temp_28_28_0 in mem offset legal
    sw      a3,84(sp)
              #                    release a3 with temp_14_ele_of_temp_28_28_0
              #                    occupy a0 with temp_14_ele_of_temp_28_28_0
              #                    load from temp_14_ele_of_temp_28_28_0 in mem


    lw      a0,84(sp)
    addi    sp,sp,272
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     21   Define longest_common_subseq_0 "arr1_39,len1_39_0,arr2_39,len2_39_0," -> longest_common_subseq_ret_0 
    .globl longest_common_subseq
    .type longest_common_subseq,@function
longest_common_subseq:
              #                    mem layout:|ra_longest_common_subseq:8 at 1240|s0_longest_common_subseq:8 at 1232|arr1:8 at 1224|arr1:8 at 1216|len1 _s39 _i0:4 at 1212|none:4 at 1208|arr2:8 at 1200|arr2:8 at 1192|len2 _s39 _i0:4 at 1188|none:4 at 1184|temp_28_array_init_ptr:8 at 1176|p:1024 at 152|i _s41 _i0:4 at 148|i _s41 _i2:4 at 144|j _s41 _i0:4 at 140|j _s41 _i1:4 at 136|j _s41 _i3:4 at 132|none:4 at 128|temp_29_ptr_of_p_41:8 at 120|temp_30_ele_of_p_41 _s41 _i0:4 at 116|temp_31_arithop _s47 _i0:4 at 112|temp_32_ptr_of_p_41:8 at 104|temp_34_ptr_of_p_41:8 at 96|temp_35_ele_of_p_41 _s56 _i0:4 at 92|none:4 at 88|temp_37_ptr_of_p_41:8 at 80|temp_38_ele_of_p_41 _s56 _i0:4 at 76|temp_39_ret_of_MAX _s56 _i0:4 at 72|temp_40_arithop _s51 _i0:4 at 68|none:4 at 64|temp_41_ptr_of_p_41:8 at 56|temp_44_ptr_of_p_41:8 at 48|temp_45_ele_of_p_41 _s54 _i0:4 at 44|temp_46_arithop _s54 _i0:4 at 40|temp_47_cmp _s45 _i0:1 at 39|temp_48_cmp _s49 _i0:1 at 38|none:2 at 36|temp_49_arithop _s52 _i0:4 at 32|temp_50_ptr_of_arr2_39:8 at 24|temp_51_ele_of_arr2_39 _s52 _i0:4 at 20|temp_52_arithop _s52 _i0:4 at 16|temp_53_ptr_of_arr1_39:8 at 8|temp_54_ele_of_arr1_39 _s52 _i0:4 at 4|temp_55_cmp _s52 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-1248
              #                    store to ra_longest_common_subseq_0 in mem offset legal
    sd      ra,1240(sp)
              #                    store to s0_longest_common_subseq_0 in mem offset legal
    sd      s0,1232(sp)
    addi    s0,sp,1248
              #                     123  alloc ptr->i32 [temp_28_array_init_ptr_41] 
              #                     126  alloc Array:i32:[Some(16_0), Some(16_0)] [p_41] 
              #                     127  alloc i32 [i_41] 
              #                     129  alloc i32 [j_41] 
              #                     133  alloc ptr->i32 [temp_29_ptr_of_p_41_41] 
              #                     135  alloc i32 [temp_30_ele_of_p_41_41] 
              #                     140  alloc i32 [temp_31_arithop_47] 
              #                     143  alloc ptr->i32 [temp_32_ptr_of_p_41_56] 
              #                     145  alloc i32 [temp_33_arithop_56] 
              #                     147  alloc ptr->i32 [temp_34_ptr_of_p_41_56] 
              #                     149  alloc i32 [temp_35_ele_of_p_41_56] 
              #                     152  alloc i32 [temp_36_arithop_56] 
              #                     154  alloc ptr->i32 [temp_37_ptr_of_p_41_56] 
              #                     156  alloc i32 [temp_38_ele_of_p_41_56] 
              #                     159  alloc i32 [temp_39_ret_of_MAX_56] 
              #                     163  alloc i32 [temp_40_arithop_51] 
              #                     166  alloc ptr->i32 [temp_41_ptr_of_p_41_54] 
              #                     168  alloc i32 [temp_42_arithop_54] 
              #                     170  alloc i32 [temp_43_arithop_54] 
              #                     172  alloc ptr->i32 [temp_44_ptr_of_p_41_54] 
              #                     174  alloc i32 [temp_45_ele_of_p_41_54] 
              #                     177  alloc i32 [temp_46_arithop_54] 
              #                     181  alloc i1 [temp_47_cmp_45] 
              #                     189  alloc i1 [temp_48_cmp_49] 
              #                     195  alloc i32 [temp_49_arithop_52] 
              #                     197  alloc ptr->i32 [temp_50_ptr_of_arr2_39_52] 
              #                     199  alloc i32 [temp_51_ele_of_arr2_39_52] 
              #                     202  alloc i32 [temp_52_arithop_52] 
              #                     204  alloc ptr->i32 [temp_53_ptr_of_arr1_39_52] 
              #                     206  alloc i32 [temp_54_ele_of_arr1_39_52] 
              #                     209  alloc i1 [temp_55_cmp_52] 
              #                    regtab     a0:Freed { symidx: arr1_39, tracked: true } |     a1:Freed { symidx: len1_39_0, tracked: true } |     a2:Freed { symidx: arr2_39, tracked: true } |     a3:Freed { symidx: len2_39_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     19    
              #                     20    
              #                     122   
              #                     124  temp_28_array_init_ptr_41 = GEP p_41_0:Array:i32:[Some(16_0), Some(16_0)] [] 
              #                    occupy a4 with temp_28_array_init_ptr_41
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,152
              #                    free a4
              #                     125   Call void memset_0(temp_28_array_init_ptr_41, 0_0, 1024_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with arr1_39
              #                    store to arr1_39 in mem offset legal
    sd      a0,1216(sp)
              #                    release a0 with arr1_39
              #                    occupy a1 with len1_39_0
              #                    store to len1_39_0 in mem offset legal
    sw      a1,1212(sp)
              #                    release a1 with len1_39_0
              #                    occupy a2 with arr2_39
              #                    store to arr2_39 in mem offset legal
    sd      a2,1192(sp)
              #                    release a2 with arr2_39
              #                    occupy a3 with len2_39_0
              #                    store to len2_39_0 in mem offset legal
    sw      a3,1188(sp)
              #                    release a3 with len2_39_0
              #                    occupy a4 with temp_28_array_init_ptr_41
              #                    store to temp_28_array_init_ptr_41 in mem offset legal
    sd      a4,1176(sp)
              #                    release a4 with temp_28_array_init_ptr_41
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_28_array_init_ptr_41_0
              #                    load from temp_28_array_init_ptr_41 in mem
    ld      a0,1176(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_1024_0_0
    li      a2, 1024
              #                    arg load ended


    call    memset
              #                     408  untrack temp_28_array_init_ptr_41 
              #                     361  mu p_41_0:125 
              #                     362  p_41_1 = chi p_41_0:125 
              #                     128   
              #                     130   
              #                     131  (nop) 
              #                     383  i_41_2 = i32 1_0 
              #                    occupy a0 with i_41_2
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_46 
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: i_41_2, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     183  label while.head_46: 
.while.head_46:
              #                     182  temp_47_cmp_45_0 = icmp i32 Sle i_41_2, len1_39_0 
              #                    occupy a0 with i_41_2
              #                    occupy a1 with len1_39_0
              #                    load from len1_39_0 in mem


    lw      a1,1212(sp)
              #                    occupy a2 with temp_47_cmp_45_0
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     186  br i1 temp_47_cmp_45_0, label while.body_46, label while.exit_46 
              #                    occupy a2 with temp_47_cmp_45_0
              #                    free a2
              #                    occupy a2 with temp_47_cmp_45_0
    bnez    a2, .while.body_46
              #                    free a2
    j       .while.exit_46
              #                    regtab     a0:Freed { symidx: i_41_2, tracked: true } |     a1:Freed { symidx: len1_39_0, tracked: true } |     a2:Freed { symidx: temp_47_cmp_45_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     184  label while.body_46: 
.while.body_46:
              #                     139  (nop) 
              #                     203  temp_52_arithop_52_0 = Sub i32 i_41_2, 1_0 
              #                    occupy a0 with i_41_2
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_52_arithop_52_0
              #                    regtab:    a0:Occupied { symidx: i_41_2, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: len1_39_0, tracked: true } |     a2:Freed { symidx: temp_47_cmp_45_0, tracked: true } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Occupied { symidx: temp_52_arithop_52_0, tracked: true, occupy_count: 1 } |  released_gpr_count:14,released_fpr_count:24


    subw    a4,a0,a3
              #                    free a0
              #                    free a3
              #                    free a4
              #                     171  (nop) 
              #                     146  (nop) 
              #                     384  j_41_3 = i32 1_0 
              #                    occupy a5 with j_41_3
    li      a5, 1
              #                    free a5
              #                          jump label: while.head_50 
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: i_41_2, tracked: true } |     a1:Freed { symidx: len1_39_0, tracked: true } |     a2:Freed { symidx: temp_47_cmp_45_0, tracked: true } |     a4:Freed { symidx: temp_52_arithop_52_0, tracked: true } |     a5:Freed { symidx: j_41_3, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     191  label while.head_50: 
.while.head_50:
              #                     190  temp_48_cmp_49_0 = icmp i32 Sle j_41_3, len2_39_0 
              #                    occupy a5 with j_41_3
              #                    occupy a3 with len2_39_0
              #                    load from len2_39_0 in mem


    lw      a3,1188(sp)
              #                    occupy a6 with temp_48_cmp_49_0
    slt     a6,a3,a5
    xori    a6,a6,1
              #                    free a5
              #                    free a3
              #                    free a6
              #                     194  br i1 temp_48_cmp_49_0, label while.body_50, label while.exit_50 
              #                    occupy a6 with temp_48_cmp_49_0
              #                    free a6
              #                    occupy a6 with temp_48_cmp_49_0
    bnez    a6, .while.body_50
              #                    free a6
    j       .while.exit_50
              #                    regtab     a0:Freed { symidx: i_41_2, tracked: true } |     a1:Freed { symidx: len1_39_0, tracked: true } |     a2:Freed { symidx: temp_47_cmp_45_0, tracked: true } |     a3:Freed { symidx: len2_39_0, tracked: true } |     a4:Freed { symidx: temp_52_arithop_52_0, tracked: true } |     a5:Freed { symidx: j_41_3, tracked: true } |     a6:Freed { symidx: temp_48_cmp_49_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     192  label while.body_50: 
.while.body_50:
              #                     196  temp_49_arithop_52_0 = Sub i32 j_41_3, 1_0 
              #                    occupy a5 with j_41_3
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_49_arithop_52_0
              #                    regtab:    a0:Freed { symidx: i_41_2, tracked: true } |     a1:Freed { symidx: len1_39_0, tracked: true } |     a2:Freed { symidx: temp_47_cmp_45_0, tracked: true } |     a3:Freed { symidx: len2_39_0, tracked: true } |     a4:Freed { symidx: temp_52_arithop_52_0, tracked: true } |     a5:Occupied { symidx: j_41_3, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_48_cmp_49_0, tracked: true } |     a7:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Occupied { symidx: temp_49_arithop_52_0, tracked: true, occupy_count: 1 } |  released_gpr_count:9,released_fpr_count:24


    subw    s1,a5,a7
              #                    free a5
              #                    free a7
              #                    free s1
              #                     198  temp_50_ptr_of_arr2_39_52 = GEP arr2_39:Array:i32:[None] [Some(temp_49_arithop_52_0)] 
              #                    occupy s2 with temp_50_ptr_of_arr2_39_52
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with temp_49_arithop_52_0
    mv      s3, s1
              #                    free s1
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy s4 with arr2_39
              #                    load from arr2_39 in mem
    ld      s4,1192(sp)
    add     s2,s2,s4
              #                    free s4
              #                    free s2
              #                     200  temp_51_ele_of_arr2_39_52_0 = load temp_50_ptr_of_arr2_39_52:ptr->i32 
              #                    occupy s2 with temp_50_ptr_of_arr2_39_52
              #                    occupy s5 with temp_51_ele_of_arr2_39_52_0
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                     201  mu arr2_39:200 
              #                     205  temp_53_ptr_of_arr1_39_52 = GEP arr1_39:Array:i32:[None] [Some(temp_52_arithop_52_0)] 
              #                    occupy s6 with temp_53_ptr_of_arr1_39_52
    li      s6, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_52_arithop_52_0
    mv      s7, a4
              #                    free a4
              #                    occupy a4 with temp_52_arithop_52_0
              #                    store to temp_52_arithop_52_0 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_52_arithop_52_0
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy a4 with arr1_39
              #                    load from arr1_39 in mem
    ld      a4,1216(sp)
    add     s6,s6,a4
              #                    free a4
              #                    occupy a4 with arr1_39
              #                    store to arr1_39 in mem offset legal
    sd      a4,1216(sp)
              #                    release a4 with arr1_39
              #                    free s6
              #                     207  temp_54_ele_of_arr1_39_52_0 = load temp_53_ptr_of_arr1_39_52:ptr->i32 
              #                    occupy s6 with temp_53_ptr_of_arr1_39_52
              #                    occupy a4 with temp_54_ele_of_arr1_39_52_0
    lw      a4,0(s6)
              #                    free a4
              #                    occupy a4 with temp_54_ele_of_arr1_39_52_0
              #                    store to temp_54_ele_of_arr1_39_52_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_54_ele_of_arr1_39_52_0
              #                    free s6
              #                     208  mu arr1_39:207 
              #                     210  temp_55_cmp_52_0 = icmp i32 Eq temp_54_ele_of_arr1_39_52_0, temp_51_ele_of_arr2_39_52_0 
              #                    occupy a4 with temp_54_ele_of_arr1_39_52_0
              #                    load from temp_54_ele_of_arr1_39_52_0 in mem


    lw      a4,4(sp)
              #                    occupy s5 with temp_51_ele_of_arr2_39_52_0
              #                    occupy s7 with temp_55_cmp_52_0
    xor     s7,a4,s5
    seqz    s7, s7
              #                    free a4
              #                    occupy a4 with temp_54_ele_of_arr1_39_52_0
              #                    store to temp_54_ele_of_arr1_39_52_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_54_ele_of_arr1_39_52_0
              #                    free s5
              #                    occupy s5 with temp_51_ele_of_arr2_39_52_0
              #                    store to temp_51_ele_of_arr2_39_52_0 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_51_ele_of_arr2_39_52_0
              #                    free s7
              #                     213  br i1 temp_55_cmp_52_0, label branch_true_53, label branch_false_53 
              #                    occupy s7 with temp_55_cmp_52_0
              #                    free s7
              #                    occupy s7 with temp_55_cmp_52_0
    bnez    s7, .branch_true_53
              #                    free s7
    j       .branch_false_53
              #                    regtab     a0:Freed { symidx: i_41_2, tracked: true } |     a1:Freed { symidx: len1_39_0, tracked: true } |     a2:Freed { symidx: temp_47_cmp_45_0, tracked: true } |     a3:Freed { symidx: len2_39_0, tracked: true } |     a5:Freed { symidx: j_41_3, tracked: true } |     a6:Freed { symidx: temp_48_cmp_49_0, tracked: true } |     s1:Freed { symidx: temp_49_arithop_52_0, tracked: true } |     s2:Freed { symidx: temp_50_ptr_of_arr2_39_52, tracked: true } |     s4:Freed { symidx: arr2_39, tracked: true } |     s6:Freed { symidx: temp_53_ptr_of_arr1_39_52, tracked: true } |     s7:Freed { symidx: temp_55_cmp_52_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     211  label branch_true_53: 
.branch_true_53:
              #                     423  untrack temp_51_ele_of_arr2_39_52_0 
              #                     422  untrack temp_55_cmp_52_0 
              #                    occupy s7 with temp_55_cmp_52_0
              #                    release s7 with temp_55_cmp_52_0
              #                     421  untrack temp_37_ptr_of_p_41_56 
              #                     420  untrack temp_38_ele_of_p_41_56_0 
              #                     419  untrack temp_53_ptr_of_arr1_39_52 
              #                    occupy s6 with temp_53_ptr_of_arr1_39_52
              #                    release s6 with temp_53_ptr_of_arr1_39_52
              #                     418  untrack temp_39_ret_of_MAX_56_0 
              #                     417  untrack temp_48_cmp_49_0 
              #                    occupy a6 with temp_48_cmp_49_0
              #                    release a6 with temp_48_cmp_49_0
              #                     416  untrack temp_35_ele_of_p_41_56_0 
              #                     415  untrack temp_32_ptr_of_p_41_56 
              #                     414  untrack temp_50_ptr_of_arr2_39_52 
              #                    occupy s2 with temp_50_ptr_of_arr2_39_52
              #                    release s2 with temp_50_ptr_of_arr2_39_52
              #                     413  untrack temp_54_ele_of_arr1_39_52_0 
              #                     412  untrack temp_34_ptr_of_p_41_56 
              #                     167  temp_41_ptr_of_p_41_54 = GEP p_41_3:Array:i32:[Some(16_0), Some(16_0)] [Some(i_41_2), Some(j_41_3)] 
              #                    occupy a4 with temp_41_ptr_of_p_41_54
    li      a4, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_41_2
    slli a6,a0,4
              #                    free a0
    add     a4,a4,a6
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with j_41_3
    mv      a7, a5
              #                    free a5
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,152
              #                    free a4
              #                     169  (nop) 
              #                     173  temp_44_ptr_of_p_41_54 = GEP p_41_3:Array:i32:[Some(16_0), Some(16_0)] [Some(temp_52_arithop_52_0), Some(temp_49_arithop_52_0)] 
              #                    occupy s2 with temp_44_ptr_of_p_41_54
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with temp_52_arithop_52_0
              #                    load from temp_52_arithop_52_0 in mem


    lw      s5,16(sp)
    slli s3,s5,4
              #                    free s5
              #                    occupy s5 with temp_52_arithop_52_0
              #                    store to temp_52_arithop_52_0 in mem offset legal
    sw      s5,16(sp)
              #                    release s5 with temp_52_arithop_52_0
    add     s2,s2,s3
              #                    free s3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with temp_49_arithop_52_0
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with temp_49_arithop_52_0
              #                    store to temp_49_arithop_52_0 in mem offset legal
    sw      s1,32(sp)
              #                    release s1 with temp_49_arithop_52_0
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,152
              #                    free s2
              #                     424  untrack temp_49_arithop_52_0 
              #                     175  temp_45_ele_of_p_41_54_0 = load temp_44_ptr_of_p_41_54:ptr->i32 
              #                    occupy s2 with temp_44_ptr_of_p_41_54
              #                    occupy s1 with temp_45_ele_of_p_41_54_0
    lw      s1,0(s2)
              #                    free s1
              #                    occupy s1 with temp_45_ele_of_p_41_54_0
              #                    store to temp_45_ele_of_p_41_54_0 in mem offset legal
    sw      s1,44(sp)
              #                    release s1 with temp_45_ele_of_p_41_54_0
              #                    free s2
              #                     427  untrack temp_44_ptr_of_p_41_54 
              #                    occupy s2 with temp_44_ptr_of_p_41_54
              #                    release s2 with temp_44_ptr_of_p_41_54
              #                     176  mu p_41_3:175 
              #                     178  temp_46_arithop_54_0 = Add i32 temp_45_ele_of_p_41_54_0, 1_0 
              #                    occupy s1 with temp_45_ele_of_p_41_54_0
              #                    load from temp_45_ele_of_p_41_54_0 in mem


    lw      s1,44(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s5 with temp_46_arithop_54_0
    ADDW    s5,s1,s2
              #                    free s1
              #                    occupy s1 with temp_45_ele_of_p_41_54_0
              #                    store to temp_45_ele_of_p_41_54_0 in mem offset legal
    sw      s1,44(sp)
              #                    release s1 with temp_45_ele_of_p_41_54_0
              #                    free s2
              #                    free s5
              #                     425  untrack temp_45_ele_of_p_41_54_0 
              #                     179  store temp_46_arithop_54_0:i32 temp_41_ptr_of_p_41_54:ptr->i32 
              #                    occupy a4 with temp_41_ptr_of_p_41_54
              #                    occupy s5 with temp_46_arithop_54_0
    sw      s5,0(a4)
              #                    free s5
              #                    free a4
              #                     428  untrack temp_46_arithop_54_0 
              #                    occupy s5 with temp_46_arithop_54_0
              #                    release s5 with temp_46_arithop_54_0
              #                     426  untrack temp_41_ptr_of_p_41_54 
              #                    occupy a4 with temp_41_ptr_of_p_41_54
              #                    release a4 with temp_41_ptr_of_p_41_54
              #                     180  p_41_4 = chi p_41_3:179 
              #                          jump label: gather_23 
    j       .gather_23
              #                    regtab     a0:Freed { symidx: i_41_2, tracked: true } |     a1:Freed { symidx: len1_39_0, tracked: true } |     a2:Freed { symidx: temp_47_cmp_45_0, tracked: true } |     a3:Freed { symidx: len2_39_0, tracked: true } |     a5:Freed { symidx: j_41_3, tracked: true } |     s4:Freed { symidx: arr2_39, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     214  label gather_23: 
.gather_23:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: i_41_2, tracked: true } |     a1:Freed { symidx: len1_39_0, tracked: true } |     a2:Freed { symidx: temp_47_cmp_45_0, tracked: true } |     a3:Freed { symidx: len2_39_0, tracked: true } |     a5:Freed { symidx: j_41_3, tracked: true } |     s4:Freed { symidx: arr2_39, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     164  temp_40_arithop_51_0 = Add i32 j_41_3, 1_0 
              #                    occupy a5 with j_41_3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with temp_40_arithop_51_0
    ADDW    a6,a5,a4
              #                    free a5
              #                    free a4
              #                    free a6
              #                     165  (nop) 
              #                     385  j_41_3 = i32 temp_40_arithop_51_0 
              #                    occupy a6 with temp_40_arithop_51_0
              #                    occupy a5 with j_41_3
    mv      a5, a6
              #                    free a6
              #                    free a5
              #                          jump label: while.head_50 
              #                    occupy a6 with temp_40_arithop_51_0
              #                    store to temp_40_arithop_51_0 in mem offset legal
    sw      a6,68(sp)
              #                    release a6 with temp_40_arithop_51_0
              #                    occupy s4 with arr2_39
              #                    store to arr2_39 in mem offset legal
    sd      s4,1192(sp)
              #                    release s4 with arr2_39
              #                    occupy a4 with temp_52_arithop_52_0
              #                    load from temp_52_arithop_52_0 in mem


    lw      a4,16(sp)
              #                    occupy a3 with len2_39_0
              #                    store to len2_39_0 in mem offset legal
    sw      a3,1188(sp)
              #                    release a3 with len2_39_0
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: i_41_2, tracked: true } |     a1:Freed { symidx: len1_39_0, tracked: true } |     a2:Freed { symidx: temp_47_cmp_45_0, tracked: true } |     a3:Freed { symidx: len2_39_0, tracked: true } |     a5:Freed { symidx: j_41_3, tracked: true } |     a6:Freed { symidx: temp_48_cmp_49_0, tracked: true } |     s1:Freed { symidx: temp_49_arithop_52_0, tracked: true } |     s2:Freed { symidx: temp_50_ptr_of_arr2_39_52, tracked: true } |     s4:Freed { symidx: arr2_39, tracked: true } |     s6:Freed { symidx: temp_53_ptr_of_arr1_39_52, tracked: true } |     s7:Freed { symidx: temp_55_cmp_52_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     212  label branch_false_53: 
.branch_false_53:
              #                     144  temp_32_ptr_of_p_41_56 = GEP p_41_3:Array:i32:[Some(16_0), Some(16_0)] [Some(i_41_2), Some(j_41_3)] 
              #                    occupy a4 with temp_32_ptr_of_p_41_56
    li      a4, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_41_2
    slli a7,a0,4
              #                    free a0
              #                    occupy a0 with i_41_2
              #                    store to i_41_2 in mem offset legal
    sw      a0,144(sp)
              #                    release a0 with i_41_2
    add     a4,a4,a7
              #                    free a7
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with j_41_3
    mv      a0, a5
              #                    free a5
              #                    occupy a5 with j_41_3
              #                    store to j_41_3 in mem offset legal
    sw      a5,132(sp)
              #                    release a5 with j_41_3
    add     a4,a4,a0
              #                    free a0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,152
              #                    free a4
              #                     148  temp_34_ptr_of_p_41_56 = GEP p_41_3:Array:i32:[Some(16_0), Some(16_0)] [Some(temp_52_arithop_52_0), Some(j_41_3)] 
              #                    occupy a5 with temp_34_ptr_of_p_41_56
    li      a5, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with temp_52_arithop_52_0
              #                    load from temp_52_arithop_52_0 in mem


    lw      s3,16(sp)
    slli a7,s3,4
              #                    free s3
              #                    occupy s3 with temp_52_arithop_52_0
              #                    store to temp_52_arithop_52_0 in mem offset legal
    sw      s3,16(sp)
              #                    release s3 with temp_52_arithop_52_0
    add     a5,a5,a7
              #                    free a7
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with j_41_3
              #                    load from j_41_3 in mem


    lw      s3,132(sp)
    mv      a7, s3
              #                    free s3
              #                    occupy s3 with j_41_3
              #                    store to j_41_3 in mem offset legal
    sw      s3,132(sp)
              #                    release s3 with j_41_3
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,152
              #                    free a5
              #                    occupy a5 with temp_34_ptr_of_p_41_56
              #                    store to temp_34_ptr_of_p_41_56 in mem offset legal
    sd      a5,96(sp)
              #                    release a5 with temp_34_ptr_of_p_41_56
              #                     150  temp_35_ele_of_p_41_56_0 = load temp_34_ptr_of_p_41_56:ptr->i32 
              #                    occupy a5 with temp_34_ptr_of_p_41_56
              #                    load from temp_34_ptr_of_p_41_56 in mem
    ld      a5,96(sp)
              #                    occupy a7 with temp_35_ele_of_p_41_56_0
    lw      a7,0(a5)
              #                    free a7
              #                    occupy a7 with temp_35_ele_of_p_41_56_0
              #                    store to temp_35_ele_of_p_41_56_0 in mem offset legal
    sw      a7,92(sp)
              #                    release a7 with temp_35_ele_of_p_41_56_0
              #                    free a5
              #                    occupy a5 with temp_34_ptr_of_p_41_56
              #                    store to temp_34_ptr_of_p_41_56 in mem offset legal
    sd      a5,96(sp)
              #                    release a5 with temp_34_ptr_of_p_41_56
              #                     151  mu p_41_3:150 
              #                     153  (nop) 
              #                     155  temp_37_ptr_of_p_41_56 = GEP p_41_3:Array:i32:[Some(16_0), Some(16_0)] [Some(i_41_2), Some(temp_49_arithop_52_0)] 
              #                    occupy a5 with temp_37_ptr_of_p_41_56
    li      a5, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with i_41_2
              #                    load from i_41_2 in mem


    lw      s3,144(sp)
    slli a7,s3,4
              #                    free s3
              #                    occupy s3 with i_41_2
              #                    store to i_41_2 in mem offset legal
    sw      s3,144(sp)
              #                    release s3 with i_41_2
    add     a5,a5,a7
              #                    free a7
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with temp_49_arithop_52_0
    mv      a7, s1
              #                    free s1
              #                    occupy s1 with temp_49_arithop_52_0
              #                    store to temp_49_arithop_52_0 in mem offset legal
    sw      s1,32(sp)
              #                    release s1 with temp_49_arithop_52_0
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,152
              #                    free a5
              #                     157  temp_38_ele_of_p_41_56_0 = load temp_37_ptr_of_p_41_56:ptr->i32 
              #                    occupy a5 with temp_37_ptr_of_p_41_56
              #                    occupy a7 with temp_38_ele_of_p_41_56_0
    lw      a7,0(a5)
              #                    free a7
              #                    occupy a7 with temp_38_ele_of_p_41_56_0
              #                    store to temp_38_ele_of_p_41_56_0 in mem offset legal
    sw      a7,76(sp)
              #                    release a7 with temp_38_ele_of_p_41_56_0
              #                    free a5
              #                     158  mu p_41_3:157 
              #                     160  temp_39_ret_of_MAX_56_0 =  Call i32 MAX_0(temp_35_ele_of_p_41_56_0, temp_38_ele_of_p_41_56_0) 
              #                    saved register dumping to mem
              #                    occupy s2 with temp_50_ptr_of_arr2_39_52
              #                    store to temp_50_ptr_of_arr2_39_52 in mem offset legal
    sd      s2,24(sp)
              #                    release s2 with temp_50_ptr_of_arr2_39_52
              #                    occupy s4 with arr2_39
              #                    store to arr2_39 in mem offset legal
    sd      s4,1192(sp)
              #                    release s4 with arr2_39
              #                    occupy s6 with temp_53_ptr_of_arr1_39_52
              #                    store to temp_53_ptr_of_arr1_39_52 in mem offset legal
    sd      s6,8(sp)
              #                    release s6 with temp_53_ptr_of_arr1_39_52
              #                    occupy s7 with temp_55_cmp_52_0
              #                    store to temp_55_cmp_52_0 in mem offset legal
    sb      s7,3(sp)
              #                    release s7 with temp_55_cmp_52_0
              #                    occupy a1 with len1_39_0
              #                    store to len1_39_0 in mem offset legal
    sw      a1,1212(sp)
              #                    release a1 with len1_39_0
              #                    occupy a2 with temp_47_cmp_45_0
              #                    store to temp_47_cmp_45_0 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_47_cmp_45_0
              #                    occupy a3 with len2_39_0
              #                    store to len2_39_0 in mem offset legal
    sw      a3,1188(sp)
              #                    release a3 with len2_39_0
              #                    occupy a4 with temp_32_ptr_of_p_41_56
              #                    store to temp_32_ptr_of_p_41_56 in mem offset legal
    sd      a4,104(sp)
              #                    release a4 with temp_32_ptr_of_p_41_56
              #                    occupy a5 with temp_37_ptr_of_p_41_56
              #                    store to temp_37_ptr_of_p_41_56 in mem offset legal
    sd      a5,80(sp)
              #                    release a5 with temp_37_ptr_of_p_41_56
              #                    occupy a6 with temp_48_cmp_49_0
              #                    store to temp_48_cmp_49_0 in mem offset legal
    sb      a6,38(sp)
              #                    release a6 with temp_48_cmp_49_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_35_ele_of_p_41_56_0_0
              #                    load from temp_35_ele_of_p_41_56_0 in mem


    lw      a0,92(sp)
              #                    occupy a1 with _anonymous_of_temp_38_ele_of_p_41_56_0_0
              #                    load from temp_38_ele_of_p_41_56_0 in mem


    lw      a1,76(sp)
              #                    arg load ended


    call    MAX
              #                     161  store temp_39_ret_of_MAX_56_0:i32 temp_32_ptr_of_p_41_56:ptr->i32 
              #                    occupy a1 with temp_32_ptr_of_p_41_56
              #                    load from temp_32_ptr_of_p_41_56 in mem
    ld      a1,104(sp)
              #                    occupy a0 with temp_39_ret_of_MAX_56_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     162  p_41_6 = chi p_41_3:161 
              #                          jump label: gather_23 
              #                    occupy a1 with temp_32_ptr_of_p_41_56
              #                    store to temp_32_ptr_of_p_41_56 in mem offset legal
    sd      a1,104(sp)
              #                    release a1 with temp_32_ptr_of_p_41_56
              #                    occupy a1 with len1_39_0
              #                    load from len1_39_0 in mem


    lw      a1,1212(sp)
              #                    occupy s4 with arr2_39
              #                    load from arr2_39 in mem
    ld      s4,1192(sp)
              #                    occupy a5 with j_41_3
              #                    load from j_41_3 in mem


    lw      a5,132(sp)
              #                    occupy a2 with temp_47_cmp_45_0
              #                    load from temp_47_cmp_45_0 in mem


    lb      a2,39(sp)
              #                    occupy a0 with temp_39_ret_of_MAX_56_0
              #                    store to temp_39_ret_of_MAX_56_0 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_39_ret_of_MAX_56_0
              #                    occupy a0 with i_41_2
              #                    load from i_41_2 in mem


    lw      a0,144(sp)
              #                    occupy a3 with len2_39_0
              #                    load from len2_39_0 in mem


    lw      a3,1188(sp)
    j       .gather_23
              #                    regtab     a0:Freed { symidx: i_41_2, tracked: true } |     a1:Freed { symidx: len1_39_0, tracked: true } |     a2:Freed { symidx: temp_47_cmp_45_0, tracked: true } |     a3:Freed { symidx: len2_39_0, tracked: true } |     a4:Freed { symidx: temp_52_arithop_52_0, tracked: true } |     a5:Freed { symidx: j_41_3, tracked: true } |     a6:Freed { symidx: temp_48_cmp_49_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     193  label while.exit_50: 
.while.exit_50:
              #                     141  temp_31_arithop_47_0 = Add i32 i_41_2, 1_0 
              #                    occupy a0 with i_41_2
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_31_arithop_47_0
    ADDW    s1,a0,a7
              #                    free a0
              #                    free a7
              #                    free s1
              #                     142  (nop) 
              #                     386  i_41_2 = i32 temp_31_arithop_47_0 
              #                    occupy s1 with temp_31_arithop_47_0
              #                    occupy a0 with i_41_2
    mv      a0, s1
              #                    free s1
              #                    free a0
              #                          jump label: while.head_46 
              #                    occupy a1 with len1_39_0
              #                    store to len1_39_0 in mem offset legal
    sw      a1,1212(sp)
              #                    release a1 with len1_39_0
              #                    occupy s1 with temp_31_arithop_47_0
              #                    store to temp_31_arithop_47_0 in mem offset legal
    sw      s1,112(sp)
              #                    release s1 with temp_31_arithop_47_0
              #                    occupy a6 with temp_48_cmp_49_0
              #                    store to temp_48_cmp_49_0 in mem offset legal
    sb      a6,38(sp)
              #                    release a6 with temp_48_cmp_49_0
              #                    occupy a4 with temp_52_arithop_52_0
              #                    store to temp_52_arithop_52_0 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_52_arithop_52_0
              #                    occupy a5 with j_41_3
              #                    store to j_41_3 in mem offset legal
    sw      a5,132(sp)
              #                    release a5 with j_41_3
              #                    occupy a2 with temp_47_cmp_45_0
              #                    store to temp_47_cmp_45_0 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_47_cmp_45_0
              #                    occupy a3 with len2_39_0
              #                    store to len2_39_0 in mem offset legal
    sw      a3,1188(sp)
              #                    release a3 with len2_39_0
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: i_41_2, tracked: true } |     a1:Freed { symidx: len1_39_0, tracked: true } |     a2:Freed { symidx: temp_47_cmp_45_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     185  label while.exit_46: 
.while.exit_46:
              #                     411  untrack i_41_2 
              #                    occupy a0 with i_41_2
              #                    release a0 with i_41_2
              #                     410  untrack arr2_39 
              #                     409  untrack arr1_39 
              #                     134  temp_29_ptr_of_p_41_41 = GEP p_41_2:Array:i32:[Some(16_0), Some(16_0)] [Some(len1_39_0), Some(len2_39_0)] 
              #                    occupy a0 with temp_29_ptr_of_p_41_41
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with len1_39_0
    slli a3,a1,4
              #                    free a1
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with len2_39_0
              #                    load from len2_39_0 in mem


    lw      a5,1188(sp)
    mv      a4, a5
              #                    free a5
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,152
              #                    free a0
              #                     431  untrack len2_39_0 
              #                    occupy a5 with len2_39_0
              #                    release a5 with len2_39_0
              #                     430  untrack len1_39_0 
              #                    occupy a1 with len1_39_0
              #                    release a1 with len1_39_0
              #                     136  temp_30_ele_of_p_41_41_0 = load temp_29_ptr_of_p_41_41:ptr->i32 
              #                    occupy a0 with temp_29_ptr_of_p_41_41
              #                    occupy a1 with temp_30_ele_of_p_41_41_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     429  untrack temp_29_ptr_of_p_41_41 
              #                    occupy a0 with temp_29_ptr_of_p_41_41
              #                    release a0 with temp_29_ptr_of_p_41_41
              #                     137  mu p_41_2:136 
              #                     138  ret temp_30_ele_of_p_41_41_0 
              #                    load from ra_longest_common_subseq_0 in mem
    ld      ra,1240(sp)
              #                    load from s0_longest_common_subseq_0 in mem
    ld      s0,1232(sp)
              #                    occupy a1 with temp_30_ele_of_p_41_41_0
              #                    store to temp_30_ele_of_p_41_41_0 in mem offset legal
    sw      a1,116(sp)
              #                    release a1 with temp_30_ele_of_p_41_41_0
              #                    occupy a0 with temp_30_ele_of_p_41_41_0
              #                    load from temp_30_ele_of_p_41_41_0 in mem


    lw      a0,116(sp)
    addi    sp,sp,1248
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     22   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 416|s0_main:8 at 408|temp_56_array_init_ptr:8 at 400|temp_57_array_init_ptr:8 at 392|temp_58_array_init_ptr:8 at 384|temp_59_array_init_ptr:8 at 376|temp_60_array_init_ptr:8 at 368|temp_61_array_init_ptr:8 at 360|temp_62_array_init_ptr:8 at 352|temp_63_array_init_ptr:8 at 344|temp_64_array_init_ptr:8 at 336|temp_65_array_init_ptr:8 at 328|temp_66_array_init_ptr:8 at 320|temp_67_array_init_ptr:8 at 312|temp_68_array_init_ptr:8 at 304|temp_69_array_init_ptr:8 at 296|temp_70_array_init_ptr:8 at 288|temp_71_array_init_ptr:8 at 280|A:60 at 220|none:4 at 216|temp_72_array_init_ptr:8 at 208|temp_73_array_init_ptr:8 at 200|temp_74_array_init_ptr:8 at 192|temp_75_array_init_ptr:8 at 184|temp_76_array_init_ptr:8 at 176|temp_77_array_init_ptr:8 at 168|temp_78_array_init_ptr:8 at 160|temp_79_array_init_ptr:8 at 152|temp_80_array_init_ptr:8 at 144|temp_81_array_init_ptr:8 at 136|temp_82_array_init_ptr:8 at 128|temp_83_array_init_ptr:8 at 120|temp_84_array_init_ptr:8 at 112|temp_85_array_init_ptr:8 at 104|B:52 at 52|An _s62 _i0:4 at 48|Bn _s62 _i0:4 at 44|none:4 at 40|temp_86_ele_ptr_of_A_62:8 at 32|temp_87_ret_of_max_sum_nonadjacent _s62 _i0:4 at 28|none:4 at 24|temp_88_ele_ptr_of_A_62:8 at 16|temp_89_ele_ptr_of_B_62:8 at 8|temp_90_ret_of_longest_common_subseq _s62 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-424
              #                    store to ra_main_0 in mem offset legal
    sd      ra,416(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,408(sp)
    addi    s0,sp,424
              #                     216  alloc ptr->i32 [temp_56_array_init_ptr_62] 
              #                     219  alloc ptr->i32 [temp_57_array_init_ptr_62] 
              #                     223  alloc ptr->i32 [temp_58_array_init_ptr_62] 
              #                     227  alloc ptr->i32 [temp_59_array_init_ptr_62] 
              #                     231  alloc ptr->i32 [temp_60_array_init_ptr_62] 
              #                     235  alloc ptr->i32 [temp_61_array_init_ptr_62] 
              #                     239  alloc ptr->i32 [temp_62_array_init_ptr_62] 
              #                     243  alloc ptr->i32 [temp_63_array_init_ptr_62] 
              #                     247  alloc ptr->i32 [temp_64_array_init_ptr_62] 
              #                     251  alloc ptr->i32 [temp_65_array_init_ptr_62] 
              #                     255  alloc ptr->i32 [temp_66_array_init_ptr_62] 
              #                     259  alloc ptr->i32 [temp_67_array_init_ptr_62] 
              #                     263  alloc ptr->i32 [temp_68_array_init_ptr_62] 
              #                     267  alloc ptr->i32 [temp_69_array_init_ptr_62] 
              #                     271  alloc ptr->i32 [temp_70_array_init_ptr_62] 
              #                     275  alloc ptr->i32 [temp_71_array_init_ptr_62] 
              #                     279  alloc Array:i32:[Some(15_0)] [A_62] 
              #                     281  alloc ptr->i32 [temp_72_array_init_ptr_62] 
              #                     284  alloc ptr->i32 [temp_73_array_init_ptr_62] 
              #                     288  alloc ptr->i32 [temp_74_array_init_ptr_62] 
              #                     292  alloc ptr->i32 [temp_75_array_init_ptr_62] 
              #                     296  alloc ptr->i32 [temp_76_array_init_ptr_62] 
              #                     300  alloc ptr->i32 [temp_77_array_init_ptr_62] 
              #                     304  alloc ptr->i32 [temp_78_array_init_ptr_62] 
              #                     308  alloc ptr->i32 [temp_79_array_init_ptr_62] 
              #                     312  alloc ptr->i32 [temp_80_array_init_ptr_62] 
              #                     316  alloc ptr->i32 [temp_81_array_init_ptr_62] 
              #                     320  alloc ptr->i32 [temp_82_array_init_ptr_62] 
              #                     324  alloc ptr->i32 [temp_83_array_init_ptr_62] 
              #                     328  alloc ptr->i32 [temp_84_array_init_ptr_62] 
              #                     332  alloc ptr->i32 [temp_85_array_init_ptr_62] 
              #                     336  alloc Array:i32:[Some(13_0)] [B_62] 
              #                     337  alloc i32 [An_62] 
              #                     339  alloc i32 [Bn_62] 
              #                     341  alloc ptr->i32 [temp_86_ele_ptr_of_A_62_62] 
              #                     343  alloc i32 [temp_87_ret_of_max_sum_nonadjacent_62] 
              #                     347  alloc ptr->i32 [temp_88_ele_ptr_of_A_62_62] 
              #                     349  alloc ptr->i32 [temp_89_ele_ptr_of_B_62_62] 
              #                     351  alloc i32 [temp_90_ret_of_longest_common_subseq_62] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     215   
              #                     217  temp_56_array_init_ptr_62 = GEP A_62_0:Array:i32:[Some(15_0)] [] 
              #                    occupy a0 with temp_56_array_init_ptr_62
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     218   Call void memset_0(temp_56_array_init_ptr_62, 0_0, 60_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_56_array_init_ptr_62
              #                    store to temp_56_array_init_ptr_62 in mem offset legal
    sd      a0,400(sp)
              #                    release a0 with temp_56_array_init_ptr_62
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_56_array_init_ptr_62_0
              #                    load from temp_56_array_init_ptr_62 in mem
    ld      a0,400(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_60_0_0
    li      a2, 60
              #                    arg load ended


    call    memset
              #                     433  untrack temp_56_array_init_ptr_62 
              #                     363  mu A_62_0:218 
              #                     364  A_62_1 = chi A_62_0:218 
              #                     220  temp_57_array_init_ptr_62 = GEP A_62_1:Array:i32:[Some(15_0)] [Some(3_0)] 
              #                    occupy a0 with temp_57_array_init_ptr_62
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 3
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     221  store 1_0:i32 temp_57_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_57_array_init_ptr_62
              #                    occupy a2 with 1_0
    li      a2, 1
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     432  untrack temp_57_array_init_ptr_62 
              #                    occupy a0 with temp_57_array_init_ptr_62
              #                    release a0 with temp_57_array_init_ptr_62
              #                     222  A_62_2 = chi A_62_1:221 
              #                     224  temp_58_array_init_ptr_62 = GEP A_62_2:Array:i32:[Some(15_0)] [Some(2_0)] 
              #                    occupy a0 with temp_58_array_init_ptr_62
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     225  store 4_0:i32 temp_58_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_58_array_init_ptr_62
              #                    occupy a4 with 4_0
    li      a4, 4
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     465  untrack temp_58_array_init_ptr_62 
              #                    occupy a0 with temp_58_array_init_ptr_62
              #                    release a0 with temp_58_array_init_ptr_62
              #                     226  A_62_3 = chi A_62_2:225 
              #                     228  temp_59_array_init_ptr_62 = GEP A_62_3:Array:i32:[Some(15_0)] [Some(10_0)] 
              #                    occupy a0 with temp_59_array_init_ptr_62
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 10
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     229  store 4_0:i32 temp_59_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_59_array_init_ptr_62
              #                    found literal reg Some(a4) already exist with 4_0
              #                    occupy a4 with 4_0
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     459  untrack temp_59_array_init_ptr_62 
              #                    occupy a0 with temp_59_array_init_ptr_62
              #                    release a0 with temp_59_array_init_ptr_62
              #                     230  A_62_4 = chi A_62_3:229 
              #                     232  temp_60_array_init_ptr_62 = GEP A_62_4:Array:i32:[Some(15_0)] [Some(11_0)] 
              #                    occupy a0 with temp_60_array_init_ptr_62
    li      a0, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 11
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     233  store 8_0:i32 temp_60_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_60_array_init_ptr_62
              #                    occupy a7 with 8_0
    li      a7, 8
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                     460  untrack temp_60_array_init_ptr_62 
              #                    occupy a0 with temp_60_array_init_ptr_62
              #                    release a0 with temp_60_array_init_ptr_62
              #                     234  A_62_5 = chi A_62_4:233 
              #                     236  temp_61_array_init_ptr_62 = GEP A_62_5:Array:i32:[Some(15_0)] [Some(5_0)] 
              #                    occupy a0 with temp_61_array_init_ptr_62
    li      a0, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 5
    add     a0,a0,s1
              #                    free s1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     237  store 7_0:i32 temp_61_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_61_array_init_ptr_62
              #                    occupy s2 with 7_0
    li      s2, 7
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     456  untrack temp_61_array_init_ptr_62 
              #                    occupy a0 with temp_61_array_init_ptr_62
              #                    release a0 with temp_61_array_init_ptr_62
              #                     238  A_62_6 = chi A_62_5:237 
              #                     240  temp_62_array_init_ptr_62 = GEP A_62_6:Array:i32:[Some(15_0)] [Some(4_0)] 
              #                    occupy a0 with temp_62_array_init_ptr_62
    li      a0, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 4
    add     a0,a0,s3
              #                    free s3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     241  store 2_0:i32 temp_62_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_62_array_init_ptr_62
              #                    occupy s4 with 2_0
    li      s4, 2
    sw      s4,0(a0)
              #                    free s4
              #                    free a0
              #                     464  untrack temp_62_array_init_ptr_62 
              #                    occupy a0 with temp_62_array_init_ptr_62
              #                    release a0 with temp_62_array_init_ptr_62
              #                     242  A_62_7 = chi A_62_6:241 
              #                     244  temp_63_array_init_ptr_62 = GEP A_62_7:Array:i32:[Some(15_0)] [Some(12_0)] 
              #                    occupy a0 with temp_63_array_init_ptr_62
    li      a0, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s5, 12
    add     a0,a0,s5
              #                    free s5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     245  store 3_0:i32 temp_63_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_63_array_init_ptr_62
              #                    occupy s6 with 3_0
    li      s6, 3
    sw      s6,0(a0)
              #                    free s6
              #                    free a0
              #                     444  untrack temp_63_array_init_ptr_62 
              #                    occupy a0 with temp_63_array_init_ptr_62
              #                    release a0 with temp_63_array_init_ptr_62
              #                     246  A_62_8 = chi A_62_7:245 
              #                     248  temp_64_array_init_ptr_62 = GEP A_62_8:Array:i32:[Some(15_0)] [Some(14_0)] 
              #                    occupy a0 with temp_64_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 14
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     249  store 0_0:i32 temp_64_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_64_array_init_ptr_62
              #                    occupy s7 with 0_0
    li      s7, 0
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     441  untrack temp_64_array_init_ptr_62 
              #                    occupy a0 with temp_64_array_init_ptr_62
              #                    release a0 with temp_64_array_init_ptr_62
              #                     250  A_62_9 = chi A_62_8:249 
              #                     252  temp_65_array_init_ptr_62 = GEP A_62_9:Array:i32:[Some(15_0)] [Some(7_0)] 
              #                    occupy a0 with temp_65_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 7
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     253  store 1_0:i32 temp_65_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_65_array_init_ptr_62
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     466  untrack temp_65_array_init_ptr_62 
              #                    occupy a0 with temp_65_array_init_ptr_62
              #                    release a0 with temp_65_array_init_ptr_62
              #                     254  A_62_10 = chi A_62_9:253 
              #                     256  temp_66_array_init_ptr_62 = GEP A_62_10:Array:i32:[Some(15_0)] [Some(13_0)] 
              #                    occupy a0 with temp_66_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 13
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     257  store 7_0:i32 temp_66_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_66_array_init_ptr_62
              #                    found literal reg Some(s2) already exist with 7_0
              #                    occupy s2 with 7_0
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     462  untrack temp_66_array_init_ptr_62 
              #                    occupy a0 with temp_66_array_init_ptr_62
              #                    release a0 with temp_66_array_init_ptr_62
              #                     258  A_62_11 = chi A_62_10:257 
              #                     260  temp_67_array_init_ptr_62 = GEP A_62_11:Array:i32:[Some(15_0)] [Some(8_0)] 
              #                    occupy a0 with temp_67_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 8
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     261  store 9_0:i32 temp_67_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_67_array_init_ptr_62
              #                    occupy s7 with 9_0
    li      s7, 9
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     452  untrack temp_67_array_init_ptr_62 
              #                    occupy a0 with temp_67_array_init_ptr_62
              #                    release a0 with temp_67_array_init_ptr_62
              #                     262  A_62_12 = chi A_62_11:261 
              #                     264  temp_68_array_init_ptr_62 = GEP A_62_12:Array:i32:[Some(15_0)] [Some(1_0)] 
              #                    occupy a0 with temp_68_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     265  store 7_0:i32 temp_68_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_68_array_init_ptr_62
              #                    found literal reg Some(s2) already exist with 7_0
              #                    occupy s2 with 7_0
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     440  untrack temp_68_array_init_ptr_62 
              #                    occupy a0 with temp_68_array_init_ptr_62
              #                    release a0 with temp_68_array_init_ptr_62
              #                     266  A_62_13 = chi A_62_12:265 
              #                     268  temp_69_array_init_ptr_62 = GEP A_62_13:Array:i32:[Some(15_0)] [Some(0_0)] 
              #                    occupy a0 with temp_69_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     269  store 8_0:i32 temp_69_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_69_array_init_ptr_62
              #                    found literal reg Some(a7) already exist with 8_0
              #                    occupy a7 with 8_0
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                     442  untrack temp_69_array_init_ptr_62 
              #                    occupy a0 with temp_69_array_init_ptr_62
              #                    release a0 with temp_69_array_init_ptr_62
              #                     270  A_62_14 = chi A_62_13:269 
              #                     272  temp_70_array_init_ptr_62 = GEP A_62_14:Array:i32:[Some(15_0)] [Some(6_0)] 
              #                    occupy a0 with temp_70_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 6
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     273  store 0_0:i32 temp_70_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_70_array_init_ptr_62
              #                    occupy s7 with 0_0
    li      s7, 0
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     461  untrack temp_70_array_init_ptr_62 
              #                    occupy a0 with temp_70_array_init_ptr_62
              #                    release a0 with temp_70_array_init_ptr_62
              #                     274  A_62_15 = chi A_62_14:273 
              #                     276  temp_71_array_init_ptr_62 = GEP A_62_15:Array:i32:[Some(15_0)] [Some(9_0)] 
              #                    occupy a0 with temp_71_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 9
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     277  store 3_0:i32 temp_71_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_71_array_init_ptr_62
              #                    found literal reg Some(s6) already exist with 3_0
              #                    occupy s6 with 3_0
    sw      s6,0(a0)
              #                    free s6
              #                    free a0
              #                     450  untrack temp_71_array_init_ptr_62 
              #                    occupy a0 with temp_71_array_init_ptr_62
              #                    release a0 with temp_71_array_init_ptr_62
              #                     278  A_62_16 = chi A_62_15:277 
              #                     280   
              #                     282  temp_72_array_init_ptr_62 = GEP B_62_0:Array:i32:[Some(13_0)] [] 
              #                    occupy a0 with temp_72_array_init_ptr_62
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     283   Call void memset_0(temp_72_array_init_ptr_62, 0_0, 52_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_72_array_init_ptr_62
              #                    store to temp_72_array_init_ptr_62 in mem offset legal
    sd      a0,208(sp)
              #                    release a0 with temp_72_array_init_ptr_62
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_72_array_init_ptr_62_0
              #                    load from temp_72_array_init_ptr_62 in mem
    ld      a0,208(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_52_0_0
    li      a2, 52
              #                    arg load ended


    call    memset
              #                     451  untrack temp_72_array_init_ptr_62 
              #                     365  mu B_62_0:283 
              #                     366  B_62_1 = chi B_62_0:283 
              #                     285  temp_73_array_init_ptr_62 = GEP B_62_1:Array:i32:[Some(13_0)] [Some(1_0)] 
              #                    occupy a0 with temp_73_array_init_ptr_62
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 1
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     286  store 9_0:i32 temp_73_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_73_array_init_ptr_62
              #                    occupy a2 with 9_0
    li      a2, 9
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     455  untrack temp_73_array_init_ptr_62 
              #                    occupy a0 with temp_73_array_init_ptr_62
              #                    release a0 with temp_73_array_init_ptr_62
              #                     287  B_62_2 = chi B_62_1:286 
              #                     289  temp_74_array_init_ptr_62 = GEP B_62_2:Array:i32:[Some(13_0)] [Some(4_0)] 
              #                    occupy a0 with temp_74_array_init_ptr_62
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 4
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     290  store 4_0:i32 temp_74_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_74_array_init_ptr_62
              #                    occupy a4 with 4_0
    li      a4, 4
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     453  untrack temp_74_array_init_ptr_62 
              #                    occupy a0 with temp_74_array_init_ptr_62
              #                    release a0 with temp_74_array_init_ptr_62
              #                     291  B_62_3 = chi B_62_2:290 
              #                     293  temp_75_array_init_ptr_62 = GEP B_62_3:Array:i32:[Some(13_0)] [Some(7_0)] 
              #                    occupy a0 with temp_75_array_init_ptr_62
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 7
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     294  store 3_0:i32 temp_75_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_75_array_init_ptr_62
              #                    occupy a6 with 3_0
    li      a6, 3
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     436  untrack temp_75_array_init_ptr_62 
              #                    occupy a0 with temp_75_array_init_ptr_62
              #                    release a0 with temp_75_array_init_ptr_62
              #                     295  B_62_4 = chi B_62_3:294 
              #                     297  temp_76_array_init_ptr_62 = GEP B_62_4:Array:i32:[Some(13_0)] [Some(8_0)] 
              #                    occupy a0 with temp_76_array_init_ptr_62
    li      a0, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 8
    add     a0,a0,a7
              #                    free a7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     298  store 6_0:i32 temp_76_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_76_array_init_ptr_62
              #                    occupy s1 with 6_0
    li      s1, 6
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                     437  untrack temp_76_array_init_ptr_62 
              #                    occupy a0 with temp_76_array_init_ptr_62
              #                    release a0 with temp_76_array_init_ptr_62
              #                     299  B_62_5 = chi B_62_4:298 
              #                     301  temp_77_array_init_ptr_62 = GEP B_62_5:Array:i32:[Some(13_0)] [Some(12_0)] 
              #                    occupy a0 with temp_77_array_init_ptr_62
    li      a0, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 12
    add     a0,a0,s2
              #                    free s2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     302  store 5_0:i32 temp_77_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_77_array_init_ptr_62
              #                    occupy s3 with 5_0
    li      s3, 5
    sw      s3,0(a0)
              #                    free s3
              #                    free a0
              #                     435  untrack temp_77_array_init_ptr_62 
              #                    occupy a0 with temp_77_array_init_ptr_62
              #                    release a0 with temp_77_array_init_ptr_62
              #                     303  B_62_6 = chi B_62_5:302 
              #                     305  temp_78_array_init_ptr_62 = GEP B_62_6:Array:i32:[Some(13_0)] [Some(3_0)] 
              #                    occupy a0 with temp_78_array_init_ptr_62
    li      a0, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 3
    add     a0,a0,s4
              #                    free s4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     306  store 1_0:i32 temp_78_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_78_array_init_ptr_62
              #                    occupy s5 with 1_0
    li      s5, 1
    sw      s5,0(a0)
              #                    free s5
              #                    free a0
              #                     463  untrack temp_78_array_init_ptr_62 
              #                    occupy a0 with temp_78_array_init_ptr_62
              #                    release a0 with temp_78_array_init_ptr_62
              #                     307  B_62_7 = chi B_62_6:306 
              #                     309  temp_79_array_init_ptr_62 = GEP B_62_7:Array:i32:[Some(13_0)] [Some(5_0)] 
              #                    occupy a0 with temp_79_array_init_ptr_62
    li      a0, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 5
    add     a0,a0,s6
              #                    free s6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     310  store 2_0:i32 temp_79_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_79_array_init_ptr_62
              #                    occupy s7 with 2_0
    li      s7, 2
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     446  untrack temp_79_array_init_ptr_62 
              #                    occupy a0 with temp_79_array_init_ptr_62
              #                    release a0 with temp_79_array_init_ptr_62
              #                     311  B_62_8 = chi B_62_7:310 
              #                     313  temp_80_array_init_ptr_62 = GEP B_62_8:Array:i32:[Some(13_0)] [Some(9_0)] 
              #                    occupy a0 with temp_80_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 9
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     314  store 8_0:i32 temp_80_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_80_array_init_ptr_62
              #                    occupy s7 with 8_0
    li      s7, 8
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     457  untrack temp_80_array_init_ptr_62 
              #                    occupy a0 with temp_80_array_init_ptr_62
              #                    release a0 with temp_80_array_init_ptr_62
              #                     315  B_62_9 = chi B_62_8:314 
              #                     317  temp_81_array_init_ptr_62 = GEP B_62_9:Array:i32:[Some(13_0)] [Some(2_0)] 
              #                    occupy a0 with temp_81_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     318  store 7_0:i32 temp_81_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_81_array_init_ptr_62
              #                    occupy s7 with 7_0
    li      s7, 7
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     458  untrack temp_81_array_init_ptr_62 
              #                    occupy a0 with temp_81_array_init_ptr_62
              #                    release a0 with temp_81_array_init_ptr_62
              #                     319  B_62_10 = chi B_62_9:318 
              #                     321  temp_82_array_init_ptr_62 = GEP B_62_10:Array:i32:[Some(13_0)] [Some(6_0)] 
              #                    occupy a0 with temp_82_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 6
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     322  store 4_0:i32 temp_82_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_82_array_init_ptr_62
              #                    found literal reg Some(a4) already exist with 4_0
              #                    occupy a4 with 4_0
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     439  untrack temp_82_array_init_ptr_62 
              #                    occupy a0 with temp_82_array_init_ptr_62
              #                    release a0 with temp_82_array_init_ptr_62
              #                     323  B_62_11 = chi B_62_10:322 
              #                     325  temp_83_array_init_ptr_62 = GEP B_62_11:Array:i32:[Some(13_0)] [Some(10_0)] 
              #                    occupy a0 with temp_83_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 10
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     326  store 0_0:i32 temp_83_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_83_array_init_ptr_62
              #                    occupy s7 with 0_0
    li      s7, 0
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     445  untrack temp_83_array_init_ptr_62 
              #                    occupy a0 with temp_83_array_init_ptr_62
              #                    release a0 with temp_83_array_init_ptr_62
              #                     327  B_62_12 = chi B_62_11:326 
              #                     329  temp_84_array_init_ptr_62 = GEP B_62_12:Array:i32:[Some(13_0)] [Some(11_0)] 
              #                    occupy a0 with temp_84_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 11
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     330  store 1_0:i32 temp_84_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_84_array_init_ptr_62
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
    sw      s5,0(a0)
              #                    free s5
              #                    free a0
              #                     443  untrack temp_84_array_init_ptr_62 
              #                    occupy a0 with temp_84_array_init_ptr_62
              #                    release a0 with temp_84_array_init_ptr_62
              #                     331  B_62_13 = chi B_62_12:330 
              #                     333  temp_85_array_init_ptr_62 = GEP B_62_13:Array:i32:[Some(13_0)] [Some(0_0)] 
              #                    occupy a0 with temp_85_array_init_ptr_62
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                     334  store 3_0:i32 temp_85_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_85_array_init_ptr_62
              #                    found literal reg Some(a6) already exist with 3_0
              #                    occupy a6 with 3_0
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     448  untrack temp_85_array_init_ptr_62 
              #                    occupy a0 with temp_85_array_init_ptr_62
              #                    release a0 with temp_85_array_init_ptr_62
              #                     335  B_62_14 = chi B_62_13:334 
              #                     338   
              #                     340   
              #                     342  temp_86_ele_ptr_of_A_62_62 = GEP A_62_16:Array:i32:[Some(15_0)] [] 
              #                    occupy a0 with temp_86_ele_ptr_of_A_62_62
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     344  temp_87_ret_of_max_sum_nonadjacent_62_0 =  Call i32 max_sum_nonadjacent_0(temp_86_ele_ptr_of_A_62_62, 15_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_86_ele_ptr_of_A_62_62
              #                    store to temp_86_ele_ptr_of_A_62_62 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with temp_86_ele_ptr_of_A_62_62
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_86_ele_ptr_of_A_62_62_0
              #                    load from temp_86_ele_ptr_of_A_62_62 in mem
    ld      a0,32(sp)
              #                    occupy a1 with _anonymous_of_15_0_0
    li      a1, 15
              #                    arg load ended


    call    max_sum_nonadjacent
              #                     454  untrack temp_86_ele_ptr_of_A_62_62 
              #                     367  mu A_62_16:344 
              #                     368  A_62_17 = chi A_62_16:344 
              #                     345   Call void putint_0(temp_87_ret_of_max_sum_nonadjacent_62_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_87_ret_of_max_sum_nonadjacent_62_0
              #                    store to temp_87_ret_of_max_sum_nonadjacent_62_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_87_ret_of_max_sum_nonadjacent_62_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_87_ret_of_max_sum_nonadjacent_62_0_0
              #                    load from temp_87_ret_of_max_sum_nonadjacent_62_0 in mem


    lw      a0,28(sp)
              #                    arg load ended


    call    putint
              #                     434  untrack temp_87_ret_of_max_sum_nonadjacent_62_0 
              #                     346   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     348  temp_88_ele_ptr_of_A_62_62 = GEP A_62_17:Array:i32:[Some(15_0)] [] 
              #                    occupy a0 with temp_88_ele_ptr_of_A_62_62
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,220
              #                    free a0
              #                     350  temp_89_ele_ptr_of_B_62_62 = GEP B_62_14:Array:i32:[Some(13_0)] [] 
              #                    occupy a1 with temp_89_ele_ptr_of_B_62_62
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,52
              #                    free a1
              #                     352  temp_90_ret_of_longest_common_subseq_62_0 =  Call i32 longest_common_subseq_0(temp_88_ele_ptr_of_A_62_62, 15_0, temp_89_ele_ptr_of_B_62_62, 13_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_88_ele_ptr_of_A_62_62
              #                    store to temp_88_ele_ptr_of_A_62_62 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_88_ele_ptr_of_A_62_62
              #                    occupy a1 with temp_89_ele_ptr_of_B_62_62
              #                    store to temp_89_ele_ptr_of_B_62_62 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_89_ele_ptr_of_B_62_62
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_88_ele_ptr_of_A_62_62_0
              #                    load from temp_88_ele_ptr_of_A_62_62 in mem
    ld      a0,16(sp)
              #                    occupy a1 with _anonymous_of_15_0_0
    li      a1, 15
              #                    occupy a2 with _anonymous_of_temp_89_ele_ptr_of_B_62_62_0
              #                    load from temp_89_ele_ptr_of_B_62_62 in mem
    ld      a2,8(sp)
              #                    occupy a3 with _anonymous_of_13_0_0
    li      a3, 13
              #                    arg load ended


    call    longest_common_subseq
              #                     449  untrack temp_89_ele_ptr_of_B_62_62 
              #                     438  untrack temp_88_ele_ptr_of_A_62_62 
              #                     369  mu B_62_14:352 
              #                     370  mu A_62_17:352 
              #                     371  B_62_15 = chi B_62_14:352 
              #                     372  A_62_18 = chi A_62_17:352 
              #                     353   Call void putint_0(temp_90_ret_of_longest_common_subseq_62_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_90_ret_of_longest_common_subseq_62_0
              #                    store to temp_90_ret_of_longest_common_subseq_62_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_90_ret_of_longest_common_subseq_62_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_90_ret_of_longest_common_subseq_62_0_0
              #                    load from temp_90_ret_of_longest_common_subseq_62_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                     447  untrack temp_90_ret_of_longest_common_subseq_62_0 
              #                     354   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     356  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,416(sp)
              #                    load from s0_main_0 in mem
    ld      s0,408(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,424
              #                    free a0
    ret
