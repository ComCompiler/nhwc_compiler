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
              #                     28   Define sub_0 "a0_19,a1_19,a2_19,b0_19,b1_19,b2_19,c0_19,c1_19,c2_19," -> sub_ret_0 
    .globl sub
    .type sub,@function
sub:
              #                    mem layout:|c2:8 at 336|c2:8 at 328|c2:8 at 320|c2:8 at 312|ra_sub:8 at 304|s0_sub:8 at 296|a0:8 at 288|a0:8 at 280|a1:8 at 272|a1:8 at 264|a2:8 at 256|a2:8 at 248|b0:8 at 240|b0:8 at 232|b1:8 at 224|b1:8 at 216|b2:8 at 208|b2:8 at 200|c0:8 at 192|c0:8 at 184|c0:8 at 176|c0:8 at 168|c1:8 at 160|c1:8 at 152|c1:8 at 144|c1:8 at 136|i _s21 _i0:4 at 132|i _s21 _i2:4 at 128|temp_0_ptr_of_c0_19:8 at 120|temp_1_ptr_of_a0_19:8 at 112|temp_2_ele_of_a0_19 _s26 _i0:4 at 108|none:4 at 104|temp_3_ptr_of_b0_19:8 at 96|temp_4_ele_of_b0_19 _s26 _i0:4 at 92|temp_5_arithop _s26 _i0:4 at 88|temp_6_ptr_of_c1_19:8 at 80|temp_7_ptr_of_a1_19:8 at 72|temp_8_ele_of_a1_19 _s26 _i0:4 at 68|none:4 at 64|temp_9_ptr_of_b1_19:8 at 56|temp_10_ele_of_b1_19 _s26 _i0:4 at 52|temp_11_arithop _s26 _i0:4 at 48|temp_12_ptr_of_c2_19:8 at 40|temp_13_ptr_of_a2_19:8 at 32|temp_14_ele_of_a2_19 _s26 _i0:4 at 28|none:4 at 24|temp_15_ptr_of_b2_19:8 at 16|temp_16_ele_of_b2_19 _s26 _i0:4 at 12|temp_17_arithop _s26 _i0:4 at 8|temp_18_arithop _s26 _i0:4 at 4|temp_19_cmp _s24 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-344
              #                    store to ra_sub_0 in mem offset legal
    sd      ra,304(sp)
              #                    store to s0_sub_0 in mem offset legal
    sd      s0,296(sp)
    addi    s0,sp,344
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
              #                     86   alloc i1 [temp_19_cmp_24] 
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
              #                     299  i_21_2 = i32 0_0 
              #                    occupy s1 with i_21_2
    li      s1, 0
              #                    free s1
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: a0_19, tracked: true } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } |     s1:Freed { symidx: i_21_2, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     88   label while.head_25: 
.while.head_25:
              #                     87   temp_19_cmp_24_0 = icmp i32 Slt i_21_2, 3_0 
              #                    occupy s1 with i_21_2
              #                    occupy s2 with 3_0
    li      s2, 3
              #                    occupy s3 with temp_19_cmp_24_0
    slt     s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                     91   br i1 temp_19_cmp_24_0, label while.body_25, label while.exit_25 
              #                    occupy s3 with temp_19_cmp_24_0
              #                    free s3
              #                    occupy s3 with temp_19_cmp_24_0
    bnez    s3, .while.body_25
              #                    free s3
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: a0_19, tracked: true } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } |     s1:Freed { symidx: i_21_2, tracked: true } |     s3:Freed { symidx: temp_19_cmp_24_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     89   label while.body_25: 
.while.body_25:
              #                     36   temp_0_ptr_of_c0_19_26 = GEP c0_19:ptr->f32 [Some(i_21_2)] 
              #                    occupy s2 with temp_0_ptr_of_c0_19_26
    li      s2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with i_21_2
    mv      s4, s1
              #                    free s1
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
              #                    occupy a6 with c0_19
    add     s2,s2,a6
              #                    free a6
              #                    free s2
              #                     38   temp_1_ptr_of_a0_19_26 = GEP a0_19:Array:f32:[None] [Some(i_21_2)] 
              #                    occupy s5 with temp_1_ptr_of_a0_19_26
    li      s5, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with i_21_2
    mv      s6, s1
              #                    free s1
              #                    occupy s1 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s1,128(sp)
              #                    release s1 with i_21_2
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy a0 with a0_19
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                     40   temp_2_ele_of_a0_19_26_0 = load temp_1_ptr_of_a0_19_26:ptr->f32 
              #                    occupy s5 with temp_1_ptr_of_a0_19_26
              #                    occupy fa0 with temp_2_ele_of_a0_19_26_0
    flw     fa0,0(s5)
              #                    free fa0
              #                    free s5
              #                     41   mu a0_19:40 
              #                     43   temp_3_ptr_of_b0_19_26 = GEP b0_19:Array:f32:[None] [Some(i_21_2)] 
              #                    occupy s1 with temp_3_ptr_of_b0_19_26
    li      s1, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with i_21_2
              #                    load from i_21_2 in mem


    lw      s8,128(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,128(sp)
              #                    release s8 with i_21_2
    add     s1,s1,s7
              #                    free s7
    slli s1,s1,2
              #                    occupy a3 with b0_19
    add     s1,s1,a3
              #                    free a3
              #                    occupy a3 with b0_19
              #                    store to b0_19 in mem offset legal
    sd      a3,232(sp)
              #                    release a3 with b0_19
              #                    free s1
              #                     45   temp_4_ele_of_b0_19_26_0 = load temp_3_ptr_of_b0_19_26:ptr->f32 
              #                    occupy s1 with temp_3_ptr_of_b0_19_26
              #                    occupy fa1 with temp_4_ele_of_b0_19_26_0
    flw     fa1,0(s1)
              #                    free fa1
              #                    free s1
              #                     46   mu b0_19:45 
              #                     48   temp_5_arithop_26_0 = Sub f32 temp_2_ele_of_a0_19_26_0, temp_4_ele_of_b0_19_26_0 
              #                    occupy fa0 with temp_2_ele_of_a0_19_26_0
              #                    occupy fa1 with temp_4_ele_of_b0_19_26_0
              #                    occupy fa2 with temp_5_arithop_26_0
    fsub.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     49   store temp_5_arithop_26_0:f32 temp_0_ptr_of_c0_19_26:ptr->f32 
              #                    occupy s2 with temp_0_ptr_of_c0_19_26
              #                    occupy fa2 with temp_5_arithop_26_0
    fsw     fa2,0(s2)
              #                    free fa2
              #                    free s2
              #                     50   c0_19 = chi c0_19:49 
              #                     52   temp_6_ptr_of_c1_19_26 = GEP c1_19:ptr->f32 [Some(i_21_2)] 
              #                    occupy a3 with temp_6_ptr_of_c1_19_26
    li      a3, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with i_21_2
              #                    load from i_21_2 in mem


    lw      s8,128(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,128(sp)
              #                    release s8 with i_21_2
    add     a3,a3,s7
              #                    free s7
    slli a3,a3,2
              #                    occupy a7 with c1_19
    add     a3,a3,a7
              #                    free a7
              #                    occupy a7 with c1_19
              #                    store to c1_19 in mem offset legal
    sd      a7,136(sp)
              #                    release a7 with c1_19
              #                    free a3
              #                     54   temp_7_ptr_of_a1_19_26 = GEP a1_19:Array:f32:[None] [Some(i_21_2)] 
              #                    occupy a7 with temp_7_ptr_of_a1_19_26
    li      a7, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with i_21_2
              #                    load from i_21_2 in mem


    lw      s8,128(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,128(sp)
              #                    release s8 with i_21_2
    add     a7,a7,s7
              #                    free s7
    slli a7,a7,2
              #                    occupy a1 with a1_19
    add     a7,a7,a1
              #                    free a1
              #                    occupy a1 with a1_19
              #                    store to a1_19 in mem offset legal
    sd      a1,264(sp)
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


    lw      s8,128(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,128(sp)
              #                    release s8 with i_21_2
    add     a1,a1,s7
              #                    free s7
    slli a1,a1,2
              #                    occupy a4 with b1_19
    add     a1,a1,a4
              #                    free a4
              #                    occupy a4 with b1_19
              #                    store to b1_19 in mem offset legal
    sd      a4,216(sp)
              #                    release a4 with b1_19
              #                    free a1
              #                     61   temp_10_ele_of_b1_19_26_0 = load temp_9_ptr_of_b1_19_26:ptr->f32 
              #                    occupy a1 with temp_9_ptr_of_b1_19_26
              #                    occupy fa4 with temp_10_ele_of_b1_19_26_0
    flw     fa4,0(a1)
              #                    free fa4
              #                    free a1
              #                     62   mu b1_19:61 
              #                     64   temp_11_arithop_26_0 = Sub f32 temp_8_ele_of_a1_19_26_0, temp_10_ele_of_b1_19_26_0 
              #                    occupy fa3 with temp_8_ele_of_a1_19_26_0
              #                    occupy fa4 with temp_10_ele_of_b1_19_26_0
              #                    occupy fa5 with temp_11_arithop_26_0
    fsub.s  fa5,fa3,fa4
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


    lw      s8,128(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,128(sp)
              #                    release s8 with i_21_2
    add     a4,a4,s7
              #                    free s7
    slli a4,a4,2
              #                    occupy s7 with c2_19
              #                    load from c2_19 in mem
    ld      s7,312(sp)
    add     a4,a4,s7
              #                    free s7
              #                    occupy s7 with c2_19
              #                    store to c2_19 in mem offset legal
    sd      s7,312(sp)
              #                    release s7 with c2_19
              #                    free a4
              #                    occupy a4 with temp_12_ptr_of_c2_19_26
              #                    store to temp_12_ptr_of_c2_19_26 in mem offset legal
    sd      a4,40(sp)
              #                    release a4 with temp_12_ptr_of_c2_19_26
              #                     70   temp_13_ptr_of_a2_19_26 = GEP a2_19:Array:f32:[None] [Some(i_21_2)] 
              #                    occupy a4 with temp_13_ptr_of_a2_19_26
    li      a4, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with i_21_2
              #                    load from i_21_2 in mem


    lw      s8,128(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,128(sp)
              #                    release s8 with i_21_2
    add     a4,a4,s7
              #                    free s7
    slli a4,a4,2
              #                    occupy a2 with a2_19
    add     a4,a4,a2
              #                    free a2
              #                    occupy a2 with a2_19
              #                    store to a2_19 in mem offset legal
    sd      a2,248(sp)
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


    lw      s8,128(sp)
    mv      s7, s8
              #                    free s8
              #                    occupy s8 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s8,128(sp)
              #                    release s8 with i_21_2
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
              #                    occupy a5 with b2_19
    add     a2,a2,a5
              #                    free a5
              #                    occupy a5 with b2_19
              #                    store to b2_19 in mem offset legal
    sd      a5,200(sp)
              #                    release a5 with b2_19
              #                    free a2
              #                     77   temp_16_ele_of_b2_19_26_0 = load temp_15_ptr_of_b2_19_26:ptr->f32 
              #                    occupy a2 with temp_15_ptr_of_b2_19_26
              #                    occupy fa7 with temp_16_ele_of_b2_19_26_0
    flw     fa7,0(a2)
              #                    free fa7
              #                    free a2
              #                     78   mu b2_19:77 
              #                     80   temp_17_arithop_26_0 = Sub f32 temp_14_ele_of_a2_19_26_0, temp_16_ele_of_b2_19_26_0 
              #                    occupy fa6 with temp_14_ele_of_a2_19_26_0
              #                    occupy fa7 with temp_16_ele_of_b2_19_26_0
              #                    occupy f8 with temp_17_arithop_26_0
    fsub.s  f8,fa6,fa7
              #                    free fa6
              #                    free fa7
              #                    free f8
              #                     81   store temp_17_arithop_26_0:f32 temp_12_ptr_of_c2_19_26:ptr->f32 
              #                    occupy a5 with temp_12_ptr_of_c2_19_26
              #                    load from temp_12_ptr_of_c2_19_26 in mem
    ld      a5,40(sp)
              #                    occupy f8 with temp_17_arithop_26_0
    fsw     f8,0(a5)
              #                    free f8
              #                    free a5
              #                    occupy a5 with temp_12_ptr_of_c2_19_26
              #                    store to temp_12_ptr_of_c2_19_26 in mem offset legal
    sd      a5,40(sp)
              #                    release a5 with temp_12_ptr_of_c2_19_26
              #                     82   c2_19 = chi c2_19:81 
              #                     84   temp_18_arithop_26_0 = Add i32 i_21_2, 1_0 
              #                    occupy a5 with i_21_2
              #                    load from i_21_2 in mem


    lw      a5,128(sp)
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with temp_18_arithop_26_0
    ADDW    s8,a5,s7
              #                    free a5
              #                    occupy a5 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      a5,128(sp)
              #                    release a5 with i_21_2
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_18_arithop_26_0
              #                    store to temp_18_arithop_26_0 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_18_arithop_26_0
              #                     85   (nop) 
              #                     300  i_21_2 = i32 temp_18_arithop_26_0 
              #                    occupy a5 with temp_18_arithop_26_0
              #                    load from temp_18_arithop_26_0 in mem


    lw      a5,4(sp)
              #                    occupy s7 with i_21_2
    mv      s7, a5
              #                    free a5
              #                    occupy a5 with temp_18_arithop_26_0
              #                    store to temp_18_arithop_26_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_18_arithop_26_0
              #                    free s7
              #                    occupy s7 with i_21_2
              #                    store to i_21_2 in mem offset legal
    sw      s7,128(sp)
              #                    release s7 with i_21_2
              #                          jump label: while.head_25 
              #                    occupy fa7 with temp_16_ele_of_b2_19_26_0
              #                    store to temp_16_ele_of_b2_19_26_0 in mem offset legal
    fsw     fa7,12(sp)
              #                    release fa7 with temp_16_ele_of_b2_19_26_0
              #                    occupy a2 with temp_15_ptr_of_b2_19_26
              #                    store to temp_15_ptr_of_b2_19_26 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_15_ptr_of_b2_19_26
              #                    occupy a2 with a2_19
              #                    load from a2_19 in mem
    ld      a2,248(sp)
              #                    occupy s2 with temp_0_ptr_of_c0_19_26
              #                    store to temp_0_ptr_of_c0_19_26 in mem offset legal
    sd      s2,120(sp)
              #                    release s2 with temp_0_ptr_of_c0_19_26
              #                    occupy s5 with temp_1_ptr_of_a0_19_26
              #                    store to temp_1_ptr_of_a0_19_26 in mem offset legal
    sd      s5,112(sp)
              #                    release s5 with temp_1_ptr_of_a0_19_26
              #                    occupy a3 with temp_6_ptr_of_c1_19_26
              #                    store to temp_6_ptr_of_c1_19_26 in mem offset legal
    sd      a3,80(sp)
              #                    release a3 with temp_6_ptr_of_c1_19_26
              #                    occupy a3 with b0_19
              #                    load from b0_19 in mem
    ld      a3,232(sp)
              #                    occupy fa2 with temp_5_arithop_26_0
              #                    store to temp_5_arithop_26_0 in mem offset legal
    fsw     fa2,88(sp)
              #                    release fa2 with temp_5_arithop_26_0
              #                    occupy fa5 with temp_11_arithop_26_0
              #                    store to temp_11_arithop_26_0 in mem offset legal
    fsw     fa5,48(sp)
              #                    release fa5 with temp_11_arithop_26_0
              #                    occupy fa1 with temp_4_ele_of_b0_19_26_0
              #                    store to temp_4_ele_of_b0_19_26_0 in mem offset legal
    fsw     fa1,92(sp)
              #                    release fa1 with temp_4_ele_of_b0_19_26_0
              #                    occupy fa0 with temp_2_ele_of_a0_19_26_0
              #                    store to temp_2_ele_of_a0_19_26_0 in mem offset legal
    fsw     fa0,108(sp)
              #                    release fa0 with temp_2_ele_of_a0_19_26_0
              #                    occupy a1 with temp_9_ptr_of_b1_19_26
              #                    store to temp_9_ptr_of_b1_19_26 in mem offset legal
    sd      a1,56(sp)
              #                    release a1 with temp_9_ptr_of_b1_19_26
              #                    occupy a1 with a1_19
              #                    load from a1_19 in mem
    ld      a1,264(sp)
              #                    occupy a5 with b2_19
              #                    load from b2_19 in mem
    ld      a5,200(sp)
              #                    occupy s3 with temp_19_cmp_24_0
              #                    store to temp_19_cmp_24_0 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_19_cmp_24_0
              #                    occupy fa4 with temp_10_ele_of_b1_19_26_0
              #                    store to temp_10_ele_of_b1_19_26_0 in mem offset legal
    fsw     fa4,52(sp)
              #                    release fa4 with temp_10_ele_of_b1_19_26_0
              #                    occupy a7 with temp_7_ptr_of_a1_19_26
              #                    store to temp_7_ptr_of_a1_19_26 in mem offset legal
    sd      a7,72(sp)
              #                    release a7 with temp_7_ptr_of_a1_19_26
              #                    occupy a7 with c1_19
              #                    load from c1_19 in mem
    ld      a7,136(sp)
              #                    occupy s1 with temp_3_ptr_of_b0_19_26
              #                    store to temp_3_ptr_of_b0_19_26 in mem offset legal
    sd      s1,96(sp)
              #                    release s1 with temp_3_ptr_of_b0_19_26
              #                    occupy s1 with i_21_2
              #                    load from i_21_2 in mem


    lw      s1,128(sp)
              #                    occupy fa6 with temp_14_ele_of_a2_19_26_0
              #                    store to temp_14_ele_of_a2_19_26_0 in mem offset legal
    fsw     fa6,28(sp)
              #                    release fa6 with temp_14_ele_of_a2_19_26_0
              #                    occupy f8 with temp_17_arithop_26_0
              #                    store to temp_17_arithop_26_0 in mem offset legal
    fsw     f8,8(sp)
              #                    release f8 with temp_17_arithop_26_0
              #                    occupy fa3 with temp_8_ele_of_a1_19_26_0
              #                    store to temp_8_ele_of_a1_19_26_0 in mem offset legal
    fsw     fa3,68(sp)
              #                    release fa3 with temp_8_ele_of_a1_19_26_0
              #                    occupy a4 with temp_13_ptr_of_a2_19_26
              #                    store to temp_13_ptr_of_a2_19_26 in mem offset legal
    sd      a4,32(sp)
              #                    release a4 with temp_13_ptr_of_a2_19_26
              #                    occupy a4 with b1_19
              #                    load from b1_19 in mem
    ld      a4,216(sp)
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: a0_19, tracked: true } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } |     s1:Freed { symidx: i_21_2, tracked: true } |     s3:Freed { symidx: temp_19_cmp_24_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     90   label while.exit_25: 
.while.exit_25:
              #                     315  untrack i_21_2 
              #                    occupy s1 with i_21_2
              #                    release s1 with i_21_2
              #                     314  untrack b2_19 
              #                    occupy a5 with b2_19
              #                    release a5 with b2_19
              #                     313  untrack a2_19 
              #                    occupy a2 with a2_19
              #                    release a2 with a2_19
              #                     312  untrack a1_19 
              #                    occupy a1 with a1_19
              #                    release a1 with a1_19
              #                     311  untrack a0_19 
              #                    occupy a0 with a0_19
              #                    release a0 with a0_19
              #                     310  untrack b1_19 
              #                    occupy a4 with b1_19
              #                    release a4 with b1_19
              #                     309  untrack b0_19 
              #                    occupy a3 with b0_19
              #                    release a3 with b0_19
              #                     255  mu c2_19:34 
              #                     316  untrack c2_19 
              #                     256  mu c0_19:34 
              #                     317  untrack c0_19 
              #                    occupy a6 with c0_19
              #                    release a6 with c0_19
              #                     257  mu c1_19:34 
              #                     318  untrack c1_19 
              #                    occupy a7 with c1_19
              #                    release a7 with c1_19
              #                     34   ret 0_0 
              #                    load from ra_sub_0 in mem
    ld      ra,304(sp)
              #                    load from s0_sub_0 in mem
    ld      s0,296(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,344
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     29   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 384|s0_main:8 at 376|a0:12 at 364|a1:12 at 352|a2:12 at 340|b0:12 at 328|b1:12 at 316|b2:12 at 304|c0:24 at 280|c1:12 at 268|c2:12 at 256|i _s33 _i0:4 at 252|i _s33 _i2:4 at 248|i _s33 _i5:4 at 244|i _s33 _i8:4 at 240|i _s33 _i11:4 at 236|none:4 at 232|temp_20_ele_ptr_of_a0_33:8 at 224|temp_21_ele_ptr_of_a1_33:8 at 216|temp_22_ele_ptr_of_a2_33:8 at 208|temp_23_ele_ptr_of_b0_33:8 at 200|temp_24_ele_ptr_of_b1_33:8 at 192|temp_25_ele_ptr_of_b2_33:8 at 184|temp_26_ele_ptr_of_c0_33:8 at 176|temp_27_ele_ptr_of_c1_33:8 at 168|temp_28_ele_ptr_of_c2_33:8 at 160|temp_29_ret_of_sub _s33 _i0:4 at 156|x _s33 _i0:4 at 152|x _s33 _i1:4 at 148|x _s33 _i4:4 at 144|x _s33 _i7:4 at 140|none:4 at 136|temp_30_ptr_of_c2_33:8 at 128|temp_31_ele_of_c2_33 _s72 _i0:4 at 124|temp_32_ _s72 _i0:4 at 120|temp_33_arithop _s72 _i0:4 at 116|none:4 at 112|temp_34_ptr_of_c1_33:8 at 104|temp_35_ele_of_c1_33 _s63 _i0:4 at 100|temp_36_ _s63 _i0:4 at 96|temp_37_arithop _s63 _i0:4 at 92|none:4 at 88|temp_38_ptr_of_c0_33:8 at 80|temp_39_ele_of_c0_33 _s54 _i0:4 at 76|temp_40_ _s54 _i0:4 at 72|temp_41_arithop _s54 _i0:4 at 68|none:4 at 64|temp_42_ptr_of_a0_33:8 at 56|temp_43_ _s42 _i0:4 at 52|none:4 at 48|temp_44_ptr_of_a1_33:8 at 40|temp_46_ptr_of_a2_33:8 at 32|temp_48_ptr_of_b0_33:8 at 24|temp_50_ptr_of_b1_33:8 at 16|temp_52_ptr_of_b2_33:8 at 8|temp_54_arithop _s42 _i0:4 at 4|temp_55_cmp _s40 _i0:1 at 3|temp_56_cmp _s52 _i0:1 at 2|temp_57_cmp _s61 _i0:1 at 1|temp_58_cmp _s70 _i0:1 at 0
    addi    sp,sp,-392
              #                    store to ra_main_0 in mem offset legal
    sd      ra,384(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,376(sp)
    addi    s0,sp,392
              #                     258  M_0_1 = chi M_0_0:29 
              #                     259  L_0_1 = chi L_0_0:29 
              #                     260  N_0_1 = chi N_0_0:29 
              #                     101  alloc Array:f32:[Some(3_0)] [a0_33] 
              #                     103  alloc Array:f32:[Some(3_0)] [a1_33] 
              #                     105  alloc Array:f32:[Some(3_0)] [a2_33] 
              #                     107  alloc Array:f32:[Some(3_0)] [b0_33] 
              #                     109  alloc Array:f32:[Some(3_0)] [b1_33] 
              #                     111  alloc Array:f32:[Some(3_0)] [b2_33] 
              #                     113  alloc Array:f32:[Some(6_0)] [c0_33] 
              #                     115  alloc Array:f32:[Some(3_0)] [c1_33] 
              #                     117  alloc Array:f32:[Some(3_0)] [c2_33] 
              #                     118  alloc i32 [i_33] 
              #                     121  alloc ptr->f32 [temp_20_ele_ptr_of_a0_33_33] 
              #                     123  alloc ptr->f32 [temp_21_ele_ptr_of_a1_33_33] 
              #                     125  alloc ptr->f32 [temp_22_ele_ptr_of_a2_33_33] 
              #                     127  alloc ptr->f32 [temp_23_ele_ptr_of_b0_33_33] 
              #                     129  alloc ptr->f32 [temp_24_ele_ptr_of_b1_33_33] 
              #                     131  alloc ptr->f32 [temp_25_ele_ptr_of_b2_33_33] 
              #                     133  alloc ptr->f32 [temp_26_ele_ptr_of_c0_33_33] 
              #                     135  alloc ptr->f32 [temp_27_ele_ptr_of_c1_33_33] 
              #                     137  alloc ptr->f32 [temp_28_ele_ptr_of_c2_33_33] 
              #                     139  alloc i32 [temp_29_ret_of_sub_33] 
              #                     142  alloc i32 [x_33] 
              #                     154  alloc ptr->f32 [temp_30_ptr_of_c2_33_72] 
              #                     156  alloc f32 [temp_31_ele_of_c2_33_72] 
              #                     159  alloc i32 [temp_32__72] 
              #                     163  alloc i32 [temp_33_arithop_72] 
              #                     166  alloc ptr->f32 [temp_34_ptr_of_c1_33_63] 
              #                     168  alloc f32 [temp_35_ele_of_c1_33_63] 
              #                     171  alloc i32 [temp_36__63] 
              #                     175  alloc i32 [temp_37_arithop_63] 
              #                     178  alloc ptr->f32 [temp_38_ptr_of_c0_33_54] 
              #                     180  alloc f32 [temp_39_ele_of_c0_33_54] 
              #                     183  alloc i32 [temp_40__54] 
              #                     187  alloc i32 [temp_41_arithop_54] 
              #                     190  alloc ptr->f32 [temp_42_ptr_of_a0_33_42] 
              #                     192  alloc f32 [temp_43__42] 
              #                     196  alloc ptr->f32 [temp_44_ptr_of_a1_33_42] 
              #                     198  alloc f32 [temp_45__42] 
              #                     202  alloc ptr->f32 [temp_46_ptr_of_a2_33_42] 
              #                     204  alloc f32 [temp_47__42] 
              #                     208  alloc ptr->f32 [temp_48_ptr_of_b0_33_42] 
              #                     210  alloc f32 [temp_49__42] 
              #                     214  alloc ptr->f32 [temp_50_ptr_of_b1_33_42] 
              #                     216  alloc f32 [temp_51__42] 
              #                     220  alloc ptr->f32 [temp_52_ptr_of_b2_33_42] 
              #                     222  alloc f32 [temp_53__42] 
              #                     226  alloc i32 [temp_54_arithop_42] 
              #                     229  alloc i1 [temp_55_cmp_40] 
              #                     235  alloc i1 [temp_56_cmp_52] 
              #                     241  alloc i1 [temp_57_cmp_61] 
              #                     247  alloc i1 [temp_58_cmp_70] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     94   store 3_0:i32 *N_0:ptr->i32 
              #                    occupy a0 with *N_0
              #                       load label N as ptr to reg
    la      a0, N
              #                    occupy reg a0 with *N_0
              #                    occupy a1 with 3_0
    li      a1, 3
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     95   N_0_2 = chi N_0_1:94 
              #                     96   store 3_0:i32 *M_0:ptr->i32 
              #                    occupy a2 with *M_0
              #                       load label M as ptr to reg
    la      a2, M
              #                    occupy reg a2 with *M_0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     97   M_0_2 = chi M_0_1:96 
              #                     98   store 3_0:i32 *L_0:ptr->i32 
              #                    occupy a3 with *L_0
              #                       load label L as ptr to reg
    la      a3, L
              #                    occupy reg a3 with *L_0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                     99   L_0_2 = chi L_0_1:98 
              #                     100   
              #                     102   
              #                     104   
              #                     106   
              #                     108   
              #                     110   
              #                     112   
              #                     114   
              #                     116   
              #                     119   
              #                     120  (nop) 
              #                     301  i_33_2 = i32 0_0 
              #                    occupy a4 with i_33_2
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_41 
    j       .while.head_41
              #                    regtab     a4:Freed { symidx: i_33_2, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     231  label while.head_41: 
.while.head_41:
              #                     230  temp_55_cmp_40_0 = icmp i32 Slt i_33_2, 3_0 
              #                    occupy a4 with i_33_2
              #                    occupy a0 with 3_0
    li      a0, 3
              #                    occupy a1 with temp_55_cmp_40_0
    slt     a1,a4,a0
              #                    free a4
              #                    free a0
              #                    free a1
              #                     234  br i1 temp_55_cmp_40_0, label while.body_41, label while.exit_41 
              #                    occupy a1 with temp_55_cmp_40_0
              #                    free a1
              #                    occupy a1 with temp_55_cmp_40_0
    bnez    a1, .while.body_41
              #                    free a1
    j       .while.exit_41
              #                    regtab     a1:Freed { symidx: temp_55_cmp_40_0, tracked: true } |     a4:Freed { symidx: i_33_2, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     232  label while.body_41: 
.while.body_41:
              #                     191  temp_42_ptr_of_a0_33_42 = GEP a0_33_1:Array:f32:[Some(3_0)] [Some(i_33_2)] 
              #                    occupy a0 with temp_42_ptr_of_a0_33_42
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_33_2
    mv      a2, a4
              #                    free a4
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,364
              #                    free a0
              #                     193  temp_43__42_0 = sitofp i32 i_33_2 to f32 
              #                    occupy a4 with i_33_2
              #                    occupy fa0 with temp_43__42_0
    fcvt.s.w fa0,a4,rtz
              #                    free a4
              #                    free fa0
              #                     194  store temp_43__42_0:f32 temp_42_ptr_of_a0_33_42:ptr->f32 
              #                    occupy a0 with temp_42_ptr_of_a0_33_42
              #                    occupy fa0 with temp_43__42_0
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     195  a0_33_2 = chi a0_33_1:194 
              #                     197  temp_44_ptr_of_a1_33_42 = GEP a1_33_1:Array:f32:[Some(3_0)] [Some(i_33_2)] 
              #                    occupy a3 with temp_44_ptr_of_a1_33_42
    li      a3, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_33_2
    mv      a5, a4
              #                    free a4
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,352
              #                    free a3
              #                     199  (nop) 
              #                     200  store temp_43__42_0:f32 temp_44_ptr_of_a1_33_42:ptr->f32 
              #                    occupy a3 with temp_44_ptr_of_a1_33_42
              #                    occupy fa0 with temp_43__42_0
    fsw     fa0,0(a3)
              #                    free fa0
              #                    free a3
              #                     201  a1_33_2 = chi a1_33_1:200 
              #                     203  temp_46_ptr_of_a2_33_42 = GEP a2_33_1:Array:f32:[Some(3_0)] [Some(i_33_2)] 
              #                    occupy a6 with temp_46_ptr_of_a2_33_42
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_33_2
    mv      a7, a4
              #                    free a4
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,340
              #                    free a6
              #                     205  (nop) 
              #                     206  store temp_43__42_0:f32 temp_46_ptr_of_a2_33_42:ptr->f32 
              #                    occupy a6 with temp_46_ptr_of_a2_33_42
              #                    occupy fa0 with temp_43__42_0
    fsw     fa0,0(a6)
              #                    free fa0
              #                    free a6
              #                     207  a2_33_2 = chi a2_33_1:206 
              #                     209  temp_48_ptr_of_b0_33_42 = GEP b0_33_1:Array:f32:[Some(3_0)] [Some(i_33_2)] 
              #                    occupy s1 with temp_48_ptr_of_b0_33_42
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_33_2
    mv      s2, a4
              #                    free a4
              #                    occupy a4 with i_33_2
              #                    store to i_33_2 in mem offset legal
    sw      a4,248(sp)
              #                    release a4 with i_33_2
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,328
              #                    free s1
              #                     211  (nop) 
              #                     212  store temp_43__42_0:f32 temp_48_ptr_of_b0_33_42:ptr->f32 
              #                    occupy s1 with temp_48_ptr_of_b0_33_42
              #                    occupy fa0 with temp_43__42_0
    fsw     fa0,0(s1)
              #                    free fa0
              #                    free s1
              #                     213  b0_33_2 = chi b0_33_1:212 
              #                     215  temp_50_ptr_of_b1_33_42 = GEP b1_33_1:Array:f32:[Some(3_0)] [Some(i_33_2)] 
              #                    occupy a4 with temp_50_ptr_of_b1_33_42
    li      a4, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with i_33_2
              #                    load from i_33_2 in mem


    lw      s4,248(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with i_33_2
              #                    store to i_33_2 in mem offset legal
    sw      s4,248(sp)
              #                    release s4 with i_33_2
    add     a4,a4,s3
              #                    free s3
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,316
              #                    free a4
              #                    occupy a4 with temp_50_ptr_of_b1_33_42
              #                    store to temp_50_ptr_of_b1_33_42 in mem offset legal
    sd      a4,16(sp)
              #                    release a4 with temp_50_ptr_of_b1_33_42
              #                     217  (nop) 
              #                     218  store temp_43__42_0:f32 temp_50_ptr_of_b1_33_42:ptr->f32 
              #                    occupy a4 with temp_50_ptr_of_b1_33_42
              #                    load from temp_50_ptr_of_b1_33_42 in mem
    ld      a4,16(sp)
              #                    occupy fa0 with temp_43__42_0
    fsw     fa0,0(a4)
              #                    free fa0
              #                    free a4
              #                    occupy a4 with temp_50_ptr_of_b1_33_42
              #                    store to temp_50_ptr_of_b1_33_42 in mem offset legal
    sd      a4,16(sp)
              #                    release a4 with temp_50_ptr_of_b1_33_42
              #                     219  b1_33_2 = chi b1_33_1:218 
              #                     221  temp_52_ptr_of_b2_33_42 = GEP b2_33_1:Array:f32:[Some(3_0)] [Some(i_33_2)] 
              #                    occupy a4 with temp_52_ptr_of_b2_33_42
    li      a4, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with i_33_2
              #                    load from i_33_2 in mem


    lw      s4,248(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with i_33_2
              #                    store to i_33_2 in mem offset legal
    sw      s4,248(sp)
              #                    release s4 with i_33_2
    add     a4,a4,s3
              #                    free s3
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,304
              #                    free a4
              #                    occupy a4 with temp_52_ptr_of_b2_33_42
              #                    store to temp_52_ptr_of_b2_33_42 in mem offset legal
    sd      a4,8(sp)
              #                    release a4 with temp_52_ptr_of_b2_33_42
              #                     223  (nop) 
              #                     224  store temp_43__42_0:f32 temp_52_ptr_of_b2_33_42:ptr->f32 
              #                    occupy a4 with temp_52_ptr_of_b2_33_42
              #                    load from temp_52_ptr_of_b2_33_42 in mem
    ld      a4,8(sp)
              #                    occupy fa0 with temp_43__42_0
    fsw     fa0,0(a4)
              #                    free fa0
              #                    free a4
              #                    occupy a4 with temp_52_ptr_of_b2_33_42
              #                    store to temp_52_ptr_of_b2_33_42 in mem offset legal
    sd      a4,8(sp)
              #                    release a4 with temp_52_ptr_of_b2_33_42
              #                     225  b2_33_2 = chi b2_33_1:224 
              #                     227  temp_54_arithop_42_0 = Add i32 i_33_2, 1_0 
              #                    occupy a4 with i_33_2
              #                    load from i_33_2 in mem


    lw      a4,248(sp)
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_54_arithop_42_0
    ADDW    s4,a4,s3
              #                    free a4
              #                    occupy a4 with i_33_2
              #                    store to i_33_2 in mem offset legal
    sw      a4,248(sp)
              #                    release a4 with i_33_2
              #                    free s3
              #                    free s4
              #                    occupy s4 with temp_54_arithop_42_0
              #                    store to temp_54_arithop_42_0 in mem offset legal
    sw      s4,4(sp)
              #                    release s4 with temp_54_arithop_42_0
              #                     228  (nop) 
              #                     302  i_33_2 = i32 temp_54_arithop_42_0 
              #                    occupy a4 with temp_54_arithop_42_0
              #                    load from temp_54_arithop_42_0 in mem


    lw      a4,4(sp)
              #                    occupy s3 with i_33_2
    mv      s3, a4
              #                    free a4
              #                    occupy a4 with temp_54_arithop_42_0
              #                    store to temp_54_arithop_42_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_54_arithop_42_0
              #                    free s3
              #                    occupy s3 with i_33_2
              #                    store to i_33_2 in mem offset legal
    sw      s3,248(sp)
              #                    release s3 with i_33_2
              #                          jump label: while.head_41 
              #                    occupy s1 with temp_48_ptr_of_b0_33_42
              #                    store to temp_48_ptr_of_b0_33_42 in mem offset legal
    sd      s1,24(sp)
              #                    release s1 with temp_48_ptr_of_b0_33_42
              #                    occupy a1 with temp_55_cmp_40_0
              #                    store to temp_55_cmp_40_0 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_55_cmp_40_0
              #                    occupy a0 with temp_42_ptr_of_a0_33_42
              #                    store to temp_42_ptr_of_a0_33_42 in mem offset legal
    sd      a0,56(sp)
              #                    release a0 with temp_42_ptr_of_a0_33_42
              #                    occupy a4 with i_33_2
              #                    load from i_33_2 in mem


    lw      a4,248(sp)
              #                    occupy fa0 with temp_43__42_0
              #                    store to temp_43__42_0 in mem offset legal
    fsw     fa0,52(sp)
              #                    release fa0 with temp_43__42_0
              #                    occupy a3 with temp_44_ptr_of_a1_33_42
              #                    store to temp_44_ptr_of_a1_33_42 in mem offset legal
    sd      a3,40(sp)
              #                    release a3 with temp_44_ptr_of_a1_33_42
              #                    occupy a6 with temp_46_ptr_of_a2_33_42
              #                    store to temp_46_ptr_of_a2_33_42 in mem offset legal
    sd      a6,32(sp)
              #                    release a6 with temp_46_ptr_of_a2_33_42
    j       .while.head_41
              #                    regtab     a1:Freed { symidx: temp_55_cmp_40_0, tracked: true } |     a4:Freed { symidx: i_33_2, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     233  label while.exit_41: 
.while.exit_41:
              #                     319  untrack i_33_2 
              #                    occupy a4 with i_33_2
              #                    release a4 with i_33_2
              #                     122  temp_20_ele_ptr_of_a0_33_33 = GEP a0_33_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a0 with temp_20_ele_ptr_of_a0_33_33
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,364
              #                    free a0
              #                     124  temp_21_ele_ptr_of_a1_33_33 = GEP a1_33_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a2 with temp_21_ele_ptr_of_a1_33_33
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,352
              #                    free a2
              #                     126  temp_22_ele_ptr_of_a2_33_33 = GEP a2_33_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a3 with temp_22_ele_ptr_of_a2_33_33
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,340
              #                    free a3
              #                     128  temp_23_ele_ptr_of_b0_33_33 = GEP b0_33_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a4 with temp_23_ele_ptr_of_b0_33_33
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,328
              #                    free a4
              #                     130  temp_24_ele_ptr_of_b1_33_33 = GEP b1_33_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a5 with temp_24_ele_ptr_of_b1_33_33
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,316
              #                    free a5
              #                     132  temp_25_ele_ptr_of_b2_33_33 = GEP b2_33_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a6 with temp_25_ele_ptr_of_b2_33_33
    li      a6, 0
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,304
              #                    free a6
              #                     134  temp_26_ele_ptr_of_c0_33_33 = GEP c0_33_0:Array:f32:[Some(6_0)] [] 
              #                    occupy a7 with temp_26_ele_ptr_of_c0_33_33
    li      a7, 0
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,280
              #                    free a7
              #                     136  temp_27_ele_ptr_of_c1_33_33 = GEP c1_33_0:Array:f32:[Some(3_0)] [] 
              #                    occupy s1 with temp_27_ele_ptr_of_c1_33_33
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,268
              #                    free s1
              #                     138  temp_28_ele_ptr_of_c2_33_33 = GEP c2_33_0:Array:f32:[Some(3_0)] [] 
              #                    occupy s2 with temp_28_ele_ptr_of_c2_33_33
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,256
              #                    free s2
              #                    occupy s2 with temp_28_ele_ptr_of_c2_33_33
              #                    store to temp_28_ele_ptr_of_c2_33_33 in mem offset legal
    sd      s2,160(sp)
              #                    release s2 with temp_28_ele_ptr_of_c2_33_33
              #                     140  temp_29_ret_of_sub_33_0 =  Call i32 sub_0(temp_20_ele_ptr_of_a0_33_33, temp_21_ele_ptr_of_a1_33_33, temp_22_ele_ptr_of_a2_33_33, temp_23_ele_ptr_of_b0_33_33, temp_24_ele_ptr_of_b1_33_33, temp_25_ele_ptr_of_b2_33_33, temp_26_ele_ptr_of_c0_33_33, temp_27_ele_ptr_of_c1_33_33, temp_28_ele_ptr_of_c2_33_33) 
              #                    saved register dumping to mem
              #                    occupy s2 with temp_28_ele_ptr_of_c2_33_33
              #                    load from temp_28_ele_ptr_of_c2_33_33 in mem
    ld      s2,160(sp)
              #                    store to c2_19 in mem offset legal
    sd      s2,-32(sp)
              #                    free s2
              #                    occupy s2 with temp_28_ele_ptr_of_c2_33_33
              #                    store to temp_28_ele_ptr_of_c2_33_33 in mem offset legal
    sd      s2,160(sp)
              #                    release s2 with temp_28_ele_ptr_of_c2_33_33
              #                    occupy s1 with temp_27_ele_ptr_of_c1_33_33
              #                    store to temp_27_ele_ptr_of_c1_33_33 in mem offset legal
    sd      s1,168(sp)
              #                    release s1 with temp_27_ele_ptr_of_c1_33_33
              #                    occupy a0 with temp_20_ele_ptr_of_a0_33_33
              #                    store to temp_20_ele_ptr_of_a0_33_33 in mem offset legal
    sd      a0,224(sp)
              #                    release a0 with temp_20_ele_ptr_of_a0_33_33
              #                    occupy a1 with temp_55_cmp_40_0
              #                    store to temp_55_cmp_40_0 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_55_cmp_40_0
              #                    occupy a2 with temp_21_ele_ptr_of_a1_33_33
              #                    store to temp_21_ele_ptr_of_a1_33_33 in mem offset legal
    sd      a2,216(sp)
              #                    release a2 with temp_21_ele_ptr_of_a1_33_33
              #                    occupy a3 with temp_22_ele_ptr_of_a2_33_33
              #                    store to temp_22_ele_ptr_of_a2_33_33 in mem offset legal
    sd      a3,208(sp)
              #                    release a3 with temp_22_ele_ptr_of_a2_33_33
              #                    occupy a4 with temp_23_ele_ptr_of_b0_33_33
              #                    store to temp_23_ele_ptr_of_b0_33_33 in mem offset legal
    sd      a4,200(sp)
              #                    release a4 with temp_23_ele_ptr_of_b0_33_33
              #                    occupy a5 with temp_24_ele_ptr_of_b1_33_33
              #                    store to temp_24_ele_ptr_of_b1_33_33 in mem offset legal
    sd      a5,192(sp)
              #                    release a5 with temp_24_ele_ptr_of_b1_33_33
              #                    occupy a6 with temp_25_ele_ptr_of_b2_33_33
              #                    store to temp_25_ele_ptr_of_b2_33_33 in mem offset legal
    sd      a6,184(sp)
              #                    release a6 with temp_25_ele_ptr_of_b2_33_33
              #                    occupy a7 with temp_26_ele_ptr_of_c0_33_33
              #                    store to temp_26_ele_ptr_of_c0_33_33 in mem offset legal
    sd      a7,176(sp)
              #                    release a7 with temp_26_ele_ptr_of_c0_33_33
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_20_ele_ptr_of_a0_33_33_0
              #                    load from temp_20_ele_ptr_of_a0_33_33 in mem
    ld      a0,224(sp)
              #                    occupy a1 with _anonymous_of_temp_21_ele_ptr_of_a1_33_33_0
              #                    load from temp_21_ele_ptr_of_a1_33_33 in mem
    ld      a1,216(sp)
              #                    occupy a2 with _anonymous_of_temp_22_ele_ptr_of_a2_33_33_0
              #                    load from temp_22_ele_ptr_of_a2_33_33 in mem
    ld      a2,208(sp)
              #                    occupy a3 with _anonymous_of_temp_23_ele_ptr_of_b0_33_33_0
              #                    load from temp_23_ele_ptr_of_b0_33_33 in mem
    ld      a3,200(sp)
              #                    occupy a4 with _anonymous_of_temp_24_ele_ptr_of_b1_33_33_0
              #                    load from temp_24_ele_ptr_of_b1_33_33 in mem
    ld      a4,192(sp)
              #                    occupy a5 with _anonymous_of_temp_25_ele_ptr_of_b2_33_33_0
              #                    load from temp_25_ele_ptr_of_b2_33_33 in mem
    ld      a5,184(sp)
              #                    occupy a6 with _anonymous_of_temp_26_ele_ptr_of_c0_33_33_0
              #                    load from temp_26_ele_ptr_of_c0_33_33 in mem
    ld      a6,176(sp)
              #                    occupy a7 with _anonymous_of_temp_27_ele_ptr_of_c1_33_33_0
              #                    load from temp_27_ele_ptr_of_c1_33_33 in mem
    ld      a7,168(sp)
              #                    arg load ended


    call    sub
              #                     329  untrack temp_28_ele_ptr_of_c2_33_33 
              #                     328  untrack temp_27_ele_ptr_of_c1_33_33 
              #                     327  untrack temp_25_ele_ptr_of_b2_33_33 
              #                     326  untrack temp_21_ele_ptr_of_a1_33_33 
              #                     325  untrack temp_20_ele_ptr_of_a0_33_33 
              #                     324  untrack temp_23_ele_ptr_of_b0_33_33 
              #                     323  untrack temp_26_ele_ptr_of_c0_33_33 
              #                     321  untrack temp_24_ele_ptr_of_b1_33_33 
              #                     320  untrack temp_22_ele_ptr_of_a2_33_33 
              #                     261  mu a0_33_1:140 
              #                     262  mu a1_33_1:140 
              #                     263  mu b0_33_1:140 
              #                     264  mu b2_33_1:140 
              #                     265  mu b1_33_1:140 
              #                     266  mu a2_33_1:140 
              #                     267  mu c0_33_0:140 
              #                     268  mu c1_33_0:140 
              #                     269  mu c2_33_0:140 
              #                     270  c1_33_1 = chi c1_33_0:140 
              #                     271  a2_33_3 = chi a2_33_1:140 
              #                     272  c2_33_1 = chi c2_33_0:140 
              #                     273  b2_33_3 = chi b2_33_1:140 
              #                     274  b0_33_3 = chi b0_33_1:140 
              #                     275  a0_33_3 = chi a0_33_1:140 
              #                     276  b1_33_3 = chi b1_33_1:140 
              #                     277  a1_33_3 = chi a1_33_1:140 
              #                     278  c0_33_1 = chi c0_33_0:140 
              #                     141  (nop) 
              #                     143   
              #                     303  i_33_5 = i32 temp_29_ret_of_sub_33_0 
              #                    occupy a0 with temp_29_ret_of_sub_33_0
              #                    occupy a1 with i_33_5
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     322  untrack temp_29_ret_of_sub_33_0 
              #                    occupy a0 with temp_29_ret_of_sub_33_0
              #                    release a0 with temp_29_ret_of_sub_33_0
              #                          jump label: while.head_53 
    j       .while.head_53
              #                    regtab     a1:Freed { symidx: i_33_5, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     237  label while.head_53: 
.while.head_53:
              #                     236  temp_56_cmp_52_0 = icmp i32 Slt i_33_5, 3_0 
              #                    occupy a1 with i_33_5
              #                    occupy a0 with 3_0
    li      a0, 3
              #                    occupy a2 with temp_56_cmp_52_0
    slt     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     240  br i1 temp_56_cmp_52_0, label while.body_53, label while.exit_53 
              #                    occupy a2 with temp_56_cmp_52_0
              #                    free a2
              #                    occupy a2 with temp_56_cmp_52_0
    bnez    a2, .while.body_53
              #                    free a2
    j       .while.exit_53
              #                    regtab     a1:Freed { symidx: i_33_5, tracked: true } |     a2:Freed { symidx: temp_56_cmp_52_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     238  label while.body_53: 
.while.body_53:
              #                     179  temp_38_ptr_of_c0_33_54 = GEP c0_33_1:Array:f32:[Some(6_0)] [Some(i_33_5)] 
              #                    occupy a0 with temp_38_ptr_of_c0_33_54
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_33_5
    mv      a3, a1
              #                    free a1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,280
              #                    free a0
              #                     181  temp_39_ele_of_c0_33_54_0 = load temp_38_ptr_of_c0_33_54:ptr->f32 
              #                    occupy a0 with temp_38_ptr_of_c0_33_54
              #                    occupy fa0 with temp_39_ele_of_c0_33_54_0
    flw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     182  mu c0_33_1:181 
              #                     184  temp_40__54_0 = fptosi f32 temp_39_ele_of_c0_33_54_0 to i32 
              #                    occupy fa0 with temp_39_ele_of_c0_33_54_0
              #                    occupy a4 with temp_40__54_0
    fcvt.w.s a4,fa0,rtz
              #                    free fa0
              #                    free a4
              #                     185  (nop) 
              #                     186   Call void putint_0(temp_40__54_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_38_ptr_of_c0_33_54
              #                    store to temp_38_ptr_of_c0_33_54 in mem offset legal
    sd      a0,80(sp)
              #                    release a0 with temp_38_ptr_of_c0_33_54
              #                    occupy a1 with i_33_5
              #                    store to i_33_5 in mem offset legal
    sw      a1,244(sp)
              #                    release a1 with i_33_5
              #                    occupy a2 with temp_56_cmp_52_0
              #                    store to temp_56_cmp_52_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_56_cmp_52_0
              #                    occupy a4 with temp_40__54_0
              #                    store to temp_40__54_0 in mem offset legal
    sw      a4,72(sp)
              #                    release a4 with temp_40__54_0
              #                    occupy fa0 with temp_39_ele_of_c0_33_54_0
              #                    store to temp_39_ele_of_c0_33_54_0 in mem offset legal
    fsw     fa0,76(sp)
              #                    release fa0 with temp_39_ele_of_c0_33_54_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_40__54_0_0
              #                    load from temp_40__54_0 in mem


    lw      a0,72(sp)
              #                    arg load ended


    call    putint
              #                     188  temp_41_arithop_54_0 = Add i32 i_33_5, 1_0 
              #                    occupy a0 with i_33_5
              #                    load from i_33_5 in mem


    lw      a0,244(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_41_arithop_54_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     189  (nop) 
              #                     304  i_33_5 = i32 temp_41_arithop_54_0 
              #                    occupy a2 with temp_41_arithop_54_0
              #                    occupy a0 with i_33_5
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_53 
              #                    occupy a0 with i_33_5
              #                    store to i_33_5 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with i_33_5
              #                    occupy a1 with i_33_5
              #                    load from i_33_5 in mem


    lw      a1,244(sp)
              #                    occupy a2 with temp_41_arithop_54_0
              #                    store to temp_41_arithop_54_0 in mem offset legal
    sw      a2,68(sp)
              #                    release a2 with temp_41_arithop_54_0
    j       .while.head_53
              #                    regtab     a1:Freed { symidx: i_33_5, tracked: true } |     a2:Freed { symidx: temp_56_cmp_52_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     239  label while.exit_53: 
.while.exit_53:
              #                     330  untrack i_33_5 
              #                    occupy a1 with i_33_5
              #                    release a1 with i_33_5
              #                     144  (nop) 
              #                     145  (nop) 
              #                     146   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_56_cmp_52_0
              #                    store to temp_56_cmp_52_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_56_cmp_52_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     305  i_33_8 = i32 0_0 
              #                    occupy a0 with i_33_8
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: i_33_8, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     243  label while.head_62: 
.while.head_62:
              #                     242  temp_57_cmp_61_0 = icmp i32 Slt i_33_8, 3_0 
              #                    occupy a0 with i_33_8
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    occupy a2 with temp_57_cmp_61_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     246  br i1 temp_57_cmp_61_0, label while.body_62, label while.exit_62 
              #                    occupy a2 with temp_57_cmp_61_0
              #                    free a2
              #                    occupy a2 with temp_57_cmp_61_0
    bnez    a2, .while.body_62
              #                    free a2
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: i_33_8, tracked: true } |     a2:Freed { symidx: temp_57_cmp_61_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     244  label while.body_62: 
.while.body_62:
              #                     167  temp_34_ptr_of_c1_33_63 = GEP c1_33_1:Array:f32:[Some(3_0)] [Some(i_33_8)] 
              #                    occupy a1 with temp_34_ptr_of_c1_33_63
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_33_8
    mv      a3, a0
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,268
              #                    free a1
              #                     169  temp_35_ele_of_c1_33_63_0 = load temp_34_ptr_of_c1_33_63:ptr->f32 
              #                    occupy a1 with temp_34_ptr_of_c1_33_63
              #                    occupy fa0 with temp_35_ele_of_c1_33_63_0
    flw     fa0,0(a1)
              #                    free fa0
              #                    free a1
              #                     170  mu c1_33_1:169 
              #                     172  temp_36__63_0 = fptosi f32 temp_35_ele_of_c1_33_63_0 to i32 
              #                    occupy fa0 with temp_35_ele_of_c1_33_63_0
              #                    occupy a4 with temp_36__63_0
    fcvt.w.s a4,fa0,rtz
              #                    free fa0
              #                    free a4
              #                     173  (nop) 
              #                     174   Call void putint_0(temp_36__63_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_33_8
              #                    store to i_33_8 in mem offset legal
    sw      a0,240(sp)
              #                    release a0 with i_33_8
              #                    occupy a1 with temp_34_ptr_of_c1_33_63
              #                    store to temp_34_ptr_of_c1_33_63 in mem offset legal
    sd      a1,104(sp)
              #                    release a1 with temp_34_ptr_of_c1_33_63
              #                    occupy a2 with temp_57_cmp_61_0
              #                    store to temp_57_cmp_61_0 in mem offset legal
    sb      a2,1(sp)
              #                    release a2 with temp_57_cmp_61_0
              #                    occupy a4 with temp_36__63_0
              #                    store to temp_36__63_0 in mem offset legal
    sw      a4,96(sp)
              #                    release a4 with temp_36__63_0
              #                    occupy fa0 with temp_35_ele_of_c1_33_63_0
              #                    store to temp_35_ele_of_c1_33_63_0 in mem offset legal
    fsw     fa0,100(sp)
              #                    release fa0 with temp_35_ele_of_c1_33_63_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_36__63_0_0
              #                    load from temp_36__63_0 in mem


    lw      a0,96(sp)
              #                    arg load ended


    call    putint
              #                     176  temp_37_arithop_63_0 = Add i32 i_33_8, 1_0 
              #                    occupy a0 with i_33_8
              #                    load from i_33_8 in mem


    lw      a0,240(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_37_arithop_63_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     177  (nop) 
              #                     306  i_33_8 = i32 temp_37_arithop_63_0 
              #                    occupy a2 with temp_37_arithop_63_0
              #                    occupy a0 with i_33_8
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_62 
              #                    occupy a2 with temp_37_arithop_63_0
              #                    store to temp_37_arithop_63_0 in mem offset legal
    sw      a2,92(sp)
              #                    release a2 with temp_37_arithop_63_0
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: i_33_8, tracked: true } |     a2:Freed { symidx: temp_57_cmp_61_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     245  label while.exit_62: 
.while.exit_62:
              #                     331  untrack i_33_8 
              #                    occupy a0 with i_33_8
              #                    release a0 with i_33_8
              #                     147  (nop) 
              #                     148  (nop) 
              #                     149   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_57_cmp_61_0
              #                    store to temp_57_cmp_61_0 in mem offset legal
    sb      a2,1(sp)
              #                    release a2 with temp_57_cmp_61_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     307  i_33_11 = i32 0_0 
              #                    occupy a0 with i_33_11
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_71 
    j       .while.head_71
              #                    regtab     a0:Freed { symidx: i_33_11, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     249  label while.head_71: 
.while.head_71:
              #                     248  temp_58_cmp_70_0 = icmp i32 Slt i_33_11, 3_0 
              #                    occupy a0 with i_33_11
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    occupy a2 with temp_58_cmp_70_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     252  br i1 temp_58_cmp_70_0, label while.body_71, label while.exit_71 
              #                    occupy a2 with temp_58_cmp_70_0
              #                    free a2
              #                    occupy a2 with temp_58_cmp_70_0
    bnez    a2, .while.body_71
              #                    free a2
    j       .while.exit_71
              #                    regtab     a0:Freed { symidx: i_33_11, tracked: true } |     a2:Freed { symidx: temp_58_cmp_70_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     250  label while.body_71: 
.while.body_71:
              #                     155  temp_30_ptr_of_c2_33_72 = GEP c2_33_1:Array:f32:[Some(3_0)] [Some(i_33_11)] 
              #                    occupy a1 with temp_30_ptr_of_c2_33_72
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_33_11
    mv      a3, a0
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,256
              #                    free a1
              #                     157  temp_31_ele_of_c2_33_72_0 = load temp_30_ptr_of_c2_33_72:ptr->f32 
              #                    occupy a1 with temp_30_ptr_of_c2_33_72
              #                    occupy fa0 with temp_31_ele_of_c2_33_72_0
    flw     fa0,0(a1)
              #                    free fa0
              #                    free a1
              #                     158  mu c2_33_1:157 
              #                     160  temp_32__72_0 = fptosi f32 temp_31_ele_of_c2_33_72_0 to i32 
              #                    occupy fa0 with temp_31_ele_of_c2_33_72_0
              #                    occupy a4 with temp_32__72_0
    fcvt.w.s a4,fa0,rtz
              #                    free fa0
              #                    free a4
              #                     161  (nop) 
              #                     162   Call void putint_0(temp_32__72_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_33_11
              #                    store to i_33_11 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with i_33_11
              #                    occupy a1 with temp_30_ptr_of_c2_33_72
              #                    store to temp_30_ptr_of_c2_33_72 in mem offset legal
    sd      a1,128(sp)
              #                    release a1 with temp_30_ptr_of_c2_33_72
              #                    occupy a2 with temp_58_cmp_70_0
              #                    store to temp_58_cmp_70_0 in mem offset legal
    sb      a2,0(sp)
              #                    release a2 with temp_58_cmp_70_0
              #                    occupy a4 with temp_32__72_0
              #                    store to temp_32__72_0 in mem offset legal
    sw      a4,120(sp)
              #                    release a4 with temp_32__72_0
              #                    occupy fa0 with temp_31_ele_of_c2_33_72_0
              #                    store to temp_31_ele_of_c2_33_72_0 in mem offset legal
    fsw     fa0,124(sp)
              #                    release fa0 with temp_31_ele_of_c2_33_72_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_32__72_0_0
              #                    load from temp_32__72_0 in mem


    lw      a0,120(sp)
              #                    arg load ended


    call    putint
              #                     164  temp_33_arithop_72_0 = Add i32 i_33_11, 1_0 
              #                    occupy a0 with i_33_11
              #                    load from i_33_11 in mem


    lw      a0,236(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_33_arithop_72_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     165  (nop) 
              #                     308  i_33_11 = i32 temp_33_arithop_72_0 
              #                    occupy a2 with temp_33_arithop_72_0
              #                    occupy a0 with i_33_11
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_71 
              #                    occupy a2 with temp_33_arithop_72_0
              #                    store to temp_33_arithop_72_0 in mem offset legal
    sw      a2,116(sp)
              #                    release a2 with temp_33_arithop_72_0
    j       .while.head_71
              #                    regtab     a0:Freed { symidx: i_33_11, tracked: true } |     a2:Freed { symidx: temp_58_cmp_70_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     251  label while.exit_71: 
.while.exit_71:
              #                     332  untrack i_33_11 
              #                    occupy a0 with i_33_11
              #                    release a0 with i_33_11
              #                     150  (nop) 
              #                     151   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_58_cmp_70_0
              #                    store to temp_58_cmp_70_0 in mem offset legal
    sb      a2,0(sp)
              #                    release a2 with temp_58_cmp_70_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     279  mu M_0_2:153 
              #                     280  mu L_0_2:153 
              #                     281  mu N_0_2:153 
              #                     153  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,384(sp)
              #                    load from s0_main_0 in mem
    ld      s0,376(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,392
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl L
              #                     17   global i32 L_0 
    .type L,@object
L:
    .word 0
    .align 4
    .globl M
              #                     16   global i32 M_0 
    .type M,@object
M:
    .word 0
    .align 4
    .globl N
              #                     15   global i32 N_0 
    .type N,@object
N:
    .word 0
