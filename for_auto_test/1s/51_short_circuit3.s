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
              #                     19   Define set_a_0 "val_17_0," -> set_a_ret_0 
    .globl set_a
    .type set_a,@function
set_a:
              #                    mem layout:|ra_set_a:8 at 16|s0_set_a:8 at 8|val _s17 _i0:4 at 4|temp_0_value_from_ptr _s19 _i0:4 at 0
    addi    sp,sp,-24
              #                    store to ra_set_a_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_set_a_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     278  a_0_1 = chi a_0_0:19 
              #                     26   alloc i32 [temp_0_value_from_ptr_19] 
              #                    regtab     a0:Freed { symidx: val_17_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L23_0: 
.L23_0:
              #                     23   store val_17_0:i32 *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a0 with val_17_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     306  untrack val_17_0 
              #                    occupy a0 with val_17_0
              #                    release a0 with val_17_0
              #                     24   a_0_2 = chi a_0_1:23 
              #                     27   temp_0_value_from_ptr_19_0 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a2 with temp_0_value_from_ptr_19_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     28   mu a_0_2:27 
              #                     279  mu a_0_2:29 
              #                     29   ret temp_0_value_from_ptr_19_0 
              #                    load from ra_set_a_0 in mem
    ld      ra,16(sp)
              #                    load from s0_set_a_0 in mem
    ld      s0,8(sp)
              #                    occupy a2 with temp_0_value_from_ptr_19_0
              #                    store to temp_0_value_from_ptr_19_0 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_0_value_from_ptr_19_0
              #                    occupy a0 with temp_0_value_from_ptr_19_0
              #                    load from temp_0_value_from_ptr_19_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     20   Define set_b_0 "val_22_0," -> set_b_ret_0 
    .globl set_b
    .type set_b,@function
set_b:
              #                    mem layout:|ra_set_b:8 at 16|s0_set_b:8 at 8|val _s22 _i0:4 at 4|temp_1_value_from_ptr _s24 _i0:4 at 0
    addi    sp,sp,-24
              #                    store to ra_set_b_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_set_b_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     280  b_0_1 = chi b_0_0:20 
              #                     35   alloc i32 [temp_1_value_from_ptr_24] 
              #                    regtab     a0:Freed { symidx: val_22_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L22_0: 
.L22_0:
              #                     32   store val_22_0:i32 *b_0:ptr->i32 
              #                    occupy a1 with *b_0
              #                       load label b as ptr to reg
    la      a1, b
              #                    occupy reg a1 with *b_0
              #                    occupy a0 with val_22_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     307  untrack val_22_0 
              #                    occupy a0 with val_22_0
              #                    release a0 with val_22_0
              #                     33   b_0_2 = chi b_0_1:32 
              #                     36   temp_1_value_from_ptr_24_0 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a2 with temp_1_value_from_ptr_24_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     37   mu b_0_2:36 
              #                     281  mu b_0_2:38 
              #                     38   ret temp_1_value_from_ptr_24_0 
              #                    load from ra_set_b_0 in mem
    ld      ra,16(sp)
              #                    load from s0_set_b_0 in mem
    ld      s0,8(sp)
              #                    occupy a2 with temp_1_value_from_ptr_24_0
              #                    store to temp_1_value_from_ptr_24_0 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_1_value_from_ptr_24_0
              #                    occupy a0 with temp_1_value_from_ptr_24_0
              #                    load from temp_1_value_from_ptr_24_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     21   Define set_d_0 "val_27_0," -> set_d_ret_0 
    .globl set_d
    .type set_d,@function
set_d:
              #                    mem layout:|ra_set_d:8 at 16|s0_set_d:8 at 8|val _s27 _i0:4 at 4|temp_2_value_from_ptr _s29 _i0:4 at 0
    addi    sp,sp,-24
              #                    store to ra_set_d_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_set_d_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     282  d_0_1 = chi d_0_0:21 
              #                     44   alloc i32 [temp_2_value_from_ptr_29] 
              #                    regtab     a0:Freed { symidx: val_27_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L21_0: 
