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
              #                     28   Define add_0 "a0_19,a1_19,a2_19,b0_19,b1_19,b2_19,c0_19,c1_19,c2_19," -> add_ret_0 
    .globl add
    .type add,@function
add:
              #                    mem layout:|c2:8 at 344|c2:8 at 336|c2:8 at 328|c2:8 at 320|ra_add:8 at 312|s0_add:8 at 304|a0:8 at 296|a0:8 at 288|a1:8 at 280|a1:8 at 272|a2:8 at 264|a2:8 at 256|b0:8 at 248|b0:8 at 240|b1:8 at 232|b1:8 at 224|b2:8 at 216|b2:8 at 208|c0:8 at 200|c0:8 at 192|c0:8 at 184|c0:8 at 176|c1:8 at 168|c1:8 at 160|c1:8 at 152|c1:8 at 144|i _s21 _i0:4 at 140|i _s21 _i2:4 at 136|temp_0_ptr_of_c0_19:8 at 128|temp_1_ptr_of_a0_19:8 at 120|temp_2_ele_of_a0_19 _s26 _i0:4 at 116|none:4 at 112|temp_3_ptr_of_b0_19:8 at 104|temp_4_ele_of_b0_19 _s26 _i0:4 at 100|temp_5_arithop _s26 _i0:4 at 96|temp_6_ptr_of_c1_19:8 at 88|temp_7_ptr_of_a1_19:8 at 80|temp_8_ele_of_a1_19 _s26 _i0:4 at 76|none:4 at 72|temp_9_ptr_of_b1_19:8 at 64|temp_10_ele_of_b1_19 _s26 _i0:4 at 60|temp_11_arithop _s26 _i0:4 at 56|temp_12_ptr_of_c2_19:8 at 48|temp_13_ptr_of_a2_19:8 at 40|temp_14_ele_of_a2_19 _s26 _i0:4 at 36|none:4 at 32|temp_15_ptr_of_b2_19:8 at 24|temp_16_ele_of_b2_19 _s26 _i0:4 at 20|temp_17_arithop _s26 _i0:4 at 16|temp_18_arithop _s26 _i0:4 at 12|temp_19_value_from_ptr _s24 _i0:4 at 8|temp_20_cmp _s24 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-352
              #                    store to ra_add_0 in mem offset legal
    sd      ra,312(sp)
              #                    store to s0_add_0 in mem offset legal
    sd      s0,304(sp)
    addi    s0,sp,352
              #                     30   alloc i32 [i_21] 
              #                     35   alloc ptr->f32 [temp_0_ptr_of_c0_19_26] 
              #                     37   alloc ptr->f32 [temp_1_ptr_of_a0_19_26] 
              #                     39   alloc f32 [temp_2_ele_of_a0_19_26] 
              #                     42   alloc ptr->f32 [temp_3_ptr_of_b0_19_26] 
              #                     44   alloc f32 [temp_4_ele_of_b0_19_26] 
              #                     47   alloc f32 [temp_5_arithop_26] 
              #                     51   alloc ptr->f32 [temp_6_ptr_of_c1_19_26] 
              #                     53   alloc ptr->f32 [temp_7_ptr_of_a1_19_26] 
              #                     55   alloc f32 [temp_8_ele_of_a1_19_26] 
              #                     58   alloc ptr->f32 [temp_9_ptr_of_b1_19_26] 
              #                     60   alloc f32 [temp_10_ele_of_b1_19_26] 
              #                     63   alloc f32 [temp_11_arithop_26] 
              #                     67   alloc ptr->f32 [temp_12_ptr_of_c2_19_26] 
              #                     69   alloc ptr->f32 [temp_13_ptr_of_a2_19_26] 
              #                     71   alloc f32 [temp_14_ele_of_a2_19_26] 
              #                     74   alloc ptr->f32 [temp_15_ptr_of_b2_19_26] 
              #                     76   alloc f32 [temp_16_ele_of_b2_19_26] 
              #                     79   alloc f32 [temp_17_arithop_26] 
              #                     83   alloc i32 [temp_18_arithop_26] 
              #                     86   alloc i32 [temp_19_value_from_ptr_24] 
              #                     89   alloc i1 [temp_20_cmp_24] 
              #                    regtab     a0:Freed { symidx: a0_19, tracked: true } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     19    
              #                     20    
              #                     21    
              #                     22    
              #                     23    
              #                     24    
              #                     25    
              #                     26    
              #                     27    
              #                     31    
              #                     32   (nop) 
              #                     87   temp_19_value_from_ptr_24_0 = load *M_0:ptr->i32 
              #                    occupy s1 with *M_0
              #                       load label M as ptr to reg
    la      s1, M
              #                    occupy reg s1 with *M_0
              #                    occupy s2 with temp_19_value_from_ptr_24_0
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                     88   mu M_0_0:87 
              #                     315  i_21_2 = i32 0_0 
              #                    occupy s3 with i_21_2
    li      s3, 0
              #                    free s3
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: a0_19, tracked: true } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } |     s2:Freed { symidx: temp_19_value_from_ptr_24_0, tracked: true } |     s3:Freed { symidx: i_21_2, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     91   label while.head_25: 
.while.head_25:
              #                     90   temp_20_cmp_24_0 = icmp i32 Slt i_21_2, temp_19_value_from_ptr_24_0 
              #                    occupy s3 with i_21_2
              #                    occupy s2 with temp_19_value_from_ptr_24_0
              #                    occupy s1 with temp_20_cmp_24_0
    slt     s1,s3,s2
              #                    free s3
              #                    free s2
              #                    free s1
              #                     94   br i1 temp_20_cmp_24_0, label while.body_25, label while.exit_25 
              #                    occupy s1 with temp_20_cmp_24_0
              #                    free s1
              #                    occupy s1 with temp_20_cmp_24_0
    bnez    s1, .while.body_25
              #                    free s1
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: a0_19, tracked: true } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } |     s1:Freed { symidx: temp_20_cmp_24_0, tracked: true } |     s2:Freed { symidx: temp_19_value_from_ptr_24_0, tracked: true } |     s3:Freed { symidx: i_21_2, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     92   label while.body_25: 
.while.body_25:
              #                     36   temp_0_ptr_of_c0_19_26 = GEP c0_19:ptr->f32 [Some(i_21_2)] 
              #                    occupy s4 with temp_0_ptr_of_c0_19_26
    li      s4, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with i_21_2
    mv      s5, s3
              #                    free s3
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy a6 with c0_19
    add     s4,s4,a6
              #                    free a6
              #                    free s4
              #                     38   temp_1_ptr_of_a0_19_26 = GEP a0_19:Array:f32:[None] [Some(i_21_2)] 
              #                    occupy s6 with temp_1_ptr_of_a0_19_26
    li      s6, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with i_21_2
    mv      s7, s3
              #                    free s3
              #                    occupy s3 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s3,136(sp)
              #                    release s3 with i_21_2
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy a0 with a0_19
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                     40   temp_2_ele_of_a0_19_26_0 = load temp_1_ptr_of_a0_19_26:ptr->f32 
              #                    occupy s6 with temp_1_ptr_of_a0_19_26
              #                    occupy fa0 with temp_2_ele_of_a0_19_26_0
    flw     fa0,0(s6)
              #                    free fa0
              #                    free s6
              #                     41   mu a0_19:40 
              #                     43   temp_3_ptr_of_b0_19_26 = GEP b0_19:Array:f32:[None] [Some(i_21_2)] 
              #                    occupy s3 with temp_3_ptr_of_b0_19_26
    li      s3, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with i_21_2
              #                    load from i_21_2 in mem


    lw      s8,136(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,136(sp)
              #                    release s8 with i_21_2
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
              #                    occupy a3 with b0_19
    add     s3,s3,a3
              #                    free a3
              #                    occupy a3 with b0_19
              #                    store to b0_19 in mem offset legal
    sd      a3,240(sp)
              #                    release a3 with b0_19
              #                    free s3
              #                     45   temp_4_ele_of_b0_19_26_0 = load temp_3_ptr_of_b0_19_26:ptr->f32 
              #                    occupy s3 with temp_3_ptr_of_b0_19_26
              #                    occupy fa1 with temp_4_ele_of_b0_19_26_0
    flw     fa1,0(s3)
              #                    free fa1
              #                    free s3
              #                     46   mu b0_19:45 
              #                     48   temp_5_arithop_26_0 = Add f32 temp_2_ele_of_a0_19_26_0, temp_4_ele_of_b0_19_26_0 
              #                    occupy fa0 with temp_2_ele_of_a0_19_26_0
              #                    occupy fa1 with temp_4_ele_of_b0_19_26_0
              #                    occupy fa2 with temp_5_arithop_26_0
    fadd.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     49   store temp_5_arithop_26_0:f32 temp_0_ptr_of_c0_19_26:ptr->f32 
              #                    occupy s4 with temp_0_ptr_of_c0_19_26
              #                    occupy fa2 with temp_5_arithop_26_0
    fsw     fa2,0(s4)
              #                    free fa2
              #                    free s4
              #                     50   c0_19 = chi c0_19:49 
              #                     52   temp_6_ptr_of_c1_19_26 = GEP c1_19:ptr->f32 [Some(i_21_2)] 
              #                    occupy a3 with temp_6_ptr_of_c1_19_26
    li      a3, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with i_21_2
              #                    load from i_21_2 in mem


    lw      s8,136(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,136(sp)
              #                    release s8 with i_21_2
    add     a3,a3,s7
              #                    free s7
    slli a3,a3,2
              #                    occupy a7 with c1_19
    add     a3,a3,a7
              #                    free a7
              #                    occupy a7 with c1_19
              #                    store to c1_19 in mem offset legal
    sd      a7,144(sp)
              #                    release a7 with c1_19
              #                    free a3
              #                     54   temp_7_ptr_of_a1_19_26 = GEP a1_19:Array:f32:[None] [Some(i_21_2)] 
              #                    occupy a7 with temp_7_ptr_of_a1_19_26
    li      a7, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with i_21_2
              #                    load from i_21_2 in mem


    lw      s8,136(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,136(sp)
              #                    release s8 with i_21_2
    add     a7,a7,s7
              #                    free s7
    slli a7,a7,2
              #                    occupy a1 with a1_19
    add     a7,a7,a1
              #                    free a1
              #                    occupy a1 with a1_19
              #                    store to a1_19 in mem offset legal
    sd      a1,272(sp)
              #                    release a1 with a1_19
              #                    free a7
              #                     56   temp_8_ele_of_a1_19_26_0 = load temp_7_ptr_of_a1_19_26:ptr->f32 
              #                    occupy a7 with temp_7_ptr_of_a1_19_26
              #                    occupy fa3 with temp_8_ele_of_a1_19_26_0
    flw     fa3,0(a7)
              #                    free fa3
              #                    free a7
              #                     57   mu a1_19:56 
              #                     59   temp_9_ptr_of_b1_19_26 = GEP b1_19:Array:f32:[None] [Some(i_21_2)] 
              #                    occupy a1 with temp_9_ptr_of_b1_19_26
    li      a1, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with i_21_2
              #                    load from i_21_2 in mem


    lw      s8,136(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,136(sp)
              #                    release s8 with i_21_2
    add     a1,a1,s7
              #                    free s7
    slli a1,a1,2
              #                    occupy a4 with b1_19
    add     a1,a1,a4
              #                    free a4
              #                    occupy a4 with b1_19
              #                    store to b1_19 in mem offset legal
    sd      a4,224(sp)
              #                    release a4 with b1_19
              #                    free a1
              #                     61   temp_10_ele_of_b1_19_26_0 = load temp_9_ptr_of_b1_19_26:ptr->f32 
              #                    occupy a1 with temp_9_ptr_of_b1_19_26
              #                    occupy fa4 with temp_10_ele_of_b1_19_26_0
    flw     fa4,0(a1)
              #                    free fa4
              #                    free a1
              #                     62   mu b1_19:61 
              #                     64   temp_11_arithop_26_0 = Add f32 temp_8_ele_of_a1_19_26_0, temp_10_ele_of_b1_19_26_0 
              #                    occupy fa3 with temp_8_ele_of_a1_19_26_0
              #                    occupy fa4 with temp_10_ele_of_b1_19_26_0
              #                    occupy fa5 with temp_11_arithop_26_0
    fadd.s  fa5,fa3,fa4
              #                    free fa3
              #                    free fa4
              #                    free fa5
              #                     65   store temp_11_arithop_26_0:f32 temp_6_ptr_of_c1_19_26:ptr->f32 
              #                    occupy a3 with temp_6_ptr_of_c1_19_26
              #                    occupy fa5 with temp_11_arithop_26_0
    fsw     fa5,0(a3)
              #                    free fa5
              #                    free a3
              #                     66   c1_19 = chi c1_19:65 
              #                     68   temp_12_ptr_of_c2_19_26 = GEP c2_19:ptr->f32 [Some(i_21_2)] 
              #                    occupy a4 with temp_12_ptr_of_c2_19_26
    li      a4, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with i_21_2
              #                    load from i_21_2 in mem


    lw      s8,136(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,136(sp)
              #                    release s8 with i_21_2
    add     a4,a4,s7
              #                    free s7
    slli a4,a4,2
              #                    occupy s7 with c2_19
              #                    load from c2_19 in mem
    ld      s7,320(sp)
    add     a4,a4,s7
              #                    free s7
              #                    occupy s7 with c2_19
              #                    store to c2_19 in mem offset legal
    sd      s7,320(sp)
              #                    release s7 with c2_19
              #                    free a4
              #                    occupy a4 with temp_12_ptr_of_c2_19_26
              #                    store to temp_12_ptr_of_c2_19_26 in mem offset legal
    sd      a4,48(sp)
              #                    release a4 with temp_12_ptr_of_c2_19_26
              #                     70   temp_13_ptr_of_a2_19_26 = GEP a2_19:Array:f32:[None] [Some(i_21_2)] 
              #                    occupy a4 with temp_13_ptr_of_a2_19_26
    li      a4, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with i_21_2
              #                    load from i_21_2 in mem


    lw      s8,136(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,136(sp)
              #                    release s8 with i_21_2
    add     a4,a4,s7
              #                    free s7
    slli a4,a4,2
              #                    occupy a2 with a2_19
    add     a4,a4,a2
              #                    free a2
              #                    occupy a2 with a2_19
              #                    store to a2_19 in mem offset legal
    sd      a2,256(sp)
              #                    release a2 with a2_19
              #                    free a4
              #                     72   temp_14_ele_of_a2_19_26_0 = load temp_13_ptr_of_a2_19_26:ptr->f32 
              #                    occupy a4 with temp_13_ptr_of_a2_19_26
              #                    occupy fa6 with temp_14_ele_of_a2_19_26_0
    flw     fa6,0(a4)
              #                    free fa6
              #                    free a4
              #                     73   mu a2_19:72 
              #                     75   temp_15_ptr_of_b2_19_26 = GEP b2_19:Array:f32:[None] [Some(i_21_2)] 
              #                    occupy a2 with temp_15_ptr_of_b2_19_26
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with i_21_2
              #                    load from i_21_2 in mem


    lw      s8,136(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,136(sp)
              #                    release s8 with i_21_2
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
              #                    occupy a5 with b2_19
    add     a2,a2,a5
              #                    free a5
              #                    occupy a5 with b2_19
              #                    store to b2_19 in mem offset legal
    sd      a5,208(sp)
              #                    release a5 with b2_19
              #                    free a2
              #                     77   temp_16_ele_of_b2_19_26_0 = load temp_15_ptr_of_b2_19_26:ptr->f32 
              #                    occupy a2 with temp_15_ptr_of_b2_19_26
              #                    occupy fa7 with temp_16_ele_of_b2_19_26_0
    flw     fa7,0(a2)
              #                    free fa7
              #                    free a2
              #                     78   mu b2_19:77 
              #                     80   temp_17_arithop_26_0 = Add f32 temp_14_ele_of_a2_19_26_0, temp_16_ele_of_b2_19_26_0 
              #                    occupy fa6 with temp_14_ele_of_a2_19_26_0
              #                    occupy fa7 with temp_16_ele_of_b2_19_26_0
              #                    occupy f8 with temp_17_arithop_26_0
    fadd.s  f8,fa6,fa7
              #                    free fa6
              #                    free fa7
              #                    free f8
              #                     81   store temp_17_arithop_26_0:f32 temp_12_ptr_of_c2_19_26:ptr->f32 
              #                    occupy a5 with temp_12_ptr_of_c2_19_26
              #                    load from temp_12_ptr_of_c2_19_26 in mem
    ld      a5,48(sp)
              #                    occupy f8 with temp_17_arithop_26_0
    fsw     f8,0(a5)
              #                    free f8
              #                    free a5
              #                    occupy a5 with temp_12_ptr_of_c2_19_26
              #                    store to temp_12_ptr_of_c2_19_26 in mem offset legal
    sd      a5,48(sp)
              #                    release a5 with temp_12_ptr_of_c2_19_26
              #                     82   c2_19 = chi c2_19:81 
              #                     84   temp_18_arithop_26_0 = Add i32 i_21_2, 1_0 
              #                    occupy a5 with i_21_2
              #                    load from i_21_2 in mem


    lw      a5,136(sp)
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with temp_18_arithop_26_0
    ADDW    s8,a5,s7
              #                    free a5
              #                    occupy a5 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      a5,136(sp)
              #                    release a5 with i_21_2
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_18_arithop_26_0
              #                    store to temp_18_arithop_26_0 in mem offset legal
    sw      s8,12(sp)
              #                    release s8 with temp_18_arithop_26_0
              #                     85   (nop) 
              #                     316  i_21_2 = i32 temp_18_arithop_26_0 
              #                    occupy a5 with temp_18_arithop_26_0
              #                    load from temp_18_arithop_26_0 in mem


    lw      a5,12(sp)
              #                    occupy s7 with i_21_2
    mv      s7, a5
              #                    free a5
              #                    occupy a5 with temp_18_arithop_26_0
              #                    store to temp_18_arithop_26_0 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with temp_18_arithop_26_0
              #                    free s7
              #                    occupy s7 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s7,136(sp)
              #                    release s7 with i_21_2
              #                          jump label: while.head_25 
              #                    occupy fa6 with temp_14_ele_of_a2_19_26_0
              #                    store to temp_14_ele_of_a2_19_26_0 in mem offset legal
    fsw     fa6,36(sp)
              #                    release fa6 with temp_14_ele_of_a2_19_26_0
              #                    occupy fa7 with temp_16_ele_of_b2_19_26_0
              #                    store to temp_16_ele_of_b2_19_26_0 in mem offset legal
    fsw     fa7,20(sp)
              #                    release fa7 with temp_16_ele_of_b2_19_26_0
              #                    occupy s3 with temp_3_ptr_of_b0_19_26
              #                    store to temp_3_ptr_of_b0_19_26 in mem offset legal
    sd      s3,104(sp)
              #                    release s3 with temp_3_ptr_of_b0_19_26
              #                    occupy s3 with i_21_2
              #                    load from i_21_2 in mem


    lw      s3,136(sp)
              #                    occupy fa0 with temp_2_ele_of_a0_19_26_0
              #                    store to temp_2_ele_of_a0_19_26_0 in mem offset legal
    fsw     fa0,116(sp)
              #                    release fa0 with temp_2_ele_of_a0_19_26_0
              #                    occupy fa4 with temp_10_ele_of_b1_19_26_0
              #                    store to temp_10_ele_of_b1_19_26_0 in mem offset legal
    fsw     fa4,60(sp)
              #                    release fa4 with temp_10_ele_of_b1_19_26_0
              #                    occupy s1 with temp_20_cmp_24_0
              #                    store to temp_20_cmp_24_0 in mem offset legal
    sb      s1,7(sp)
              #                    release s1 with temp_20_cmp_24_0
              #                    occupy fa5 with temp_11_arithop_26_0
              #                    store to temp_11_arithop_26_0 in mem offset legal
    fsw     fa5,56(sp)
              #                    release fa5 with temp_11_arithop_26_0
              #                    occupy s6 with temp_1_ptr_of_a0_19_26
              #                    store to temp_1_ptr_of_a0_19_26 in mem offset legal
    sd      s6,120(sp)
              #                    release s6 with temp_1_ptr_of_a0_19_26
              #                    occupy a4 with temp_13_ptr_of_a2_19_26
              #                    store to temp_13_ptr_of_a2_19_26 in mem offset legal
    sd      a4,40(sp)
              #                    release a4 with temp_13_ptr_of_a2_19_26
              #                    occupy a4 with b1_19
              #                    load from b1_19 in mem
    ld      a4,224(sp)
              #                    occupy fa2 with temp_5_arithop_26_0
              #                    store to temp_5_arithop_26_0 in mem offset legal
    fsw     fa2,96(sp)
              #                    release fa2 with temp_5_arithop_26_0
              #                    occupy s4 with temp_0_ptr_of_c0_19_26
              #                    store to temp_0_ptr_of_c0_19_26 in mem offset legal
    sd      s4,128(sp)
              #                    release s4 with temp_0_ptr_of_c0_19_26
              #                    occupy a7 with temp_7_ptr_of_a1_19_26
              #                    store to temp_7_ptr_of_a1_19_26 in mem offset legal
    sd      a7,80(sp)
              #                    release a7 with temp_7_ptr_of_a1_19_26
              #                    occupy a7 with c1_19
              #                    load from c1_19 in mem
    ld      a7,144(sp)
              #                    occupy a3 with temp_6_ptr_of_c1_19_26
              #                    store to temp_6_ptr_of_c1_19_26 in mem offset legal
    sd      a3,88(sp)
              #                    release a3 with temp_6_ptr_of_c1_19_26
              #                    occupy a3 with b0_19
              #                    load from b0_19 in mem
    ld      a3,240(sp)
              #                    occupy a5 with b2_19
              #                    load from b2_19 in mem
    ld      a5,208(sp)
              #                    occupy fa3 with temp_8_ele_of_a1_19_26_0
              #                    store to temp_8_ele_of_a1_19_26_0 in mem offset legal
    fsw     fa3,76(sp)
              #                    release fa3 with temp_8_ele_of_a1_19_26_0
              #                    occupy fa1 with temp_4_ele_of_b0_19_26_0
              #                    store to temp_4_ele_of_b0_19_26_0 in mem offset legal
    fsw     fa1,100(sp)
              #                    release fa1 with temp_4_ele_of_b0_19_26_0
              #                    occupy a1 with temp_9_ptr_of_b1_19_26
              #                    store to temp_9_ptr_of_b1_19_26 in mem offset legal
    sd      a1,64(sp)
              #                    release a1 with temp_9_ptr_of_b1_19_26
              #                    occupy a1 with a1_19
              #                    load from a1_19 in mem
    ld      a1,272(sp)
              #                    occupy a2 with temp_15_ptr_of_b2_19_26
              #                    store to temp_15_ptr_of_b2_19_26 in mem offset legal
    sd      a2,24(sp)
              #                    release a2 with temp_15_ptr_of_b2_19_26
              #                    occupy a2 with a2_19
              #                    load from a2_19 in mem
    ld      a2,256(sp)
              #                    occupy f8 with temp_17_arithop_26_0
              #                    store to temp_17_arithop_26_0 in mem offset legal
    fsw     f8,16(sp)
              #                    release f8 with temp_17_arithop_26_0
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: a0_19, tracked: true } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } |     s1:Freed { symidx: temp_20_cmp_24_0, tracked: true } |     s2:Freed { symidx: temp_19_value_from_ptr_24_0, tracked: true } |     s3:Freed { symidx: i_21_2, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     93   label while.exit_25: 
.while.exit_25:
              #                     332  untrack b0_19 
              #                    occupy a3 with b0_19
              #                    release a3 with b0_19
              #                     331  untrack i_21_2 
              #                    occupy s3 with i_21_2
              #                    release s3 with i_21_2
              #                     330  untrack temp_19_value_from_ptr_24_0 
              #                    occupy s2 with temp_19_value_from_ptr_24_0
              #                    release s2 with temp_19_value_from_ptr_24_0
              #                     329  untrack a0_19 
              #                    occupy a0 with a0_19
              #                    release a0 with a0_19
              #                     328  untrack b1_19 
              #                    occupy a4 with b1_19
              #                    release a4 with b1_19
              #                     327  untrack a1_19 
              #                    occupy a1 with a1_19
              #                    release a1 with a1_19
              #                     326  untrack a2_19 
              #                    occupy a2 with a2_19
              #                    release a2 with a2_19
              #                     325  untrack b2_19 
              #                    occupy a5 with b2_19
              #                    release a5 with b2_19
              #                     270  mu c1_19:34 
              #                     334  untrack c1_19 
              #                    occupy a7 with c1_19
              #                    release a7 with c1_19
              #                     271  mu c2_19:34 
              #                     333  untrack c2_19 
              #                     272  mu c0_19:34 
              #                     335  untrack c0_19 
              #                    occupy a6 with c0_19
              #                    release a6 with c0_19
              #                     34   ret 0_0 
              #                    load from ra_add_0 in mem
    ld      ra,312(sp)
              #                    load from s0_add_0 in mem
    ld      s0,304(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,352
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     29   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 400|s0_main:8 at 392|a0:12 at 380|a1:12 at 368|a2:12 at 356|b0:12 at 344|b1:12 at 332|b2:12 at 320|c0:24 at 296|c1:12 at 284|c2:12 at 272|i _s33 _i0:4 at 268|i _s33 _i2:4 at 264|i _s33 _i5:4 at 260|i _s33 _i8:4 at 256|i _s33 _i11:4 at 252|none:4 at 248|temp_21_ele_ptr_of_a0_33:8 at 240|temp_22_ele_ptr_of_a1_33:8 at 232|temp_23_ele_ptr_of_a2_33:8 at 224|temp_24_ele_ptr_of_b0_33:8 at 216|temp_25_ele_ptr_of_b1_33:8 at 208|temp_26_ele_ptr_of_b2_33:8 at 200|temp_27_ele_ptr_of_c0_33:8 at 192|temp_28_ele_ptr_of_c1_33:8 at 184|temp_29_ele_ptr_of_c2_33:8 at 176|temp_30_ret_of_add _s33 _i0:4 at 172|x _s33 _i0:4 at 168|x _s33 _i1:4 at 164|x _s33 _i4:4 at 160|x _s33 _i7:4 at 156|none:4 at 152|temp_31_ptr_of_c2_33:8 at 144|temp_32_ele_of_c2_33 _s72 _i0:4 at 140|temp_33_ _s72 _i0:4 at 136|temp_34_arithop _s72 _i0:4 at 132|none:4 at 128|temp_35_ptr_of_c1_33:8 at 120|temp_36_ele_of_c1_33 _s63 _i0:4 at 116|temp_37_ _s63 _i0:4 at 112|temp_38_arithop _s63 _i0:4 at 108|none:4 at 104|temp_39_ptr_of_c0_33:8 at 96|temp_40_ele_of_c0_33 _s54 _i0:4 at 92|temp_41_ _s54 _i0:4 at 88|temp_42_arithop _s54 _i0:4 at 84|none:4 at 80|temp_43_ptr_of_a0_33:8 at 72|temp_44_ _s42 _i0:4 at 68|none:4 at 64|temp_45_ptr_of_a1_33:8 at 56|temp_47_ptr_of_a2_33:8 at 48|temp_49_ptr_of_b0_33:8 at 40|temp_51_ptr_of_b1_33:8 at 32|temp_53_ptr_of_b2_33:8 at 24|temp_55_arithop _s42 _i0:4 at 20|temp_56_value_from_ptr _s40 _i0:4 at 16|temp_57_cmp _s40 _i0:1 at 15|none:3 at 12|temp_58_value_from_ptr _s52 _i0:4 at 8|temp_59_cmp _s52 _i0:1 at 7|temp_61_cmp _s61 _i0:1 at 6|temp_63_cmp _s70 _i0:1 at 5|none:5 at 0
    addi    sp,sp,-408
              #                    store to ra_main_0 in mem offset legal
    sd      ra,400(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,392(sp)
    addi    s0,sp,408
              #                     273  M_0_1 = chi M_0_0:29 
              #                     274  L_0_1 = chi L_0_0:29 
              #                     275  N_0_1 = chi N_0_0:29 
              #                     104  alloc Array:f32:[Some(3_0)] [a0_33] 
              #                     106  alloc Array:f32:[Some(3_0)] [a1_33] 
              #                     108  alloc Array:f32:[Some(3_0)] [a2_33] 
              #                     110  alloc Array:f32:[Some(3_0)] [b0_33] 
              #                     112  alloc Array:f32:[Some(3_0)] [b1_33] 
              #                     114  alloc Array:f32:[Some(3_0)] [b2_33] 
              #                     116  alloc Array:f32:[Some(6_0)] [c0_33] 
              #                     118  alloc Array:f32:[Some(3_0)] [c1_33] 
              #                     120  alloc Array:f32:[Some(3_0)] [c2_33] 
              #                     121  alloc i32 [i_33] 
              #                     124  alloc ptr->f32 [temp_21_ele_ptr_of_a0_33_33] 
              #                     126  alloc ptr->f32 [temp_22_ele_ptr_of_a1_33_33] 
              #                     128  alloc ptr->f32 [temp_23_ele_ptr_of_a2_33_33] 
              #                     130  alloc ptr->f32 [temp_24_ele_ptr_of_b0_33_33] 
              #                     132  alloc ptr->f32 [temp_25_ele_ptr_of_b1_33_33] 
              #                     134  alloc ptr->f32 [temp_26_ele_ptr_of_b2_33_33] 
              #                     136  alloc ptr->f32 [temp_27_ele_ptr_of_c0_33_33] 
              #                     138  alloc ptr->f32 [temp_28_ele_ptr_of_c1_33_33] 
              #                     140  alloc ptr->f32 [temp_29_ele_ptr_of_c2_33_33] 
              #                     142  alloc i32 [temp_30_ret_of_add_33] 
              #                     145  alloc i32 [x_33] 
              #                     157  alloc ptr->f32 [temp_31_ptr_of_c2_33_72] 
              #                     159  alloc f32 [temp_32_ele_of_c2_33_72] 
              #                     162  alloc i32 [temp_33__72] 
              #                     166  alloc i32 [temp_34_arithop_72] 
              #                     169  alloc ptr->f32 [temp_35_ptr_of_c1_33_63] 
              #                     171  alloc f32 [temp_36_ele_of_c1_33_63] 
              #                     174  alloc i32 [temp_37__63] 
              #                     178  alloc i32 [temp_38_arithop_63] 
              #                     181  alloc ptr->f32 [temp_39_ptr_of_c0_33_54] 
              #                     183  alloc f32 [temp_40_ele_of_c0_33_54] 
              #                     186  alloc i32 [temp_41__54] 
              #                     190  alloc i32 [temp_42_arithop_54] 
              #                     193  alloc ptr->f32 [temp_43_ptr_of_a0_33_42] 
              #                     195  alloc f32 [temp_44__42] 
              #                     199  alloc ptr->f32 [temp_45_ptr_of_a1_33_42] 
              #                     201  alloc f32 [temp_46__42] 
              #                     205  alloc ptr->f32 [temp_47_ptr_of_a2_33_42] 
              #                     207  alloc f32 [temp_48__42] 
              #                     211  alloc ptr->f32 [temp_49_ptr_of_b0_33_42] 
              #                     213  alloc f32 [temp_50__42] 
              #                     217  alloc ptr->f32 [temp_51_ptr_of_b1_33_42] 
              #                     219  alloc f32 [temp_52__42] 
              #                     223  alloc ptr->f32 [temp_53_ptr_of_b2_33_42] 
              #                     225  alloc f32 [temp_54__42] 
              #                     229  alloc i32 [temp_55_arithop_42] 
              #                     232  alloc i32 [temp_56_value_from_ptr_40] 
              #                     235  alloc i1 [temp_57_cmp_40] 
              #                     241  alloc i32 [temp_58_value_from_ptr_52] 
              #                     244  alloc i1 [temp_59_cmp_52] 
              #                     250  alloc i32 [temp_60_value_from_ptr_61] 
              #                     253  alloc i1 [temp_61_cmp_61] 
              #                     259  alloc i32 [temp_62_value_from_ptr_70] 
              #                     262  alloc i1 [temp_63_cmp_70] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     97   store 3_0:i32 *N_0:ptr->i32 
              #                    occupy a0 with *N_0
              #                       load label N as ptr to reg
    la      a0, N
              #                    occupy reg a0 with *N_0
              #                    occupy a1 with 3_0
    li      a1, 3
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     98   N_0_2 = chi N_0_1:97 
              #                     99   store 3_0:i32 *M_0:ptr->i32 
              #                    occupy a2 with *M_0
              #                       load label M as ptr to reg
    la      a2, M
              #                    occupy reg a2 with *M_0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     100  M_0_2 = chi M_0_1:99 
              #                     101  store 3_0:i32 *L_0:ptr->i32 
              #                    occupy a3 with *L_0
              #                       load label L as ptr to reg
    la      a3, L
              #                    occupy reg a3 with *L_0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                     102  L_0_2 = chi L_0_1:101 
              #                     103   
              #                     105   
              #                     107   
              #                     109   
              #                     111   
              #                     113   
              #                     115   
              #                     117   
              #                     119   
              #                     122   
              #                     123  (nop) 
              #                     317  i_33_2 = i32 0_0 
              #                    occupy a4 with i_33_2
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_41 
    j       .while.head_41
              #                    regtab     a4:Freed { symidx: i_33_2, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     237  label while.head_41: 
.while.head_41:
              #                     233  temp_56_value_from_ptr_40_0 = load *M_0:ptr->i32 
              #                    occupy a0 with *M_0
              #                       load label M as ptr to reg
    la      a0, M
              #                    occupy reg a0 with *M_0
              #                    occupy a1 with temp_56_value_from_ptr_40_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     234  mu M_0_2:233 
              #                     236  temp_57_cmp_40_0 = icmp i32 Slt i_33_2, temp_56_value_from_ptr_40_0 
              #                    occupy a4 with i_33_2
              #                    occupy a1 with temp_56_value_from_ptr_40_0
              #                    occupy a2 with temp_57_cmp_40_0
    slt     a2,a4,a1
              #                    free a4
              #                    free a1
              #                    free a2
              #                     240  br i1 temp_57_cmp_40_0, label while.body_41, label while.exit_41 
              #                    occupy a2 with temp_57_cmp_40_0
              #                    free a2
              #                    occupy a2 with temp_57_cmp_40_0
    bnez    a2, .while.body_41
              #                    free a2
    j       .while.exit_41
              #                    regtab     a1:Freed { symidx: temp_56_value_from_ptr_40_0, tracked: true } |     a2:Freed { symidx: temp_57_cmp_40_0, tracked: true } |     a4:Freed { symidx: i_33_2, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     238  label while.body_41: 
.while.body_41:
              #                     194  temp_43_ptr_of_a0_33_42 = GEP a0_33_1:Array:f32:[Some(3_0)] [Some(i_33_2)] 
              #                    occupy a0 with temp_43_ptr_of_a0_33_42
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_33_2
    mv      a3, a4
              #                    free a4
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,380
              #                    free a0
              #                     196  temp_44__42_0 = sitofp i32 i_33_2 to f32 
              #                    occupy a4 with i_33_2
              #                    occupy fa0 with temp_44__42_0
    fcvt.s.w fa0,a4,rtz
              #                    free a4
              #                    free fa0
              #                     197  store temp_44__42_0:f32 temp_43_ptr_of_a0_33_42:ptr->f32 
              #                    occupy a0 with temp_43_ptr_of_a0_33_42
              #                    occupy fa0 with temp_44__42_0
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     198  a0_33_2 = chi a0_33_1:197 
              #                     200  temp_45_ptr_of_a1_33_42 = GEP a1_33_1:Array:f32:[Some(3_0)] [Some(i_33_2)] 
              #                    occupy a5 with temp_45_ptr_of_a1_33_42
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_33_2
    mv      a6, a4
              #                    free a4
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,368
              #                    free a5
              #                     202  (nop) 
              #                     203  store temp_44__42_0:f32 temp_45_ptr_of_a1_33_42:ptr->f32 
              #                    occupy a5 with temp_45_ptr_of_a1_33_42
              #                    occupy fa0 with temp_44__42_0
    fsw     fa0,0(a5)
              #                    free fa0
              #                    free a5
              #                     204  a1_33_2 = chi a1_33_1:203 
              #                     206  temp_47_ptr_of_a2_33_42 = GEP a2_33_1:Array:f32:[Some(3_0)] [Some(i_33_2)] 
              #                    occupy a7 with temp_47_ptr_of_a2_33_42
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_33_2
    mv      s1, a4
              #                    free a4
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,356
              #                    free a7
              #                     208  (nop) 
              #                     209  store temp_44__42_0:f32 temp_47_ptr_of_a2_33_42:ptr->f32 
              #                    occupy a7 with temp_47_ptr_of_a2_33_42
              #                    occupy fa0 with temp_44__42_0
    fsw     fa0,0(a7)
              #                    free fa0
              #                    free a7
              #                     210  a2_33_2 = chi a2_33_1:209 
              #                     212  temp_49_ptr_of_b0_33_42 = GEP b0_33_1:Array:f32:[Some(3_0)] [Some(i_33_2)] 
              #                    occupy s2 with temp_49_ptr_of_b0_33_42
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_33_2
    mv      s3, a4
              #                    free a4
              #                    occupy a4 with i_33_2
              #                    store to i_33_2 in mem offset legal
    sw      a4,264(sp)
              #                    release a4 with i_33_2
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,344
              #                    free s2
              #                     214  (nop) 
              #                     215  store temp_44__42_0:f32 temp_49_ptr_of_b0_33_42:ptr->f32 
              #                    occupy s2 with temp_49_ptr_of_b0_33_42
              #                    occupy fa0 with temp_44__42_0
    fsw     fa0,0(s2)
              #                    free fa0
              #                    free s2
              #                     216  b0_33_2 = chi b0_33_1:215 
              #                     218  temp_51_ptr_of_b1_33_42 = GEP b1_33_1:Array:f32:[Some(3_0)] [Some(i_33_2)] 
              #                    occupy a4 with temp_51_ptr_of_b1_33_42
    li      a4, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with i_33_2
              #                    load from i_33_2 in mem


    lw      s4,264(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with i_33_2
              #                    store to i_33_2 in mem offset legal
    sw      s4,264(sp)
              #                    release s4 with i_33_2
    add     a4,a4,s3
              #                    free s3
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,332
              #                    free a4
              #                    occupy a4 with temp_51_ptr_of_b1_33_42
              #                    store to temp_51_ptr_of_b1_33_42 in mem offset legal
    sd      a4,32(sp)
              #                    release a4 with temp_51_ptr_of_b1_33_42
              #                     220  (nop) 
              #                     221  store temp_44__42_0:f32 temp_51_ptr_of_b1_33_42:ptr->f32 
              #                    occupy a4 with temp_51_ptr_of_b1_33_42
              #                    load from temp_51_ptr_of_b1_33_42 in mem
    ld      a4,32(sp)
              #                    occupy fa0 with temp_44__42_0
    fsw     fa0,0(a4)
              #                    free fa0
              #                    free a4
              #                    occupy a4 with temp_51_ptr_of_b1_33_42
              #                    store to temp_51_ptr_of_b1_33_42 in mem offset legal
    sd      a4,32(sp)
              #                    release a4 with temp_51_ptr_of_b1_33_42
              #                     222  b1_33_2 = chi b1_33_1:221 
              #                     224  temp_53_ptr_of_b2_33_42 = GEP b2_33_1:Array:f32:[Some(3_0)] [Some(i_33_2)] 
              #                    occupy a4 with temp_53_ptr_of_b2_33_42
    li      a4, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with i_33_2
              #                    load from i_33_2 in mem


    lw      s4,264(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with i_33_2
              #                    store to i_33_2 in mem offset legal
    sw      s4,264(sp)
              #                    release s4 with i_33_2
    add     a4,a4,s3
              #                    free s3
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,320
              #                    free a4
              #                    occupy a4 with temp_53_ptr_of_b2_33_42
              #                    store to temp_53_ptr_of_b2_33_42 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_53_ptr_of_b2_33_42
              #                     226  (nop) 
              #                     227  store temp_44__42_0:f32 temp_53_ptr_of_b2_33_42:ptr->f32 
              #                    occupy a4 with temp_53_ptr_of_b2_33_42
              #                    load from temp_53_ptr_of_b2_33_42 in mem
    ld      a4,24(sp)
              #                    occupy fa0 with temp_44__42_0
    fsw     fa0,0(a4)
              #                    free fa0
              #                    free a4
              #                    occupy a4 with temp_53_ptr_of_b2_33_42
              #                    store to temp_53_ptr_of_b2_33_42 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_53_ptr_of_b2_33_42
              #                     228  b2_33_2 = chi b2_33_1:227 
              #                     230  temp_55_arithop_42_0 = Add i32 i_33_2, 1_0 
              #                    occupy a4 with i_33_2
              #                    load from i_33_2 in mem


    lw      a4,264(sp)
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_55_arithop_42_0
    ADDW    s4,a4,s3
              #                    free a4
              #                    occupy a4 with i_33_2
              #                    store to i_33_2 in mem offset legal
    sw      a4,264(sp)
              #                    release a4 with i_33_2
              #                    free s3
              #                    free s4
              #                    occupy s4 with temp_55_arithop_42_0
              #                    store to temp_55_arithop_42_0 in mem offset legal
    sw      s4,20(sp)
              #                    release s4 with temp_55_arithop_42_0
              #                     231  (nop) 
              #                     318  i_33_2 = i32 temp_55_arithop_42_0 
              #                    occupy a4 with temp_55_arithop_42_0
              #                    load from temp_55_arithop_42_0 in mem


    lw      a4,20(sp)
              #                    occupy s3 with i_33_2
    mv      s3, a4
              #                    free a4
              #                    occupy a4 with temp_55_arithop_42_0
              #                    store to temp_55_arithop_42_0 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_55_arithop_42_0
              #                    free s3
              #                    occupy s3 with i_33_2
              #                    store to i_33_2 in mem offset legal
    sw      s3,264(sp)
              #                    release s3 with i_33_2
              #                          jump label: while.head_41 
              #                    occupy fa0 with temp_44__42_0
              #                    store to temp_44__42_0 in mem offset legal
    fsw     fa0,68(sp)
              #                    release fa0 with temp_44__42_0
              #                    occupy a5 with temp_45_ptr_of_a1_33_42
              #                    store to temp_45_ptr_of_a1_33_42 in mem offset legal
    sd      a5,56(sp)
              #                    release a5 with temp_45_ptr_of_a1_33_42
              #                    occupy a2 with temp_57_cmp_40_0
              #                    store to temp_57_cmp_40_0 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_57_cmp_40_0
              #                    occupy a0 with temp_43_ptr_of_a0_33_42
              #                    store to temp_43_ptr_of_a0_33_42 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with temp_43_ptr_of_a0_33_42
              #                    occupy s2 with temp_49_ptr_of_b0_33_42
              #                    store to temp_49_ptr_of_b0_33_42 in mem offset legal
    sd      s2,40(sp)
              #                    release s2 with temp_49_ptr_of_b0_33_42
              #                    occupy a1 with temp_56_value_from_ptr_40_0
              #                    store to temp_56_value_from_ptr_40_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_56_value_from_ptr_40_0
              #                    occupy a7 with temp_47_ptr_of_a2_33_42
              #                    store to temp_47_ptr_of_a2_33_42 in mem offset legal
    sd      a7,48(sp)
              #                    release a7 with temp_47_ptr_of_a2_33_42
              #                    occupy a4 with i_33_2
              #                    load from i_33_2 in mem


    lw      a4,264(sp)
    j       .while.head_41
              #                    regtab     a1:Freed { symidx: temp_56_value_from_ptr_40_0, tracked: true } |     a2:Freed { symidx: temp_57_cmp_40_0, tracked: true } |     a4:Freed { symidx: i_33_2, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     239  label while.exit_41: 
.while.exit_41:
              #                     336  untrack i_33_2 
              #                    occupy a4 with i_33_2
              #                    release a4 with i_33_2
              #                     125  temp_21_ele_ptr_of_a0_33_33 = GEP a0_33_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a0 with temp_21_ele_ptr_of_a0_33_33
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,380
              #                    free a0
              #                     127  temp_22_ele_ptr_of_a1_33_33 = GEP a1_33_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a3 with temp_22_ele_ptr_of_a1_33_33
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,368
              #                    free a3
              #                     129  temp_23_ele_ptr_of_a2_33_33 = GEP a2_33_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a4 with temp_23_ele_ptr_of_a2_33_33
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,356
              #                    free a4
              #                     131  temp_24_ele_ptr_of_b0_33_33 = GEP b0_33_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a5 with temp_24_ele_ptr_of_b0_33_33
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,344
              #                    free a5
              #                     133  temp_25_ele_ptr_of_b1_33_33 = GEP b1_33_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a6 with temp_25_ele_ptr_of_b1_33_33
    li      a6, 0
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,332
              #                    free a6
              #                     135  temp_26_ele_ptr_of_b2_33_33 = GEP b2_33_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a7 with temp_26_ele_ptr_of_b2_33_33
    li      a7, 0
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,320
              #                    free a7
              #                     137  temp_27_ele_ptr_of_c0_33_33 = GEP c0_33_0:Array:f32:[Some(6_0)] [] 
              #                    occupy s1 with temp_27_ele_ptr_of_c0_33_33
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,296
              #                    free s1
              #                     139  temp_28_ele_ptr_of_c1_33_33 = GEP c1_33_0:Array:f32:[Some(3_0)] [] 
              #                    occupy s2 with temp_28_ele_ptr_of_c1_33_33
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,284
              #                    free s2
              #                    occupy s2 with temp_28_ele_ptr_of_c1_33_33
              #                    store to temp_28_ele_ptr_of_c1_33_33 in mem offset legal
    sd      s2,184(sp)
              #                    release s2 with temp_28_ele_ptr_of_c1_33_33
              #                     141  temp_29_ele_ptr_of_c2_33_33 = GEP c2_33_0:Array:f32:[Some(3_0)] [] 
              #                    occupy s2 with temp_29_ele_ptr_of_c2_33_33
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,272
              #                    free s2
              #                    occupy s2 with temp_29_ele_ptr_of_c2_33_33
              #                    store to temp_29_ele_ptr_of_c2_33_33 in mem offset legal
    sd      s2,176(sp)
              #                    release s2 with temp_29_ele_ptr_of_c2_33_33
              #                     143  temp_30_ret_of_add_33_0 =  Call i32 add_0(temp_21_ele_ptr_of_a0_33_33, temp_22_ele_ptr_of_a1_33_33, temp_23_ele_ptr_of_a2_33_33, temp_24_ele_ptr_of_b0_33_33, temp_25_ele_ptr_of_b1_33_33, temp_26_ele_ptr_of_b2_33_33, temp_27_ele_ptr_of_c0_33_33, temp_28_ele_ptr_of_c1_33_33, temp_29_ele_ptr_of_c2_33_33) 
              #                    saved register dumping to mem
              #                    occupy s2 with temp_29_ele_ptr_of_c2_33_33
              #                    load from temp_29_ele_ptr_of_c2_33_33 in mem
    ld      s2,176(sp)
              #                    store to c2_19 in mem offset legal
    sd      s2,-32(sp)
              #                    free s2
              #                    occupy s2 with temp_29_ele_ptr_of_c2_33_33
              #                    store to temp_29_ele_ptr_of_c2_33_33 in mem offset legal
    sd      s2,176(sp)
              #                    release s2 with temp_29_ele_ptr_of_c2_33_33
              #                    occupy s1 with temp_27_ele_ptr_of_c0_33_33
              #                    store to temp_27_ele_ptr_of_c0_33_33 in mem offset legal
    sd      s1,192(sp)
              #                    release s1 with temp_27_ele_ptr_of_c0_33_33
              #                    occupy a0 with temp_21_ele_ptr_of_a0_33_33
              #                    store to temp_21_ele_ptr_of_a0_33_33 in mem offset legal
    sd      a0,240(sp)
              #                    release a0 with temp_21_ele_ptr_of_a0_33_33
              #                    occupy a1 with temp_56_value_from_ptr_40_0
              #                    store to temp_56_value_from_ptr_40_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_56_value_from_ptr_40_0
              #                    occupy a2 with temp_57_cmp_40_0
              #                    store to temp_57_cmp_40_0 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_57_cmp_40_0
              #                    occupy a3 with temp_22_ele_ptr_of_a1_33_33
              #                    store to temp_22_ele_ptr_of_a1_33_33 in mem offset legal
    sd      a3,232(sp)
              #                    release a3 with temp_22_ele_ptr_of_a1_33_33
              #                    occupy a4 with temp_23_ele_ptr_of_a2_33_33
              #                    store to temp_23_ele_ptr_of_a2_33_33 in mem offset legal
    sd      a4,224(sp)
              #                    release a4 with temp_23_ele_ptr_of_a2_33_33
              #                    occupy a5 with temp_24_ele_ptr_of_b0_33_33
              #                    store to temp_24_ele_ptr_of_b0_33_33 in mem offset legal
    sd      a5,216(sp)
              #                    release a5 with temp_24_ele_ptr_of_b0_33_33
              #                    occupy a6 with temp_25_ele_ptr_of_b1_33_33
              #                    store to temp_25_ele_ptr_of_b1_33_33 in mem offset legal
    sd      a6,208(sp)
              #                    release a6 with temp_25_ele_ptr_of_b1_33_33
              #                    occupy a7 with temp_26_ele_ptr_of_b2_33_33
              #                    store to temp_26_ele_ptr_of_b2_33_33 in mem offset legal
    sd      a7,200(sp)
              #                    release a7 with temp_26_ele_ptr_of_b2_33_33
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_21_ele_ptr_of_a0_33_33_0
              #                    load from temp_21_ele_ptr_of_a0_33_33 in mem
    ld      a0,240(sp)
              #                    occupy a1 with _anonymous_of_temp_22_ele_ptr_of_a1_33_33_0
              #                    load from temp_22_ele_ptr_of_a1_33_33 in mem
    ld      a1,232(sp)
              #                    occupy a2 with _anonymous_of_temp_23_ele_ptr_of_a2_33_33_0
              #                    load from temp_23_ele_ptr_of_a2_33_33 in mem
    ld      a2,224(sp)
              #                    occupy a3 with _anonymous_of_temp_24_ele_ptr_of_b0_33_33_0
              #                    load from temp_24_ele_ptr_of_b0_33_33 in mem
    ld      a3,216(sp)
              #                    occupy a4 with _anonymous_of_temp_25_ele_ptr_of_b1_33_33_0
              #                    load from temp_25_ele_ptr_of_b1_33_33 in mem
    ld      a4,208(sp)
              #                    occupy a5 with _anonymous_of_temp_26_ele_ptr_of_b2_33_33_0
              #                    load from temp_26_ele_ptr_of_b2_33_33 in mem
    ld      a5,200(sp)
              #                    occupy a6 with _anonymous_of_temp_27_ele_ptr_of_c0_33_33_0
              #                    load from temp_27_ele_ptr_of_c0_33_33 in mem
    ld      a6,192(sp)
              #                    occupy a7 with _anonymous_of_temp_28_ele_ptr_of_c1_33_33_0
              #                    load from temp_28_ele_ptr_of_c1_33_33 in mem
    ld      a7,184(sp)
              #                    arg load ended


    call    add
              #                     346  untrack temp_23_ele_ptr_of_a2_33_33 
              #                     345  untrack temp_21_ele_ptr_of_a0_33_33 
              #                     343  untrack temp_25_ele_ptr_of_b1_33_33 
              #                     342  untrack temp_24_ele_ptr_of_b0_33_33 
              #                     341  untrack temp_27_ele_ptr_of_c0_33_33 
              #                     340  untrack temp_22_ele_ptr_of_a1_33_33 
              #                     339  untrack temp_28_ele_ptr_of_c1_33_33 
              #                     338  untrack temp_29_ele_ptr_of_c2_33_33 
              #                     337  untrack temp_26_ele_ptr_of_b2_33_33 
              #                     276  mu a0_33_1:143 
              #                     277  mu c2_33_0:143 
              #                     278  mu b0_33_1:143 
              #                     279  mu a2_33_1:143 
              #                     280  mu a1_33_1:143 
              #                     281  mu b1_33_1:143 
              #                     282  mu b2_33_1:143 
              #                     283  mu c0_33_0:143 
              #                     284  mu c1_33_0:143 
              #                     285  mu M_0_2:143 
              #                     286  b1_33_3 = chi b1_33_1:143 
              #                     287  c2_33_1 = chi c2_33_0:143 
              #                     288  c0_33_1 = chi c0_33_0:143 
              #                     289  c1_33_1 = chi c1_33_0:143 
              #                     290  a1_33_3 = chi a1_33_1:143 
              #                     291  b0_33_3 = chi b0_33_1:143 
              #                     292  a2_33_3 = chi a2_33_1:143 
              #                     293  a0_33_3 = chi a0_33_1:143 
              #                     294  b2_33_3 = chi b2_33_1:143 
              #                     144  (nop) 
              #                     146   
              #                     242  temp_58_value_from_ptr_52_0 = load *N_0:ptr->i32 
              #                    occupy a1 with *N_0
              #                       load label N as ptr to reg
    la      a1, N
              #                    occupy reg a1 with *N_0
              #                    occupy a2 with temp_58_value_from_ptr_52_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     243  mu N_0_2:242 
              #                     319  i_33_5 = i32 temp_30_ret_of_add_33_0 
              #                    occupy a0 with temp_30_ret_of_add_33_0
              #                    occupy a3 with i_33_5
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                     344  untrack temp_30_ret_of_add_33_0 
              #                    occupy a0 with temp_30_ret_of_add_33_0
              #                    release a0 with temp_30_ret_of_add_33_0
              #                          jump label: while.head_53 
    j       .while.head_53
              #                    regtab     a2:Freed { symidx: temp_58_value_from_ptr_52_0, tracked: true } |     a3:Freed { symidx: i_33_5, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     246  label while.head_53: 
.while.head_53:
              #                     245  temp_59_cmp_52_0 = icmp i32 Slt i_33_5, temp_58_value_from_ptr_52_0 
              #                    occupy a3 with i_33_5
              #                    occupy a2 with temp_58_value_from_ptr_52_0
              #                    occupy a0 with temp_59_cmp_52_0
    slt     a0,a3,a2
              #                    free a3
              #                    free a2
              #                    free a0
              #                     249  br i1 temp_59_cmp_52_0, label while.body_53, label while.exit_53 
              #                    occupy a0 with temp_59_cmp_52_0
              #                    free a0
              #                    occupy a0 with temp_59_cmp_52_0
    bnez    a0, .while.body_53
              #                    free a0
    j       .while.exit_53
              #                    regtab     a0:Freed { symidx: temp_59_cmp_52_0, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_52_0, tracked: true } |     a3:Freed { symidx: i_33_5, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     247  label while.body_53: 
.while.body_53:
              #                     182  temp_39_ptr_of_c0_33_54 = GEP c0_33_1:Array:f32:[Some(6_0)] [Some(i_33_5)] 
              #                    occupy a1 with temp_39_ptr_of_c0_33_54
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_33_5
    mv      a4, a3
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,296
              #                    free a1
              #                     184  temp_40_ele_of_c0_33_54_0 = load temp_39_ptr_of_c0_33_54:ptr->f32 
              #                    occupy a1 with temp_39_ptr_of_c0_33_54
              #                    occupy fa0 with temp_40_ele_of_c0_33_54_0
    flw     fa0,0(a1)
              #                    free fa0
              #                    free a1
              #                     185  mu c0_33_1:184 
              #                     187  temp_41__54_0 = fptosi f32 temp_40_ele_of_c0_33_54_0 to i32 
              #                    occupy fa0 with temp_40_ele_of_c0_33_54_0
              #                    occupy a5 with temp_41__54_0
    fcvt.w.s a5,fa0,rtz
              #                    free fa0
              #                    free a5
              #                     188  (nop) 
              #                     189   Call void putint_0(temp_41__54_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_59_cmp_52_0
              #                    store to temp_59_cmp_52_0 in mem offset legal
    sb      a0,7(sp)
              #                    release a0 with temp_59_cmp_52_0
              #                    occupy a1 with temp_39_ptr_of_c0_33_54
              #                    store to temp_39_ptr_of_c0_33_54 in mem offset legal
    sd      a1,96(sp)
              #                    release a1 with temp_39_ptr_of_c0_33_54
              #                    occupy a2 with temp_58_value_from_ptr_52_0
              #                    store to temp_58_value_from_ptr_52_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_58_value_from_ptr_52_0
              #                    occupy a3 with i_33_5
              #                    store to i_33_5 in mem offset legal
    sw      a3,260(sp)
              #                    release a3 with i_33_5
              #                    occupy a5 with temp_41__54_0
              #                    store to temp_41__54_0 in mem offset legal
    sw      a5,88(sp)
              #                    release a5 with temp_41__54_0
              #                    occupy fa0 with temp_40_ele_of_c0_33_54_0
              #                    store to temp_40_ele_of_c0_33_54_0 in mem offset legal
    fsw     fa0,92(sp)
              #                    release fa0 with temp_40_ele_of_c0_33_54_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_41__54_0_0
              #                    load from temp_41__54_0 in mem


    lw      a0,88(sp)
              #                    arg load ended


    call    putint
              #                     191  temp_42_arithop_54_0 = Add i32 i_33_5, 1_0 
              #                    occupy a0 with i_33_5
              #                    load from i_33_5 in mem


    lw      a0,260(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_42_arithop_54_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     192  (nop) 
              #                     320  i_33_5 = i32 temp_42_arithop_54_0 
              #                    occupy a2 with temp_42_arithop_54_0
              #                    occupy a0 with i_33_5
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_53 
              #                    occupy a2 with temp_42_arithop_54_0
              #                    store to temp_42_arithop_54_0 in mem offset legal
    sw      a2,84(sp)
              #                    release a2 with temp_42_arithop_54_0
              #                    occupy a2 with temp_58_value_from_ptr_52_0
              #                    load from temp_58_value_from_ptr_52_0 in mem


    lw      a2,8(sp)
              #                    occupy a0 with i_33_5
              #                    store to i_33_5 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with i_33_5
              #                    occupy a3 with i_33_5
              #                    load from i_33_5 in mem


    lw      a3,260(sp)
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: temp_59_cmp_52_0, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_52_0, tracked: true } |     a3:Freed { symidx: i_33_5, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     248  label while.exit_53: 
.while.exit_53:
              #                     347  untrack i_33_5 
              #                    occupy a3 with i_33_5
              #                    release a3 with i_33_5
              #                     147  (nop) 
              #                     148   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_59_cmp_52_0
              #                    store to temp_59_cmp_52_0 in mem offset legal
    sb      a0,7(sp)
              #                    release a0 with temp_59_cmp_52_0
              #                    occupy a2 with temp_58_value_from_ptr_52_0
              #                    store to temp_58_value_from_ptr_52_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_58_value_from_ptr_52_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     149  (nop) 
              #                     251  (nop) 
              #                     252  mu N_0_2:251 
              #                     321  i_33_8 = i32 0_0 
              #                    occupy a0 with i_33_8
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: i_33_8, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     255  label while.head_62: 
.while.head_62:
              #                     254  temp_61_cmp_61_0 = icmp i32 Slt i_33_8, temp_58_value_from_ptr_52_0 
              #                    occupy a0 with i_33_8
              #                    occupy a1 with temp_58_value_from_ptr_52_0
              #                    load from temp_58_value_from_ptr_52_0 in mem


    lw      a1,8(sp)
              #                    occupy a2 with temp_61_cmp_61_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     258  br i1 temp_61_cmp_61_0, label while.body_62, label while.exit_62 
              #                    occupy a2 with temp_61_cmp_61_0
              #                    free a2
              #                    occupy a2 with temp_61_cmp_61_0
    bnez    a2, .while.body_62
              #                    free a2
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: i_33_8, tracked: true } |     a1:Freed { symidx: temp_58_value_from_ptr_52_0, tracked: true } |     a2:Freed { symidx: temp_61_cmp_61_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     256  label while.body_62: 
.while.body_62:
              #                     170  temp_35_ptr_of_c1_33_63 = GEP c1_33_1:Array:f32:[Some(3_0)] [Some(i_33_8)] 
              #                    occupy a3 with temp_35_ptr_of_c1_33_63
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_33_8
    mv      a4, a0
              #                    free a0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,284
              #                    free a3
              #                     172  temp_36_ele_of_c1_33_63_0 = load temp_35_ptr_of_c1_33_63:ptr->f32 
              #                    occupy a3 with temp_35_ptr_of_c1_33_63
              #                    occupy fa0 with temp_36_ele_of_c1_33_63_0
    flw     fa0,0(a3)
              #                    free fa0
              #                    free a3
              #                     173  mu c1_33_1:172 
              #                     175  temp_37__63_0 = fptosi f32 temp_36_ele_of_c1_33_63_0 to i32 
              #                    occupy fa0 with temp_36_ele_of_c1_33_63_0
              #                    occupy a5 with temp_37__63_0
    fcvt.w.s a5,fa0,rtz
              #                    free fa0
              #                    free a5
              #                     176  (nop) 
              #                     177   Call void putint_0(temp_37__63_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_33_8
              #                    store to i_33_8 in mem offset legal
    sw      a0,256(sp)
              #                    release a0 with i_33_8
              #                    occupy a1 with temp_58_value_from_ptr_52_0
              #                    store to temp_58_value_from_ptr_52_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_58_value_from_ptr_52_0
              #                    occupy a2 with temp_61_cmp_61_0
              #                    store to temp_61_cmp_61_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_61_cmp_61_0
              #                    occupy a3 with temp_35_ptr_of_c1_33_63
              #                    store to temp_35_ptr_of_c1_33_63 in mem offset legal
    sd      a3,120(sp)
              #                    release a3 with temp_35_ptr_of_c1_33_63
              #                    occupy a5 with temp_37__63_0
              #                    store to temp_37__63_0 in mem offset legal
    sw      a5,112(sp)
              #                    release a5 with temp_37__63_0
              #                    occupy fa0 with temp_36_ele_of_c1_33_63_0
              #                    store to temp_36_ele_of_c1_33_63_0 in mem offset legal
    fsw     fa0,116(sp)
              #                    release fa0 with temp_36_ele_of_c1_33_63_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_37__63_0_0
              #                    load from temp_37__63_0 in mem


    lw      a0,112(sp)
              #                    arg load ended


    call    putint
              #                     179  temp_38_arithop_63_0 = Add i32 i_33_8, 1_0 
              #                    occupy a0 with i_33_8
              #                    load from i_33_8 in mem


    lw      a0,256(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_38_arithop_63_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     180  (nop) 
              #                     322  i_33_8 = i32 temp_38_arithop_63_0 
              #                    occupy a2 with temp_38_arithop_63_0
              #                    occupy a0 with i_33_8
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_62 
              #                    occupy a2 with temp_38_arithop_63_0
              #                    store to temp_38_arithop_63_0 in mem offset legal
    sw      a2,108(sp)
              #                    release a2 with temp_38_arithop_63_0
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: i_33_8, tracked: true } |     a1:Freed { symidx: temp_58_value_from_ptr_52_0, tracked: true } |     a2:Freed { symidx: temp_61_cmp_61_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     257  label while.exit_62: 
.while.exit_62:
              #                     348  untrack i_33_8 
              #                    occupy a0 with i_33_8
              #                    release a0 with i_33_8
              #                     150  (nop) 
              #                     151   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_58_value_from_ptr_52_0
              #                    store to temp_58_value_from_ptr_52_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_58_value_from_ptr_52_0
              #                    occupy a2 with temp_61_cmp_61_0
              #                    store to temp_61_cmp_61_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_61_cmp_61_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     152  (nop) 
              #                     260  (nop) 
              #                     261  mu N_0_2:260 
              #                     323  i_33_11 = i32 0_0 
              #                    occupy a0 with i_33_11
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_71 
    j       .while.head_71
              #                    regtab     a0:Freed { symidx: i_33_11, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     264  label while.head_71: 
.while.head_71:
              #                     263  temp_63_cmp_70_0 = icmp i32 Slt i_33_11, temp_58_value_from_ptr_52_0 
              #                    occupy a0 with i_33_11
              #                    occupy a1 with temp_58_value_from_ptr_52_0
              #                    load from temp_58_value_from_ptr_52_0 in mem


    lw      a1,8(sp)
              #                    occupy a2 with temp_63_cmp_70_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     267  br i1 temp_63_cmp_70_0, label while.body_71, label while.exit_71 
              #                    occupy a2 with temp_63_cmp_70_0
              #                    free a2
              #                    occupy a2 with temp_63_cmp_70_0
    bnez    a2, .while.body_71
              #                    free a2
    j       .while.exit_71
              #                    regtab     a0:Freed { symidx: i_33_11, tracked: true } |     a1:Freed { symidx: temp_58_value_from_ptr_52_0, tracked: true } |     a2:Freed { symidx: temp_63_cmp_70_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     265  label while.body_71: 
.while.body_71:
              #                     158  temp_31_ptr_of_c2_33_72 = GEP c2_33_1:Array:f32:[Some(3_0)] [Some(i_33_11)] 
              #                    occupy a3 with temp_31_ptr_of_c2_33_72
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_33_11
    mv      a4, a0
              #                    free a0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,272
              #                    free a3
              #                     160  temp_32_ele_of_c2_33_72_0 = load temp_31_ptr_of_c2_33_72:ptr->f32 
              #                    occupy a3 with temp_31_ptr_of_c2_33_72
              #                    occupy fa0 with temp_32_ele_of_c2_33_72_0
    flw     fa0,0(a3)
              #                    free fa0
              #                    free a3
              #                     161  mu c2_33_1:160 
              #                     163  temp_33__72_0 = fptosi f32 temp_32_ele_of_c2_33_72_0 to i32 
              #                    occupy fa0 with temp_32_ele_of_c2_33_72_0
              #                    occupy a5 with temp_33__72_0
    fcvt.w.s a5,fa0,rtz
              #                    free fa0
              #                    free a5
              #                     164  (nop) 
              #                     165   Call void putint_0(temp_33__72_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_33_11
              #                    store to i_33_11 in mem offset legal
    sw      a0,252(sp)
              #                    release a0 with i_33_11
              #                    occupy a1 with temp_58_value_from_ptr_52_0
              #                    store to temp_58_value_from_ptr_52_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_58_value_from_ptr_52_0
              #                    occupy a2 with temp_63_cmp_70_0
              #                    store to temp_63_cmp_70_0 in mem offset legal
    sb      a2,5(sp)
              #                    release a2 with temp_63_cmp_70_0
              #                    occupy a3 with temp_31_ptr_of_c2_33_72
              #                    store to temp_31_ptr_of_c2_33_72 in mem offset legal
    sd      a3,144(sp)
              #                    release a3 with temp_31_ptr_of_c2_33_72
              #                    occupy a5 with temp_33__72_0
              #                    store to temp_33__72_0 in mem offset legal
    sw      a5,136(sp)
              #                    release a5 with temp_33__72_0
              #                    occupy fa0 with temp_32_ele_of_c2_33_72_0
              #                    store to temp_32_ele_of_c2_33_72_0 in mem offset legal
    fsw     fa0,140(sp)
              #                    release fa0 with temp_32_ele_of_c2_33_72_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_33__72_0_0
              #                    load from temp_33__72_0 in mem


    lw      a0,136(sp)
              #                    arg load ended


    call    putint
              #                     167  temp_34_arithop_72_0 = Add i32 i_33_11, 1_0 
              #                    occupy a0 with i_33_11
              #                    load from i_33_11 in mem


    lw      a0,252(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_34_arithop_72_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     168  (nop) 
              #                     324  i_33_11 = i32 temp_34_arithop_72_0 
              #                    occupy a2 with temp_34_arithop_72_0
              #                    occupy a0 with i_33_11
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_71 
              #                    occupy a2 with temp_34_arithop_72_0
              #                    store to temp_34_arithop_72_0 in mem offset legal
    sw      a2,132(sp)
              #                    release a2 with temp_34_arithop_72_0
    j       .while.head_71
              #                    regtab     a0:Freed { symidx: i_33_11, tracked: true } |     a1:Freed { symidx: temp_58_value_from_ptr_52_0, tracked: true } |     a2:Freed { symidx: temp_63_cmp_70_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     266  label while.exit_71: 
.while.exit_71:
              #                     350  untrack temp_58_value_from_ptr_52_0 
              #                    occupy a1 with temp_58_value_from_ptr_52_0
              #                    release a1 with temp_58_value_from_ptr_52_0
              #                     349  untrack i_33_11 
              #                    occupy a0 with i_33_11
              #                    release a0 with i_33_11
              #                     153  (nop) 
              #                     154   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_63_cmp_70_0
              #                    store to temp_63_cmp_70_0 in mem offset legal
    sb      a2,5(sp)
              #                    release a2 with temp_63_cmp_70_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     295  mu M_0_2:156 
              #                     296  mu L_0_2:156 
              #                     297  mu N_0_2:156 
              #                     156  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,400(sp)
              #                    load from s0_main_0 in mem
    ld      s0,392(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,408
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl N
              #                     17   global i32 N_0 
    .type N,@object
N:
    .word 0
    .align 4
    .globl L
              #                     16   global i32 L_0 
    .type L,@object
L:
    .word 0
    .align 4
    .globl M
              #                     15   global i32 M_0 
    .type M,@object
M:
    .word 0
