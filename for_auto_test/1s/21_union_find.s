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
              #                     21   Define find_0 "root_18_0," -> find_ret_0 
    .globl find
    .type find,@function
find:
              #                    mem layout:|ra_find:8 at 72|s0_find:8 at 64|root _s18 _i0:4 at 60|none:4 at 56|temp_0_ptr_of_*parent_0:8 at 48|temp_1_ptr_of_*parent_0:8 at 40|temp_3_ret_of_find _s24 _i0:4 at 36|none:4 at 32|temp_4_ptr_of_*parent_0:8 at 24|temp_5_ele_of_*parent_0 _s24 _i0:4 at 20|none:4 at 16|temp_6_ptr_of_*parent_0:8 at 8|temp_7_ele_of_*parent_0 _s21 _i0:4 at 4|temp_8_cmp _s21 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-80
              #                    store to ra_find_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_find_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                     155  parent_0_1 = chi parent_0_0:21 
              #                     24   alloc ptr->i32 [temp_0_ptr_of_*parent_0_24] 
              #                     26   alloc ptr->i32 [temp_1_ptr_of_*parent_0_24] 
              #                     28   alloc i32 [temp_2_ele_of_*parent_0_24] 
              #                     31   alloc i32 [temp_3_ret_of_find_24] 
              #                     36   alloc ptr->i32 [temp_4_ptr_of_*parent_0_24] 
              #                     38   alloc i32 [temp_5_ele_of_*parent_0_24] 
              #                     44   alloc ptr->i32 [temp_6_ptr_of_*parent_0_21] 
              #                     46   alloc i32 [temp_7_ele_of_*parent_0_21] 
              #                     49   alloc i1 [temp_8_cmp_21] 
              #                    regtab     a0:Freed { symidx: root_18_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     45   temp_6_ptr_of_*parent_0_21 = GEP *parent_0:Array:i32:[None] [Some(root_18_0)] 
              #                    occupy a1 with temp_6_ptr_of_*parent_0_21
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_18_0
    mv      a2, a0
              #                    free a0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *parent_0
              #                       load label parent as ptr to reg
    la      a3, parent
              #                    occupy reg a3 with *parent_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     47   temp_7_ele_of_*parent_0_21_0 = load temp_6_ptr_of_*parent_0_21:ptr->i32 
              #                    occupy a1 with temp_6_ptr_of_*parent_0_21
              #                    occupy a4 with temp_7_ele_of_*parent_0_21_0
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     48   mu parent_0_1:47 
              #                     50   temp_8_cmp_21_0 = icmp i32 Eq temp_7_ele_of_*parent_0_21_0, root_18_0 
              #                    occupy a4 with temp_7_ele_of_*parent_0_21_0
              #                    occupy a0 with root_18_0
              #                    occupy a5 with temp_8_cmp_21_0
    xor     a5,a4,a0
    seqz    a5, a5
              #                    free a4
              #                    free a0
              #                    free a5
              #                     53   br i1 temp_8_cmp_21_0, label branch_true_22, label branch_false_22 
              #                    occupy a5 with temp_8_cmp_21_0
              #                    free a5
              #                    occupy a5 with temp_8_cmp_21_0
    bnez    a5, .branch_true_22
              #                    free a5
    j       .branch_false_22
              #                    regtab     a0:Freed { symidx: root_18_0, tracked: true } |     a1:Freed { symidx: temp_6_ptr_of_*parent_0_21, tracked: true } |     a4:Freed { symidx: temp_7_ele_of_*parent_0_21_0, tracked: true } |     a5:Freed { symidx: temp_8_cmp_21_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     51   label branch_true_22: 
