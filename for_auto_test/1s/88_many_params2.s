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
              #                     19   Define func_0 "a_16_0,b_16,c_16_0,d_16,e_16_0,f_16_0,g_16,h_16_0,i_16_0," -> func_ret_0 
    .globl func
    .type func,@function
func:
              #                    mem layout:|i _s16 _i0:4 at 188|i _s16 _i1:4 at 184|ra_func:8 at 176|s0_func:8 at 168|a _s16 _i0:4 at 164|none:4 at 160|b:8 at 152|b:8 at 144|c _s16 _i0:4 at 140|none:4 at 136|d:8 at 128|d:8 at 120|e _s16 _i0:4 at 116|f _s16 _i0:4 at 112|g:8 at 104|g:8 at 96|g:8 at 88|g:8 at 80|h _s16 _i0:4 at 76|h _s16 _i1:4 at 72|index _s18 _i1:4 at 68|none:4 at 64|temp_0_ptr_of_d_16:8 at 56|temp_1_ele_of_d_16 _s18 _i0:4 at 52|temp_2_arithop _s18 _i0:4 at 48|temp_3_ptr_of_g_16:8 at 40|temp_4_arithop _s30 _i0:4 at 36|temp_5_arithop _s30 _i0:4 at 32|temp_6_arithop _s30 _i0:4 at 28|temp_7_arithop _s30 _i0:4 at 24|temp_8_ptr_of_b_16:8 at 16|temp_9_ele_of_b_16 _s22 _i0:4 at 12|temp_10_arithop _s22 _i0:4 at 8|temp_11_cmp _s20 _i0:1 at 7|temp_12_cmp _s28 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-192
              #                    store to ra_func_0 in mem offset legal
    sd      ra,176(sp)
              #                    store to s0_func_0 in mem offset legal
    sd      s0,168(sp)
    addi    s0,sp,192
              #                     22   alloc i32 [index_18] 
              #                     24   alloc ptr->i32 [temp_0_ptr_of_d_16_18] 
              #                     26   alloc i32 [temp_1_ele_of_d_16_18] 
              #                     32   alloc i32 [temp_2_arithop_18] 
              #                     35   alloc ptr->i32 [temp_3_ptr_of_g_16_30] 
              #                     37   alloc i32 [temp_4_arithop_30] 
              #                     39   alloc i32 [temp_5_arithop_30] 
              #                     43   alloc i32 [temp_6_arithop_30] 
              #                     46   alloc i32 [temp_7_arithop_30] 
              #                     49   alloc ptr->i32 [temp_8_ptr_of_b_16_22] 
              #                     51   alloc i32 [temp_9_ele_of_b_16_22] 
              #                     55   alloc i32 [temp_10_arithop_22] 
              #                     58   alloc i1 [temp_11_cmp_20] 
              #                     64   alloc i1 [temp_12_cmp_28] 
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: c_16_0, tracked: true } |     a3:Freed { symidx: d_16, tracked: true } |     a4:Freed { symidx: e_16_0, tracked: true } |     a5:Freed { symidx: f_16_0, tracked: true } |     a6:Freed { symidx: g_16, tracked: true } |     a7:Freed { symidx: h_16_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     16    
              #                     17    
              #                     18    
              #                     21   (nop) 
              #                     196  index_18_1 = i32 0_0 
              #                    occupy s1 with index_18_1
    li      s1, 0
              #                    free s1
              #                          jump label: while.head_21 
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: c_16_0, tracked: true } |     a3:Freed { symidx: d_16, tracked: true } |     a4:Freed { symidx: e_16_0, tracked: true } |     a5:Freed { symidx: f_16_0, tracked: true } |     a6:Freed { symidx: g_16, tracked: true } |     a7:Freed { symidx: h_16_0, tracked: true } |     s1:Freed { symidx: index_18_1, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     60   label while.head_21: 
.while.head_21:
              #                     59   temp_11_cmp_20_0 = icmp i32 Slt index_18_1, 10_0 
              #                    occupy s1 with index_18_1
              #                    occupy s2 with 10_0
    li      s2, 10
              #                    occupy s3 with temp_11_cmp_20_0
    slt     s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                     63   br i1 temp_11_cmp_20_0, label while.body_21, label while.exit_21 
              #                    occupy s3 with temp_11_cmp_20_0
              #                    free s3
              #                    occupy s3 with temp_11_cmp_20_0
    bnez    s3, .while.body_21
              #                    free s3
    j       .while.exit_21
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: c_16_0, tracked: true } |     a3:Freed { symidx: d_16, tracked: true } |     a4:Freed { symidx: e_16_0, tracked: true } |     a5:Freed { symidx: f_16_0, tracked: true } |     a6:Freed { symidx: g_16, tracked: true } |     a7:Freed { symidx: h_16_0, tracked: true } |     s1:Freed { symidx: index_18_1, tracked: true } |     s3:Freed { symidx: temp_11_cmp_20_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     61   label while.body_21: 
.while.body_21:
              #                     50   temp_8_ptr_of_b_16_22 = GEP b_16:Array:i32:[None, Some(59_0)] [Some(a_16_0), Some(index_18_1)] 
              #                    occupy s2 with temp_8_ptr_of_b_16_22
    li      s2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with 59_0
    li      s5, 59
              #                    occupy a0 with a_16_0
    mul     s4,s5,a0
              #                    free s5
              #                    free a0
    add     s2,s2,s4
              #                    free s4
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with index_18_1
    mv      s6, s1
              #                    free s1
              #                    occupy s1 with index_18_1
              #                    store to index_18_1 in mem offset legal
    sw      s1,68(sp)
              #                    release s1 with index_18_1
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
              #                    occupy a1 with b_16
    add     s2,s2,a1
              #                    free a1
              #                    free s2
              #                     52   temp_9_ele_of_b_16_22_0 = load temp_8_ptr_of_b_16_22:ptr->i32 
              #                    occupy s2 with temp_8_ptr_of_b_16_22
              #                    occupy s1 with temp_9_ele_of_b_16_22_0
    lw      s1,0(s2)
              #                    free s1
              #                    occupy s1 with temp_9_ele_of_b_16_22_0
              #                    store to temp_9_ele_of_b_16_22_0 in mem offset legal
    sw      s1,12(sp)
              #                    release s1 with temp_9_ele_of_b_16_22_0
              #                    free s2
              #                     53   mu b_16:52 
              #                     54    Call void putint_0(temp_9_ele_of_b_16_22_0) 
              #                    saved register dumping to mem
              #                    occupy s2 with temp_8_ptr_of_b_16_22
              #                    store to temp_8_ptr_of_b_16_22 in mem offset legal
    sd      s2,16(sp)
              #                    release s2 with temp_8_ptr_of_b_16_22
              #                    occupy s3 with temp_11_cmp_20_0
              #                    store to temp_11_cmp_20_0 in mem offset legal
    sb      s3,7(sp)
              #                    release s3 with temp_11_cmp_20_0
              #                    occupy a0 with a_16_0
              #                    store to a_16_0 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with a_16_0
              #                    occupy a1 with b_16
              #                    store to b_16 in mem offset legal
    sd      a1,144(sp)
              #                    release a1 with b_16
              #                    occupy a2 with c_16_0
              #                    store to c_16_0 in mem offset legal
    sw      a2,140(sp)
              #                    release a2 with c_16_0
              #                    occupy a3 with d_16
              #                    store to d_16 in mem offset legal
    sd      a3,120(sp)
              #                    release a3 with d_16
              #                    occupy a4 with e_16_0
              #                    store to e_16_0 in mem offset legal
    sw      a4,116(sp)
              #                    release a4 with e_16_0
              #                    occupy a5 with f_16_0
              #                    store to f_16_0 in mem offset legal
    sw      a5,112(sp)
              #                    release a5 with f_16_0
              #                    occupy a6 with g_16
              #                    store to g_16 in mem offset legal
    sd      a6,80(sp)
              #                    release a6 with g_16
              #                    occupy a7 with h_16_0
              #                    store to h_16_0 in mem offset legal
    sw      a7,76(sp)
              #                    release a7 with h_16_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_9_ele_of_b_16_22_0_0
              #                    load from temp_9_ele_of_b_16_22_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     56   temp_10_arithop_22_0 = Add i32 index_18_1, 1_0 
              #                    occupy a0 with index_18_1
              #                    load from index_18_1 in mem


    lw      a0,68(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_10_arithop_22_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     57   (nop) 
              #                     197  index_18_1 = i32 temp_10_arithop_22_0 
              #                    occupy a2 with temp_10_arithop_22_0
              #                    occupy a0 with index_18_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_21 
              #                    occupy a0 with index_18_1
              #                    store to index_18_1 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with index_18_1
              #                    occupy a0 with a_16_0
              #                    load from a_16_0 in mem


    lw      a0,164(sp)
              #                    occupy a2 with temp_10_arithop_22_0
              #                    store to temp_10_arithop_22_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_10_arithop_22_0
              #                    occupy a2 with c_16_0
              #                    load from c_16_0 in mem


    lw      a2,140(sp)
              #                    occupy a3 with d_16
              #                    load from d_16 in mem
    ld      a3,120(sp)
              #                    occupy a1 with b_16
              #                    load from b_16 in mem
    ld      a1,144(sp)
              #                    occupy a6 with g_16
              #                    load from g_16 in mem
    ld      a6,80(sp)
              #                    occupy a5 with f_16_0
              #                    load from f_16_0 in mem


    lw      a5,112(sp)
              #                    occupy a4 with e_16_0
              #                    load from e_16_0 in mem


    lw      a4,116(sp)
              #                    occupy s1 with index_18_1
              #                    load from index_18_1 in mem


    lw      s1,68(sp)
              #                    occupy a7 with h_16_0
              #                    load from h_16_0 in mem


    lw      a7,76(sp)
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: c_16_0, tracked: true } |     a3:Freed { symidx: d_16, tracked: true } |     a4:Freed { symidx: e_16_0, tracked: true } |     a5:Freed { symidx: f_16_0, tracked: true } |     a6:Freed { symidx: g_16, tracked: true } |     a7:Freed { symidx: h_16_0, tracked: true } |     s1:Freed { symidx: index_18_1, tracked: true } |     s3:Freed { symidx: temp_11_cmp_20_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     62   label while.exit_21: 
.while.exit_21:
              #                     206  untrack b_16 
              #                    occupy a1 with b_16
              #                    release a1 with b_16
              #                     205  untrack a_16_0 
              #                    occupy a0 with a_16_0
              #                    release a0 with a_16_0
              #                     204  untrack index_18_1 
              #                    occupy s1 with index_18_1
              #                    release s1 with index_18_1
              #                     23    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy s3 with temp_11_cmp_20_0
              #                    store to temp_11_cmp_20_0 in mem offset legal
    sb      s3,7(sp)
              #                    release s3 with temp_11_cmp_20_0
              #                    occupy a2 with c_16_0
              #                    store to c_16_0 in mem offset legal
    sw      a2,140(sp)
              #                    release a2 with c_16_0
              #                    occupy a3 with d_16
              #                    store to d_16 in mem offset legal
    sd      a3,120(sp)
              #                    release a3 with d_16
              #                    occupy a4 with e_16_0
              #                    store to e_16_0 in mem offset legal
    sw      a4,116(sp)
              #                    release a4 with e_16_0
              #                    occupy a5 with f_16_0
              #                    store to f_16_0 in mem offset legal
    sw      a5,112(sp)
              #                    release a5 with f_16_0
              #                    occupy a6 with g_16
              #                    store to g_16 in mem offset legal
    sd      a6,80(sp)
              #                    release a6 with g_16
              #                    occupy a7 with h_16_0
              #                    store to h_16_0 in mem offset legal
    sw      a7,76(sp)
              #                    release a7 with h_16_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     25   temp_0_ptr_of_d_16_18 = GEP d_16:Array:i32:[None] [Some(c_16_0)] 
              #                    occupy a0 with temp_0_ptr_of_d_16_18
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with c_16_0
              #                    load from c_16_0 in mem


    lw      a2,140(sp)
    mv      a1, a2
              #                    free a2
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a3 with d_16
              #                    load from d_16 in mem
    ld      a3,120(sp)
    add     a0,a0,a3
              #                    free a3
              #                    free a0
              #                     208  untrack c_16_0 
              #                    occupy a2 with c_16_0
              #                    release a2 with c_16_0
              #                     27   temp_1_ele_of_d_16_18_0 = load temp_0_ptr_of_d_16_18:ptr->i32 
              #                    occupy a0 with temp_0_ptr_of_d_16_18
              #                    occupy a2 with temp_1_ele_of_d_16_18_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     212  untrack temp_0_ptr_of_d_16_18 
              #                    occupy a0 with temp_0_ptr_of_d_16_18
              #                    release a0 with temp_0_ptr_of_d_16_18
              #                     28   mu d_16:27 
              #                     207  untrack d_16 
              #                    occupy a3 with d_16
              #                    release a3 with d_16
              #                     29    Call void putint_0(temp_1_ele_of_d_16_18_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_1_ele_of_d_16_18_0
              #                    store to temp_1_ele_of_d_16_18_0 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_1_ele_of_d_16_18_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_1_ele_of_d_16_18_0_0
              #                    load from temp_1_ele_of_d_16_18_0 in mem


    lw      a0,52(sp)
              #                    arg load ended


    call    putint
              #                     211  untrack temp_1_ele_of_d_16_18_0 
              #                     30    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     198  i_16_1 = i32 i_16_0 
              #                    occupy a0 with i_16_0
              #                    load from i_16_0 in mem


    lw      a0,188(sp)
              #                    occupy a1 with i_16_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     209  untrack i_16_0 
              #                    occupy a0 with i_16_0
              #                    release a0 with i_16_0
              #                     199  h_16_1 = i32 h_16_0 
              #                    occupy a0 with h_16_0
              #                    load from h_16_0 in mem


    lw      a0,76(sp)
              #                    occupy a2 with h_16_1
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                     210  untrack h_16_0 
              #                    occupy a0 with h_16_0
              #                    release a0 with h_16_0
              #                          jump label: while.head_29 
    j       .while.head_29
              #                    regtab     a1:Freed { symidx: i_16_1, tracked: true } |     a2:Freed { symidx: h_16_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     66   label while.head_29: 
.while.head_29:
              #                     65   temp_12_cmp_28_0 = icmp i32 Slt i_16_1, 10_0 
              #                    occupy a1 with i_16_1
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    occupy a3 with temp_12_cmp_28_0
    slt     a3,a1,a0
              #                    free a1
              #                    free a0
              #                    free a3
              #                     69   br i1 temp_12_cmp_28_0, label while.body_29, label while.exit_29 
              #                    occupy a3 with temp_12_cmp_28_0
              #                    free a3
              #                    occupy a3 with temp_12_cmp_28_0
    bnez    a3, .while.body_29
              #                    free a3
    j       .while.exit_29
              #                    regtab     a1:Freed { symidx: i_16_1, tracked: true } |     a2:Freed { symidx: h_16_1, tracked: true } |     a3:Freed { symidx: temp_12_cmp_28_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     67   label while.body_29: 
.while.body_29:
              #                     36   temp_3_ptr_of_g_16_30 = GEP g_16:ptr->i32 [Some(i_16_1)] 
              #                    occupy a0 with temp_3_ptr_of_g_16_30
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_16_1
    mv      a4, a1
              #                    free a1
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
              #                    occupy a5 with g_16
              #                    load from g_16 in mem
    ld      a5,80(sp)
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     38   temp_4_arithop_30_0 = Mul i32 h_16_1, 128875_0 
              #                    occupy a6 with temp_4_arithop_30_0
              #                    occupy a2 with h_16_1
              #                    occupy a7 with 128875_0
    li      a7, 128875
    mulw    a6,a2,a7
              #                    free a2
              #                    free a7
              #                    free a6
              #                     40   temp_5_arithop_30_0 = Mod i32 temp_4_arithop_30_0, 3724_0 
              #                    occupy a6 with temp_4_arithop_30_0
              #                    occupy s1 with 3724_0
    li      s1, 3724
              #                    occupy s2 with temp_5_arithop_30_0
    rem     s2,a6,s1
              #                    free a6
              #                    free s1
              #                    free s2
              #                     41   store temp_5_arithop_30_0:i32 temp_3_ptr_of_g_16_30:ptr->i32 
              #                    occupy a0 with temp_3_ptr_of_g_16_30
              #                    occupy s2 with temp_5_arithop_30_0
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     42   g_16 = chi g_16:41 
              #                     44   temp_6_arithop_30_0 = Add i32 i_16_1, 1_0 
              #                    occupy a1 with i_16_1
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_6_arithop_30_0
    ADDW    s4,a1,s3
              #                    free a1
              #                    free s3
              #                    free s4
              #                     45   (nop) 
              #                     47   temp_7_arithop_30_0 = Add i32 h_16_1, 7_0 
              #                    occupy a2 with h_16_1
              #                    occupy s5 with 7_0
    li      s5, 7
              #                    occupy s6 with temp_7_arithop_30_0
    ADDW    s6,a2,s5
              #                    free a2
              #                    occupy a2 with h_16_1
              #                    store to h_16_1 in mem offset legal
    sw      a2,72(sp)
              #                    release a2 with h_16_1
              #                    free s5
              #                    free s6
              #                     48   (nop) 
              #                     200  i_16_1 = i32 temp_6_arithop_30_0 
              #                    occupy s4 with temp_6_arithop_30_0
              #                    occupy a1 with i_16_1
    mv      a1, s4
              #                    free s4
              #                    free a1
              #                     201  h_16_1 = i32 temp_7_arithop_30_0 
              #                    occupy s6 with temp_7_arithop_30_0
              #                    occupy a2 with h_16_1
    mv      a2, s6
              #                    free s6
              #                    occupy s6 with temp_7_arithop_30_0
              #                    store to temp_7_arithop_30_0 in mem offset legal
    sw      s6,24(sp)
              #                    release s6 with temp_7_arithop_30_0
              #                    free a2
              #                          jump label: while.head_29 
              #                    occupy a0 with temp_3_ptr_of_g_16_30
              #                    store to temp_3_ptr_of_g_16_30 in mem offset legal
    sd      a0,40(sp)
              #                    release a0 with temp_3_ptr_of_g_16_30
              #                    occupy a3 with temp_12_cmp_28_0
              #                    store to temp_12_cmp_28_0 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_12_cmp_28_0
              #                    occupy s4 with temp_6_arithop_30_0
              #                    store to temp_6_arithop_30_0 in mem offset legal
    sw      s4,28(sp)
              #                    release s4 with temp_6_arithop_30_0
              #                    occupy a6 with temp_4_arithop_30_0
              #                    store to temp_4_arithop_30_0 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with temp_4_arithop_30_0
              #                    occupy a5 with g_16
              #                    store to g_16 in mem offset legal
    sd      a5,80(sp)
              #                    release a5 with g_16
              #                    occupy s2 with temp_5_arithop_30_0
              #                    store to temp_5_arithop_30_0 in mem offset legal
    sw      s2,32(sp)
              #                    release s2 with temp_5_arithop_30_0
    j       .while.head_29
              #                    regtab     a1:Freed { symidx: i_16_1, tracked: true } |     a2:Freed { symidx: h_16_1, tracked: true } |     a3:Freed { symidx: temp_12_cmp_28_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     68   label while.exit_29: 
.while.exit_29:
              #                     214  untrack i_16_1 
              #                    occupy a1 with i_16_1
              #                    release a1 with i_16_1
              #                     213  untrack h_16_1 
              #                    occupy a2 with h_16_1
              #                    release a2 with h_16_1
              #                     33   temp_2_arithop_18_0 = Add i32 e_16_0, f_16_0 
              #                    occupy a0 with e_16_0
              #                    load from e_16_0 in mem


    lw      a0,116(sp)
              #                    occupy a1 with f_16_0
              #                    load from f_16_0 in mem


    lw      a1,112(sp)
              #                    occupy a2 with temp_2_arithop_18_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     216  untrack e_16_0 
              #                    occupy a0 with e_16_0
              #                    release a0 with e_16_0
              #                     215  untrack f_16_0 
              #                    occupy a1 with f_16_0
              #                    release a1 with f_16_0
              #                     182  mu g_16:34 
              #                     217  untrack g_16 
              #                     34   ret temp_2_arithop_18_0 
              #                    load from ra_func_0 in mem
    ld      ra,176(sp)
              #                    load from s0_func_0 in mem
    ld      s0,168(sp)
              #                    occupy a2 with temp_2_arithop_18_0
              #                    store to temp_2_arithop_18_0 in mem offset legal
    sw      a2,48(sp)
              #                    release a2 with temp_2_arithop_18_0
              #                    occupy a0 with temp_2_arithop_18_0
              #                    load from temp_2_arithop_18_0 in mem


    lw      a0,48(sp)
    addi    sp,sp,192
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     20   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 29120|s0_main:8 at 29112|temp_13_array_init_ptr:8 at 29104|a:16348 at 12756|none:4 at 12752|temp_14_array_init_ptr:8 at 12744|b:12508 at 236|none:4 at 232|temp_15_ptr_of_a_36:8 at 224|temp_16_ptr_of_a_36:8 at 216|temp_17_ptr_of_a_36:8 at 208|temp_18_ptr_of_a_36:8 at 200|temp_19_ptr_of_a_36:8 at 192|temp_20_ptr_of_b_36:8 at 184|temp_21_ptr_of_b_36:8 at 176|temp_22_ptr_of_b_36:8 at 168|temp_23_ptr_of_b_36:8 at 160|ret _s36 _i0:4 at 156|ret _s36 _i2:4 at 152|temp_24_ptr_of_a_36:8 at 144|temp_25_ele_of_a_36 _s36 _i0:4 at 140|none:4 at 136|temp_26_ele_ptr_of_b_36:8 at 128|temp_27_ptr_of_a_36:8 at 120|temp_28_ele_of_a_36 _s36 _i0:4 at 116|none:4 at 112|temp_29_ptr_of_a_36:8 at 104|temp_30_ptr_of_b_36:8 at 96|temp_31_ele_of_b_36 _s36 _i0:4 at 92|none:4 at 88|temp_32_ptr_of_b_36:8 at 80|temp_33_ele_of_b_36 _s36 _i0:4 at 76|none:4 at 72|temp_34_ptr_of_b_36:8 at 64|temp_35_ptr_of_b_36:8 at 56|temp_36_ele_of_b_36 _s36 _i0:4 at 52|none:4 at 48|temp_37_ptr_of_b_36:8 at 40|temp_38_ele_of_b_36 _s36 _i0:4 at 36|temp_39_ret_of_func _s36 _i0:4 at 32|temp_40_arithop _s36 _i0:4 at 28|none:4 at 24|temp_41_ptr_of_b_36:8 at 16|temp_42_ele_of_b_36 _s52 _i0:4 at 12|temp_43_arithop _s52 _i0:4 at 8|temp_44_cmp _s50 _i0:1 at 7|none:7 at 0
              #                    occupy a0 with -29128_0
    li      a0, -29128
    li      a0, -29128
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with _anonymous_of_29120_0_0
    li      a1, 29120
    li      a1, 29120
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with _anonymous_of_29112_0_0
    li      a2, 29112
    li      a2, 29112
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 29128_0
    li      a3, 29128
    li      a3, 29128
    add     s0,a3,sp
              #                    free a3
              #                     73   alloc ptr->i32 [temp_13_array_init_ptr_36] 
              #                     76   alloc Array:i32:[Some(61_0), Some(67_0)] [a_36] 
              #                     78   alloc ptr->i32 [temp_14_array_init_ptr_36] 
              #                     81   alloc Array:i32:[Some(53_0), Some(59_0)] [b_36] 
              #                     82   alloc ptr->i32 [temp_15_ptr_of_a_36_36] 
              #                     86   alloc ptr->i32 [temp_16_ptr_of_a_36_36] 
              #                     90   alloc ptr->i32 [temp_17_ptr_of_a_36_36] 
              #                     94   alloc ptr->i32 [temp_18_ptr_of_a_36_36] 
              #                     98   alloc ptr->i32 [temp_19_ptr_of_a_36_36] 
              #                     102  alloc ptr->i32 [temp_20_ptr_of_b_36_36] 
              #                     106  alloc ptr->i32 [temp_21_ptr_of_b_36_36] 
              #                     110  alloc ptr->i32 [temp_22_ptr_of_b_36_36] 
              #                     114  alloc ptr->i32 [temp_23_ptr_of_b_36_36] 
              #                     118  alloc i32 [ret_36] 
              #                     120  alloc ptr->i32 [temp_24_ptr_of_a_36_36] 
              #                     122  alloc i32 [temp_25_ele_of_a_36_36] 
              #                     125  alloc ptr->Array:i32:[Some(59_0)] [temp_26_ele_ptr_of_b_36_36] 
              #                     127  alloc ptr->i32 [temp_27_ptr_of_a_36_36] 
              #                     129  alloc i32 [temp_28_ele_of_a_36_36] 
              #                     132  alloc ptr->i32 [temp_29_ptr_of_a_36_36] 
              #                     134  alloc ptr->i32 [temp_30_ptr_of_b_36_36] 
              #                     136  alloc i32 [temp_31_ele_of_b_36_36] 
              #                     139  alloc ptr->i32 [temp_32_ptr_of_b_36_36] 
              #                     141  alloc i32 [temp_33_ele_of_b_36_36] 
              #                     144  alloc ptr->i32 [temp_34_ptr_of_b_36_36] 
              #                     146  alloc ptr->i32 [temp_35_ptr_of_b_36_36] 
              #                     148  alloc i32 [temp_36_ele_of_b_36_36] 
              #                     151  alloc ptr->i32 [temp_37_ptr_of_b_36_36] 
              #                     153  alloc i32 [temp_38_ele_of_b_36_36] 
              #                     156  alloc i32 [temp_39_ret_of_func_36] 
              #                     158  alloc i32 [temp_40_arithop_36] 
              #                     164  alloc ptr->i32 [temp_41_ptr_of_b_36_52] 
              #                     166  alloc i32 [temp_42_ele_of_b_36_52] 
              #                     171  alloc i32 [temp_43_arithop_52] 
              #                     174  alloc i1 [temp_44_cmp_50] 
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     72    
              #                     74   temp_13_array_init_ptr_36 = GEP a_36_0:Array:i32:[Some(61_0), Some(67_0)] [] 
              #                    occupy a0 with temp_13_array_init_ptr_36
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 12756_0
    li      a1, 12756
    li      a1, 12756
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                     75    Call void memset_0(temp_13_array_init_ptr_36, 0_0, 16348_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_13_array_init_ptr_36
              #                    store to temp_13_array_init_ptr_36 in mem offset_illegal
              #                    occupy a2 with _anonymous_of_29104_0_0
    li      a2, 29104
    li      a2, 29104
    add     a2,sp,a2
    sd      a0,0(a2)
              #                    free a2
              #                    release a0 with temp_13_array_init_ptr_36
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_13_array_init_ptr_36_0
              #                    load from temp_13_array_init_ptr_36 in mem
              #                    occupy a1 with _anonymous_of_29104_0_0
    li      a1, 29104
    add     a1,sp,a1
    ld      a0,0(a1)
              #                    free a1
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_16348_0_0
    li      a2, 16348
              #                    arg load ended


    call    memset
              #                     241  untrack temp_13_array_init_ptr_36 
              #                     183  mu a_36_0:75 
              #                     184  a_36_1 = chi a_36_0:75 
              #                     77    
              #                     79   temp_14_array_init_ptr_36 = GEP b_36_0:Array:i32:[Some(53_0), Some(59_0)] [] 
              #                    occupy a0 with temp_14_array_init_ptr_36
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,236
              #                    free a0
              #                     80    Call void memset_0(temp_14_array_init_ptr_36, 0_0, 12508_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_14_array_init_ptr_36
              #                    store to temp_14_array_init_ptr_36 in mem offset_illegal
              #                    occupy a1 with _anonymous_of_12744_0_0
    li      a1, 12744
    li      a1, 12744
    add     a1,sp,a1
    sd      a0,0(a1)
              #                    free a1
              #                    release a0 with temp_14_array_init_ptr_36
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_14_array_init_ptr_36_0
              #                    load from temp_14_array_init_ptr_36 in mem
              #                    occupy a1 with _anonymous_of_12744_0_0
    li      a1, 12744
    add     a1,sp,a1
    ld      a0,0(a1)
              #                    free a1
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_12508_0_0
    li      a2, 12508
              #                    arg load ended


    call    memset
              #                     219  untrack temp_14_array_init_ptr_36 
              #                     185  mu b_36_0:80 
              #                     186  b_36_1 = chi b_36_0:80 
              #                     83   temp_15_ptr_of_a_36_36 = GEP a_36_1:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0), Some(1_0)] 
              #                    occupy a0 with temp_15_ptr_of_a_36_36
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 1139
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a3 with 12756_0
    li      a3, 12756
    li      a3, 12756
    add     a0,a3,a0
              #                    free a3
              #                    free a0
              #                     84   store 6_0:i32 temp_15_ptr_of_a_36_36:ptr->i32 
              #                    occupy a0 with temp_15_ptr_of_a_36_36
              #                    occupy a4 with 6_0
    li      a4, 6
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     85   a_36_2 = chi a_36_1:84 
              #                     87   temp_16_ptr_of_a_36_36 = GEP a_36_2:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0), Some(3_0)] 
              #                    occupy a5 with temp_16_ptr_of_a_36_36
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 1139
    add     a5,a5,a6
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 3
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
              #                    found literal reg Some(a3) already exist with 12756_0
              #                    occupy a3 with 12756_0
    li      a3, 12756
    add     a5,a3,a5
              #                    free a3
              #                    free a5
              #                     88   store 7_0:i32 temp_16_ptr_of_a_36_36:ptr->i32 
              #                    occupy a5 with temp_16_ptr_of_a_36_36
              #                    occupy s1 with 7_0
    li      s1, 7
    sw      s1,0(a5)
              #                    free s1
              #                    free a5
              #                     89   a_36_3 = chi a_36_2:88 
              #                     91   temp_17_ptr_of_a_36_36 = GEP a_36_3:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0), Some(4_0)] 
              #                    occupy s2 with temp_17_ptr_of_a_36_36
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 1139
    add     s2,s2,s3
              #                    free s3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 4
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
              #                    found literal reg Some(a3) already exist with 12756_0
              #                    occupy a3 with 12756_0
    li      a3, 12756
    add     s2,a3,s2
              #                    free a3
              #                    free s2
              #                     92   store 4_0:i32 temp_17_ptr_of_a_36_36:ptr->i32 
              #                    occupy s2 with temp_17_ptr_of_a_36_36
              #                    occupy s3 with 4_0
    li      s3, 4
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                     224  untrack temp_17_ptr_of_a_36_36 
              #                    occupy s2 with temp_17_ptr_of_a_36_36
              #                    release s2 with temp_17_ptr_of_a_36_36
              #                     93   a_36_4 = chi a_36_3:92 
              #                     95   temp_18_ptr_of_a_36_36 = GEP a_36_4:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0), Some(7_0)] 
              #                    occupy s2 with temp_18_ptr_of_a_36_36
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 1139
    add     s2,s2,s3
              #                    free s3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 7
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
              #                    found literal reg Some(a3) already exist with 12756_0
              #                    occupy a3 with 12756_0
    li      a3, 12756
    add     s2,a3,s2
              #                    free a3
              #                    free s2
              #                     96   store 9_0:i32 temp_18_ptr_of_a_36_36:ptr->i32 
              #                    occupy s2 with temp_18_ptr_of_a_36_36
              #                    occupy s3 with 9_0
    li      s3, 9
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                     230  untrack temp_18_ptr_of_a_36_36 
              #                    occupy s2 with temp_18_ptr_of_a_36_36
              #                    release s2 with temp_18_ptr_of_a_36_36
              #                     97   a_36_5 = chi a_36_4:96 
              #                     99   temp_19_ptr_of_a_36_36 = GEP a_36_5:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0), Some(11_0)] 
              #                    occupy s2 with temp_19_ptr_of_a_36_36
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 1139
    add     s2,s2,s3
              #                    free s3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 11
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
              #                    found literal reg Some(a3) already exist with 12756_0
              #                    occupy a3 with 12756_0
    li      a3, 12756
    add     s2,a3,s2
              #                    free a3
              #                    free s2
              #                     100  store 11_0:i32 temp_19_ptr_of_a_36_36:ptr->i32 
              #                    occupy s2 with temp_19_ptr_of_a_36_36
              #                    occupy s3 with 11_0
    li      s3, 11
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                     228  untrack temp_19_ptr_of_a_36_36 
              #                    occupy s2 with temp_19_ptr_of_a_36_36
              #                    release s2 with temp_19_ptr_of_a_36_36
              #                     101  a_36_6 = chi a_36_5:100 
              #                     103  temp_20_ptr_of_b_36_36 = GEP b_36_1:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0), Some(1_0)] 
              #                    occupy s2 with temp_20_ptr_of_b_36_36
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 354
    add     s2,s2,s3
              #                    free s3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 1
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,236
              #                    free s2
              #                     104  store 1_0:i32 temp_20_ptr_of_b_36_36:ptr->i32 
              #                    occupy s2 with temp_20_ptr_of_b_36_36
              #                    occupy s3 with 1_0
    li      s3, 1
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                     231  untrack temp_20_ptr_of_b_36_36 
              #                    occupy s2 with temp_20_ptr_of_b_36_36
              #                    release s2 with temp_20_ptr_of_b_36_36
              #                     105  b_36_2 = chi b_36_1:104 
              #                     107  temp_21_ptr_of_b_36_36 = GEP b_36_2:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0), Some(2_0)] 
              #                    occupy s2 with temp_21_ptr_of_b_36_36
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 354
    add     s2,s2,s3
              #                    free s3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 2
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,236
              #                    free s2
              #                     108  store 2_0:i32 temp_21_ptr_of_b_36_36:ptr->i32 
              #                    occupy s2 with temp_21_ptr_of_b_36_36
              #                    occupy s3 with 2_0
    li      s3, 2
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                     235  untrack temp_21_ptr_of_b_36_36 
              #                    occupy s2 with temp_21_ptr_of_b_36_36
              #                    release s2 with temp_21_ptr_of_b_36_36
              #                     109  b_36_3 = chi b_36_2:108 
              #                     111  temp_22_ptr_of_b_36_36 = GEP b_36_3:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0), Some(3_0)] 
              #                    occupy s2 with temp_22_ptr_of_b_36_36
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 354
    add     s2,s2,s3
              #                    free s3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 3
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,236
              #                    free s2
              #                     112  store 3_0:i32 temp_22_ptr_of_b_36_36:ptr->i32 
              #                    occupy s2 with temp_22_ptr_of_b_36_36
              #                    occupy s3 with 3_0
    li      s3, 3
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                     113  b_36_4 = chi b_36_3:112 
              #                     115  temp_23_ptr_of_b_36_36 = GEP b_36_4:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0), Some(9_0)] 
              #                    occupy s3 with temp_23_ptr_of_b_36_36
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 354
    add     s3,s3,s4
              #                    free s4
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 9
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,236
              #                    free s3
              #                    occupy s3 with temp_23_ptr_of_b_36_36
              #                    store to temp_23_ptr_of_b_36_36 in mem offset legal
    sd      s3,160(sp)
              #                    release s3 with temp_23_ptr_of_b_36_36
              #                     116  store 9_0:i32 temp_23_ptr_of_b_36_36:ptr->i32 
              #                    occupy s3 with temp_23_ptr_of_b_36_36
              #                    load from temp_23_ptr_of_b_36_36 in mem
    ld      s3,160(sp)
              #                    occupy s4 with 9_0
    li      s4, 9
    sw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                    occupy s3 with temp_23_ptr_of_b_36_36
              #                    store to temp_23_ptr_of_b_36_36 in mem offset legal
    sd      s3,160(sp)
              #                    release s3 with temp_23_ptr_of_b_36_36
              #                     232  untrack temp_23_ptr_of_b_36_36 
              #                     117  b_36_5 = chi b_36_4:116 
              #                     119   
              #                     121  (nop) 
              #                     123  temp_25_ele_of_a_36_36_0 = load temp_15_ptr_of_a_36_36:ptr->i32 
              #                    occupy a0 with temp_15_ptr_of_a_36_36
              #                    occupy s3 with temp_25_ele_of_a_36_36_0
    lw      s3,0(a0)
              #                    free s3
              #                    occupy s3 with temp_25_ele_of_a_36_36_0
              #                    store to temp_25_ele_of_a_36_36_0 in mem offset legal
    sw      s3,140(sp)
              #                    release s3 with temp_25_ele_of_a_36_36_0
              #                    free a0
              #                     226  untrack temp_15_ptr_of_a_36_36 
              #                    occupy a0 with temp_15_ptr_of_a_36_36
              #                    release a0 with temp_15_ptr_of_a_36_36
              #                     124  mu a_36_6:123 
              #                     126  temp_26_ele_ptr_of_b_36_36 = GEP b_36_5:Array:i32:[Some(53_0), Some(59_0)] [] 
              #                    occupy a0 with temp_26_ele_ptr_of_b_36_36
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,236
              #                    free a0
              #                     128  (nop) 
              #                     130  temp_28_ele_of_a_36_36_0 = load temp_16_ptr_of_a_36_36:ptr->i32 
              #                    occupy a5 with temp_16_ptr_of_a_36_36
              #                    occupy s3 with temp_28_ele_of_a_36_36_0
    lw      s3,0(a5)
              #                    free s3
              #                    occupy s3 with temp_28_ele_of_a_36_36_0
              #                    store to temp_28_ele_of_a_36_36_0 in mem offset legal
    sw      s3,116(sp)
              #                    release s3 with temp_28_ele_of_a_36_36_0
              #                    free a5
              #                     229  untrack temp_16_ptr_of_a_36_36 
              #                    occupy a5 with temp_16_ptr_of_a_36_36
              #                    release a5 with temp_16_ptr_of_a_36_36
              #                     131  mu a_36_6:130 
              #                     133  temp_29_ptr_of_a_36_36 = GEP a_36_6:Array:i32:[Some(61_0), Some(67_0)] [Some(17_0)] 
              #                    occupy a5 with temp_29_ptr_of_a_36_36
    li      a5, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 1139
    add     a5,a5,s3
              #                    free s3
    slli a5,a5,2
    add     a5,a5,sp
              #                    found literal reg Some(a3) already exist with 12756_0
              #                    occupy a3 with 12756_0
    li      a3, 12756
    add     a5,a3,a5
              #                    free a3
              #                    free a5
              #                     135  (nop) 
              #                     137  temp_31_ele_of_b_36_36_0 = load temp_22_ptr_of_b_36_36:ptr->i32 
              #                    occupy s2 with temp_22_ptr_of_b_36_36
              #                    occupy s3 with temp_31_ele_of_b_36_36_0
    lw      s3,0(s2)
              #                    free s3
              #                    occupy s3 with temp_31_ele_of_b_36_36_0
              #                    store to temp_31_ele_of_b_36_36_0 in mem offset legal
    sw      s3,92(sp)
              #                    release s3 with temp_31_ele_of_b_36_36_0
              #                    free s2
              #                     221  untrack temp_22_ptr_of_b_36_36 
              #                    occupy s2 with temp_22_ptr_of_b_36_36
              #                    release s2 with temp_22_ptr_of_b_36_36
              #                     138  mu b_36_5:137 
              #                     140  temp_32_ptr_of_b_36_36 = GEP b_36_5:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0), Some(0_0)] 
              #                    occupy s2 with temp_32_ptr_of_b_36_36
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 354
    add     s2,s2,s3
              #                    free s3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 0
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,236
              #                    free s2
              #                     142  temp_33_ele_of_b_36_36_0 = load temp_32_ptr_of_b_36_36:ptr->i32 
              #                    occupy s2 with temp_32_ptr_of_b_36_36
              #                    occupy s3 with temp_33_ele_of_b_36_36_0
    lw      s3,0(s2)
              #                    free s3
              #                    occupy s3 with temp_33_ele_of_b_36_36_0
              #                    store to temp_33_ele_of_b_36_36_0 in mem offset legal
    sw      s3,76(sp)
              #                    release s3 with temp_33_ele_of_b_36_36_0
              #                    free s2
              #                     234  untrack temp_32_ptr_of_b_36_36 
              #                    occupy s2 with temp_32_ptr_of_b_36_36
              #                    release s2 with temp_32_ptr_of_b_36_36
              #                     143  mu b_36_5:142 
              #                     145  temp_34_ptr_of_b_36_36 = GEP b_36_5:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0)] 
              #                    occupy s2 with temp_34_ptr_of_b_36_36
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 354
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,236
              #                    free s2
              #                     147  temp_35_ptr_of_b_36_36 = GEP b_36_5:Array:i32:[Some(53_0), Some(59_0)] [Some(34_0), Some(4_0)] 
              #                    occupy s3 with temp_35_ptr_of_b_36_36
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 2006
    add     s3,s3,s4
              #                    free s4
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 4
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,236
              #                    free s3
              #                    occupy s3 with temp_35_ptr_of_b_36_36
              #                    store to temp_35_ptr_of_b_36_36 in mem offset legal
    sd      s3,56(sp)
              #                    release s3 with temp_35_ptr_of_b_36_36
              #                     149  temp_36_ele_of_b_36_36_0 = load temp_35_ptr_of_b_36_36:ptr->i32 
              #                    occupy s3 with temp_35_ptr_of_b_36_36
              #                    load from temp_35_ptr_of_b_36_36 in mem
    ld      s3,56(sp)
              #                    occupy s4 with temp_36_ele_of_b_36_36_0
    lw      s4,0(s3)
              #                    free s4
              #                    occupy s4 with temp_36_ele_of_b_36_36_0
              #                    store to temp_36_ele_of_b_36_36_0 in mem offset legal
    sw      s4,52(sp)
              #                    release s4 with temp_36_ele_of_b_36_36_0
              #                    free s3
              #                    occupy s3 with temp_35_ptr_of_b_36_36
              #                    store to temp_35_ptr_of_b_36_36 in mem offset legal
    sd      s3,56(sp)
              #                    release s3 with temp_35_ptr_of_b_36_36
              #                     242  untrack temp_35_ptr_of_b_36_36 
              #                     150  mu b_36_5:149 
              #                     152  temp_37_ptr_of_b_36_36 = GEP b_36_5:Array:i32:[Some(53_0), Some(59_0)] [Some(51_0), Some(18_0)] 
              #                    occupy s3 with temp_37_ptr_of_b_36_36
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 3009
    add     s3,s3,s4
              #                    free s4
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 18
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,236
              #                    free s3
              #                    occupy s3 with temp_37_ptr_of_b_36_36
              #                    store to temp_37_ptr_of_b_36_36 in mem offset legal
    sd      s3,40(sp)
              #                    release s3 with temp_37_ptr_of_b_36_36
              #                     154  temp_38_ele_of_b_36_36_0 = load temp_37_ptr_of_b_36_36:ptr->i32 
              #                    occupy s3 with temp_37_ptr_of_b_36_36
              #                    load from temp_37_ptr_of_b_36_36 in mem
    ld      s3,40(sp)
              #                    occupy s4 with temp_38_ele_of_b_36_36_0
    lw      s4,0(s3)
              #                    free s4
              #                    occupy s4 with temp_38_ele_of_b_36_36_0
              #                    store to temp_38_ele_of_b_36_36_0 in mem offset legal
    sw      s4,36(sp)
              #                    release s4 with temp_38_ele_of_b_36_36_0
              #                    free s3
              #                    occupy s3 with temp_37_ptr_of_b_36_36
              #                    store to temp_37_ptr_of_b_36_36 in mem offset legal
    sd      s3,40(sp)
              #                    release s3 with temp_37_ptr_of_b_36_36
              #                     240  untrack temp_37_ptr_of_b_36_36 
              #                     155  mu b_36_5:154 
              #                     157  temp_39_ret_of_func_36_0 =  Call i32 func_0(temp_25_ele_of_a_36_36_0, temp_26_ele_ptr_of_b_36_36, temp_28_ele_of_a_36_36_0, temp_29_ptr_of_a_36_36, temp_31_ele_of_b_36_36_0, temp_33_ele_of_b_36_36_0, temp_34_ptr_of_b_36_36, temp_36_ele_of_b_36_36_0, temp_38_ele_of_b_36_36_0) 
              #                    saved register dumping to mem
              #                    occupy s3 with temp_38_ele_of_b_36_36_0
              #                    load from temp_38_ele_of_b_36_36_0 in mem


    lw      s3,36(sp)
              #                    store to i_16_0 in mem offset legal
    sw      s3,-4(sp)
              #                    free s3
              #                    occupy s3 with temp_38_ele_of_b_36_36_0
              #                    store to temp_38_ele_of_b_36_36_0 in mem offset legal
    sw      s3,36(sp)
              #                    release s3 with temp_38_ele_of_b_36_36_0
              #                    occupy s2 with temp_34_ptr_of_b_36_36
              #                    store to temp_34_ptr_of_b_36_36 in mem offset legal
    sd      s2,64(sp)
              #                    release s2 with temp_34_ptr_of_b_36_36
              #                    occupy a0 with temp_26_ele_ptr_of_b_36_36
              #                    store to temp_26_ele_ptr_of_b_36_36 in mem offset legal
    sd      a0,128(sp)
              #                    release a0 with temp_26_ele_ptr_of_b_36_36
              #                    occupy a5 with temp_29_ptr_of_a_36_36
              #                    store to temp_29_ptr_of_a_36_36 in mem offset legal
    sd      a5,104(sp)
              #                    release a5 with temp_29_ptr_of_a_36_36
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_25_ele_of_a_36_36_0_0
              #                    load from temp_25_ele_of_a_36_36_0 in mem


    lw      a0,140(sp)
              #                    occupy a1 with _anonymous_of_temp_26_ele_ptr_of_b_36_36_0
              #                    load from temp_26_ele_ptr_of_b_36_36 in mem
    ld      a1,128(sp)
              #                    occupy a2 with _anonymous_of_temp_28_ele_of_a_36_36_0_0
              #                    load from temp_28_ele_of_a_36_36_0 in mem


    lw      a2,116(sp)
              #                    occupy a3 with _anonymous_of_temp_29_ptr_of_a_36_36_0
              #                    load from temp_29_ptr_of_a_36_36 in mem
    ld      a3,104(sp)
              #                    occupy a4 with _anonymous_of_temp_31_ele_of_b_36_36_0_0
              #                    load from temp_31_ele_of_b_36_36_0 in mem


    lw      a4,92(sp)
              #                    occupy a5 with _anonymous_of_temp_33_ele_of_b_36_36_0_0
              #                    load from temp_33_ele_of_b_36_36_0 in mem


    lw      a5,76(sp)
              #                    occupy a6 with _anonymous_of_temp_34_ptr_of_b_36_36_0
              #                    load from temp_34_ptr_of_b_36_36 in mem
    ld      a6,64(sp)
              #                    occupy a7 with _anonymous_of_temp_36_ele_of_b_36_36_0_0
              #                    load from temp_36_ele_of_b_36_36_0 in mem


    lw      a7,52(sp)
              #                    arg load ended


    call    func
              #                     239  untrack temp_34_ptr_of_b_36_36 
              #                     238  untrack temp_28_ele_of_a_36_36_0 
              #                     237  untrack temp_26_ele_ptr_of_b_36_36 
              #                     233  untrack temp_38_ele_of_b_36_36_0 
              #                     227  untrack temp_33_ele_of_b_36_36_0 
              #                     225  untrack temp_29_ptr_of_a_36_36 
              #                     223  untrack temp_31_ele_of_b_36_36_0 
              #                     222  untrack temp_25_ele_of_a_36_36_0 
              #                     220  untrack temp_36_ele_of_b_36_36_0 
              #                     187  mu b_36_5:157 
              #                     188  mu a_36_6:157 
              #                     189  a_36_7 = chi a_36_6:157 
              #                     190  b_36_6 = chi b_36_5:157 
              #                     159  temp_40_arithop_36_0 = Mul i32 temp_39_ret_of_func_36_0, 3_0 
              #                    occupy a1 with temp_40_arithop_36_0
              #                    occupy a0 with temp_39_ret_of_func_36_0
              #                    occupy a2 with 3_0
    li      a2, 3
    mulw    a1,a0,a2
              #                    free a0
              #                    free a2
              #                    free a1
              #                     236  untrack temp_39_ret_of_func_36_0 
              #                    occupy a0 with temp_39_ret_of_func_36_0
              #                    release a0 with temp_39_ret_of_func_36_0
              #                     160  (nop) 
              #                     202  ret_36_2 = i32 temp_40_arithop_36_0 
              #                    occupy a1 with temp_40_arithop_36_0
              #                    occupy a0 with ret_36_2
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                     218  untrack temp_40_arithop_36_0 
              #                    occupy a1 with temp_40_arithop_36_0
              #                    release a1 with temp_40_arithop_36_0
              #                          jump label: while.head_51 
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: ret_36_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     176  label while.head_51: 
.while.head_51:
              #                     175  temp_44_cmp_50_0 = icmp i32 Sge ret_36_2, 0_0 
              #                    occupy a0 with ret_36_2
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_44_cmp_50_0
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     179  br i1 temp_44_cmp_50_0, label while.body_51, label while.exit_51 
              #                    occupy a2 with temp_44_cmp_50_0
              #                    free a2
              #                    occupy a2 with temp_44_cmp_50_0
    bnez    a2, .while.body_51
              #                    free a2
    j       .while.exit_51
              #                    regtab     a0:Freed { symidx: ret_36_2, tracked: true } |     a2:Freed { symidx: temp_44_cmp_50_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     177  label while.body_51: 
.while.body_51:
              #                     165  temp_41_ptr_of_b_36_52 = GEP b_36_6:Array:i32:[Some(53_0), Some(59_0)] [Some(6_0), Some(ret_36_2)] 
              #                    occupy a1 with temp_41_ptr_of_b_36_52
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 354
    add     a1,a1,a3
              #                    free a3
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with ret_36_2
    mv      a4, a0
              #                    free a0
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,236
              #                    free a1
              #                     167  temp_42_ele_of_b_36_52_0 = load temp_41_ptr_of_b_36_52:ptr->i32 
              #                    occupy a1 with temp_41_ptr_of_b_36_52
              #                    occupy a5 with temp_42_ele_of_b_36_52_0
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     168  mu b_36_6:167 
              #                     169   Call void putint_0(temp_42_ele_of_b_36_52_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with ret_36_2
              #                    store to ret_36_2 in mem offset legal
    sw      a0,152(sp)
              #                    release a0 with ret_36_2
              #                    occupy a1 with temp_41_ptr_of_b_36_52
              #                    store to temp_41_ptr_of_b_36_52 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_41_ptr_of_b_36_52
              #                    occupy a2 with temp_44_cmp_50_0
              #                    store to temp_44_cmp_50_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_44_cmp_50_0
              #                    occupy a5 with temp_42_ele_of_b_36_52_0
              #                    store to temp_42_ele_of_b_36_52_0 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with temp_42_ele_of_b_36_52_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_42_ele_of_b_36_52_0_0
              #                    load from temp_42_ele_of_b_36_52_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     170   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     172  temp_43_arithop_52_0 = Sub i32 ret_36_2, 1_0 
              #                    occupy a0 with ret_36_2
              #                    load from ret_36_2 in mem


    lw      a0,152(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_43_arithop_52_0
              #                    regtab:    a0:Occupied { symidx: ret_36_2, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_43_arithop_52_0, tracked: true, occupy_count: 1 } |  released_gpr_count:10,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     173  (nop) 
              #                     203  ret_36_2 = i32 temp_43_arithop_52_0 
              #                    occupy a2 with temp_43_arithop_52_0
              #                    occupy a0 with ret_36_2
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_51 
              #                    occupy a2 with temp_43_arithop_52_0
              #                    store to temp_43_arithop_52_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_43_arithop_52_0
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: ret_36_2, tracked: true } |     a2:Freed { symidx: temp_44_cmp_50_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     178  label while.exit_51: 
.while.exit_51:
              #                     243  untrack ret_36_2 
              #                    occupy a0 with ret_36_2
              #                    release a0 with ret_36_2
              #                     161   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_44_cmp_50_0
              #                    store to temp_44_cmp_50_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_44_cmp_50_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     163  ret 0_0 
              #                    load from ra_main_0 in mem
              #                    occupy a0 with _anonymous_of_29120_0_0
    li      a0, 29120
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_main_0 in mem
              #                    occupy a1 with _anonymous_of_29112_0_0
    li      a1, 29112
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with 29128_0
    li      a2, 29128
    li      a2, 29128
    add     sp,a2,sp
              #                    free a2
              #                    free a0
    ret
