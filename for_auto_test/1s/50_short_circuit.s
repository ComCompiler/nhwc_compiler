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
              #                     19   Define func_0 "n_17_0," -> func_ret_0 
    .globl func
    .type func,@function
func:
              #                    mem layout:|ra_func:8 at 24|s0_func:8 at 16|n _s17 _i0:4 at 12|temp_0_value_from_ptr _s19 _i0:4 at 8|temp_1_arithop _s19 _i0:4 at 4|temp_2_value_from_ptr _s19 _i0:4 at 0
    addi    sp,sp,-32
              #                    store to ra_func_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_func_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     136  g_0_1 = chi g_0_0:19 
              #                     21   alloc i32 [temp_0_value_from_ptr_19] 
              #                     24   alloc i32 [temp_1_arithop_19] 
              #                     28   alloc i32 [temp_2_value_from_ptr_19] 
              #                     33   alloc i32 [temp_3_value_from_ptr_19] 
              #                    regtab     a0:Freed { symidx: n_17_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     22   temp_0_value_from_ptr_19_0 = load *g_0:ptr->i32 
              #                    occupy a1 with *g_0
              #                       load label g as ptr to reg
    la      a1, g
              #                    occupy reg a1 with *g_0
              #                    occupy a2 with temp_0_value_from_ptr_19_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     23   mu g_0_1:22 
              #                     25   temp_1_arithop_19_0 = Add i32 temp_0_value_from_ptr_19_0, n_17_0 
              #                    occupy a2 with temp_0_value_from_ptr_19_0
              #                    occupy a0 with n_17_0
              #                    occupy a3 with temp_1_arithop_19_0
    ADDW    a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                     169  untrack temp_0_value_from_ptr_19_0 
              #                    occupy a2 with temp_0_value_from_ptr_19_0
              #                    release a2 with temp_0_value_from_ptr_19_0
              #                     167  untrack n_17_0 
              #                    occupy a0 with n_17_0
              #                    release a0 with n_17_0
              #                     26   store temp_1_arithop_19_0:i32 *g_0:ptr->i32 
              #                    occupy a0 with *g_0
              #                       load label g as ptr to reg
    la      a0, g
              #                    occupy reg a0 with *g_0
              #                    occupy a3 with temp_1_arithop_19_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     168  untrack temp_1_arithop_19_0 
              #                    occupy a3 with temp_1_arithop_19_0
              #                    release a3 with temp_1_arithop_19_0
              #                     27   g_0_2 = chi g_0_1:26 
              #                     29   temp_2_value_from_ptr_19_0 = load *g_0:ptr->i32 
              #                    occupy a2 with *g_0
              #                       load label g as ptr to reg
    la      a2, g
              #                    occupy reg a2 with *g_0
              #                    occupy a3 with temp_2_value_from_ptr_19_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     30   mu g_0_2:29 
              #                     31    Call void putint_0(temp_2_value_from_ptr_19_0) 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_2_value_from_ptr_19_0
              #                    store to temp_2_value_from_ptr_19_0 in mem offset legal
    sw      a3,0(sp)
              #                    release a3 with temp_2_value_from_ptr_19_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_2_value_from_ptr_19_0_0
              #                    load from temp_2_value_from_ptr_19_0 in mem


    lw      a0,0(sp)
              #                    arg load ended


    call    putint
              #                     34   (nop) 
              #                     35   mu g_0_2:34 
              #                     137  mu g_0_2:36 
              #                     36   ret temp_2_value_from_ptr_19_0 
              #                    load from ra_func_0 in mem
    ld      ra,24(sp)
              #                    load from s0_func_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with temp_2_value_from_ptr_19_0
              #                    load from temp_2_value_from_ptr_19_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     20   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 104|s0_main:8 at 96|i _s24 _i0:4 at 92|i _s24 _i3:4 at 88|i _s24 _i6:4 at 84|i _s24 _i9:4 at 80|i _s24 _i12:4 at 76|i _s24 _i14:4 at 72|temp_4_ret_of_getint _s24 _i0:4 at 68|temp_5_ret_of_getint _s24 _i0:4 at 64|temp_6_ret_of_getint _s24 _i0:4 at 60|temp_7_ret_of_getint _s24 _i0:4 at 56|temp_8_cmp _s27 _i0:1 at 55|none:3 at 52|temp_9_ret_of_func _s27 _i0:4 at 48|temp_10_i32_to_bool _s27 _i0:1 at 47|temp_11_cmp _s32 _i0:1 at 46|none:2 at 44|temp_12_ret_of_func _s32 _i0:4 at 40|temp_13_i32_to_bool _s32 _i0:1 at 39|temp_14_cmp _s37 _i0:1 at 38|none:2 at 36|temp_15_ret_of_func _s37 _i0:4 at 32|temp_16_i32_to_bool _s37 _i0:1 at 31|temp_17_cmp _s42 _i0:1 at 30|none:2 at 28|temp_18_ret_of_func _s42 _i0:4 at 24|temp_19_i32_to_bool _s42 _i0:1 at 23|none:3 at 20|temp_20_ret_of_func _s46 _i0:4 at 16|temp_21_booltrans _s46 _i0:1 at 15|temp_22_logicnot _s46 _i0:1 at 14|none:2 at 12|temp_23_ret_of_func _s46 _i0:4 at 8|temp_24_i32_to_bool _s46 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-112
              #                    store to ra_main_0 in mem offset legal
    sd      ra,104(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,96(sp)
    addi    s0,sp,112
              #                     138  g_0_3 = chi g_0_0:20 
              #                     39   alloc i32 [i_24] 
              #                     41   alloc i32 [temp_4_ret_of_getint_24] 
              #                     45   alloc i32 [temp_5_ret_of_getint_24] 
              #                     49   alloc i32 [temp_6_ret_of_getint_24] 
              #                     53   alloc i32 [temp_7_ret_of_getint_24] 
              #                     65   alloc i1 [temp_8_cmp_27] 
              #                     67   alloc i32 [temp_9_ret_of_func_27] 
              #                     69   alloc i1 [temp_10_i32_to_bool_27] 
              #                     78   alloc i1 [temp_11_cmp_32] 
              #                     80   alloc i32 [temp_12_ret_of_func_32] 
              #                     82   alloc i1 [temp_13_i32_to_bool_32] 
              #                     91   alloc i1 [temp_14_cmp_37] 
              #                     93   alloc i32 [temp_15_ret_of_func_37] 
              #                     95   alloc i1 [temp_16_i32_to_bool_37] 
              #                     104  alloc i1 [temp_17_cmp_42] 
              #                     106  alloc i32 [temp_18_ret_of_func_42] 
              #                     108  alloc i1 [temp_19_i32_to_bool_42] 
              #                     117  alloc i32 [temp_20_ret_of_func_46] 
              #                     119  alloc i1 [temp_21_booltrans_46] 
              #                     121  alloc i1 [temp_22_logicnot_46] 
              #                     123  alloc i32 [temp_23_ret_of_func_46] 
              #                     125  alloc i1 [temp_24_i32_to_bool_46] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     40    
              #                     42   temp_4_ret_of_getint_24_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     43   (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_getint_24_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     66   temp_8_cmp_27_0 = icmp i32 Sgt temp_4_ret_of_getint_24_0, 10_0 
              #                    occupy a0 with temp_4_ret_of_getint_24_0
              #                    occupy a1 with 10_0
    li      a1, 10
              #                    occupy a2 with temp_8_cmp_27_0
    slt     a2,a1,a0
              #                    free a0
              #                    free a1
              #                    free a2
              #                     76   br i1 temp_8_cmp_27_0, label branch_short_circuit_p_true_175, label branch_short_circuit_c_false_175 
              #                    occupy a2 with temp_8_cmp_27_0
              #                    free a2
              #                    occupy a2 with temp_8_cmp_27_0
    bnez    a2, .branch_short_circuit_p_true_175
              #                    free a2
    j       .branch_short_circuit_c_false_175
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_getint_24_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_27_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     73   label branch_short_circuit_p_true_175: 
.branch_short_circuit_p_true_175:
              #                     174  untrack temp_8_cmp_27_0 
              #                    occupy a2 with temp_8_cmp_27_0
              #                    release a2 with temp_8_cmp_27_0
              #                     68   temp_9_ret_of_func_27_0 =  Call i32 func_0(temp_4_ret_of_getint_24_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_4_ret_of_getint_24_0
              #                    store to temp_4_ret_of_getint_24_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_4_ret_of_getint_24_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_4_ret_of_getint_24_0_0
              #                    load from temp_4_ret_of_getint_24_0 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    func
              #                     211  untrack temp_4_ret_of_getint_24_0 
              #                     150  mu g_0_3:68 
              #                     151  g_0_19 = chi g_0_3:68 
              #                     70   temp_10_i32_to_bool_27_0 = icmp i32 Ne temp_9_ret_of_func_27_0, 0_0 
              #                    occupy a0 with temp_9_ret_of_func_27_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_10_i32_to_bool_27_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     212  untrack temp_9_ret_of_func_27_0 
              #                    occupy a0 with temp_9_ret_of_func_27_0
              #                    release a0 with temp_9_ret_of_func_27_0
              #                     75   br i1 temp_10_i32_to_bool_27_0, label branch_short_circuit_c_true_175, label branch_short_circuit_c_false_175 
              #                    occupy a2 with temp_10_i32_to_bool_27_0
              #                    free a2
              #                    occupy a2 with temp_10_i32_to_bool_27_0
    bnez    a2, .branch_short_circuit_c_true_175
              #                    free a2
              #                    occupy a2 with temp_10_i32_to_bool_27_0
              #                    store to temp_10_i32_to_bool_27_0 in mem offset legal
    sb      a2,47(sp)
              #                    release a2 with temp_10_i32_to_bool_27_0
              #                    occupy a2 with temp_8_cmp_27_0
              #                    load from temp_8_cmp_27_0 in mem


    lb      a2,55(sp)
              #                    occupy a0 with temp_4_ret_of_getint_24_0
              #                    load from temp_4_ret_of_getint_24_0 in mem


    lw      a0,68(sp)
    j       .branch_short_circuit_c_false_175
              #                    regtab     a2:Freed { symidx: temp_10_i32_to_bool_27_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     71   label branch_short_circuit_c_true_175: 
.branch_short_circuit_c_true_175:
              #                     213  untrack temp_10_i32_to_bool_27_0 
              #                    occupy a2 with temp_10_i32_to_bool_27_0
              #                    release a2 with temp_10_i32_to_bool_27_0
              #                     64   (nop) 
              #                          jump label: gather_10 
    j       .gather_10
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                     77   label gather_10: 
.gather_10:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     46   temp_5_ret_of_getint_24_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     47   (nop) 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_24_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     79   temp_11_cmp_32_0 = icmp i32 Sgt temp_5_ret_of_getint_24_0, 11_0 
              #                    occupy a0 with temp_5_ret_of_getint_24_0
              #                    occupy a1 with 11_0
    li      a1, 11
              #                    occupy a2 with temp_11_cmp_32_0
    slt     a2,a1,a0
              #                    free a0
              #                    free a1
              #                    free a2
              #                     89   br i1 temp_11_cmp_32_0, label branch_short_circuit_p_true_189, label branch_short_circuit_c_false_189 
              #                    occupy a2 with temp_11_cmp_32_0
              #                    free a2
              #                    occupy a2 with temp_11_cmp_32_0
    bnez    a2, .branch_short_circuit_p_true_189
              #                    free a2
    j       .branch_short_circuit_c_false_189
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_24_0, tracked: true } |     a2:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     86   label branch_short_circuit_p_true_189: 
.branch_short_circuit_p_true_189:
              #                     179  untrack temp_11_cmp_32_0 
              #                    occupy a2 with temp_11_cmp_32_0
              #                    release a2 with temp_11_cmp_32_0
              #                     81   temp_12_ret_of_func_32_0 =  Call i32 func_0(temp_5_ret_of_getint_24_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_5_ret_of_getint_24_0
              #                    store to temp_5_ret_of_getint_24_0 in mem offset legal
    sw      a0,64(sp)
              #                    release a0 with temp_5_ret_of_getint_24_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_5_ret_of_getint_24_0_0
              #                    load from temp_5_ret_of_getint_24_0 in mem


    lw      a0,64(sp)
              #                    arg load ended


    call    func
              #                     207  untrack temp_5_ret_of_getint_24_0 
              #                     148  mu g_0_5:81 
              #                     149  g_0_18 = chi g_0_5:81 
              #                     83   temp_13_i32_to_bool_32_0 = icmp i32 Ne temp_12_ret_of_func_32_0, 0_0 
              #                    occupy a0 with temp_12_ret_of_func_32_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_13_i32_to_bool_32_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     208  untrack temp_12_ret_of_func_32_0 
              #                    occupy a0 with temp_12_ret_of_func_32_0
              #                    release a0 with temp_12_ret_of_func_32_0
              #                     88   br i1 temp_13_i32_to_bool_32_0, label branch_short_circuit_c_true_189, label branch_short_circuit_c_false_189 
              #                    occupy a2 with temp_13_i32_to_bool_32_0
              #                    free a2
              #                    occupy a2 with temp_13_i32_to_bool_32_0
    bnez    a2, .branch_short_circuit_c_true_189
              #                    free a2
              #                    occupy a2 with temp_13_i32_to_bool_32_0
              #                    store to temp_13_i32_to_bool_32_0 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_13_i32_to_bool_32_0
              #                    occupy a2 with temp_11_cmp_32_0
              #                    load from temp_11_cmp_32_0 in mem


    lb      a2,46(sp)
              #                    occupy a0 with temp_5_ret_of_getint_24_0
              #                    load from temp_5_ret_of_getint_24_0 in mem


    lw      a0,64(sp)
    j       .branch_short_circuit_c_false_189
              #                    regtab     a2:Freed { symidx: temp_13_i32_to_bool_32_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     84   label branch_short_circuit_c_true_189: 
