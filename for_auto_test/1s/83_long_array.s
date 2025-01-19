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
              #                     19   Define long_array_0 "k_17_0," -> long_array_ret_0 
    .globl long_array
    .type long_array,@function
long_array:
              #                    mem layout:|ra_long_array:8 at 120384|s0_long_array:8 at 120376|k _s17 _i0:4 at 120372|a1:40000 at 80372|a2:40000 at 40372|a3:40000 at 372|i _s19 _i1:4 at 368|i _s19 _i4:4 at 364|i _s19 _i7:4 at 360|i _s19 _i10:4 at 356|ans _s19 _i1:4 at 352|ans _s19 _i3:4 at 348|ans _s19 _i4:4 at 344|ans _s19 _i6:4 at 340|ans _s19 _i7:4 at 336|ans _s19 _i9:4 at 332|ans _s19 _i11:4 at 328|temp_0_ptr_of_a3_19:8 at 320|temp_1_ele_of_a3_19 _s77 _i0:4 at 316|temp_2_arithop _s77 _i0:4 at 312|temp_3_arithop _s77 _i0:4 at 308|temp_4_arithop _s77 _i0:4 at 304|temp_5_arithop _s45 _i0:4 at 300|j _s63 _i1:4 at 296|j _s63 _i3:4 at 292|none:4 at 288|temp_6_ptr_of_a1_19:8 at 280|temp_7_ele_of_a1_19 _s73 _i0:4 at 276|temp_8_arithop _s73 _i0:4 at 272|temp_9_ptr_of_a3_19:8 at 264|temp_10_ele_of_a3_19 _s73 _i0:4 at 260|temp_11_arithop _s73 _i0:4 at 256|temp_12_arithop _s73 _i0:4 at 252|temp_13_arithop _s73 _i0:4 at 248|temp_14_ptr_of_a2_19:8 at 240|temp_15_ele_of_a2_19 _s70 _i0:4 at 236|temp_16_arithop _s70 _i0:4 at 232|temp_17_ptr_of_a1_19:8 at 224|temp_18_ele_of_a1_19 _s70 _i0:4 at 220|temp_19_arithop _s70 _i0:4 at 216|temp_20_arithop _s70 _i0:4 at 212|j _s53 _i1:4 at 208|temp_21_ptr_of_a3_19:8 at 200|temp_22_ele_of_a3_19 _s57 _i0:4 at 196|temp_23_arithop _s57 _i0:4 at 192|temp_24_ptr_of_a1_19:8 at 184|temp_25_ele_of_a1_19 _s57 _i0:4 at 180|temp_26_arithop _s57 _i0:4 at 176|temp_27_arithop _s57 _i0:4 at 172|none:4 at 168|temp_28_ptr_of_a3_19:8 at 160|temp_29_ele_of_a3_19 _s48 _i0:4 at 156|temp_30_arithop _s48 _i0:4 at 152|temp_31_arithop _s48 _i0:4 at 148|none:4 at 144|temp_32_ptr_of_a3_19:8 at 136|temp_33_ptr_of_a2_19:8 at 128|temp_34_ele_of_a2_19 _s38 _i0:4 at 124|none:4 at 120|temp_35_ptr_of_a2_19:8 at 112|temp_37_arithop _s38 _i0:4 at 108|temp_38_arithop _s38 _i0:4 at 104|temp_39_ptr_of_a1_19:8 at 96|temp_40_ele_of_a1_19 _s38 _i0:4 at 92|temp_41_arithop _s38 _i0:4 at 88|temp_42_arithop _s38 _i0:4 at 84|none:4 at 80|temp_43_ptr_of_a2_19:8 at 72|temp_44_ptr_of_a1_19:8 at 64|temp_45_ele_of_a1_19 _s32 _i0:4 at 60|none:4 at 56|temp_46_ptr_of_a1_19:8 at 48|temp_48_arithop _s32 _i0:4 at 44|temp_49_arithop _s32 _i0:4 at 40|temp_50_arithop _s32 _i0:4 at 36|none:4 at 32|temp_51_ptr_of_a1_19:8 at 24|temp_52_arithop _s26 _i0:4 at 20|temp_53_arithop _s26 _i0:4 at 16|temp_54_arithop _s26 _i0:4 at 12|temp_55_cmp _s24 _i0:1 at 11|temp_56_cmp _s30 _i0:1 at 10|temp_57_cmp _s36 _i0:1 at 9|temp_58_cmp _s43 _i0:1 at 8|temp_59_cmp _s46 _i0:1 at 7|temp_60_cmp _s51 _i0:1 at 6|temp_61_cmp _s61 _i0:1 at 5|temp_62_cmp _s65 _i0:1 at 4|temp_63_cmp _s68 _i0:1 at 3|temp_64_cmp _s55 _i0:1 at 2|none:2 at 0
              #                    occupy a1 with -120392_0
    li      a1, -120392
    li      a1, -120392
    add     sp,a1,sp
              #                    free a1
              #                    store to ra_long_array_0 in mem offset_illegal
              #                    occupy a2 with _anonymous_of_120384_0_0
    li      a2, 120384
    li      a2, 120384
    add     a2,sp,a2
    sd      ra,0(a2)
              #                    free a2
              #                    store to s0_long_array_0 in mem offset_illegal
              #                    occupy a3 with _anonymous_of_120376_0_0
    li      a3, 120376
    li      a3, 120376
    add     a3,sp,a3
    sd      s0,0(a3)
              #                    free a3
              #                    occupy a4 with 120392_0
    li      a4, 120392
    li      a4, 120392
    add     s0,a4,sp
              #                    free a4
              #                     22   alloc Array:i32:[Some(10000_0)] [a1_19] 
              #                     24   alloc Array:i32:[Some(10000_0)] [a2_19] 
              #                     26   alloc Array:i32:[Some(10000_0)] [a3_19] 
              #                     28   alloc i32 [i_19] 
              #                     32   alloc i32 [ans_19] 
              #                     36   alloc ptr->i32 [temp_0_ptr_of_a3_19_77] 
              #                     38   alloc i32 [temp_1_ele_of_a3_19_77] 
              #                     41   alloc i32 [temp_2_arithop_77] 
              #                     43   alloc i32 [temp_3_arithop_77] 
              #                     45   alloc i32 [temp_4_arithop_77] 
              #                     48   alloc i32 [temp_5_arithop_45] 
              #                     52   alloc i32 [j_63] 
              #                     54   alloc ptr->i32 [temp_6_ptr_of_a1_19_73] 
              #                     56   alloc i32 [temp_7_ele_of_a1_19_73] 
              #                     59   alloc i32 [temp_8_arithop_73] 
              #                     61   alloc ptr->i32 [temp_9_ptr_of_a3_19_73] 
              #                     63   alloc i32 [temp_10_ele_of_a3_19_73] 
              #                     66   alloc i32 [temp_11_arithop_73] 
              #                     68   alloc i32 [temp_12_arithop_73] 
              #                     71   alloc i32 [temp_13_arithop_73] 
              #                     74   alloc ptr->i32 [temp_14_ptr_of_a2_19_70] 
              #                     76   alloc i32 [temp_15_ele_of_a2_19_70] 
              #                     79   alloc i32 [temp_16_arithop_70] 
              #                     81   alloc ptr->i32 [temp_17_ptr_of_a1_19_70] 
              #                     83   alloc i32 [temp_18_ele_of_a1_19_70] 
              #                     86   alloc i32 [temp_19_arithop_70] 
              #                     89   alloc i32 [temp_20_arithop_70] 
              #                     93   alloc i32 [j_53] 
              #                     95   alloc ptr->i32 [temp_21_ptr_of_a3_19_57] 
              #                     97   alloc i32 [temp_22_ele_of_a3_19_57] 
              #                     100  alloc i32 [temp_23_arithop_57] 
              #                     102  alloc ptr->i32 [temp_24_ptr_of_a1_19_57] 
              #                     104  alloc i32 [temp_25_ele_of_a1_19_57] 
              #                     107  alloc i32 [temp_26_arithop_57] 
              #                     110  alloc i32 [temp_27_arithop_57] 
              #                     113  alloc ptr->i32 [temp_28_ptr_of_a3_19_48] 
              #                     115  alloc i32 [temp_29_ele_of_a3_19_48] 
              #                     118  alloc i32 [temp_30_arithop_48] 
              #                     120  alloc i32 [temp_31_arithop_48] 
              #                     124  alloc ptr->i32 [temp_32_ptr_of_a3_19_38] 
              #                     126  alloc ptr->i32 [temp_33_ptr_of_a2_19_38] 
              #                     128  alloc i32 [temp_34_ele_of_a2_19_38] 
              #                     131  alloc ptr->i32 [temp_35_ptr_of_a2_19_38] 
              #                     133  alloc i32 [temp_36_ele_of_a2_19_38] 
              #                     136  alloc i32 [temp_37_arithop_38] 
              #                     138  alloc i32 [temp_38_arithop_38] 
              #                     140  alloc ptr->i32 [temp_39_ptr_of_a1_19_38] 
              #                     142  alloc i32 [temp_40_ele_of_a1_19_38] 
              #                     145  alloc i32 [temp_41_arithop_38] 
              #                     149  alloc i32 [temp_42_arithop_38] 
              #                     152  alloc ptr->i32 [temp_43_ptr_of_a2_19_32] 
              #                     154  alloc ptr->i32 [temp_44_ptr_of_a1_19_32] 
              #                     156  alloc i32 [temp_45_ele_of_a1_19_32] 
              #                     159  alloc ptr->i32 [temp_46_ptr_of_a1_19_32] 
              #                     161  alloc i32 [temp_47_ele_of_a1_19_32] 
              #                     164  alloc i32 [temp_48_arithop_32] 
              #                     166  alloc i32 [temp_49_arithop_32] 
              #                     170  alloc i32 [temp_50_arithop_32] 
              #                     173  alloc ptr->i32 [temp_51_ptr_of_a1_19_26] 
              #                     175  alloc i32 [temp_52_arithop_26] 
              #                     177  alloc i32 [temp_53_arithop_26] 
              #                     181  alloc i32 [temp_54_arithop_26] 
              #                     184  alloc i1 [temp_55_cmp_24] 
              #                     190  alloc i1 [temp_56_cmp_30] 
              #                     196  alloc i1 [temp_57_cmp_36] 
              #                     202  alloc i1 [temp_58_cmp_43] 
              #                     210  alloc i1 [temp_59_cmp_46] 
              #                     215  alloc i1 [temp_60_cmp_51] 
              #                     220  alloc i1 [temp_61_cmp_61] 
              #                     228  alloc i1 [temp_62_cmp_65] 
              #                     234  alloc i1 [temp_63_cmp_68] 
              #                     240  alloc i1 [temp_64_cmp_55] 
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     21    
              #                     23    
              #                     25    
              #                     27   (nop) 
              #                     269  i_19_1 = i32 0_0 
              #                    occupy a1 with i_19_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: i_19_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     186  label while.head_25: 