.L21_0:
              #                     41   store val_27_0:i32 *d_0:ptr->i32 
              #                    occupy a1 with *d_0
              #                       load label d as ptr to reg
    la      a1, d
              #                    occupy reg a1 with *d_0
              #                    occupy a0 with val_27_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     308  untrack val_27_0 
              #                    occupy a0 with val_27_0
              #                    release a0 with val_27_0
              #                     42   d_0_2 = chi d_0_1:41 
              #                     45   temp_2_value_from_ptr_29_0 = load *d_0:ptr->i32 
              #                    occupy a0 with *d_0
              #                       load label d as ptr to reg
    la      a0, d
              #                    occupy reg a0 with *d_0
              #                    occupy a2 with temp_2_value_from_ptr_29_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     46   mu d_0_2:45 
              #                     283  mu d_0_2:47 
              #                     47   ret temp_2_value_from_ptr_29_0 
              #                    load from ra_set_d_0 in mem
    ld      ra,16(sp)
              #                    load from s0_set_d_0 in mem
    ld      s0,8(sp)
              #                    occupy a2 with temp_2_value_from_ptr_29_0
              #                    store to temp_2_value_from_ptr_29_0 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_2_value_from_ptr_29_0
              #                    occupy a0 with temp_2_value_from_ptr_29_0
              #                    load from temp_2_value_from_ptr_29_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     22   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 72|s0_main:8 at 64|temp_3_value_from_ptr _s33 _i0:4 at 60|temp_4_value_from_ptr _s33 _i0:4 at 56|temp_5_value_from_ptr _s33 _i0:4 at 52|temp_6_value_from_ptr _s33 _i0:4 at 48|temp_7_value_from_ptr _s33 _i0:4 at 44|temp_8_value_from_ptr _s33 _i0:4 at 40|temp_9_ret_of_set_a _s36 _i0:4 at 36|temp_10_ret_of_set_b _s36 _i0:4 at 32|temp_11_i32_to_bool _s36 _i0:1 at 31|temp_12_i32_to_bool _s36 _i0:1 at 30|none:2 at 28|temp_13_ret_of_set_a _s45 _i0:4 at 24|temp_14_ret_of_set_b _s45 _i0:4 at 20|temp_15_i32_to_bool _s45 _i0:1 at 19|temp_16_i32_to_bool _s45 _i0:1 at 18|none:2 at 16|temp_17_ret_of_set_d _s54 _i0:4 at 12|temp_18_i32_to_bool _s54 _i0:1 at 11|none:3 at 8|temp_19_ret_of_set_d _s59 _i0:4 at 4|temp_20_i32_to_bool _s59 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-80
              #                    store to ra_main_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                     284  b_0_3 = chi b_0_0:22 
              #                     285  d_0_3 = chi d_0_0:22 
              #                     286  a_0_3 = chi a_0_0:22 
              #                     54   alloc i32 [temp_3_value_from_ptr_33] 
              #                     59   alloc i32 [temp_4_value_from_ptr_33] 
              #                     68   alloc i32 [temp_5_value_from_ptr_33] 
              #                     73   alloc i32 [temp_6_value_from_ptr_33] 
              #                     79   alloc i32 [c_33] 
              #                     82   alloc i32 [temp_7_value_from_ptr_33] 
              #                     87   alloc i32 [temp_8_value_from_ptr_33] 
              #                     94   alloc i32 [i0_33] 
              #                     96   alloc i32 [i1_33] 
              #                     98   alloc i32 [i2_33] 
              #                     100  alloc i32 [i3_33] 
              #                     102  alloc i32 [i4_33] 
              #                     117  alloc i32 [temp_9_ret_of_set_a_36] 
              #                     119  alloc i32 [temp_10_ret_of_set_b_36] 
              #                     121  alloc i1 [temp_11_i32_to_bool_36] 
              #                     123  alloc i1 [temp_12_i32_to_bool_36] 
              #                     130  alloc i32 [temp_13_ret_of_set_a_45] 
              #                     132  alloc i32 [temp_14_ret_of_set_b_45] 
              #                     134  alloc i1 [temp_15_i32_to_bool_45] 
              #                     136  alloc i1 [temp_16_i32_to_bool_45] 
              #                     144  alloc i32 [temp_17_ret_of_set_d_54] 
              #                     146  alloc i1 [temp_18_i32_to_bool_54] 
              #                     154  alloc i32 [temp_19_ret_of_set_d_59] 
              #                     156  alloc i1 [temp_20_i32_to_bool_59] 
              #                     169  alloc i32 [temp_21__71] 
              #                     171  alloc i1 [temp_22_cmp_71] 
              #                     176  alloc i32 [temp_23__75] 
              #                     178  alloc i1 [temp_24_cmp_75] 
              #                     183  alloc i32 [temp_25__79] 
              #                     185  alloc i1 [temp_26_cmp_79] 
              #                     193  alloc i1 [temp_27_i32_to_bool_87] 
              #                     195  alloc i1 [temp_28_i32_to_bool_87] 
              #                     204  alloc i1 [temp_29_i32_to_bool_90] 
              #                     206  alloc i1 [temp_30_i32_to_bool_90] 
              #                     214  alloc i1 [temp_31_cmp_93] 
              #                     216  alloc i1 [temp_32_cmp_93] 
              #                     224  alloc i1 [temp_33_cmp_96] 
              #                     226  alloc i1 [temp_34_cmp_96] 
              #                     234  alloc i1 [temp_35_booltrans_100] 
              #                     236  alloc i1 [temp_36_logicnot_100] 
              #                     238  alloc i32 [temp_37__100] 
              #                     240  alloc i1 [temp_38_cmp_100] 
              #                     242  alloc i1 [temp_39_cmp_100] 
              #                     249  alloc i1 [temp_40_cmp_100] 
              #                     255  alloc i1 [temp_41_booltrans_104] 
              #                     257  alloc i1 [temp_42_logicnot_104] 
              #                     259  alloc i32 [temp_43__104] 
              #                     261  alloc i1 [temp_44_cmp_104] 
              #                     263  alloc i1 [temp_45_cmp_104] 
              #                     265  alloc i1 [temp_46_cmp_104] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     50   store 2_0:i32 *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with 2_0
    li      a1, 2
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     51   a_0_4 = chi a_0_3:50 
              #                     52   store 3_0:i32 *b_0:ptr->i32 
              #                    occupy a2 with *b_0
              #                       load label b as ptr to reg
    la      a2, b
              #                    occupy reg a2 with *b_0
              #                    occupy a3 with 3_0
    li      a3, 3
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     53   b_0_4 = chi b_0_3:52 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     118  temp_9_ret_of_set_a_36_0 =  Call i32 set_a_0(0_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    set_a
              #                     287  mu a_0_4:118 
              #                     288  a_0_5 = chi a_0_4:118 
              #                     122  temp_11_i32_to_bool_36_0 = icmp i32 Ne temp_9_ret_of_set_a_36_0, 0_0 
              #                    occupy a0 with temp_9_ret_of_set_a_36_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_11_i32_to_bool_36_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     309  untrack temp_9_ret_of_set_a_36_0 
              #                    occupy a0 with temp_9_ret_of_set_a_36_0
              #                    release a0 with temp_9_ret_of_set_a_36_0
              #                     129  br i1 temp_11_i32_to_bool_36_0, label branch_short_circuit_p_true_307, label branch_short_circuit_c_true_307 
              #                    occupy a2 with temp_11_i32_to_bool_36_0
              #                    free a2
              #                    occupy a2 with temp_11_i32_to_bool_36_0
    bnez    a2, .branch_short_circuit_p_true_307
              #                    free a2
    j       .branch_short_circuit_c_true_307
              #                    regtab     a2:Freed { symidx: temp_11_i32_to_bool_36_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     126  label branch_short_circuit_p_true_307: 
.branch_short_circuit_p_true_307:
              #                     313  untrack temp_11_i32_to_bool_36_0 
              #                    occupy a2 with temp_11_i32_to_bool_36_0
              #                    release a2 with temp_11_i32_to_bool_36_0
              #                     120  temp_10_ret_of_set_b_36_0 =  Call i32 set_b_0(1_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    set_b
              #                     300  mu b_0_4:120 
              #                     301  b_0_9 = chi b_0_4:120 
              #                     124  temp_12_i32_to_bool_36_0 = icmp i32 Ne temp_10_ret_of_set_b_36_0, 0_0 
              #                    occupy a0 with temp_10_ret_of_set_b_36_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_12_i32_to_bool_36_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     338  untrack temp_10_ret_of_set_b_36_0 
              #                    occupy a0 with temp_10_ret_of_set_b_36_0
              #                    release a0 with temp_10_ret_of_set_b_36_0
              #                     128  br i1 temp_12_i32_to_bool_36_0, label branch_short_circuit_c_true_307, label branch_short_circuit_c_true_307 
              #                    occupy a2 with temp_12_i32_to_bool_36_0
              #                    free a2
              #                    occupy a2 with temp_12_i32_to_bool_36_0
              #                    store to temp_12_i32_to_bool_36_0 in mem offset legal
    sb      a2,30(sp)
              #                    release a2 with temp_12_i32_to_bool_36_0
              #                    occupy a2 with temp_11_i32_to_bool_36_0
              #                    load from temp_11_i32_to_bool_36_0 in mem


    lb      a2,31(sp)
              #                    occupy a0 with temp_12_i32_to_bool_36_0
              #                    load from temp_12_i32_to_bool_36_0 in mem


    lb      a0,30(sp)
    bnez    a0, .branch_short_circuit_c_true_307
              #                    free a0
              #                    occupy a0 with temp_12_i32_to_bool_36_0
              #                    store to temp_12_i32_to_bool_36_0 in mem offset legal
    sb      a0,30(sp)
              #                    release a0 with temp_12_i32_to_bool_36_0
    j       .branch_short_circuit_c_true_307
              #                    regtab     a2:Freed { symidx: temp_11_i32_to_bool_36_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     125  label branch_short_circuit_c_true_307: 
.branch_short_circuit_c_true_307:
              #                     340  untrack temp_12_i32_to_bool_36_0 
              #                     339  untrack temp_12_i32_to_bool_36_0 
              #                     312  untrack temp_12_i32_to_bool_36_0 
              #                     311  untrack temp_10_ret_of_set_b_36_0 
              #                     310  untrack temp_11_i32_to_bool_36_0 
              #                    occupy a2 with temp_11_i32_to_bool_36_0
              #                    release a2 with temp_11_i32_to_bool_36_0
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab  released_gpr_count:14,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     55   temp_3_value_from_ptr_33_0 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with temp_3_value_from_ptr_33_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     56   mu a_0_5:55 
              #                     57    Call void putint_0(temp_3_value_from_ptr_33_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_3_value_from_ptr_33_0
              #                    store to temp_3_value_from_ptr_33_0 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with temp_3_value_from_ptr_33_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_3_value_from_ptr_33_0_0
              #                    load from temp_3_value_from_ptr_33_0 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    putint
              #                     314  untrack temp_3_value_from_ptr_33_0 
              #                     58    Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     60   temp_4_value_from_ptr_33_0 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_4_value_from_ptr_33_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     61   mu b_0_5:60 
              #                     62    Call void putint_0(temp_4_value_from_ptr_33_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_4_value_from_ptr_33_0
              #                    store to temp_4_value_from_ptr_33_0 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with temp_4_value_from_ptr_33_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_4_value_from_ptr_33_0_0
              #                    load from temp_4_value_from_ptr_33_0 in mem


    lw      a0,56(sp)
              #                    arg load ended


    call    putint
              #                     315  untrack temp_4_value_from_ptr_33_0 
              #                     63    Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     64   store 2_0:i32 *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with 2_0
    li      a1, 2
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     65   a_0_6 = chi a_0_5:64 
              #                     66   store 3_0:i32 *b_0:ptr->i32 
              #                    occupy a2 with *b_0
              #                       load label b as ptr to reg
    la      a2, b
              #                    occupy reg a2 with *b_0
              #                    occupy a3 with 3_0
    li      a3, 3
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     67   b_0_6 = chi b_0_5:66 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab  released_gpr_count:10,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     131  temp_13_ret_of_set_a_45_0 =  Call i32 set_a_0(0_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    set_a
              #                     289  mu a_0_6:131 
              #                     290  a_0_7 = chi a_0_6:131 
              #                     135  temp_15_i32_to_bool_45_0 = icmp i32 Ne temp_13_ret_of_set_a_45_0, 0_0 
              #                    occupy a0 with temp_13_ret_of_set_a_45_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_15_i32_to_bool_45_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     316  untrack temp_13_ret_of_set_a_45_0 
              #                    occupy a0 with temp_13_ret_of_set_a_45_0
              #                    release a0 with temp_13_ret_of_set_a_45_0
              #                     143  br i1 temp_15_i32_to_bool_45_0, label branch_short_circuit_p_true_325, label branch_short_circuit_c_false_325 
              #                    occupy a2 with temp_15_i32_to_bool_45_0
              #                    free a2
              #                    occupy a2 with temp_15_i32_to_bool_45_0
    bnez    a2, .branch_short_circuit_p_true_325
              #                    free a2
    j       .branch_short_circuit_c_false_325
              #                    regtab     a2:Freed { symidx: temp_15_i32_to_bool_45_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     140  label branch_short_circuit_p_true_325: 
.branch_short_circuit_p_true_325:
              #                     320  untrack temp_15_i32_to_bool_45_0 
              #                    occupy a2 with temp_15_i32_to_bool_45_0
              #                    release a2 with temp_15_i32_to_bool_45_0
              #                     133  temp_14_ret_of_set_b_45_0 =  Call i32 set_b_0(1_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    set_b
              #                     298  mu b_0_6:133 
              #                     299  b_0_8 = chi b_0_6:133 
              #                     137  temp_16_i32_to_bool_45_0 = icmp i32 Ne temp_14_ret_of_set_b_45_0, 0_0 
              #                    occupy a0 with temp_14_ret_of_set_b_45_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_16_i32_to_bool_45_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     335  untrack temp_14_ret_of_set_b_45_0 
              #                    occupy a0 with temp_14_ret_of_set_b_45_0
              #                    release a0 with temp_14_ret_of_set_b_45_0
              #                     142  br i1 temp_16_i32_to_bool_45_0, label branch_short_circuit_c_true_325, label branch_short_circuit_c_false_325 
              #                    occupy a2 with temp_16_i32_to_bool_45_0
              #                    free a2
              #                    occupy a2 with temp_16_i32_to_bool_45_0
    bnez    a2, .branch_short_circuit_c_true_325
              #                    free a2
              #                    occupy a2 with temp_16_i32_to_bool_45_0
              #                    store to temp_16_i32_to_bool_45_0 in mem offset legal
    sb      a2,18(sp)
              #                    release a2 with temp_16_i32_to_bool_45_0
              #                    occupy a2 with temp_15_i32_to_bool_45_0
              #                    load from temp_15_i32_to_bool_45_0 in mem


    lb      a2,19(sp)
    j       .branch_short_circuit_c_false_325
              #                    regtab     a2:Freed { symidx: temp_16_i32_to_bool_45_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     138  label branch_short_circuit_c_true_325: 
.branch_short_circuit_c_true_325:
              #                     336  untrack temp_16_i32_to_bool_45_0 
              #                    occupy a2 with temp_16_i32_to_bool_45_0
              #                    release a2 with temp_16_i32_to_bool_45_0
              #                          jump label: branch_short_circuit_c_false_325 
              #                    occupy a2 with temp_15_i32_to_bool_45_0
              #                    load from temp_15_i32_to_bool_45_0 in mem


    lb      a2,19(sp)
    j       .branch_short_circuit_c_false_325
              #                    regtab     a2:Freed { symidx: temp_15_i32_to_bool_45_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     139  label branch_short_circuit_c_false_325: 
.branch_short_circuit_c_false_325:
              #                     337  untrack temp_16_i32_to_bool_45_0 
              #                     319  untrack temp_15_i32_to_bool_45_0 
              #                    occupy a2 with temp_15_i32_to_bool_45_0
              #                    release a2 with temp_15_i32_to_bool_45_0
              #                     318  untrack temp_14_ret_of_set_b_45_0 
              #                     317  untrack temp_16_i32_to_bool_45_0 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab  released_gpr_count:9,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     69   temp_5_value_from_ptr_33_0 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with temp_5_value_from_ptr_33_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     70   mu a_0_7:69 
              #                     71    Call void putint_0(temp_5_value_from_ptr_33_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_5_value_from_ptr_33_0
              #                    store to temp_5_value_from_ptr_33_0 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with temp_5_value_from_ptr_33_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_5_value_from_ptr_33_0_0
              #                    load from temp_5_value_from_ptr_33_0 in mem


    lw      a0,52(sp)
              #                    arg load ended


    call    putint
              #                     321  untrack temp_5_value_from_ptr_33_0 
              #                     72    Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     74   temp_6_value_from_ptr_33_0 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_6_value_from_ptr_33_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     75   mu b_0_7:74 
              #                     76    Call void putint_0(temp_6_value_from_ptr_33_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_6_value_from_ptr_33_0
              #                    store to temp_6_value_from_ptr_33_0 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with temp_6_value_from_ptr_33_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_6_value_from_ptr_33_0_0
              #                    load from temp_6_value_from_ptr_33_0 in mem


    lw      a0,48(sp)
              #                    arg load ended


    call    putint
              #                     322  untrack temp_6_value_from_ptr_33_0 
              #                     77    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     78   (nop) 
              #                     80   store 2_0:i32 *d_0:ptr->i32 
              #                    occupy a0 with *d_0
              #                       load label d as ptr to reg
    la      a0, d
              #                    occupy reg a0 with *d_0
              #                    occupy a1 with 2_0
    li      a1, 2
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     81   d_0_4 = chi d_0_3:80 
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                          jump label: branch_short_circuit_p_true_343 
    j       .branch_short_circuit_p_true_343
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     150  label branch_short_circuit_p_true_343: 
.branch_short_circuit_p_true_343:
              #                     145  temp_17_ret_of_set_d_54_0 =  Call i32 set_d_0(3_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    arg load ended


    call    set_d
              #                     296  mu d_0_4:145 
              #                     297  d_0_8 = chi d_0_4:145 
              #                     147  temp_18_i32_to_bool_54_0 = icmp i32 Ne temp_17_ret_of_set_d_54_0, 0_0 
              #                    occupy a0 with temp_17_ret_of_set_d_54_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_18_i32_to_bool_54_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_17_ret_of_set_d_54_0
              #                    store to temp_17_ret_of_set_d_54_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_17_ret_of_set_d_54_0
              #                    free a1
              #                    free a2
              #                     332  untrack temp_17_ret_of_set_d_54_0 
              #                     152  br i1 temp_18_i32_to_bool_54_0, label branch_short_circuit_c_true_343, label branch_short_circuit_c_false_343 
              #                    occupy a2 with temp_18_i32_to_bool_54_0
              #                    free a2
              #                    occupy a2 with temp_18_i32_to_bool_54_0
    bnez    a2, .branch_short_circuit_c_true_343
              #                    free a2
    j       .branch_short_circuit_c_false_343
              #                    regtab     a2:Freed { symidx: temp_18_i32_to_bool_54_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     148  label branch_short_circuit_c_true_343: 
.branch_short_circuit_c_true_343:
              #                     333  untrack temp_18_i32_to_bool_54_0 
              #                    occupy a2 with temp_18_i32_to_bool_54_0
              #                    release a2 with temp_18_i32_to_bool_54_0
              #                          jump label: branch_short_circuit_c_false_343 
              #                    occupy a2 with temp_18_i32_to_bool_54_0
              #                    load from temp_18_i32_to_bool_54_0 in mem


    lb      a2,11(sp)
    j       .branch_short_circuit_c_false_343
              #                    regtab     a2:Freed { symidx: temp_18_i32_to_bool_54_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     149  label branch_short_circuit_c_false_343: 
.branch_short_circuit_c_false_343:
              #                     334  untrack temp_18_i32_to_bool_54_0 
              #                    occupy a2 with temp_18_i32_to_bool_54_0
              #                    release a2 with temp_18_i32_to_bool_54_0
              #                     324  untrack temp_17_ret_of_set_d_54_0 
              #                     323  untrack temp_18_i32_to_bool_54_0 
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     83   temp_7_value_from_ptr_33_0 = load *d_0:ptr->i32 
              #                    occupy a0 with *d_0
              #                       load label d as ptr to reg
    la      a0, d
              #                    occupy reg a0 with *d_0
              #                    occupy a1 with temp_7_value_from_ptr_33_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_7_value_from_ptr_33_0
              #                    store to temp_7_value_from_ptr_33_0 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with temp_7_value_from_ptr_33_0
              #                    free a0
              #                     84   mu d_0_5:83 
              #                     85    Call void putint_0(temp_7_value_from_ptr_33_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_7_value_from_ptr_33_0_0
              #                    load from temp_7_value_from_ptr_33_0 in mem


    lw      a0,44(sp)
              #                    arg load ended


    call    putint
              #                     325  untrack temp_7_value_from_ptr_33_0 
              #                     86    Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                          jump label: branch_short_circuit_c_true_357 
    j       .branch_short_circuit_c_true_357
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     158  label branch_short_circuit_c_true_357: 
.branch_short_circuit_c_true_357:
              #                     331  untrack temp_20_i32_to_bool_59_0 
              #                     330  untrack temp_20_i32_to_bool_59_0 
              #                     327  untrack temp_19_ret_of_set_d_59_0 
              #                     326  untrack temp_20_i32_to_bool_59_0 
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     88   temp_8_value_from_ptr_33_0 = load *d_0:ptr->i32 
              #                    occupy a0 with *d_0
              #                       load label d as ptr to reg
    la      a0, d
              #                    occupy reg a0 with *d_0
              #                    occupy a1 with temp_8_value_from_ptr_33_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_8_value_from_ptr_33_0
              #                    store to temp_8_value_from_ptr_33_0 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with temp_8_value_from_ptr_33_0
              #                    free a0
              #                     89   mu d_0_6:88 
              #                     90    Call void putint_0(temp_8_value_from_ptr_33_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_8_value_from_ptr_33_0_0
              #                    load from temp_8_value_from_ptr_33_0 in mem


    lw      a0,40(sp)
              #                    arg load ended


    call    putint
              #                     328  untrack temp_8_value_from_ptr_33_0 
              #                     91    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                          jump label: branch_true_65 
    j       .branch_true_65
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     163  label branch_true_65: 
.branch_true_65:
              #                     116   Call void putch_0(65_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_65_0_0
    li      a0, 65
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_65 
    j       .branch_false_65
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     164  label branch_false_65: 
.branch_false_65:
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                          jump label: branch_false_69 
    j       .branch_false_69
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     166  label branch_true_69: 
.branch_true_69:
              #                     115   Call void putch_0(66_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_66_0_0
    li      a0, 66
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_69 
    j       .branch_false_69
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     167  label branch_false_69: 
.branch_false_69:
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     170  (nop) 
              #                     172  (nop) 
              #                          jump label: branch_false_72 
    j       .branch_false_72
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     173  label branch_true_72: 
.branch_true_72:
              #                     114   Call void putch_0(67_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_67_0_0
    li      a0, 67
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_72 
    j       .branch_false_72
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     174  label branch_false_72: 
.branch_false_72:
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L12_0: 
.L12_0:
              #                     177  (nop) 
              #                     179  (nop) 
              #                          jump label: branch_true_76 
    j       .branch_true_76
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     180  label branch_true_76: 
.branch_true_76:
              #                     113   Call void putch_0(68_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_68_0_0
    li      a0, 68
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_76 
    j       .branch_false_76
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     181  label branch_false_76: 
.branch_false_76:
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L13_0: 
.L13_0:
              #                     184  (nop) 
              #                     186  (nop) 
              #                          jump label: branch_false_80 
    j       .branch_false_80
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     187  label branch_true_80: 
.branch_true_80:
              #                     112   Call void putch_0(69_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_69_0_0
    li      a0, 69
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_80 
    j       .branch_false_80
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     188  label branch_false_80: 
.branch_false_80:
              #                          jump label: L14_0 
    j       .L14_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L14_0: 
.L14_0:
              #                          jump label: branch_true_83 
    j       .branch_true_83
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     190  label branch_true_83: 
.branch_true_83:
              #                     111   Call void putch_0(70_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_70_0_0
    li      a0, 70
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_83 
    j       .branch_false_83
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     191  label branch_false_83: 
.branch_false_83:
              #                          jump label: L15_0 
    j       .L15_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L15_0: 
.L15_0:
              #                     92    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     93   (nop) 
              #                     95   (nop) 
              #                     97   (nop) 
              #                     99   (nop) 
              #                     101  (nop) 
              #                          jump label: while.head_88 
    j       .while.head_88
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     202  label while.head_88: 
.while.head_88:
              #                     194  (nop) 
              #                          jump label: branch_short_circuit_c_false_440 
    j       .branch_short_circuit_c_false_440
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     199  label branch_short_circuit_p_true_440: 
.branch_short_circuit_p_true_440:
              #                     196  (nop) 
              #                          jump label: branch_short_circuit_c_true_440 
    j       .branch_short_circuit_c_true_440
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     197  label branch_short_circuit_c_true_440: 
.branch_short_circuit_c_true_440:
              #                     110   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          jump label: while.head_88 
    j       .while.head_88
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     198  label branch_short_circuit_c_false_440: 
.branch_short_circuit_c_false_440:
              #                     205  (nop) 
              #                          jump label: branch_short_circuit_p_false_448 
    j       .branch_short_circuit_p_false_448
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     208  label branch_short_circuit_c_true_448: 
.branch_short_circuit_c_true_448:
              #                     109   Call void putch_0(67_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_67_0_0
    li      a0, 67
              #                    arg load ended


    call    putch
              #                          jump label: branch_short_circuit_c_false_448 
    j       .branch_short_circuit_c_false_448
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     209  label branch_short_circuit_c_false_448: 
.branch_short_circuit_c_false_448:
              #                          jump label: L16_0 
    j       .L16_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L16_0: 
.L16_0:
              #                     215  (nop) 
              #                          jump label: branch_short_circuit_p_false_456 
    j       .branch_short_circuit_p_false_456
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     218  label branch_short_circuit_c_true_456: 
.branch_short_circuit_c_true_456:
              #                     108   Call void putch_0(72_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_72_0_0
    li      a0, 72
              #                    arg load ended


    call    putch
              #                          jump label: branch_short_circuit_c_false_456 
    j       .branch_short_circuit_c_false_456
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     219  label branch_short_circuit_c_false_456: 
.branch_short_circuit_c_false_456:
              #                          jump label: L17_0 
    j       .L17_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L17_0: 
.L17_0:
              #                     225  (nop) 
              #                          jump label: branch_short_circuit_p_true_468 
    j       .branch_short_circuit_p_true_468
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     230  label branch_short_circuit_p_true_468: 
.branch_short_circuit_p_true_468:
              #                     227  (nop) 
              #                          jump label: branch_short_circuit_c_true_468 
    j       .branch_short_circuit_c_true_468
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     228  label branch_short_circuit_c_true_468: 
.branch_short_circuit_c_true_468:
              #                     107   Call void putch_0(73_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_73_0_0
    li      a0, 73
              #                    arg load ended


    call    putch
              #                          jump label: branch_short_circuit_c_false_468 
    j       .branch_short_circuit_c_false_468
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     229  label branch_short_circuit_c_false_468: 
.branch_short_circuit_c_false_468:
              #                          jump label: L18_0 
    j       .L18_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L18_0: 
.L18_0:
              #                     235  (nop) 
              #                     237  (nop) 
              #                     239  (nop) 
              #                     241  (nop) 
              #                          jump label: branch_short_circuit_p_true_483 
    j       .branch_short_circuit_p_true_483
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     246  label branch_short_circuit_p_true_483: 
.branch_short_circuit_p_true_483:
              #                     243  (nop) 
              #                          jump label: branch_short_circuit_c_false_483 
    j       .branch_short_circuit_c_false_483
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     244  label branch_short_circuit_c_true_483: 
.branch_short_circuit_c_true_483:
              #                     106   Call void putch_0(74_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_74_0_0
    li      a0, 74
              #                    arg load ended


    call    putch
              #                          jump label: branch_short_circuit_c_false_481 
    j       .branch_short_circuit_c_false_481
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     251  label branch_short_circuit_c_false_481: 
.branch_short_circuit_c_false_481:
              #                          jump label: L19_0 
    j       .L19_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L19_0: 
.L19_0:
              #                     256  (nop) 
              #                     258  (nop) 
              #                     260  (nop) 
              #                     262  (nop) 
              #                          jump label: branch_short_circuit_c_true_506 
    j       .branch_short_circuit_c_true_506
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     267  label branch_short_circuit_c_true_506: 
.branch_short_circuit_c_true_506:
              #                     105   Call void putch_0(75_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_75_0_0
    li      a0, 75
              #                    arg load ended


    call    putch
              #                          jump label: branch_short_circuit_c_false_506 
    j       .branch_short_circuit_c_false_506
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     268  label branch_short_circuit_c_false_506: 
.branch_short_circuit_c_false_506:
              #                          jump label: L20_0 
    j       .L20_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L20_0: 
.L20_0:
              #                     291  mu b_0_7:104 
              #                     292  mu d_0_6:104 
              #                     293  mu a_0_7:104 
              #                     104  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,72(sp)
              #                    load from s0_main_0 in mem
    ld      s0,64(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     272  label branch_short_circuit_p_false_500: 
.branch_short_circuit_p_false_500:
              #                     264  (nop) 
              #                          jump label: branch_short_circuit_c_false_506 
    j       .branch_short_circuit_c_false_506
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     269  label branch_short_circuit_p_true_506: 
.branch_short_circuit_p_true_506:
              #                     266  (nop) 
              #                          jump label: branch_short_circuit_c_true_506 
    j       .branch_short_circuit_c_true_506
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     245  label branch_short_circuit_c_false_483: 
.branch_short_circuit_c_false_483:
              #                     250  (nop) 
              #                          jump label: branch_short_circuit_c_true_483 
    j       .branch_short_circuit_c_true_483
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     220  label branch_short_circuit_p_false_456: 
.branch_short_circuit_p_false_456:
              #                     217  (nop) 
              #                          jump label: branch_short_circuit_c_false_456 
    j       .branch_short_circuit_c_false_456
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     210  label branch_short_circuit_p_false_448: 
.branch_short_circuit_p_false_448:
              #                     207  (nop) 
              #                          jump label: branch_short_circuit_c_true_448 
    j       .branch_short_circuit_c_true_448
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     159  label branch_short_circuit_p_false_357: 
.branch_short_circuit_p_false_357:
              #                     155  temp_19_ret_of_set_d_59_0 =  Call i32 set_d_0(4_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    arg load ended


    call    set_d
              #                     294  mu d_0_5:155 
              #                     295  d_0_7 = chi d_0_5:155 
              #                     157  temp_20_i32_to_bool_59_0 = icmp i32 Ne temp_19_ret_of_set_d_59_0, 0_0 
              #                    occupy a0 with temp_19_ret_of_set_d_59_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_20_i32_to_bool_59_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_19_ret_of_set_d_59_0
              #                    store to temp_19_ret_of_set_d_59_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_19_ret_of_set_d_59_0
              #                    free a1
              #                    free a2
              #                     329  untrack temp_19_ret_of_set_d_59_0 
              #                     161  br i1 temp_20_i32_to_bool_59_0, label branch_short_circuit_c_true_357, label branch_short_circuit_c_true_357 
              #                    occupy a2 with temp_20_i32_to_bool_59_0
              #                    free a2
              #                    occupy a2 with temp_20_i32_to_bool_59_0
              #                    store to temp_20_i32_to_bool_59_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_20_i32_to_bool_59_0
              #                    occupy a0 with temp_20_i32_to_bool_59_0
              #                    load from temp_20_i32_to_bool_59_0 in mem


    lb      a0,3(sp)
    bnez    a0, .branch_short_circuit_c_true_357
              #                    free a0
              #                    occupy a0 with temp_20_i32_to_bool_59_0
              #                    store to temp_20_i32_to_bool_59_0 in mem offset legal
    sb      a0,3(sp)
              #                    release a0 with temp_20_i32_to_bool_59_0
    j       .branch_short_circuit_c_true_357
.section ___var
    .data
    .align 4
    .globl d
              #                     17   global i32 d_0 
    .type d,@object
d:
    .word 0
    .align 4
    .globl b
              #                     16   global i32 b_0 
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
              #                     15   global i32 a_0 
    .type a,@object
a:
    .word 0