.branch_short_circuit_c_true_189:
              #                     209  untrack temp_13_i32_to_bool_32_0 
              #                    occupy a2 with temp_13_i32_to_bool_32_0
              #                    release a2 with temp_13_i32_to_bool_32_0
              #                     63   (nop) 
              #                          jump label: gather_15 
    j       .gather_15
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                     90   label gather_15: 
.gather_15:
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     50   temp_6_ret_of_getint_24_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     51   (nop) 
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: temp_6_ret_of_getint_24_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     92   temp_14_cmp_37_0 = icmp i32 Sle temp_6_ret_of_getint_24_0, 99_0 
              #                    occupy a0 with temp_6_ret_of_getint_24_0
              #                    occupy a1 with 99_0
    li      a1, 99
              #                    occupy a2 with temp_14_cmp_37_0
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     102  br i1 temp_14_cmp_37_0, label branch_short_circuit_c_true_203, label branch_short_circuit_p_false_203 
              #                    occupy a2 with temp_14_cmp_37_0
              #                    free a2
              #                    occupy a2 with temp_14_cmp_37_0
    bnez    a2, .branch_short_circuit_c_true_203
              #                    free a2
    j       .branch_short_circuit_p_false_203
              #                    regtab     a0:Freed { symidx: temp_6_ret_of_getint_24_0, tracked: true } |     a2:Freed { symidx: temp_14_cmp_37_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     97   label branch_short_circuit_c_true_203: 
