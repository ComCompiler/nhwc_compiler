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
              #                     30   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 304|s0_main:8 at 296|T _s18 _i0:4 at 292|W _s18 _i0:4 at 288|x _s18 _i0:4 at 284|x _s18 _i1:4 at 280|i _s18 _i0:4 at 276|i _s18 _i2:4 at 272|i _s18 _i5:4 at 268|j _s18 _i0:4 at 264|j _s18 _i1:4 at 260|j _s18 _i3:4 at 256|j _s18 _i6:4 at 252|temp_4_ret_of_getint _s18 _i0:4 at 248|temp_5_ret_of_getint _s18 _i0:4 at 244|res _s18 _i1:4 at 240|res _s18 _i3:4 at 236|temp_6_arithop _s50 _i0:4 at 232|temp_7_ptr_of_*dp_0:8 at 224|temp_9_arithop _s33 _i0:4 at 220|none:4 at 216|temp_10_ptr_of_*dp_0:8 at 208|temp_13_ptr_of_*dp_0:8 at 200|temp_17_ptr_of_*t_0:8 at 192|temp_21_ptr_of_*dp_0:8 at 184|temp_23_ptr_of_*dp_0:8 at 176|temp_27_ptr_of_*t_0:8 at 168|temp_30_ret_of_getint _s25 _i0:4 at 164|temp_31_arithop _s25 _i0:4 at 160|temp_32_ptr_of_*t_0:8 at 152|temp_33_ptr_of_*dp_0:8 at 144|temp_34_arithop _s25 _i0:4 at 140|none:4 at 136|temp_35_ptr_of_*dp_0:8 at 128|temp_36_ele_of_*dp_0 _s25 _i0:4 at 124|none:4 at 120|temp_37_ptr_of_*t_0:8 at 112|temp_38_ele_of_*t_0 _s25 _i0:4 at 108|temp_39_arithop _s25 _i0:4 at 104|temp_40_arithop _s25 _i0:4 at 100|temp_41_cmp _s23 _i0:1 at 99|temp_42_cmp _s31 _i0:1 at 98|temp_43_cmp _s48 _i0:1 at 97|none:1 at 96|temp_44_ptr_of_*dp_0:8 at 88|temp_45_ele_of_*dp_0 _s51 _i0:4 at 84|temp_46_cmp _s51 _i0:1 at 83|temp_47_cmp _s35 _i0:1 at 82|none:2 at 80|temp_48_arithop _s38 _i0:4 at 76|temp_49_arithop _s38 _i0:4 at 72|temp_50_ptr_of_*dp_0:8 at 64|temp_51_ele_of_*dp_0 _s38 _i0:4 at 60|temp_52_arithop _s38 _i0:4 at 56|temp_53_arithop _s38 _i0:4 at 52|none:4 at 48|temp_54_ptr_of_*t_0:8 at 40|temp_55_ele_of_*t_0 _s38 _i0:4 at 36|temp_56_arithop _s38 _i0:4 at 32|temp_58_ptr_of_*dp_0:8 at 24|temp_59_ele_of_*dp_0 _s38 _i0:4 at 20|none:4 at 16|temp_62_ptr_of_*t_0:8 at 8|temp_64_arithop _s38 _i0:4 at 4|temp_65_cmp _s38 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-312
              #                    store to ra_main_0 in mem offset legal
    sd      ra,304(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,296(sp)
    addi    s0,sp,312
              #                     226  dp_0_1 = chi dp_0_0:30 
              #                     227  t_0_1 = chi t_0_0:30 
              #                     31   alloc i32 [T_18] 
              #                     33   alloc i32 [W_18] 
              #                     35   alloc i32 [x_18] 
              #                     37   alloc i32 [i_18] 
              #                     39   alloc i32 [j_18] 
              #                     41   alloc i32 [temp_4_ret_of_getint_18] 
              #                     44   alloc i32 [temp_5_ret_of_getint_18] 
              #                     50   alloc i32 [res_18] 
              #                     54   alloc i32 [temp_6_arithop_50] 
              #                     57   alloc ptr->i32 [temp_7_ptr_of_*dp_0_53] 
              #                     59   alloc i32 [temp_8_ele_of_*dp_0_53] 
              #                     64   alloc i32 [temp_9_arithop_33] 
              #                     67   alloc ptr->i32 [temp_10_ptr_of_*dp_0_42] 
              #                     69   alloc i32 [temp_11_arithop_42] 
              #                     71   alloc i32 [temp_12_arithop_42] 
              #                     73   alloc ptr->i32 [temp_13_ptr_of_*dp_0_42] 
              #                     75   alloc i32 [temp_14_ele_of_*dp_0_42] 
              #                     78   alloc i32 [temp_15_arithop_42] 
              #                     80   alloc i32 [temp_16_arithop_42] 
              #                     82   alloc ptr->i32 [temp_17_ptr_of_*t_0_42] 
              #                     84   alloc i32 [temp_18_ele_of_*t_0_42] 
              #                     87   alloc i32 [temp_19_arithop_42] 
              #                     91   alloc i32 [temp_20_arithop_37] 
              #                     94   alloc ptr->i32 [temp_21_ptr_of_*dp_0_40] 
              #                     96   alloc i32 [temp_22_arithop_40] 
              #                     98   alloc ptr->i32 [temp_23_ptr_of_*dp_0_40] 
              #                     100  alloc i32 [temp_24_ele_of_*dp_0_40] 
              #                     103  alloc i32 [temp_25_arithop_40] 
              #                     105  alloc i32 [temp_26_arithop_40] 
              #                     107  alloc ptr->i32 [temp_27_ptr_of_*t_0_40] 
              #                     109  alloc i32 [temp_28_ele_of_*t_0_40] 
              #                     112  alloc i32 [temp_29_arithop_40] 
              #                     116  alloc i32 [temp_30_ret_of_getint_25] 
              #                     119  alloc i32 [temp_31_arithop_25] 
              #                     121  alloc ptr->i32 [temp_32_ptr_of_*t_0_25] 
              #                     125  alloc ptr->i32 [temp_33_ptr_of_*dp_0_25] 
              #                     127  alloc i32 [temp_34_arithop_25] 
              #                     129  alloc ptr->i32 [temp_35_ptr_of_*dp_0_25] 
              #                     131  alloc i32 [temp_36_ele_of_*dp_0_25] 
              #                     134  alloc ptr->i32 [temp_37_ptr_of_*t_0_25] 
              #                     136  alloc i32 [temp_38_ele_of_*t_0_25] 
              #                     139  alloc i32 [temp_39_arithop_25] 
              #                     143  alloc i32 [temp_40_arithop_25] 
              #                     146  alloc i1 [temp_41_cmp_23] 
              #                     152  alloc i1 [temp_42_cmp_31] 
              #                     158  alloc i1 [temp_43_cmp_48] 
              #                     166  alloc ptr->i32 [temp_44_ptr_of_*dp_0_51] 
              #                     168  alloc i32 [temp_45_ele_of_*dp_0_51] 
              #                     171  alloc i1 [temp_46_cmp_51] 
              #                     176  alloc i1 [temp_47_cmp_35] 
              #                     182  alloc i32 [temp_48_arithop_38] 
              #                     184  alloc i32 [temp_49_arithop_38] 
              #                     186  alloc ptr->i32 [temp_50_ptr_of_*dp_0_38] 
              #                     188  alloc i32 [temp_51_ele_of_*dp_0_38] 
              #                     191  alloc i32 [temp_52_arithop_38] 
              #                     193  alloc i32 [temp_53_arithop_38] 
              #                     195  alloc ptr->i32 [temp_54_ptr_of_*t_0_38] 
              #                     197  alloc i32 [temp_55_ele_of_*t_0_38] 
              #                     200  alloc i32 [temp_56_arithop_38] 
              #                     202  alloc i32 [temp_57_arithop_38] 
              #                     204  alloc ptr->i32 [temp_58_ptr_of_*dp_0_38] 
              #                     206  alloc i32 [temp_59_ele_of_*dp_0_38] 
              #                     209  alloc i32 [temp_60_arithop_38] 
              #                     211  alloc i32 [temp_61_arithop_38] 
              #                     213  alloc ptr->i32 [temp_62_ptr_of_*t_0_38] 
              #                     215  alloc i32 [temp_63_ele_of_*t_0_38] 
              #                     218  alloc i32 [temp_64_arithop_38] 
              #                     220  alloc i1 [temp_65_cmp_38] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     32    
              #                     34    
              #                     36    
              #                     38    
              #                     40    
              #                     42   temp_4_ret_of_getint_18_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     43   (nop) 
              #                     45   temp_5_ret_of_getint_18_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_4_ret_of_getint_18_0
              #                    store to temp_4_ret_of_getint_18_0 in mem offset legal
    sw      a0,248(sp)
              #                    release a0 with temp_4_ret_of_getint_18_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     46   (nop) 
              #                     47   (nop) 
              #                     244  i_18_2 = i32 1_0 
              #                    occupy a1 with i_18_2
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_24 
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: i_18_2, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     148  label while.head_24: 
.while.head_24:
              #                     147  temp_41_cmp_23_0 = icmp i32 Sle i_18_2, temp_4_ret_of_getint_18_0 
              #                    occupy a1 with i_18_2
              #                    occupy a2 with temp_4_ret_of_getint_18_0
              #                    load from temp_4_ret_of_getint_18_0 in mem


    lw      a2,248(sp)
              #                    occupy a3 with temp_41_cmp_23_0
    slt     a3,a2,a1
    xori    a3,a3,1
              #                    free a1
              #                    free a2
              #                    free a3
              #                     151  br i1 temp_41_cmp_23_0, label while.body_24, label while.exit_24 
              #                    occupy a3 with temp_41_cmp_23_0
              #                    free a3
              #                    occupy a3 with temp_41_cmp_23_0
    bnez    a3, .while.body_24
              #                    free a3
    j       .while.exit_24
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: i_18_2, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     149  label while.body_24: 
.while.body_24:
              #                     117  temp_30_ret_of_getint_25_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_5_ret_of_getint_18_0
              #                    store to temp_5_ret_of_getint_18_0 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with temp_5_ret_of_getint_18_0
              #                    occupy a1 with i_18_2
              #                    store to i_18_2 in mem offset legal
    sw      a1,272(sp)
              #                    release a1 with i_18_2
              #                    occupy a2 with temp_4_ret_of_getint_18_0
              #                    store to temp_4_ret_of_getint_18_0 in mem offset legal
    sw      a2,248(sp)
              #                    release a2 with temp_4_ret_of_getint_18_0
              #                    occupy a3 with temp_41_cmp_23_0
              #                    store to temp_41_cmp_23_0 in mem offset legal
    sb      a3,99(sp)
              #                    release a3 with temp_41_cmp_23_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     118  (nop) 
              #                     120  temp_31_arithop_25_0 = Mod i32 temp_30_ret_of_getint_25_0, 2_0 
              #                    occupy a0 with temp_30_ret_of_getint_25_0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with temp_31_arithop_25_0
    rem     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     122  temp_32_ptr_of_*t_0_25 = GEP *t_0:ptr->Array:i32:[Some(2_0)] [Some(i_18_2), Some(temp_31_arithop_25_0)] 
              #                    occupy a3 with temp_32_ptr_of_*t_0_25
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with i_18_2
              #                    load from i_18_2 in mem


    lw      a5,272(sp)
    slli a4,a5,1
              #                    free a5
    add     a3,a3,a4
              #                    free a4
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_31_arithop_25_0
    mv      a6, a2
              #                    free a2
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
              #                    occupy a7 with *t_0
              #                       load label t as ptr to reg
    la      a7, t
              #                    occupy reg a7 with *t_0
    add     a3,a3,a7
              #                    free a7
              #                    free a3
              #                     123  store 1_0:i32 temp_32_ptr_of_*t_0_25:ptr->i32 
              #                    occupy a3 with temp_32_ptr_of_*t_0_25
              #                    occupy s1 with 1_0
    li      s1, 1
    sw      s1,0(a3)
              #                    free s1
              #                    free a3
              #                     124  t_0_3 = chi t_0_2:123 
              #                     126  temp_33_ptr_of_*dp_0_25 = GEP *dp_0:ptr->Array:i32:[Some(35_0)] [Some(i_18_2), Some(0_0)] 
              #                    occupy s2 with temp_33_ptr_of_*dp_0_25
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 35_0
    li      s4, 35
              #                    occupy a5 with i_18_2
    mul     s3,s4,a5
              #                    free s4
              #                    free a5
    add     s2,s2,s3
              #                    free s3
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s5, 0
    add     s2,s2,s5
              #                    free s5
    slli s2,s2,2
              #                    occupy s6 with *dp_0
              #                       load label dp as ptr to reg
    la      s6, dp
              #                    occupy reg s6 with *dp_0
    add     s2,s2,s6
              #                    free s6
              #                    free s2
              #                     128  temp_34_arithop_25_0 = Sub i32 i_18_2, 1_0 
              #                    occupy a5 with i_18_2
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s7 with temp_34_arithop_25_0
              #                    regtab:    a0:Freed { symidx: temp_30_ret_of_getint_25_0, tracked: true } |     a1:Freed { symidx: 2_0, tracked: false } |     a2:Freed { symidx: temp_31_arithop_25_0, tracked: true } |     a3:Freed { symidx: temp_32_ptr_of_*t_0_25, tracked: true } |     a4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a5:Occupied { symidx: i_18_2, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a7:Freed { symidx: *t_0, tracked: false } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_33_ptr_of_*dp_0_25, tracked: true } |     s3:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s4:Freed { symidx: 35_0, tracked: false } |     s5:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s6:Freed { symidx: *dp_0, tracked: false } |     s7:Occupied { symidx: temp_34_arithop_25_0, tracked: true, occupy_count: 1 } |  released_gpr_count:4,released_fpr_count:24


    subw    s7,a5,s1
              #                    free a5
              #                    occupy a5 with i_18_2
              #                    store to i_18_2 in mem offset legal
    sw      a5,272(sp)
              #                    release a5 with i_18_2
              #                    free s1
              #                    free s7
              #                     130  temp_35_ptr_of_*dp_0_25 = GEP *dp_0:Array:i32:[None, Some(35_0)] [Some(temp_34_arithop_25_0), Some(0_0)] 
              #                    occupy a5 with temp_35_ptr_of_*dp_0_25
    li      a5, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    found literal reg Some(s4) already exist with 35_0
              #                    occupy s4 with 35_0
              #                    occupy s7 with temp_34_arithop_25_0
    mul     s8,s4,s7
              #                    free s4
              #                    free s7
              #                    occupy s7 with temp_34_arithop_25_0
              #                    store to temp_34_arithop_25_0 in mem offset legal
    sw      s7,140(sp)
              #                    release s7 with temp_34_arithop_25_0
    add     a5,a5,s8
              #                    free s8
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 0
    add     a5,a5,s4
              #                    free s4
    slli a5,a5,2
              #                    occupy s4 with *dp_0
              #                       load label dp as ptr to reg
    la      s4, dp
              #                    occupy reg s4 with *dp_0
    add     a5,a5,s4
              #                    free s4
              #                    free a5
              #                     132  temp_36_ele_of_*dp_0_25_0 = load temp_35_ptr_of_*dp_0_25:ptr->i32 
              #                    occupy a5 with temp_35_ptr_of_*dp_0_25
              #                    occupy s4 with temp_36_ele_of_*dp_0_25_0
    lw      s4,0(a5)
              #                    free s4
              #                    occupy s4 with temp_36_ele_of_*dp_0_25_0
              #                    store to temp_36_ele_of_*dp_0_25_0 in mem offset legal
    sw      s4,124(sp)
              #                    release s4 with temp_36_ele_of_*dp_0_25_0
              #                    free a5
              #                     133  mu dp_0_2:132 
              #                     135  temp_37_ptr_of_*t_0_25 = GEP *t_0:Array:i32:[None, Some(2_0)] [Some(i_18_2), Some(1_0)] 
              #                    occupy s4 with temp_37_ptr_of_*t_0_25
    li      s4, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s9 with i_18_2
              #                    load from i_18_2 in mem


    lw      s9,272(sp)
    slli s7,s9,1
              #                    free s9
              #                    occupy s9 with i_18_2
              #                    store to i_18_2 in mem offset legal
    sw      s9,272(sp)
              #                    release s9 with i_18_2
    add     s4,s4,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     s4,s4,s7
              #                    free s7
    slli s4,s4,2
              #                    occupy s7 with *t_0
              #                       load label t as ptr to reg
    la      s7, t
              #                    occupy reg s7 with *t_0
    add     s4,s4,s7
              #                    free s7
              #                    free s4
              #                    occupy s4 with temp_37_ptr_of_*t_0_25
              #                    store to temp_37_ptr_of_*t_0_25 in mem offset legal
    sd      s4,112(sp)
              #                    release s4 with temp_37_ptr_of_*t_0_25
              #                     137  temp_38_ele_of_*t_0_25_0 = load temp_37_ptr_of_*t_0_25:ptr->i32 
              #                    occupy s4 with temp_37_ptr_of_*t_0_25
              #                    load from temp_37_ptr_of_*t_0_25 in mem
    ld      s4,112(sp)
              #                    occupy s7 with temp_38_ele_of_*t_0_25_0
    lw      s7,0(s4)
              #                    free s7
              #                    occupy s7 with temp_38_ele_of_*t_0_25_0
              #                    store to temp_38_ele_of_*t_0_25_0 in mem offset legal
    sw      s7,108(sp)
              #                    release s7 with temp_38_ele_of_*t_0_25_0
              #                    free s4
              #                    occupy s4 with temp_37_ptr_of_*t_0_25
              #                    store to temp_37_ptr_of_*t_0_25 in mem offset legal
    sd      s4,112(sp)
              #                    release s4 with temp_37_ptr_of_*t_0_25
              #                     138  mu t_0_3:137 
              #                     140  temp_39_arithop_25_0 = Add i32 temp_36_ele_of_*dp_0_25_0, temp_38_ele_of_*t_0_25_0 
              #                    occupy s4 with temp_36_ele_of_*dp_0_25_0
              #                    load from temp_36_ele_of_*dp_0_25_0 in mem


    lw      s4,124(sp)
              #                    occupy s7 with temp_38_ele_of_*t_0_25_0
              #                    load from temp_38_ele_of_*t_0_25_0 in mem


    lw      s7,108(sp)
              #                    occupy s9 with temp_39_arithop_25_0
    ADDW    s9,s4,s7
              #                    free s4
              #                    occupy s4 with temp_36_ele_of_*dp_0_25_0
              #                    store to temp_36_ele_of_*dp_0_25_0 in mem offset legal
    sw      s4,124(sp)
              #                    release s4 with temp_36_ele_of_*dp_0_25_0
              #                    free s7
              #                    occupy s7 with temp_38_ele_of_*t_0_25_0
              #                    store to temp_38_ele_of_*t_0_25_0 in mem offset legal
    sw      s7,108(sp)
              #                    release s7 with temp_38_ele_of_*t_0_25_0
              #                    free s9
              #                    occupy s9 with temp_39_arithop_25_0
              #                    store to temp_39_arithop_25_0 in mem offset legal
    sw      s9,104(sp)
              #                    release s9 with temp_39_arithop_25_0
              #                     141  store temp_39_arithop_25_0:i32 temp_33_ptr_of_*dp_0_25:ptr->i32 
              #                    occupy s2 with temp_33_ptr_of_*dp_0_25
              #                    occupy s4 with temp_39_arithop_25_0
              #                    load from temp_39_arithop_25_0 in mem


    lw      s4,104(sp)
    sw      s4,0(s2)
              #                    free s4
              #                    occupy s4 with temp_39_arithop_25_0
              #                    store to temp_39_arithop_25_0 in mem offset legal
    sw      s4,104(sp)
              #                    release s4 with temp_39_arithop_25_0
              #                    free s2
              #                     142  dp_0_3 = chi dp_0_2:141 
              #                     144  temp_40_arithop_25_0 = Add i32 i_18_2, 1_0 
              #                    occupy s4 with i_18_2
              #                    load from i_18_2 in mem


    lw      s4,272(sp)
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s7 with temp_40_arithop_25_0
    ADDW    s7,s4,s1
              #                    free s4
              #                    occupy s4 with i_18_2
              #                    store to i_18_2 in mem offset legal
    sw      s4,272(sp)
              #                    release s4 with i_18_2
              #                    free s1
              #                    free s7
              #                     145  (nop) 
              #                     245  i_18_2 = i32 temp_40_arithop_25_0 
              #                    occupy s7 with temp_40_arithop_25_0
              #                    occupy s1 with i_18_2
    mv      s1, s7
              #                    free s7
              #                    occupy s7 with temp_40_arithop_25_0
              #                    store to temp_40_arithop_25_0 in mem offset legal
    sw      s7,100(sp)
              #                    release s7 with temp_40_arithop_25_0
              #                    free s1
              #                          jump label: while.head_24 
              #                    occupy s2 with temp_33_ptr_of_*dp_0_25
              #                    store to temp_33_ptr_of_*dp_0_25 in mem offset legal
    sd      s2,144(sp)
              #                    release s2 with temp_33_ptr_of_*dp_0_25
              #                    occupy a3 with temp_32_ptr_of_*t_0_25
              #                    store to temp_32_ptr_of_*t_0_25 in mem offset legal
    sd      a3,152(sp)
              #                    release a3 with temp_32_ptr_of_*t_0_25
              #                    occupy s1 with i_18_2
              #                    store to i_18_2 in mem offset legal
    sw      s1,272(sp)
              #                    release s1 with i_18_2
              #                    occupy a1 with i_18_2
              #                    load from i_18_2 in mem


    lw      a1,272(sp)
              #                    occupy a0 with temp_30_ret_of_getint_25_0
              #                    store to temp_30_ret_of_getint_25_0 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_30_ret_of_getint_25_0
              #                    occupy a0 with temp_5_ret_of_getint_18_0
              #                    load from temp_5_ret_of_getint_18_0 in mem


    lw      a0,244(sp)
              #                    occupy a5 with temp_35_ptr_of_*dp_0_25
              #                    store to temp_35_ptr_of_*dp_0_25 in mem offset legal
    sd      a5,128(sp)
              #                    release a5 with temp_35_ptr_of_*dp_0_25
              #                    occupy a2 with temp_31_arithop_25_0
              #                    store to temp_31_arithop_25_0 in mem offset legal
    sw      a2,160(sp)
              #                    release a2 with temp_31_arithop_25_0
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: i_18_2, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     150  label while.exit_24: 
.while.exit_24:
              #                     256  untrack i_18_2 
              #                    occupy a1 with i_18_2
              #                    release a1 with i_18_2
              #                     48   (nop) 
              #                     246  i_18_5 = i32 1_0 
              #                    occupy a1 with i_18_5
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: i_18_5, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     154  label while.head_32: 
.while.head_32:
              #                     153  temp_42_cmp_31_0 = icmp i32 Sle i_18_5, temp_4_ret_of_getint_18_0 
              #                    occupy a1 with i_18_5
              #                    occupy a2 with temp_4_ret_of_getint_18_0
              #                    occupy a4 with temp_42_cmp_31_0
    slt     a4,a2,a1
    xori    a4,a4,1
              #                    free a1
              #                    free a2
              #                    free a4
              #                     157  br i1 temp_42_cmp_31_0, label while.body_32, label while.exit_32 
              #                    occupy a4 with temp_42_cmp_31_0
              #                    free a4
              #                    occupy a4 with temp_42_cmp_31_0
    bnez    a4, .while.body_32
              #                    free a4
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: i_18_5, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     155  label while.body_32: 
.while.body_32:
              #                     63   (nop) 
              #                     185  temp_49_arithop_38_0 = Sub i32 i_18_5, 1_0 
              #                    occupy a1 with i_18_5
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_49_arithop_38_0
              #                    regtab:    a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Occupied { symidx: i_18_5, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Occupied { symidx: temp_49_arithop_38_0, tracked: true, occupy_count: 1 } |  released_gpr_count:12,released_fpr_count:24


    subw    a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                     203  (nop) 
              #                     97   (nop) 
              #                     72   (nop) 
              #                     247  j_18_3 = i32 1_0 
              #                    occupy a7 with j_18_3
    li      a7, 1
              #                    free a7
              #                          jump label: while.head_36 
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: i_18_5, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a6:Freed { symidx: temp_49_arithop_38_0, tracked: true } |     a7:Freed { symidx: j_18_3, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     178  label while.head_36: 
.while.head_36:
              #                     177  temp_47_cmp_35_0 = icmp i32 Sle j_18_3, temp_5_ret_of_getint_18_0 
              #                    occupy a7 with j_18_3
              #                    occupy a0 with temp_5_ret_of_getint_18_0
              #                    occupy a5 with temp_47_cmp_35_0
    slt     a5,a0,a7
    xori    a5,a5,1
              #                    free a7
              #                    free a0
              #                    free a5
              #                     181  br i1 temp_47_cmp_35_0, label while.body_36, label while.exit_36 
              #                    occupy a5 with temp_47_cmp_35_0
              #                    free a5
              #                    occupy a5 with temp_47_cmp_35_0
    bnez    a5, .while.body_36
              #                    free a5
    j       .while.exit_36
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: i_18_5, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a5:Freed { symidx: temp_47_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_49_arithop_38_0, tracked: true } |     a7:Freed { symidx: j_18_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     179  label while.body_36: 
.while.body_36:
              #                     183  temp_48_arithop_38_0 = Sub i32 j_18_3, 1_0 
              #                    occupy a7 with j_18_3
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_48_arithop_38_0
              #                    regtab:    a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: i_18_5, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a5:Freed { symidx: temp_47_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_49_arithop_38_0, tracked: true } |     a7:Occupied { symidx: j_18_3, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Occupied { symidx: temp_48_arithop_38_0, tracked: true, occupy_count: 1 } |  released_gpr_count:8,released_fpr_count:24


    subw    s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                     187  temp_50_ptr_of_*dp_0_38 = GEP *dp_0:Array:i32:[None, Some(35_0)] [Some(temp_49_arithop_38_0), Some(temp_48_arithop_38_0)] 
              #                    occupy s3 with temp_50_ptr_of_*dp_0_38
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with 35_0
    li      s5, 35
              #                    occupy a6 with temp_49_arithop_38_0
    mul     s4,s5,a6
              #                    free s5
              #                    free a6
    add     s3,s3,s4
              #                    free s4
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with temp_48_arithop_38_0
    mv      s6, s2
              #                    free s2
              #                    occupy s2 with temp_48_arithop_38_0
              #                    store to temp_48_arithop_38_0 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with temp_48_arithop_38_0
    add     s3,s3,s6
              #                    free s6
    slli s3,s3,2
              #                    occupy s2 with *dp_0
              #                       load label dp as ptr to reg
    la      s2, dp
              #                    occupy reg s2 with *dp_0
    add     s3,s3,s2
              #                    free s2
              #                    free s3
              #                     189  temp_51_ele_of_*dp_0_38_0 = load temp_50_ptr_of_*dp_0_38:ptr->i32 
              #                    occupy s3 with temp_50_ptr_of_*dp_0_38
              #                    occupy s2 with temp_51_ele_of_*dp_0_38_0
    lw      s2,0(s3)
              #                    free s2
              #                    occupy s2 with temp_51_ele_of_*dp_0_38_0
              #                    store to temp_51_ele_of_*dp_0_38_0 in mem offset legal
    sw      s2,60(sp)
              #                    release s2 with temp_51_ele_of_*dp_0_38_0
              #                    free s3
              #                     190  mu dp_0_5:189 
              #                     192  temp_52_arithop_38_0 = Add i32 j_18_3, 1_0 
              #                    occupy a7 with j_18_3
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s2 with temp_52_arithop_38_0
    ADDW    s2,a7,s1
              #                    free a7
              #                    occupy a7 with j_18_3
              #                    store to j_18_3 in mem offset legal
    sw      a7,256(sp)
              #                    release a7 with j_18_3
              #                    free s1
              #                    free s2
              #                     194  temp_53_arithop_38_0 = Mod i32 temp_52_arithop_38_0, 2_0 
              #                    occupy s2 with temp_52_arithop_38_0
              #                    occupy a7 with 2_0
    li      a7, 2
              #                    occupy s7 with temp_53_arithop_38_0
    rem     s7,s2,a7
              #                    free s2
              #                    occupy s2 with temp_52_arithop_38_0
              #                    store to temp_52_arithop_38_0 in mem offset legal
    sw      s2,56(sp)
              #                    release s2 with temp_52_arithop_38_0
              #                    free a7
              #                    free s7
              #                     196  temp_54_ptr_of_*t_0_38 = GEP *t_0:Array:i32:[None, Some(2_0)] [Some(i_18_5), Some(temp_53_arithop_38_0)] 
              #                    occupy a7 with temp_54_ptr_of_*t_0_38
    li      a7, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_18_5
    slli s2,a1,1
              #                    free a1
              #                    occupy a1 with i_18_5
              #                    store to i_18_5 in mem offset legal
    sw      a1,268(sp)
              #                    release a1 with i_18_5
    add     a7,a7,s2
              #                    free s2
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_53_arithop_38_0
    mv      a1, s7
              #                    free s7
              #                    occupy s7 with temp_53_arithop_38_0
              #                    store to temp_53_arithop_38_0 in mem offset legal
    sw      s7,52(sp)
              #                    release s7 with temp_53_arithop_38_0
    add     a7,a7,a1
              #                    free a1
    slli a7,a7,2
              #                    occupy s2 with *t_0
              #                       load label t as ptr to reg
    la      s2, t
              #                    occupy reg s2 with *t_0
    add     a7,a7,s2
              #                    free s2
              #                    free a7
              #                     198  temp_55_ele_of_*t_0_38_0 = load temp_54_ptr_of_*t_0_38:ptr->i32 
              #                    occupy a7 with temp_54_ptr_of_*t_0_38
              #                    occupy s2 with temp_55_ele_of_*t_0_38_0
    lw      s2,0(a7)
              #                    free s2
              #                    occupy s2 with temp_55_ele_of_*t_0_38_0
              #                    store to temp_55_ele_of_*t_0_38_0 in mem offset legal
    sw      s2,36(sp)
              #                    release s2 with temp_55_ele_of_*t_0_38_0
              #                    free a7
              #                     199  mu t_0_2:198 
              #                     201  temp_56_arithop_38_0 = Add i32 temp_51_ele_of_*dp_0_38_0, temp_55_ele_of_*t_0_38_0 
              #                    occupy s2 with temp_51_ele_of_*dp_0_38_0
              #                    load from temp_51_ele_of_*dp_0_38_0 in mem


    lw      s2,60(sp)
              #                    occupy s7 with temp_55_ele_of_*t_0_38_0
              #                    load from temp_55_ele_of_*t_0_38_0 in mem


    lw      s7,36(sp)
              #                    occupy s8 with temp_56_arithop_38_0
    ADDW    s8,s2,s7
              #                    free s2
              #                    occupy s2 with temp_51_ele_of_*dp_0_38_0
              #                    store to temp_51_ele_of_*dp_0_38_0 in mem offset legal
    sw      s2,60(sp)
              #                    release s2 with temp_51_ele_of_*dp_0_38_0
              #                    free s7
              #                    occupy s7 with temp_55_ele_of_*t_0_38_0
              #                    store to temp_55_ele_of_*t_0_38_0 in mem offset legal
    sw      s7,36(sp)
              #                    release s7 with temp_55_ele_of_*t_0_38_0
              #                    free s8
              #                    occupy s8 with temp_56_arithop_38_0
              #                    store to temp_56_arithop_38_0 in mem offset legal
    sw      s8,32(sp)
              #                    release s8 with temp_56_arithop_38_0
              #                     205  temp_58_ptr_of_*dp_0_38 = GEP *dp_0:Array:i32:[None, Some(35_0)] [Some(temp_49_arithop_38_0), Some(j_18_3)] 
              #                    occupy s2 with temp_58_ptr_of_*dp_0_38
    li      s2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    found literal reg Some(s5) already exist with 35_0
              #                    occupy s5 with 35_0
              #                    occupy a6 with temp_49_arithop_38_0
    mul     s7,s5,a6
              #                    free s5
              #                    free a6
              #                    occupy a6 with temp_49_arithop_38_0
              #                    store to temp_49_arithop_38_0 in mem offset legal
    sw      a6,72(sp)
              #                    release a6 with temp_49_arithop_38_0
    add     s2,s2,s7
              #                    free s7
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with j_18_3
              #                    load from j_18_3 in mem


    lw      s5,256(sp)
    mv      a6, s5
              #                    free s5
              #                    occupy s5 with j_18_3
              #                    store to j_18_3 in mem offset legal
    sw      s5,256(sp)
              #                    release s5 with j_18_3
    add     s2,s2,a6
              #                    free a6
    slli s2,s2,2
              #                    occupy a6 with *dp_0
              #                       load label dp as ptr to reg
    la      a6, dp
              #                    occupy reg a6 with *dp_0
    add     s2,s2,a6
              #                    free a6
              #                    free s2
              #                     207  temp_59_ele_of_*dp_0_38_0 = load temp_58_ptr_of_*dp_0_38:ptr->i32 
              #                    occupy s2 with temp_58_ptr_of_*dp_0_38
              #                    occupy a6 with temp_59_ele_of_*dp_0_38_0
    lw      a6,0(s2)
              #                    free a6
              #                    occupy a6 with temp_59_ele_of_*dp_0_38_0
              #                    store to temp_59_ele_of_*dp_0_38_0 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_59_ele_of_*dp_0_38_0
              #                    free s2
              #                     208  mu dp_0_5:207 
              #                     210  (nop) 
              #                     212  (nop) 
              #                     214  (nop) 
              #                     216  (nop) 
              #                     217  mu t_0_2:216 
              #                     219  temp_64_arithop_38_0 = Add i32 temp_59_ele_of_*dp_0_38_0, temp_55_ele_of_*t_0_38_0 
              #                    occupy a6 with temp_59_ele_of_*dp_0_38_0
              #                    load from temp_59_ele_of_*dp_0_38_0 in mem


    lw      a6,20(sp)
              #                    occupy s5 with temp_55_ele_of_*t_0_38_0
              #                    load from temp_55_ele_of_*t_0_38_0 in mem


    lw      s5,36(sp)
              #                    occupy s8 with temp_64_arithop_38_0
    ADDW    s8,a6,s5
              #                    free a6
              #                    occupy a6 with temp_59_ele_of_*dp_0_38_0
              #                    store to temp_59_ele_of_*dp_0_38_0 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_59_ele_of_*dp_0_38_0
              #                    free s5
              #                    occupy s5 with temp_55_ele_of_*t_0_38_0
              #                    store to temp_55_ele_of_*t_0_38_0 in mem offset legal
    sw      s5,36(sp)
              #                    release s5 with temp_55_ele_of_*t_0_38_0
              #                    free s8
              #                    occupy s8 with temp_64_arithop_38_0
              #                    store to temp_64_arithop_38_0 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_64_arithop_38_0
              #                     221  temp_65_cmp_38_0 = icmp i32 Sgt temp_64_arithop_38_0, temp_56_arithop_38_0 
              #                    occupy a6 with temp_64_arithop_38_0
              #                    load from temp_64_arithop_38_0 in mem


    lw      a6,4(sp)
              #                    occupy s5 with temp_56_arithop_38_0
              #                    load from temp_56_arithop_38_0 in mem


    lw      s5,32(sp)
              #                    occupy s8 with temp_65_cmp_38_0
    slt     s8,s5,a6
              #                    free a6
              #                    occupy a6 with temp_64_arithop_38_0
              #                    store to temp_64_arithop_38_0 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_64_arithop_38_0
              #                    free s5
              #                    occupy s5 with temp_56_arithop_38_0
              #                    store to temp_56_arithop_38_0 in mem offset legal
    sw      s5,32(sp)
              #                    release s5 with temp_56_arithop_38_0
              #                    free s8
              #                    occupy s8 with temp_65_cmp_38_0
              #                    store to temp_65_cmp_38_0 in mem offset legal
    sb      s8,3(sp)
              #                    release s8 with temp_65_cmp_38_0
              #                     224  br i1 temp_65_cmp_38_0, label branch_true_39, label branch_false_39 
              #                    occupy a6 with temp_65_cmp_38_0
              #                    load from temp_65_cmp_38_0 in mem


    lb      a6,3(sp)
              #                    free a6
              #                    occupy a6 with temp_65_cmp_38_0
              #                    store to temp_65_cmp_38_0 in mem offset legal
    sb      a6,3(sp)
              #                    release a6 with temp_65_cmp_38_0
              #                    occupy a1 with temp_65_cmp_38_0
              #                    load from temp_65_cmp_38_0 in mem


    lb      a1,3(sp)
    bnez    a1, .branch_true_39
              #                    free a1
              #                    occupy a1 with temp_65_cmp_38_0
              #                    store to temp_65_cmp_38_0 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_65_cmp_38_0
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a5:Freed { symidx: temp_47_cmp_35_0, tracked: true } |     a7:Freed { symidx: temp_54_ptr_of_*t_0_38, tracked: true } |     s2:Freed { symidx: temp_58_ptr_of_*dp_0_38, tracked: true } |     s3:Freed { symidx: temp_50_ptr_of_*dp_0_38, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     222  label branch_true_39: 
.branch_true_39:
              #                     269  untrack temp_55_ele_of_*t_0_38_0 
              #                     268  untrack temp_50_ptr_of_*dp_0_38 
              #                    occupy s3 with temp_50_ptr_of_*dp_0_38
              #                    release s3 with temp_50_ptr_of_*dp_0_38
              #                     267  untrack temp_65_cmp_38_0 
              #                     266  untrack temp_47_cmp_35_0 
              #                    occupy a5 with temp_47_cmp_35_0
              #                    release a5 with temp_47_cmp_35_0
              #                     265  untrack temp_51_ele_of_*dp_0_38_0 
              #                     264  untrack temp_53_arithop_38_0 
              #                     263  untrack temp_54_ptr_of_*t_0_38 
              #                    occupy a7 with temp_54_ptr_of_*t_0_38
              #                    release a7 with temp_54_ptr_of_*t_0_38
              #                     262  untrack temp_59_ele_of_*dp_0_38_0 
              #                     261  untrack temp_56_arithop_38_0 
              #                     260  untrack temp_48_arithop_38_0 
              #                     259  untrack temp_10_ptr_of_*dp_0_42 
              #                     258  untrack temp_58_ptr_of_*dp_0_38 
              #                    occupy s2 with temp_58_ptr_of_*dp_0_38
              #                    release s2 with temp_58_ptr_of_*dp_0_38
              #                     95   temp_21_ptr_of_*dp_0_40 = GEP *dp_0:ptr->Array:i32:[Some(35_0)] [Some(i_18_5), Some(j_18_3)] 
              #                    occupy a1 with temp_21_ptr_of_*dp_0_40
    li      a1, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with 35_0
    li      a6, 35
              #                    occupy a7 with i_18_5
              #                    load from i_18_5 in mem


    lw      a7,268(sp)
    mul     a5,a6,a7
              #                    free a6
              #                    free a7
    add     a1,a1,a5
              #                    free a5
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with j_18_3
              #                    load from j_18_3 in mem


    lw      s2,256(sp)
    mv      s1, s2
              #                    free s2
              #                    occupy s2 with j_18_3
              #                    store to j_18_3 in mem offset legal
    sw      s2,256(sp)
              #                    release s2 with j_18_3
    add     a1,a1,s1
              #                    free s1
    slli a1,a1,2
              #                    occupy s1 with *dp_0
              #                       load label dp as ptr to reg
    la      s1, dp
              #                    occupy reg s1 with *dp_0
    add     a1,a1,s1
              #                    free s1
              #                    free a1
              #                     99   (nop) 
              #                     101  (nop) 
              #                     102  mu dp_0_5:101 
              #                     104  (nop) 
              #                     106  (nop) 
              #                     108  (nop) 
              #                     110  (nop) 
              #                     111  mu t_0_2:110 
              #                     113  (nop) 
              #                     114  store temp_64_arithop_38_0:i32 temp_21_ptr_of_*dp_0_40:ptr->i32 
              #                    occupy a1 with temp_21_ptr_of_*dp_0_40
              #                    occupy s1 with temp_64_arithop_38_0
              #                    load from temp_64_arithop_38_0 in mem


    lw      s1,4(sp)
    sw      s1,0(a1)
              #                    free s1
              #                    occupy s1 with temp_64_arithop_38_0
              #                    store to temp_64_arithop_38_0 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_64_arithop_38_0
              #                    free a1
              #                     271  untrack temp_21_ptr_of_*dp_0_40 
              #                    occupy a1 with temp_21_ptr_of_*dp_0_40
              #                    release a1 with temp_21_ptr_of_*dp_0_40
              #                     270  untrack temp_64_arithop_38_0 
              #                     115  dp_0_6 = chi dp_0_5:114 
              #                          jump label: gather_11 
    j       .gather_11
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a7:Freed { symidx: i_18_5, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     225  label gather_11: 
.gather_11:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a7:Freed { symidx: i_18_5, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     92   (nop) 
              #                     93   (nop) 
              #                     248  j_18_3 = i32 temp_52_arithop_38_0 
              #                    occupy a1 with temp_52_arithop_38_0
              #                    load from temp_52_arithop_38_0 in mem


    lw      a1,56(sp)
              #                    occupy a5 with j_18_3
    mv      a5, a1
              #                    free a1
              #                    occupy a1 with temp_52_arithop_38_0
              #                    store to temp_52_arithop_38_0 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with temp_52_arithop_38_0
              #                    free a5
              #                          jump label: while.head_36 
              #                    occupy a7 with i_18_5
              #                    store to i_18_5 in mem offset legal
    sw      a7,268(sp)
              #                    release a7 with i_18_5
              #                    occupy a1 with i_18_5
              #                    load from i_18_5 in mem


    lw      a1,268(sp)
              #                    occupy a5 with j_18_3
              #                    store to j_18_3 in mem offset legal
    sw      a5,256(sp)
              #                    release a5 with j_18_3
              #                    occupy a7 with j_18_3
              #                    load from j_18_3 in mem


    lw      a7,256(sp)
              #                    occupy a6 with temp_49_arithop_38_0
              #                    load from temp_49_arithop_38_0 in mem


    lw      a6,72(sp)
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a5:Freed { symidx: temp_47_cmp_35_0, tracked: true } |     a7:Freed { symidx: temp_54_ptr_of_*t_0_38, tracked: true } |     s2:Freed { symidx: temp_58_ptr_of_*dp_0_38, tracked: true } |     s3:Freed { symidx: temp_50_ptr_of_*dp_0_38, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     223  label branch_false_39: 
.branch_false_39:
              #                     68   temp_10_ptr_of_*dp_0_42 = GEP *dp_0:ptr->Array:i32:[Some(35_0)] [Some(i_18_5), Some(j_18_3)] 
              #                    occupy a1 with temp_10_ptr_of_*dp_0_42
    li      a1, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with 35_0
    li      s1, 35
              #                    occupy s4 with i_18_5
              #                    load from i_18_5 in mem


    lw      s4,268(sp)
    mul     a6,s1,s4
              #                    free s1
              #                    free s4
              #                    occupy s4 with i_18_5
              #                    store to i_18_5 in mem offset legal
    sw      s4,268(sp)
              #                    release s4 with i_18_5
    add     a1,a1,a6
              #                    free a6
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with j_18_3
              #                    load from j_18_3 in mem


    lw      s1,256(sp)
    mv      a6, s1
              #                    free s1
              #                    occupy s1 with j_18_3
              #                    store to j_18_3 in mem offset legal
    sw      s1,256(sp)
              #                    release s1 with j_18_3
    add     a1,a1,a6
              #                    free a6
    slli a1,a1,2
              #                    occupy a6 with *dp_0
              #                       load label dp as ptr to reg
    la      a6, dp
              #                    occupy reg a6 with *dp_0
    add     a1,a1,a6
              #                    free a6
              #                    free a1
              #                    occupy a1 with temp_10_ptr_of_*dp_0_42
              #                    store to temp_10_ptr_of_*dp_0_42 in mem offset legal
    sd      a1,208(sp)
              #                    release a1 with temp_10_ptr_of_*dp_0_42
              #                     70   (nop) 
              #                     74   (nop) 
              #                     76   (nop) 
              #                     77   mu dp_0_5:76 
              #                     79   (nop) 
              #                     81   (nop) 
              #                     83   (nop) 
              #                     85   (nop) 
              #                     86   mu t_0_2:85 
              #                     88   (nop) 
              #                     89   store temp_56_arithop_38_0:i32 temp_10_ptr_of_*dp_0_42:ptr->i32 
              #                    occupy a1 with temp_10_ptr_of_*dp_0_42
              #                    load from temp_10_ptr_of_*dp_0_42 in mem
    ld      a1,208(sp)
              #                    occupy a6 with temp_56_arithop_38_0
              #                    load from temp_56_arithop_38_0 in mem


    lw      a6,32(sp)
    sw      a6,0(a1)
              #                    free a6
              #                    occupy a6 with temp_56_arithop_38_0
              #                    store to temp_56_arithop_38_0 in mem offset legal
    sw      a6,32(sp)
              #                    release a6 with temp_56_arithop_38_0
              #                    free a1
              #                    occupy a1 with temp_10_ptr_of_*dp_0_42
              #                    store to temp_10_ptr_of_*dp_0_42 in mem offset legal
    sd      a1,208(sp)
              #                    release a1 with temp_10_ptr_of_*dp_0_42
              #                     90   dp_0_8 = chi dp_0_5:89 
              #                          jump label: gather_11 
              #                    occupy s3 with temp_50_ptr_of_*dp_0_38
              #                    store to temp_50_ptr_of_*dp_0_38 in mem offset legal
    sd      s3,64(sp)
              #                    release s3 with temp_50_ptr_of_*dp_0_38
              #                    occupy s2 with temp_58_ptr_of_*dp_0_38
              #                    store to temp_58_ptr_of_*dp_0_38 in mem offset legal
    sd      s2,24(sp)
              #                    release s2 with temp_58_ptr_of_*dp_0_38
              #                    occupy a7 with temp_54_ptr_of_*t_0_38
              #                    store to temp_54_ptr_of_*t_0_38 in mem offset legal
    sd      a7,40(sp)
              #                    release a7 with temp_54_ptr_of_*t_0_38
              #                    occupy a7 with i_18_5
              #                    load from i_18_5 in mem


    lw      a7,268(sp)
              #                    occupy a5 with temp_47_cmp_35_0
              #                    store to temp_47_cmp_35_0 in mem offset legal
    sb      a5,82(sp)
              #                    release a5 with temp_47_cmp_35_0
    j       .gather_11
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: i_18_5, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a5:Freed { symidx: temp_47_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_49_arithop_38_0, tracked: true } |     a7:Freed { symidx: j_18_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     180  label while.exit_36: 
.while.exit_36:
              #                     65   temp_9_arithop_33_0 = Add i32 i_18_5, 1_0 
              #                    occupy a1 with i_18_5
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_9_arithop_33_0
    ADDW    s2,a1,s1
              #                    free a1
              #                    free s1
              #                    free s2
              #                     66   (nop) 
              #                     249  i_18_5 = i32 temp_9_arithop_33_0 
              #                    occupy s2 with temp_9_arithop_33_0
              #                    occupy a1 with i_18_5
    mv      a1, s2
              #                    free s2
              #                    free a1
              #                          jump label: while.head_32 
              #                    occupy s2 with temp_9_arithop_33_0
              #                    store to temp_9_arithop_33_0 in mem offset legal
    sw      s2,220(sp)
              #                    release s2 with temp_9_arithop_33_0
              #                    occupy a7 with j_18_3
              #                    store to j_18_3 in mem offset legal
    sw      a7,256(sp)
              #                    release a7 with j_18_3
              #                    occupy a5 with temp_47_cmp_35_0
              #                    store to temp_47_cmp_35_0 in mem offset legal
    sb      a5,82(sp)
              #                    release a5 with temp_47_cmp_35_0
              #                    occupy a4 with temp_42_cmp_31_0
              #                    store to temp_42_cmp_31_0 in mem offset legal
    sb      a4,98(sp)
              #                    release a4 with temp_42_cmp_31_0
              #                    occupy a6 with temp_49_arithop_38_0
              #                    store to temp_49_arithop_38_0 in mem offset legal
    sw      a6,72(sp)
              #                    release a6 with temp_49_arithop_38_0
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: i_18_5, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     156  label while.exit_32: 
.while.exit_32:
              #                     257  untrack i_18_5 
              #                    occupy a1 with i_18_5
              #                    release a1 with i_18_5
              #                     49   (nop) 
              #                     51   (nop) 
              #                     250  j_18_6 = i32 0_0 
              #                    occupy a1 with j_18_6
    li      a1, 0
              #                    free a1
              #                     251  res_18_1 = i32 0_0 
              #                    occupy a5 with res_18_1
    li      a5, 0
              #                    free a5
              #                          jump label: while.head_49 
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: j_18_6, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a5:Freed { symidx: res_18_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     160  label while.head_49: 
.while.head_49:
              #                     159  temp_43_cmp_48_0 = icmp i32 Sle j_18_6, temp_5_ret_of_getint_18_0 
              #                    occupy a1 with j_18_6
              #                    occupy a0 with temp_5_ret_of_getint_18_0
              #                    occupy a6 with temp_43_cmp_48_0
    slt     a6,a0,a1
    xori    a6,a6,1
              #                    free a1
              #                    free a0
              #                    free a6
              #                     163  br i1 temp_43_cmp_48_0, label while.body_49, label while.exit_49 
              #                    occupy a6 with temp_43_cmp_48_0
              #                    free a6
              #                    occupy a6 with temp_43_cmp_48_0
    bnez    a6, .while.body_49
              #                    free a6
    j       .while.exit_49
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: j_18_6, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a5:Freed { symidx: res_18_1, tracked: true } |     a6:Freed { symidx: temp_43_cmp_48_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     161  label while.body_49: 
.while.body_49:
              #                     167  temp_44_ptr_of_*dp_0_51 = GEP *dp_0:Array:i32:[None, Some(35_0)] [Some(temp_4_ret_of_getint_18_0), Some(j_18_6)] 
              #                    occupy a7 with temp_44_ptr_of_*dp_0_51
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with 35_0
    li      s2, 35
              #                    occupy a2 with temp_4_ret_of_getint_18_0
    mul     s1,s2,a2
              #                    free s2
              #                    free a2
    add     a7,a7,s1
              #                    free s1
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with j_18_6
    mv      s3, a1
              #                    free a1
    add     a7,a7,s3
              #                    free s3
    slli a7,a7,2
              #                    occupy s4 with *dp_0
              #                       load label dp as ptr to reg
    la      s4, dp
              #                    occupy reg s4 with *dp_0
    add     a7,a7,s4
              #                    free s4
              #                    free a7
              #                     169  temp_45_ele_of_*dp_0_51_0 = load temp_44_ptr_of_*dp_0_51:ptr->i32 
              #                    occupy a7 with temp_44_ptr_of_*dp_0_51
              #                    occupy s5 with temp_45_ele_of_*dp_0_51_0
    lw      s5,0(a7)
              #                    free s5
              #                    free a7
              #                     170  mu dp_0_4:169 
              #                     172  temp_46_cmp_51_0 = icmp i32 Slt res_18_1, temp_45_ele_of_*dp_0_51_0 
              #                    occupy a5 with res_18_1
              #                    occupy s5 with temp_45_ele_of_*dp_0_51_0
              #                    occupy s6 with temp_46_cmp_51_0
    slt     s6,a5,s5
              #                    free a5
              #                    free s5
              #                    free s6
              #                     175  br i1 temp_46_cmp_51_0, label branch_true_52, label UP_2_0 
              #                    occupy s6 with temp_46_cmp_51_0
              #                    free s6
              #                    occupy s6 with temp_46_cmp_51_0
    bnez    s6, .branch_true_52
              #                    free s6
    j       .UP_2_0
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: j_18_6, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a5:Freed { symidx: res_18_1, tracked: true } |     a6:Freed { symidx: temp_43_cmp_48_0, tracked: true } |     a7:Freed { symidx: temp_44_ptr_of_*dp_0_51, tracked: true } |     s5:Freed { symidx: temp_45_ele_of_*dp_0_51_0, tracked: true } |     s6:Freed { symidx: temp_46_cmp_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     173  label branch_true_52: 
.branch_true_52:
              #                     277  untrack temp_46_cmp_51_0 
              #                    occupy s6 with temp_46_cmp_51_0
              #                    release s6 with temp_46_cmp_51_0
              #                     276  untrack temp_43_cmp_48_0 
              #                    occupy a6 with temp_43_cmp_48_0
              #                    release a6 with temp_43_cmp_48_0
              #                     275  untrack temp_44_ptr_of_*dp_0_51 
              #                    occupy a7 with temp_44_ptr_of_*dp_0_51
              #                    release a7 with temp_44_ptr_of_*dp_0_51
              #                     58   (nop) 
              #                     60   (nop) 
              #                     61   mu dp_0_4:60 
              #                     62   (nop) 
              #                     252  res_18_3 = i32 temp_45_ele_of_*dp_0_51_0 
              #                    occupy s5 with temp_45_ele_of_*dp_0_51_0
              #                    occupy a6 with res_18_3
    mv      a6, s5
              #                    free s5
              #                    free a6
              #                     278  untrack temp_45_ele_of_*dp_0_51_0 
              #                    occupy s5 with temp_45_ele_of_*dp_0_51_0
              #                    release s5 with temp_45_ele_of_*dp_0_51_0
              #                          jump label: branch_false_52 
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: j_18_6, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a5:Freed { symidx: res_18_1, tracked: true } |     a6:Freed { symidx: res_18_3, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     174  label branch_false_52: 
.branch_false_52:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: j_18_6, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a5:Freed { symidx: res_18_1, tracked: true } |     a6:Freed { symidx: res_18_3, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     55   temp_6_arithop_50_0 = Add i32 j_18_6, 1_0 
              #                    occupy a1 with j_18_6
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_6_arithop_50_0
    ADDW    s1,a1,a7
              #                    free a1
              #                    free a7
              #                    free s1
              #                     56   (nop) 
              #                     253  j_18_6 = i32 temp_6_arithop_50_0 
              #                    occupy s1 with temp_6_arithop_50_0
              #                    occupy a1 with j_18_6
    mv      a1, s1
              #                    free s1
              #                    free a1
              #                     254  res_18_1 = i32 res_18_3 
              #                    occupy a6 with res_18_3
              #                    occupy a5 with res_18_1
    mv      a5, a6
              #                    free a6
              #                    free a5
              #                          jump label: while.head_49 
              #                    occupy s1 with temp_6_arithop_50_0
              #                    store to temp_6_arithop_50_0 in mem offset legal
    sw      s1,232(sp)
              #                    release s1 with temp_6_arithop_50_0
              #                    occupy a6 with res_18_3
              #                    store to res_18_3 in mem offset legal
    sw      a6,236(sp)
              #                    release a6 with res_18_3
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: j_18_6, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a5:Freed { symidx: res_18_1, tracked: true } |     a6:Freed { symidx: temp_43_cmp_48_0, tracked: true } |     a7:Freed { symidx: temp_44_ptr_of_*dp_0_51, tracked: true } |     s5:Freed { symidx: temp_45_ele_of_*dp_0_51_0, tracked: true } |     s6:Freed { symidx: temp_46_cmp_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     243  label UP_2_0: 
.UP_2_0:
              #                     255  res_18_3 = i32 res_18_1 
              #                    occupy a5 with res_18_1
              #                    occupy s1 with res_18_3
    mv      s1, a5
              #                    free a5
              #                    occupy a5 with res_18_1
              #                    store to res_18_1 in mem offset legal
    sw      a5,240(sp)
              #                    release a5 with res_18_1
              #                    free s1
              #                          jump label: branch_false_52 
              #                    occupy s5 with temp_45_ele_of_*dp_0_51_0
              #                    store to temp_45_ele_of_*dp_0_51_0 in mem offset legal
    sw      s5,84(sp)
              #                    release s5 with temp_45_ele_of_*dp_0_51_0
              #                    occupy a7 with temp_44_ptr_of_*dp_0_51
              #                    store to temp_44_ptr_of_*dp_0_51 in mem offset legal
    sd      a7,88(sp)
              #                    release a7 with temp_44_ptr_of_*dp_0_51
              #                    occupy a5 with res_18_1
              #                    load from res_18_1 in mem


    lw      a5,240(sp)
              #                    occupy s6 with temp_46_cmp_51_0
              #                    store to temp_46_cmp_51_0 in mem offset legal
    sb      s6,83(sp)
              #                    release s6 with temp_46_cmp_51_0
              #                    occupy s1 with res_18_3
              #                    store to res_18_3 in mem offset legal
    sw      s1,236(sp)
              #                    release s1 with res_18_3
              #                    occupy a6 with temp_43_cmp_48_0
              #                    store to temp_43_cmp_48_0 in mem offset legal
    sb      a6,97(sp)
              #                    release a6 with temp_43_cmp_48_0
              #                    occupy a6 with res_18_3
              #                    load from res_18_3 in mem


    lw      a6,236(sp)
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18_0, tracked: true } |     a1:Freed { symidx: j_18_6, tracked: true } |     a2:Freed { symidx: temp_4_ret_of_getint_18_0, tracked: true } |     a3:Freed { symidx: temp_41_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_42_cmp_31_0, tracked: true } |     a5:Freed { symidx: res_18_1, tracked: true } |     a6:Freed { symidx: temp_43_cmp_48_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     162  label while.exit_49: 
.while.exit_49:
              #                     274  untrack temp_5_ret_of_getint_18_0 
              #                    occupy a0 with temp_5_ret_of_getint_18_0
              #                    release a0 with temp_5_ret_of_getint_18_0
              #                     273  untrack temp_4_ret_of_getint_18_0 
              #                    occupy a2 with temp_4_ret_of_getint_18_0
              #                    release a2 with temp_4_ret_of_getint_18_0
              #                     272  untrack j_18_6 
              #                    occupy a1 with j_18_6
              #                    release a1 with j_18_6
              #                     228  mu dp_0_4:53 
              #                     229  mu t_0_2:53 
              #                     53   ret res_18_1 
              #                    load from ra_main_0 in mem
    ld      ra,304(sp)
              #                    load from s0_main_0 in mem
    ld      s0,296(sp)
              #                    occupy a5 with res_18_1
              #                    store to res_18_1 in mem offset legal
    sw      a5,240(sp)
              #                    release a5 with res_18_1
              #                    occupy a0 with res_18_1
              #                    load from res_18_1 in mem


    lw      a0,240(sp)
    addi    sp,sp,312
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl dp
              #                     28   global Array:i32:[Some(1005_0), Some(35_0)] dp_0 
    .type dp,@object
dp:
    .word 0
    .zero 140700
    .align 4
    .globl t
              #                     21   global Array:i32:[Some(1005_0), Some(2_0)] t_0 
    .type t,@object
t:
    .word 0
    .zero 8040
