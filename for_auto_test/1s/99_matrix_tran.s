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
              #                     28   Define tran_0 "a0_19,a1_19,a2_19,b0_19,b1_19,b2_19,c0_19,c1_19,c2_19," -> tran_ret_0 
    .globl tran
    .type tran,@function
tran:
              #                    mem layout:|c2:8 at 448|c2:8 at 440|c2:8 at 432|c2:8 at 424|c2:8 at 416|ra_tran:8 at 408|s0_tran:8 at 400|a0:8 at 392|a0:8 at 384|a1:8 at 376|a1:8 at 368|a2:8 at 360|a2:8 at 352|b0:8 at 344|b0:8 at 336|b1:8 at 328|b1:8 at 320|b2:8 at 312|b2:8 at 304|c0:8 at 296|c0:8 at 288|c0:8 at 280|c0:8 at 272|c0:8 at 264|c1:8 at 256|c1:8 at 248|c1:8 at 240|c1:8 at 232|c1:8 at 224|i _s21 _i0:4 at 220|none:4 at 216|temp_0_ptr_of_c1_19:8 at 208|temp_1_ptr_of_a2_19:8 at 200|temp_2_ele_of_a2_19 _s21 _i0:4 at 196|none:4 at 192|temp_3_ptr_of_c2_19:8 at 184|temp_4_ptr_of_a1_19:8 at 176|temp_5_ele_of_a1_19 _s21 _i0:4 at 172|none:4 at 168|temp_6_ptr_of_c0_19:8 at 160|temp_7_ptr_of_a1_19:8 at 152|temp_8_ele_of_a1_19 _s21 _i0:4 at 148|none:4 at 144|temp_9_ptr_of_c0_19:8 at 136|temp_10_ptr_of_a2_19:8 at 128|temp_11_ele_of_a2_19 _s21 _i0:4 at 124|none:4 at 120|temp_12_ptr_of_c1_19:8 at 112|temp_13_ptr_of_a0_19:8 at 104|temp_14_ele_of_a0_19 _s21 _i0:4 at 100|none:4 at 96|temp_15_ptr_of_c2_19:8 at 88|temp_16_ptr_of_a0_19:8 at 80|temp_17_ele_of_a0_19 _s21 _i0:4 at 76|none:4 at 72|temp_18_ptr_of_c1_19:8 at 64|temp_19_ptr_of_a1_19:8 at 56|temp_20_ele_of_a1_19 _s21 _i0:4 at 52|none:4 at 48|temp_21_ptr_of_c2_19:8 at 40|temp_22_ptr_of_a2_19:8 at 32|temp_23_ele_of_a2_19 _s21 _i0:4 at 28|none:4 at 24|temp_24_ptr_of_c0_19:8 at 16|temp_25_ptr_of_a0_19:8 at 8|temp_26_ele_of_a0_19 _s21 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-456
              #                    store to ra_tran_0 in mem offset legal
    sd      ra,408(sp)
              #                    store to s0_tran_0 in mem offset legal
    sd      s0,400(sp)
    addi    s0,sp,456
              #                     30   alloc i32 [i_21] 
              #                     33   alloc ptr->f32 [temp_0_ptr_of_c1_19_21] 
              #                     35   alloc ptr->f32 [temp_1_ptr_of_a2_19_21] 
              #                     37   alloc f32 [temp_2_ele_of_a2_19_21] 
              #                     42   alloc ptr->f32 [temp_3_ptr_of_c2_19_21] 
              #                     44   alloc ptr->f32 [temp_4_ptr_of_a1_19_21] 
              #                     46   alloc f32 [temp_5_ele_of_a1_19_21] 
              #                     51   alloc ptr->f32 [temp_6_ptr_of_c0_19_21] 
              #                     53   alloc ptr->f32 [temp_7_ptr_of_a1_19_21] 
              #                     55   alloc f32 [temp_8_ele_of_a1_19_21] 
              #                     60   alloc ptr->f32 [temp_9_ptr_of_c0_19_21] 
              #                     62   alloc ptr->f32 [temp_10_ptr_of_a2_19_21] 
              #                     64   alloc f32 [temp_11_ele_of_a2_19_21] 
              #                     69   alloc ptr->f32 [temp_12_ptr_of_c1_19_21] 
              #                     71   alloc ptr->f32 [temp_13_ptr_of_a0_19_21] 
              #                     73   alloc f32 [temp_14_ele_of_a0_19_21] 
              #                     78   alloc ptr->f32 [temp_15_ptr_of_c2_19_21] 
              #                     80   alloc ptr->f32 [temp_16_ptr_of_a0_19_21] 
              #                     82   alloc f32 [temp_17_ele_of_a0_19_21] 
              #                     87   alloc ptr->f32 [temp_18_ptr_of_c1_19_21] 
              #                     89   alloc ptr->f32 [temp_19_ptr_of_a1_19_21] 
              #                     91   alloc f32 [temp_20_ele_of_a1_19_21] 
              #                     96   alloc ptr->f32 [temp_21_ptr_of_c2_19_21] 
              #                     98   alloc ptr->f32 [temp_22_ptr_of_a2_19_21] 
              #                     100  alloc f32 [temp_23_ele_of_a2_19_21] 
              #                     105  alloc ptr->f32 [temp_24_ptr_of_c0_19_21] 
              #                     107  alloc ptr->f32 [temp_25_ptr_of_a0_19_21] 
              #                     109  alloc f32 [temp_26_ele_of_a0_19_21] 
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
              #                     34   temp_0_ptr_of_c1_19_21 = GEP c1_19:ptr->f32 [Some(2_0)] 
              #                    occupy s1 with temp_0_ptr_of_c1_19_21
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 2
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy a7 with c1_19
    add     s1,s1,a7
              #                    free a7
              #                    free s1
              #                     36   temp_1_ptr_of_a2_19_21 = GEP a2_19:Array:f32:[None] [Some(1_0)] 
              #                    occupy s3 with temp_1_ptr_of_a2_19_21
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 1
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a2 with a2_19
    add     s3,s3,a2
              #                    free a2
              #                    free s3
              #                     38   temp_2_ele_of_a2_19_21_0 = load temp_1_ptr_of_a2_19_21:ptr->f32 
              #                    occupy s3 with temp_1_ptr_of_a2_19_21
              #                    occupy fa0 with temp_2_ele_of_a2_19_21_0
    flw     fa0,0(s3)
              #                    free fa0
              #                    free s3
              #                     340  untrack temp_1_ptr_of_a2_19_21 
              #                    occupy s3 with temp_1_ptr_of_a2_19_21
              #                    release s3 with temp_1_ptr_of_a2_19_21
              #                     39   mu a2_19:38 
              #                     40   store temp_2_ele_of_a2_19_21_0:f32 temp_0_ptr_of_c1_19_21:ptr->f32 
              #                    occupy s1 with temp_0_ptr_of_c1_19_21
              #                    occupy fa0 with temp_2_ele_of_a2_19_21_0
    fsw     fa0,0(s1)
              #                    free fa0
              #                    free s1
              #                     359  untrack temp_0_ptr_of_c1_19_21 
              #                    occupy s1 with temp_0_ptr_of_c1_19_21
              #                    release s1 with temp_0_ptr_of_c1_19_21
              #                     347  untrack temp_2_ele_of_a2_19_21_0 
              #                    occupy fa0 with temp_2_ele_of_a2_19_21_0
              #                    release fa0 with temp_2_ele_of_a2_19_21_0
              #                     41   c1_19 = chi c1_19:40 
              #                     43   temp_3_ptr_of_c2_19_21 = GEP c2_19:ptr->f32 [Some(1_0)] 
              #                    occupy s1 with temp_3_ptr_of_c2_19_21
    li      s1, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 1
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
              #                    occupy s5 with c2_19
              #                    load from c2_19 in mem
    ld      s5,416(sp)
    add     s1,s1,s5
              #                    free s5
              #                    free s1
              #                     45   temp_4_ptr_of_a1_19_21 = GEP a1_19:Array:f32:[None] [Some(2_0)] 
              #                    occupy s6 with temp_4_ptr_of_a1_19_21
    li      s6, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy a1 with a1_19
    add     s6,s6,a1
              #                    free a1
              #                    free s6
              #                     47   temp_5_ele_of_a1_19_21_0 = load temp_4_ptr_of_a1_19_21:ptr->f32 
              #                    occupy s6 with temp_4_ptr_of_a1_19_21
              #                    occupy fa0 with temp_5_ele_of_a1_19_21_0
    flw     fa0,0(s6)
              #                    free fa0
              #                    free s6
              #                     358  untrack temp_4_ptr_of_a1_19_21 
              #                    occupy s6 with temp_4_ptr_of_a1_19_21
              #                    release s6 with temp_4_ptr_of_a1_19_21
              #                     48   mu a1_19:47 
              #                     49   store temp_5_ele_of_a1_19_21_0:f32 temp_3_ptr_of_c2_19_21:ptr->f32 
              #                    occupy s1 with temp_3_ptr_of_c2_19_21
              #                    occupy fa0 with temp_5_ele_of_a1_19_21_0
    fsw     fa0,0(s1)
              #                    free fa0
              #                    free s1
              #                     364  untrack temp_3_ptr_of_c2_19_21 
              #                    occupy s1 with temp_3_ptr_of_c2_19_21
              #                    release s1 with temp_3_ptr_of_c2_19_21
              #                     343  untrack temp_5_ele_of_a1_19_21_0 
              #                    occupy fa0 with temp_5_ele_of_a1_19_21_0
              #                    release fa0 with temp_5_ele_of_a1_19_21_0
              #                     50   c2_19 = chi c2_19:49 
              #                     52   temp_6_ptr_of_c0_19_21 = GEP c0_19:ptr->f32 [Some(1_0)] 
              #                    occupy s1 with temp_6_ptr_of_c0_19_21
    li      s1, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 1
    add     s1,s1,s6
              #                    free s6
    slli s1,s1,2
              #                    occupy a6 with c0_19
    add     s1,s1,a6
              #                    free a6
              #                    free s1
              #                     54   temp_7_ptr_of_a1_19_21 = GEP a1_19:Array:f32:[None] [Some(0_0)] 
              #                    occupy s7 with temp_7_ptr_of_a1_19_21
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 0
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy a1 with a1_19
    add     s7,s7,a1
              #                    free a1
              #                    occupy a1 with a1_19
              #                    store to a1_19 in mem offset legal
    sd      a1,368(sp)
              #                    release a1 with a1_19
              #                    free s7
              #                     56   temp_8_ele_of_a1_19_21_0 = load temp_7_ptr_of_a1_19_21:ptr->f32 
              #                    occupy s7 with temp_7_ptr_of_a1_19_21
              #                    occupy fa0 with temp_8_ele_of_a1_19_21_0
    flw     fa0,0(s7)
              #                    free fa0
              #                    free s7
              #                     367  untrack temp_7_ptr_of_a1_19_21 
              #                    occupy s7 with temp_7_ptr_of_a1_19_21
              #                    release s7 with temp_7_ptr_of_a1_19_21
              #                     57   mu a1_19:56 
              #                     58   store temp_8_ele_of_a1_19_21_0:f32 temp_6_ptr_of_c0_19_21:ptr->f32 
              #                    occupy s1 with temp_6_ptr_of_c0_19_21
              #                    occupy fa0 with temp_8_ele_of_a1_19_21_0
    fsw     fa0,0(s1)
              #                    free fa0
              #                    free s1
              #                     352  untrack temp_8_ele_of_a1_19_21_0 
              #                    occupy fa0 with temp_8_ele_of_a1_19_21_0
              #                    release fa0 with temp_8_ele_of_a1_19_21_0
              #                     342  untrack temp_6_ptr_of_c0_19_21 
              #                    occupy s1 with temp_6_ptr_of_c0_19_21
              #                    release s1 with temp_6_ptr_of_c0_19_21
              #                     59   c0_19 = chi c0_19:58 
              #                     61   temp_9_ptr_of_c0_19_21 = GEP c0_19:ptr->f32 [Some(2_0)] 
              #                    occupy a1 with temp_9_ptr_of_c0_19_21
    li      a1, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 2
    add     a1,a1,s1
              #                    free s1
    slli a1,a1,2
              #                    occupy a6 with c0_19
    add     a1,a1,a6
              #                    free a6
              #                    free a1
              #                     63   temp_10_ptr_of_a2_19_21 = GEP a2_19:Array:f32:[None] [Some(0_0)] 
              #                    occupy s7 with temp_10_ptr_of_a2_19_21
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 0
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy a2 with a2_19
    add     s7,s7,a2
              #                    free a2
              #                    occupy a2 with a2_19
              #                    store to a2_19 in mem offset legal
    sd      a2,352(sp)
              #                    release a2 with a2_19
              #                    free s7
              #                     65   temp_11_ele_of_a2_19_21_0 = load temp_10_ptr_of_a2_19_21:ptr->f32 
              #                    occupy s7 with temp_10_ptr_of_a2_19_21
              #                    occupy fa0 with temp_11_ele_of_a2_19_21_0
    flw     fa0,0(s7)
              #                    free fa0
              #                    free s7
              #                     345  untrack temp_10_ptr_of_a2_19_21 
              #                    occupy s7 with temp_10_ptr_of_a2_19_21
              #                    release s7 with temp_10_ptr_of_a2_19_21
              #                     66   mu a2_19:65 
              #                     67   store temp_11_ele_of_a2_19_21_0:f32 temp_9_ptr_of_c0_19_21:ptr->f32 
              #                    occupy a1 with temp_9_ptr_of_c0_19_21
              #                    occupy fa0 with temp_11_ele_of_a2_19_21_0
    fsw     fa0,0(a1)
              #                    free fa0
              #                    free a1
              #                     353  untrack temp_11_ele_of_a2_19_21_0 
              #                    occupy fa0 with temp_11_ele_of_a2_19_21_0
              #                    release fa0 with temp_11_ele_of_a2_19_21_0
              #                     341  untrack temp_9_ptr_of_c0_19_21 
              #                    occupy a1 with temp_9_ptr_of_c0_19_21
              #                    release a1 with temp_9_ptr_of_c0_19_21
              #                     68   c0_19 = chi c0_19:67 
              #                     70   temp_12_ptr_of_c1_19_21 = GEP c1_19:ptr->f32 [Some(0_0)] 
              #                    occupy a1 with temp_12_ptr_of_c1_19_21
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a7 with c1_19
    add     a1,a1,a7
              #                    free a7
              #                    free a1
              #                     72   temp_13_ptr_of_a0_19_21 = GEP a0_19:Array:f32:[None] [Some(1_0)] 
              #                    occupy s7 with temp_13_ptr_of_a0_19_21
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 1
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy a0 with a0_19
    add     s7,s7,a0
              #                    free a0
              #                    occupy a0 with a0_19
              #                    store to a0_19 in mem offset legal
    sd      a0,384(sp)
              #                    release a0 with a0_19
              #                    free s7
              #                     74   temp_14_ele_of_a0_19_21_0 = load temp_13_ptr_of_a0_19_21:ptr->f32 
              #                    occupy s7 with temp_13_ptr_of_a0_19_21
              #                    occupy fa0 with temp_14_ele_of_a0_19_21_0
    flw     fa0,0(s7)
              #                    free fa0
              #                    free s7
              #                     368  untrack temp_13_ptr_of_a0_19_21 
              #                    occupy s7 with temp_13_ptr_of_a0_19_21
              #                    release s7 with temp_13_ptr_of_a0_19_21
              #                     75   mu a0_19:74 
              #                     76   store temp_14_ele_of_a0_19_21_0:f32 temp_12_ptr_of_c1_19_21:ptr->f32 
              #                    occupy a1 with temp_12_ptr_of_c1_19_21
              #                    occupy fa0 with temp_14_ele_of_a0_19_21_0
    fsw     fa0,0(a1)
              #                    free fa0
              #                    free a1
              #                     349  untrack temp_14_ele_of_a0_19_21_0 
              #                    occupy fa0 with temp_14_ele_of_a0_19_21_0
              #                    release fa0 with temp_14_ele_of_a0_19_21_0
              #                     344  untrack temp_12_ptr_of_c1_19_21 
              #                    occupy a1 with temp_12_ptr_of_c1_19_21
              #                    release a1 with temp_12_ptr_of_c1_19_21
              #                     77   c1_19 = chi c1_19:76 
              #                     79   temp_15_ptr_of_c2_19_21 = GEP c2_19:ptr->f32 [Some(0_0)] 
              #                    occupy a0 with temp_15_ptr_of_c2_19_21
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy s5 with c2_19
    add     a0,a0,s5
              #                    free s5
              #                    free a0
              #                     81   temp_16_ptr_of_a0_19_21 = GEP a0_19:Array:f32:[None] [Some(2_0)] 
              #                    occupy s7 with temp_16_ptr_of_a0_19_21
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 2
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy s8 with a0_19
              #                    load from a0_19 in mem
    ld      s8,384(sp)
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with a0_19
              #                    store to a0_19 in mem offset legal
    sd      s8,384(sp)
              #                    release s8 with a0_19
              #                    free s7
              #                    occupy s7 with temp_16_ptr_of_a0_19_21
              #                    store to temp_16_ptr_of_a0_19_21 in mem offset legal
    sd      s7,80(sp)
              #                    release s7 with temp_16_ptr_of_a0_19_21
              #                     83   temp_17_ele_of_a0_19_21_0 = load temp_16_ptr_of_a0_19_21:ptr->f32 
              #                    occupy s7 with temp_16_ptr_of_a0_19_21
              #                    load from temp_16_ptr_of_a0_19_21 in mem
    ld      s7,80(sp)
              #                    occupy fa0 with temp_17_ele_of_a0_19_21_0
    flw     fa0,0(s7)
              #                    free fa0
              #                    free s7
              #                    occupy s7 with temp_16_ptr_of_a0_19_21
              #                    store to temp_16_ptr_of_a0_19_21 in mem offset legal
    sd      s7,80(sp)
              #                    release s7 with temp_16_ptr_of_a0_19_21
              #                     348  untrack temp_16_ptr_of_a0_19_21 
              #                     84   mu a0_19:83 
              #                     85   store temp_17_ele_of_a0_19_21_0:f32 temp_15_ptr_of_c2_19_21:ptr->f32 
              #                    occupy a0 with temp_15_ptr_of_c2_19_21
              #                    occupy fa0 with temp_17_ele_of_a0_19_21_0
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     369  untrack temp_17_ele_of_a0_19_21_0 
              #                    occupy fa0 with temp_17_ele_of_a0_19_21_0
              #                    release fa0 with temp_17_ele_of_a0_19_21_0
              #                     366  untrack temp_15_ptr_of_c2_19_21 
              #                    occupy a0 with temp_15_ptr_of_c2_19_21
              #                    release a0 with temp_15_ptr_of_c2_19_21
              #                     86   c2_19 = chi c2_19:85 
              #                     88   temp_18_ptr_of_c1_19_21 = GEP c1_19:ptr->f32 [Some(1_0)] 
              #                    occupy a0 with temp_18_ptr_of_c1_19_21
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy a7 with c1_19
    add     a0,a0,a7
              #                    free a7
              #                    free a0
              #                     90   temp_19_ptr_of_a1_19_21 = GEP a1_19:Array:f32:[None] [Some(1_0)] 
              #                    occupy s7 with temp_19_ptr_of_a1_19_21
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 1
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy s8 with a1_19
              #                    load from a1_19 in mem
    ld      s8,368(sp)
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with a1_19
              #                    store to a1_19 in mem offset legal
    sd      s8,368(sp)
              #                    release s8 with a1_19
              #                    free s7
              #                    occupy s7 with temp_19_ptr_of_a1_19_21
              #                    store to temp_19_ptr_of_a1_19_21 in mem offset legal
    sd      s7,56(sp)
              #                    release s7 with temp_19_ptr_of_a1_19_21
              #                     92   temp_20_ele_of_a1_19_21_0 = load temp_19_ptr_of_a1_19_21:ptr->f32 
              #                    occupy s7 with temp_19_ptr_of_a1_19_21
              #                    load from temp_19_ptr_of_a1_19_21 in mem
    ld      s7,56(sp)
              #                    occupy fa0 with temp_20_ele_of_a1_19_21_0
    flw     fa0,0(s7)
              #                    free fa0
              #                    free s7
              #                    occupy s7 with temp_19_ptr_of_a1_19_21
              #                    store to temp_19_ptr_of_a1_19_21 in mem offset legal
    sd      s7,56(sp)
              #                    release s7 with temp_19_ptr_of_a1_19_21
              #                     371  untrack temp_19_ptr_of_a1_19_21 
              #                     93   mu a1_19:92 
              #                     365  untrack a1_19 
              #                     94   store temp_20_ele_of_a1_19_21_0:f32 temp_18_ptr_of_c1_19_21:ptr->f32 
              #                    occupy a0 with temp_18_ptr_of_c1_19_21
              #                    occupy fa0 with temp_20_ele_of_a1_19_21_0
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     360  untrack temp_18_ptr_of_c1_19_21 
              #                    occupy a0 with temp_18_ptr_of_c1_19_21
              #                    release a0 with temp_18_ptr_of_c1_19_21
              #                     354  untrack temp_20_ele_of_a1_19_21_0 
              #                    occupy fa0 with temp_20_ele_of_a1_19_21_0
              #                    release fa0 with temp_20_ele_of_a1_19_21_0
              #                     95   c1_19 = chi c1_19:94 
              #                     97   temp_21_ptr_of_c2_19_21 = GEP c2_19:ptr->f32 [Some(2_0)] 
              #                    occupy a0 with temp_21_ptr_of_c2_19_21
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s5 with c2_19
    add     a0,a0,s5
              #                    free s5
              #                    free a0
              #                     99   temp_22_ptr_of_a2_19_21 = GEP a2_19:Array:f32:[None] [Some(2_0)] 
              #                    occupy s7 with temp_22_ptr_of_a2_19_21
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 2
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy s8 with a2_19
              #                    load from a2_19 in mem
    ld      s8,352(sp)
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with a2_19
              #                    store to a2_19 in mem offset legal
    sd      s8,352(sp)
              #                    release s8 with a2_19
              #                    free s7
              #                    occupy s7 with temp_22_ptr_of_a2_19_21
              #                    store to temp_22_ptr_of_a2_19_21 in mem offset legal
    sd      s7,32(sp)
              #                    release s7 with temp_22_ptr_of_a2_19_21
              #                     101  temp_23_ele_of_a2_19_21_0 = load temp_22_ptr_of_a2_19_21:ptr->f32 
              #                    occupy s7 with temp_22_ptr_of_a2_19_21
              #                    load from temp_22_ptr_of_a2_19_21 in mem
    ld      s7,32(sp)
              #                    occupy fa0 with temp_23_ele_of_a2_19_21_0
    flw     fa0,0(s7)
              #                    free fa0
              #                    free s7
              #                    occupy s7 with temp_22_ptr_of_a2_19_21
              #                    store to temp_22_ptr_of_a2_19_21 in mem offset legal
    sd      s7,32(sp)
              #                    release s7 with temp_22_ptr_of_a2_19_21
              #                     351  untrack temp_22_ptr_of_a2_19_21 
              #                     102  mu a2_19:101 
              #                     363  untrack a2_19 
              #                     103  store temp_23_ele_of_a2_19_21_0:f32 temp_21_ptr_of_c2_19_21:ptr->f32 
              #                    occupy a0 with temp_21_ptr_of_c2_19_21
              #                    occupy fa0 with temp_23_ele_of_a2_19_21_0
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     370  untrack temp_23_ele_of_a2_19_21_0 
              #                    occupy fa0 with temp_23_ele_of_a2_19_21_0
              #                    release fa0 with temp_23_ele_of_a2_19_21_0
              #                     357  untrack temp_21_ptr_of_c2_19_21 
              #                    occupy a0 with temp_21_ptr_of_c2_19_21
              #                    release a0 with temp_21_ptr_of_c2_19_21
              #                     104  c2_19 = chi c2_19:103 
              #                     106  temp_24_ptr_of_c0_19_21 = GEP c0_19:ptr->f32 [Some(0_0)] 
              #                    occupy a0 with temp_24_ptr_of_c0_19_21
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy a6 with c0_19
    add     a0,a0,a6
              #                    free a6
              #                    free a0
              #                     108  temp_25_ptr_of_a0_19_21 = GEP a0_19:Array:f32:[None] [Some(0_0)] 
              #                    occupy s7 with temp_25_ptr_of_a0_19_21
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 0
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy s8 with a0_19
              #                    load from a0_19 in mem
    ld      s8,384(sp)
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with a0_19
              #                    store to a0_19 in mem offset legal
    sd      s8,384(sp)
              #                    release s8 with a0_19
              #                    free s7
              #                    occupy s7 with temp_25_ptr_of_a0_19_21
              #                    store to temp_25_ptr_of_a0_19_21 in mem offset legal
    sd      s7,8(sp)
              #                    release s7 with temp_25_ptr_of_a0_19_21
              #                     110  temp_26_ele_of_a0_19_21_0 = load temp_25_ptr_of_a0_19_21:ptr->f32 
              #                    occupy s7 with temp_25_ptr_of_a0_19_21
              #                    load from temp_25_ptr_of_a0_19_21 in mem
    ld      s7,8(sp)
              #                    occupy fa0 with temp_26_ele_of_a0_19_21_0
    flw     fa0,0(s7)
              #                    free fa0
              #                    free s7
              #                    occupy s7 with temp_25_ptr_of_a0_19_21
              #                    store to temp_25_ptr_of_a0_19_21 in mem offset legal
    sd      s7,8(sp)
              #                    release s7 with temp_25_ptr_of_a0_19_21
              #                     361  untrack temp_25_ptr_of_a0_19_21 
              #                     111  mu a0_19:110 
              #                     355  untrack a0_19 
              #                     112  store temp_26_ele_of_a0_19_21_0:f32 temp_24_ptr_of_c0_19_21:ptr->f32 
              #                    occupy a0 with temp_24_ptr_of_c0_19_21
              #                    occupy fa0 with temp_26_ele_of_a0_19_21_0
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     346  untrack temp_24_ptr_of_c0_19_21 
              #                    occupy a0 with temp_24_ptr_of_c0_19_21
              #                    release a0 with temp_24_ptr_of_c0_19_21
              #                     339  untrack temp_26_ele_of_a0_19_21_0 
              #                    occupy fa0 with temp_26_ele_of_a0_19_21_0
              #                    release fa0 with temp_26_ele_of_a0_19_21_0
              #                     113  c0_19 = chi c0_19:112 
              #                     291  mu c2_19:115 
              #                     356  untrack c2_19 
              #                    occupy s5 with c2_19
              #                    release s5 with c2_19
              #                     292  mu c1_19:115 
              #                     350  untrack c1_19 
              #                    occupy a7 with c1_19
              #                    release a7 with c1_19
              #                     293  mu c0_19:115 
              #                     362  untrack c0_19 
              #                    occupy a6 with c0_19
              #                    release a6 with c0_19
              #                     115  ret 0_0 
              #                    load from ra_tran_0 in mem
    ld      ra,408(sp)
              #                    load from s0_tran_0 in mem
    ld      s0,400(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,456
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     29   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 400|s0_main:8 at 392|a0:12 at 380|a1:12 at 368|a2:12 at 356|b0:12 at 344|b1:12 at 332|b2:12 at 320|c0:24 at 296|c1:12 at 284|c2:12 at 272|i _s35 _i0:4 at 268|i _s35 _i2:4 at 264|i _s35 _i5:4 at 260|i _s35 _i8:4 at 256|i _s35 _i11:4 at 252|none:4 at 248|temp_27_ele_ptr_of_a0_35:8 at 240|temp_28_ele_ptr_of_a1_35:8 at 232|temp_29_ele_ptr_of_a2_35:8 at 224|temp_30_ele_ptr_of_b0_35:8 at 216|temp_31_ele_ptr_of_b1_35:8 at 208|temp_32_ele_ptr_of_b2_35:8 at 200|temp_33_ele_ptr_of_c0_35:8 at 192|temp_34_ele_ptr_of_c1_35:8 at 184|temp_35_ele_ptr_of_c2_35:8 at 176|temp_36_ret_of_tran _s35 _i0:4 at 172|x _s35 _i0:4 at 168|x _s35 _i1:4 at 164|x _s35 _i4:4 at 160|x _s35 _i7:4 at 156|none:4 at 152|temp_37_ptr_of_c2_35:8 at 144|temp_38_ele_of_c2_35 _s74 _i0:4 at 140|temp_39_ _s74 _i0:4 at 136|temp_40_arithop _s74 _i0:4 at 132|none:4 at 128|temp_41_ptr_of_c1_35:8 at 120|temp_42_ele_of_c1_35 _s65 _i0:4 at 116|temp_43_ _s65 _i0:4 at 112|temp_44_arithop _s65 _i0:4 at 108|none:4 at 104|temp_45_ptr_of_c0_35:8 at 96|temp_46_ele_of_c0_35 _s56 _i0:4 at 92|temp_47_ _s56 _i0:4 at 88|temp_48_arithop _s56 _i0:4 at 84|none:4 at 80|temp_49_ptr_of_a0_35:8 at 72|temp_50_ _s44 _i0:4 at 68|none:4 at 64|temp_51_ptr_of_a1_35:8 at 56|temp_53_ptr_of_a2_35:8 at 48|temp_55_ptr_of_b0_35:8 at 40|temp_57_ptr_of_b1_35:8 at 32|temp_59_ptr_of_b2_35:8 at 24|temp_61_arithop _s44 _i0:4 at 20|temp_62_value_from_ptr _s42 _i0:4 at 16|temp_63_cmp _s42 _i0:1 at 15|none:3 at 12|temp_64_value_from_ptr _s54 _i0:4 at 8|temp_65_cmp _s54 _i0:1 at 7|temp_67_cmp _s63 _i0:1 at 6|temp_69_cmp _s72 _i0:1 at 5|none:5 at 0
    addi    sp,sp,-408
              #                    store to ra_main_0 in mem offset legal
    sd      ra,400(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,392(sp)
    addi    s0,sp,408
              #                     294  N_0_1 = chi N_0_0:29 
              #                     295  M_0_1 = chi M_0_0:29 
              #                     296  L_0_1 = chi L_0_0:29 
              #                     125  alloc Array:f32:[Some(3_0)] [a0_35] 
              #                     127  alloc Array:f32:[Some(3_0)] [a1_35] 
              #                     129  alloc Array:f32:[Some(3_0)] [a2_35] 
              #                     131  alloc Array:f32:[Some(3_0)] [b0_35] 
              #                     133  alloc Array:f32:[Some(3_0)] [b1_35] 
              #                     135  alloc Array:f32:[Some(3_0)] [b2_35] 
              #                     137  alloc Array:f32:[Some(6_0)] [c0_35] 
              #                     139  alloc Array:f32:[Some(3_0)] [c1_35] 
              #                     141  alloc Array:f32:[Some(3_0)] [c2_35] 
              #                     142  alloc i32 [i_35] 
              #                     145  alloc ptr->f32 [temp_27_ele_ptr_of_a0_35_35] 
              #                     147  alloc ptr->f32 [temp_28_ele_ptr_of_a1_35_35] 
              #                     149  alloc ptr->f32 [temp_29_ele_ptr_of_a2_35_35] 
              #                     151  alloc ptr->f32 [temp_30_ele_ptr_of_b0_35_35] 
              #                     153  alloc ptr->f32 [temp_31_ele_ptr_of_b1_35_35] 
              #                     155  alloc ptr->f32 [temp_32_ele_ptr_of_b2_35_35] 
              #                     157  alloc ptr->f32 [temp_33_ele_ptr_of_c0_35_35] 
              #                     159  alloc ptr->f32 [temp_34_ele_ptr_of_c1_35_35] 
              #                     161  alloc ptr->f32 [temp_35_ele_ptr_of_c2_35_35] 
              #                     163  alloc i32 [temp_36_ret_of_tran_35] 
              #                     166  alloc i32 [x_35] 
              #                     178  alloc ptr->f32 [temp_37_ptr_of_c2_35_74] 
              #                     180  alloc f32 [temp_38_ele_of_c2_35_74] 
              #                     183  alloc i32 [temp_39__74] 
              #                     187  alloc i32 [temp_40_arithop_74] 
              #                     190  alloc ptr->f32 [temp_41_ptr_of_c1_35_65] 
              #                     192  alloc f32 [temp_42_ele_of_c1_35_65] 
              #                     195  alloc i32 [temp_43__65] 
              #                     199  alloc i32 [temp_44_arithop_65] 
              #                     202  alloc ptr->f32 [temp_45_ptr_of_c0_35_56] 
              #                     204  alloc f32 [temp_46_ele_of_c0_35_56] 
              #                     207  alloc i32 [temp_47__56] 
              #                     211  alloc i32 [temp_48_arithop_56] 
              #                     214  alloc ptr->f32 [temp_49_ptr_of_a0_35_44] 
              #                     216  alloc f32 [temp_50__44] 
              #                     220  alloc ptr->f32 [temp_51_ptr_of_a1_35_44] 
              #                     222  alloc f32 [temp_52__44] 
              #                     226  alloc ptr->f32 [temp_53_ptr_of_a2_35_44] 
              #                     228  alloc f32 [temp_54__44] 
              #                     232  alloc ptr->f32 [temp_55_ptr_of_b0_35_44] 
              #                     234  alloc f32 [temp_56__44] 
              #                     238  alloc ptr->f32 [temp_57_ptr_of_b1_35_44] 
              #                     240  alloc f32 [temp_58__44] 
              #                     244  alloc ptr->f32 [temp_59_ptr_of_b2_35_44] 
              #                     246  alloc f32 [temp_60__44] 
              #                     250  alloc i32 [temp_61_arithop_44] 
              #                     253  alloc i32 [temp_62_value_from_ptr_42] 
              #                     256  alloc i1 [temp_63_cmp_42] 
              #                     262  alloc i32 [temp_64_value_from_ptr_54] 
              #                     265  alloc i1 [temp_65_cmp_54] 
              #                     271  alloc i32 [temp_66_value_from_ptr_63] 
              #                     274  alloc i1 [temp_67_cmp_63] 
              #                     280  alloc i32 [temp_68_value_from_ptr_72] 
              #                     283  alloc i1 [temp_69_cmp_72] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     118  store 3_0:i32 *N_0:ptr->i32 
              #                    occupy a0 with *N_0
              #                       load label N as ptr to reg
    la      a0, N
              #                    occupy reg a0 with *N_0
              #                    occupy a1 with 3_0
    li      a1, 3
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     119  N_0_2 = chi N_0_1:118 
              #                     120  store 3_0:i32 *M_0:ptr->i32 
              #                    occupy a2 with *M_0
              #                       load label M as ptr to reg
    la      a2, M
              #                    occupy reg a2 with *M_0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     121  M_0_2 = chi M_0_1:120 
              #                     122  store 3_0:i32 *L_0:ptr->i32 
              #                    occupy a3 with *L_0
              #                       load label L as ptr to reg
    la      a3, L
              #                    occupy reg a3 with *L_0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                     123  L_0_2 = chi L_0_1:122 
              #                     124   
              #                     126   
              #                     128   
              #                     130   
              #                     132   
              #                     134   
              #                     136   
              #                     138   
              #                     140   
              #                     143   
              #                     144  (nop) 
              #                     331  i_35_2 = i32 0_0 
              #                    occupy a4 with i_35_2
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_43 
    j       .while.head_43
              #                    regtab     a4:Freed { symidx: i_35_2, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     258  label while.head_43: 
.while.head_43:
              #                     254  temp_62_value_from_ptr_42_0 = load *M_0:ptr->i32 
              #                    occupy a0 with *M_0
              #                       load label M as ptr to reg
    la      a0, M
              #                    occupy reg a0 with *M_0
              #                    occupy a1 with temp_62_value_from_ptr_42_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     255  mu M_0_2:254 
              #                     257  temp_63_cmp_42_0 = icmp i32 Slt i_35_2, temp_62_value_from_ptr_42_0 
              #                    occupy a4 with i_35_2
              #                    occupy a1 with temp_62_value_from_ptr_42_0
              #                    occupy a2 with temp_63_cmp_42_0
    slt     a2,a4,a1
              #                    free a4
              #                    free a1
              #                    free a2
              #                     261  br i1 temp_63_cmp_42_0, label while.body_43, label while.exit_43 
              #                    occupy a2 with temp_63_cmp_42_0
              #                    free a2
              #                    occupy a2 with temp_63_cmp_42_0
    bnez    a2, .while.body_43
              #                    free a2
    j       .while.exit_43
              #                    regtab     a1:Freed { symidx: temp_62_value_from_ptr_42_0, tracked: true } |     a2:Freed { symidx: temp_63_cmp_42_0, tracked: true } |     a4:Freed { symidx: i_35_2, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     259  label while.body_43: 
.while.body_43:
              #                     215  temp_49_ptr_of_a0_35_44 = GEP a0_35_1:Array:f32:[Some(3_0)] [Some(i_35_2)] 
              #                    occupy a0 with temp_49_ptr_of_a0_35_44
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_35_2
    mv      a3, a4
              #                    free a4
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,380
              #                    free a0
              #                     217  temp_50__44_0 = sitofp i32 i_35_2 to f32 
              #                    occupy a4 with i_35_2
              #                    occupy fa0 with temp_50__44_0
    fcvt.s.w fa0,a4,rtz
              #                    free a4
              #                    free fa0
              #                     218  store temp_50__44_0:f32 temp_49_ptr_of_a0_35_44:ptr->f32 
              #                    occupy a0 with temp_49_ptr_of_a0_35_44
              #                    occupy fa0 with temp_50__44_0
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     219  a0_35_2 = chi a0_35_1:218 
              #                     221  temp_51_ptr_of_a1_35_44 = GEP a1_35_1:Array:f32:[Some(3_0)] [Some(i_35_2)] 
              #                    occupy a5 with temp_51_ptr_of_a1_35_44
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_35_2
    mv      a6, a4
              #                    free a4
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,368
              #                    free a5
              #                     223  (nop) 
              #                     224  store temp_50__44_0:f32 temp_51_ptr_of_a1_35_44:ptr->f32 
              #                    occupy a5 with temp_51_ptr_of_a1_35_44
              #                    occupy fa0 with temp_50__44_0
    fsw     fa0,0(a5)
              #                    free fa0
              #                    free a5
              #                     225  a1_35_2 = chi a1_35_1:224 
              #                     227  temp_53_ptr_of_a2_35_44 = GEP a2_35_1:Array:f32:[Some(3_0)] [Some(i_35_2)] 
              #                    occupy a7 with temp_53_ptr_of_a2_35_44
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_35_2
    mv      s1, a4
              #                    free a4
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,356
              #                    free a7
              #                     229  (nop) 
              #                     230  store temp_50__44_0:f32 temp_53_ptr_of_a2_35_44:ptr->f32 
              #                    occupy a7 with temp_53_ptr_of_a2_35_44
              #                    occupy fa0 with temp_50__44_0
    fsw     fa0,0(a7)
              #                    free fa0
              #                    free a7
              #                     231  a2_35_2 = chi a2_35_1:230 
              #                     233  temp_55_ptr_of_b0_35_44 = GEP b0_35_1:Array:f32:[Some(3_0)] [Some(i_35_2)] 
              #                    occupy s2 with temp_55_ptr_of_b0_35_44
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_35_2
    mv      s3, a4
              #                    free a4
              #                    occupy a4 with i_35_2
              #                    store to i_35_2 in mem offset legal
    sw      a4,264(sp)
              #                    release a4 with i_35_2
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,344
              #                    free s2
              #                     235  (nop) 
              #                     236  store temp_50__44_0:f32 temp_55_ptr_of_b0_35_44:ptr->f32 
              #                    occupy s2 with temp_55_ptr_of_b0_35_44
              #                    occupy fa0 with temp_50__44_0
    fsw     fa0,0(s2)
              #                    free fa0
              #                    free s2
              #                     237  b0_35_2 = chi b0_35_1:236 
              #                     239  temp_57_ptr_of_b1_35_44 = GEP b1_35_1:Array:f32:[Some(3_0)] [Some(i_35_2)] 
              #                    occupy a4 with temp_57_ptr_of_b1_35_44
    li      a4, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with i_35_2
              #                    load from i_35_2 in mem


    lw      s4,264(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with i_35_2
              #                    store to i_35_2 in mem offset legal
    sw      s4,264(sp)
              #                    release s4 with i_35_2
    add     a4,a4,s3
              #                    free s3
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,332
              #                    free a4
              #                    occupy a4 with temp_57_ptr_of_b1_35_44
              #                    store to temp_57_ptr_of_b1_35_44 in mem offset legal
    sd      a4,32(sp)
              #                    release a4 with temp_57_ptr_of_b1_35_44
              #                     241  (nop) 
              #                     242  store temp_50__44_0:f32 temp_57_ptr_of_b1_35_44:ptr->f32 
              #                    occupy a4 with temp_57_ptr_of_b1_35_44
              #                    load from temp_57_ptr_of_b1_35_44 in mem
    ld      a4,32(sp)
              #                    occupy fa0 with temp_50__44_0
    fsw     fa0,0(a4)
              #                    free fa0
              #                    free a4
              #                    occupy a4 with temp_57_ptr_of_b1_35_44
              #                    store to temp_57_ptr_of_b1_35_44 in mem offset legal
    sd      a4,32(sp)
              #                    release a4 with temp_57_ptr_of_b1_35_44
              #                     243  b1_35_2 = chi b1_35_1:242 
              #                     245  temp_59_ptr_of_b2_35_44 = GEP b2_35_1:Array:f32:[Some(3_0)] [Some(i_35_2)] 
              #                    occupy a4 with temp_59_ptr_of_b2_35_44
    li      a4, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with i_35_2
              #                    load from i_35_2 in mem


    lw      s4,264(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with i_35_2
              #                    store to i_35_2 in mem offset legal
    sw      s4,264(sp)
              #                    release s4 with i_35_2
    add     a4,a4,s3
              #                    free s3
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,320
              #                    free a4
              #                    occupy a4 with temp_59_ptr_of_b2_35_44
              #                    store to temp_59_ptr_of_b2_35_44 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_59_ptr_of_b2_35_44
              #                     247  (nop) 
              #                     248  store temp_50__44_0:f32 temp_59_ptr_of_b2_35_44:ptr->f32 
              #                    occupy a4 with temp_59_ptr_of_b2_35_44
              #                    load from temp_59_ptr_of_b2_35_44 in mem
    ld      a4,24(sp)
              #                    occupy fa0 with temp_50__44_0
    fsw     fa0,0(a4)
              #                    free fa0
              #                    free a4
              #                    occupy a4 with temp_59_ptr_of_b2_35_44
              #                    store to temp_59_ptr_of_b2_35_44 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_59_ptr_of_b2_35_44
              #                     249  b2_35_2 = chi b2_35_1:248 
              #                     251  temp_61_arithop_44_0 = Add i32 i_35_2, 1_0 
              #                    occupy a4 with i_35_2
              #                    load from i_35_2 in mem


    lw      a4,264(sp)
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_61_arithop_44_0
    ADDW    s4,a4,s3
              #                    free a4
              #                    occupy a4 with i_35_2
              #                    store to i_35_2 in mem offset legal
    sw      a4,264(sp)
              #                    release a4 with i_35_2
              #                    free s3
              #                    free s4
              #                    occupy s4 with temp_61_arithop_44_0
              #                    store to temp_61_arithop_44_0 in mem offset legal
    sw      s4,20(sp)
              #                    release s4 with temp_61_arithop_44_0
              #                     252  (nop) 
              #                     332  i_35_2 = i32 temp_61_arithop_44_0 
              #                    occupy a4 with temp_61_arithop_44_0
              #                    load from temp_61_arithop_44_0 in mem


    lw      a4,20(sp)
              #                    occupy s3 with i_35_2
    mv      s3, a4
              #                    free a4
              #                    occupy a4 with temp_61_arithop_44_0
              #                    store to temp_61_arithop_44_0 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_61_arithop_44_0
              #                    free s3
              #                    occupy s3 with i_35_2
              #                    store to i_35_2 in mem offset legal
    sw      s3,264(sp)
              #                    release s3 with i_35_2
              #                          jump label: while.head_43 
              #                    occupy a1 with temp_62_value_from_ptr_42_0
              #                    store to temp_62_value_from_ptr_42_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_62_value_from_ptr_42_0
              #                    occupy s2 with temp_55_ptr_of_b0_35_44
              #                    store to temp_55_ptr_of_b0_35_44 in mem offset legal
    sd      s2,40(sp)
              #                    release s2 with temp_55_ptr_of_b0_35_44
              #                    occupy a7 with temp_53_ptr_of_a2_35_44
              #                    store to temp_53_ptr_of_a2_35_44 in mem offset legal
    sd      a7,48(sp)
              #                    release a7 with temp_53_ptr_of_a2_35_44
              #                    occupy a2 with temp_63_cmp_42_0
              #                    store to temp_63_cmp_42_0 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_63_cmp_42_0
              #                    occupy a4 with i_35_2
              #                    load from i_35_2 in mem


    lw      a4,264(sp)
              #                    occupy a0 with temp_49_ptr_of_a0_35_44
              #                    store to temp_49_ptr_of_a0_35_44 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with temp_49_ptr_of_a0_35_44
              #                    occupy fa0 with temp_50__44_0
              #                    store to temp_50__44_0 in mem offset legal
    fsw     fa0,68(sp)
              #                    release fa0 with temp_50__44_0
              #                    occupy a5 with temp_51_ptr_of_a1_35_44
              #                    store to temp_51_ptr_of_a1_35_44 in mem offset legal
    sd      a5,56(sp)
              #                    release a5 with temp_51_ptr_of_a1_35_44
    j       .while.head_43
              #                    regtab     a1:Freed { symidx: temp_62_value_from_ptr_42_0, tracked: true } |     a2:Freed { symidx: temp_63_cmp_42_0, tracked: true } |     a4:Freed { symidx: i_35_2, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     260  label while.exit_43: 
.while.exit_43:
              #                     372  untrack i_35_2 
              #                    occupy a4 with i_35_2
              #                    release a4 with i_35_2
              #                     146  temp_27_ele_ptr_of_a0_35_35 = GEP a0_35_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a0 with temp_27_ele_ptr_of_a0_35_35
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,380
              #                    free a0
              #                     148  temp_28_ele_ptr_of_a1_35_35 = GEP a1_35_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a3 with temp_28_ele_ptr_of_a1_35_35
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,368
              #                    free a3
              #                     150  temp_29_ele_ptr_of_a2_35_35 = GEP a2_35_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a4 with temp_29_ele_ptr_of_a2_35_35
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,356
              #                    free a4
              #                     152  temp_30_ele_ptr_of_b0_35_35 = GEP b0_35_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a5 with temp_30_ele_ptr_of_b0_35_35
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,344
              #                    free a5
              #                     154  temp_31_ele_ptr_of_b1_35_35 = GEP b1_35_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a6 with temp_31_ele_ptr_of_b1_35_35
    li      a6, 0
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,332
              #                    free a6
              #                     156  temp_32_ele_ptr_of_b2_35_35 = GEP b2_35_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a7 with temp_32_ele_ptr_of_b2_35_35
    li      a7, 0
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,320
              #                    free a7
              #                     158  temp_33_ele_ptr_of_c0_35_35 = GEP c0_35_0:Array:f32:[Some(6_0)] [] 
              #                    occupy s1 with temp_33_ele_ptr_of_c0_35_35
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,296
              #                    free s1
              #                     160  temp_34_ele_ptr_of_c1_35_35 = GEP c1_35_0:Array:f32:[Some(3_0)] [] 
              #                    occupy s2 with temp_34_ele_ptr_of_c1_35_35
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,284
              #                    free s2
              #                    occupy s2 with temp_34_ele_ptr_of_c1_35_35
              #                    store to temp_34_ele_ptr_of_c1_35_35 in mem offset legal
    sd      s2,184(sp)
              #                    release s2 with temp_34_ele_ptr_of_c1_35_35
              #                     162  temp_35_ele_ptr_of_c2_35_35 = GEP c2_35_0:Array:f32:[Some(3_0)] [] 
              #                    occupy s2 with temp_35_ele_ptr_of_c2_35_35
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,272
              #                    free s2
              #                    occupy s2 with temp_35_ele_ptr_of_c2_35_35
              #                    store to temp_35_ele_ptr_of_c2_35_35 in mem offset legal
    sd      s2,176(sp)
              #                    release s2 with temp_35_ele_ptr_of_c2_35_35
              #                     164  temp_36_ret_of_tran_35_0 =  Call i32 tran_0(temp_27_ele_ptr_of_a0_35_35, temp_28_ele_ptr_of_a1_35_35, temp_29_ele_ptr_of_a2_35_35, temp_30_ele_ptr_of_b0_35_35, temp_31_ele_ptr_of_b1_35_35, temp_32_ele_ptr_of_b2_35_35, temp_33_ele_ptr_of_c0_35_35, temp_34_ele_ptr_of_c1_35_35, temp_35_ele_ptr_of_c2_35_35) 
              #                    saved register dumping to mem
              #                    occupy s2 with temp_35_ele_ptr_of_c2_35_35
              #                    load from temp_35_ele_ptr_of_c2_35_35 in mem
    ld      s2,176(sp)
              #                    store to c2_19 in mem offset legal
    sd      s2,-40(sp)
              #                    free s2
              #                    occupy s2 with temp_35_ele_ptr_of_c2_35_35
              #                    store to temp_35_ele_ptr_of_c2_35_35 in mem offset legal
    sd      s2,176(sp)
              #                    release s2 with temp_35_ele_ptr_of_c2_35_35
              #                    occupy s1 with temp_33_ele_ptr_of_c0_35_35
              #                    store to temp_33_ele_ptr_of_c0_35_35 in mem offset legal
    sd      s1,192(sp)
              #                    release s1 with temp_33_ele_ptr_of_c0_35_35
              #                    occupy a0 with temp_27_ele_ptr_of_a0_35_35
              #                    store to temp_27_ele_ptr_of_a0_35_35 in mem offset legal
    sd      a0,240(sp)
              #                    release a0 with temp_27_ele_ptr_of_a0_35_35
              #                    occupy a1 with temp_62_value_from_ptr_42_0
              #                    store to temp_62_value_from_ptr_42_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_62_value_from_ptr_42_0
              #                    occupy a2 with temp_63_cmp_42_0
              #                    store to temp_63_cmp_42_0 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_63_cmp_42_0
              #                    occupy a3 with temp_28_ele_ptr_of_a1_35_35
              #                    store to temp_28_ele_ptr_of_a1_35_35 in mem offset legal
    sd      a3,232(sp)
              #                    release a3 with temp_28_ele_ptr_of_a1_35_35
              #                    occupy a4 with temp_29_ele_ptr_of_a2_35_35
              #                    store to temp_29_ele_ptr_of_a2_35_35 in mem offset legal
    sd      a4,224(sp)
              #                    release a4 with temp_29_ele_ptr_of_a2_35_35
              #                    occupy a5 with temp_30_ele_ptr_of_b0_35_35
              #                    store to temp_30_ele_ptr_of_b0_35_35 in mem offset legal
    sd      a5,216(sp)
              #                    release a5 with temp_30_ele_ptr_of_b0_35_35
              #                    occupy a6 with temp_31_ele_ptr_of_b1_35_35
              #                    store to temp_31_ele_ptr_of_b1_35_35 in mem offset legal
    sd      a6,208(sp)
              #                    release a6 with temp_31_ele_ptr_of_b1_35_35
              #                    occupy a7 with temp_32_ele_ptr_of_b2_35_35
              #                    store to temp_32_ele_ptr_of_b2_35_35 in mem offset legal
    sd      a7,200(sp)
              #                    release a7 with temp_32_ele_ptr_of_b2_35_35
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_27_ele_ptr_of_a0_35_35_0
              #                    load from temp_27_ele_ptr_of_a0_35_35 in mem
    ld      a0,240(sp)
              #                    occupy a1 with _anonymous_of_temp_28_ele_ptr_of_a1_35_35_0
              #                    load from temp_28_ele_ptr_of_a1_35_35 in mem
    ld      a1,232(sp)
              #                    occupy a2 with _anonymous_of_temp_29_ele_ptr_of_a2_35_35_0
              #                    load from temp_29_ele_ptr_of_a2_35_35 in mem
    ld      a2,224(sp)
              #                    occupy a3 with _anonymous_of_temp_30_ele_ptr_of_b0_35_35_0
              #                    load from temp_30_ele_ptr_of_b0_35_35 in mem
    ld      a3,216(sp)
              #                    occupy a4 with _anonymous_of_temp_31_ele_ptr_of_b1_35_35_0
              #                    load from temp_31_ele_ptr_of_b1_35_35 in mem
    ld      a4,208(sp)
              #                    occupy a5 with _anonymous_of_temp_32_ele_ptr_of_b2_35_35_0
              #                    load from temp_32_ele_ptr_of_b2_35_35 in mem
    ld      a5,200(sp)
              #                    occupy a6 with _anonymous_of_temp_33_ele_ptr_of_c0_35_35_0
              #                    load from temp_33_ele_ptr_of_c0_35_35 in mem
    ld      a6,192(sp)
              #                    occupy a7 with _anonymous_of_temp_34_ele_ptr_of_c1_35_35_0
              #                    load from temp_34_ele_ptr_of_c1_35_35 in mem
    ld      a7,184(sp)
              #                    arg load ended


    call    tran
              #                     382  untrack temp_33_ele_ptr_of_c0_35_35 
              #                     381  untrack temp_30_ele_ptr_of_b0_35_35 
              #                     380  untrack temp_32_ele_ptr_of_b2_35_35 
              #                     379  untrack temp_28_ele_ptr_of_a1_35_35 
              #                     378  untrack temp_29_ele_ptr_of_a2_35_35 
              #                     377  untrack temp_34_ele_ptr_of_c1_35_35 
              #                     376  untrack temp_35_ele_ptr_of_c2_35_35 
              #                     375  untrack temp_27_ele_ptr_of_a0_35_35 
              #                     373  untrack temp_31_ele_ptr_of_b1_35_35 
              #                     297  mu b2_35_1:164 
              #                     298  mu a1_35_1:164 
              #                     299  mu b0_35_1:164 
              #                     300  mu b1_35_1:164 
              #                     301  mu c0_35_0:164 
              #                     302  mu c1_35_0:164 
              #                     303  mu c2_35_0:164 
              #                     304  mu a0_35_1:164 
              #                     305  mu a2_35_1:164 
              #                     306  a0_35_3 = chi a0_35_1:164 
              #                     307  b0_35_3 = chi b0_35_1:164 
              #                     308  a2_35_3 = chi a2_35_1:164 
              #                     309  b1_35_3 = chi b1_35_1:164 
              #                     310  a1_35_3 = chi a1_35_1:164 
              #                     311  c1_35_1 = chi c1_35_0:164 
              #                     312  b2_35_3 = chi b2_35_1:164 
              #                     313  c0_35_1 = chi c0_35_0:164 
              #                     314  c2_35_1 = chi c2_35_0:164 
              #                     165  (nop) 
              #                     167   
              #                     263  temp_64_value_from_ptr_54_0 = load *N_0:ptr->i32 
              #                    occupy a1 with *N_0
              #                       load label N as ptr to reg
    la      a1, N
              #                    occupy reg a1 with *N_0
              #                    occupy a2 with temp_64_value_from_ptr_54_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     264  mu N_0_2:263 
              #                     333  i_35_5 = i32 temp_36_ret_of_tran_35_0 
              #                    occupy a0 with temp_36_ret_of_tran_35_0
              #                    occupy a3 with i_35_5
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                     374  untrack temp_36_ret_of_tran_35_0 
              #                    occupy a0 with temp_36_ret_of_tran_35_0
              #                    release a0 with temp_36_ret_of_tran_35_0
              #                          jump label: while.head_55 
    j       .while.head_55
              #                    regtab     a2:Freed { symidx: temp_64_value_from_ptr_54_0, tracked: true } |     a3:Freed { symidx: i_35_5, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     267  label while.head_55: 
.while.head_55:
              #                     266  temp_65_cmp_54_0 = icmp i32 Slt i_35_5, temp_64_value_from_ptr_54_0 
              #                    occupy a3 with i_35_5
              #                    occupy a2 with temp_64_value_from_ptr_54_0
              #                    occupy a0 with temp_65_cmp_54_0
    slt     a0,a3,a2
              #                    free a3
              #                    free a2
              #                    free a0
              #                     270  br i1 temp_65_cmp_54_0, label while.body_55, label while.exit_55 
              #                    occupy a0 with temp_65_cmp_54_0
              #                    free a0
              #                    occupy a0 with temp_65_cmp_54_0
    bnez    a0, .while.body_55
              #                    free a0
    j       .while.exit_55
              #                    regtab     a0:Freed { symidx: temp_65_cmp_54_0, tracked: true } |     a2:Freed { symidx: temp_64_value_from_ptr_54_0, tracked: true } |     a3:Freed { symidx: i_35_5, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     268  label while.body_55: 
.while.body_55:
              #                     203  temp_45_ptr_of_c0_35_56 = GEP c0_35_1:Array:f32:[Some(6_0)] [Some(i_35_5)] 
              #                    occupy a1 with temp_45_ptr_of_c0_35_56
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_35_5
    mv      a4, a3
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,296
              #                    free a1
              #                     205  temp_46_ele_of_c0_35_56_0 = load temp_45_ptr_of_c0_35_56:ptr->f32 
              #                    occupy a1 with temp_45_ptr_of_c0_35_56
              #                    occupy fa0 with temp_46_ele_of_c0_35_56_0
    flw     fa0,0(a1)
              #                    free fa0
              #                    free a1
              #                     206  mu c0_35_1:205 
              #                     208  temp_47__56_0 = fptosi f32 temp_46_ele_of_c0_35_56_0 to i32 
              #                    occupy fa0 with temp_46_ele_of_c0_35_56_0
              #                    occupy a5 with temp_47__56_0
    fcvt.w.s a5,fa0,rtz
              #                    free fa0
              #                    free a5
              #                     209  (nop) 
              #                     210   Call void putint_0(temp_47__56_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_65_cmp_54_0
              #                    store to temp_65_cmp_54_0 in mem offset legal
    sb      a0,7(sp)
              #                    release a0 with temp_65_cmp_54_0
              #                    occupy a1 with temp_45_ptr_of_c0_35_56
              #                    store to temp_45_ptr_of_c0_35_56 in mem offset legal
    sd      a1,96(sp)
              #                    release a1 with temp_45_ptr_of_c0_35_56
              #                    occupy a2 with temp_64_value_from_ptr_54_0
              #                    store to temp_64_value_from_ptr_54_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_64_value_from_ptr_54_0
              #                    occupy a3 with i_35_5
              #                    store to i_35_5 in mem offset legal
    sw      a3,260(sp)
              #                    release a3 with i_35_5
              #                    occupy a5 with temp_47__56_0
              #                    store to temp_47__56_0 in mem offset legal
    sw      a5,88(sp)
              #                    release a5 with temp_47__56_0
              #                    occupy fa0 with temp_46_ele_of_c0_35_56_0
              #                    store to temp_46_ele_of_c0_35_56_0 in mem offset legal
    fsw     fa0,92(sp)
              #                    release fa0 with temp_46_ele_of_c0_35_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_47__56_0_0
              #                    load from temp_47__56_0 in mem


    lw      a0,88(sp)
              #                    arg load ended


    call    putint
              #                     212  temp_48_arithop_56_0 = Add i32 i_35_5, 1_0 
              #                    occupy a0 with i_35_5
              #                    load from i_35_5 in mem


    lw      a0,260(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_48_arithop_56_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     213  (nop) 
              #                     334  i_35_5 = i32 temp_48_arithop_56_0 
              #                    occupy a2 with temp_48_arithop_56_0
              #                    occupy a0 with i_35_5
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_55 
              #                    occupy a2 with temp_48_arithop_56_0
              #                    store to temp_48_arithop_56_0 in mem offset legal
    sw      a2,84(sp)
              #                    release a2 with temp_48_arithop_56_0
              #                    occupy a2 with temp_64_value_from_ptr_54_0
              #                    load from temp_64_value_from_ptr_54_0 in mem


    lw      a2,8(sp)
              #                    occupy a0 with i_35_5
              #                    store to i_35_5 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with i_35_5
              #                    occupy a3 with i_35_5
              #                    load from i_35_5 in mem


    lw      a3,260(sp)
    j       .while.head_55
              #                    regtab     a0:Freed { symidx: temp_65_cmp_54_0, tracked: true } |     a2:Freed { symidx: temp_64_value_from_ptr_54_0, tracked: true } |     a3:Freed { symidx: i_35_5, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     269  label while.exit_55: 
.while.exit_55:
              #                     383  untrack i_35_5 
              #                    occupy a3 with i_35_5
              #                    release a3 with i_35_5
              #                     168  (nop) 
              #                     169   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_65_cmp_54_0
              #                    store to temp_65_cmp_54_0 in mem offset legal
    sb      a0,7(sp)
              #                    release a0 with temp_65_cmp_54_0
              #                    occupy a2 with temp_64_value_from_ptr_54_0
              #                    store to temp_64_value_from_ptr_54_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_64_value_from_ptr_54_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     170  (nop) 
              #                     272  (nop) 
              #                     273  mu N_0_2:272 
              #                     335  i_35_8 = i32 0_0 
              #                    occupy a0 with i_35_8
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_64 
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: i_35_8, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     276  label while.head_64: 
.while.head_64:
              #                     275  temp_67_cmp_63_0 = icmp i32 Slt i_35_8, temp_64_value_from_ptr_54_0 
              #                    occupy a0 with i_35_8
              #                    occupy a1 with temp_64_value_from_ptr_54_0
              #                    load from temp_64_value_from_ptr_54_0 in mem


    lw      a1,8(sp)
              #                    occupy a2 with temp_67_cmp_63_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     279  br i1 temp_67_cmp_63_0, label while.body_64, label while.exit_64 
              #                    occupy a2 with temp_67_cmp_63_0
              #                    free a2
              #                    occupy a2 with temp_67_cmp_63_0
    bnez    a2, .while.body_64
              #                    free a2
    j       .while.exit_64
              #                    regtab     a0:Freed { symidx: i_35_8, tracked: true } |     a1:Freed { symidx: temp_64_value_from_ptr_54_0, tracked: true } |     a2:Freed { symidx: temp_67_cmp_63_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     277  label while.body_64: 
.while.body_64:
              #                     191  temp_41_ptr_of_c1_35_65 = GEP c1_35_1:Array:f32:[Some(3_0)] [Some(i_35_8)] 
              #                    occupy a3 with temp_41_ptr_of_c1_35_65
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_35_8
    mv      a4, a0
              #                    free a0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,284
              #                    free a3
              #                     193  temp_42_ele_of_c1_35_65_0 = load temp_41_ptr_of_c1_35_65:ptr->f32 
              #                    occupy a3 with temp_41_ptr_of_c1_35_65
              #                    occupy fa0 with temp_42_ele_of_c1_35_65_0
    flw     fa0,0(a3)
              #                    free fa0
              #                    free a3
              #                     194  mu c1_35_1:193 
              #                     196  temp_43__65_0 = fptosi f32 temp_42_ele_of_c1_35_65_0 to i32 
              #                    occupy fa0 with temp_42_ele_of_c1_35_65_0
              #                    occupy a5 with temp_43__65_0
    fcvt.w.s a5,fa0,rtz
              #                    free fa0
              #                    free a5
              #                     197  (nop) 
              #                     198   Call void putint_0(temp_43__65_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_35_8
              #                    store to i_35_8 in mem offset legal
    sw      a0,256(sp)
              #                    release a0 with i_35_8
              #                    occupy a1 with temp_64_value_from_ptr_54_0
              #                    store to temp_64_value_from_ptr_54_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_64_value_from_ptr_54_0
              #                    occupy a2 with temp_67_cmp_63_0
              #                    store to temp_67_cmp_63_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_67_cmp_63_0
              #                    occupy a3 with temp_41_ptr_of_c1_35_65
              #                    store to temp_41_ptr_of_c1_35_65 in mem offset legal
    sd      a3,120(sp)
              #                    release a3 with temp_41_ptr_of_c1_35_65
              #                    occupy a5 with temp_43__65_0
              #                    store to temp_43__65_0 in mem offset legal
    sw      a5,112(sp)
              #                    release a5 with temp_43__65_0
              #                    occupy fa0 with temp_42_ele_of_c1_35_65_0
              #                    store to temp_42_ele_of_c1_35_65_0 in mem offset legal
    fsw     fa0,116(sp)
              #                    release fa0 with temp_42_ele_of_c1_35_65_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_43__65_0_0
              #                    load from temp_43__65_0 in mem


    lw      a0,112(sp)
              #                    arg load ended


    call    putint
              #                     200  temp_44_arithop_65_0 = Add i32 i_35_8, 1_0 
              #                    occupy a0 with i_35_8
              #                    load from i_35_8 in mem


    lw      a0,256(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_44_arithop_65_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     201  (nop) 
              #                     336  i_35_8 = i32 temp_44_arithop_65_0 
              #                    occupy a2 with temp_44_arithop_65_0
              #                    occupy a0 with i_35_8
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_64 
              #                    occupy a2 with temp_44_arithop_65_0
              #                    store to temp_44_arithop_65_0 in mem offset legal
    sw      a2,108(sp)
              #                    release a2 with temp_44_arithop_65_0
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: i_35_8, tracked: true } |     a1:Freed { symidx: temp_64_value_from_ptr_54_0, tracked: true } |     a2:Freed { symidx: temp_67_cmp_63_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     278  label while.exit_64: 
.while.exit_64:
              #                     384  untrack i_35_8 
              #                    occupy a0 with i_35_8
              #                    release a0 with i_35_8
              #                     171  (nop) 
              #                     172  (nop) 
              #                     173   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_64_value_from_ptr_54_0
              #                    store to temp_64_value_from_ptr_54_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_64_value_from_ptr_54_0
              #                    occupy a2 with temp_67_cmp_63_0
              #                    store to temp_67_cmp_63_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_67_cmp_63_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     281  (nop) 
              #                     282  mu N_0_2:281 
              #                     337  i_35_11 = i32 0_0 
              #                    occupy a0 with i_35_11
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_73 
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: i_35_11, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     285  label while.head_73: 
.while.head_73:
              #                     284  temp_69_cmp_72_0 = icmp i32 Slt i_35_11, temp_64_value_from_ptr_54_0 
              #                    occupy a0 with i_35_11
              #                    occupy a1 with temp_64_value_from_ptr_54_0
              #                    load from temp_64_value_from_ptr_54_0 in mem


    lw      a1,8(sp)
              #                    occupy a2 with temp_69_cmp_72_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     288  br i1 temp_69_cmp_72_0, label while.body_73, label while.exit_73 
              #                    occupy a2 with temp_69_cmp_72_0
              #                    free a2
              #                    occupy a2 with temp_69_cmp_72_0
    bnez    a2, .while.body_73
              #                    free a2
    j       .while.exit_73
              #                    regtab     a0:Freed { symidx: i_35_11, tracked: true } |     a1:Freed { symidx: temp_64_value_from_ptr_54_0, tracked: true } |     a2:Freed { symidx: temp_69_cmp_72_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     286  label while.body_73: 
.while.body_73:
              #                     179  temp_37_ptr_of_c2_35_74 = GEP c2_35_1:Array:f32:[Some(3_0)] [Some(i_35_11)] 
              #                    occupy a3 with temp_37_ptr_of_c2_35_74
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_35_11
    mv      a4, a0
              #                    free a0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,272
              #                    free a3
              #                     181  temp_38_ele_of_c2_35_74_0 = load temp_37_ptr_of_c2_35_74:ptr->f32 
              #                    occupy a3 with temp_37_ptr_of_c2_35_74
              #                    occupy fa0 with temp_38_ele_of_c2_35_74_0
    flw     fa0,0(a3)
              #                    free fa0
              #                    free a3
              #                     182  mu c2_35_1:181 
              #                     184  temp_39__74_0 = fptosi f32 temp_38_ele_of_c2_35_74_0 to i32 
              #                    occupy fa0 with temp_38_ele_of_c2_35_74_0
              #                    occupy a5 with temp_39__74_0
    fcvt.w.s a5,fa0,rtz
              #                    free fa0
              #                    free a5
              #                     185  (nop) 
              #                     186   Call void putint_0(temp_39__74_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_35_11
              #                    store to i_35_11 in mem offset legal
    sw      a0,252(sp)
              #                    release a0 with i_35_11
              #                    occupy a1 with temp_64_value_from_ptr_54_0
              #                    store to temp_64_value_from_ptr_54_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_64_value_from_ptr_54_0
              #                    occupy a2 with temp_69_cmp_72_0
              #                    store to temp_69_cmp_72_0 in mem offset legal
    sb      a2,5(sp)
              #                    release a2 with temp_69_cmp_72_0
              #                    occupy a3 with temp_37_ptr_of_c2_35_74
              #                    store to temp_37_ptr_of_c2_35_74 in mem offset legal
    sd      a3,144(sp)
              #                    release a3 with temp_37_ptr_of_c2_35_74
              #                    occupy a5 with temp_39__74_0
              #                    store to temp_39__74_0 in mem offset legal
    sw      a5,136(sp)
              #                    release a5 with temp_39__74_0
              #                    occupy fa0 with temp_38_ele_of_c2_35_74_0
              #                    store to temp_38_ele_of_c2_35_74_0 in mem offset legal
    fsw     fa0,140(sp)
              #                    release fa0 with temp_38_ele_of_c2_35_74_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_39__74_0_0
              #                    load from temp_39__74_0 in mem


    lw      a0,136(sp)
              #                    arg load ended


    call    putint
              #                     188  temp_40_arithop_74_0 = Add i32 i_35_11, 1_0 
              #                    occupy a0 with i_35_11
              #                    load from i_35_11 in mem


    lw      a0,252(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_40_arithop_74_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     189  (nop) 
              #                     338  i_35_11 = i32 temp_40_arithop_74_0 
              #                    occupy a2 with temp_40_arithop_74_0
              #                    occupy a0 with i_35_11
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_73 
              #                    occupy a2 with temp_40_arithop_74_0
              #                    store to temp_40_arithop_74_0 in mem offset legal
    sw      a2,132(sp)
              #                    release a2 with temp_40_arithop_74_0
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: i_35_11, tracked: true } |     a1:Freed { symidx: temp_64_value_from_ptr_54_0, tracked: true } |     a2:Freed { symidx: temp_69_cmp_72_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     287  label while.exit_73: 
.while.exit_73:
              #                     386  untrack i_35_11 
              #                    occupy a0 with i_35_11
              #                    release a0 with i_35_11
              #                     385  untrack temp_64_value_from_ptr_54_0 
              #                    occupy a1 with temp_64_value_from_ptr_54_0
              #                    release a1 with temp_64_value_from_ptr_54_0
              #                     174  (nop) 
              #                     175   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_69_cmp_72_0
              #                    store to temp_69_cmp_72_0 in mem offset legal
    sb      a2,5(sp)
              #                    release a2 with temp_69_cmp_72_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     315  mu N_0_2:177 
              #                     316  mu M_0_2:177 
              #                     317  mu L_0_2:177 
              #                     177  ret 0_0 
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