.branch_short_circuit_c_true_203:
              #                     205  untrack temp_16_i32_to_bool_37_0 
              #                     183  untrack temp_14_cmp_37_0 
              #                    occupy a2 with temp_14_cmp_37_0
              #                    release a2 with temp_14_cmp_37_0
              #                     182  untrack temp_15_ret_of_func_37_0 
              #                     181  untrack temp_6_ret_of_getint_24_0 
              #                    occupy a0 with temp_6_ret_of_getint_24_0
              #                    release a0 with temp_6_ret_of_getint_24_0
              #                     180  untrack temp_16_i32_to_bool_37_0 
              #                     62   (nop) 
              #                          jump label: gather_20 
    j       .gather_20
              #                    regtab  released_gpr_count:14,released_fpr_count:24
              #                     103  label gather_20: 
.gather_20:
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab  released_gpr_count:14,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     54   temp_7_ret_of_getint_24_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     55   (nop) 
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: temp_7_ret_of_getint_24_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     105  temp_17_cmp_42_0 = icmp i32 Sle temp_7_ret_of_getint_24_0, 100_0 
              #                    occupy a0 with temp_7_ret_of_getint_24_0
              #                    occupy a1 with 100_0
    li      a1, 100
              #                    occupy a2 with temp_17_cmp_42_0
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     115  br i1 temp_17_cmp_42_0, label branch_short_circuit_c_true_217, label branch_short_circuit_p_false_217 
              #                    occupy a2 with temp_17_cmp_42_0
              #                    free a2
              #                    occupy a2 with temp_17_cmp_42_0
    bnez    a2, .branch_short_circuit_c_true_217
              #                    free a2
    j       .branch_short_circuit_p_false_217
              #                    regtab     a0:Freed { symidx: temp_7_ret_of_getint_24_0, tracked: true } |     a2:Freed { symidx: temp_17_cmp_42_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     110  label branch_short_circuit_c_true_217: 