.branch_true_22:
              #                     195  untrack temp_6_ptr_of_*parent_0_21 
              #                    occupy a1 with temp_6_ptr_of_*parent_0_21
              #                    release a1 with temp_6_ptr_of_*parent_0_21
              #                     194  untrack temp_8_cmp_21_0 
              #                    occupy a5 with temp_8_cmp_21_0
              #                    release a5 with temp_8_cmp_21_0
              #                     193  untrack temp_5_ele_of_*parent_0_24_0 
              #                     192  untrack temp_7_ele_of_*parent_0_21_0 
              #                    occupy a4 with temp_7_ele_of_*parent_0_21_0
              #                    release a4 with temp_7_ele_of_*parent_0_21_0
              #                     191  untrack temp_3_ret_of_find_24_0 
              #                     156  mu parent_0_1:43 
              #                     43   ret root_18_0 
              #                    load from ra_find_0 in mem
    ld      ra,72(sp)
              #                    load from s0_find_0 in mem
    ld      s0,64(sp)
              #                    occupy a0 with root_18_0
              #                    store to root_18_0 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with root_18_0
              #                    occupy a0 with root_18_0
              #                    load from root_18_0 in mem


    lw      a0,60(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_18_0, tracked: true } |     a1:Freed { symidx: temp_6_ptr_of_*parent_0_21, tracked: true } |     a4:Freed { symidx: temp_7_ele_of_*parent_0_21_0, tracked: true } |     a5:Freed { symidx: temp_8_cmp_21_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     52   label branch_false_22: 
.branch_false_22:
              #                     197  untrack root_18_0 
              #                    occupy a0 with root_18_0
              #                    release a0 with root_18_0
              #                     196  untrack temp_8_cmp_21_0 
              #                    occupy a5 with temp_8_cmp_21_0
              #                    release a5 with temp_8_cmp_21_0
              #                     25   (nop) 
              #                     27   (nop) 
              #                     29   (nop) 
              #                     30   mu parent_0_1:29 
              #                     32   temp_3_ret_of_find_24_0 =  Call i32 find_0(temp_7_ele_of_*parent_0_21_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_6_ptr_of_*parent_0_21
              #                    store to temp_6_ptr_of_*parent_0_21 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_6_ptr_of_*parent_0_21
              #                    occupy a4 with temp_7_ele_of_*parent_0_21_0
              #                    store to temp_7_ele_of_*parent_0_21_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_7_ele_of_*parent_0_21_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_7_ele_of_*parent_0_21_0_0
              #                    load from temp_7_ele_of_*parent_0_21_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    find
              #                     199  untrack temp_7_ele_of_*parent_0_21_0 
              #                     157  mu parent_0_1:32 
              #                     158  parent_0_2 = chi parent_0_1:32 
              #                     33   store temp_3_ret_of_find_24_0:i32 temp_6_ptr_of_*parent_0_21:ptr->i32 
              #                    occupy a1 with temp_6_ptr_of_*parent_0_21
              #                    load from temp_6_ptr_of_*parent_0_21 in mem
    ld      a1,8(sp)
              #                    occupy a0 with temp_3_ret_of_find_24_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     200  untrack temp_3_ret_of_find_24_0 
              #                    occupy a0 with temp_3_ret_of_find_24_0
              #                    release a0 with temp_3_ret_of_find_24_0
              #                     34   parent_0_3 = chi parent_0_2:33 
              #                     37   (nop) 
              #                     39   temp_5_ele_of_*parent_0_24_0 = load temp_6_ptr_of_*parent_0_21:ptr->i32 
              #                    occupy a1 with temp_6_ptr_of_*parent_0_21
              #                    occupy a0 with temp_5_ele_of_*parent_0_24_0
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     198  untrack temp_6_ptr_of_*parent_0_21 
              #                    occupy a1 with temp_6_ptr_of_*parent_0_21
              #                    release a1 with temp_6_ptr_of_*parent_0_21
              #                     40   mu parent_0_3:39 
              #                     159  mu parent_0_3:41 
              #                     41   ret temp_5_ele_of_*parent_0_24_0 
              #                    load from ra_find_0 in mem
    ld      ra,72(sp)
              #                    load from s0_find_0 in mem
    ld      s0,64(sp)
              #                    occupy a0 with temp_5_ele_of_*parent_0_24_0
              #                    store to temp_5_ele_of_*parent_0_24_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_5_ele_of_*parent_0_24_0
              #                    occupy a0 with temp_5_ele_of_*parent_0_24_0
              #                    load from temp_5_ele_of_*parent_0_24_0 in mem


    lw      a0,20(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     22   Define merge_0 "p_27_0,q_27_0," -> merge_ret_0 
    .globl merge
    .type merge,@function
merge:
              #                    mem layout:|ra_merge:8 at 48|s0_merge:8 at 40|p _s27 _i0:4 at 36|q _s27 _i0:4 at 32|root_p _s29 _i0:4 at 28|root_q _s29 _i0:4 at 24|temp_9_ret_of_find _s29 _i0:4 at 20|temp_10_ret_of_find _s29 _i0:4 at 16|temp_11_ptr_of_*parent_0:8 at 8|temp_12_cmp _s33 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-56
              #                    store to ra_merge_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_merge_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     160  parent_0_4 = chi parent_0_0:22 
              #                     57   alloc i32 [root_p_29] 
              #                     59   alloc i32 [root_q_29] 
              #                     61   alloc i32 [temp_9_ret_of_find_29] 
              #                     64   alloc i32 [temp_10_ret_of_find_29] 
              #                     69   alloc ptr->i32 [temp_11_ptr_of_*parent_0_35] 
              #                     73   alloc i1 [temp_12_cmp_33] 
              #                    regtab     a0:Freed { symidx: p_27_0, tracked: true } |     a1:Freed { symidx: q_27_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     58    
              #                     60    
              #                     62   temp_9_ret_of_find_29_0 =  Call i32 find_0(p_27_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with p_27_0
              #                    store to p_27_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with p_27_0
              #                    occupy a1 with q_27_0
              #                    store to q_27_0 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with q_27_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_p_27_0_0
              #                    load from p_27_0 in mem


    lw      a0,36(sp)
              #                    arg load ended


    call    find
              #                     202  untrack p_27_0 
              #                     161  mu parent_0_4:62 
              #                     162  parent_0_5 = chi parent_0_4:62 
              #                     63   (nop) 
              #                     65   temp_10_ret_of_find_29_0 =  Call i32 find_0(q_27_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_9_ret_of_find_29_0
              #                    store to temp_9_ret_of_find_29_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_9_ret_of_find_29_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_q_27_0_0
              #                    load from q_27_0 in mem


    lw      a0,32(sp)
              #                    arg load ended


    call    find
              #                     201  untrack q_27_0 
              #                     163  mu parent_0_5:65 
              #                     164  parent_0_6 = chi parent_0_5:65 
              #                     66   (nop) 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_10_ret_of_find_29_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     74   temp_12_cmp_33_0 = icmp i32 Ne temp_9_ret_of_find_29_0, temp_10_ret_of_find_29_0 
              #                    occupy a1 with temp_9_ret_of_find_29_0
              #                    load from temp_9_ret_of_find_29_0 in mem


    lw      a1,20(sp)
              #                    occupy a0 with temp_10_ret_of_find_29_0
              #                    occupy a2 with temp_12_cmp_33_0
    xor     a2,a1,a0
    snez    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                     77   br i1 temp_12_cmp_33_0, label branch_true_34, label branch_false_34 
              #                    occupy a2 with temp_12_cmp_33_0
              #                    free a2
              #                    occupy a2 with temp_12_cmp_33_0
    bnez    a2, .branch_true_34
              #                    free a2
    j       .branch_false_34
              #                    regtab     a0:Freed { symidx: temp_10_ret_of_find_29_0, tracked: true } |     a1:Freed { symidx: temp_9_ret_of_find_29_0, tracked: true } |     a2:Freed { symidx: temp_12_cmp_33_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     75   label branch_true_34: 
.branch_true_34:
              #                     203  untrack temp_12_cmp_33_0 
              #                    occupy a2 with temp_12_cmp_33_0
              #                    release a2 with temp_12_cmp_33_0
              #                     70   temp_11_ptr_of_*parent_0_35 = GEP *parent_0:ptr->i32 [Some(temp_10_ret_of_find_29_0)] 
              #                    occupy a2 with temp_11_ptr_of_*parent_0_35
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with temp_10_ret_of_find_29_0
    mv      a3, a0
              #                    free a0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *parent_0
              #                       load label parent as ptr to reg
    la      a4, parent
              #                    occupy reg a4 with *parent_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     209  untrack temp_10_ret_of_find_29_0 
              #                    occupy a0 with temp_10_ret_of_find_29_0
              #                    release a0 with temp_10_ret_of_find_29_0
              #                     71   store temp_9_ret_of_find_29_0:i32 temp_11_ptr_of_*parent_0_35:ptr->i32 
              #                    occupy a2 with temp_11_ptr_of_*parent_0_35
              #                    occupy a1 with temp_9_ret_of_find_29_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     210  untrack temp_9_ret_of_find_29_0 
              #                    occupy a1 with temp_9_ret_of_find_29_0
              #                    release a1 with temp_9_ret_of_find_29_0
              #                     208  untrack temp_11_ptr_of_*parent_0_35 
              #                    occupy a2 with temp_11_ptr_of_*parent_0_35
              #                    release a2 with temp_11_ptr_of_*parent_0_35
              #                     72   parent_0_7 = chi parent_0_6:71 
              #                          jump label: branch_false_34 
              #                    occupy a1 with temp_9_ret_of_find_29_0
              #                    load from temp_9_ret_of_find_29_0 in mem


    lw      a1,20(sp)
              #                    occupy a2 with temp_12_cmp_33_0
              #                    load from temp_12_cmp_33_0 in mem


    lb      a2,7(sp)
              #                    occupy a0 with temp_10_ret_of_find_29_0
              #                    load from temp_10_ret_of_find_29_0 in mem


    lw      a0,16(sp)
    j       .branch_false_34
              #                    regtab     a0:Freed { symidx: temp_10_ret_of_find_29_0, tracked: true } |     a1:Freed { symidx: temp_9_ret_of_find_29_0, tracked: true } |     a2:Freed { symidx: temp_12_cmp_33_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     76   label branch_false_34: 
.branch_false_34:
              #                     207  untrack temp_9_ret_of_find_29_0 
              #                    occupy a1 with temp_9_ret_of_find_29_0
              #                    release a1 with temp_9_ret_of_find_29_0
              #                     206  untrack temp_10_ret_of_find_29_0 
              #                    occupy a0 with temp_10_ret_of_find_29_0
              #                    release a0 with temp_10_ret_of_find_29_0
              #                     205  untrack temp_11_ptr_of_*parent_0_35 
              #                     204  untrack temp_12_cmp_33_0 
              #                    occupy a2 with temp_12_cmp_33_0
              #                    release a2 with temp_12_cmp_33_0
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     165  mu parent_0_8:68 
              #                     68   ret 
              #                    load from ra_merge_0 in mem
    ld      ra,48(sp)
              #                    load from s0_merge_0 in mem
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     23   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 112|s0_main:8 at 104|temp_13_ret_of_getint _s39 _i0:4 at 100|temp_14_ret_of_getint _s39 _i0:4 at 96|i _s39 _i0:4 at 92|i _s39 _i2:4 at 88|i _s39 _i5:4 at 84|i _s39 _i8:4 at 80|p _s39 _i0:4 at 76|p _s39 _i1:4 at 72|q _s39 _i0:4 at 68|q _s39 _i1:4 at 64|clusters _s39 _i1:4 at 60|clusters _s39 _i3:4 at 56|temp_15_arithop _s60 _i0:4 at 52|temp_16_arithop _s61 _i0:4 at 48|temp_17_ret_of_getint _s51 _i0:4 at 44|temp_18_ret_of_getint _s51 _i0:4 at 40|temp_19_arithop _s51 _i0:4 at 36|none:4 at 32|temp_20_ptr_of_*parent_0:8 at 24|temp_21_arithop _s45 _i0:4 at 20|temp_22_cmp _s43 _i0:1 at 19|temp_23_cmp _s49 _i0:1 at 18|temp_24_cmp _s58 _i0:1 at 17|none:1 at 16|temp_25_ptr_of_*parent_0:8 at 8|temp_26_ele_of_*parent_0 _s61 _i0:4 at 4|temp_27_cmp _s61 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-120
              #                    store to ra_main_0 in mem offset legal
    sd      ra,112(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,104(sp)
    addi    s0,sp,120
              #                     166  parent_0_9 = chi parent_0_0:23 
              #                     80   alloc i32 [temp_13_ret_of_getint_39] 
              #                     83   alloc i32 [n_39] 
              #                     84   alloc i32 [temp_14_ret_of_getint_39] 
              #                     87   alloc i32 [m_39] 
              #                     88   alloc i32 [i_39] 
              #                     90   alloc i32 [p_39] 
              #                     92   alloc i32 [q_39] 
              #                     97   alloc i32 [clusters_39] 
              #                     102  alloc i32 [temp_15_arithop_60] 
              #                     105  alloc i32 [temp_16_arithop_61] 
              #                     108  alloc i32 [temp_17_ret_of_getint_51] 
              #                     111  alloc i32 [temp_18_ret_of_getint_51] 
              #                     115  alloc i32 [temp_19_arithop_51] 
              #                     118  alloc ptr->i32 [temp_20_ptr_of_*parent_0_45] 
              #                     122  alloc i32 [temp_21_arithop_45] 
              #                     125  alloc i1 [temp_22_cmp_43] 
              #                     131  alloc i1 [temp_23_cmp_49] 
              #                     137  alloc i1 [temp_24_cmp_58] 
              #                     145  alloc ptr->i32 [temp_25_ptr_of_*parent_0_61] 
              #                     147  alloc i32 [temp_26_ele_of_*parent_0_61] 
              #                     150  alloc i1 [temp_27_cmp_61] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     81   temp_13_ret_of_getint_39_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     82   (nop) 
              #                     85   temp_14_ret_of_getint_39_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_13_ret_of_getint_39_0
              #                    store to temp_13_ret_of_getint_39_0 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_13_ret_of_getint_39_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     86   (nop) 
              #                     89    
              #                     91    
              #                     93    
              #                     94   (nop) 
              #                     181  i_39_2 = i32 0_0 
              #                    occupy a1 with i_39_2
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_44 
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39_0, tracked: true } |     a1:Freed { symidx: i_39_2, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     127  label while.head_44: 
.while.head_44:
              #                     126  temp_22_cmp_43_0 = icmp i32 Slt i_39_2, temp_13_ret_of_getint_39_0 
              #                    occupy a1 with i_39_2
              #                    occupy a2 with temp_13_ret_of_getint_39_0
              #                    load from temp_13_ret_of_getint_39_0 in mem


    lw      a2,100(sp)
              #                    occupy a3 with temp_22_cmp_43_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     130  br i1 temp_22_cmp_43_0, label while.body_44, label while.exit_44 
              #                    occupy a3 with temp_22_cmp_43_0
              #                    free a3
              #                    occupy a3 with temp_22_cmp_43_0
    bnez    a3, .while.body_44
              #                    free a3
    j       .while.exit_44
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39_0, tracked: true } |     a1:Freed { symidx: i_39_2, tracked: true } |     a2:Freed { symidx: temp_13_ret_of_getint_39_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_43_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     128  label while.body_44: 
.while.body_44:
              #                     119  temp_20_ptr_of_*parent_0_45 = GEP *parent_0:ptr->i32 [Some(i_39_2)] 
              #                    occupy a4 with temp_20_ptr_of_*parent_0_45
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_39_2
    mv      a5, a1
              #                    free a1
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *parent_0
              #                       load label parent as ptr to reg
    la      a6, parent
              #                    occupy reg a6 with *parent_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     120  store i_39_2:i32 temp_20_ptr_of_*parent_0_45:ptr->i32 
              #                    occupy a4 with temp_20_ptr_of_*parent_0_45
              #                    occupy a1 with i_39_2
    sw      a1,0(a4)
              #                    free a1
              #                    free a4
              #                     121  parent_0_11 = chi parent_0_10:120 
              #                     123  temp_21_arithop_45_0 = Add i32 i_39_2, 1_0 
              #                    occupy a1 with i_39_2
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_21_arithop_45_0
    ADDW    s1,a1,a7
              #                    free a1
              #                    free a7
              #                    free s1
              #                     124  (nop) 
              #                     182  i_39_2 = i32 temp_21_arithop_45_0 
              #                    occupy s1 with temp_21_arithop_45_0
              #                    occupy a1 with i_39_2
    mv      a1, s1
              #                    free s1
              #                    free a1
              #                          jump label: while.head_44 
              #                    occupy a3 with temp_22_cmp_43_0
              #                    store to temp_22_cmp_43_0 in mem offset legal
    sb      a3,19(sp)
              #                    release a3 with temp_22_cmp_43_0
              #                    occupy a4 with temp_20_ptr_of_*parent_0_45
              #                    store to temp_20_ptr_of_*parent_0_45 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_20_ptr_of_*parent_0_45
              #                    occupy a2 with temp_13_ret_of_getint_39_0
              #                    store to temp_13_ret_of_getint_39_0 in mem offset legal
    sw      a2,100(sp)
              #                    release a2 with temp_13_ret_of_getint_39_0
              #                    occupy s1 with temp_21_arithop_45_0
              #                    store to temp_21_arithop_45_0 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with temp_21_arithop_45_0
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39_0, tracked: true } |     a1:Freed { symidx: i_39_2, tracked: true } |     a2:Freed { symidx: temp_13_ret_of_getint_39_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_43_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     129  label while.exit_44: 
.while.exit_44:
              #                     211  untrack i_39_2 
              #                    occupy a1 with i_39_2
              #                    release a1 with i_39_2
              #                     95   (nop) 
              #                     183  i_39_5 = i32 0_0 
              #                    occupy a1 with i_39_5
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_50 
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39_0, tracked: true } |     a1:Freed { symidx: i_39_5, tracked: true } |     a2:Freed { symidx: temp_13_ret_of_getint_39_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_43_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     133  label while.head_50: 
.while.head_50:
              #                     132  temp_23_cmp_49_0 = icmp i32 Slt i_39_5, temp_14_ret_of_getint_39_0 
              #                    occupy a1 with i_39_5
              #                    occupy a0 with temp_14_ret_of_getint_39_0
              #                    occupy a4 with temp_23_cmp_49_0
    slt     a4,a1,a0
              #                    free a1
              #                    free a0
              #                    free a4
              #                     136  br i1 temp_23_cmp_49_0, label while.body_50, label while.exit_50 
              #                    occupy a4 with temp_23_cmp_49_0
              #                    free a4
              #                    occupy a4 with temp_23_cmp_49_0
    bnez    a4, .while.body_50
              #                    free a4
    j       .while.exit_50
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39_0, tracked: true } |     a1:Freed { symidx: i_39_5, tracked: true } |     a2:Freed { symidx: temp_13_ret_of_getint_39_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_43_0, tracked: true } |     a4:Freed { symidx: temp_23_cmp_49_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     134  label while.body_50: 
.while.body_50:
              #                     109  temp_17_ret_of_getint_51_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_14_ret_of_getint_39_0
              #                    store to temp_14_ret_of_getint_39_0 in mem offset legal
    sw      a0,96(sp)
              #                    release a0 with temp_14_ret_of_getint_39_0
              #                    occupy a1 with i_39_5
              #                    store to i_39_5 in mem offset legal
    sw      a1,84(sp)
              #                    release a1 with i_39_5
              #                    occupy a2 with temp_13_ret_of_getint_39_0
              #                    store to temp_13_ret_of_getint_39_0 in mem offset legal
    sw      a2,100(sp)
              #                    release a2 with temp_13_ret_of_getint_39_0
              #                    occupy a3 with temp_22_cmp_43_0
              #                    store to temp_22_cmp_43_0 in mem offset legal
    sb      a3,19(sp)
              #                    release a3 with temp_22_cmp_43_0
              #                    occupy a4 with temp_23_cmp_49_0
              #                    store to temp_23_cmp_49_0 in mem offset legal
    sb      a4,18(sp)
              #                    release a4 with temp_23_cmp_49_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     110  (nop) 
              #                     112  temp_18_ret_of_getint_51_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_17_ret_of_getint_51_0
              #                    store to temp_17_ret_of_getint_51_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_17_ret_of_getint_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     113  (nop) 
              #                     114   Call void merge_0(temp_17_ret_of_getint_51_0, temp_18_ret_of_getint_51_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_18_ret_of_getint_51_0
              #                    store to temp_18_ret_of_getint_51_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_18_ret_of_getint_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_17_ret_of_getint_51_0_0
              #                    load from temp_17_ret_of_getint_51_0 in mem


    lw      a0,44(sp)
              #                    occupy a1 with _anonymous_of_temp_18_ret_of_getint_51_0_0
              #                    load from temp_18_ret_of_getint_51_0 in mem


    lw      a1,40(sp)
              #                    arg load ended


    call    merge
              #                     167  mu parent_0_12:114 
              #                     168  parent_0_13 = chi parent_0_12:114 
              #                     116  temp_19_arithop_51_0 = Add i32 i_39_5, 1_0 
              #                    occupy a0 with i_39_5
              #                    load from i_39_5 in mem


    lw      a0,84(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_19_arithop_51_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     117  (nop) 
              #                     184  i_39_5 = i32 temp_19_arithop_51_0 
              #                    occupy a2 with temp_19_arithop_51_0
              #                    occupy a0 with i_39_5
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_50 
              #                    occupy a0 with i_39_5
              #                    store to i_39_5 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with i_39_5
              #                    occupy a0 with temp_14_ret_of_getint_39_0
              #                    load from temp_14_ret_of_getint_39_0 in mem


    lw      a0,96(sp)
              #                    occupy a3 with temp_22_cmp_43_0
              #                    load from temp_22_cmp_43_0 in mem


    lb      a3,19(sp)
              #                    occupy a1 with i_39_5
              #                    load from i_39_5 in mem


    lw      a1,84(sp)
              #                    occupy a2 with temp_19_arithop_51_0
              #                    store to temp_19_arithop_51_0 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_19_arithop_51_0
              #                    occupy a2 with temp_13_ret_of_getint_39_0
              #                    load from temp_13_ret_of_getint_39_0 in mem


    lw      a2,100(sp)
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39_0, tracked: true } |     a1:Freed { symidx: i_39_5, tracked: true } |     a2:Freed { symidx: temp_13_ret_of_getint_39_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_43_0, tracked: true } |     a4:Freed { symidx: temp_23_cmp_49_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     135  label while.exit_50: 
.while.exit_50:
              #                     213  untrack i_39_5 
              #                    occupy a1 with i_39_5
              #                    release a1 with i_39_5
              #                     212  untrack temp_14_ret_of_getint_39_0 
              #                    occupy a0 with temp_14_ret_of_getint_39_0
              #                    release a0 with temp_14_ret_of_getint_39_0
              #                     96   (nop) 
              #                     98   (nop) 
              #                     185  i_39_8 = i32 0_0 
              #                    occupy a0 with i_39_8
    li      a0, 0
              #                    free a0
              #                     186  clusters_39_1 = i32 0_0 
              #                    occupy a1 with clusters_39_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_59 
    j       .while.head_59
              #                    regtab     a0:Freed { symidx: i_39_8, tracked: true } |     a1:Freed { symidx: clusters_39_1, tracked: true } |     a2:Freed { symidx: temp_13_ret_of_getint_39_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_43_0, tracked: true } |     a4:Freed { symidx: temp_23_cmp_49_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     139  label while.head_59: 
.while.head_59:
              #                     138  temp_24_cmp_58_0 = icmp i32 Slt i_39_8, temp_13_ret_of_getint_39_0 
              #                    occupy a0 with i_39_8
              #                    occupy a2 with temp_13_ret_of_getint_39_0
              #                    occupy a5 with temp_24_cmp_58_0
    slt     a5,a0,a2
              #                    free a0
              #                    free a2
              #                    free a5
              #                     142  br i1 temp_24_cmp_58_0, label while.body_59, label while.exit_59 
              #                    occupy a5 with temp_24_cmp_58_0
              #                    free a5
              #                    occupy a5 with temp_24_cmp_58_0
    bnez    a5, .while.body_59
              #                    free a5
    j       .while.exit_59
              #                    regtab     a0:Freed { symidx: i_39_8, tracked: true } |     a1:Freed { symidx: clusters_39_1, tracked: true } |     a2:Freed { symidx: temp_13_ret_of_getint_39_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_43_0, tracked: true } |     a4:Freed { symidx: temp_23_cmp_49_0, tracked: true } |     a5:Freed { symidx: temp_24_cmp_58_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     140  label while.body_59: 
.while.body_59:
              #                     146  temp_25_ptr_of_*parent_0_61 = GEP *parent_0:Array:i32:[None] [Some(i_39_8)] 
              #                    occupy a6 with temp_25_ptr_of_*parent_0_61
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_39_8
    mv      a7, a0
              #                    free a0
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy s1 with *parent_0
              #                       load label parent as ptr to reg
    la      s1, parent
              #                    occupy reg s1 with *parent_0
    add     a6,a6,s1
              #                    free s1
              #                    free a6
              #                     148  temp_26_ele_of_*parent_0_61_0 = load temp_25_ptr_of_*parent_0_61:ptr->i32 
              #                    occupy a6 with temp_25_ptr_of_*parent_0_61
              #                    occupy s2 with temp_26_ele_of_*parent_0_61_0
    lw      s2,0(a6)
              #                    free s2
              #                    free a6
              #                     149  mu parent_0_12:148 
              #                     151  temp_27_cmp_61_0 = icmp i32 Eq temp_26_ele_of_*parent_0_61_0, i_39_8 
              #                    occupy s2 with temp_26_ele_of_*parent_0_61_0
              #                    occupy a0 with i_39_8
              #                    occupy s3 with temp_27_cmp_61_0
    xor     s3,s2,a0
    seqz    s3, s3
              #                    free s2
              #                    free a0
              #                    free s3
              #                     154  br i1 temp_27_cmp_61_0, label branch_true_62, label UP_15_0 
              #                    occupy s3 with temp_27_cmp_61_0
              #                    free s3
              #                    occupy s3 with temp_27_cmp_61_0
    bnez    s3, .branch_true_62
              #                    free s3
    j       .UP_15_0
              #                    regtab     a0:Freed { symidx: i_39_8, tracked: true } |     a1:Freed { symidx: clusters_39_1, tracked: true } |     a2:Freed { symidx: temp_13_ret_of_getint_39_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_43_0, tracked: true } |     a4:Freed { symidx: temp_23_cmp_49_0, tracked: true } |     a5:Freed { symidx: temp_24_cmp_58_0, tracked: true } |     a6:Freed { symidx: temp_25_ptr_of_*parent_0_61, tracked: true } |     s2:Freed { symidx: temp_26_ele_of_*parent_0_61_0, tracked: true } |     s3:Freed { symidx: temp_27_cmp_61_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     152  label branch_true_62: 
.branch_true_62:
              #                     219  untrack temp_27_cmp_61_0 
              #                    occupy s3 with temp_27_cmp_61_0
              #                    release s3 with temp_27_cmp_61_0
              #                     218  untrack temp_24_cmp_58_0 
              #                    occupy a5 with temp_24_cmp_58_0
              #                    release a5 with temp_24_cmp_58_0
              #                     217  untrack temp_26_ele_of_*parent_0_61_0 
              #                    occupy s2 with temp_26_ele_of_*parent_0_61_0
              #                    release s2 with temp_26_ele_of_*parent_0_61_0
              #                     216  untrack temp_25_ptr_of_*parent_0_61 
              #                    occupy a6 with temp_25_ptr_of_*parent_0_61
              #                    release a6 with temp_25_ptr_of_*parent_0_61
              #                     106  temp_16_arithop_61_0 = Add i32 clusters_39_1, 1_0 
              #                    occupy a1 with clusters_39_1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_16_arithop_61_0
    ADDW    a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                     107  (nop) 
              #                     187  clusters_39_3 = i32 temp_16_arithop_61_0 
              #                    occupy a6 with temp_16_arithop_61_0
              #                    occupy a7 with clusters_39_3
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                     220  untrack temp_16_arithop_61_0 
              #                    occupy a6 with temp_16_arithop_61_0
              #                    release a6 with temp_16_arithop_61_0
              #                          jump label: branch_false_62 
    j       .branch_false_62
              #                    regtab     a0:Freed { symidx: i_39_8, tracked: true } |     a1:Freed { symidx: clusters_39_1, tracked: true } |     a2:Freed { symidx: temp_13_ret_of_getint_39_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_43_0, tracked: true } |     a4:Freed { symidx: temp_23_cmp_49_0, tracked: true } |     a7:Freed { symidx: clusters_39_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     153  label branch_false_62: 
.branch_false_62:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: i_39_8, tracked: true } |     a1:Freed { symidx: clusters_39_1, tracked: true } |     a2:Freed { symidx: temp_13_ret_of_getint_39_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_43_0, tracked: true } |     a4:Freed { symidx: temp_23_cmp_49_0, tracked: true } |     a7:Freed { symidx: clusters_39_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     103  temp_15_arithop_60_0 = Add i32 i_39_8, 1_0 
              #                    occupy a0 with i_39_8
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_15_arithop_60_0
    ADDW    a6,a0,a5
              #                    free a0
              #                    free a5
              #                    free a6
              #                     104  (nop) 
              #                     188  i_39_8 = i32 temp_15_arithop_60_0 
              #                    occupy a6 with temp_15_arithop_60_0
              #                    occupy a0 with i_39_8
    mv      a0, a6
              #                    free a6
              #                    free a0
              #                     189  clusters_39_1 = i32 clusters_39_3 
              #                    occupy a7 with clusters_39_3
              #                    occupy a1 with clusters_39_1
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                          jump label: while.head_59 
              #                    occupy a7 with clusters_39_3
              #                    store to clusters_39_3 in mem offset legal
    sw      a7,56(sp)
              #                    release a7 with clusters_39_3
              #                    occupy a6 with temp_15_arithop_60_0
              #                    store to temp_15_arithop_60_0 in mem offset legal
    sw      a6,52(sp)
              #                    release a6 with temp_15_arithop_60_0
    j       .while.head_59
              #                    regtab     a0:Freed { symidx: i_39_8, tracked: true } |     a1:Freed { symidx: clusters_39_1, tracked: true } |     a2:Freed { symidx: temp_13_ret_of_getint_39_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_43_0, tracked: true } |     a4:Freed { symidx: temp_23_cmp_49_0, tracked: true } |     a5:Freed { symidx: temp_24_cmp_58_0, tracked: true } |     a6:Freed { symidx: temp_25_ptr_of_*parent_0_61, tracked: true } |     s2:Freed { symidx: temp_26_ele_of_*parent_0_61_0, tracked: true } |     s3:Freed { symidx: temp_27_cmp_61_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     180  label UP_15_0: 
.UP_15_0:
              #                     190  clusters_39_3 = i32 clusters_39_1 
              #                    occupy a1 with clusters_39_1
              #                    occupy a7 with clusters_39_3
    mv      a7, a1
              #                    free a1
              #                    free a7
              #                          jump label: branch_false_62 
              #                    occupy s2 with temp_26_ele_of_*parent_0_61_0
              #                    store to temp_26_ele_of_*parent_0_61_0 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_26_ele_of_*parent_0_61_0
              #                    occupy a6 with temp_25_ptr_of_*parent_0_61
              #                    store to temp_25_ptr_of_*parent_0_61 in mem offset legal
    sd      a6,8(sp)
              #                    release a6 with temp_25_ptr_of_*parent_0_61
              #                    occupy s3 with temp_27_cmp_61_0
              #                    store to temp_27_cmp_61_0 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_27_cmp_61_0
              #                    occupy a5 with temp_24_cmp_58_0
              #                    store to temp_24_cmp_58_0 in mem offset legal
    sb      a5,17(sp)
              #                    release a5 with temp_24_cmp_58_0
    j       .branch_false_62
              #                    regtab     a0:Freed { symidx: i_39_8, tracked: true } |     a1:Freed { symidx: clusters_39_1, tracked: true } |     a2:Freed { symidx: temp_13_ret_of_getint_39_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_43_0, tracked: true } |     a4:Freed { symidx: temp_23_cmp_49_0, tracked: true } |     a5:Freed { symidx: temp_24_cmp_58_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     141  label while.exit_59: 
.while.exit_59:
              #                     215  untrack temp_13_ret_of_getint_39_0 
              #                    occupy a2 with temp_13_ret_of_getint_39_0
              #                    release a2 with temp_13_ret_of_getint_39_0
              #                     214  untrack i_39_8 
              #                    occupy a0 with i_39_8
              #                    release a0 with i_39_8
              #                     99    Call void putint_0(clusters_39_1) 
              #                    saved register dumping to mem
              #                    occupy a1 with clusters_39_1
              #                    store to clusters_39_1 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with clusters_39_1
              #                    occupy a3 with temp_22_cmp_43_0
              #                    store to temp_22_cmp_43_0 in mem offset legal
    sb      a3,19(sp)
              #                    release a3 with temp_22_cmp_43_0
              #                    occupy a4 with temp_23_cmp_49_0
              #                    store to temp_23_cmp_49_0 in mem offset legal
    sb      a4,18(sp)
              #                    release a4 with temp_23_cmp_49_0
              #                    occupy a5 with temp_24_cmp_58_0
              #                    store to temp_24_cmp_58_0 in mem offset legal
    sb      a5,17(sp)
              #                    release a5 with temp_24_cmp_58_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_clusters_39_1_0
              #                    load from clusters_39_1 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    putint
              #                     221  untrack clusters_39_1 
              #                     169  mu parent_0_12:101 
              #                     101  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,112(sp)
              #                    load from s0_main_0 in mem
    ld      s0,104(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,120
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl parent
              #                     19   global Array:i32:[Some(1005_0)] parent_0 
    .type parent,@object
parent:
    .zero 4020
    .align 4
    .globl maxN
              #                     17   global i32 maxN_0 
    .type maxN,@object
maxN:
    .word 1005