.while.head_25:
              #                     185  temp_55_cmp_24_0 = icmp i32 Slt i_19_1, 10000_0 
              #                    occupy a1 with i_19_1
              #                    occupy a2 with 10000_0
    li      a2, 10000
              #                    occupy a3 with temp_55_cmp_24_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     189  br i1 temp_55_cmp_24_0, label while.body_25, label while.exit_25 
              #                    occupy a3 with temp_55_cmp_24_0
              #                    free a3
              #                    occupy a3 with temp_55_cmp_24_0
    bnez    a3, .while.body_25
              #                    free a3
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: i_19_1, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     187  label while.body_25: 
.while.body_25:
              #                     174  temp_51_ptr_of_a1_19_26 = GEP a1_19_1:Array:i32:[Some(10000_0)] [Some(i_19_1)] 
              #                    occupy a2 with temp_51_ptr_of_a1_19_26
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_19_1
    mv      a4, a1
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a5 with 80372_0
    li      a5, 80372
    li      a5, 80372
    add     a2,a5,a2
              #                    free a5
              #                    free a2
              #                     176  temp_52_arithop_26_0 = Mul i32 i_19_1, i_19_1 
              #                    occupy a6 with temp_52_arithop_26_0
              #                    occupy a1 with i_19_1
              #                    occupy a1 with i_19_1
    mulw    a6,a1,a1
              #                    free a1
              #                    free a1
              #                    free a6
              #                     178  temp_53_arithop_26_0 = Mod i32 temp_52_arithop_26_0, 10_0 
              #                    occupy a6 with temp_52_arithop_26_0
              #                    occupy a7 with 10_0
    li      a7, 10
              #                    occupy s1 with temp_53_arithop_26_0
    rem     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                     179  store temp_53_arithop_26_0:i32 temp_51_ptr_of_a1_19_26:ptr->i32 
              #                    occupy a2 with temp_51_ptr_of_a1_19_26
              #                    occupy s1 with temp_53_arithop_26_0
    sw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                     180  a1_19_2 = chi a1_19_1:179 
              #                     182  temp_54_arithop_26_0 = Add i32 i_19_1, 1_0 
              #                    occupy a1 with i_19_1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_54_arithop_26_0
    ADDW    s3,a1,s2
              #                    free a1
              #                    occupy a1 with i_19_1
              #                    store to i_19_1 in mem offset legal
    sw      a1,368(sp)
              #                    release a1 with i_19_1
              #                    free s2
              #                    free s3
              #                     183  (nop) 
              #                     270  i_19_1 = i32 temp_54_arithop_26_0 
              #                    occupy s3 with temp_54_arithop_26_0
              #                    occupy a1 with i_19_1
    mv      a1, s3
              #                    free s3
              #                    occupy s3 with temp_54_arithop_26_0
              #                    store to temp_54_arithop_26_0 in mem offset legal
    sw      s3,12(sp)
              #                    release s3 with temp_54_arithop_26_0
              #                    free a1
              #                          jump label: while.head_25 
              #                    occupy a6 with temp_52_arithop_26_0
              #                    store to temp_52_arithop_26_0 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_52_arithop_26_0
              #                    occupy s1 with temp_53_arithop_26_0
              #                    store to temp_53_arithop_26_0 in mem offset legal
    sw      s1,16(sp)
              #                    release s1 with temp_53_arithop_26_0
              #                    occupy a3 with temp_55_cmp_24_0
              #                    store to temp_55_cmp_24_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_55_cmp_24_0
              #                    occupy a2 with temp_51_ptr_of_a1_19_26
              #                    store to temp_51_ptr_of_a1_19_26 in mem offset legal
    sd      a2,24(sp)
              #                    release a2 with temp_51_ptr_of_a1_19_26
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: i_19_1, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     188  label while.exit_25: 
.while.exit_25:
              #                     297  untrack i_19_1 
              #                    occupy a1 with i_19_1
              #                    release a1 with i_19_1
              #                     29   (nop) 
              #                     271  i_19_4 = i32 0_0 
              #                    occupy a1 with i_19_4
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_31 
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: i_19_4, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     192  label while.head_31: 
.while.head_31:
              #                     191  temp_56_cmp_30_0 = icmp i32 Slt i_19_4, 10000_0 
              #                    occupy a1 with i_19_4
              #                    occupy a2 with 10000_0
    li      a2, 10000
              #                    occupy a4 with temp_56_cmp_30_0
    slt     a4,a1,a2
              #                    free a1
              #                    free a2
              #                    free a4
              #                     195  br i1 temp_56_cmp_30_0, label while.body_31, label while.exit_31 
              #                    occupy a4 with temp_56_cmp_30_0
              #                    free a4
              #                    occupy a4 with temp_56_cmp_30_0
    bnez    a4, .while.body_31
              #                    free a4
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: i_19_4, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     193  label while.body_31: 
.while.body_31:
              #                     153  temp_43_ptr_of_a2_19_32 = GEP a2_19_1:Array:i32:[Some(10000_0)] [Some(i_19_4)] 
              #                    occupy a2 with temp_43_ptr_of_a2_19_32
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_19_4
    mv      a5, a1
              #                    free a1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a6 with 40372_0
    li      a6, 40372
    li      a6, 40372
    add     a2,a6,a2
              #                    free a6
              #                    free a2
              #                     155  temp_44_ptr_of_a1_19_32 = GEP a1_19_1:Array:i32:[Some(10000_0)] [Some(i_19_4)] 
              #                    occupy a7 with temp_44_ptr_of_a1_19_32
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_19_4
    mv      s1, a1
              #                    free a1
              #                    occupy a1 with i_19_4
              #                    store to i_19_4 in mem offset legal
    sw      a1,364(sp)
              #                    release a1 with i_19_4
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
    add     a7,a7,sp
              #                    occupy a1 with 80372_0
    li      a1, 80372
    li      a1, 80372
    add     a7,a1,a7
              #                    free a1
              #                    free a7
              #                     157  temp_45_ele_of_a1_19_32_0 = load temp_44_ptr_of_a1_19_32:ptr->i32 
              #                    occupy a7 with temp_44_ptr_of_a1_19_32
              #                    occupy a1 with temp_45_ele_of_a1_19_32_0
    lw      a1,0(a7)
              #                    free a1
              #                    occupy a1 with temp_45_ele_of_a1_19_32_0
              #                    store to temp_45_ele_of_a1_19_32_0 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with temp_45_ele_of_a1_19_32_0
              #                    free a7
              #                     158  mu a1_19_1:157 
              #                     160  (nop) 
              #                     162  (nop) 
              #                     163  mu a1_19_1:162 
              #                     165  temp_48_arithop_32_0 = Mul i32 temp_45_ele_of_a1_19_32_0, temp_45_ele_of_a1_19_32_0 
              #                    occupy a1 with temp_48_arithop_32_0
              #                    occupy s2 with temp_45_ele_of_a1_19_32_0
              #                    load from temp_45_ele_of_a1_19_32_0 in mem


    lw      s2,60(sp)
              #                    occupy s2 with temp_45_ele_of_a1_19_32_0
    mulw    a1,s2,s2
              #                    free s2
              #                    free s2
              #                    occupy s2 with temp_45_ele_of_a1_19_32_0
              #                    store to temp_45_ele_of_a1_19_32_0 in mem offset legal
    sw      s2,60(sp)
              #                    release s2 with temp_45_ele_of_a1_19_32_0
              #                    free a1
              #                    occupy a1 with temp_48_arithop_32_0
              #                    store to temp_48_arithop_32_0 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with temp_48_arithop_32_0
              #                     167  temp_49_arithop_32_0 = Mod i32 temp_48_arithop_32_0, 10_0 
              #                    occupy a1 with temp_48_arithop_32_0
              #                    load from temp_48_arithop_32_0 in mem


    lw      a1,44(sp)
              #                    occupy s2 with 10_0
    li      s2, 10
              #                    occupy s3 with temp_49_arithop_32_0
    rem     s3,a1,s2
              #                    free a1
              #                    occupy a1 with temp_48_arithop_32_0
              #                    store to temp_48_arithop_32_0 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with temp_48_arithop_32_0
              #                    free s2
              #                    free s3
              #                    occupy s3 with temp_49_arithop_32_0
              #                    store to temp_49_arithop_32_0 in mem offset legal
    sw      s3,40(sp)
              #                    release s3 with temp_49_arithop_32_0
              #                     168  store temp_49_arithop_32_0:i32 temp_43_ptr_of_a2_19_32:ptr->i32 
              #                    occupy a2 with temp_43_ptr_of_a2_19_32
              #                    occupy a1 with temp_49_arithop_32_0
              #                    load from temp_49_arithop_32_0 in mem


    lw      a1,40(sp)
    sw      a1,0(a2)
              #                    free a1
              #                    occupy a1 with temp_49_arithop_32_0
              #                    store to temp_49_arithop_32_0 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with temp_49_arithop_32_0
              #                    free a2
              #                     169  a2_19_2 = chi a2_19_1:168 
              #                     171  temp_50_arithop_32_0 = Add i32 i_19_4, 1_0 
              #                    occupy a1 with i_19_4
              #                    load from i_19_4 in mem


    lw      a1,364(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_50_arithop_32_0
    ADDW    s3,a1,s2
              #                    free a1
              #                    occupy a1 with i_19_4
              #                    store to i_19_4 in mem offset legal
    sw      a1,364(sp)
              #                    release a1 with i_19_4
              #                    free s2
              #                    free s3
              #                    occupy s3 with temp_50_arithop_32_0
              #                    store to temp_50_arithop_32_0 in mem offset legal
    sw      s3,36(sp)
              #                    release s3 with temp_50_arithop_32_0
              #                     172  (nop) 
              #                     272  i_19_4 = i32 temp_50_arithop_32_0 
              #                    occupy a1 with temp_50_arithop_32_0
              #                    load from temp_50_arithop_32_0 in mem


    lw      a1,36(sp)
              #                    occupy s2 with i_19_4
    mv      s2, a1
              #                    free a1
              #                    occupy a1 with temp_50_arithop_32_0
              #                    store to temp_50_arithop_32_0 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with temp_50_arithop_32_0
              #                    free s2
              #                    occupy s2 with i_19_4
              #                    store to i_19_4 in mem offset legal
    sw      s2,364(sp)
              #                    release s2 with i_19_4
              #                          jump label: while.head_31 
              #                    occupy a4 with temp_56_cmp_30_0
              #                    store to temp_56_cmp_30_0 in mem offset legal
    sb      a4,10(sp)
              #                    release a4 with temp_56_cmp_30_0
              #                    occupy a1 with i_19_4
              #                    load from i_19_4 in mem


    lw      a1,364(sp)
              #                    occupy a2 with temp_43_ptr_of_a2_19_32
              #                    store to temp_43_ptr_of_a2_19_32 in mem offset legal
    sd      a2,72(sp)
              #                    release a2 with temp_43_ptr_of_a2_19_32
              #                    occupy a7 with temp_44_ptr_of_a1_19_32
              #                    store to temp_44_ptr_of_a1_19_32 in mem offset legal
    sd      a7,64(sp)
              #                    release a7 with temp_44_ptr_of_a1_19_32
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: i_19_4, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     194  label while.exit_31: 
.while.exit_31:
              #                     298  untrack i_19_4 
              #                    occupy a1 with i_19_4
              #                    release a1 with i_19_4
              #                     30   (nop) 
              #                     273  i_19_7 = i32 0_0 
              #                    occupy a1 with i_19_7
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_37 
    j       .while.head_37
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: i_19_7, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     198  label while.head_37: 
.while.head_37:
              #                     197  temp_57_cmp_36_0 = icmp i32 Slt i_19_7, 10000_0 
              #                    occupy a1 with i_19_7
              #                    occupy a2 with 10000_0
    li      a2, 10000
              #                    occupy a5 with temp_57_cmp_36_0
    slt     a5,a1,a2
              #                    free a1
              #                    free a2
              #                    free a5
              #                     201  br i1 temp_57_cmp_36_0, label while.body_37, label while.exit_37 
              #                    occupy a5 with temp_57_cmp_36_0
              #                    free a5
              #                    occupy a5 with temp_57_cmp_36_0
    bnez    a5, .while.body_37
              #                    free a5
    j       .while.exit_37
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: i_19_7, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     199  label while.body_37: 
.while.body_37:
              #                     125  temp_32_ptr_of_a3_19_38 = GEP a3_19_1:Array:i32:[Some(10000_0)] [Some(i_19_7)] 
              #                    occupy a2 with temp_32_ptr_of_a3_19_38
    li      a2, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_19_7
    mv      a6, a1
              #                    free a1
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,372
              #                    free a2
              #                     127  temp_33_ptr_of_a2_19_38 = GEP a2_19_1:Array:i32:[Some(10000_0)] [Some(i_19_7)] 
              #                    occupy a7 with temp_33_ptr_of_a2_19_38
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_19_7
    mv      s1, a1
              #                    free a1
              #                    occupy a1 with i_19_7
              #                    store to i_19_7 in mem offset legal
    sw      a1,360(sp)
              #                    release a1 with i_19_7
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
    add     a7,a7,sp
              #                    occupy a1 with 40372_0
    li      a1, 40372
    li      a1, 40372
    add     a7,a1,a7
              #                    free a1
              #                    free a7
              #                     129  temp_34_ele_of_a2_19_38_0 = load temp_33_ptr_of_a2_19_38:ptr->i32 
              #                    occupy a7 with temp_33_ptr_of_a2_19_38
              #                    occupy a1 with temp_34_ele_of_a2_19_38_0
    lw      a1,0(a7)
              #                    free a1
              #                    occupy a1 with temp_34_ele_of_a2_19_38_0
              #                    store to temp_34_ele_of_a2_19_38_0 in mem offset legal
    sw      a1,124(sp)
              #                    release a1 with temp_34_ele_of_a2_19_38_0
              #                    free a7
              #                     130  mu a2_19_1:129 
              #                     132  (nop) 
              #                     134  (nop) 
              #                     135  mu a2_19_1:134 
              #                     137  temp_37_arithop_38_0 = Mul i32 temp_34_ele_of_a2_19_38_0, temp_34_ele_of_a2_19_38_0 
              #                    occupy a1 with temp_37_arithop_38_0
              #                    occupy s1 with temp_34_ele_of_a2_19_38_0
              #                    load from temp_34_ele_of_a2_19_38_0 in mem


    lw      s1,124(sp)
              #                    occupy s1 with temp_34_ele_of_a2_19_38_0
    mulw    a1,s1,s1
              #                    free s1
              #                    free s1
              #                    occupy s1 with temp_34_ele_of_a2_19_38_0
              #                    store to temp_34_ele_of_a2_19_38_0 in mem offset legal
    sw      s1,124(sp)
              #                    release s1 with temp_34_ele_of_a2_19_38_0
              #                    free a1
              #                    occupy a1 with temp_37_arithop_38_0
              #                    store to temp_37_arithop_38_0 in mem offset legal
    sw      a1,108(sp)
              #                    release a1 with temp_37_arithop_38_0
              #                     139  temp_38_arithop_38_0 = Mod i32 temp_37_arithop_38_0, 100_0 
              #                    occupy a1 with temp_37_arithop_38_0
              #                    load from temp_37_arithop_38_0 in mem


    lw      a1,108(sp)
              #                    occupy s1 with 100_0
    li      s1, 100
              #                    occupy s2 with temp_38_arithop_38_0
    rem     s2,a1,s1
              #                    free a1
              #                    occupy a1 with temp_37_arithop_38_0
              #                    store to temp_37_arithop_38_0 in mem offset legal
    sw      a1,108(sp)
              #                    release a1 with temp_37_arithop_38_0
              #                    free s1
              #                    free s2
              #                    occupy s2 with temp_38_arithop_38_0
              #                    store to temp_38_arithop_38_0 in mem offset legal
    sw      s2,104(sp)
              #                    release s2 with temp_38_arithop_38_0
              #                     141  temp_39_ptr_of_a1_19_38 = GEP a1_19_1:Array:i32:[Some(10000_0)] [Some(i_19_7)] 
              #                    occupy a1 with temp_39_ptr_of_a1_19_38
    li      a1, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with i_19_7
              #                    load from i_19_7 in mem


    lw      s2,360(sp)
    mv      s1, s2
              #                    free s2
              #                    occupy s2 with i_19_7
              #                    store to i_19_7 in mem offset legal
    sw      s2,360(sp)
              #                    release s2 with i_19_7
    add     a1,a1,s1
              #                    free s1
    slli a1,a1,2
    add     a1,a1,sp
              #                    occupy s1 with 80372_0
    li      s1, 80372
    li      s1, 80372
    add     a1,s1,a1
              #                    free s1
              #                    free a1
              #                    occupy a1 with temp_39_ptr_of_a1_19_38
              #                    store to temp_39_ptr_of_a1_19_38 in mem offset legal
    sd      a1,96(sp)
              #                    release a1 with temp_39_ptr_of_a1_19_38
              #                     143  temp_40_ele_of_a1_19_38_0 = load temp_39_ptr_of_a1_19_38:ptr->i32 
              #                    occupy a1 with temp_39_ptr_of_a1_19_38
              #                    load from temp_39_ptr_of_a1_19_38 in mem
    ld      a1,96(sp)
              #                    occupy s1 with temp_40_ele_of_a1_19_38_0
    lw      s1,0(a1)
              #                    free s1
              #                    occupy s1 with temp_40_ele_of_a1_19_38_0
              #                    store to temp_40_ele_of_a1_19_38_0 in mem offset legal
    sw      s1,92(sp)
              #                    release s1 with temp_40_ele_of_a1_19_38_0
              #                    free a1
              #                    occupy a1 with temp_39_ptr_of_a1_19_38
              #                    store to temp_39_ptr_of_a1_19_38 in mem offset legal
    sd      a1,96(sp)
              #                    release a1 with temp_39_ptr_of_a1_19_38
              #                     144  mu a1_19_1:143 
              #                     146  temp_41_arithop_38_0 = Add i32 temp_38_arithop_38_0, temp_40_ele_of_a1_19_38_0 
              #                    occupy a1 with temp_38_arithop_38_0
              #                    load from temp_38_arithop_38_0 in mem


    lw      a1,104(sp)
              #                    occupy s1 with temp_40_ele_of_a1_19_38_0
              #                    load from temp_40_ele_of_a1_19_38_0 in mem


    lw      s1,92(sp)
              #                    occupy s2 with temp_41_arithop_38_0
    ADDW    s2,a1,s1
              #                    free a1
              #                    occupy a1 with temp_38_arithop_38_0
              #                    store to temp_38_arithop_38_0 in mem offset legal
    sw      a1,104(sp)
              #                    release a1 with temp_38_arithop_38_0
              #                    free s1
              #                    occupy s1 with temp_40_ele_of_a1_19_38_0
              #                    store to temp_40_ele_of_a1_19_38_0 in mem offset legal
    sw      s1,92(sp)
              #                    release s1 with temp_40_ele_of_a1_19_38_0
              #                    free s2
              #                    occupy s2 with temp_41_arithop_38_0
              #                    store to temp_41_arithop_38_0 in mem offset legal
    sw      s2,88(sp)
              #                    release s2 with temp_41_arithop_38_0
              #                     147  store temp_41_arithop_38_0:i32 temp_32_ptr_of_a3_19_38:ptr->i32 
              #                    occupy a2 with temp_32_ptr_of_a3_19_38
              #                    occupy a1 with temp_41_arithop_38_0
              #                    load from temp_41_arithop_38_0 in mem


    lw      a1,88(sp)
    sw      a1,0(a2)
              #                    free a1
              #                    occupy a1 with temp_41_arithop_38_0
              #                    store to temp_41_arithop_38_0 in mem offset legal
    sw      a1,88(sp)
              #                    release a1 with temp_41_arithop_38_0
              #                    free a2
              #                     148  a3_19_2 = chi a3_19_1:147 
              #                     150  temp_42_arithop_38_0 = Add i32 i_19_7, 1_0 
              #                    occupy a1 with i_19_7
              #                    load from i_19_7 in mem


    lw      a1,360(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_42_arithop_38_0
    ADDW    s2,a1,s1
              #                    free a1
              #                    occupy a1 with i_19_7
              #                    store to i_19_7 in mem offset legal
    sw      a1,360(sp)
              #                    release a1 with i_19_7
              #                    free s1
              #                    free s2
              #                    occupy s2 with temp_42_arithop_38_0
              #                    store to temp_42_arithop_38_0 in mem offset legal
    sw      s2,84(sp)
              #                    release s2 with temp_42_arithop_38_0
              #                     151  (nop) 
              #                     274  i_19_7 = i32 temp_42_arithop_38_0 
              #                    occupy a1 with temp_42_arithop_38_0
              #                    load from temp_42_arithop_38_0 in mem


    lw      a1,84(sp)
              #                    occupy s1 with i_19_7
    mv      s1, a1
              #                    free a1
              #                    occupy a1 with temp_42_arithop_38_0
              #                    store to temp_42_arithop_38_0 in mem offset legal
    sw      a1,84(sp)
              #                    release a1 with temp_42_arithop_38_0
              #                    free s1
              #                    occupy s1 with i_19_7
              #                    store to i_19_7 in mem offset legal
    sw      s1,360(sp)
              #                    release s1 with i_19_7
              #                          jump label: while.head_37 
              #                    occupy a1 with i_19_7
              #                    load from i_19_7 in mem


    lw      a1,360(sp)
              #                    occupy a2 with temp_32_ptr_of_a3_19_38
              #                    store to temp_32_ptr_of_a3_19_38 in mem offset legal
    sd      a2,136(sp)
              #                    release a2 with temp_32_ptr_of_a3_19_38
              #                    occupy a5 with temp_57_cmp_36_0
              #                    store to temp_57_cmp_36_0 in mem offset legal
    sb      a5,9(sp)
              #                    release a5 with temp_57_cmp_36_0
              #                    occupy a7 with temp_33_ptr_of_a2_19_38
              #                    store to temp_33_ptr_of_a2_19_38 in mem offset legal
    sd      a7,128(sp)
              #                    release a7 with temp_33_ptr_of_a2_19_38
    j       .while.head_37
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: i_19_7, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     200  label while.exit_37: 
.while.exit_37:
              #                     299  untrack i_19_7 
              #                    occupy a1 with i_19_7
              #                    release a1 with i_19_7
              #                     31   (nop) 
              #                     33   (nop) 
              #                     275  ans_19_1 = i32 0_0 
              #                    occupy a1 with ans_19_1
    li      a1, 0
              #                    free a1
              #                     276  i_19_10 = i32 0_0 
              #                    occupy a2 with i_19_10
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_44 
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: ans_19_1, tracked: true } |     a2:Freed { symidx: i_19_10, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     204  label while.head_44: 
.while.head_44:
              #                     203  temp_58_cmp_43_0 = icmp i32 Slt i_19_10, 10000_0 
              #                    occupy a2 with i_19_10
              #                    occupy a6 with 10000_0
    li      a6, 10000
              #                    occupy a7 with temp_58_cmp_43_0
    slt     a7,a2,a6
              #                    free a2
              #                    occupy a2 with i_19_10
              #                    store to i_19_10 in mem offset legal
    sw      a2,356(sp)
              #                    release a2 with i_19_10
              #                    free a6
              #                    free a7
              #                     207  br i1 temp_58_cmp_43_0, label while.body_44, label while.exit_44 
              #                    occupy a7 with temp_58_cmp_43_0
              #                    free a7
              #                    occupy a7 with temp_58_cmp_43_0
    bnez    a7, .while.body_44
              #                    free a7
    j       .while.exit_44
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: ans_19_1, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a7:Freed { symidx: temp_58_cmp_43_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     205  label while.body_44: 
.while.body_44:
              #                     211  temp_59_cmp_46_0 = icmp i32 Slt i_19_10, 10_0 
              #                    occupy a2 with i_19_10
              #                    load from i_19_10 in mem


    lw      a2,356(sp)
              #                    occupy a6 with 10_0
    li      a6, 10
              #                    occupy s1 with temp_59_cmp_46_0
    slt     s1,a2,a6
              #                    free a2
              #                    occupy a2 with i_19_10
              #                    store to i_19_10 in mem offset legal
    sw      a2,356(sp)
              #                    release a2 with i_19_10
              #                    free a6
              #                    free s1
              #                    occupy s1 with temp_59_cmp_46_0
              #                    store to temp_59_cmp_46_0 in mem offset legal
    sb      s1,7(sp)
              #                    release s1 with temp_59_cmp_46_0
              #                     214  br i1 temp_59_cmp_46_0, label branch_true_47, label branch_false_47 
              #                    occupy a2 with temp_59_cmp_46_0
              #                    load from temp_59_cmp_46_0 in mem


    lb      a2,7(sp)
              #                    free a2
              #                    occupy a2 with temp_59_cmp_46_0
              #                    store to temp_59_cmp_46_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_59_cmp_46_0
              #                    occupy a2 with temp_59_cmp_46_0
              #                    load from temp_59_cmp_46_0 in mem


    lb      a2,7(sp)
    bnez    a2, .branch_true_47
              #                    free a2
              #                    occupy a2 with temp_59_cmp_46_0
              #                    store to temp_59_cmp_46_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_59_cmp_46_0
    j       .branch_false_47
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: ans_19_1, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a7:Freed { symidx: temp_58_cmp_43_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     212  label branch_true_47: 
.branch_true_47:
              #                     319  untrack temp_60_cmp_51_0 
              #                     318  untrack j_63_1 
              #                     317  untrack temp_3_arithop_77_0 
              #                     316  untrack temp_1_ele_of_a3_19_77_0 
              #                     315  untrack temp_61_cmp_61_0 
              #                     314  untrack temp_21_ptr_of_a3_19_57 
              #                     313  untrack j_53_1 
              #                     312  untrack temp_0_ptr_of_a3_19_77 
              #                     311  untrack temp_6_ptr_of_a1_19_73 
              #                     310  untrack ans_19_7 
              #                     309  untrack temp_59_cmp_46_0 
              #                     308  untrack ans_19_4 
              #                     307  untrack ans_19_6 
              #                     306  untrack temp_14_ptr_of_a2_19_70 
              #                     305  untrack ans_19_11 
              #                     304  untrack temp_2_arithop_77_0 
              #                     303  untrack temp_4_arithop_77_0 
              #                     302  untrack temp_58_cmp_43_0 
              #                    occupy a7 with temp_58_cmp_43_0
              #                    release a7 with temp_58_cmp_43_0
              #                     114  temp_28_ptr_of_a3_19_48 = GEP a3_19_1:Array:i32:[Some(10000_0)] [Some(i_19_10)] 
              #                    occupy a2 with temp_28_ptr_of_a3_19_48
    li      a2, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with i_19_10
              #                    load from i_19_10 in mem


    lw      a7,356(sp)
    mv      a6, a7
              #                    free a7
              #                    occupy a7 with i_19_10
              #                    store to i_19_10 in mem offset legal
    sw      a7,356(sp)
              #                    release a7 with i_19_10
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,372
              #                    free a2
              #                     116  temp_29_ele_of_a3_19_48_0 = load temp_28_ptr_of_a3_19_48:ptr->i32 
              #                    occupy a2 with temp_28_ptr_of_a3_19_48
              #                    occupy a6 with temp_29_ele_of_a3_19_48_0
    lw      a6,0(a2)
              #                    free a6
              #                    occupy a6 with temp_29_ele_of_a3_19_48_0
              #                    store to temp_29_ele_of_a3_19_48_0 in mem offset legal
    sw      a6,156(sp)
              #                    release a6 with temp_29_ele_of_a3_19_48_0
              #                    free a2
              #                     323  untrack temp_28_ptr_of_a3_19_48 
              #                    occupy a2 with temp_28_ptr_of_a3_19_48
              #                    release a2 with temp_28_ptr_of_a3_19_48
              #                     117  mu a3_19_1:116 
              #                     119  temp_30_arithop_48_0 = Add i32 ans_19_1, temp_29_ele_of_a3_19_48_0 
              #                    occupy a1 with ans_19_1
              #                    occupy a2 with temp_29_ele_of_a3_19_48_0
              #                    load from temp_29_ele_of_a3_19_48_0 in mem


    lw      a2,156(sp)
              #                    occupy a6 with temp_30_arithop_48_0
    ADDW    a6,a1,a2
              #                    free a1
              #                    occupy a1 with ans_19_1
              #                    store to ans_19_1 in mem offset legal
    sw      a1,352(sp)
              #                    release a1 with ans_19_1
              #                    free a2
              #                    free a6
              #                     322  untrack temp_29_ele_of_a3_19_48_0 
              #                    occupy a2 with temp_29_ele_of_a3_19_48_0
              #                    release a2 with temp_29_ele_of_a3_19_48_0
              #                     121  temp_31_arithop_48_0 = Mod i32 temp_30_arithop_48_0, 1333_0 
              #                    occupy a6 with temp_30_arithop_48_0
              #                    occupy a1 with 1333_0
    li      a1, 1333
              #                    occupy a2 with temp_31_arithop_48_0
    rem     a2,a6,a1
              #                    free a6
              #                    occupy a6 with temp_30_arithop_48_0
              #                    store to temp_30_arithop_48_0 in mem offset legal
    sw      a6,152(sp)
              #                    release a6 with temp_30_arithop_48_0
              #                    free a1
              #                    free a2
              #                     321  untrack temp_30_arithop_48_0 
              #                     122  (nop) 
              #                     123   Call void putint_0(temp_31_arithop_48_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with k_17_0
              #                    store to k_17_0 in mem offset_illegal
              #                    occupy a6 with _anonymous_of_120372_0_0
    li      a6, 120372
    li      a6, 120372
    add     a6,sp,a6
    sw      a0,0(a6)
              #                    free a6
              #                    release a0 with k_17_0
              #                    occupy a2 with temp_31_arithop_48_0
              #                    store to temp_31_arithop_48_0 in mem offset legal
    sw      a2,148(sp)
              #                    release a2 with temp_31_arithop_48_0
              #                    occupy a3 with temp_55_cmp_24_0
              #                    store to temp_55_cmp_24_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_55_cmp_24_0
              #                    occupy a4 with temp_56_cmp_30_0
              #                    store to temp_56_cmp_30_0 in mem offset legal
    sb      a4,10(sp)
              #                    release a4 with temp_56_cmp_30_0
              #                    occupy a5 with temp_57_cmp_36_0
              #                    store to temp_57_cmp_36_0 in mem offset legal
    sb      a5,9(sp)
              #                    release a5 with temp_57_cmp_36_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_31_arithop_48_0_0
              #                    load from temp_31_arithop_48_0 in mem


    lw      a0,148(sp)
              #                    arg load ended


    call    putint
              #                     277  ans_19_3 = i32 temp_31_arithop_48_0 
              #                    occupy a0 with temp_31_arithop_48_0
              #                    load from temp_31_arithop_48_0 in mem


    lw      a0,148(sp)
              #                    occupy a1 with ans_19_3
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     320  untrack temp_31_arithop_48_0 
              #                    occupy a0 with temp_31_arithop_48_0
              #                    release a0 with temp_31_arithop_48_0
              #                          jump label: gather_31 
    j       .gather_31
              #                    regtab     a1:Freed { symidx: ans_19_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     227  label gather_31: 
.gather_31:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a1:Freed { symidx: ans_19_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     49   temp_5_arithop_45_0 = Add i32 i_19_10, 1_0 
              #                    occupy a0 with i_19_10
              #                    load from i_19_10 in mem


    lw      a0,356(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_5_arithop_45_0
    ADDW    a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                     50   (nop) 
              #                     278  ans_19_1 = i32 ans_19_3 
              #                    occupy a1 with ans_19_3
              #                    occupy a4 with ans_19_1
    mv      a4, a1
              #                    free a1
              #                    free a4
              #                     279  i_19_10 = i32 temp_5_arithop_45_0 
              #                    occupy a3 with temp_5_arithop_45_0
              #                    occupy a0 with i_19_10
    mv      a0, a3
              #                    free a3
              #                    free a0
              #                          jump label: while.head_44 
              #                    occupy a0 with i_19_10
              #                    store to i_19_10 in mem offset legal
    sw      a0,356(sp)
              #                    release a0 with i_19_10
              #                    occupy a0 with k_17_0
              #                    load from k_17_0 in mem

              #                    occupy a5 with _anonymous_of_120372_0_0
    li      a5, 120372
    li      a5, 120372
    add     a5,sp,a5
    lw      a0,0(a5)
              #                    free a5
              #                    occupy a4 with ans_19_1
              #                    store to ans_19_1 in mem offset legal
    sw      a4,352(sp)
              #                    release a4 with ans_19_1
              #                    occupy a4 with temp_56_cmp_30_0
              #                    load from temp_56_cmp_30_0 in mem


    lb      a4,10(sp)
              #                    occupy a1 with ans_19_3
              #                    store to ans_19_3 in mem offset legal
    sw      a1,348(sp)
              #                    release a1 with ans_19_3
              #                    occupy a1 with ans_19_1
              #                    load from ans_19_1 in mem


    lw      a1,352(sp)
              #                    occupy a3 with temp_5_arithop_45_0
              #                    store to temp_5_arithop_45_0 in mem offset legal
    sw      a3,300(sp)
              #                    release a3 with temp_5_arithop_45_0
              #                    occupy a3 with temp_55_cmp_24_0
              #                    load from temp_55_cmp_24_0 in mem


    lb      a3,11(sp)
              #                    occupy a2 with i_19_10
              #                    load from i_19_10 in mem


    lw      a2,356(sp)
              #                    occupy a5 with temp_57_cmp_36_0
              #                    load from temp_57_cmp_36_0 in mem


    lb      a5,9(sp)
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: ans_19_1, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a7:Freed { symidx: temp_58_cmp_43_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     213  label branch_false_47: 
.branch_false_47:
              #                     216  temp_60_cmp_51_0 = icmp i32 Slt i_19_10, 20_0 
              #                    occupy a2 with i_19_10
              #                    load from i_19_10 in mem


    lw      a2,356(sp)
              #                    occupy a6 with 20_0
    li      a6, 20
              #                    occupy s1 with temp_60_cmp_51_0
    slt     s1,a2,a6
              #                    free a2
              #                    occupy a2 with i_19_10
              #                    store to i_19_10 in mem offset legal
    sw      a2,356(sp)
              #                    release a2 with i_19_10
              #                    free a6
              #                    free s1
              #                    occupy s1 with temp_60_cmp_51_0
              #                    store to temp_60_cmp_51_0 in mem offset legal
    sb      s1,6(sp)
              #                    release s1 with temp_60_cmp_51_0
              #                     219  br i1 temp_60_cmp_51_0, label branch_true_52, label branch_false_52 
              #                    occupy a2 with temp_60_cmp_51_0
              #                    load from temp_60_cmp_51_0 in mem


    lb      a2,6(sp)
              #                    free a2
              #                    occupy a2 with temp_60_cmp_51_0
              #                    store to temp_60_cmp_51_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_60_cmp_51_0
              #                    occupy a2 with temp_60_cmp_51_0
              #                    load from temp_60_cmp_51_0 in mem


    lb      a2,6(sp)
    bnez    a2, .branch_true_52
              #                    free a2
              #                    occupy a2 with temp_60_cmp_51_0
              #                    store to temp_60_cmp_51_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_60_cmp_51_0
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: ans_19_1, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a7:Freed { symidx: temp_58_cmp_43_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     217  label branch_true_52: 
.branch_true_52:
              #                     341  untrack temp_60_cmp_51_0 
              #                     340  untrack temp_3_arithop_77_0 
              #                     339  untrack temp_14_ptr_of_a2_19_70 
              #                     338  untrack temp_4_arithop_77_0 
              #                     337  untrack temp_0_ptr_of_a3_19_77 
              #                     336  untrack j_63_1 
              #                     335  untrack temp_31_arithop_48_0 
              #                     334  untrack temp_28_ptr_of_a3_19_48 
              #                     333  untrack temp_30_arithop_48_0 
              #                     332  untrack temp_61_cmp_61_0 
              #                     331  untrack temp_59_cmp_46_0 
              #                     330  untrack temp_29_ele_of_a3_19_48_0 
              #                     329  untrack temp_2_arithop_77_0 
              #                     328  untrack temp_6_ptr_of_a1_19_73 
              #                     327  untrack temp_58_cmp_43_0 
              #                    occupy a7 with temp_58_cmp_43_0
              #                    release a7 with temp_58_cmp_43_0
              #                     326  untrack temp_1_ele_of_a3_19_77_0 
              #                     325  untrack ans_19_11 
              #                     324  untrack ans_19_7 
              #                     92   (nop) 
              #                     96   temp_21_ptr_of_a3_19_57 = GEP a3_19_1:Array:i32:[Some(10000_0)] [Some(i_19_10)] 
              #                    occupy a2 with temp_21_ptr_of_a3_19_57
    li      a2, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with i_19_10
              #                    load from i_19_10 in mem


    lw      a7,356(sp)
    mv      a6, a7
              #                    free a7
              #                    occupy a7 with i_19_10
              #                    store to i_19_10 in mem offset legal
    sw      a7,356(sp)
              #                    release a7 with i_19_10
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,372
              #                    free a2
              #                     280  ans_19_4 = i32 ans_19_1 
              #                    occupy a1 with ans_19_1
              #                    occupy a6 with ans_19_4
    mv      a6, a1
              #                    free a1
              #                    occupy a1 with ans_19_1
              #                    store to ans_19_1 in mem offset legal
    sw      a1,352(sp)
              #                    release a1 with ans_19_1
              #                    free a6
              #                     281  j_53_1 = i32 5000_0 
              #                    occupy a1 with j_53_1
    li      a1, 5000
              #                    free a1
              #                    occupy a1 with j_53_1
              #                    store to j_53_1 in mem offset legal
    sw      a1,208(sp)
              #                    release a1 with j_53_1
              #                          jump label: while.head_56 
    j       .while.head_56
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a2:Freed { symidx: temp_21_ptr_of_a3_19_57, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a6:Freed { symidx: ans_19_4, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     242  label while.head_56: 
.while.head_56:
              #                     241  temp_64_cmp_55_0 = icmp i32 Slt j_53_1, 10000_0 
              #                    occupy a1 with j_53_1
              #                    load from j_53_1 in mem


    lw      a1,208(sp)
              #                    occupy a7 with 10000_0
    li      a7, 10000
              #                    occupy s1 with temp_64_cmp_55_0
    slt     s1,a1,a7
              #                    free a1
              #                    occupy a1 with j_53_1
              #                    store to j_53_1 in mem offset legal
    sw      a1,208(sp)
              #                    release a1 with j_53_1
              #                    free a7
              #                    free s1
              #                    occupy s1 with temp_64_cmp_55_0
              #                    store to temp_64_cmp_55_0 in mem offset legal
    sb      s1,2(sp)
              #                    release s1 with temp_64_cmp_55_0
              #                     245  br i1 temp_64_cmp_55_0, label while.body_56, label while.exit_56 
              #                    occupy a1 with temp_64_cmp_55_0
              #                    load from temp_64_cmp_55_0 in mem


    lb      a1,2(sp)
              #                    free a1
              #                    occupy a1 with temp_64_cmp_55_0
              #                    store to temp_64_cmp_55_0 in mem offset legal
    sb      a1,2(sp)
              #                    release a1 with temp_64_cmp_55_0
              #                    occupy a1 with temp_64_cmp_55_0
              #                    load from temp_64_cmp_55_0 in mem


    lb      a1,2(sp)
    bnez    a1, .while.body_56
              #                    free a1
              #                    occupy a1 with temp_64_cmp_55_0
              #                    store to temp_64_cmp_55_0 in mem offset legal
    sb      a1,2(sp)
              #                    release a1 with temp_64_cmp_55_0
    j       .while.exit_56
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a2:Freed { symidx: temp_21_ptr_of_a3_19_57, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a6:Freed { symidx: ans_19_4, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     243  label while.body_56: 
.while.body_56:
              #                     98   temp_22_ele_of_a3_19_57_0 = load temp_21_ptr_of_a3_19_57:ptr->i32 
              #                    occupy a2 with temp_21_ptr_of_a3_19_57
              #                    occupy a1 with temp_22_ele_of_a3_19_57_0
    lw      a1,0(a2)
              #                    free a1
              #                    occupy a1 with temp_22_ele_of_a3_19_57_0
              #                    store to temp_22_ele_of_a3_19_57_0 in mem offset legal
    sw      a1,196(sp)
              #                    release a1 with temp_22_ele_of_a3_19_57_0
              #                    free a2
              #                     99   mu a3_19_1:98 
              #                     101  temp_23_arithop_57_0 = Add i32 ans_19_4, temp_22_ele_of_a3_19_57_0 
              #                    occupy a6 with ans_19_4
              #                    occupy a1 with temp_22_ele_of_a3_19_57_0
              #                    load from temp_22_ele_of_a3_19_57_0 in mem


    lw      a1,196(sp)
              #                    occupy a7 with temp_23_arithop_57_0
    ADDW    a7,a6,a1
              #                    free a6
              #                    occupy a6 with ans_19_4
              #                    store to ans_19_4 in mem offset legal
    sw      a6,344(sp)
              #                    release a6 with ans_19_4
              #                    free a1
              #                    occupy a1 with temp_22_ele_of_a3_19_57_0
              #                    store to temp_22_ele_of_a3_19_57_0 in mem offset legal
    sw      a1,196(sp)
              #                    release a1 with temp_22_ele_of_a3_19_57_0
              #                    free a7
              #                     103  temp_24_ptr_of_a1_19_57 = GEP a1_19_1:Array:i32:[Some(10000_0)] [Some(j_53_1)] 
              #                    occupy a1 with temp_24_ptr_of_a1_19_57
    li      a1, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with j_53_1
              #                    load from j_53_1 in mem


    lw      s1,208(sp)
    mv      a6, s1
              #                    free s1
              #                    occupy s1 with j_53_1
              #                    store to j_53_1 in mem offset legal
    sw      s1,208(sp)
              #                    release s1 with j_53_1
    add     a1,a1,a6
              #                    free a6
    slli a1,a1,2
    add     a1,a1,sp
              #                    occupy a6 with 80372_0
    li      a6, 80372
    li      a6, 80372
    add     a1,a6,a1
              #                    free a6
              #                    free a1
              #                    occupy a1 with temp_24_ptr_of_a1_19_57
              #                    store to temp_24_ptr_of_a1_19_57 in mem offset legal
    sd      a1,184(sp)
              #                    release a1 with temp_24_ptr_of_a1_19_57
              #                     105  temp_25_ele_of_a1_19_57_0 = load temp_24_ptr_of_a1_19_57:ptr->i32 
              #                    occupy a1 with temp_24_ptr_of_a1_19_57
              #                    load from temp_24_ptr_of_a1_19_57 in mem
    ld      a1,184(sp)
              #                    occupy a6 with temp_25_ele_of_a1_19_57_0
    lw      a6,0(a1)
              #                    free a6
              #                    occupy a6 with temp_25_ele_of_a1_19_57_0
              #                    store to temp_25_ele_of_a1_19_57_0 in mem offset legal
    sw      a6,180(sp)
              #                    release a6 with temp_25_ele_of_a1_19_57_0
              #                    free a1
              #                    occupy a1 with temp_24_ptr_of_a1_19_57
              #                    store to temp_24_ptr_of_a1_19_57 in mem offset legal
    sd      a1,184(sp)
              #                    release a1 with temp_24_ptr_of_a1_19_57
              #                     106  mu a1_19_1:105 
              #                     108  temp_26_arithop_57_0 = Sub i32 temp_23_arithop_57_0, temp_25_ele_of_a1_19_57_0 
              #                    occupy a7 with temp_23_arithop_57_0
              #                    occupy a1 with temp_25_ele_of_a1_19_57_0
              #                    load from temp_25_ele_of_a1_19_57_0 in mem


    lw      a1,180(sp)
              #                    occupy a6 with temp_26_arithop_57_0
              #                    regtab:    a0:Freed { symidx: k_17_0, tracked: true } |     a1:Occupied { symidx: temp_25_ele_of_a1_19_57_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_21_ptr_of_a3_19_57, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a6:Occupied { symidx: temp_26_arithop_57_0, tracked: true, occupy_count: 1 } |     a7:Occupied { symidx: temp_23_arithop_57_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    a6,a7,a1
              #                    free a7
              #                    occupy a7 with temp_23_arithop_57_0
              #                    store to temp_23_arithop_57_0 in mem offset legal
    sw      a7,192(sp)
              #                    release a7 with temp_23_arithop_57_0
              #                    free a1
              #                    occupy a1 with temp_25_ele_of_a1_19_57_0
              #                    store to temp_25_ele_of_a1_19_57_0 in mem offset legal
    sw      a1,180(sp)
              #                    release a1 with temp_25_ele_of_a1_19_57_0
              #                    free a6
              #                     109  (nop) 
              #                     111  temp_27_arithop_57_0 = Add i32 j_53_1, 1_0 
              #                    occupy a1 with j_53_1
              #                    load from j_53_1 in mem


    lw      a1,208(sp)
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_27_arithop_57_0
    ADDW    s1,a1,a7
              #                    free a1
              #                    occupy a1 with j_53_1
              #                    store to j_53_1 in mem offset legal
    sw      a1,208(sp)
              #                    release a1 with j_53_1
              #                    free a7
              #                    free s1
              #                    occupy s1 with temp_27_arithop_57_0
              #                    store to temp_27_arithop_57_0 in mem offset legal
    sw      s1,172(sp)
              #                    release s1 with temp_27_arithop_57_0
              #                     112  (nop) 
              #                     282  ans_19_4 = i32 temp_26_arithop_57_0 
              #                    occupy a6 with temp_26_arithop_57_0
              #                    occupy a1 with ans_19_4
    mv      a1, a6
              #                    free a6
              #                    occupy a6 with temp_26_arithop_57_0
              #                    store to temp_26_arithop_57_0 in mem offset legal
    sw      a6,176(sp)
              #                    release a6 with temp_26_arithop_57_0
              #                    free a1
              #                     283  j_53_1 = i32 temp_27_arithop_57_0 
              #                    occupy a6 with temp_27_arithop_57_0
              #                    load from temp_27_arithop_57_0 in mem


    lw      a6,172(sp)
              #                    occupy a7 with j_53_1
    mv      a7, a6
              #                    free a6
              #                    occupy a6 with temp_27_arithop_57_0
              #                    store to temp_27_arithop_57_0 in mem offset legal
    sw      a6,172(sp)
              #                    release a6 with temp_27_arithop_57_0
              #                    free a7
              #                    occupy a7 with j_53_1
              #                    store to j_53_1 in mem offset legal
    sw      a7,208(sp)
              #                    release a7 with j_53_1
              #                          jump label: while.head_56 
              #                    occupy a1 with ans_19_4
              #                    store to ans_19_4 in mem offset legal
    sw      a1,344(sp)
              #                    release a1 with ans_19_4
              #                    occupy a6 with ans_19_4
              #                    load from ans_19_4 in mem


    lw      a6,344(sp)
    j       .while.head_56
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a2:Freed { symidx: temp_21_ptr_of_a3_19_57, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a6:Freed { symidx: ans_19_4, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     244  label while.exit_56: 
.while.exit_56:
              #                     343  untrack temp_21_ptr_of_a3_19_57 
              #                    occupy a2 with temp_21_ptr_of_a3_19_57
              #                    release a2 with temp_21_ptr_of_a3_19_57
              #                     342  untrack j_53_1 
              #                     94    Call void putint_0(ans_19_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with k_17_0
              #                    store to k_17_0 in mem offset_illegal
              #                    occupy a1 with _anonymous_of_120372_0_0
    li      a1, 120372
    li      a1, 120372
    add     a1,sp,a1
    sw      a0,0(a1)
              #                    free a1
              #                    release a0 with k_17_0
              #                    occupy a3 with temp_55_cmp_24_0
              #                    store to temp_55_cmp_24_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_55_cmp_24_0
              #                    occupy a4 with temp_56_cmp_30_0
              #                    store to temp_56_cmp_30_0 in mem offset legal
    sb      a4,10(sp)
              #                    release a4 with temp_56_cmp_30_0
              #                    occupy a5 with temp_57_cmp_36_0
              #                    store to temp_57_cmp_36_0 in mem offset legal
    sb      a5,9(sp)
              #                    release a5 with temp_57_cmp_36_0
              #                    occupy a6 with ans_19_4
              #                    store to ans_19_4 in mem offset legal
    sw      a6,344(sp)
              #                    release a6 with ans_19_4
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_ans_19_4_0
              #                    load from ans_19_4 in mem


    lw      a0,344(sp)
              #                    arg load ended


    call    putint
              #                     284  ans_19_6 = i32 ans_19_4 
              #                    occupy a0 with ans_19_4
              #                    load from ans_19_4 in mem


    lw      a0,344(sp)
              #                    occupy a1 with ans_19_6
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     344  untrack ans_19_4 
              #                    occupy a0 with ans_19_4
              #                    release a0 with ans_19_4
              #                          jump label: gather_29 
    j       .gather_29
              #                    regtab     a1:Freed { symidx: ans_19_6, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     226  label gather_29: 
.gather_29:
              #                     285  ans_19_3 = i32 ans_19_6 
              #                    occupy a1 with ans_19_6
              #                    occupy a0 with ans_19_3
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          jump label: gather_31 
              #                    occupy a0 with ans_19_3
              #                    store to ans_19_3 in mem offset legal
    sw      a0,348(sp)
              #                    release a0 with ans_19_3
              #                    occupy a1 with ans_19_6
              #                    store to ans_19_6 in mem offset legal
    sw      a1,340(sp)
              #                    release a1 with ans_19_6
              #                    occupy a1 with ans_19_3
              #                    load from ans_19_3 in mem


    lw      a1,348(sp)
    j       .gather_31
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: ans_19_1, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a7:Freed { symidx: temp_58_cmp_43_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     218  label branch_false_52: 
.branch_false_52:
              #                     221  temp_61_cmp_61_0 = icmp i32 Slt i_19_10, 30_0 
              #                    occupy a2 with i_19_10
              #                    load from i_19_10 in mem


    lw      a2,356(sp)
              #                    occupy a6 with 30_0
    li      a6, 30
              #                    occupy s1 with temp_61_cmp_61_0
    slt     s1,a2,a6
              #                    free a2
              #                    occupy a2 with i_19_10
              #                    store to i_19_10 in mem offset legal
    sw      a2,356(sp)
              #                    release a2 with i_19_10
              #                    free a6
              #                    free s1
              #                    occupy s1 with temp_61_cmp_61_0
              #                    store to temp_61_cmp_61_0 in mem offset legal
    sb      s1,5(sp)
              #                    release s1 with temp_61_cmp_61_0
              #                     224  br i1 temp_61_cmp_61_0, label branch_true_62, label branch_false_62 
              #                    occupy a2 with temp_61_cmp_61_0
              #                    load from temp_61_cmp_61_0 in mem


    lb      a2,5(sp)
              #                    free a2
              #                    occupy a2 with temp_61_cmp_61_0
              #                    store to temp_61_cmp_61_0 in mem offset legal
    sb      a2,5(sp)
              #                    release a2 with temp_61_cmp_61_0
              #                    occupy a2 with temp_61_cmp_61_0
              #                    load from temp_61_cmp_61_0 in mem


    lb      a2,5(sp)
    bnez    a2, .branch_true_62
              #                    free a2
              #                    occupy a2 with temp_61_cmp_61_0
              #                    store to temp_61_cmp_61_0 in mem offset legal
    sb      a2,5(sp)
              #                    release a2 with temp_61_cmp_61_0
    j       .branch_false_62
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: ans_19_1, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a7:Freed { symidx: temp_58_cmp_43_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     222  label branch_true_62: 
.branch_true_62:
              #                     362  untrack temp_0_ptr_of_a3_19_77 
              #                     361  untrack temp_61_cmp_61_0 
              #                     360  untrack temp_4_arithop_77_0 
              #                     359  untrack temp_29_ele_of_a3_19_48_0 
              #                     358  untrack j_53_1 
              #                     357  untrack temp_30_arithop_48_0 
              #                     356  untrack temp_21_ptr_of_a3_19_57 
              #                     355  untrack temp_1_ele_of_a3_19_77_0 
              #                     354  untrack temp_28_ptr_of_a3_19_48 
              #                     353  untrack temp_2_arithop_77_0 
              #                     352  untrack temp_31_arithop_48_0 
              #                     351  untrack temp_3_arithop_77_0 
              #                     350  untrack temp_59_cmp_46_0 
              #                     349  untrack temp_5_arithop_45_0 
              #                     348  untrack temp_60_cmp_51_0 
              #                     347  untrack temp_58_cmp_43_0 
              #                    occupy a7 with temp_58_cmp_43_0
              #                    release a7 with temp_58_cmp_43_0
              #                     346  untrack ans_19_4 
              #                     345  untrack ans_19_3 
              #                     51   (nop) 
              #                     75   temp_14_ptr_of_a2_19_70 = GEP a2_19_1:Array:i32:[Some(10000_0)] [Some(i_19_10)] 
              #                    occupy a2 with temp_14_ptr_of_a2_19_70
    li      a2, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with i_19_10
              #                    load from i_19_10 in mem


    lw      a7,356(sp)
    mv      a6, a7
              #                    free a7
              #                    occupy a7 with i_19_10
              #                    store to i_19_10 in mem offset legal
    sw      a7,356(sp)
              #                    release a7 with i_19_10
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a6 with 40372_0
    li      a6, 40372
    li      a6, 40372
    add     a2,a6,a2
              #                    free a6
              #                    free a2
              #                     55   temp_6_ptr_of_a1_19_73 = GEP a1_19_1:Array:i32:[Some(10000_0)] [Some(i_19_10)] 
              #                    occupy a6 with temp_6_ptr_of_a1_19_73
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with i_19_10
              #                    load from i_19_10 in mem


    lw      s1,356(sp)
    mv      a7, s1
              #                    free s1
              #                    occupy s1 with i_19_10
              #                    store to i_19_10 in mem offset legal
    sw      s1,356(sp)
              #                    release s1 with i_19_10
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
              #                    occupy a7 with 80372_0
    li      a7, 80372
    li      a7, 80372
    add     a6,a7,a6
              #                    free a7
              #                    free a6
              #                    occupy a6 with temp_6_ptr_of_a1_19_73
              #                    store to temp_6_ptr_of_a1_19_73 in mem offset legal
    sd      a6,280(sp)
              #                    release a6 with temp_6_ptr_of_a1_19_73
              #                     286  ans_19_7 = i32 ans_19_1 
              #                    occupy a1 with ans_19_1
              #                    occupy a6 with ans_19_7
    mv      a6, a1
              #                    free a1
              #                    occupy a1 with ans_19_1
              #                    store to ans_19_1 in mem offset legal
    sw      a1,352(sp)
              #                    release a1 with ans_19_1
              #                    free a6
              #                     287  j_63_1 = i32 5000_0 
              #                    occupy a1 with j_63_1
    li      a1, 5000
              #                    free a1
              #                    occupy a1 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      a1,296(sp)
              #                    release a1 with j_63_1
              #                          jump label: while.head_66 
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a2:Freed { symidx: temp_14_ptr_of_a2_19_70, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a6:Freed { symidx: ans_19_7, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     230  label while.head_66: 
.while.head_66:
              #                     229  temp_62_cmp_65_0 = icmp i32 Slt j_63_1, 10000_0 
              #                    occupy a1 with j_63_1
              #                    load from j_63_1 in mem


    lw      a1,296(sp)
              #                    occupy a7 with 10000_0
    li      a7, 10000
              #                    occupy s1 with temp_62_cmp_65_0
    slt     s1,a1,a7
              #                    free a1
              #                    occupy a1 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      a1,296(sp)
              #                    release a1 with j_63_1
              #                    free a7
              #                    free s1
              #                    occupy s1 with temp_62_cmp_65_0
              #                    store to temp_62_cmp_65_0 in mem offset legal
    sb      s1,4(sp)
              #                    release s1 with temp_62_cmp_65_0
              #                     233  br i1 temp_62_cmp_65_0, label while.body_66, label while.exit_66 
              #                    occupy a1 with temp_62_cmp_65_0
              #                    load from temp_62_cmp_65_0 in mem


    lb      a1,4(sp)
              #                    free a1
              #                    occupy a1 with temp_62_cmp_65_0
              #                    store to temp_62_cmp_65_0 in mem offset legal
    sb      a1,4(sp)
              #                    release a1 with temp_62_cmp_65_0
              #                    occupy a1 with temp_62_cmp_65_0
              #                    load from temp_62_cmp_65_0 in mem


    lb      a1,4(sp)
    bnez    a1, .while.body_66
              #                    free a1
              #                    occupy a1 with temp_62_cmp_65_0
              #                    store to temp_62_cmp_65_0 in mem offset legal
    sb      a1,4(sp)
              #                    release a1 with temp_62_cmp_65_0
    j       .while.exit_66
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a2:Freed { symidx: temp_14_ptr_of_a2_19_70, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a6:Freed { symidx: ans_19_7, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     231  label while.body_66: 
.while.body_66:
              #                     235  temp_63_cmp_68_0 = icmp i32 Sgt j_63_1, 2233_0 
              #                    occupy a1 with j_63_1
              #                    load from j_63_1 in mem


    lw      a1,296(sp)
              #                    occupy a7 with 2233_0
    li      a7, 2233
              #                    occupy s1 with temp_63_cmp_68_0
    slt     s1,a7,a1
              #                    free a1
              #                    occupy a1 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      a1,296(sp)
              #                    release a1 with j_63_1
              #                    free a7
              #                    free s1
              #                    occupy s1 with temp_63_cmp_68_0
              #                    store to temp_63_cmp_68_0 in mem offset legal
    sb      s1,3(sp)
              #                    release s1 with temp_63_cmp_68_0
              #                     238  br i1 temp_63_cmp_68_0, label branch_true_69, label branch_false_69 
              #                    occupy a1 with temp_63_cmp_68_0
              #                    load from temp_63_cmp_68_0 in mem


    lb      a1,3(sp)
              #                    free a1
              #                    occupy a1 with temp_63_cmp_68_0
              #                    store to temp_63_cmp_68_0 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_63_cmp_68_0
              #                    occupy a1 with temp_63_cmp_68_0
              #                    load from temp_63_cmp_68_0 in mem


    lb      a1,3(sp)
    bnez    a1, .branch_true_69
              #                    free a1
              #                    occupy a1 with temp_63_cmp_68_0
              #                    store to temp_63_cmp_68_0 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_63_cmp_68_0
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a2:Freed { symidx: temp_14_ptr_of_a2_19_70, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a6:Freed { symidx: ans_19_7, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     236  label branch_true_69: 
.branch_true_69:
              #                     77   temp_15_ele_of_a2_19_70_0 = load temp_14_ptr_of_a2_19_70:ptr->i32 
              #                    occupy a2 with temp_14_ptr_of_a2_19_70
              #                    occupy a1 with temp_15_ele_of_a2_19_70_0
    lw      a1,0(a2)
              #                    free a1
              #                    occupy a1 with temp_15_ele_of_a2_19_70_0
              #                    store to temp_15_ele_of_a2_19_70_0 in mem offset legal
    sw      a1,236(sp)
              #                    release a1 with temp_15_ele_of_a2_19_70_0
              #                    free a2
              #                     78   mu a2_19_1:77 
              #                     80   temp_16_arithop_70_0 = Add i32 ans_19_7, temp_15_ele_of_a2_19_70_0 
              #                    occupy a6 with ans_19_7
              #                    occupy a1 with temp_15_ele_of_a2_19_70_0
              #                    load from temp_15_ele_of_a2_19_70_0 in mem


    lw      a1,236(sp)
              #                    occupy a7 with temp_16_arithop_70_0
    ADDW    a7,a6,a1
              #                    free a6
              #                    occupy a6 with ans_19_7
              #                    store to ans_19_7 in mem offset legal
    sw      a6,336(sp)
              #                    release a6 with ans_19_7
              #                    free a1
              #                    occupy a1 with temp_15_ele_of_a2_19_70_0
              #                    store to temp_15_ele_of_a2_19_70_0 in mem offset legal
    sw      a1,236(sp)
              #                    release a1 with temp_15_ele_of_a2_19_70_0
              #                    free a7
              #                     82   temp_17_ptr_of_a1_19_70 = GEP a1_19_1:Array:i32:[Some(10000_0)] [Some(j_63_1)] 
              #                    occupy a1 with temp_17_ptr_of_a1_19_70
    li      a1, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with j_63_1
              #                    load from j_63_1 in mem


    lw      s1,296(sp)
    mv      a6, s1
              #                    free s1
              #                    occupy s1 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      s1,296(sp)
              #                    release s1 with j_63_1
    add     a1,a1,a6
              #                    free a6
    slli a1,a1,2
    add     a1,a1,sp
              #                    occupy a6 with 80372_0
    li      a6, 80372
    li      a6, 80372
    add     a1,a6,a1
              #                    free a6
              #                    free a1
              #                    occupy a1 with temp_17_ptr_of_a1_19_70
              #                    store to temp_17_ptr_of_a1_19_70 in mem offset legal
    sd      a1,224(sp)
              #                    release a1 with temp_17_ptr_of_a1_19_70
              #                     84   temp_18_ele_of_a1_19_70_0 = load temp_17_ptr_of_a1_19_70:ptr->i32 
              #                    occupy a1 with temp_17_ptr_of_a1_19_70
              #                    load from temp_17_ptr_of_a1_19_70 in mem
    ld      a1,224(sp)
              #                    occupy a6 with temp_18_ele_of_a1_19_70_0
    lw      a6,0(a1)
              #                    free a6
              #                    occupy a6 with temp_18_ele_of_a1_19_70_0
              #                    store to temp_18_ele_of_a1_19_70_0 in mem offset legal
    sw      a6,220(sp)
              #                    release a6 with temp_18_ele_of_a1_19_70_0
              #                    free a1
              #                    occupy a1 with temp_17_ptr_of_a1_19_70
              #                    store to temp_17_ptr_of_a1_19_70 in mem offset legal
    sd      a1,224(sp)
              #                    release a1 with temp_17_ptr_of_a1_19_70
              #                     85   mu a1_19_1:84 
              #                     87   temp_19_arithop_70_0 = Sub i32 temp_16_arithop_70_0, temp_18_ele_of_a1_19_70_0 
              #                    occupy a7 with temp_16_arithop_70_0
              #                    occupy a1 with temp_18_ele_of_a1_19_70_0
              #                    load from temp_18_ele_of_a1_19_70_0 in mem


    lw      a1,220(sp)
              #                    occupy a6 with temp_19_arithop_70_0
              #                    regtab:    a0:Freed { symidx: k_17_0, tracked: true } |     a1:Occupied { symidx: temp_18_ele_of_a1_19_70_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_14_ptr_of_a2_19_70, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a6:Occupied { symidx: temp_19_arithop_70_0, tracked: true, occupy_count: 1 } |     a7:Occupied { symidx: temp_16_arithop_70_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    a6,a7,a1
              #                    free a7
              #                    occupy a7 with temp_16_arithop_70_0
              #                    store to temp_16_arithop_70_0 in mem offset legal
    sw      a7,232(sp)
              #                    release a7 with temp_16_arithop_70_0
              #                    free a1
              #                    occupy a1 with temp_18_ele_of_a1_19_70_0
              #                    store to temp_18_ele_of_a1_19_70_0 in mem offset legal
    sw      a1,220(sp)
              #                    release a1 with temp_18_ele_of_a1_19_70_0
              #                    free a6
              #                     88   (nop) 
              #                     90   temp_20_arithop_70_0 = Add i32 j_63_1, 1_0 
              #                    occupy a1 with j_63_1
              #                    load from j_63_1 in mem


    lw      a1,296(sp)
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_20_arithop_70_0
    ADDW    s1,a1,a7
              #                    free a1
              #                    occupy a1 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      a1,296(sp)
              #                    release a1 with j_63_1
              #                    free a7
              #                    free s1
              #                    occupy s1 with temp_20_arithop_70_0
              #                    store to temp_20_arithop_70_0 in mem offset legal
    sw      s1,212(sp)
              #                    release s1 with temp_20_arithop_70_0
              #                     91   (nop) 
              #                     288  j_63_3 = i32 temp_20_arithop_70_0 
              #                    occupy a1 with temp_20_arithop_70_0
              #                    load from temp_20_arithop_70_0 in mem


    lw      a1,212(sp)
              #                    occupy a7 with j_63_3
    mv      a7, a1
              #                    free a1
              #                    occupy a1 with temp_20_arithop_70_0
              #                    store to temp_20_arithop_70_0 in mem offset legal
    sw      a1,212(sp)
              #                    release a1 with temp_20_arithop_70_0
              #                    free a7
              #                    occupy a7 with j_63_3
              #                    store to j_63_3 in mem offset legal
    sw      a7,292(sp)
              #                    release a7 with j_63_3
              #                     289  ans_19_9 = i32 temp_19_arithop_70_0 
              #                    occupy a6 with temp_19_arithop_70_0
              #                    occupy a1 with ans_19_9
    mv      a1, a6
              #                    free a6
              #                    occupy a6 with temp_19_arithop_70_0
              #                    store to temp_19_arithop_70_0 in mem offset legal
    sw      a6,216(sp)
              #                    release a6 with temp_19_arithop_70_0
              #                    free a1
              #                          jump label: gather_22 
    j       .gather_22
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: ans_19_9, tracked: true } |     a2:Freed { symidx: temp_14_ptr_of_a2_19_70, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     239  label gather_22: 
.gather_22:
              #                     290  ans_19_7 = i32 ans_19_9 
              #                    occupy a1 with ans_19_9
              #                    occupy a6 with ans_19_7
    mv      a6, a1
              #                    free a1
              #                    occupy a1 with ans_19_9
              #                    store to ans_19_9 in mem offset legal
    sw      a1,332(sp)
              #                    release a1 with ans_19_9
              #                    free a6
              #                     291  j_63_1 = i32 j_63_3 
              #                    occupy a1 with j_63_3
              #                    load from j_63_3 in mem


    lw      a1,292(sp)
              #                    occupy a7 with j_63_1
    mv      a7, a1
              #                    free a1
              #                    occupy a1 with j_63_3
              #                    store to j_63_3 in mem offset legal
    sw      a1,292(sp)
              #                    release a1 with j_63_3
              #                    free a7
              #                    occupy a7 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      a7,296(sp)
              #                    release a7 with j_63_1
              #                          jump label: while.head_66 
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a2:Freed { symidx: temp_14_ptr_of_a2_19_70, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a6:Freed { symidx: ans_19_7, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     237  label branch_false_69: 
.branch_false_69:
              #                     57   temp_7_ele_of_a1_19_73_0 = load temp_6_ptr_of_a1_19_73:ptr->i32 
              #                    occupy a1 with temp_6_ptr_of_a1_19_73
              #                    load from temp_6_ptr_of_a1_19_73 in mem
    ld      a1,280(sp)
              #                    occupy a7 with temp_7_ele_of_a1_19_73_0
    lw      a7,0(a1)
              #                    free a7
              #                    occupy a7 with temp_7_ele_of_a1_19_73_0
              #                    store to temp_7_ele_of_a1_19_73_0 in mem offset legal
    sw      a7,276(sp)
              #                    release a7 with temp_7_ele_of_a1_19_73_0
              #                    free a1
              #                    occupy a1 with temp_6_ptr_of_a1_19_73
              #                    store to temp_6_ptr_of_a1_19_73 in mem offset legal
    sd      a1,280(sp)
              #                    release a1 with temp_6_ptr_of_a1_19_73
              #                     58   mu a1_19_1:57 
              #                     60   temp_8_arithop_73_0 = Add i32 ans_19_7, temp_7_ele_of_a1_19_73_0 
              #                    occupy a6 with ans_19_7
              #                    occupy a1 with temp_7_ele_of_a1_19_73_0
              #                    load from temp_7_ele_of_a1_19_73_0 in mem


    lw      a1,276(sp)
              #                    occupy a7 with temp_8_arithop_73_0
    ADDW    a7,a6,a1
              #                    free a6
              #                    occupy a6 with ans_19_7
              #                    store to ans_19_7 in mem offset legal
    sw      a6,336(sp)
              #                    release a6 with ans_19_7
              #                    free a1
              #                    occupy a1 with temp_7_ele_of_a1_19_73_0
              #                    store to temp_7_ele_of_a1_19_73_0 in mem offset legal
    sw      a1,276(sp)
              #                    release a1 with temp_7_ele_of_a1_19_73_0
              #                    free a7
              #                     62   temp_9_ptr_of_a3_19_73 = GEP a3_19_1:Array:i32:[Some(10000_0)] [Some(j_63_1)] 
              #                    occupy a1 with temp_9_ptr_of_a3_19_73
    li      a1, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with j_63_1
              #                    load from j_63_1 in mem


    lw      s1,296(sp)
    mv      a6, s1
              #                    free s1
              #                    occupy s1 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      s1,296(sp)
              #                    release s1 with j_63_1
    add     a1,a1,a6
              #                    free a6
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,372
              #                    free a1
              #                    occupy a1 with temp_9_ptr_of_a3_19_73
              #                    store to temp_9_ptr_of_a3_19_73 in mem offset legal
    sd      a1,264(sp)
              #                    release a1 with temp_9_ptr_of_a3_19_73
              #                     64   temp_10_ele_of_a3_19_73_0 = load temp_9_ptr_of_a3_19_73:ptr->i32 
              #                    occupy a1 with temp_9_ptr_of_a3_19_73
              #                    load from temp_9_ptr_of_a3_19_73 in mem
    ld      a1,264(sp)
              #                    occupy a6 with temp_10_ele_of_a3_19_73_0
    lw      a6,0(a1)
              #                    free a6
              #                    occupy a6 with temp_10_ele_of_a3_19_73_0
              #                    store to temp_10_ele_of_a3_19_73_0 in mem offset legal
    sw      a6,260(sp)
              #                    release a6 with temp_10_ele_of_a3_19_73_0
              #                    free a1
              #                    occupy a1 with temp_9_ptr_of_a3_19_73
              #                    store to temp_9_ptr_of_a3_19_73 in mem offset legal
    sd      a1,264(sp)
              #                    release a1 with temp_9_ptr_of_a3_19_73
              #                     65   mu a3_19_1:64 
              #                     67   temp_11_arithop_73_0 = Add i32 temp_8_arithop_73_0, temp_10_ele_of_a3_19_73_0 
              #                    occupy a7 with temp_8_arithop_73_0
              #                    occupy a1 with temp_10_ele_of_a3_19_73_0
              #                    load from temp_10_ele_of_a3_19_73_0 in mem


    lw      a1,260(sp)
              #                    occupy a6 with temp_11_arithop_73_0
    ADDW    a6,a7,a1
              #                    free a7
              #                    occupy a7 with temp_8_arithop_73_0
              #                    store to temp_8_arithop_73_0 in mem offset legal
    sw      a7,272(sp)
              #                    release a7 with temp_8_arithop_73_0
              #                    free a1
              #                    occupy a1 with temp_10_ele_of_a3_19_73_0
              #                    store to temp_10_ele_of_a3_19_73_0 in mem offset legal
    sw      a1,260(sp)
              #                    release a1 with temp_10_ele_of_a3_19_73_0
              #                    free a6
              #                     69   temp_12_arithop_73_0 = Mod i32 temp_11_arithop_73_0, 13333_0 
              #                    occupy a6 with temp_11_arithop_73_0
              #                    occupy a1 with 13333_0
    li      a1, 13333
              #                    occupy a7 with temp_12_arithop_73_0
    rem     a7,a6,a1
              #                    free a6
              #                    occupy a6 with temp_11_arithop_73_0
              #                    store to temp_11_arithop_73_0 in mem offset legal
    sw      a6,256(sp)
              #                    release a6 with temp_11_arithop_73_0
              #                    free a1
              #                    free a7
              #                     70   (nop) 
              #                     72   temp_13_arithop_73_0 = Add i32 j_63_1, 2_0 
              #                    occupy a1 with j_63_1
              #                    load from j_63_1 in mem


    lw      a1,296(sp)
              #                    occupy a6 with 2_0
    li      a6, 2
              #                    occupy s1 with temp_13_arithop_73_0
    ADDW    s1,a1,a6
              #                    free a1
              #                    occupy a1 with j_63_1
              #                    store to j_63_1 in mem offset legal
    sw      a1,296(sp)
              #                    release a1 with j_63_1
              #                    free a6
              #                    free s1
              #                    occupy s1 with temp_13_arithop_73_0
              #                    store to temp_13_arithop_73_0 in mem offset legal
    sw      s1,248(sp)
              #                    release s1 with temp_13_arithop_73_0
              #                     73   (nop) 
              #                     292  j_63_3 = i32 temp_13_arithop_73_0 
              #                    occupy a1 with temp_13_arithop_73_0
              #                    load from temp_13_arithop_73_0 in mem


    lw      a1,248(sp)
              #                    occupy a6 with j_63_3
    mv      a6, a1
              #                    free a1
              #                    occupy a1 with temp_13_arithop_73_0
              #                    store to temp_13_arithop_73_0 in mem offset legal
    sw      a1,248(sp)
              #                    release a1 with temp_13_arithop_73_0
              #                    free a6
              #                    occupy a6 with j_63_3
              #                    store to j_63_3 in mem offset legal
    sw      a6,292(sp)
              #                    release a6 with j_63_3
              #                     293  ans_19_9 = i32 temp_12_arithop_73_0 
              #                    occupy a7 with temp_12_arithop_73_0
              #                    occupy a1 with ans_19_9
    mv      a1, a7
              #                    free a7
              #                    occupy a7 with temp_12_arithop_73_0
              #                    store to temp_12_arithop_73_0 in mem offset legal
    sw      a7,252(sp)
              #                    release a7 with temp_12_arithop_73_0
              #                    free a1
              #                          jump label: gather_22 
    j       .gather_22
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a2:Freed { symidx: temp_14_ptr_of_a2_19_70, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a6:Freed { symidx: ans_19_7, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     232  label while.exit_66: 
.while.exit_66:
              #                     365  untrack temp_14_ptr_of_a2_19_70 
              #                    occupy a2 with temp_14_ptr_of_a2_19_70
              #                    release a2 with temp_14_ptr_of_a2_19_70
              #                     364  untrack j_63_1 
              #                     363  untrack temp_6_ptr_of_a1_19_73 
              #                     53    Call void putint_0(ans_19_7) 
              #                    saved register dumping to mem
              #                    occupy a0 with k_17_0
              #                    store to k_17_0 in mem offset_illegal
              #                    occupy a1 with _anonymous_of_120372_0_0
    li      a1, 120372
    li      a1, 120372
    add     a1,sp,a1
    sw      a0,0(a1)
              #                    free a1
              #                    release a0 with k_17_0
              #                    occupy a3 with temp_55_cmp_24_0
              #                    store to temp_55_cmp_24_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_55_cmp_24_0
              #                    occupy a4 with temp_56_cmp_30_0
              #                    store to temp_56_cmp_30_0 in mem offset legal
    sb      a4,10(sp)
              #                    release a4 with temp_56_cmp_30_0
              #                    occupy a5 with temp_57_cmp_36_0
              #                    store to temp_57_cmp_36_0 in mem offset legal
    sb      a5,9(sp)
              #                    release a5 with temp_57_cmp_36_0
              #                    occupy a6 with ans_19_7
              #                    store to ans_19_7 in mem offset legal
    sw      a6,336(sp)
              #                    release a6 with ans_19_7
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_ans_19_7_0
              #                    load from ans_19_7 in mem


    lw      a0,336(sp)
              #                    arg load ended


    call    putint
              #                     294  ans_19_11 = i32 ans_19_7 
              #                    occupy a0 with ans_19_7
              #                    load from ans_19_7 in mem


    lw      a0,336(sp)
              #                    occupy a1 with ans_19_11
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     366  untrack ans_19_7 
              #                    occupy a0 with ans_19_7
              #                    release a0 with ans_19_7
              #                          jump label: gather_27 
    j       .gather_27
              #                    regtab     a1:Freed { symidx: ans_19_11, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     225  label gather_27: 
.gather_27:
              #                     295  ans_19_6 = i32 ans_19_11 
              #                    occupy a1 with ans_19_11
              #                    occupy a0 with ans_19_6
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          jump label: gather_29 
              #                    occupy a0 with ans_19_6
              #                    store to ans_19_6 in mem offset legal
    sw      a0,340(sp)
              #                    release a0 with ans_19_6
              #                    occupy a1 with ans_19_11
              #                    store to ans_19_11 in mem offset legal
    sw      a1,328(sp)
              #                    release a1 with ans_19_11
              #                    occupy a1 with ans_19_6
              #                    load from ans_19_6 in mem


    lw      a1,340(sp)
    j       .gather_29
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: ans_19_1, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a7:Freed { symidx: temp_58_cmp_43_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     223  label branch_false_62: 
.branch_false_62:
              #                     37   temp_0_ptr_of_a3_19_77 = GEP a3_19_1:Array:i32:[Some(10000_0)] [Some(i_19_10)] 
              #                    occupy a2 with temp_0_ptr_of_a3_19_77
    li      a2, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with i_19_10
              #                    load from i_19_10 in mem


    lw      s1,356(sp)
    mv      a6, s1
              #                    free s1
              #                    occupy s1 with i_19_10
              #                    store to i_19_10 in mem offset legal
    sw      s1,356(sp)
              #                    release s1 with i_19_10
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,372
              #                    free a2
              #                    occupy a2 with temp_0_ptr_of_a3_19_77
              #                    store to temp_0_ptr_of_a3_19_77 in mem offset legal
    sd      a2,320(sp)
              #                    release a2 with temp_0_ptr_of_a3_19_77
              #                     39   temp_1_ele_of_a3_19_77_0 = load temp_0_ptr_of_a3_19_77:ptr->i32 
              #                    occupy a2 with temp_0_ptr_of_a3_19_77
              #                    load from temp_0_ptr_of_a3_19_77 in mem
    ld      a2,320(sp)
              #                    occupy a6 with temp_1_ele_of_a3_19_77_0
    lw      a6,0(a2)
              #                    free a6
              #                    occupy a6 with temp_1_ele_of_a3_19_77_0
              #                    store to temp_1_ele_of_a3_19_77_0 in mem offset legal
    sw      a6,316(sp)
              #                    release a6 with temp_1_ele_of_a3_19_77_0
              #                    free a2
              #                    occupy a2 with temp_0_ptr_of_a3_19_77
              #                    store to temp_0_ptr_of_a3_19_77 in mem offset legal
    sd      a2,320(sp)
              #                    release a2 with temp_0_ptr_of_a3_19_77
              #                     40   mu a3_19_1:39 
              #                     42   temp_2_arithop_77_0 = Mul i32 temp_1_ele_of_a3_19_77_0, k_17_0 
              #                    occupy a2 with temp_2_arithop_77_0
              #                    occupy a6 with temp_1_ele_of_a3_19_77_0
              #                    load from temp_1_ele_of_a3_19_77_0 in mem


    lw      a6,316(sp)
              #                    occupy a0 with k_17_0
    mulw    a2,a6,a0
              #                    free a6
              #                    occupy a6 with temp_1_ele_of_a3_19_77_0
              #                    store to temp_1_ele_of_a3_19_77_0 in mem offset legal
    sw      a6,316(sp)
              #                    release a6 with temp_1_ele_of_a3_19_77_0
              #                    free a0
              #                    occupy a0 with k_17_0
              #                    store to k_17_0 in mem offset_illegal
              #                    occupy a6 with _anonymous_of_120372_0_0
    li      a6, 120372
    li      a6, 120372
    add     a6,sp,a6
    sw      a0,0(a6)
              #                    free a6
              #                    release a0 with k_17_0
              #                    free a2
              #                     44   temp_3_arithop_77_0 = Add i32 ans_19_1, temp_2_arithop_77_0 
              #                    occupy a1 with ans_19_1
              #                    occupy a2 with temp_2_arithop_77_0
              #                    occupy a0 with temp_3_arithop_77_0
    ADDW    a0,a1,a2
              #                    free a1
              #                    occupy a1 with ans_19_1
              #                    store to ans_19_1 in mem offset legal
    sw      a1,352(sp)
              #                    release a1 with ans_19_1
              #                    free a2
              #                    free a0
              #                     46   temp_4_arithop_77_0 = Mod i32 temp_3_arithop_77_0, 99988_0 
              #                    occupy a0 with temp_3_arithop_77_0
              #                    occupy a1 with 99988_0
    li      a1, 99988
              #                    occupy a6 with temp_4_arithop_77_0
    rem     a6,a0,a1
              #                    free a0
              #                    occupy a0 with temp_3_arithop_77_0
              #                    store to temp_3_arithop_77_0 in mem offset legal
    sw      a0,308(sp)
              #                    release a0 with temp_3_arithop_77_0
              #                    free a1
              #                    free a6
              #                     47   (nop) 
              #                     296  ans_19_11 = i32 temp_4_arithop_77_0 
              #                    occupy a6 with temp_4_arithop_77_0
              #                    occupy a0 with ans_19_11
    mv      a0, a6
              #                    free a6
              #                    occupy a6 with temp_4_arithop_77_0
              #                    store to temp_4_arithop_77_0 in mem offset legal
    sw      a6,304(sp)
              #                    release a6 with temp_4_arithop_77_0
              #                    free a0
              #                          jump label: gather_27 
              #                    occupy a0 with ans_19_11
              #                    store to ans_19_11 in mem offset legal
    sw      a0,328(sp)
              #                    release a0 with ans_19_11
              #                    occupy a4 with temp_56_cmp_30_0
              #                    store to temp_56_cmp_30_0 in mem offset legal
    sb      a4,10(sp)
              #                    release a4 with temp_56_cmp_30_0
              #                    occupy a1 with ans_19_11
              #                    load from ans_19_11 in mem


    lw      a1,328(sp)
              #                    occupy a3 with temp_55_cmp_24_0
              #                    store to temp_55_cmp_24_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_55_cmp_24_0
              #                    occupy a2 with temp_2_arithop_77_0
              #                    store to temp_2_arithop_77_0 in mem offset legal
    sw      a2,312(sp)
              #                    release a2 with temp_2_arithop_77_0
              #                    occupy a5 with temp_57_cmp_36_0
              #                    store to temp_57_cmp_36_0 in mem offset legal
    sb      a5,9(sp)
              #                    release a5 with temp_57_cmp_36_0
              #                    occupy a7 with temp_58_cmp_43_0
              #                    store to temp_58_cmp_43_0 in mem offset legal
    sb      a7,8(sp)
              #                    release a7 with temp_58_cmp_43_0
    j       .gather_27
              #                    regtab     a0:Freed { symidx: k_17_0, tracked: true } |     a1:Freed { symidx: ans_19_1, tracked: true } |     a3:Freed { symidx: temp_55_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_56_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_57_cmp_36_0, tracked: true } |     a7:Freed { symidx: temp_58_cmp_43_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     206  label while.exit_44: 
.while.exit_44:
              #                     301  untrack k_17_0 
              #                    occupy a0 with k_17_0
              #                    release a0 with k_17_0
              #                     300  untrack i_19_10 
              #                     35   ret ans_19_1 
              #                    load from ra_long_array_0 in mem
              #                    occupy a0 with _anonymous_of_120384_0_0
    li      a0, 120384
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_long_array_0 in mem
              #                    occupy a2 with _anonymous_of_120376_0_0
    li      a2, 120376
    add     a2,sp,a2
    ld      s0,0(a2)
              #                    free a2
              #                    occupy a1 with ans_19_1
              #                    store to ans_19_1 in mem offset legal
    sw      a1,352(sp)
              #                    release a1 with ans_19_1
              #                    occupy a0 with ans_19_1
              #                    load from ans_19_1 in mem


    lw      a0,352(sp)
              #                    occupy a1 with 120392_0
    li      a1, 120392
    li      a1, 120392
    add     sp,a1,sp
              #                    free a1
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     20   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_65_ret_of_long_array _s82 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     247  alloc i32 [temp_65_ret_of_long_array_82] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     248  temp_65_ret_of_long_array_82_0 =  Call i32 long_array_0(9_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_9_0_0
    li      a0, 9
              #                    arg load ended


    call    long_array
              #                     249  ret temp_65_ret_of_long_array_82_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with temp_65_ret_of_long_array_82_0
              #                    store to temp_65_ret_of_long_array_82_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_65_ret_of_long_array_82_0
              #                    occupy a0 with temp_65_ret_of_long_array_82_0
              #                    load from temp_65_ret_of_long_array_82_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl N
              #                     17   global i32 N_0 
    .type N,@object
N:
    .word 10000