.branch_short_circuit_c_true_217:
              #                     201  untrack temp_19_i32_to_bool_42_0 
              #                     188  untrack temp_18_ret_of_func_42_0 
              #                     187  untrack temp_19_i32_to_bool_42_0 
              #                     186  untrack temp_17_cmp_42_0 
              #                    occupy a2 with temp_17_cmp_42_0
              #                    release a2 with temp_17_cmp_42_0
              #                     185  untrack temp_7_ret_of_getint_24_0 
              #                    occupy a0 with temp_7_ret_of_getint_24_0
              #                    release a0 with temp_7_ret_of_getint_24_0
              #                     61   (nop) 
              #                          jump label: gather_25 
    j       .gather_25
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                     116  label gather_25: 
.gather_25:
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     118  temp_20_ret_of_func_46_0 =  Call i32 func_0(99_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_99_0_0
    li      a0, 99
              #                    arg load ended


    call    func
              #                     139  mu g_0_11:118 
              #                     140  g_0_12 = chi g_0_11:118 
              #                     120  temp_21_booltrans_46_0 = icmp i32 Ne temp_20_ret_of_func_46_0, 0_0 
              #                    occupy a0 with temp_20_ret_of_func_46_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_21_booltrans_46_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     190  untrack temp_20_ret_of_func_46_0 
              #                    occupy a0 with temp_20_ret_of_func_46_0
              #                    release a0 with temp_20_ret_of_func_46_0
              #                     122  temp_22_logicnot_46_0 = xor i1 temp_21_booltrans_46_0, true 
              #                    occupy a2 with temp_21_booltrans_46_0
              #                    occupy a0 with temp_22_logicnot_46_0
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                     191  untrack temp_21_booltrans_46_0 
              #                    occupy a2 with temp_21_booltrans_46_0
              #                    release a2 with temp_21_booltrans_46_0
              #                     132  br i1 temp_22_logicnot_46_0, label branch_short_circuit_p_true_230, label branch_short_circuit_c_false_230 
              #                    occupy a0 with temp_22_logicnot_46_0
              #                    free a0
              #                    occupy a0 with temp_22_logicnot_46_0
    bnez    a0, .branch_short_circuit_p_true_230
              #                    free a0
    j       .branch_short_circuit_c_false_230
              #                    regtab     a0:Freed { symidx: temp_22_logicnot_46_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     129  label branch_short_circuit_p_true_230: 
.branch_short_circuit_p_true_230:
              #                     195  untrack temp_22_logicnot_46_0 
              #                    occupy a0 with temp_22_logicnot_46_0
              #                    release a0 with temp_22_logicnot_46_0
              #                     124  temp_23_ret_of_func_46_0 =  Call i32 func_0(100_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_100_0_0
    li      a0, 100
              #                    arg load ended


    call    func
              #                     142  mu g_0_12:124 
              #                     143  g_0_15 = chi g_0_12:124 
              #                     126  temp_24_i32_to_bool_46_0 = icmp i32 Ne temp_23_ret_of_func_46_0, 0_0 
              #                    occupy a0 with temp_23_ret_of_func_46_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_24_i32_to_bool_46_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     196  untrack temp_23_ret_of_func_46_0 
              #                    occupy a0 with temp_23_ret_of_func_46_0
              #                    release a0 with temp_23_ret_of_func_46_0
              #                     131  br i1 temp_24_i32_to_bool_46_0, label branch_short_circuit_c_true_230, label branch_short_circuit_c_false_230 
              #                    occupy a2 with temp_24_i32_to_bool_46_0
              #                    free a2
              #                    occupy a2 with temp_24_i32_to_bool_46_0
    bnez    a2, .branch_short_circuit_c_true_230
              #                    free a2
              #                    occupy a2 with temp_24_i32_to_bool_46_0
              #                    store to temp_24_i32_to_bool_46_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_24_i32_to_bool_46_0
              #                    occupy a0 with temp_22_logicnot_46_0
              #                    load from temp_22_logicnot_46_0 in mem


    lb      a0,14(sp)
    j       .branch_short_circuit_c_false_230
              #                    regtab     a2:Freed { symidx: temp_24_i32_to_bool_46_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     127  label branch_short_circuit_c_true_230: 
.branch_short_circuit_c_true_230:
              #                     197  untrack temp_24_i32_to_bool_46_0 
              #                    occupy a2 with temp_24_i32_to_bool_46_0
              #                    release a2 with temp_24_i32_to_bool_46_0
              #                     60   (nop) 
              #                          jump label: gather_29 
    j       .gather_29
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                     133  label gather_29: 
.gather_29:
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     141  mu g_0_14:59 
              #                     59   ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,104(sp)
              #                    load from s0_main_0 in mem
    ld      s0,96(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,112
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_22_logicnot_46_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     128  label branch_short_circuit_c_false_230: 
.branch_short_circuit_c_false_230:
              #                     198  untrack temp_24_i32_to_bool_46_0 
              #                     194  untrack temp_24_i32_to_bool_46_0 
              #                     193  untrack temp_22_logicnot_46_0 
              #                    occupy a0 with temp_22_logicnot_46_0
              #                    release a0 with temp_22_logicnot_46_0
              #                     192  untrack temp_23_ret_of_func_46_0 
              #                     57   (nop) 
              #                          jump label: gather_29 
    j       .gather_29
              #                    regtab     a0:Freed { symidx: temp_7_ret_of_getint_24_0, tracked: true } |     a2:Freed { symidx: temp_17_cmp_42_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     112  label branch_short_circuit_p_false_217: 
.branch_short_circuit_p_false_217:
              #                     189  untrack temp_17_cmp_42_0 
              #                    occupy a2 with temp_17_cmp_42_0
              #                    release a2 with temp_17_cmp_42_0
              #                     107  temp_18_ret_of_func_42_0 =  Call i32 func_0(temp_7_ret_of_getint_24_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_7_ret_of_getint_24_0
              #                    store to temp_7_ret_of_getint_24_0 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_7_ret_of_getint_24_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_7_ret_of_getint_24_0_0
              #                    load from temp_7_ret_of_getint_24_0 in mem


    lw      a0,56(sp)
              #                    arg load ended


    call    func
              #                     199  untrack temp_7_ret_of_getint_24_0 
              #                     144  mu g_0_9:107 
              #                     145  g_0_16 = chi g_0_9:107 
              #                     109  temp_19_i32_to_bool_42_0 = icmp i32 Ne temp_18_ret_of_func_42_0, 0_0 
              #                    occupy a0 with temp_18_ret_of_func_42_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_19_i32_to_bool_42_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     200  untrack temp_18_ret_of_func_42_0 
              #                    occupy a0 with temp_18_ret_of_func_42_0
              #                    release a0 with temp_18_ret_of_func_42_0
              #                     114  br i1 temp_19_i32_to_bool_42_0, label branch_short_circuit_c_true_217, label branch_short_circuit_c_false_217 
              #                    occupy a2 with temp_19_i32_to_bool_42_0
              #                    free a2
              #                    occupy a2 with temp_19_i32_to_bool_42_0
              #                    store to temp_19_i32_to_bool_42_0 in mem offset legal
    sb      a2,23(sp)
              #                    release a2 with temp_19_i32_to_bool_42_0
              #                    occupy a2 with temp_17_cmp_42_0
              #                    load from temp_17_cmp_42_0 in mem


    lb      a2,30(sp)
              #                    occupy a0 with temp_7_ret_of_getint_24_0
              #                    load from temp_7_ret_of_getint_24_0 in mem


    lw      a0,56(sp)
              #                    occupy a1 with temp_19_i32_to_bool_42_0
              #                    load from temp_19_i32_to_bool_42_0 in mem


    lb      a1,23(sp)
    bnez    a1, .branch_short_circuit_c_true_217
              #                    free a1
    j       .branch_short_circuit_c_false_217
              #                    regtab     a0:Freed { symidx: temp_7_ret_of_getint_24_0, tracked: true } |     a1:Freed { symidx: temp_19_i32_to_bool_42_0, tracked: true } |     a2:Freed { symidx: temp_17_cmp_42_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     111  label branch_short_circuit_c_false_217: 
.branch_short_circuit_c_false_217:
              #                     202  untrack temp_19_i32_to_bool_42_0 
              #                    occupy a1 with temp_19_i32_to_bool_42_0
              #                    release a1 with temp_19_i32_to_bool_42_0
              #                     56   (nop) 
              #                          jump label: gather_25 
              #                    occupy a2 with temp_17_cmp_42_0
              #                    store to temp_17_cmp_42_0 in mem offset legal
    sb      a2,30(sp)
              #                    release a2 with temp_17_cmp_42_0
              #                    occupy a0 with temp_7_ret_of_getint_24_0
              #                    store to temp_7_ret_of_getint_24_0 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_7_ret_of_getint_24_0
    j       .gather_25
              #                    regtab     a0:Freed { symidx: temp_6_ret_of_getint_24_0, tracked: true } |     a2:Freed { symidx: temp_14_cmp_37_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     99   label branch_short_circuit_p_false_203: 
.branch_short_circuit_p_false_203:
              #                     184  untrack temp_14_cmp_37_0 
              #                    occupy a2 with temp_14_cmp_37_0
              #                    release a2 with temp_14_cmp_37_0
              #                     94   temp_15_ret_of_func_37_0 =  Call i32 func_0(temp_6_ret_of_getint_24_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_6_ret_of_getint_24_0
              #                    store to temp_6_ret_of_getint_24_0 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_6_ret_of_getint_24_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_6_ret_of_getint_24_0_0
              #                    load from temp_6_ret_of_getint_24_0 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    func
              #                     203  untrack temp_6_ret_of_getint_24_0 
              #                     146  mu g_0_7:94 
              #                     147  g_0_17 = chi g_0_7:94 
              #                     96   temp_16_i32_to_bool_37_0 = icmp i32 Ne temp_15_ret_of_func_37_0, 0_0 
              #                    occupy a0 with temp_15_ret_of_func_37_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_16_i32_to_bool_37_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     204  untrack temp_15_ret_of_func_37_0 
              #                    occupy a0 with temp_15_ret_of_func_37_0
              #                    release a0 with temp_15_ret_of_func_37_0
              #                     101  br i1 temp_16_i32_to_bool_37_0, label branch_short_circuit_c_true_203, label branch_short_circuit_c_false_203 
              #                    occupy a2 with temp_16_i32_to_bool_37_0
              #                    free a2
              #                    occupy a2 with temp_16_i32_to_bool_37_0
              #                    store to temp_16_i32_to_bool_37_0 in mem offset legal
    sb      a2,31(sp)
              #                    release a2 with temp_16_i32_to_bool_37_0
              #                    occupy a2 with temp_14_cmp_37_0
              #                    load from temp_14_cmp_37_0 in mem


    lb      a2,38(sp)
              #                    occupy a0 with temp_6_ret_of_getint_24_0
              #                    load from temp_6_ret_of_getint_24_0 in mem


    lw      a0,60(sp)
              #                    occupy a1 with temp_16_i32_to_bool_37_0
              #                    load from temp_16_i32_to_bool_37_0 in mem


    lb      a1,31(sp)
    bnez    a1, .branch_short_circuit_c_true_203
              #                    free a1
    j       .branch_short_circuit_c_false_203
              #                    regtab     a0:Freed { symidx: temp_6_ret_of_getint_24_0, tracked: true } |     a1:Freed { symidx: temp_16_i32_to_bool_37_0, tracked: true } |     a2:Freed { symidx: temp_14_cmp_37_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     98   label branch_short_circuit_c_false_203: 
.branch_short_circuit_c_false_203:
              #                     206  untrack temp_16_i32_to_bool_37_0 
              #                    occupy a1 with temp_16_i32_to_bool_37_0
              #                    release a1 with temp_16_i32_to_bool_37_0
              #                     52   (nop) 
              #                          jump label: gather_20 
              #                    occupy a2 with temp_14_cmp_37_0
              #                    store to temp_14_cmp_37_0 in mem offset legal
    sb      a2,38(sp)
              #                    release a2 with temp_14_cmp_37_0
              #                    occupy a0 with temp_6_ret_of_getint_24_0
              #                    store to temp_6_ret_of_getint_24_0 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_6_ret_of_getint_24_0
    j       .gather_20
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_24_0, tracked: true } |     a2:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     85   label branch_short_circuit_c_false_189: 
.branch_short_circuit_c_false_189:
              #                     210  untrack temp_13_i32_to_bool_32_0 
              #                     178  untrack temp_5_ret_of_getint_24_0 
              #                    occupy a0 with temp_5_ret_of_getint_24_0
              #                    release a0 with temp_5_ret_of_getint_24_0
              #                     177  untrack temp_12_ret_of_func_32_0 
              #                     176  untrack temp_11_cmp_32_0 
              #                    occupy a2 with temp_11_cmp_32_0
              #                    release a2 with temp_11_cmp_32_0
              #                     175  untrack temp_13_i32_to_bool_32_0 
              #                     48   (nop) 
              #                          jump label: gather_15 
    j       .gather_15
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_getint_24_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_27_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     72   label branch_short_circuit_c_false_175: 
.branch_short_circuit_c_false_175:
              #                     214  untrack temp_10_i32_to_bool_27_0 
              #                     173  untrack temp_4_ret_of_getint_24_0 
              #                    occupy a0 with temp_4_ret_of_getint_24_0
              #                    release a0 with temp_4_ret_of_getint_24_0
              #                     172  untrack temp_8_cmp_27_0 
              #                    occupy a2 with temp_8_cmp_27_0
              #                    release a2 with temp_8_cmp_27_0
              #                     171  untrack temp_10_i32_to_bool_27_0 
              #                     170  untrack temp_9_ret_of_func_27_0 
              #                     44   (nop) 
              #                          jump label: gather_10 
    j       .gather_10
.section ___var
    .data
    .align 4
    .globl g
              #                     17   global i32 g_0 
    .type g,@object
g:
    .word 0
