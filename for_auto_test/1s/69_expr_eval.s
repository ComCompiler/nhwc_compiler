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
              #                     28   Define next_char_0 "" -> next_char_ret_0 
    .globl next_char
    .type next_char,@function
next_char:
              #                    mem layout:|ra_next_char:8 at 16|s0_next_char:8 at 8|temp_0_ret_of_getch _s20 _i0:4 at 4|temp_1_value_from_ptr _s20 _i0:4 at 0
    addi    sp,sp,-24
              #                    store to ra_next_char_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_next_char_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     520  last_char_0_1 = chi last_char_0_0:28 
              #                     45   alloc i32 [temp_0_ret_of_getch_20] 
              #                     50   alloc i32 [temp_1_value_from_ptr_20] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L25_0: 
.L25_0:
              #                     46   temp_0_ret_of_getch_20_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     47   store temp_0_ret_of_getch_20_0:i32 *last_char_0:ptr->i32 
              #                    occupy a1 with *last_char_0
              #                       load label last_char as ptr to reg
    la      a1, last_char
              #                    occupy reg a1 with *last_char_0
              #                    occupy a0 with temp_0_ret_of_getch_20_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     669  untrack temp_0_ret_of_getch_20_0 
              #                    occupy a0 with temp_0_ret_of_getch_20_0
              #                    release a0 with temp_0_ret_of_getch_20_0
              #                     48   last_char_0_2 = chi last_char_0_1:47 
              #                     51   temp_1_value_from_ptr_20_0 = load *last_char_0:ptr->i32 
              #                    occupy a0 with *last_char_0
              #                       load label last_char as ptr to reg
    la      a0, last_char
              #                    occupy reg a0 with *last_char_0
              #                    occupy a2 with temp_1_value_from_ptr_20_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     52   mu last_char_0_2:51 
              #                     521  mu last_char_0_2:53 
              #                     53   ret temp_1_value_from_ptr_20_0 
              #                    load from ra_next_char_0 in mem
    ld      ra,16(sp)
              #                    load from s0_next_char_0 in mem
    ld      s0,8(sp)
              #                    occupy a2 with temp_1_value_from_ptr_20_0
              #                    store to temp_1_value_from_ptr_20_0 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_1_value_from_ptr_20_0
              #                    occupy a0 with temp_1_value_from_ptr_20_0
              #                    load from temp_1_value_from_ptr_20_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     29   Define is_space_0 "c_23_0," -> is_space_ret_0 
    .globl is_space
    .type is_space,@function
is_space:
              #                    mem layout:|ra_is_space:8 at 16|s0_is_space:8 at 8|c _s23 _i0:4 at 4|temp_2_cmp _s26 _i0:1 at 3|temp_3_cmp _s26 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-24
              #                    store to ra_is_space_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_is_space_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     60   alloc i1 [temp_2_cmp_26] 
              #                     62   alloc i1 [temp_3_cmp_26] 
              #                    regtab     a0:Freed { symidx: c_23_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L24_0: 
.L24_0:
              #                     61   temp_2_cmp_26_0 = icmp i32 Eq c_23_0, 32_0 
              #                    occupy a0 with c_23_0
              #                    occupy a1 with 32_0
    li      a1, 32
              #                    occupy a2 with temp_2_cmp_26_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     69   br i1 temp_2_cmp_26_0, label branch_short_circuit_c_true_213, label branch_short_circuit_p_false_213 
              #                    occupy a2 with temp_2_cmp_26_0
              #                    free a2
              #                    occupy a2 with temp_2_cmp_26_0
    bnez    a2, .branch_short_circuit_c_true_213
              #                    free a2
    j       .branch_short_circuit_p_false_213
              #                    regtab     a0:Freed { symidx: c_23_0, tracked: true } |     a2:Freed { symidx: temp_2_cmp_26_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     64   label branch_short_circuit_c_true_213: 
.branch_short_circuit_c_true_213:
              #                     675  untrack temp_3_cmp_26_0 
              #                     672  untrack temp_3_cmp_26_0 
              #                     671  untrack c_23_0 
              #                    occupy a0 with c_23_0
              #                    release a0 with c_23_0
              #                     670  untrack temp_2_cmp_26_0 
              #                    occupy a2 with temp_2_cmp_26_0
              #                    release a2 with temp_2_cmp_26_0
              #                     59   ret 1_0 
              #                    load from ra_is_space_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_space_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: c_23_0, tracked: true } |     a2:Freed { symidx: temp_2_cmp_26_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     66   label branch_short_circuit_p_false_213: 
.branch_short_circuit_p_false_213:
              #                     673  untrack temp_2_cmp_26_0 
              #                    occupy a2 with temp_2_cmp_26_0
              #                    release a2 with temp_2_cmp_26_0
              #                     63   temp_3_cmp_26_0 = icmp i32 Eq c_23_0, 10_0 
              #                    occupy a0 with c_23_0
              #                    occupy a1 with 10_0
    li      a1, 10
              #                    occupy a2 with temp_3_cmp_26_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     674  untrack c_23_0 
              #                    occupy a0 with c_23_0
              #                    release a0 with c_23_0
              #                     68   br i1 temp_3_cmp_26_0, label branch_short_circuit_c_true_213, label branch_short_circuit_c_false_213 
              #                    occupy a2 with temp_3_cmp_26_0
              #                    free a2
              #                    occupy a2 with temp_3_cmp_26_0
              #                    store to temp_3_cmp_26_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_3_cmp_26_0
              #                    occupy a2 with temp_2_cmp_26_0
              #                    load from temp_2_cmp_26_0 in mem


    lb      a2,3(sp)
              #                    occupy a0 with c_23_0
              #                    load from c_23_0 in mem


    lw      a0,4(sp)
              #                    occupy a1 with temp_3_cmp_26_0
              #                    load from temp_3_cmp_26_0 in mem


    lb      a1,2(sp)
    bnez    a1, .branch_short_circuit_c_true_213
              #                    free a1
    j       .branch_short_circuit_c_false_213
              #                    regtab     a0:Freed { symidx: c_23_0, tracked: true } |     a1:Freed { symidx: temp_3_cmp_26_0, tracked: true } |     a2:Freed { symidx: temp_2_cmp_26_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     65   label branch_short_circuit_c_false_213: 
.branch_short_circuit_c_false_213:
              #                     676  untrack temp_3_cmp_26_0 
              #                    occupy a1 with temp_3_cmp_26_0
              #                    release a1 with temp_3_cmp_26_0
              #                     57   ret 0_0 
              #                    load from ra_is_space_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_space_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with c_23_0
              #                    store to c_23_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with c_23_0
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     30   Define is_num_0 "c_32_0," -> is_num_ret_0 
    .globl is_num
    .type is_num,@function
is_num:
              #                    mem layout:|ra_is_num:8 at 16|s0_is_num:8 at 8|c _s32 _i0:4 at 4|temp_4_cmp _s35 _i0:1 at 3|temp_5_cmp _s35 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-24
              #                    store to ra_is_num_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_is_num_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     77   alloc i1 [temp_4_cmp_35] 
              #                     79   alloc i1 [temp_5_cmp_35] 
              #                    regtab     a0:Freed { symidx: c_32_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L23_0: 
.L23_0:
              #                     78   temp_4_cmp_35_0 = icmp i32 Sge c_32_0, 48_0 
              #                    occupy a0 with c_32_0
              #                    occupy a1 with 48_0
    li      a1, 48
              #                    occupy a2 with temp_4_cmp_35_0
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     86   br i1 temp_4_cmp_35_0, label branch_short_circuit_p_true_235, label branch_short_circuit_c_false_235 
              #                    occupy a2 with temp_4_cmp_35_0
              #                    free a2
              #                    occupy a2 with temp_4_cmp_35_0
    bnez    a2, .branch_short_circuit_p_true_235
              #                    free a2
    j       .branch_short_circuit_c_false_235
              #                    regtab     a0:Freed { symidx: c_32_0, tracked: true } |     a2:Freed { symidx: temp_4_cmp_35_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     83   label branch_short_circuit_p_true_235: 
.branch_short_circuit_p_true_235:
              #                     680  untrack temp_4_cmp_35_0 
              #                    occupy a2 with temp_4_cmp_35_0
              #                    release a2 with temp_4_cmp_35_0
              #                     80   temp_5_cmp_35_0 = icmp i32 Sle c_32_0, 57_0 
              #                    occupy a0 with c_32_0
              #                    occupy a1 with 57_0
    li      a1, 57
              #                    occupy a2 with temp_5_cmp_35_0
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     681  untrack c_32_0 
              #                    occupy a0 with c_32_0
              #                    release a0 with c_32_0
              #                     85   br i1 temp_5_cmp_35_0, label branch_short_circuit_c_true_235, label branch_short_circuit_c_false_235 
              #                    occupy a2 with temp_5_cmp_35_0
              #                    free a2
              #                    occupy a2 with temp_5_cmp_35_0
    bnez    a2, .branch_short_circuit_c_true_235
              #                    free a2
              #                    occupy a2 with temp_5_cmp_35_0
              #                    store to temp_5_cmp_35_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_5_cmp_35_0
              #                    occupy a2 with temp_4_cmp_35_0
              #                    load from temp_4_cmp_35_0 in mem


    lb      a2,3(sp)
              #                    occupy a0 with c_32_0
              #                    load from c_32_0 in mem


    lw      a0,4(sp)
    j       .branch_short_circuit_c_false_235
              #                    regtab     a2:Freed { symidx: temp_5_cmp_35_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     81   label branch_short_circuit_c_true_235: 
.branch_short_circuit_c_true_235:
              #                     682  untrack temp_5_cmp_35_0 
              #                    occupy a2 with temp_5_cmp_35_0
              #                    release a2 with temp_5_cmp_35_0
              #                     76   ret 1_0 
              #                    load from ra_is_num_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_num_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: c_32_0, tracked: true } |     a2:Freed { symidx: temp_4_cmp_35_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     82   label branch_short_circuit_c_false_235: 
.branch_short_circuit_c_false_235:
              #                     683  untrack temp_5_cmp_35_0 
              #                     679  untrack temp_5_cmp_35_0 
              #                     678  untrack c_32_0 
              #                    occupy a0 with c_32_0
              #                    release a0 with c_32_0
              #                     677  untrack temp_4_cmp_35_0 
              #                    occupy a2 with temp_4_cmp_35_0
              #                    release a2 with temp_4_cmp_35_0
              #                     74   ret 0_0 
              #                    load from ra_is_num_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_num_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     31   Define next_token_0 "" -> next_token_ret_0 
    .globl next_token
    .type next_token,@function
next_token:
              #                    mem layout:|ra_next_token:8 at 80|s0_next_token:8 at 72|temp_7_ret_of_next_char _s55 _i0:4 at 68|temp_8_value_from_ptr _s42 _i0:4 at 64|temp_10_arithop _s48 _i0:4 at 60|temp_11_value_from_ptr _s52 _i0:4 at 56|temp_12_arithop _s52 _i0:4 at 52|temp_13_value_from_ptr _s52 _i0:4 at 48|temp_14_arithop _s52 _i0:4 at 44|temp_15_arithop _s52 _i0:4 at 40|temp_16_ret_of_next_char _s43 _i0:4 at 36|temp_17_value_from_ptr _s43 _i0:4 at 32|temp_18_ret_of_is_space _s43 _i0:4 at 28|temp_19_ _s881 _i0:1 at 27|none:3 at 24|temp_21_ret_of_is_num _s46 _i0:4 at 20|temp_22_ _s952 _i0:1 at 19|none:3 at 16|temp_23_ret_of_next_char _s50 _i0:4 at 12|temp_24_ret_of_is_num _s50 _i0:4 at 8|temp_25_ _s1038 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-88
              #                    store to ra_next_token_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_next_token_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                     522  num_0_1 = chi num_0_0:31 
              #                     523  other_0_1 = chi other_0_0:31 
              #                     524  last_char_0_3 = chi last_char_0_0:31 
              #                     525  cur_token_0_1 = chi cur_token_0_0:31 
              #                     90   alloc i32 [temp_6_value_from_ptr_55] 
              #                     95   alloc i32 [temp_7_ret_of_next_char_55] 
              #                     100  alloc i32 [temp_8_value_from_ptr_42] 
              #                     104  alloc i32 [temp_9_value_from_ptr_48] 
              #                     107  alloc i32 [temp_10_arithop_48] 
              #                     113  alloc i32 [temp_11_value_from_ptr_52] 
              #                     116  alloc i32 [temp_12_arithop_52] 
              #                     118  alloc i32 [temp_13_value_from_ptr_52] 
              #                     121  alloc i32 [temp_14_arithop_52] 
              #                     123  alloc i32 [temp_15_arithop_52] 
              #                     127  alloc i32 [temp_16_ret_of_next_char_43] 
              #                     129  alloc i32 [temp_17_value_from_ptr_43] 
              #                     132  alloc i32 [temp_18_ret_of_is_space_43] 
              #                     134  alloc i1 [temp_19__881] 
              #                     140  alloc i32 [temp_20_value_from_ptr_46] 
              #                     143  alloc i32 [temp_21_ret_of_is_num_46] 
              #                     145  alloc i1 [temp_22__952] 
              #                     153  alloc i32 [temp_23_ret_of_next_char_50] 
              #                     155  alloc i32 [temp_24_ret_of_is_num_50] 
              #                     157  alloc i1 [temp_25__1038] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     136  label while.head_44: 
.while.head_44:
              #                     130  temp_17_value_from_ptr_43_0 = load *last_char_0:ptr->i32 
              #                    occupy a0 with *last_char_0
              #                       load label last_char as ptr to reg
    la      a0, last_char
              #                    occupy reg a0 with *last_char_0
              #                    occupy a1 with temp_17_value_from_ptr_43_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     131  mu last_char_0_4:130 
              #                     133  temp_18_ret_of_is_space_43_0 =  Call i32 is_space_0(temp_17_value_from_ptr_43_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_17_value_from_ptr_43_0
              #                    store to temp_17_value_from_ptr_43_0 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with temp_17_value_from_ptr_43_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_17_value_from_ptr_43_0_0
              #                    load from temp_17_value_from_ptr_43_0 in mem


    lw      a0,32(sp)
              #                    arg load ended


    call    is_space
              #                     135  temp_19__881_0 = icmp i32 Ne temp_18_ret_of_is_space_43_0, 0_0 
              #                    occupy a0 with temp_18_ret_of_is_space_43_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_19__881_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     139  br i1 temp_19__881_0, label while.body_44, label while.exit_44 
              #                    occupy a2 with temp_19__881_0
              #                    free a2
              #                    occupy a2 with temp_19__881_0
    bnez    a2, .while.body_44
              #                    free a2
    j       .while.exit_44
              #                    regtab     a0:Freed { symidx: temp_18_ret_of_is_space_43_0, tracked: true } |     a2:Freed { symidx: temp_19__881_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     137  label while.body_44: 
