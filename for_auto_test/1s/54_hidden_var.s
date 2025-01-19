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
              #                     35   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 432|s0_main:8 at 424|a _s19 _i0:4 at 420|a _s22 _i0:4 at 416|temp_5_ptr_of_*c_0:8 at 408|temp_6_array_init_ptr:8 at 400|temp_7_array_init_ptr:8 at 392|temp_8_array_init_ptr:8 at 384|temp_9_array_init_ptr:8 at 376|temp_10_array_init_ptr:8 at 368|c:64 at 304|temp_11_value_from_ptr _s19 _i0:4 at 300|none:4 at 296|temp_12_ptr_of_*c_0:8 at 288|temp_13_ele_of_*c_0 _s19 _i0:4 at 284|none:4 at 280|temp_14_ptr_of_*c_0:8 at 272|temp_15_ele_of_*c_0 _s19 _i0:4 at 268|none:4 at 264|temp_16_ptr_of_*c_0:8 at 256|temp_18_ptr_of_*c_0:8 at 248|temp_19_ele_of_*c_0 _s19 _i0:4 at 244|none:4 at 240|temp_20_array_init_ptr:8 at 232|temp_21_array_init_ptr:8 at 224|temp_22_array_init_ptr:8 at 216|temp_23_array_init_ptr:8 at 208|c:140 at 68|none:4 at 64|temp_24_ptr_of_c_52:8 at 56|temp_25_ele_of_c_52 _s52 _i0:4 at 52|none:4 at 48|temp_26_ptr_of_c_52:8 at 40|temp_27_ele_of_c_52 _s52 _i0:4 at 36|none:4 at 32|temp_28_ptr_of_c_52:8 at 24|temp_29_ele_of_c_52 _s52 _i0:4 at 20|none:4 at 16|temp_32_ptr_of_*c_0:8 at 8|temp_33_ele_of_*c_0 _s50 _i0:4 at 4|temp_34_ _s1322 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-440
              #                    store to ra_main_0 in mem offset legal
    sd      ra,432(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,424(sp)
    addi    s0,sp,440
              #                     172  c_0_1 = chi c_0_0:35 
              #                     36   alloc i32 [a_19] 
              #                     39   alloc i32 [a_22] 
              #                     49   alloc ptr->i32 [temp_5_ptr_of_*c_0_42] 
              #                     54   alloc ptr->i32 [temp_6_array_init_ptr_46] 
              #                     57   alloc ptr->i32 [temp_7_array_init_ptr_46] 
              #                     61   alloc ptr->i32 [temp_8_array_init_ptr_46] 
              #                     65   alloc ptr->i32 [temp_9_array_init_ptr_46] 
              #                     69   alloc ptr->i32 [temp_10_array_init_ptr_46] 
              #                     73   alloc Array:i32:[Some(2_0), Some(8_0)] [c_46] 
              #                     75   alloc i32 [b_48] 
              #                     77   alloc i32 [temp_11_value_from_ptr_19] 
              #                     82   alloc ptr->i32 [temp_12_ptr_of_*c_0_19] 
              #                     84   alloc i32 [temp_13_ele_of_*c_0_19] 
              #                     88   alloc ptr->i32 [temp_14_ptr_of_*c_0_19] 
              #                     90   alloc i32 [temp_15_ele_of_*c_0_19] 
              #                     94   alloc ptr->i32 [temp_16_ptr_of_*c_0_19] 
              #                     96   alloc i32 [temp_17_ele_of_*c_0_19] 
              #                     100  alloc ptr->i32 [temp_18_ptr_of_*c_0_19] 
              #                     102  alloc i32 [temp_19_ele_of_*c_0_19] 
              #                     110  alloc ptr->i32 [temp_20_array_init_ptr_52] 
              #                     113  alloc ptr->i32 [temp_21_array_init_ptr_52] 
              #                     117  alloc ptr->i32 [temp_22_array_init_ptr_52] 
              #                     121  alloc ptr->i32 [temp_23_array_init_ptr_52] 
              #                     125  alloc Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [c_52] 
              #                     126  alloc ptr->i32 [temp_24_ptr_of_c_52_52] 
              #                     128  alloc i32 [temp_25_ele_of_c_52_52] 
              #                     132  alloc ptr->i32 [temp_26_ptr_of_c_52_52] 
              #                     134  alloc i32 [temp_27_ele_of_c_52_52] 
              #                     138  alloc ptr->i32 [temp_28_ptr_of_c_52_52] 
              #                     140  alloc i32 [temp_29_ele_of_c_52_52] 
              #                     145  alloc i32 [a_33] 
              #                     146  alloc i32 [temp_30_arithop_33] 
              #                     149  alloc i1 [temp_31_cmp_31] 
              #                     155  alloc ptr->i32 [temp_32_ptr_of_*c_0_50] 
              #                     157  alloc i32 [temp_33_ele_of_*c_0_50] 
              #                     160  alloc i1 [temp_34__1322] 
              #                     167  alloc i1 [temp_35__953] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     37    
              #                     38   (nop) 
              #                     40    
              #                     41   (nop) 
              #                     42   (nop) 
              #                     43    Call void putint_0(3_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    arg load ended


    call    putint
              #                     44    Call void putint_0(3_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    arg load ended


    call    putint
              #                     45    Call void putint_0(1_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    putint
              #                     46    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     151  label while.head_32: 
.while.head_32:
              #                     150  (nop) 
              #                          jump label: while.body_32 
    j       .while.body_32
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     152  label while.body_32: 
.while.body_32:
              #                     144  (nop) 
              #                     147  (nop) 
              #                     148  (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     168  (nop) 
              #                          jump label: branch_true_37 
    j       .branch_true_37
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     169  label branch_true_37: 
.branch_true_37:
              #                          jump label: while.exit_32 
    j       .while.exit_32
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     153  label while.exit_32: 
.while.exit_32:
              #                     47    Call void putint_0(1_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    putint
              #                     48    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     50   temp_5_ptr_of_*c_0_42 = GEP *c_0:ptr->i32 [Some(2_0)] 
              #                    occupy a0 with temp_5_ptr_of_*c_0_42
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 2
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a2 with *c_0
              #                       load label c as ptr to reg
    la      a2, c
              #                    occupy reg a2 with *c_0
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                     51   store 1_0:i32 temp_5_ptr_of_*c_0_42:ptr->i32 
              #                    occupy a0 with temp_5_ptr_of_*c_0_42
              #                    occupy a3 with 1_0
    li      a3, 1
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     52   c_0_2 = chi c_0_1:51 
              #                     53    
              #                     55   temp_6_array_init_ptr_46 = GEP c_46_0:Array:i32:[Some(2_0), Some(8_0)] [] 
              #                    occupy a4 with temp_6_array_init_ptr_46
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,304
              #                    free a4
              #                     56    Call void memset_0(temp_6_array_init_ptr_46, 0_0, 64_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_5_ptr_of_*c_0_42
              #                    store to temp_5_ptr_of_*c_0_42 in mem offset legal
    sd      a0,408(sp)
              #                    release a0 with temp_5_ptr_of_*c_0_42
              #                    occupy a4 with temp_6_array_init_ptr_46
              #                    store to temp_6_array_init_ptr_46 in mem offset legal
    sd      a4,400(sp)
              #                    release a4 with temp_6_array_init_ptr_46
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_6_array_init_ptr_46_0
              #                    load from temp_6_array_init_ptr_46 in mem
    ld      a0,400(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_64_0_0
    li      a2, 64
              #                    arg load ended


    call    memset
              #                     178  untrack temp_6_array_init_ptr_46 
              #                     173  mu c_46_0:56 
              #                     174  c_46_1 = chi c_46_0:56 
              #                     58   (nop) 
              #                     59   (nop) 
              #                     60   c_46_2 = chi c_46_1:59 
              #                     62   (nop) 
              #                     63   (nop) 
              #                     64   c_46_3 = chi c_46_2:63 
              #                     66   (nop) 
              #                     67   (nop) 
              #                     68   c_46_4 = chi c_46_3:67 
              #                     70   (nop) 
              #                     71   (nop) 
              #                     72   c_46_5 = chi c_46_4:71 
              #                     74   (nop) 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     156  (nop) 
              #                     158  temp_33_ele_of_*c_0_50_0 = load temp_5_ptr_of_*c_0_42:ptr->i32 
              #                    occupy a0 with temp_5_ptr_of_*c_0_42
              #                    load from temp_5_ptr_of_*c_0_42 in mem
    ld      a0,408(sp)
              #                    occupy a1 with temp_33_ele_of_*c_0_50_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     179  untrack temp_5_ptr_of_*c_0_42 
              #                    occupy a0 with temp_5_ptr_of_*c_0_42
              #                    release a0 with temp_5_ptr_of_*c_0_42
              #                     159  mu c_0_2:158 
              #                     161  temp_34__1322_0 = icmp i32 Ne temp_33_ele_of_*c_0_50_0, 0_0 
              #                    occupy a1 with temp_33_ele_of_*c_0_50_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with temp_34__1322_0
    xor     a2,a1,a0
    snez    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                     164  br i1 temp_34__1322_0, label branch_true_51, label branch_false_51 
              #                    occupy a2 with temp_34__1322_0
              #                    free a2
              #                    occupy a2 with temp_34__1322_0
    bnez    a2, .branch_true_51
              #                    free a2
    j       .branch_false_51
              #                    regtab     a1:Freed { symidx: temp_33_ele_of_*c_0_50_0, tracked: true } |     a2:Freed { symidx: temp_34__1322_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     162  label branch_true_51: 
.branch_true_51:
              #                     180  untrack temp_34__1322_0 
              #                    occupy a2 with temp_34__1322_0
              #                    release a2 with temp_34__1322_0
              #                     109   
              #                     111  temp_20_array_init_ptr_52 = GEP c_52_0:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [] 
              #                    occupy a0 with temp_20_array_init_ptr_52
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,68
              #                    free a0
              #                     112   Call void memset_0(temp_20_array_init_ptr_52, 0_0, 140_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_20_array_init_ptr_52
              #                    store to temp_20_array_init_ptr_52 in mem offset legal
    sd      a0,232(sp)
              #                    release a0 with temp_20_array_init_ptr_52
              #                    occupy a1 with temp_33_ele_of_*c_0_50_0
              #                    store to temp_33_ele_of_*c_0_50_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_33_ele_of_*c_0_50_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_20_array_init_ptr_52_0
              #                    load from temp_20_array_init_ptr_52 in mem
    ld      a0,232(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_140_0_0
    li      a2, 140
              #                    arg load ended


    call    memset
              #                     193  untrack temp_20_array_init_ptr_52 
              #                     175  mu c_52_0:112 
              #                     176  c_52_1 = chi c_52_0:112 
              #                     114  temp_21_array_init_ptr_52 = GEP c_52_1:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(2_0), Some(0_0), Some(2_0)] 
              #                    occupy a0 with temp_21_array_init_ptr_52
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 10
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a0,a0,a2
              #                    free a2
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,68
              #                    free a0
              #                     115  store 8_0:i32 temp_21_array_init_ptr_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
              #                    occupy a0 with temp_21_array_init_ptr_52
              #                    occupy a4 with 8_0
    li      a4, 8
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     116  c_52_2 = chi c_52_1:115 
              #                     118  temp_22_array_init_ptr_52 = GEP c_52_2:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(2_0), Some(0_0), Some(1_0)] 
              #                    occupy a5 with temp_22_array_init_ptr_52
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 10
    add     a5,a5,a6
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 0
    add     a5,a5,a7
              #                    free a7
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 1
    add     a5,a5,s1
              #                    free s1
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,68
              #                    free a5
              #                     119  store 1_0:i32 temp_22_array_init_ptr_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
              #                    occupy a5 with temp_22_array_init_ptr_52
              #                    occupy s2 with 1_0
    li      s2, 1
    sw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                     120  c_52_3 = chi c_52_2:119 
              #                     122  temp_23_array_init_ptr_52 = GEP c_52_3:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(2_0), Some(0_0), Some(0_0)] 
              #                    occupy s3 with temp_23_array_init_ptr_52
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 10
    add     s3,s3,s4
              #                    free s4
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s5, 0
    add     s3,s3,s5
              #                    free s5
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 0
    add     s3,s3,s6
              #                    free s6
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,68
              #                    free s3
              #                     123  store 2_0:i32 temp_23_array_init_ptr_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
              #                    occupy s3 with temp_23_array_init_ptr_52
              #                    occupy s6 with 2_0
    li      s6, 2
    sw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                     124  c_52_4 = chi c_52_3:123 
              #                     127  (nop) 
              #                     129  temp_25_ele_of_c_52_52_0 = load temp_23_array_init_ptr_52:ptr->i32 
              #                    occupy s3 with temp_23_array_init_ptr_52
              #                    occupy s6 with temp_25_ele_of_c_52_52_0
    lw      s6,0(s3)
              #                    free s6
              #                    occupy s6 with temp_25_ele_of_c_52_52_0
              #                    store to temp_25_ele_of_c_52_52_0 in mem offset legal
    sw      s6,52(sp)
              #                    release s6 with temp_25_ele_of_c_52_52_0
              #                    free s3
              #                     192  untrack temp_23_array_init_ptr_52 
              #                    occupy s3 with temp_23_array_init_ptr_52
              #                    release s3 with temp_23_array_init_ptr_52
              #                     130  mu c_52_4:129 
              #                     131   Call void putint_0(temp_25_ele_of_c_52_52_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_21_array_init_ptr_52
              #                    store to temp_21_array_init_ptr_52 in mem offset legal
    sd      a0,224(sp)
              #                    release a0 with temp_21_array_init_ptr_52
              #                    occupy a5 with temp_22_array_init_ptr_52
              #                    store to temp_22_array_init_ptr_52 in mem offset legal
    sd      a5,216(sp)
              #                    release a5 with temp_22_array_init_ptr_52
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_25_ele_of_c_52_52_0_0
              #                    load from temp_25_ele_of_c_52_52_0 in mem


    lw      a0,52(sp)
              #                    arg load ended


    call    putint
              #                     194  untrack temp_25_ele_of_c_52_52_0 
              #                     133  (nop) 
              #                     135  temp_27_ele_of_c_52_52_0 = load temp_22_array_init_ptr_52:ptr->i32 
              #                    occupy a0 with temp_22_array_init_ptr_52
              #                    load from temp_22_array_init_ptr_52 in mem
    ld      a0,216(sp)
              #                    occupy a1 with temp_27_ele_of_c_52_52_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     190  untrack temp_22_array_init_ptr_52 
              #                    occupy a0 with temp_22_array_init_ptr_52
              #                    release a0 with temp_22_array_init_ptr_52
              #                     136  mu c_52_4:135 
              #                     137   Call void putint_0(temp_27_ele_of_c_52_52_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_27_ele_of_c_52_52_0
              #                    store to temp_27_ele_of_c_52_52_0 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with temp_27_ele_of_c_52_52_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_27_ele_of_c_52_52_0_0
              #                    load from temp_27_ele_of_c_52_52_0 in mem


    lw      a0,36(sp)
              #                    arg load ended


    call    putint
              #                     189  untrack temp_27_ele_of_c_52_52_0 
              #                     139  (nop) 
              #                     141  temp_29_ele_of_c_52_52_0 = load temp_21_array_init_ptr_52:ptr->i32 
              #                    occupy a0 with temp_21_array_init_ptr_52
              #                    load from temp_21_array_init_ptr_52 in mem
    ld      a0,224(sp)
              #                    occupy a1 with temp_29_ele_of_c_52_52_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     195  untrack temp_21_array_init_ptr_52 
              #                    occupy a0 with temp_21_array_init_ptr_52
              #                    release a0 with temp_21_array_init_ptr_52
              #                     142  mu c_52_4:141 
              #                     143   Call void putint_0(temp_29_ele_of_c_52_52_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_29_ele_of_c_52_52_0
              #                    store to temp_29_ele_of_c_52_52_0 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_29_ele_of_c_52_52_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_29_ele_of_c_52_52_0_0
              #                    load from temp_29_ele_of_c_52_52_0 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    putint
              #                     191  untrack temp_29_ele_of_c_52_52_0 
              #                          jump label: branch_false_51 
              #                    occupy a1 with temp_33_ele_of_*c_0_50_0
              #                    load from temp_33_ele_of_*c_0_50_0 in mem


    lw      a1,4(sp)
              #                    occupy a2 with temp_34__1322_0
              #                    load from temp_34__1322_0 in mem


    lb      a2,3(sp)
    j       .branch_false_51
              #                    regtab     a1:Freed { symidx: temp_33_ele_of_*c_0_50_0, tracked: true } |     a2:Freed { symidx: temp_34__1322_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     163  label branch_false_51: 
.branch_false_51:
              #                     188  untrack temp_29_ele_of_c_52_52_0 
              #                     187  untrack temp_22_array_init_ptr_52 
              #                     186  untrack temp_34__1322_0 
              #                    occupy a2 with temp_34__1322_0
              #                    release a2 with temp_34__1322_0
              #                     185  untrack temp_23_array_init_ptr_52 
              #                     184  untrack temp_25_ele_of_c_52_52_0 
              #                     183  untrack temp_20_array_init_ptr_52 
              #                     182  untrack temp_21_array_init_ptr_52 
              #                     181  untrack temp_27_ele_of_c_52_52_0 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a1:Freed { symidx: temp_33_ele_of_*c_0_50_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     76    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_33_ele_of_*c_0_50_0
              #                    store to temp_33_ele_of_*c_0_50_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_33_ele_of_*c_0_50_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     78   temp_11_value_from_ptr_19_0 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_11_value_from_ptr_19_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     79   mu b_0_0:78 
              #                     80    Call void putint_0(temp_11_value_from_ptr_19_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_11_value_from_ptr_19_0
              #                    store to temp_11_value_from_ptr_19_0 in mem offset legal
    sw      a1,300(sp)
              #                    release a1 with temp_11_value_from_ptr_19_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_11_value_from_ptr_19_0_0
              #                    load from temp_11_value_from_ptr_19_0 in mem


    lw      a0,300(sp)
              #                    arg load ended


    call    putint
              #                     201  untrack temp_11_value_from_ptr_19_0 
              #                     81    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     83   temp_12_ptr_of_*c_0_19 = GEP *c_0:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_12_ptr_of_*c_0_19
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a2 with *c_0
              #                       load label c as ptr to reg
    la      a2, c
              #                    occupy reg a2 with *c_0
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                     85   temp_13_ele_of_*c_0_19_0 = load temp_12_ptr_of_*c_0_19:ptr->i32 
              #                    occupy a0 with temp_12_ptr_of_*c_0_19
              #                    occupy a3 with temp_13_ele_of_*c_0_19_0
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     202  untrack temp_12_ptr_of_*c_0_19 
              #                    occupy a0 with temp_12_ptr_of_*c_0_19
              #                    release a0 with temp_12_ptr_of_*c_0_19
              #                     86   mu c_0_2:85 
              #                     87    Call void putint_0(temp_13_ele_of_*c_0_19_0) 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_13_ele_of_*c_0_19_0
              #                    store to temp_13_ele_of_*c_0_19_0 in mem offset legal
    sw      a3,284(sp)
              #                    release a3 with temp_13_ele_of_*c_0_19_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_13_ele_of_*c_0_19_0_0
              #                    load from temp_13_ele_of_*c_0_19_0 in mem


    lw      a0,284(sp)
              #                    arg load ended


    call    putint
              #                     199  untrack temp_13_ele_of_*c_0_19_0 
              #                     89   temp_14_ptr_of_*c_0_19 = GEP *c_0:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_14_ptr_of_*c_0_19
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 1
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a2 with *c_0
              #                       load label c as ptr to reg
    la      a2, c
              #                    occupy reg a2 with *c_0
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                     91   temp_15_ele_of_*c_0_19_0 = load temp_14_ptr_of_*c_0_19:ptr->i32 
              #                    occupy a0 with temp_14_ptr_of_*c_0_19
              #                    occupy a3 with temp_15_ele_of_*c_0_19_0
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     200  untrack temp_14_ptr_of_*c_0_19 
              #                    occupy a0 with temp_14_ptr_of_*c_0_19
              #                    release a0 with temp_14_ptr_of_*c_0_19
              #                     92   mu c_0_2:91 
              #                     93    Call void putint_0(temp_15_ele_of_*c_0_19_0) 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_15_ele_of_*c_0_19_0
              #                    store to temp_15_ele_of_*c_0_19_0 in mem offset legal
    sw      a3,268(sp)
              #                    release a3 with temp_15_ele_of_*c_0_19_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_15_ele_of_*c_0_19_0_0
              #                    load from temp_15_ele_of_*c_0_19_0 in mem


    lw      a0,268(sp)
              #                    arg load ended


    call    putint
              #                     196  untrack temp_15_ele_of_*c_0_19_0 
              #                     95   (nop) 
              #                     97   (nop) 
              #                     98   mu c_0_2:97 
              #                     99    Call void putint_0(temp_33_ele_of_*c_0_50_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_33_ele_of_*c_0_50_0_0
              #                    load from temp_33_ele_of_*c_0_50_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                     197  untrack temp_33_ele_of_*c_0_50_0 
              #                     101  temp_18_ptr_of_*c_0_19 = GEP *c_0:Array:i32:[None] [Some(3_0)] 
              #                    occupy a0 with temp_18_ptr_of_*c_0_19
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 3
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a2 with *c_0
              #                       load label c as ptr to reg
    la      a2, c
              #                    occupy reg a2 with *c_0
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                     103  temp_19_ele_of_*c_0_19_0 = load temp_18_ptr_of_*c_0_19:ptr->i32 
              #                    occupy a0 with temp_18_ptr_of_*c_0_19
              #                    occupy a3 with temp_19_ele_of_*c_0_19_0
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     203  untrack temp_18_ptr_of_*c_0_19 
              #                    occupy a0 with temp_18_ptr_of_*c_0_19
              #                    release a0 with temp_18_ptr_of_*c_0_19
              #                     104  mu c_0_2:103 
              #                     105   Call void putint_0(temp_19_ele_of_*c_0_19_0) 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_19_ele_of_*c_0_19_0
              #                    store to temp_19_ele_of_*c_0_19_0 in mem offset legal
    sw      a3,244(sp)
              #                    release a3 with temp_19_ele_of_*c_0_19_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_19_ele_of_*c_0_19_0_0
              #                    load from temp_19_ele_of_*c_0_19_0 in mem


    lw      a0,244(sp)
              #                    arg load ended


    call    putint
              #                     198  untrack temp_19_ele_of_*c_0_19_0 
              #                     106   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     177  mu c_0_2:108 
              #                     108  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,432(sp)
              #                    load from s0_main_0 in mem
    ld      s0,424(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,440
              #                    free a0
    ret
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                     170  label branch_false_37: 
.branch_false_37:
              #                          jump label: while.head_32 
    j       .while.head_32
.section ___var
    .data
    .align 4
    .globl c
              #                     33   global Array:i32:[Some(4_0)] c_0 
    .type c,@object
c:
    .word 6
    .word 7
    .word 8
    .word 9
    .zero 4
    .align 4
    .globl b
              #                     17   global i32 b_0 
    .type b,@object
b:
    .word 5