.while.body_44:
              #                     128  temp_16_ret_of_next_char_43_0 =  Call i32 next_char_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_18_ret_of_is_space_43_0
              #                    store to temp_18_ret_of_is_space_43_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_18_ret_of_is_space_43_0
              #                    occupy a2 with temp_19__881_0
              #                    store to temp_19__881_0 in mem offset legal
    sb      a2,27(sp)
              #                    release a2 with temp_19__881_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_char
              #                     526  mu last_char_0_4:128 
              #                     527  last_char_0_5 = chi last_char_0_4:128 
              #                          jump label: while.head_44 
              #                    occupy a0 with temp_16_ret_of_next_char_43_0
              #                    store to temp_16_ret_of_next_char_43_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_16_ret_of_next_char_43_0
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: temp_18_ret_of_is_space_43_0, tracked: true } |     a2:Freed { symidx: temp_19__881_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     138  label while.exit_44: 
.while.exit_44:
              #                     141  (nop) 
              #                     142  mu last_char_0_4:141 
              #                     144  temp_21_ret_of_is_num_46_0 =  Call i32 is_num_0(temp_17_value_from_ptr_43_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_18_ret_of_is_space_43_0
              #                    store to temp_18_ret_of_is_space_43_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_18_ret_of_is_space_43_0
              #                    occupy a2 with temp_19__881_0
              #                    store to temp_19__881_0 in mem offset legal
    sb      a2,27(sp)
              #                    release a2 with temp_19__881_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_17_value_from_ptr_43_0_0
              #                    load from temp_17_value_from_ptr_43_0 in mem


    lw      a0,32(sp)
              #                    arg load ended


    call    is_num
              #                     146  temp_22__952_0 = icmp i32 Ne temp_21_ret_of_is_num_46_0, 0_0 
              #                    occupy a0 with temp_21_ret_of_is_num_46_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_22__952_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     684  untrack temp_21_ret_of_is_num_46_0 
              #                    occupy a0 with temp_21_ret_of_is_num_46_0
              #                    release a0 with temp_21_ret_of_is_num_46_0
              #                     149  br i1 temp_22__952_0, label branch_true_47, label branch_false_47 
              #                    occupy a2 with temp_22__952_0
              #                    free a2
              #                    occupy a2 with temp_22__952_0
    bnez    a2, .branch_true_47
              #                    free a2
    j       .branch_false_47
              #                    regtab     a2:Freed { symidx: temp_22__952_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     147  label branch_true_47: 
.branch_true_47:
              #                     685  untrack temp_22__952_0 
              #                    occupy a2 with temp_22__952_0
              #                    release a2 with temp_22__952_0
              #                     105  (nop) 
              #                     106  mu last_char_0_4:105 
              #                     108  temp_10_arithop_48_0 = Sub i32 temp_17_value_from_ptr_43_0, 48_0 
              #                    occupy a0 with temp_17_value_from_ptr_43_0
              #                    load from temp_17_value_from_ptr_43_0 in mem


    lw      a0,32(sp)
              #                    occupy a1 with 48_0
    li      a1, 48
              #                    occupy a2 with temp_10_arithop_48_0
              #                    regtab:    a0:Occupied { symidx: temp_17_value_from_ptr_43_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_10_arithop_48_0, tracked: true, occupy_count: 1 } |  released_gpr_count:14,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     109  store temp_10_arithop_48_0:i32 *num_0:ptr->i32 
              #                    occupy a3 with *num_0
              #                       load label num as ptr to reg
    la      a3, num
              #                    occupy reg a3 with *num_0
              #                    occupy a2 with temp_10_arithop_48_0
    sw      a2,0(a3)
              #                    free a2
              #                    free a3
              #                     688  untrack temp_10_arithop_48_0 
              #                    occupy a2 with temp_10_arithop_48_0
              #                    release a2 with temp_10_arithop_48_0
              #                     110  num_0_2 = chi num_0_1:109 
              #                          jump label: while.head_51 
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: temp_17_value_from_ptr_43_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     159  label while.head_51: 
.while.head_51:
              #                     689  untrack temp_17_value_from_ptr_43_0 
              #                    occupy a0 with temp_17_value_from_ptr_43_0
              #                    release a0 with temp_17_value_from_ptr_43_0
              #                     154  temp_23_ret_of_next_char_50_0 =  Call i32 next_char_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_char
              #                     528  mu last_char_0_6:154 
              #                     529  last_char_0_7 = chi last_char_0_6:154 
              #                     156  temp_24_ret_of_is_num_50_0 =  Call i32 is_num_0(temp_23_ret_of_next_char_50_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_23_ret_of_next_char_50_0
              #                    store to temp_23_ret_of_next_char_50_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_23_ret_of_next_char_50_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_23_ret_of_next_char_50_0_0
              #                    load from temp_23_ret_of_next_char_50_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    is_num
              #                     158  temp_25__1038_0 = icmp i32 Ne temp_24_ret_of_is_num_50_0, 0_0 
              #                    occupy a0 with temp_24_ret_of_is_num_50_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_25__1038_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     162  br i1 temp_25__1038_0, label while.body_51, label while.exit_51 
              #                    occupy a2 with temp_25__1038_0
              #                    free a2
              #                    occupy a2 with temp_25__1038_0
    bnez    a2, .while.body_51
              #                    free a2
    j       .while.exit_51
              #                    regtab     a0:Freed { symidx: temp_24_ret_of_is_num_50_0, tracked: true } |     a2:Freed { symidx: temp_25__1038_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     160  label while.body_51: 
.while.body_51:
              #                     114  temp_11_value_from_ptr_52_0 = load *num_0:ptr->i32 
              #                    occupy a1 with *num_0
              #                       load label num as ptr to reg
    la      a1, num
              #                    occupy reg a1 with *num_0
              #                    occupy a3 with temp_11_value_from_ptr_52_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     115  mu num_0_3:114 
              #                     117  temp_12_arithop_52_0 = Mul i32 temp_11_value_from_ptr_52_0, 10_0 
              #                    occupy a4 with temp_12_arithop_52_0
              #                    occupy a3 with temp_11_value_from_ptr_52_0
              #                    occupy a5 with 10_0
    li      a5, 10
    mulw    a4,a3,a5
              #                    free a3
              #                    free a5
              #                    free a4
              #                     119  temp_13_value_from_ptr_52_0 = load *last_char_0:ptr->i32 
              #                    occupy a6 with *last_char_0
              #                       load label last_char as ptr to reg
    la      a6, last_char
              #                    occupy reg a6 with *last_char_0
              #                    occupy a7 with temp_13_value_from_ptr_52_0
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                     120  mu last_char_0_7:119 
              #                     122  temp_14_arithop_52_0 = Add i32 temp_12_arithop_52_0, temp_13_value_from_ptr_52_0 
              #                    occupy a4 with temp_12_arithop_52_0
              #                    occupy a7 with temp_13_value_from_ptr_52_0
              #                    occupy s1 with temp_14_arithop_52_0
    ADDW    s1,a4,a7
              #                    free a4
              #                    free a7
              #                    free s1
              #                     124  temp_15_arithop_52_0 = Sub i32 temp_14_arithop_52_0, 48_0 
              #                    occupy s1 with temp_14_arithop_52_0
              #                    occupy s2 with 48_0
    li      s2, 48
              #                    occupy s3 with temp_15_arithop_52_0
              #                    regtab:    a0:Freed { symidx: temp_24_ret_of_is_num_50_0, tracked: true } |     a1:Freed { symidx: *num_0, tracked: false } |     a2:Freed { symidx: temp_25__1038_0, tracked: true } |     a3:Freed { symidx: temp_11_value_from_ptr_52_0, tracked: true } |     a4:Freed { symidx: temp_12_arithop_52_0, tracked: true } |     a5:Freed { symidx: 10_0, tracked: false } |     a6:Freed { symidx: *last_char_0, tracked: false } |     a7:Freed { symidx: temp_13_value_from_ptr_52_0, tracked: true } |     s1:Occupied { symidx: temp_14_arithop_52_0, tracked: true, occupy_count: 1 } |     s2:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     s3:Occupied { symidx: temp_15_arithop_52_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    s3,s1,s2
              #                    free s1
              #                    occupy s1 with temp_14_arithop_52_0
              #                    store to temp_14_arithop_52_0 in mem offset legal
    sw      s1,44(sp)
              #                    release s1 with temp_14_arithop_52_0
              #                    free s2
              #                    free s3
              #                     125  store temp_15_arithop_52_0:i32 *num_0:ptr->i32 
              #                    occupy s1 with *num_0
              #                       load label num as ptr to reg
    la      s1, num
              #                    occupy reg s1 with *num_0
              #                    occupy s3 with temp_15_arithop_52_0
    sw      s3,0(s1)
              #                    free s3
              #                    occupy s3 with temp_15_arithop_52_0
              #                    store to temp_15_arithop_52_0 in mem offset legal
    sw      s3,40(sp)
              #                    release s3 with temp_15_arithop_52_0
              #                    free s1
              #                     126  num_0_4 = chi num_0_3:125 
              #                          jump label: while.head_51 
              #                    occupy a4 with temp_12_arithop_52_0
              #                    store to temp_12_arithop_52_0 in mem offset legal
    sw      a4,52(sp)
              #                    release a4 with temp_12_arithop_52_0
              #                    occupy a0 with temp_24_ret_of_is_num_50_0
              #                    store to temp_24_ret_of_is_num_50_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_24_ret_of_is_num_50_0
              #                    occupy a0 with temp_17_value_from_ptr_43_0
              #                    load from temp_17_value_from_ptr_43_0 in mem


    lw      a0,32(sp)
              #                    occupy a7 with temp_13_value_from_ptr_52_0
              #                    store to temp_13_value_from_ptr_52_0 in mem offset legal
    sw      a7,48(sp)
              #                    release a7 with temp_13_value_from_ptr_52_0
              #                    occupy a2 with temp_25__1038_0
              #                    store to temp_25__1038_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_25__1038_0
              #                    occupy a3 with temp_11_value_from_ptr_52_0
              #                    store to temp_11_value_from_ptr_52_0 in mem offset legal
    sw      a3,56(sp)
              #                    release a3 with temp_11_value_from_ptr_52_0
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: temp_24_ret_of_is_num_50_0, tracked: true } |     a2:Freed { symidx: temp_25__1038_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     161  label while.exit_51: 
.while.exit_51:
              #                     111  store 0_0:i32 *cur_token_0:ptr->i32 
              #                    occupy a1 with *cur_token_0
              #                       load label cur_token as ptr to reg
    la      a1, cur_token
              #                    occupy reg a1 with *cur_token_0
              #                    occupy a3 with 0_0
    li      a3, 0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     112  cur_token_0_2 = chi cur_token_0_1:111 
              #                          jump label: gather_26 
    j       .gather_26
              #                    regtab     a0:Freed { symidx: temp_24_ret_of_is_num_50_0, tracked: true } |     a2:Freed { symidx: temp_25__1038_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     150  label gather_26: 
.gather_26:
              #                          jump label: L22_0 
    j       .L22_0
              #                    regtab     a0:Freed { symidx: temp_24_ret_of_is_num_50_0, tracked: true } |     a2:Freed { symidx: temp_25__1038_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                          label L22_0: 
.L22_0:
              #                     101  temp_8_value_from_ptr_42_0 = load *cur_token_0:ptr->i32 
              #                    occupy a1 with *cur_token_0
              #                       load label cur_token as ptr to reg
    la      a1, cur_token
              #                    occupy reg a1 with *cur_token_0
              #                    occupy a3 with temp_8_value_from_ptr_42_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     102  mu cur_token_0_3:101 
              #                     530  mu num_0_5:103 
              #                     531  mu other_0_2:103 
              #                     532  mu last_char_0_8:103 
              #                     533  mu cur_token_0_3:103 
              #                     103  ret temp_8_value_from_ptr_42_0 
              #                    load from ra_next_token_0 in mem
    ld      ra,80(sp)
              #                    load from s0_next_token_0 in mem
    ld      s0,72(sp)
              #                    occupy a3 with temp_8_value_from_ptr_42_0
              #                    store to temp_8_value_from_ptr_42_0 in mem offset legal
    sw      a3,64(sp)
              #                    release a3 with temp_8_value_from_ptr_42_0
              #                    occupy a0 with temp_24_ret_of_is_num_50_0
              #                    store to temp_24_ret_of_is_num_50_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_24_ret_of_is_num_50_0
              #                    occupy a0 with temp_8_value_from_ptr_42_0
              #                    load from temp_8_value_from_ptr_42_0 in mem


    lw      a0,64(sp)
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_22__952_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     148  label branch_false_47: 
.branch_false_47:
              #                     687  untrack temp_10_arithop_48_0 
              #                     686  untrack temp_22__952_0 
              #                    occupy a2 with temp_22__952_0
              #                    release a2 with temp_22__952_0
              #                     91   (nop) 
              #                     92   mu last_char_0_4:91 
              #                     93   store temp_17_value_from_ptr_43_0:i32 *other_0:ptr->i32 
              #                    occupy a0 with *other_0
              #                       load label other as ptr to reg
    la      a0, other
              #                    occupy reg a0 with *other_0
              #                    occupy a1 with temp_17_value_from_ptr_43_0
              #                    load from temp_17_value_from_ptr_43_0 in mem


    lw      a1,32(sp)
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     94   other_0_3 = chi other_0_1:93 
              #                     96   temp_7_ret_of_next_char_55_0 =  Call i32 next_char_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_17_value_from_ptr_43_0
              #                    store to temp_17_value_from_ptr_43_0 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with temp_17_value_from_ptr_43_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_char
              #                     534  mu last_char_0_4:96 
              #                     535  last_char_0_9 = chi last_char_0_4:96 
              #                     97   store 1_0:i32 *cur_token_0:ptr->i32 
              #                    occupy a1 with *cur_token_0
              #                       load label cur_token as ptr to reg
    la      a1, cur_token
              #                    occupy reg a1 with *cur_token_0
              #                    occupy a2 with 1_0
    li      a2, 1
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     98   cur_token_0_4 = chi cur_token_0_1:97 
              #                          jump label: gather_26 
              #                    occupy a0 with temp_7_ret_of_next_char_55_0
              #                    store to temp_7_ret_of_next_char_55_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_7_ret_of_next_char_55_0
              #                    occupy a0 with temp_24_ret_of_is_num_50_0
              #                    load from temp_24_ret_of_is_num_50_0 in mem


    lw      a0,8(sp)
              #                    occupy a2 with temp_25__1038_0
              #                    load from temp_25__1038_0 in mem


    lb      a2,7(sp)
    j       .gather_26
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     32   Define panic_0 "" -> panic_ret_0 
    .globl panic
    .type panic,@function
panic:
              #                    mem layout:|ra_panic:8 at 8|s0_panic:8 at 0
    addi    sp,sp,-16
              #                    store to ra_panic_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_panic_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L21_0: 
.L21_0:
              #                     163   Call void putch_0(112_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_112_0_0
    li      a0, 112
              #                    arg load ended


    call    putch
              #                     164   Call void putch_0(97_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_97_0_0
    li      a0, 97
              #                    arg load ended


    call    putch
              #                     165   Call void putch_0(110_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_110_0_0
    li      a0, 110
              #                    arg load ended


    call    putch
              #                     166   Call void putch_0(105_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_105_0_0
    li      a0, 105
              #                    arg load ended


    call    putch
              #                     167   Call void putch_0(99_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_99_0_0
    li      a0, 99
              #                    arg load ended


    call    putch
              #                     168   Call void putch_0(33_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_33_0_0
    li      a0, 33
              #                    arg load ended


    call    putch
              #                     169   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     171  ret -1_0 
              #                    load from ra_panic_0 in mem
    ld      ra,8(sp)
              #                    load from s0_panic_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with -1_0
    li      a0, -1
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     33   Define get_op_prec_0 "op_70_0," -> get_op_prec_ret_0 
    .globl get_op_prec
    .type get_op_prec,@function
get_op_prec:
              #                    mem layout:|ra_get_op_prec:8 at 24|s0_get_op_prec:8 at 16|op _s70 _i0:4 at 12|temp_26_cmp _s73 _i0:1 at 11|temp_27_cmp _s73 _i0:1 at 10|temp_28_cmp _s76 _i0:1 at 9|temp_29_cmp _s76 _i0:1 at 8|temp_30_cmp _s76 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-32
              #                    store to ra_get_op_prec_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_get_op_prec_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     180  alloc i1 [temp_26_cmp_73] 
              #                     182  alloc i1 [temp_27_cmp_73] 
              #                     190  alloc i1 [temp_28_cmp_76] 
              #                     192  alloc i1 [temp_29_cmp_76] 
              #                     194  alloc i1 [temp_30_cmp_76] 
              #                    regtab     a0:Freed { symidx: op_70_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L18_0: 
.L18_0:
              #                     181  temp_26_cmp_73_0 = icmp i32 Eq op_70_0, 43_0 
              #                    occupy a0 with op_70_0
              #                    occupy a1 with 43_0
    li      a1, 43
              #                    occupy a2 with temp_26_cmp_73_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     189  br i1 temp_26_cmp_73_0, label branch_short_circuit_c_true_368, label branch_short_circuit_p_false_368 
              #                    occupy a2 with temp_26_cmp_73_0
              #                    free a2
              #                    occupy a2 with temp_26_cmp_73_0
    bnez    a2, .branch_short_circuit_c_true_368
              #                    free a2
    j       .branch_short_circuit_p_false_368
              #                    regtab     a0:Freed { symidx: op_70_0, tracked: true } |     a2:Freed { symidx: temp_26_cmp_73_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     184  label branch_short_circuit_c_true_368: 
.branch_short_circuit_c_true_368:
              #                     701  untrack temp_27_cmp_73_0 
              #                     700  untrack temp_29_cmp_76_0 
              #                     699  untrack temp_28_cmp_76_0 
              #                     698  untrack op_70_0 
              #                    occupy a0 with op_70_0
              #                    release a0 with op_70_0
              #                     697  untrack temp_30_cmp_76_0 
              #                     695  untrack temp_30_cmp_76_0 
              #                     694  untrack op_70_0 
              #                     693  untrack temp_26_cmp_73_0 
              #                    occupy a2 with temp_26_cmp_73_0
              #                    release a2 with temp_26_cmp_73_0
              #                     692  untrack temp_28_cmp_76_0 
              #                     691  untrack temp_29_cmp_76_0 
              #                     690  untrack temp_27_cmp_73_0 
              #                     179  ret 10_0 
              #                    load from ra_get_op_prec_0 in mem
    ld      ra,24(sp)
              #                    load from s0_get_op_prec_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with 10_0
    li      a0, 10
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: op_70_0, tracked: true } |     a2:Freed { symidx: temp_26_cmp_73_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     186  label branch_short_circuit_p_false_368: 
.branch_short_circuit_p_false_368:
              #                     696  untrack temp_26_cmp_73_0 
              #                    occupy a2 with temp_26_cmp_73_0
              #                    release a2 with temp_26_cmp_73_0
              #                     183  temp_27_cmp_73_0 = icmp i32 Eq op_70_0, 45_0 
              #                    occupy a0 with op_70_0
              #                    occupy a1 with 45_0
    li      a1, 45
              #                    occupy a2 with temp_27_cmp_73_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     188  br i1 temp_27_cmp_73_0, label branch_short_circuit_c_true_368, label branch_short_circuit_c_false_368 
              #                    occupy a2 with temp_27_cmp_73_0
              #                    free a2
              #                    occupy a2 with temp_27_cmp_73_0
              #                    store to temp_27_cmp_73_0 in mem offset legal
    sb      a2,10(sp)
              #                    release a2 with temp_27_cmp_73_0
              #                    occupy a2 with temp_26_cmp_73_0
              #                    load from temp_26_cmp_73_0 in mem


    lb      a2,11(sp)
              #                    occupy a1 with temp_27_cmp_73_0
              #                    load from temp_27_cmp_73_0 in mem


    lb      a1,10(sp)
    bnez    a1, .branch_short_circuit_c_true_368
              #                    free a1
    j       .branch_short_circuit_c_false_368
              #                    regtab     a0:Freed { symidx: op_70_0, tracked: true } |     a1:Freed { symidx: temp_27_cmp_73_0, tracked: true } |     a2:Freed { symidx: temp_26_cmp_73_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     185  label branch_short_circuit_c_false_368: 
.branch_short_circuit_c_false_368:
              #                     702  untrack temp_27_cmp_73_0 
              #                    occupy a1 with temp_27_cmp_73_0
              #                    release a1 with temp_27_cmp_73_0
              #                          jump label: L19_0 
    j       .L19_0
              #                    regtab     a0:Freed { symidx: op_70_0, tracked: true } |     a2:Freed { symidx: temp_26_cmp_73_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L19_0: 
.L19_0:
              #                     191  temp_28_cmp_76_0 = icmp i32 Eq op_70_0, 42_0 
              #                    occupy a0 with op_70_0
              #                    occupy a1 with 42_0
    li      a1, 42
              #                    occupy a3 with temp_28_cmp_76_0
    xor     a3,a0,a1
    seqz    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                     204  br i1 temp_28_cmp_76_0, label branch_short_circuit_c_true_385, label branch_short_circuit_p_false_380 
              #                    occupy a3 with temp_28_cmp_76_0
              #                    free a3
              #                    occupy a3 with temp_28_cmp_76_0
    bnez    a3, .branch_short_circuit_c_true_385
              #                    free a3
    j       .branch_short_circuit_p_false_380
              #                    regtab     a0:Freed { symidx: op_70_0, tracked: true } |     a2:Freed { symidx: temp_26_cmp_73_0, tracked: true } |     a3:Freed { symidx: temp_28_cmp_76_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     196  label branch_short_circuit_c_true_385: 
.branch_short_circuit_c_true_385:
              #                     713  untrack temp_30_cmp_76_0 
              #                     710  untrack temp_30_cmp_76_0 
              #                     709  untrack op_70_0 
              #                    occupy a0 with op_70_0
              #                    release a0 with op_70_0
              #                     708  untrack temp_29_cmp_76_0 
              #                     706  untrack temp_29_cmp_76_0 
              #                     705  untrack op_70_0 
              #                     704  untrack temp_28_cmp_76_0 
              #                    occupy a3 with temp_28_cmp_76_0
              #                    release a3 with temp_28_cmp_76_0
              #                     703  untrack temp_30_cmp_76_0 
              #                     177  ret 20_0 
              #                    load from ra_get_op_prec_0 in mem
    ld      ra,24(sp)
              #                    load from s0_get_op_prec_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with 20_0
    li      a0, 20
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: op_70_0, tracked: true } |     a2:Freed { symidx: temp_26_cmp_73_0, tracked: true } |     a3:Freed { symidx: temp_28_cmp_76_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     201  label branch_short_circuit_p_false_380: 
.branch_short_circuit_p_false_380:
              #                     707  untrack temp_28_cmp_76_0 
              #                    occupy a3 with temp_28_cmp_76_0
              #                    release a3 with temp_28_cmp_76_0
              #                     193  temp_29_cmp_76_0 = icmp i32 Eq op_70_0, 47_0 
              #                    occupy a0 with op_70_0
              #                    occupy a1 with 47_0
    li      a1, 47
              #                    occupy a3 with temp_29_cmp_76_0
    xor     a3,a0,a1
    seqz    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                     203  br i1 temp_29_cmp_76_0, label branch_short_circuit_c_true_385, label branch_short_circuit_p_false_385 
              #                    occupy a3 with temp_29_cmp_76_0
              #                    free a3
              #                    occupy a3 with temp_29_cmp_76_0
              #                    store to temp_29_cmp_76_0 in mem offset legal
    sb      a3,8(sp)
              #                    release a3 with temp_29_cmp_76_0
              #                    occupy a3 with temp_28_cmp_76_0
              #                    load from temp_28_cmp_76_0 in mem


    lb      a3,9(sp)
              #                    occupy a1 with temp_29_cmp_76_0
              #                    load from temp_29_cmp_76_0 in mem


    lb      a1,8(sp)
    bnez    a1, .branch_short_circuit_c_true_385
              #                    free a1
    j       .branch_short_circuit_p_false_385
              #                    regtab     a0:Freed { symidx: op_70_0, tracked: true } |     a1:Freed { symidx: temp_29_cmp_76_0, tracked: true } |     a2:Freed { symidx: temp_26_cmp_73_0, tracked: true } |     a3:Freed { symidx: temp_28_cmp_76_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     198  label branch_short_circuit_p_false_385: 
.branch_short_circuit_p_false_385:
              #                     711  untrack temp_29_cmp_76_0 
              #                    occupy a1 with temp_29_cmp_76_0
              #                    release a1 with temp_29_cmp_76_0
              #                     195  temp_30_cmp_76_0 = icmp i32 Eq op_70_0, 37_0 
              #                    occupy a0 with op_70_0
              #                    occupy a1 with 37_0
    li      a1, 37
              #                    occupy a4 with temp_30_cmp_76_0
    xor     a4,a0,a1
    seqz    a4, a4
              #                    free a0
              #                    free a1
              #                    free a4
              #                     712  untrack op_70_0 
              #                    occupy a0 with op_70_0
              #                    release a0 with op_70_0
              #                     200  br i1 temp_30_cmp_76_0, label branch_short_circuit_c_true_385, label branch_short_circuit_c_false_385 
              #                    occupy a4 with temp_30_cmp_76_0
              #                    free a4
              #                    occupy a4 with temp_30_cmp_76_0
              #                    store to temp_30_cmp_76_0 in mem offset legal
    sb      a4,7(sp)
              #                    release a4 with temp_30_cmp_76_0
              #                    occupy a0 with op_70_0
              #                    load from op_70_0 in mem


    lw      a0,12(sp)
              #                    occupy a1 with temp_30_cmp_76_0
              #                    load from temp_30_cmp_76_0 in mem


    lb      a1,7(sp)
    bnez    a1, .branch_short_circuit_c_true_385
              #                    free a1
    j       .branch_short_circuit_c_false_385
              #                    regtab     a0:Freed { symidx: op_70_0, tracked: true } |     a1:Freed { symidx: temp_30_cmp_76_0, tracked: true } |     a2:Freed { symidx: temp_26_cmp_73_0, tracked: true } |     a3:Freed { symidx: temp_28_cmp_76_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     197  label branch_short_circuit_c_false_385: 
.branch_short_circuit_c_false_385:
              #                     714  untrack temp_30_cmp_76_0 
              #                    occupy a1 with temp_30_cmp_76_0
              #                    release a1 with temp_30_cmp_76_0
              #                          jump label: L20_0 
    j       .L20_0
              #                    regtab     a0:Freed { symidx: op_70_0, tracked: true } |     a2:Freed { symidx: temp_26_cmp_73_0, tracked: true } |     a3:Freed { symidx: temp_28_cmp_76_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L20_0: 
.L20_0:
              #                     175  ret 0_0 
              #                    load from ra_get_op_prec_0 in mem
    ld      ra,24(sp)
              #                    load from s0_get_op_prec_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with op_70_0
              #                    store to op_70_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with op_70_0
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     35   Define stack_push_0 "s_80,v_80_0," -> stack_push_ret_0 
    .globl stack_push
    .type stack_push,@function
stack_push:
              #                    mem layout:|ra_stack_push:8 at 96|s0_stack_push:8 at 88|s:8 at 80|s:8 at 72|s:8 at 64|s:8 at 56|v _s80 _i0:4 at 52|none:4 at 48|temp_31_ptr_of_s_80:8 at 40|temp_32_ptr_of_s_80:8 at 32|temp_33_ele_of_s_80 _s82 _i0:4 at 28|temp_34_arithop _s82 _i0:4 at 24|temp_35_ptr_of_s_80:8 at 16|temp_36_ele_of_s_80 _s82 _i0:4 at 12|none:4 at 8|temp_37_ptr_of_s_80:8 at 0
    addi    sp,sp,-104
              #                    store to ra_stack_push_0 in mem offset legal
    sd      ra,96(sp)
              #                    store to s0_stack_push_0 in mem offset legal
    sd      s0,88(sp)
    addi    s0,sp,104
              #                     207  alloc ptr->i32 [temp_31_ptr_of_s_80_82] 
              #                     209  alloc ptr->i32 [temp_32_ptr_of_s_80_82] 
              #                     211  alloc i32 [temp_33_ele_of_s_80_82] 
              #                     214  alloc i32 [temp_34_arithop_82] 
              #                     218  alloc ptr->i32 [temp_35_ptr_of_s_80_82] 
              #                     220  alloc i32 [temp_36_ele_of_s_80_82] 
              #                     223  alloc ptr->i32 [temp_37_ptr_of_s_80_82] 
              #                    regtab     a0:Freed { symidx: s_80, tracked: true } |     a1:Freed { symidx: v_80_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L17_0: 
.L17_0:
              #                     34    
              #                     208  temp_31_ptr_of_s_80_82 = GEP s_80:ptr->i32 [Some(0_0)] 
              #                    occupy a2 with temp_31_ptr_of_s_80_82
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with s_80
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     210  (nop) 
              #                     212  temp_33_ele_of_s_80_82_0 = load temp_31_ptr_of_s_80_82:ptr->i32 
              #                    occupy a2 with temp_31_ptr_of_s_80_82
              #                    occupy a4 with temp_33_ele_of_s_80_82_0
    lw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     213  mu s_80:212 
              #                     215  temp_34_arithop_82_0 = Add i32 temp_33_ele_of_s_80_82_0, 1_0 
              #                    occupy a4 with temp_33_ele_of_s_80_82_0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_34_arithop_82_0
    ADDW    a6,a4,a5
              #                    free a4
              #                    free a5
              #                    free a6
              #                     719  untrack temp_33_ele_of_s_80_82_0 
              #                    occupy a4 with temp_33_ele_of_s_80_82_0
              #                    release a4 with temp_33_ele_of_s_80_82_0
              #                     216  store temp_34_arithop_82_0:i32 temp_31_ptr_of_s_80_82:ptr->i32 
              #                    occupy a2 with temp_31_ptr_of_s_80_82
              #                    occupy a6 with temp_34_arithop_82_0
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     721  untrack temp_31_ptr_of_s_80_82 
              #                    occupy a2 with temp_31_ptr_of_s_80_82
              #                    release a2 with temp_31_ptr_of_s_80_82
              #                     718  untrack temp_34_arithop_82_0 
              #                    occupy a6 with temp_34_arithop_82_0
              #                    release a6 with temp_34_arithop_82_0
              #                     217  s_80 = chi s_80:216 
              #                     219  temp_35_ptr_of_s_80_82 = GEP s_80:Array:i32:[None] [Some(0_0)] 
              #                    occupy a2 with temp_35_ptr_of_s_80_82
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a0 with s_80
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     221  temp_36_ele_of_s_80_82_0 = load temp_35_ptr_of_s_80_82:ptr->i32 
              #                    occupy a2 with temp_35_ptr_of_s_80_82
              #                    occupy a6 with temp_36_ele_of_s_80_82_0
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     717  untrack temp_35_ptr_of_s_80_82 
              #                    occupy a2 with temp_35_ptr_of_s_80_82
              #                    release a2 with temp_35_ptr_of_s_80_82
              #                     222  mu s_80:221 
              #                     224  temp_37_ptr_of_s_80_82 = GEP s_80:ptr->i32 [Some(temp_36_ele_of_s_80_82_0)] 
              #                    occupy a2 with temp_37_ptr_of_s_80_82
    li      a2, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with temp_36_ele_of_s_80_82_0
    mv      a7, a6
              #                    free a6
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
              #                    occupy a0 with s_80
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     715  untrack temp_36_ele_of_s_80_82_0 
              #                    occupy a6 with temp_36_ele_of_s_80_82_0
              #                    release a6 with temp_36_ele_of_s_80_82_0
              #                     225  store v_80_0:i32 temp_37_ptr_of_s_80_82:ptr->i32 
              #                    occupy a2 with temp_37_ptr_of_s_80_82
              #                    occupy a1 with v_80_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     720  untrack v_80_0 
              #                    occupy a1 with v_80_0
              #                    release a1 with v_80_0
              #                     716  untrack temp_37_ptr_of_s_80_82 
              #                    occupy a2 with temp_37_ptr_of_s_80_82
              #                    release a2 with temp_37_ptr_of_s_80_82
              #                     226  s_80 = chi s_80:225 
              #                          jump label: exit_41 
    j       .exit_41
              #                    regtab     a0:Freed { symidx: s_80, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     228  label exit_41: 
.exit_41:
              #                     536  mu s_80:227 
              #                     722  untrack s_80 
              #                    occupy a0 with s_80
              #                    release a0 with s_80
              #                     227  ret 
              #                    load from ra_stack_push_0 in mem
    ld      ra,96(sp)
              #                    load from s0_stack_push_0 in mem
    ld      s0,88(sp)
    addi    sp,sp,104
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     37   Define stack_pop_0 "s_85," -> stack_pop_ret_0 
    .globl stack_pop
    .type stack_pop,@function
stack_pop:
              #                    mem layout:|ra_stack_pop:8 at 88|s0_stack_pop:8 at 80|s:8 at 72|s:8 at 64|s:8 at 56|temp_38_ptr_of_s_85:8 at 48|temp_39_ele_of_s_85 _s87 _i0:4 at 44|none:4 at 40|temp_40_ptr_of_s_85:8 at 32|temp_41_ele_of_s_85 _s87 _i0:4 at 28|none:4 at 24|temp_42_ptr_of_s_85:8 at 16|temp_43_ptr_of_s_85:8 at 8|temp_45_arithop _s87 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-96
              #                    store to ra_stack_pop_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_stack_pop_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                     229  alloc ptr->i32 [temp_38_ptr_of_s_85_87] 
              #                     231  alloc i32 [temp_39_ele_of_s_85_87] 
              #                     234  alloc ptr->i32 [temp_40_ptr_of_s_85_87] 
              #                     236  alloc i32 [temp_41_ele_of_s_85_87] 
              #                     240  alloc i32 [last_87] 
              #                     241  alloc ptr->i32 [temp_42_ptr_of_s_85_87] 
              #                     243  alloc ptr->i32 [temp_43_ptr_of_s_85_87] 
              #                     245  alloc i32 [temp_44_ele_of_s_85_87] 
              #                     248  alloc i32 [temp_45_arithop_87] 
              #                    regtab     a0:Freed { symidx: s_85, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L16_0: 
.L16_0:
              #                     36    
              #                     230  temp_38_ptr_of_s_85_87 = GEP s_85:Array:i32:[None] [Some(0_0)] 
              #                    occupy a1 with temp_38_ptr_of_s_85_87
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a0 with s_85
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                     232  temp_39_ele_of_s_85_87_0 = load temp_38_ptr_of_s_85_87:ptr->i32 
              #                    occupy a1 with temp_38_ptr_of_s_85_87
              #                    occupy a3 with temp_39_ele_of_s_85_87_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     233  mu s_85:232 
              #                     235  temp_40_ptr_of_s_85_87 = GEP s_85:Array:i32:[None] [Some(temp_39_ele_of_s_85_87_0)] 
              #                    occupy a4 with temp_40_ptr_of_s_85_87
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_39_ele_of_s_85_87_0
    mv      a5, a3
              #                    free a3
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a0 with s_85
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                     237  temp_41_ele_of_s_85_87_0 = load temp_40_ptr_of_s_85_87:ptr->i32 
              #                    occupy a4 with temp_40_ptr_of_s_85_87
              #                    occupy a6 with temp_41_ele_of_s_85_87_0
    lw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                     726  untrack temp_40_ptr_of_s_85_87 
              #                    occupy a4 with temp_40_ptr_of_s_85_87
              #                    release a4 with temp_40_ptr_of_s_85_87
              #                     238  mu s_85:237 
              #                     239  (nop) 
              #                     242  (nop) 
              #                     244  (nop) 
              #                     246  (nop) 
              #                     247  mu s_85:246 
              #                     249  temp_45_arithop_87_0 = Sub i32 temp_39_ele_of_s_85_87_0, 1_0 
              #                    occupy a3 with temp_39_ele_of_s_85_87_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a7 with temp_45_arithop_87_0
              #                    regtab:    a0:Freed { symidx: s_85, tracked: true } |     a1:Freed { symidx: temp_38_ptr_of_s_85_87, tracked: true } |     a2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a3:Occupied { symidx: temp_39_ele_of_s_85_87_0, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a6:Freed { symidx: temp_41_ele_of_s_85_87_0, tracked: true } |     a7:Occupied { symidx: temp_45_arithop_87_0, tracked: true, occupy_count: 1 } |  released_gpr_count:11,released_fpr_count:24


    subw    a7,a3,a4
              #                    free a3
              #                    free a4
              #                    free a7
              #                     724  untrack temp_39_ele_of_s_85_87_0 
              #                    occupy a3 with temp_39_ele_of_s_85_87_0
              #                    release a3 with temp_39_ele_of_s_85_87_0
              #                     250  store temp_45_arithop_87_0:i32 temp_38_ptr_of_s_85_87:ptr->i32 
              #                    occupy a1 with temp_38_ptr_of_s_85_87
              #                    occupy a7 with temp_45_arithop_87_0
    sw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                     727  untrack temp_38_ptr_of_s_85_87 
              #                    occupy a1 with temp_38_ptr_of_s_85_87
              #                    release a1 with temp_38_ptr_of_s_85_87
              #                     725  untrack temp_45_arithop_87_0 
              #                    occupy a7 with temp_45_arithop_87_0
              #                    release a7 with temp_45_arithop_87_0
              #                     251  s_85 = chi s_85:250 
              #                     537  mu s_85:253 
              #                     723  untrack s_85 
              #                    occupy a0 with s_85
              #                    release a0 with s_85
              #                     253  ret temp_41_ele_of_s_85_87_0 
              #                    load from ra_stack_pop_0 in mem
    ld      ra,88(sp)
              #                    load from s0_stack_pop_0 in mem
    ld      s0,80(sp)
              #                    occupy a6 with temp_41_ele_of_s_85_87_0
              #                    store to temp_41_ele_of_s_85_87_0 in mem offset legal
    sw      a6,28(sp)
              #                    release a6 with temp_41_ele_of_s_85_87_0
              #                    occupy a0 with temp_41_ele_of_s_85_87_0
              #                    load from temp_41_ele_of_s_85_87_0 in mem


    lw      a0,28(sp)
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     39   Define stack_peek_0 "s_91," -> stack_peek_ret_0 
    .globl stack_peek
    .type stack_peek,@function
stack_peek:
              #                    mem layout:|ra_stack_peek:8 at 56|s0_stack_peek:8 at 48|s:8 at 40|s:8 at 32|temp_46_ptr_of_s_91:8 at 24|temp_47_ele_of_s_91 _s93 _i0:4 at 20|none:4 at 16|temp_48_ptr_of_s_91:8 at 8|temp_49_ele_of_s_91 _s93 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-64
              #                    store to ra_stack_peek_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_stack_peek_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     257  alloc ptr->i32 [temp_46_ptr_of_s_91_93] 
              #                     259  alloc i32 [temp_47_ele_of_s_91_93] 
              #                     262  alloc ptr->i32 [temp_48_ptr_of_s_91_93] 
              #                     264  alloc i32 [temp_49_ele_of_s_91_93] 
              #                    regtab     a0:Freed { symidx: s_91, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L15_0: 
.L15_0:
              #                     38    
              #                     258  temp_46_ptr_of_s_91_93 = GEP s_91:Array:i32:[None] [Some(0_0)] 
              #                    occupy a1 with temp_46_ptr_of_s_91_93
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a0 with s_91
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                     260  temp_47_ele_of_s_91_93_0 = load temp_46_ptr_of_s_91_93:ptr->i32 
              #                    occupy a1 with temp_46_ptr_of_s_91_93
              #                    occupy a3 with temp_47_ele_of_s_91_93_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     730  untrack temp_46_ptr_of_s_91_93 
              #                    occupy a1 with temp_46_ptr_of_s_91_93
              #                    release a1 with temp_46_ptr_of_s_91_93
              #                     261  mu s_91:260 
              #                     263  temp_48_ptr_of_s_91_93 = GEP s_91:Array:i32:[None] [Some(temp_47_ele_of_s_91_93_0)] 
              #                    occupy a1 with temp_48_ptr_of_s_91_93
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_47_ele_of_s_91_93_0
    mv      a4, a3
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a0 with s_91
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                     729  untrack temp_47_ele_of_s_91_93_0 
              #                    occupy a3 with temp_47_ele_of_s_91_93_0
              #                    release a3 with temp_47_ele_of_s_91_93_0
              #                     265  temp_49_ele_of_s_91_93_0 = load temp_48_ptr_of_s_91_93:ptr->i32 
              #                    occupy a1 with temp_48_ptr_of_s_91_93
              #                    occupy a3 with temp_49_ele_of_s_91_93_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     728  untrack temp_48_ptr_of_s_91_93 
              #                    occupy a1 with temp_48_ptr_of_s_91_93
              #                    release a1 with temp_48_ptr_of_s_91_93
              #                     266  mu s_91:265 
              #                     731  untrack s_91 
              #                    occupy a0 with s_91
              #                    release a0 with s_91
              #                     267  ret temp_49_ele_of_s_91_93_0 
              #                    load from ra_stack_peek_0 in mem
    ld      ra,56(sp)
              #                    load from s0_stack_peek_0 in mem
    ld      s0,48(sp)
              #                    occupy a3 with temp_49_ele_of_s_91_93_0
              #                    store to temp_49_ele_of_s_91_93_0 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_49_ele_of_s_91_93_0
              #                    occupy a0 with temp_49_ele_of_s_91_93_0
              #                    load from temp_49_ele_of_s_91_93_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     41   Define stack_size_0 "s_95," -> stack_size_ret_0 
    .globl stack_size
    .type stack_size,@function
stack_size:
              #                    mem layout:|ra_stack_size:8 at 40|s0_stack_size:8 at 32|s:8 at 24|s:8 at 16|temp_50_ptr_of_s_95:8 at 8|temp_51_ele_of_s_95 _s97 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_stack_size_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_stack_size_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     271  alloc ptr->i32 [temp_50_ptr_of_s_95_97] 
              #                     273  alloc i32 [temp_51_ele_of_s_95_97] 
              #                    regtab     a0:Freed { symidx: s_95, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L14_0: 
.L14_0:
              #                     40    
              #                     272  temp_50_ptr_of_s_95_97 = GEP s_95:Array:i32:[None] [Some(0_0)] 
              #                    occupy a1 with temp_50_ptr_of_s_95_97
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a0 with s_95
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                     274  temp_51_ele_of_s_95_97_0 = load temp_50_ptr_of_s_95_97:ptr->i32 
              #                    occupy a1 with temp_50_ptr_of_s_95_97
              #                    occupy a3 with temp_51_ele_of_s_95_97_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     733  untrack temp_50_ptr_of_s_95_97 
              #                    occupy a1 with temp_50_ptr_of_s_95_97
              #                    release a1 with temp_50_ptr_of_s_95_97
              #                     275  mu s_95:274 
              #                     732  untrack s_95 
              #                    occupy a0 with s_95
              #                    release a0 with s_95
              #                     276  ret temp_51_ele_of_s_95_97_0 
              #                    load from ra_stack_size_0 in mem
    ld      ra,40(sp)
              #                    load from s0_stack_size_0 in mem
    ld      s0,32(sp)
              #                    occupy a3 with temp_51_ele_of_s_95_97_0
              #                    store to temp_51_ele_of_s_95_97_0 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_51_ele_of_s_95_97_0
              #                    occupy a0 with temp_51_ele_of_s_95_97_0
              #                    load from temp_51_ele_of_s_95_97_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     42   Define eval_op_0 "op_99_0,lhs_99_0,rhs_99_0," -> eval_op_ret_0 
    .globl eval_op
    .type eval_op,@function
eval_op:
              #                    mem layout:|ra_eval_op:8 at 48|s0_eval_op:8 at 40|op _s99 _i0:4 at 36|lhs _s99 _i0:4 at 32|rhs _s99 _i0:4 at 28|temp_52_arithop _s114 _i0:4 at 24|temp_53_arithop _s111 _i0:4 at 20|temp_54_arithop _s108 _i0:4 at 16|temp_55_arithop _s105 _i0:4 at 12|temp_56_arithop _s102 _i0:4 at 8|temp_57_cmp _s102 _i0:1 at 7|temp_58_cmp _s105 _i0:1 at 6|temp_59_cmp _s108 _i0:1 at 5|temp_60_cmp _s111 _i0:1 at 4|temp_61_cmp _s114 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-56
              #                    store to ra_eval_op_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_eval_op_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     282  alloc i32 [temp_52_arithop_114] 
              #                     286  alloc i32 [temp_53_arithop_111] 
              #                     290  alloc i32 [temp_54_arithop_108] 
              #                     294  alloc i32 [temp_55_arithop_105] 
              #                     298  alloc i32 [temp_56_arithop_102] 
              #                     301  alloc i1 [temp_57_cmp_102] 
              #                     306  alloc i1 [temp_58_cmp_105] 
              #                     311  alloc i1 [temp_59_cmp_108] 
              #                     316  alloc i1 [temp_60_cmp_111] 
              #                     321  alloc i1 [temp_61_cmp_114] 
              #                    regtab     a0:Freed { symidx: op_99_0, tracked: true } |     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     302  temp_57_cmp_102_0 = icmp i32 Eq op_99_0, 43_0 
              #                    occupy a0 with op_99_0
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    occupy a4 with temp_57_cmp_102_0
    xor     a4,a0,a3
    seqz    a4, a4
              #                    free a0
              #                    free a3
              #                    free a4
              #                     305  br i1 temp_57_cmp_102_0, label branch_true_103, label branch_false_103 
              #                    occupy a4 with temp_57_cmp_102_0
              #                    free a4
              #                    occupy a4 with temp_57_cmp_102_0
    bnez    a4, .branch_true_103
              #                    free a4
    j       .branch_false_103
              #                    regtab     a0:Freed { symidx: op_99_0, tracked: true } |     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |     a4:Freed { symidx: temp_57_cmp_102_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     303  label branch_true_103: 
.branch_true_103:
              #                     743  untrack temp_53_arithop_111_0 
              #                     742  untrack temp_61_cmp_114_0 
              #                     741  untrack temp_59_cmp_108_0 
              #                     740  untrack op_99_0 
              #                    occupy a0 with op_99_0
              #                    release a0 with op_99_0
              #                     739  untrack temp_58_cmp_105_0 
              #                     738  untrack temp_60_cmp_111_0 
              #                     737  untrack temp_52_arithop_114_0 
              #                     736  untrack temp_55_arithop_105_0 
              #                     735  untrack temp_54_arithop_108_0 
              #                     734  untrack temp_57_cmp_102_0 
              #                    occupy a4 with temp_57_cmp_102_0
              #                    release a4 with temp_57_cmp_102_0
              #                     299  temp_56_arithop_102_0 = Add i32 lhs_99_0, rhs_99_0 
              #                    occupy a1 with lhs_99_0
              #                    occupy a2 with rhs_99_0
              #                    occupy a0 with temp_56_arithop_102_0
    ADDW    a0,a1,a2
              #                    free a1
              #                    free a2
              #                    free a0
              #                     747  untrack rhs_99_0 
              #                    occupy a2 with rhs_99_0
              #                    release a2 with rhs_99_0
              #                     746  untrack lhs_99_0 
              #                    occupy a1 with lhs_99_0
              #                    release a1 with lhs_99_0
              #                     300  ret temp_56_arithop_102_0 
              #                    load from ra_eval_op_0 in mem
    ld      ra,48(sp)
              #                    load from s0_eval_op_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with temp_56_arithop_102_0
              #                    store to temp_56_arithop_102_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_56_arithop_102_0
              #                    occupy a0 with temp_56_arithop_102_0
              #                    load from temp_56_arithop_102_0 in mem


    lw      a0,8(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: op_99_0, tracked: true } |     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |     a4:Freed { symidx: temp_57_cmp_102_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     304  label branch_false_103: 
.branch_false_103:
              #                     745  untrack temp_56_arithop_102_0 
              #                     744  untrack temp_57_cmp_102_0 
              #                    occupy a4 with temp_57_cmp_102_0
              #                    release a4 with temp_57_cmp_102_0
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: op_99_0, tracked: true } |     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     307  temp_58_cmp_105_0 = icmp i32 Eq op_99_0, 45_0 
              #                    occupy a0 with op_99_0
              #                    occupy a3 with 45_0
    li      a3, 45
              #                    occupy a4 with temp_58_cmp_105_0
    xor     a4,a0,a3
    seqz    a4, a4
              #                    free a0
              #                    free a3
              #                    free a4
              #                     310  br i1 temp_58_cmp_105_0, label branch_true_106, label branch_false_106 
              #                    occupy a4 with temp_58_cmp_105_0
              #                    free a4
              #                    occupy a4 with temp_58_cmp_105_0
    bnez    a4, .branch_true_106
              #                    free a4
    j       .branch_false_106
              #                    regtab     a0:Freed { symidx: op_99_0, tracked: true } |     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |     a4:Freed { symidx: temp_58_cmp_105_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     308  label branch_true_106: 
.branch_true_106:
              #                     755  untrack temp_61_cmp_114_0 
              #                     754  untrack temp_60_cmp_111_0 
              #                     753  untrack temp_54_arithop_108_0 
              #                     752  untrack temp_59_cmp_108_0 
              #                     751  untrack temp_52_arithop_114_0 
              #                     750  untrack temp_58_cmp_105_0 
              #                    occupy a4 with temp_58_cmp_105_0
              #                    release a4 with temp_58_cmp_105_0
              #                     749  untrack temp_53_arithop_111_0 
              #                     748  untrack op_99_0 
              #                    occupy a0 with op_99_0
              #                    release a0 with op_99_0
              #                     295  temp_55_arithop_105_0 = Sub i32 lhs_99_0, rhs_99_0 
              #                    occupy a1 with lhs_99_0
              #                    occupy a2 with rhs_99_0
              #                    occupy a0 with temp_55_arithop_105_0
              #                    regtab:    a0:Occupied { symidx: temp_55_arithop_105_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: lhs_99_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: rhs_99_0, tracked: true, occupy_count: 1 } |  released_gpr_count:14,released_fpr_count:24


    subw    a0,a1,a2
              #                    free a1
              #                    free a2
              #                    free a0
              #                     759  untrack lhs_99_0 
              #                    occupy a1 with lhs_99_0
              #                    release a1 with lhs_99_0
              #                     758  untrack rhs_99_0 
              #                    occupy a2 with rhs_99_0
              #                    release a2 with rhs_99_0
              #                     296  ret temp_55_arithop_105_0 
              #                    load from ra_eval_op_0 in mem
    ld      ra,48(sp)
              #                    load from s0_eval_op_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with temp_55_arithop_105_0
              #                    store to temp_55_arithop_105_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_55_arithop_105_0
              #                    occupy a0 with temp_55_arithop_105_0
              #                    load from temp_55_arithop_105_0 in mem


    lw      a0,12(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: op_99_0, tracked: true } |     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |     a4:Freed { symidx: temp_58_cmp_105_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     309  label branch_false_106: 
.branch_false_106:
              #                     757  untrack temp_55_arithop_105_0 
              #                     756  untrack temp_58_cmp_105_0 
              #                    occupy a4 with temp_58_cmp_105_0
              #                    release a4 with temp_58_cmp_105_0
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a0:Freed { symidx: op_99_0, tracked: true } |     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     312  temp_59_cmp_108_0 = icmp i32 Eq op_99_0, 42_0 
              #                    occupy a0 with op_99_0
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    occupy a4 with temp_59_cmp_108_0
    xor     a4,a0,a3
    seqz    a4, a4
              #                    free a0
              #                    free a3
              #                    free a4
              #                     315  br i1 temp_59_cmp_108_0, label branch_true_109, label branch_false_109 
              #                    occupy a4 with temp_59_cmp_108_0
              #                    free a4
              #                    occupy a4 with temp_59_cmp_108_0
    bnez    a4, .branch_true_109
              #                    free a4
    j       .branch_false_109
              #                    regtab     a0:Freed { symidx: op_99_0, tracked: true } |     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |     a4:Freed { symidx: temp_59_cmp_108_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     313  label branch_true_109: 
.branch_true_109:
              #                     765  untrack temp_52_arithop_114_0 
              #                     764  untrack op_99_0 
              #                    occupy a0 with op_99_0
              #                    release a0 with op_99_0
              #                     763  untrack temp_61_cmp_114_0 
              #                     762  untrack temp_53_arithop_111_0 
              #                     761  untrack temp_59_cmp_108_0 
              #                    occupy a4 with temp_59_cmp_108_0
              #                    release a4 with temp_59_cmp_108_0
              #                     760  untrack temp_60_cmp_111_0 
              #                     291  temp_54_arithop_108_0 = Mul i32 lhs_99_0, rhs_99_0 
              #                    occupy a0 with temp_54_arithop_108_0
              #                    occupy a1 with lhs_99_0
              #                    occupy a2 with rhs_99_0
    mulw    a0,a1,a2
              #                    free a1
              #                    free a2
              #                    free a0
              #                     769  untrack rhs_99_0 
              #                    occupy a2 with rhs_99_0
              #                    release a2 with rhs_99_0
              #                     768  untrack lhs_99_0 
              #                    occupy a1 with lhs_99_0
              #                    release a1 with lhs_99_0
              #                     292  ret temp_54_arithop_108_0 
              #                    load from ra_eval_op_0 in mem
    ld      ra,48(sp)
              #                    load from s0_eval_op_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with temp_54_arithop_108_0
              #                    store to temp_54_arithop_108_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_54_arithop_108_0
              #                    occupy a0 with temp_54_arithop_108_0
              #                    load from temp_54_arithop_108_0 in mem


    lw      a0,16(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: op_99_0, tracked: true } |     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |     a4:Freed { symidx: temp_59_cmp_108_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     314  label branch_false_109: 
.branch_false_109:
              #                     767  untrack temp_54_arithop_108_0 
              #                     766  untrack temp_59_cmp_108_0 
              #                    occupy a4 with temp_59_cmp_108_0
              #                    release a4 with temp_59_cmp_108_0
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: op_99_0, tracked: true } |     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     317  temp_60_cmp_111_0 = icmp i32 Eq op_99_0, 47_0 
              #                    occupy a0 with op_99_0
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    occupy a4 with temp_60_cmp_111_0
    xor     a4,a0,a3
    seqz    a4, a4
              #                    free a0
              #                    free a3
              #                    free a4
              #                     320  br i1 temp_60_cmp_111_0, label branch_true_112, label branch_false_112 
              #                    occupy a4 with temp_60_cmp_111_0
              #                    free a4
              #                    occupy a4 with temp_60_cmp_111_0
    bnez    a4, .branch_true_112
              #                    free a4
    j       .branch_false_112
              #                    regtab     a0:Freed { symidx: op_99_0, tracked: true } |     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |     a4:Freed { symidx: temp_60_cmp_111_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     318  label branch_true_112: 
.branch_true_112:
              #                     773  untrack temp_52_arithop_114_0 
              #                     772  untrack temp_60_cmp_111_0 
              #                    occupy a4 with temp_60_cmp_111_0
              #                    release a4 with temp_60_cmp_111_0
              #                     771  untrack temp_61_cmp_114_0 
              #                     770  untrack op_99_0 
              #                    occupy a0 with op_99_0
              #                    release a0 with op_99_0
              #                     287  temp_53_arithop_111_0 = Div i32 lhs_99_0, rhs_99_0 
              #                    occupy a1 with lhs_99_0
              #                    occupy a2 with rhs_99_0
              #                    occupy a0 with temp_53_arithop_111_0
    divw    a0,a1,a2
              #                    free a1
              #                    free a2
              #                    free a0
              #                     777  untrack rhs_99_0 
              #                    occupy a2 with rhs_99_0
              #                    release a2 with rhs_99_0
              #                     776  untrack lhs_99_0 
              #                    occupy a1 with lhs_99_0
              #                    release a1 with lhs_99_0
              #                     288  ret temp_53_arithop_111_0 
              #                    load from ra_eval_op_0 in mem
    ld      ra,48(sp)
              #                    load from s0_eval_op_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with temp_53_arithop_111_0
              #                    store to temp_53_arithop_111_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_53_arithop_111_0
              #                    occupy a0 with temp_53_arithop_111_0
              #                    load from temp_53_arithop_111_0 in mem


    lw      a0,20(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: op_99_0, tracked: true } |     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |     a4:Freed { symidx: temp_60_cmp_111_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     319  label branch_false_112: 
.branch_false_112:
              #                     775  untrack temp_60_cmp_111_0 
              #                    occupy a4 with temp_60_cmp_111_0
              #                    release a4 with temp_60_cmp_111_0
              #                     774  untrack temp_53_arithop_111_0 
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab     a0:Freed { symidx: op_99_0, tracked: true } |     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                          label L12_0: 
.L12_0:
              #                     322  temp_61_cmp_114_0 = icmp i32 Eq op_99_0, 37_0 
              #                    occupy a0 with op_99_0
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    occupy a4 with temp_61_cmp_114_0
    xor     a4,a0,a3
    seqz    a4, a4
              #                    free a0
              #                    free a3
              #                    free a4
              #                     778  untrack op_99_0 
              #                    occupy a0 with op_99_0
              #                    release a0 with op_99_0
              #                     325  br i1 temp_61_cmp_114_0, label branch_true_115, label branch_false_115 
              #                    occupy a4 with temp_61_cmp_114_0
              #                    free a4
              #                    occupy a4 with temp_61_cmp_114_0
    bnez    a4, .branch_true_115
              #                    free a4
    j       .branch_false_115
              #                    regtab     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |     a4:Freed { symidx: temp_61_cmp_114_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     323  label branch_true_115: 
.branch_true_115:
              #                     779  untrack temp_61_cmp_114_0 
              #                    occupy a4 with temp_61_cmp_114_0
              #                    release a4 with temp_61_cmp_114_0
              #                     283  temp_52_arithop_114_0 = Mod i32 lhs_99_0, rhs_99_0 
              #                    occupy a1 with lhs_99_0
              #                    occupy a2 with rhs_99_0
              #                    occupy a0 with temp_52_arithop_114_0
    rem     a0,a1,a2
              #                    free a1
              #                    free a2
              #                    free a0
              #                     785  untrack rhs_99_0 
              #                    occupy a2 with rhs_99_0
              #                    release a2 with rhs_99_0
              #                     784  untrack lhs_99_0 
              #                    occupy a1 with lhs_99_0
              #                    release a1 with lhs_99_0
              #                     284  ret temp_52_arithop_114_0 
              #                    load from ra_eval_op_0 in mem
    ld      ra,48(sp)
              #                    load from s0_eval_op_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with temp_52_arithop_114_0
              #                    store to temp_52_arithop_114_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_52_arithop_114_0
              #                    occupy a0 with temp_52_arithop_114_0
              #                    load from temp_52_arithop_114_0 in mem


    lw      a0,24(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: lhs_99_0, tracked: true } |     a2:Freed { symidx: rhs_99_0, tracked: true } |     a4:Freed { symidx: temp_61_cmp_114_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     324  label branch_false_115: 
.branch_false_115:
              #                     783  untrack temp_52_arithop_114_0 
              #                     782  untrack lhs_99_0 
              #                    occupy a1 with lhs_99_0
              #                    release a1 with lhs_99_0
              #                     781  untrack temp_61_cmp_114_0 
              #                    occupy a4 with temp_61_cmp_114_0
              #                    release a4 with temp_61_cmp_114_0
              #                     780  untrack rhs_99_0 
              #                    occupy a2 with rhs_99_0
              #                    release a2 with rhs_99_0
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab  released_gpr_count:14,released_fpr_count:24
              #                          label L13_0: 
.L13_0:
              #                     280  ret 0_0 
              #                    load from ra_eval_op_0 in mem
    ld      ra,48(sp)
              #                    load from s0_eval_op_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     43   Define eval_0 "" -> eval_ret_0 
    .globl eval
    .type eval,@function
eval:
              #                    mem layout:|ra_eval:8 at 2368|s0_eval:8 at 2360|temp_62_array_init_ptr:8 at 2352|oprs:1024 at 1328|temp_63_array_init_ptr:8 at 1320|ops:1024 at 296|temp_64_ele_ptr_of_oprs_119:8 at 288|temp_65_value_from_ptr _s119 _i0:4 at 284|temp_66_ret_of_next_token _s119 _i0:4 at 280|temp_67_ret_of_next_token _s119 _i0:4 at 276|none:4 at 272|temp_68_ele_ptr_of_oprs_119:8 at 264|temp_69_ret_of_stack_peek _s119 _i0:4 at 260|none:4 at 256|temp_70_ele_ptr_of_ops_119:8 at 248|temp_71_ret_of_stack_pop _s149 _i0:4 at 244|none:4 at 240|temp_72_ele_ptr_of_oprs_119:8 at 232|temp_73_ret_of_stack_pop _s149 _i0:4 at 228|none:4 at 224|temp_74_ele_ptr_of_oprs_119:8 at 216|temp_75_ret_of_stack_pop _s149 _i0:4 at 212|none:4 at 208|temp_76_ele_ptr_of_oprs_119:8 at 200|temp_77_ret_of_eval_op _s149 _i0:4 at 196|temp_78_value_from_ptr _s128 _i0:4 at 192|temp_79_ret_of_next_token _s128 _i0:4 at 188|none:4 at 184|temp_80_ele_ptr_of_ops_119:8 at 176|temp_81_ele_ptr_of_oprs_119:8 at 168|temp_82_value_from_ptr _s128 _i0:4 at 164|temp_83_ret_of_next_token _s128 _i0:4 at 160|temp_84_ret_of_panic _s141 _i0:4 at 156|none:4 at 152|temp_85_ele_ptr_of_ops_119:8 at 144|temp_86_ret_of_stack_pop _s136 _i0:4 at 140|none:4 at 136|temp_87_ele_ptr_of_oprs_119:8 at 128|temp_88_ret_of_stack_pop _s136 _i0:4 at 124|none:4 at 120|temp_89_ele_ptr_of_oprs_119:8 at 112|temp_90_ret_of_stack_pop _s136 _i0:4 at 108|none:4 at 104|temp_91_ele_ptr_of_oprs_119:8 at 96|temp_92_ret_of_eval_op _s136 _i0:4 at 92|temp_93_ret_of_panic _s121 _i0:4 at 88|temp_94_value_from_ptr _s121 _i0:4 at 84|temp_95_cmp _s121 _i0:1 at 83|none:3 at 80|temp_96_value_from_ptr _s126 _i0:4 at 76|temp_97_cmp _s126 _i0:1 at 75|none:3 at 72|temp_98_ele_ptr_of_ops_119:8 at 64|temp_99_ret_of_stack_size _s147 _i0:4 at 60|temp_100_ _s3846 _i0:1 at 59|none:3 at 56|temp_101_ret_of_get_op_prec _s130 _i0:4 at 52|temp_102_booltrans _s130 _i0:1 at 51|temp_103_logicnot _s130 _i0:1 at 50|none:2 at 48|temp_104_ele_ptr_of_ops_119:8 at 40|temp_105_ret_of_stack_size _s134 _i0:4 at 36|temp_106_ret_of_get_op_prec _s134 _i0:4 at 32|temp_107_ele_ptr_of_ops_119:8 at 24|temp_108_ret_of_stack_peek _s134 _i0:4 at 20|temp_109_ret_of_get_op_prec _s134 _i0:4 at 16|temp_110_cmp _s134 _i0:1 at 15|temp_111_i32_to_bool _s134 _i0:1 at 14|none:2 at 12|temp_112_value_from_ptr _s141 _i0:4 at 8|temp_113_cmp _s141 _i0:1 at 7|none:7 at 0
              #                    occupy a0 with -2376_0
    li      a0, -2376
    li      a0, -2376
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_eval_0 in mem offset_illegal
              #                    occupy a1 with _anonymous_of_2368_0_0
    li      a1, 2368
    li      a1, 2368
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_eval_0 in mem offset_illegal
              #                    occupy a2 with _anonymous_of_2360_0_0
    li      a2, 2360
    li      a2, 2360
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 2376_0
    li      a3, 2376
    li      a3, 2376
    add     s0,a3,sp
              #                    free a3
              #                     538  num_0_6 = chi num_0_0:43 
              #                     539  cur_token_0_5 = chi cur_token_0_0:43 
              #                     540  last_char_0_10 = chi last_char_0_0:43 
              #                     541  other_0_4 = chi other_0_0:43 
              #                     329  alloc ptr->i32 [temp_62_array_init_ptr_119] 
              #                     332  alloc Array:i32:[Some(256_0)] [oprs_119] 
              #                     334  alloc ptr->i32 [temp_63_array_init_ptr_119] 
              #                     337  alloc Array:i32:[Some(256_0)] [ops_119] 
              #                     338  alloc ptr->i32 [temp_64_ele_ptr_of_oprs_119_119] 
              #                     340  alloc i32 [temp_65_value_from_ptr_119] 
              #                     344  alloc i32 [temp_66_ret_of_next_token_119] 
              #                     346  alloc i32 [temp_67_ret_of_next_token_119] 
              #                     349  alloc ptr->i32 [temp_68_ele_ptr_of_oprs_119_119] 
              #                     351  alloc i32 [temp_69_ret_of_stack_peek_119] 
              #                     354  alloc ptr->i32 [temp_70_ele_ptr_of_ops_119_149] 
              #                     356  alloc i32 [temp_71_ret_of_stack_pop_149] 
              #                     359  alloc i32 [cur_op_149] 
              #                     360  alloc ptr->i32 [temp_72_ele_ptr_of_oprs_119_149] 
              #                     362  alloc i32 [temp_73_ret_of_stack_pop_149] 
              #                     365  alloc i32 [rhs_149] 
              #                     366  alloc ptr->i32 [temp_74_ele_ptr_of_oprs_119_149] 
              #                     368  alloc i32 [temp_75_ret_of_stack_pop_149] 
              #                     371  alloc i32 [lhs_149] 
              #                     372  alloc ptr->i32 [temp_76_ele_ptr_of_oprs_119_149] 
              #                     374  alloc i32 [temp_77_ret_of_eval_op_149] 
              #                     377  alloc i32 [temp_78_value_from_ptr_128] 
              #                     381  alloc i32 [op_128] 
              #                     382  alloc i32 [temp_79_ret_of_next_token_128] 
              #                     384  alloc ptr->i32 [temp_80_ele_ptr_of_ops_119_128] 
              #                     387  alloc ptr->i32 [temp_81_ele_ptr_of_oprs_119_128] 
              #                     389  alloc i32 [temp_82_value_from_ptr_128] 
              #                     393  alloc i32 [temp_83_ret_of_next_token_128] 
              #                     396  alloc i32 [temp_84_ret_of_panic_141] 
              #                     399  alloc ptr->i32 [temp_85_ele_ptr_of_ops_119_136] 
              #                     401  alloc i32 [temp_86_ret_of_stack_pop_136] 
              #                     404  alloc i32 [cur_op_136] 
              #                     405  alloc ptr->i32 [temp_87_ele_ptr_of_oprs_119_136] 
              #                     407  alloc i32 [temp_88_ret_of_stack_pop_136] 
              #                     410  alloc i32 [rhs_136] 
              #                     411  alloc ptr->i32 [temp_89_ele_ptr_of_oprs_119_136] 
              #                     413  alloc i32 [temp_90_ret_of_stack_pop_136] 
              #                     416  alloc i32 [lhs_136] 
              #                     417  alloc ptr->i32 [temp_91_ele_ptr_of_oprs_119_136] 
              #                     419  alloc i32 [temp_92_ret_of_eval_op_136] 
              #                     423  alloc i32 [temp_93_ret_of_panic_121] 
              #                     426  alloc i32 [temp_94_value_from_ptr_121] 
              #                     429  alloc i1 [temp_95_cmp_121] 
              #                     434  alloc i32 [temp_96_value_from_ptr_126] 
              #                     437  alloc i1 [temp_97_cmp_126] 
              #                     443  alloc ptr->i32 [temp_98_ele_ptr_of_ops_119_147] 
              #                     445  alloc i32 [temp_99_ret_of_stack_size_147] 
              #                     447  alloc i1 [temp_100__3846] 
              #                     455  alloc i32 [temp_101_ret_of_get_op_prec_130] 
              #                     457  alloc i1 [temp_102_booltrans_130] 
              #                     459  alloc i1 [temp_103_logicnot_130] 
              #                     464  alloc ptr->i32 [temp_104_ele_ptr_of_ops_119_134] 
              #                     466  alloc i32 [temp_105_ret_of_stack_size_134] 
              #                     468  alloc i32 [temp_106_ret_of_get_op_prec_134] 
              #                     470  alloc ptr->i32 [temp_107_ele_ptr_of_ops_119_134] 
              #                     472  alloc i32 [temp_108_ret_of_stack_peek_134] 
              #                     474  alloc i32 [temp_109_ret_of_get_op_prec_134] 
              #                     476  alloc i1 [temp_110_cmp_134] 
              #                     478  alloc i1 [temp_111_i32_to_bool_134] 
              #                     487  alloc i32 [temp_112_value_from_ptr_141] 
              #                     490  alloc i1 [temp_113_cmp_141] 
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     328   
              #                     330  temp_62_array_init_ptr_119 = GEP oprs_119_0:Array:i32:[Some(256_0)] [] 
              #                    occupy a0 with temp_62_array_init_ptr_119
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1328
              #                    free a0
              #                     331   Call void memset_0(temp_62_array_init_ptr_119, 0_0, 1024_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_62_array_init_ptr_119
              #                    store to temp_62_array_init_ptr_119 in mem offset_illegal
              #                    occupy a1 with _anonymous_of_2352_0_0
    li      a1, 2352
    li      a1, 2352
    add     a1,sp,a1
    sd      a0,0(a1)
              #                    free a1
              #                    release a0 with temp_62_array_init_ptr_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_62_array_init_ptr_119_0
              #                    load from temp_62_array_init_ptr_119 in mem
              #                    occupy a1 with _anonymous_of_2352_0_0
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
              #                    free a1
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_1024_0_0
    li      a2, 1024
              #                    arg load ended


    call    memset
              #                     786  untrack temp_62_array_init_ptr_119 
              #                     542  mu oprs_119_0:331 
              #                     543  oprs_119_1 = chi oprs_119_0:331 
              #                     333   
              #                     335  temp_63_array_init_ptr_119 = GEP ops_119_0:Array:i32:[Some(256_0)] [] 
              #                    occupy a0 with temp_63_array_init_ptr_119
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,296
              #                    free a0
              #                     336   Call void memset_0(temp_63_array_init_ptr_119, 0_0, 1024_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_63_array_init_ptr_119
              #                    store to temp_63_array_init_ptr_119 in mem offset legal
    sd      a0,1320(sp)
              #                    release a0 with temp_63_array_init_ptr_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_63_array_init_ptr_119_0
              #                    load from temp_63_array_init_ptr_119 in mem
    ld      a0,1320(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_1024_0_0
    li      a2, 1024
              #                    arg load ended


    call    memset
              #                     787  untrack temp_63_array_init_ptr_119 
              #                     544  mu ops_119_0:336 
              #                     545  ops_119_1 = chi ops_119_0:336 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     427  temp_94_value_from_ptr_121_0 = load *cur_token_0:ptr->i32 
              #                    occupy a0 with *cur_token_0
              #                       load label cur_token as ptr to reg
    la      a0, cur_token
              #                    occupy reg a0 with *cur_token_0
              #                    occupy a1 with temp_94_value_from_ptr_121_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     428  mu cur_token_0_5:427 
              #                     430  temp_95_cmp_121_0 = icmp i32 Ne temp_94_value_from_ptr_121_0, 0_0 
              #                    occupy a1 with temp_94_value_from_ptr_121_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_95_cmp_121_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     788  untrack temp_94_value_from_ptr_121_0 
              #                    occupy a1 with temp_94_value_from_ptr_121_0
              #                    release a1 with temp_94_value_from_ptr_121_0
              #                     433  br i1 temp_95_cmp_121_0, label branch_true_122, label branch_false_122 
              #                    occupy a3 with temp_95_cmp_121_0
              #                    free a3
              #                    occupy a3 with temp_95_cmp_121_0
    bnez    a3, .branch_true_122
              #                    free a3
    j       .branch_false_122
              #                    regtab     a3:Freed { symidx: temp_95_cmp_121_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     431  label branch_true_122: 
.branch_true_122:
              #                     793  untrack temp_95_cmp_121_0 
              #                    occupy a3 with temp_95_cmp_121_0
              #                    release a3 with temp_95_cmp_121_0
              #                     792  untrack temp_69_ret_of_stack_peek_119_0 
              #                     791  untrack temp_68_ele_ptr_of_oprs_119_119 
              #                     790  untrack temp_64_ele_ptr_of_oprs_119_119 
              #                     789  untrack temp_65_value_from_ptr_119_0 
              #                     424  temp_93_ret_of_panic_121_0 =  Call i32 panic_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    panic
              #                     546  mu num_0_6:425 
              #                     547  mu cur_token_0_5:425 
              #                     548  mu last_char_0_10:425 
              #                     549  mu other_0_4:425 
              #                     425  ret temp_93_ret_of_panic_121_0 
              #                    load from ra_eval_0 in mem
              #                    occupy a1 with _anonymous_of_2368_0_0
    li      a1, 2368
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_eval_0 in mem
              #                    occupy a2 with _anonymous_of_2360_0_0
    li      a2, 2360
    add     a2,sp,a2
    ld      s0,0(a2)
              #                    free a2
              #                    occupy a0 with temp_93_ret_of_panic_121_0
              #                    store to temp_93_ret_of_panic_121_0 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_93_ret_of_panic_121_0
              #                    occupy a0 with temp_93_ret_of_panic_121_0
              #                    load from temp_93_ret_of_panic_121_0 in mem


    lw      a0,88(sp)
              #                    occupy a3 with 2376_0
    li      a3, 2376
    li      a3, 2376
    add     sp,a3,sp
              #                    free a3
              #                    free a0
    ret
              #                    regtab     a3:Freed { symidx: temp_95_cmp_121_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     432  label branch_false_122: 
.branch_false_122:
              #                     795  untrack temp_95_cmp_121_0 
              #                    occupy a3 with temp_95_cmp_121_0
              #                    release a3 with temp_95_cmp_121_0
              #                     794  untrack temp_93_ret_of_panic_121_0 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     339  temp_64_ele_ptr_of_oprs_119_119 = GEP oprs_119_1:Array:i32:[Some(256_0)] [] 
              #                    occupy a0 with temp_64_ele_ptr_of_oprs_119_119
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1328
              #                    free a0
              #                     341  temp_65_value_from_ptr_119_0 = load *num_0:ptr->i32 
              #                    occupy a1 with *num_0
              #                       load label num as ptr to reg
    la      a1, num
              #                    occupy reg a1 with *num_0
              #                    occupy a2 with temp_65_value_from_ptr_119_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     342  mu num_0_6:341 
              #                     343   Call void stack_push_0(temp_64_ele_ptr_of_oprs_119_119, temp_65_value_from_ptr_119_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_64_ele_ptr_of_oprs_119_119
              #                    store to temp_64_ele_ptr_of_oprs_119_119 in mem offset legal
    sd      a0,288(sp)
              #                    release a0 with temp_64_ele_ptr_of_oprs_119_119
              #                    occupy a2 with temp_65_value_from_ptr_119_0
              #                    store to temp_65_value_from_ptr_119_0 in mem offset legal
    sw      a2,284(sp)
              #                    release a2 with temp_65_value_from_ptr_119_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_64_ele_ptr_of_oprs_119_119_0
              #                    load from temp_64_ele_ptr_of_oprs_119_119 in mem
    ld      a0,288(sp)
              #                    occupy a1 with _anonymous_of_temp_65_value_from_ptr_119_0_0
              #                    load from temp_65_value_from_ptr_119_0 in mem


    lw      a1,284(sp)
              #                    arg load ended


    call    stack_push
              #                     797  untrack temp_64_ele_ptr_of_oprs_119_119 
              #                     796  untrack temp_65_value_from_ptr_119_0 
              #                     550  mu oprs_119_1:343 
              #                     551  oprs_119_2 = chi oprs_119_1:343 
              #                     345  temp_66_ret_of_next_token_119_0 =  Call i32 next_token_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_token
              #                     552  mu last_char_0_10:345 
              #                     553  mu cur_token_0_5:345 
              #                     554  mu num_0_6:345 
              #                     555  mu other_0_4:345 
              #                     556  num_0_7 = chi num_0_6:345 
              #                     557  other_0_5 = chi other_0_4:345 
              #                     558  last_char_0_11 = chi last_char_0_10:345 
              #                     559  cur_token_0_6 = chi cur_token_0_5:345 
              #                          jump label: while.head_127 
    j       .while.head_127
              #                    regtab     a0:Freed { symidx: temp_66_ret_of_next_token_119_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     439  label while.head_127: 
.while.head_127:
              #                     435  temp_96_value_from_ptr_126_0 = load *cur_token_0:ptr->i32 
              #                    occupy a1 with *cur_token_0
              #                       load label cur_token as ptr to reg
    la      a1, cur_token
              #                    occupy reg a1 with *cur_token_0
              #                    occupy a2 with temp_96_value_from_ptr_126_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     436  mu cur_token_0_7:435 
              #                     438  temp_97_cmp_126_0 = icmp i32 Eq temp_96_value_from_ptr_126_0, 1_0 
              #                    occupy a2 with temp_96_value_from_ptr_126_0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_97_cmp_126_0
    xor     a4,a2,a3
    seqz    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                     442  br i1 temp_97_cmp_126_0, label while.body_127, label while.exit_127 
              #                    occupy a4 with temp_97_cmp_126_0
              #                    free a4
              #                    occupy a4 with temp_97_cmp_126_0
    bnez    a4, .while.body_127
              #                    free a4
    j       .while.exit_127
              #                    regtab     a0:Freed { symidx: temp_66_ret_of_next_token_119_0, tracked: true } |     a2:Freed { symidx: temp_96_value_from_ptr_126_0, tracked: true } |     a4:Freed { symidx: temp_97_cmp_126_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     440  label while.body_127: 
.while.body_127:
              #                     378  temp_78_value_from_ptr_128_0 = load *other_0:ptr->i32 
              #                    occupy a1 with *other_0
              #                       load label other as ptr to reg
    la      a1, other
              #                    occupy reg a1 with *other_0
              #                    occupy a3 with temp_78_value_from_ptr_128_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     379  mu other_0_6:378 
              #                     380  (nop) 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_66_ret_of_next_token_119_0, tracked: true } |     a2:Freed { symidx: temp_96_value_from_ptr_126_0, tracked: true } |     a3:Freed { symidx: temp_78_value_from_ptr_128_0, tracked: true } |     a4:Freed { symidx: temp_97_cmp_126_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     456  temp_101_ret_of_get_op_prec_130_0 =  Call i32 get_op_prec_0(temp_78_value_from_ptr_128_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_66_ret_of_next_token_119_0
              #                    store to temp_66_ret_of_next_token_119_0 in mem offset legal
    sw      a0,280(sp)
              #                    release a0 with temp_66_ret_of_next_token_119_0
              #                    occupy a2 with temp_96_value_from_ptr_126_0
              #                    store to temp_96_value_from_ptr_126_0 in mem offset legal
    sw      a2,76(sp)
              #                    release a2 with temp_96_value_from_ptr_126_0
              #                    occupy a3 with temp_78_value_from_ptr_128_0
              #                    store to temp_78_value_from_ptr_128_0 in mem offset legal
    sw      a3,192(sp)
              #                    release a3 with temp_78_value_from_ptr_128_0
              #                    occupy a4 with temp_97_cmp_126_0
              #                    store to temp_97_cmp_126_0 in mem offset legal
    sb      a4,75(sp)
              #                    release a4 with temp_97_cmp_126_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_78_value_from_ptr_128_0_0
              #                    load from temp_78_value_from_ptr_128_0 in mem


    lw      a0,192(sp)
              #                    arg load ended


    call    get_op_prec
              #                     458  temp_102_booltrans_130_0 = icmp i32 Ne temp_101_ret_of_get_op_prec_130_0, 0_0 
              #                    occupy a0 with temp_101_ret_of_get_op_prec_130_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_102_booltrans_130_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     460  temp_103_logicnot_130_0 = xor i1 temp_102_booltrans_130_0, true 
              #                    occupy a2 with temp_102_booltrans_130_0
              #                    occupy a3 with temp_103_logicnot_130_0
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                     463  br i1 temp_103_logicnot_130_0, label branch_true_131, label branch_false_131 
              #                    occupy a3 with temp_103_logicnot_130_0
              #                    free a3
              #                    occupy a3 with temp_103_logicnot_130_0
    bnez    a3, .branch_true_131
              #                    free a3
    j       .branch_false_131
              #                    regtab     a0:Freed { symidx: temp_101_ret_of_get_op_prec_130_0, tracked: true } |     a2:Freed { symidx: temp_102_booltrans_130_0, tracked: true } |     a3:Freed { symidx: temp_103_logicnot_130_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     461  label branch_true_131: 
.branch_true_131:
              #                     809  untrack temp_78_value_from_ptr_128_0 
              #                     808  untrack temp_102_booltrans_130_0 
              #                    occupy a2 with temp_102_booltrans_130_0
              #                    release a2 with temp_102_booltrans_130_0
              #                     807  untrack temp_112_value_from_ptr_141_0 
              #                     806  untrack temp_81_ele_ptr_of_oprs_119_128 
              #                     805  untrack temp_101_ret_of_get_op_prec_130_0 
              #                    occupy a0 with temp_101_ret_of_get_op_prec_130_0
              #                    release a0 with temp_101_ret_of_get_op_prec_130_0
              #                     804  untrack temp_82_value_from_ptr_128_0 
              #                     803  untrack temp_96_value_from_ptr_126_0 
              #                     802  untrack temp_103_logicnot_130_0 
              #                    occupy a3 with temp_103_logicnot_130_0
              #                    release a3 with temp_103_logicnot_130_0
              #                     801  untrack temp_80_ele_ptr_of_ops_119_128 
              #                     800  untrack temp_84_ret_of_panic_141_0 
              #                     799  untrack temp_113_cmp_141_0 
              #                     798  untrack temp_97_cmp_126_0 
              #                          jump label: while.exit_127 
              #                    occupy a0 with temp_66_ret_of_next_token_119_0
              #                    load from temp_66_ret_of_next_token_119_0 in mem


    lw      a0,280(sp)
              #                    occupy a2 with temp_96_value_from_ptr_126_0
              #                    load from temp_96_value_from_ptr_126_0 in mem


    lw      a2,76(sp)
              #                    occupy a4 with temp_97_cmp_126_0
              #                    load from temp_97_cmp_126_0 in mem


    lb      a4,75(sp)
    j       .while.exit_127
              #                    regtab     a0:Freed { symidx: temp_66_ret_of_next_token_119_0, tracked: true } |     a2:Freed { symidx: temp_96_value_from_ptr_126_0, tracked: true } |     a4:Freed { symidx: temp_97_cmp_126_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     441  label while.exit_127: 
.while.exit_127:
              #                     347  temp_67_ret_of_next_token_119_0 =  Call i32 next_token_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_66_ret_of_next_token_119_0
              #                    store to temp_66_ret_of_next_token_119_0 in mem offset legal
    sw      a0,280(sp)
              #                    release a0 with temp_66_ret_of_next_token_119_0
              #                    occupy a2 with temp_96_value_from_ptr_126_0
              #                    store to temp_96_value_from_ptr_126_0 in mem offset legal
    sw      a2,76(sp)
              #                    release a2 with temp_96_value_from_ptr_126_0
              #                    occupy a4 with temp_97_cmp_126_0
              #                    store to temp_97_cmp_126_0 in mem offset legal
    sb      a4,75(sp)
              #                    release a4 with temp_97_cmp_126_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_token
              #                     560  mu last_char_0_12:347 
              #                     561  mu cur_token_0_7:347 
              #                     562  mu num_0_8:347 
              #                     563  mu other_0_6:347 
              #                     564  num_0_11 = chi num_0_8:347 
              #                     565  other_0_9 = chi other_0_6:347 
              #                     566  last_char_0_15 = chi last_char_0_12:347 
              #                     567  cur_token_0_10 = chi cur_token_0_7:347 
              #                          jump label: while.head_148 
    j       .while.head_148
              #                    regtab     a0:Freed { symidx: temp_67_ret_of_next_token_119_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     449  label while.head_148: 
.while.head_148:
              #                     444  temp_98_ele_ptr_of_ops_119_147 = GEP ops_119_9:Array:i32:[Some(256_0)] [] 
              #                    occupy a1 with temp_98_ele_ptr_of_ops_119_147
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,296
              #                    free a1
              #                     446  temp_99_ret_of_stack_size_147_0 =  Call i32 stack_size_0(temp_98_ele_ptr_of_ops_119_147) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_67_ret_of_next_token_119_0
              #                    store to temp_67_ret_of_next_token_119_0 in mem offset legal
    sw      a0,276(sp)
              #                    release a0 with temp_67_ret_of_next_token_119_0
              #                    occupy a1 with temp_98_ele_ptr_of_ops_119_147
              #                    store to temp_98_ele_ptr_of_ops_119_147 in mem offset legal
    sd      a1,64(sp)
              #                    release a1 with temp_98_ele_ptr_of_ops_119_147
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_98_ele_ptr_of_ops_119_147_0
              #                    load from temp_98_ele_ptr_of_ops_119_147 in mem
    ld      a0,64(sp)
              #                    arg load ended


    call    stack_size
              #                     568  mu ops_119_9:446 
              #                     569  ops_119_10 = chi ops_119_9:446 
              #                     448  temp_100__3846_0 = icmp i32 Ne temp_99_ret_of_stack_size_147_0, 0_0 
              #                    occupy a0 with temp_99_ret_of_stack_size_147_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_100__3846_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     452  br i1 temp_100__3846_0, label while.body_148, label while.exit_148 
              #                    occupy a2 with temp_100__3846_0
              #                    free a2
              #                    occupy a2 with temp_100__3846_0
    bnez    a2, .while.body_148
              #                    free a2
    j       .while.exit_148
              #                    regtab     a0:Freed { symidx: temp_99_ret_of_stack_size_147_0, tracked: true } |     a2:Freed { symidx: temp_100__3846_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     450  label while.body_148: 
.while.body_148:
              #                     355  temp_70_ele_ptr_of_ops_119_149 = GEP ops_119_10:Array:i32:[Some(256_0)] [] 
              #                    occupy a1 with temp_70_ele_ptr_of_ops_119_149
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,296
              #                    free a1
              #                     357  temp_71_ret_of_stack_pop_149_0 =  Call i32 stack_pop_0(temp_70_ele_ptr_of_ops_119_149) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_99_ret_of_stack_size_147_0
              #                    store to temp_99_ret_of_stack_size_147_0 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_99_ret_of_stack_size_147_0
              #                    occupy a1 with temp_70_ele_ptr_of_ops_119_149
              #                    store to temp_70_ele_ptr_of_ops_119_149 in mem offset legal
    sd      a1,248(sp)
              #                    release a1 with temp_70_ele_ptr_of_ops_119_149
              #                    occupy a2 with temp_100__3846_0
              #                    store to temp_100__3846_0 in mem offset legal
    sb      a2,59(sp)
              #                    release a2 with temp_100__3846_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_70_ele_ptr_of_ops_119_149_0
              #                    load from temp_70_ele_ptr_of_ops_119_149 in mem
    ld      a0,248(sp)
              #                    arg load ended


    call    stack_pop
              #                     570  mu ops_119_10:357 
              #                     571  ops_119_11 = chi ops_119_10:357 
              #                     358  (nop) 
              #                     361  temp_72_ele_ptr_of_oprs_119_149 = GEP oprs_119_9:Array:i32:[Some(256_0)] [] 
              #                    occupy a1 with temp_72_ele_ptr_of_oprs_119_149
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1328
              #                    free a1
              #                     363  temp_73_ret_of_stack_pop_149_0 =  Call i32 stack_pop_0(temp_72_ele_ptr_of_oprs_119_149) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_71_ret_of_stack_pop_149_0
              #                    store to temp_71_ret_of_stack_pop_149_0 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with temp_71_ret_of_stack_pop_149_0
              #                    occupy a1 with temp_72_ele_ptr_of_oprs_119_149
              #                    store to temp_72_ele_ptr_of_oprs_119_149 in mem offset legal
    sd      a1,232(sp)
              #                    release a1 with temp_72_ele_ptr_of_oprs_119_149
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_72_ele_ptr_of_oprs_119_149_0
              #                    load from temp_72_ele_ptr_of_oprs_119_149 in mem
    ld      a0,232(sp)
              #                    arg load ended


    call    stack_pop
              #                     572  mu oprs_119_9:363 
              #                     573  oprs_119_10 = chi oprs_119_9:363 
              #                     364  (nop) 
              #                     367  temp_74_ele_ptr_of_oprs_119_149 = GEP oprs_119_10:Array:i32:[Some(256_0)] [] 
              #                    occupy a1 with temp_74_ele_ptr_of_oprs_119_149
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1328
              #                    free a1
              #                     369  temp_75_ret_of_stack_pop_149_0 =  Call i32 stack_pop_0(temp_74_ele_ptr_of_oprs_119_149) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_73_ret_of_stack_pop_149_0
              #                    store to temp_73_ret_of_stack_pop_149_0 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with temp_73_ret_of_stack_pop_149_0
              #                    occupy a1 with temp_74_ele_ptr_of_oprs_119_149
              #                    store to temp_74_ele_ptr_of_oprs_119_149 in mem offset legal
    sd      a1,216(sp)
              #                    release a1 with temp_74_ele_ptr_of_oprs_119_149
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_74_ele_ptr_of_oprs_119_149_0
              #                    load from temp_74_ele_ptr_of_oprs_119_149 in mem
    ld      a0,216(sp)
              #                    arg load ended


    call    stack_pop
              #                     574  mu oprs_119_10:369 
              #                     575  oprs_119_11 = chi oprs_119_10:369 
              #                     370  (nop) 
              #                     373  temp_76_ele_ptr_of_oprs_119_149 = GEP oprs_119_11:Array:i32:[Some(256_0)] [] 
              #                    occupy a1 with temp_76_ele_ptr_of_oprs_119_149
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1328
              #                    free a1
              #                     375  temp_77_ret_of_eval_op_149_0 =  Call i32 eval_op_0(temp_71_ret_of_stack_pop_149_0, temp_75_ret_of_stack_pop_149_0, temp_73_ret_of_stack_pop_149_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_75_ret_of_stack_pop_149_0
              #                    store to temp_75_ret_of_stack_pop_149_0 in mem offset legal
    sw      a0,212(sp)
              #                    release a0 with temp_75_ret_of_stack_pop_149_0
              #                    occupy a1 with temp_76_ele_ptr_of_oprs_119_149
              #                    store to temp_76_ele_ptr_of_oprs_119_149 in mem offset legal
    sd      a1,200(sp)
              #                    release a1 with temp_76_ele_ptr_of_oprs_119_149
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_71_ret_of_stack_pop_149_0_0
              #                    load from temp_71_ret_of_stack_pop_149_0 in mem


    lw      a0,244(sp)
              #                    occupy a1 with _anonymous_of_temp_75_ret_of_stack_pop_149_0_0
              #                    load from temp_75_ret_of_stack_pop_149_0 in mem


    lw      a1,212(sp)
              #                    occupy a2 with _anonymous_of_temp_73_ret_of_stack_pop_149_0_0
              #                    load from temp_73_ret_of_stack_pop_149_0 in mem


    lw      a2,228(sp)
              #                    arg load ended


    call    eval_op
              #                     376   Call void stack_push_0(temp_76_ele_ptr_of_oprs_119_149, temp_77_ret_of_eval_op_149_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_77_ret_of_eval_op_149_0
              #                    store to temp_77_ret_of_eval_op_149_0 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with temp_77_ret_of_eval_op_149_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_76_ele_ptr_of_oprs_119_149_0
              #                    load from temp_76_ele_ptr_of_oprs_119_149 in mem
    ld      a0,200(sp)
              #                    occupy a1 with _anonymous_of_temp_77_ret_of_eval_op_149_0_0
              #                    load from temp_77_ret_of_eval_op_149_0 in mem


    lw      a1,196(sp)
              #                    arg load ended


    call    stack_push
              #                     576  mu oprs_119_11:376 
              #                     577  oprs_119_12 = chi oprs_119_11:376 
              #                          jump label: while.head_148 
              #                    occupy a0 with temp_67_ret_of_next_token_119_0
              #                    load from temp_67_ret_of_next_token_119_0 in mem


    lw      a0,276(sp)
    j       .while.head_148
              #                    regtab     a0:Freed { symidx: temp_99_ret_of_stack_size_147_0, tracked: true } |     a2:Freed { symidx: temp_100__3846_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     451  label while.exit_148: 
.while.exit_148:
              #                     350  temp_68_ele_ptr_of_oprs_119_119 = GEP oprs_119_9:Array:i32:[Some(256_0)] [] 
              #                    occupy a1 with temp_68_ele_ptr_of_oprs_119_119
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1328
              #                    free a1
              #                     352  temp_69_ret_of_stack_peek_119_0 =  Call i32 stack_peek_0(temp_68_ele_ptr_of_oprs_119_119) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_99_ret_of_stack_size_147_0
              #                    store to temp_99_ret_of_stack_size_147_0 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_99_ret_of_stack_size_147_0
              #                    occupy a1 with temp_68_ele_ptr_of_oprs_119_119
              #                    store to temp_68_ele_ptr_of_oprs_119_119 in mem offset legal
    sd      a1,264(sp)
              #                    release a1 with temp_68_ele_ptr_of_oprs_119_119
              #                    occupy a2 with temp_100__3846_0
              #                    store to temp_100__3846_0 in mem offset legal
    sb      a2,59(sp)
              #                    release a2 with temp_100__3846_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_68_ele_ptr_of_oprs_119_119_0
              #                    load from temp_68_ele_ptr_of_oprs_119_119 in mem
    ld      a0,264(sp)
              #                    arg load ended


    call    stack_peek
              #                     810  untrack temp_68_ele_ptr_of_oprs_119_119 
              #                     578  mu oprs_119_9:352 
              #                     579  oprs_119_13 = chi oprs_119_9:352 
              #                     580  mu num_0_11:353 
              #                     581  mu cur_token_0_10:353 
              #                     582  mu last_char_0_15:353 
              #                     583  mu other_0_9:353 
              #                     353  ret temp_69_ret_of_stack_peek_119_0 
              #                    load from ra_eval_0 in mem
              #                    occupy a1 with _anonymous_of_2368_0_0
    li      a1, 2368
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_eval_0 in mem
              #                    occupy a2 with _anonymous_of_2360_0_0
    li      a2, 2360
    add     a2,sp,a2
    ld      s0,0(a2)
              #                    free a2
              #                    occupy a0 with temp_69_ret_of_stack_peek_119_0
              #                    store to temp_69_ret_of_stack_peek_119_0 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with temp_69_ret_of_stack_peek_119_0
              #                    occupy a0 with temp_69_ret_of_stack_peek_119_0
              #                    load from temp_69_ret_of_stack_peek_119_0 in mem


    lw      a0,260(sp)
              #                    occupy a3 with 2376_0
    li      a3, 2376
    li      a3, 2376
    add     sp,a3,sp
              #                    free a3
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_101_ret_of_get_op_prec_130_0, tracked: true } |     a2:Freed { symidx: temp_102_booltrans_130_0, tracked: true } |     a3:Freed { symidx: temp_103_logicnot_130_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     462  label branch_false_131: 
.branch_false_131:
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: temp_101_ret_of_get_op_prec_130_0, tracked: true } |     a2:Freed { symidx: temp_102_booltrans_130_0, tracked: true } |     a3:Freed { symidx: temp_103_logicnot_130_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     383  temp_79_ret_of_next_token_128_0 =  Call i32 next_token_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_101_ret_of_get_op_prec_130_0
              #                    store to temp_101_ret_of_get_op_prec_130_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_101_ret_of_get_op_prec_130_0
              #                    occupy a2 with temp_102_booltrans_130_0
              #                    store to temp_102_booltrans_130_0 in mem offset legal
    sb      a2,51(sp)
              #                    release a2 with temp_102_booltrans_130_0
              #                    occupy a3 with temp_103_logicnot_130_0
              #                    store to temp_103_logicnot_130_0 in mem offset legal
    sb      a3,50(sp)
              #                    release a3 with temp_103_logicnot_130_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_token
              #                     584  mu last_char_0_12:383 
              #                     585  mu cur_token_0_7:383 
              #                     586  mu num_0_8:383 
              #                     587  mu other_0_6:383 
              #                     588  num_0_9 = chi num_0_8:383 
              #                     589  other_0_7 = chi other_0_6:383 
              #                     590  last_char_0_13 = chi last_char_0_12:383 
              #                     591  cur_token_0_8 = chi cur_token_0_7:383 
              #                          jump label: while.head_135 
    j       .while.head_135
              #                    regtab     a0:Freed { symidx: temp_79_ret_of_next_token_128_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     485  label while.head_135: 
.while.head_135:
              #                     465  temp_104_ele_ptr_of_ops_119_134 = GEP ops_119_3:Array:i32:[Some(256_0)] [] 
              #                    occupy a1 with temp_104_ele_ptr_of_ops_119_134
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,296
              #                    free a1
              #                     467  temp_105_ret_of_stack_size_134_0 =  Call i32 stack_size_0(temp_104_ele_ptr_of_ops_119_134) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_79_ret_of_next_token_128_0
              #                    store to temp_79_ret_of_next_token_128_0 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_79_ret_of_next_token_128_0
              #                    occupy a1 with temp_104_ele_ptr_of_ops_119_134
              #                    store to temp_104_ele_ptr_of_ops_119_134 in mem offset legal
    sd      a1,40(sp)
              #                    release a1 with temp_104_ele_ptr_of_ops_119_134
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_104_ele_ptr_of_ops_119_134_0
              #                    load from temp_104_ele_ptr_of_ops_119_134 in mem
    ld      a0,40(sp)
              #                    arg load ended


    call    stack_size
              #                     592  mu ops_119_3:467 
              #                     593  ops_119_4 = chi ops_119_3:467 
              #                     479  temp_111_i32_to_bool_134_0 = icmp i32 Ne temp_105_ret_of_stack_size_134_0, 0_0 
              #                    occupy a0 with temp_105_ret_of_stack_size_134_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_111_i32_to_bool_134_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     486  br i1 temp_111_i32_to_bool_134_0, label branch_short_circuit_p_true_663, label branch_short_circuit_c_false_663 
              #                    occupy a2 with temp_111_i32_to_bool_134_0
              #                    free a2
              #                    occupy a2 with temp_111_i32_to_bool_134_0
    bnez    a2, .branch_short_circuit_p_true_663
              #                    free a2
    j       .branch_short_circuit_c_false_663
              #                    regtab     a0:Freed { symidx: temp_105_ret_of_stack_size_134_0, tracked: true } |     a2:Freed { symidx: temp_111_i32_to_bool_134_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     482  label branch_short_circuit_p_true_663: 
.branch_short_circuit_p_true_663:
              #                     469  temp_106_ret_of_get_op_prec_134_0 =  Call i32 get_op_prec_0(temp_78_value_from_ptr_128_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_105_ret_of_stack_size_134_0
              #                    store to temp_105_ret_of_stack_size_134_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_105_ret_of_stack_size_134_0
              #                    occupy a2 with temp_111_i32_to_bool_134_0
              #                    store to temp_111_i32_to_bool_134_0 in mem offset legal
    sb      a2,14(sp)
              #                    release a2 with temp_111_i32_to_bool_134_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_78_value_from_ptr_128_0_0
              #                    load from temp_78_value_from_ptr_128_0 in mem


    lw      a0,192(sp)
              #                    arg load ended


    call    get_op_prec
              #                     471  temp_107_ele_ptr_of_ops_119_134 = GEP ops_119_4:Array:i32:[Some(256_0)] [] 
              #                    occupy a1 with temp_107_ele_ptr_of_ops_119_134
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,296
              #                    free a1
              #                     473  temp_108_ret_of_stack_peek_134_0 =  Call i32 stack_peek_0(temp_107_ele_ptr_of_ops_119_134) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_106_ret_of_get_op_prec_134_0
              #                    store to temp_106_ret_of_get_op_prec_134_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_106_ret_of_get_op_prec_134_0
              #                    occupy a1 with temp_107_ele_ptr_of_ops_119_134
              #                    store to temp_107_ele_ptr_of_ops_119_134 in mem offset legal
    sd      a1,24(sp)
              #                    release a1 with temp_107_ele_ptr_of_ops_119_134
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_107_ele_ptr_of_ops_119_134_0
              #                    load from temp_107_ele_ptr_of_ops_119_134 in mem
    ld      a0,24(sp)
              #                    arg load ended


    call    stack_peek
              #                     610  mu ops_119_4:473 
              #                     611  ops_119_7 = chi ops_119_4:473 
              #                     475  temp_109_ret_of_get_op_prec_134_0 =  Call i32 get_op_prec_0(temp_108_ret_of_stack_peek_134_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_108_ret_of_stack_peek_134_0
              #                    store to temp_108_ret_of_stack_peek_134_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_108_ret_of_stack_peek_134_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_108_ret_of_stack_peek_134_0_0
              #                    load from temp_108_ret_of_stack_peek_134_0 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    get_op_prec
              #                     477  temp_110_cmp_134_0 = icmp i32 Sge temp_109_ret_of_get_op_prec_134_0, temp_106_ret_of_get_op_prec_134_0 
              #                    occupy a0 with temp_109_ret_of_get_op_prec_134_0
              #                    occupy a1 with temp_106_ret_of_get_op_prec_134_0
              #                    load from temp_106_ret_of_get_op_prec_134_0 in mem


    lw      a1,32(sp)
              #                    occupy a2 with temp_110_cmp_134_0
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     484  br i1 temp_110_cmp_134_0, label branch_short_circuit_c_true_663, label branch_short_circuit_c_false_663 
              #                    occupy a2 with temp_110_cmp_134_0
              #                    free a2
              #                    occupy a2 with temp_110_cmp_134_0
    bnez    a2, .branch_short_circuit_c_true_663
              #                    free a2
              #                    occupy a1 with temp_106_ret_of_get_op_prec_134_0
              #                    store to temp_106_ret_of_get_op_prec_134_0 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with temp_106_ret_of_get_op_prec_134_0
              #                    occupy a0 with temp_109_ret_of_get_op_prec_134_0
              #                    store to temp_109_ret_of_get_op_prec_134_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_109_ret_of_get_op_prec_134_0
              #                    occupy a0 with temp_105_ret_of_stack_size_134_0
              #                    load from temp_105_ret_of_stack_size_134_0 in mem


    lw      a0,36(sp)
              #                    occupy a2 with temp_110_cmp_134_0
              #                    store to temp_110_cmp_134_0 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_110_cmp_134_0
              #                    occupy a2 with temp_111_i32_to_bool_134_0
              #                    load from temp_111_i32_to_bool_134_0 in mem


    lb      a2,14(sp)
    j       .branch_short_circuit_c_false_663
              #                    regtab     a0:Freed { symidx: temp_109_ret_of_get_op_prec_134_0, tracked: true } |     a1:Freed { symidx: temp_106_ret_of_get_op_prec_134_0, tracked: true } |     a2:Freed { symidx: temp_110_cmp_134_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     480  label branch_short_circuit_c_true_663: 
.branch_short_circuit_c_true_663:
              #                     400  temp_85_ele_ptr_of_ops_119_136 = GEP ops_119_7:Array:i32:[Some(256_0)] [] 
              #                    occupy a3 with temp_85_ele_ptr_of_ops_119_136
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,296
              #                    free a3
              #                    occupy a3 with temp_85_ele_ptr_of_ops_119_136
              #                    store to temp_85_ele_ptr_of_ops_119_136 in mem offset legal
    sd      a3,144(sp)
              #                    release a3 with temp_85_ele_ptr_of_ops_119_136
              #                     402  temp_86_ret_of_stack_pop_136_0 =  Call i32 stack_pop_0(temp_85_ele_ptr_of_ops_119_136) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_109_ret_of_get_op_prec_134_0
              #                    store to temp_109_ret_of_get_op_prec_134_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_109_ret_of_get_op_prec_134_0
              #                    occupy a1 with temp_106_ret_of_get_op_prec_134_0
              #                    store to temp_106_ret_of_get_op_prec_134_0 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with temp_106_ret_of_get_op_prec_134_0
              #                    occupy a2 with temp_110_cmp_134_0
              #                    store to temp_110_cmp_134_0 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_110_cmp_134_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_85_ele_ptr_of_ops_119_136_0
              #                    load from temp_85_ele_ptr_of_ops_119_136 in mem
    ld      a0,144(sp)
              #                    arg load ended


    call    stack_pop
              #                     612  mu ops_119_7:402 
              #                     613  ops_119_8 = chi ops_119_7:402 
              #                     403  (nop) 
              #                     406  temp_87_ele_ptr_of_oprs_119_136 = GEP oprs_119_4:Array:i32:[Some(256_0)] [] 
              #                    occupy a1 with temp_87_ele_ptr_of_oprs_119_136
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1328
              #                    free a1
              #                     408  temp_88_ret_of_stack_pop_136_0 =  Call i32 stack_pop_0(temp_87_ele_ptr_of_oprs_119_136) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_86_ret_of_stack_pop_136_0
              #                    store to temp_86_ret_of_stack_pop_136_0 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with temp_86_ret_of_stack_pop_136_0
              #                    occupy a1 with temp_87_ele_ptr_of_oprs_119_136
              #                    store to temp_87_ele_ptr_of_oprs_119_136 in mem offset legal
    sd      a1,128(sp)
              #                    release a1 with temp_87_ele_ptr_of_oprs_119_136
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_87_ele_ptr_of_oprs_119_136_0
              #                    load from temp_87_ele_ptr_of_oprs_119_136 in mem
    ld      a0,128(sp)
              #                    arg load ended


    call    stack_pop
              #                     614  mu oprs_119_4:408 
              #                     615  oprs_119_6 = chi oprs_119_4:408 
              #                     409  (nop) 
              #                     412  temp_89_ele_ptr_of_oprs_119_136 = GEP oprs_119_6:Array:i32:[Some(256_0)] [] 
              #                    occupy a1 with temp_89_ele_ptr_of_oprs_119_136
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1328
              #                    free a1
              #                     414  temp_90_ret_of_stack_pop_136_0 =  Call i32 stack_pop_0(temp_89_ele_ptr_of_oprs_119_136) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_88_ret_of_stack_pop_136_0
              #                    store to temp_88_ret_of_stack_pop_136_0 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_88_ret_of_stack_pop_136_0
              #                    occupy a1 with temp_89_ele_ptr_of_oprs_119_136
              #                    store to temp_89_ele_ptr_of_oprs_119_136 in mem offset legal
    sd      a1,112(sp)
              #                    release a1 with temp_89_ele_ptr_of_oprs_119_136
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_89_ele_ptr_of_oprs_119_136_0
              #                    load from temp_89_ele_ptr_of_oprs_119_136 in mem
    ld      a0,112(sp)
              #                    arg load ended


    call    stack_pop
              #                     616  mu oprs_119_6:414 
              #                     617  oprs_119_7 = chi oprs_119_6:414 
              #                     415  (nop) 
              #                     418  temp_91_ele_ptr_of_oprs_119_136 = GEP oprs_119_7:Array:i32:[Some(256_0)] [] 
              #                    occupy a1 with temp_91_ele_ptr_of_oprs_119_136
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1328
              #                    free a1
              #                     420  temp_92_ret_of_eval_op_136_0 =  Call i32 eval_op_0(temp_86_ret_of_stack_pop_136_0, temp_90_ret_of_stack_pop_136_0, temp_88_ret_of_stack_pop_136_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_90_ret_of_stack_pop_136_0
              #                    store to temp_90_ret_of_stack_pop_136_0 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_90_ret_of_stack_pop_136_0
              #                    occupy a1 with temp_91_ele_ptr_of_oprs_119_136
              #                    store to temp_91_ele_ptr_of_oprs_119_136 in mem offset legal
    sd      a1,96(sp)
              #                    release a1 with temp_91_ele_ptr_of_oprs_119_136
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_86_ret_of_stack_pop_136_0_0
              #                    load from temp_86_ret_of_stack_pop_136_0 in mem


    lw      a0,140(sp)
              #                    occupy a1 with _anonymous_of_temp_90_ret_of_stack_pop_136_0_0
              #                    load from temp_90_ret_of_stack_pop_136_0 in mem


    lw      a1,108(sp)
              #                    occupy a2 with _anonymous_of_temp_88_ret_of_stack_pop_136_0_0
              #                    load from temp_88_ret_of_stack_pop_136_0 in mem


    lw      a2,124(sp)
              #                    arg load ended


    call    eval_op
              #                     421   Call void stack_push_0(temp_91_ele_ptr_of_oprs_119_136, temp_92_ret_of_eval_op_136_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_92_ret_of_eval_op_136_0
              #                    store to temp_92_ret_of_eval_op_136_0 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_92_ret_of_eval_op_136_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_91_ele_ptr_of_oprs_119_136_0
              #                    load from temp_91_ele_ptr_of_oprs_119_136 in mem
    ld      a0,96(sp)
              #                    occupy a1 with _anonymous_of_temp_92_ret_of_eval_op_136_0_0
              #                    load from temp_92_ret_of_eval_op_136_0 in mem


    lw      a1,92(sp)
              #                    arg load ended


    call    stack_push
              #                     618  mu oprs_119_7:421 
              #                     619  oprs_119_8 = chi oprs_119_7:421 
              #                          jump label: while.head_135 
              #                    occupy a0 with temp_79_ret_of_next_token_128_0
              #                    load from temp_79_ret_of_next_token_128_0 in mem


    lw      a0,188(sp)
    j       .while.head_135
              #                    regtab     a0:Freed { symidx: temp_105_ret_of_stack_size_134_0, tracked: true } |     a2:Freed { symidx: temp_111_i32_to_bool_134_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     481  label branch_short_circuit_c_false_663: 
.branch_short_circuit_c_false_663:
              #                     385  temp_80_ele_ptr_of_ops_119_128 = GEP ops_119_5:Array:i32:[Some(256_0)] [] 
              #                    occupy a1 with temp_80_ele_ptr_of_ops_119_128
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,296
              #                    free a1
              #                     386   Call void stack_push_0(temp_80_ele_ptr_of_ops_119_128, temp_78_value_from_ptr_128_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_105_ret_of_stack_size_134_0
              #                    store to temp_105_ret_of_stack_size_134_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_105_ret_of_stack_size_134_0
              #                    occupy a1 with temp_80_ele_ptr_of_ops_119_128
              #                    store to temp_80_ele_ptr_of_ops_119_128 in mem offset legal
    sd      a1,176(sp)
              #                    release a1 with temp_80_ele_ptr_of_ops_119_128
              #                    occupy a2 with temp_111_i32_to_bool_134_0
              #                    store to temp_111_i32_to_bool_134_0 in mem offset legal
    sb      a2,14(sp)
              #                    release a2 with temp_111_i32_to_bool_134_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_80_ele_ptr_of_ops_119_128_0
              #                    load from temp_80_ele_ptr_of_ops_119_128 in mem
    ld      a0,176(sp)
              #                    occupy a1 with _anonymous_of_temp_78_value_from_ptr_128_0_0
              #                    load from temp_78_value_from_ptr_128_0 in mem


    lw      a1,192(sp)
              #                    arg load ended


    call    stack_push
              #                     594  mu ops_119_5:386 
              #                     595  ops_119_6 = chi ops_119_5:386 
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab  released_gpr_count:8,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     488  temp_112_value_from_ptr_141_0 = load *cur_token_0:ptr->i32 
              #                    occupy a0 with *cur_token_0
              #                       load label cur_token as ptr to reg
    la      a0, cur_token
              #                    occupy reg a0 with *cur_token_0
              #                    occupy a1 with temp_112_value_from_ptr_141_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     489  mu cur_token_0_8:488 
              #                     491  temp_113_cmp_141_0 = icmp i32 Ne temp_112_value_from_ptr_141_0, 0_0 
              #                    occupy a1 with temp_112_value_from_ptr_141_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_113_cmp_141_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    occupy a1 with temp_112_value_from_ptr_141_0
              #                    store to temp_112_value_from_ptr_141_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_112_value_from_ptr_141_0
              #                    free a2
              #                    free a3
              #                     494  br i1 temp_113_cmp_141_0, label branch_true_142, label branch_false_142 
              #                    occupy a3 with temp_113_cmp_141_0
              #                    free a3
              #                    occupy a3 with temp_113_cmp_141_0
    bnez    a3, .branch_true_142
              #                    free a3
    j       .branch_false_142
              #                    regtab     a3:Freed { symidx: temp_113_cmp_141_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     492  label branch_true_142: 
.branch_true_142:
              #                     832  untrack temp_71_ret_of_stack_pop_149_0 
              #                     831  untrack temp_97_cmp_126_0 
              #                     830  untrack temp_103_logicnot_130_0 
              #                     829  untrack temp_102_booltrans_130_0 
              #                     828  untrack temp_96_value_from_ptr_126_0 
              #                     827  untrack temp_76_ele_ptr_of_oprs_119_149 
              #                     826  untrack temp_81_ele_ptr_of_oprs_119_128 
              #                     825  untrack temp_75_ret_of_stack_pop_149_0 
              #                     824  untrack temp_113_cmp_141_0 
              #                    occupy a3 with temp_113_cmp_141_0
              #                    release a3 with temp_113_cmp_141_0
              #                     823  untrack temp_70_ele_ptr_of_ops_119_149 
              #                     822  untrack temp_101_ret_of_get_op_prec_130_0 
              #                     821  untrack temp_100__3846_0 
              #                     820  untrack temp_73_ret_of_stack_pop_149_0 
              #                     819  untrack temp_82_value_from_ptr_128_0 
              #                     818  untrack temp_99_ret_of_stack_size_147_0 
              #                     817  untrack temp_78_value_from_ptr_128_0 
              #                     816  untrack temp_72_ele_ptr_of_oprs_119_149 
              #                     815  untrack temp_80_ele_ptr_of_ops_119_128 
              #                     814  untrack temp_98_ele_ptr_of_ops_119_147 
              #                     813  untrack temp_77_ret_of_eval_op_149_0 
              #                     812  untrack temp_74_ele_ptr_of_oprs_119_149 
              #                     811  untrack temp_112_value_from_ptr_141_0 
              #                     397  temp_84_ret_of_panic_141_0 =  Call i32 panic_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    panic
              #                     596  mu num_0_9:398 
              #                     597  mu cur_token_0_8:398 
              #                     598  mu last_char_0_13:398 
              #                     599  mu other_0_7:398 
              #                     398  ret temp_84_ret_of_panic_141_0 
              #                    load from ra_eval_0 in mem
              #                    occupy a1 with _anonymous_of_2368_0_0
    li      a1, 2368
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_eval_0 in mem
              #                    occupy a1 with _anonymous_of_2360_0_0
    li      a1, 2360
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    occupy a0 with temp_84_ret_of_panic_141_0
              #                    store to temp_84_ret_of_panic_141_0 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with temp_84_ret_of_panic_141_0
              #                    occupy a0 with temp_84_ret_of_panic_141_0
              #                    load from temp_84_ret_of_panic_141_0 in mem


    lw      a0,156(sp)
              #                    occupy a1 with 2376_0
    li      a1, 2376
    li      a1, 2376
    add     sp,a1,sp
              #                    free a1
              #                    free a0
    ret
              #                    regtab     a3:Freed { symidx: temp_113_cmp_141_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     493  label branch_false_142: 
.branch_false_142:
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a3:Freed { symidx: temp_113_cmp_141_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     388  temp_81_ele_ptr_of_oprs_119_128 = GEP oprs_119_4:Array:i32:[Some(256_0)] [] 
              #                    occupy a0 with temp_81_ele_ptr_of_oprs_119_128
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1328
              #                    free a0
              #                    occupy a0 with temp_81_ele_ptr_of_oprs_119_128
              #                    store to temp_81_ele_ptr_of_oprs_119_128 in mem offset legal
    sd      a0,168(sp)
              #                    release a0 with temp_81_ele_ptr_of_oprs_119_128
              #                     390  temp_82_value_from_ptr_128_0 = load *num_0:ptr->i32 
              #                    occupy a0 with *num_0
              #                       load label num as ptr to reg
    la      a0, num
              #                    occupy reg a0 with *num_0
              #                    occupy a1 with temp_82_value_from_ptr_128_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_82_value_from_ptr_128_0
              #                    store to temp_82_value_from_ptr_128_0 in mem offset legal
    sw      a1,164(sp)
              #                    release a1 with temp_82_value_from_ptr_128_0
              #                    free a0
              #                     391  mu num_0_9:390 
              #                     392   Call void stack_push_0(temp_81_ele_ptr_of_oprs_119_128, temp_82_value_from_ptr_128_0) 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_113_cmp_141_0
              #                    store to temp_113_cmp_141_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_113_cmp_141_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_81_ele_ptr_of_oprs_119_128_0
              #                    load from temp_81_ele_ptr_of_oprs_119_128 in mem
    ld      a0,168(sp)
              #                    occupy a1 with _anonymous_of_temp_82_value_from_ptr_128_0_0
              #                    load from temp_82_value_from_ptr_128_0 in mem


    lw      a1,164(sp)
              #                    arg load ended


    call    stack_push
              #                     600  mu oprs_119_4:392 
              #                     601  oprs_119_5 = chi oprs_119_4:392 
              #                     394  temp_83_ret_of_next_token_128_0 =  Call i32 next_token_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_token
              #                     602  mu last_char_0_13:394 
              #                     603  mu cur_token_0_8:394 
              #                     604  mu num_0_9:394 
              #                     605  mu other_0_7:394 
              #                     606  num_0_10 = chi num_0_9:394 
              #                     607  other_0_8 = chi other_0_7:394 
              #                     608  last_char_0_14 = chi last_char_0_13:394 
              #                     609  cur_token_0_9 = chi cur_token_0_8:394 
              #                          jump label: while.head_127 
              #                    occupy a0 with temp_83_ret_of_next_token_128_0
              #                    store to temp_83_ret_of_next_token_128_0 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with temp_83_ret_of_next_token_128_0
              #                    occupy a0 with temp_66_ret_of_next_token_119_0
              #                    load from temp_66_ret_of_next_token_119_0 in mem


    lw      a0,280(sp)
    j       .while.head_127
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     44   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 40|s0_main:8 at 32|temp_114_ret_of_getint _s155 _i0:4 at 28|count _s155 _i1:4 at 24|temp_115_ret_of_getch _s155 _i0:4 at 20|temp_116_ret_of_next_token _s155 _i0:4 at 16|temp_117_ret_of_eval _s161 _i0:4 at 12|temp_118_arithop _s161 _i0:4 at 8|temp_119_ _s4312 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-48
              #                    store to ra_main_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     620  cur_token_0_11 = chi cur_token_0_0:44 
              #                     621  other_0_10 = chi other_0_0:44 
              #                     622  num_0_12 = chi num_0_0:44 
              #                     623  last_char_0_16 = chi last_char_0_0:44 
              #                     495  alloc i32 [temp_114_ret_of_getint_155] 
              #                     498  alloc i32 [count_155] 
              #                     499  alloc i32 [temp_115_ret_of_getch_155] 
              #                     501  alloc i32 [temp_116_ret_of_next_token_155] 
              #                     505  alloc i32 [temp_117_ret_of_eval_161] 
              #                     509  alloc i32 [temp_118_arithop_161] 
              #                     512  alloc i1 [temp_119__4312] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     496  temp_114_ret_of_getint_155_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     497  (nop) 
              #                     500  temp_115_ret_of_getch_155_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_114_ret_of_getint_155_0
              #                    store to temp_114_ret_of_getint_155_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_114_ret_of_getint_155_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     502  temp_116_ret_of_next_token_155_0 =  Call i32 next_token_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_115_ret_of_getch_155_0
              #                    store to temp_115_ret_of_getch_155_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_115_ret_of_getch_155_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_token
              #                     624  mu last_char_0_16:502 
              #                     625  mu cur_token_0_11:502 
              #                     626  mu num_0_12:502 
              #                     627  mu other_0_10:502 
              #                     628  num_0_13 = chi num_0_12:502 
              #                     629  other_0_11 = chi other_0_10:502 
              #                     630  last_char_0_17 = chi last_char_0_16:502 
              #                     631  cur_token_0_12 = chi cur_token_0_11:502 
              #                     667  count_155_1 = i32 temp_114_ret_of_getint_155_0 
              #                    occupy a1 with temp_114_ret_of_getint_155_0
              #                    load from temp_114_ret_of_getint_155_0 in mem


    lw      a1,28(sp)
              #                    occupy a2 with count_155_1
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     833  untrack temp_114_ret_of_getint_155_0 
              #                    occupy a1 with temp_114_ret_of_getint_155_0
              #                    release a1 with temp_114_ret_of_getint_155_0
              #                          jump label: while.head_160 
    j       .while.head_160
              #                    regtab     a0:Freed { symidx: temp_116_ret_of_next_token_155_0, tracked: true } |     a2:Freed { symidx: count_155_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     514  label while.head_160: 
.while.head_160:
              #                     513  temp_119__4312_0 = icmp i32 Ne count_155_1, 0_0 
              #                    occupy a2 with count_155_1
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a3 with temp_119__4312_0
    xor     a3,a2,a1
    snez    a3, a3
              #                    free a2
              #                    free a1
              #                    free a3
              #                     517  br i1 temp_119__4312_0, label while.body_160, label while.exit_160 
              #                    occupy a3 with temp_119__4312_0
              #                    free a3
              #                    occupy a3 with temp_119__4312_0
    bnez    a3, .while.body_160
              #                    free a3
    j       .while.exit_160
              #                    regtab     a0:Freed { symidx: temp_116_ret_of_next_token_155_0, tracked: true } |     a2:Freed { symidx: count_155_1, tracked: true } |     a3:Freed { symidx: temp_119__4312_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     515  label while.body_160: 
.while.body_160:
              #                     506  temp_117_ret_of_eval_161_0 =  Call i32 eval_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_116_ret_of_next_token_155_0
              #                    store to temp_116_ret_of_next_token_155_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_116_ret_of_next_token_155_0
              #                    occupy a2 with count_155_1
              #                    store to count_155_1 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with count_155_1
              #                    occupy a3 with temp_119__4312_0
              #                    store to temp_119__4312_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_119__4312_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    eval
              #                     632  mu num_0_14:506 
              #                     633  mu cur_token_0_13:506 
              #                     634  mu other_0_12:506 
              #                     635  mu last_char_0_18:506 
              #                     636  num_0_15 = chi num_0_14:506 
              #                     637  cur_token_0_14 = chi cur_token_0_13:506 
              #                     638  last_char_0_19 = chi last_char_0_18:506 
              #                     639  other_0_13 = chi other_0_12:506 
              #                     507   Call void putint_0(temp_117_ret_of_eval_161_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_117_ret_of_eval_161_0
              #                    store to temp_117_ret_of_eval_161_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_117_ret_of_eval_161_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_117_ret_of_eval_161_0_0
              #                    load from temp_117_ret_of_eval_161_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     508   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     510  temp_118_arithop_161_0 = Sub i32 count_155_1, 1_0 
              #                    occupy a0 with count_155_1
              #                    load from count_155_1 in mem


    lw      a0,24(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_118_arithop_161_0
              #                    regtab:    a0:Occupied { symidx: count_155_1, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_118_arithop_161_0, tracked: true, occupy_count: 1 } |  released_gpr_count:15,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     511  (nop) 
              #                     668  count_155_1 = i32 temp_118_arithop_161_0 
              #                    occupy a2 with temp_118_arithop_161_0
              #                    occupy a0 with count_155_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_160 
              #                    occupy a0 with count_155_1
              #                    store to count_155_1 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with count_155_1
              #                    occupy a0 with temp_116_ret_of_next_token_155_0
              #                    load from temp_116_ret_of_next_token_155_0 in mem


    lw      a0,16(sp)
              #                    occupy a2 with temp_118_arithop_161_0
              #                    store to temp_118_arithop_161_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_118_arithop_161_0
              #                    occupy a2 with count_155_1
              #                    load from count_155_1 in mem


    lw      a2,24(sp)
    j       .while.head_160
              #                    regtab     a0:Freed { symidx: temp_116_ret_of_next_token_155_0, tracked: true } |     a2:Freed { symidx: count_155_1, tracked: true } |     a3:Freed { symidx: temp_119__4312_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     516  label while.exit_160: 
.while.exit_160:
              #                     834  untrack count_155_1 
              #                    occupy a2 with count_155_1
              #                    release a2 with count_155_1
              #                     640  mu cur_token_0_13:504 
              #                     641  mu other_0_12:504 
              #                     642  mu num_0_14:504 
              #                     643  mu last_char_0_18:504 
              #                     504  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,40(sp)
              #                    load from s0_main_0 in mem
    ld      s0,32(sp)
              #                    occupy a0 with temp_116_ret_of_next_token_155_0
              #                    store to temp_116_ret_of_next_token_155_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_116_ret_of_next_token_155_0
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,48
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl cur_token
              #                     26   global i32 cur_token_0 
    .type cur_token,@object
cur_token:
    .word 0
    .align 4
    .globl other
              #                     25   global i32 other_0 
    .type other,@object
other:
    .word 0
    .align 4
    .globl num
              #                     24   global i32 num_0 
    .type num,@object
num:
    .word 0
    .align 4
    .globl last_char
              #                     23   global i32 last_char_0 
    .type last_char,@object
last_char:
    .word 32
    .align 4
    .globl TOKEN_OTHER
              #                     20   global i32 TOKEN_OTHER_0 
    .type TOKEN_OTHER,@object
TOKEN_OTHER:
    .word 1
    .align 4
    .globl TOKEN_NUM
              #                     17   global i32 TOKEN_NUM_0 
    .type TOKEN_NUM,@object
TOKEN_NUM:
    .word 0
