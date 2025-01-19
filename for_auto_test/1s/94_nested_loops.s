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
              #                     20   Define loop1_0 "x_18_0,y_18_0," -> loop1_ret_0 
    .globl loop1
    .type loop1,@function
loop1:
              #                    mem layout:|ra_loop1:8 at 240|s0_loop1:8 at 232|x _s18 _i0:4 at 228|y _s18 _i0:4 at 224|a _s20 _i0:4 at 220|a _s20 _i2:4 at 216|b _s20 _i0:4 at 212|b _s20 _i1:4 at 208|b _s20 _i3:4 at 204|c _s20 _i0:4 at 200|c _s20 _i1:4 at 196|c _s20 _i2:4 at 192|c _s20 _i4:4 at 188|d _s20 _i0:4 at 184|d _s20 _i1:4 at 180|d _s20 _i2:4 at 176|d _s20 _i3:4 at 172|d _s20 _i5:4 at 168|e _s20 _i0:4 at 164|e _s20 _i1:4 at 160|e _s20 _i2:4 at 156|e _s20 _i3:4 at 152|e _s20 _i4:4 at 148|e _s20 _i6:4 at 144|f _s20 _i0:4 at 140|f _s20 _i1:4 at 136|f _s20 _i2:4 at 132|f _s20 _i3:4 at 128|f _s20 _i4:4 at 124|f _s20 _i5:4 at 120|f _s20 _i7:4 at 116|g _s20 _i0:4 at 112|g _s20 _i1:4 at 108|g _s20 _i2:4 at 104|g _s20 _i3:4 at 100|g _s20 _i4:4 at 96|g _s20 _i5:4 at 92|g _s20 _i6:4 at 88|g _s20 _i8:4 at 84|temp_0_arithop _s25 _i0:4 at 80|temp_1_arithop _s29 _i0:4 at 76|temp_2_arithop _s33 _i0:4 at 72|temp_3_arithop _s37 _i0:4 at 68|temp_4_arithop _s41 _i0:4 at 64|temp_5_arithop _s45 _i0:4 at 60|none:4 at 56|temp_6_ptr_of_*arr1_0:8 at 48|temp_7_arithop _s49 _i0:4 at 44|temp_8_arithop _s49 _i0:4 at 40|temp_9_arithop _s49 _i0:4 at 36|temp_10_arithop _s49 _i0:4 at 32|temp_11_arithop _s49 _i0:4 at 28|temp_12_arithop _s49 _i0:4 at 24|temp_13_arithop _s49 _i0:4 at 20|temp_14_arithop _s49 _i0:4 at 16|temp_15_arithop _s49 _i0:4 at 12|temp_16_cmp _s23 _i0:1 at 11|temp_17_cmp _s23 _i0:1 at 10|temp_18_cmp _s27 _i0:1 at 9|temp_19_cmp _s31 _i0:1 at 8|temp_20_cmp _s35 _i0:1 at 7|temp_21_cmp _s39 _i0:1 at 6|temp_22_cmp _s43 _i0:1 at 5|temp_23_cmp _s47 _i0:1 at 4|none:4 at 0
    addi    sp,sp,-248
              #                    store to ra_loop1_0 in mem offset legal
    sd      ra,240(sp)
              #                    store to s0_loop1_0 in mem offset legal
    sd      s0,232(sp)
    addi    s0,sp,248
              #                     415  arr1_0_1 = chi arr1_0_0:20 
              #                     24   alloc i32 [a_20] 
              #                     26   alloc i32 [b_20] 
              #                     28   alloc i32 [c_20] 
              #                     30   alloc i32 [d_20] 
              #                     32   alloc i32 [e_20] 
              #                     34   alloc i32 [f_20] 
              #                     36   alloc i32 [g_20] 
              #                     40   alloc i32 [temp_0_arithop_25] 
              #                     44   alloc i32 [temp_1_arithop_29] 
              #                     48   alloc i32 [temp_2_arithop_33] 
              #                     52   alloc i32 [temp_3_arithop_37] 
              #                     56   alloc i32 [temp_4_arithop_41] 
              #                     60   alloc i32 [temp_5_arithop_45] 
              #                     63   alloc ptr->i32 [temp_6_ptr_of_*arr1_0_49] 
              #                     65   alloc i32 [temp_7_arithop_49] 
              #                     67   alloc i32 [temp_8_arithop_49] 
              #                     69   alloc i32 [temp_9_arithop_49] 
              #                     71   alloc i32 [temp_10_arithop_49] 
              #                     73   alloc i32 [temp_11_arithop_49] 
              #                     75   alloc i32 [temp_12_arithop_49] 
              #                     77   alloc i32 [temp_13_arithop_49] 
              #                     79   alloc i32 [temp_14_arithop_49] 
              #                     83   alloc i32 [temp_15_arithop_49] 
              #                     86   alloc i1 [temp_16_cmp_23] 
              #                     88   alloc i1 [temp_17_cmp_23] 
              #                     98   alloc i1 [temp_18_cmp_27] 
              #                     104  alloc i1 [temp_19_cmp_31] 
              #                     110  alloc i1 [temp_20_cmp_35] 
              #                     116  alloc i1 [temp_21_cmp_39] 
              #                     122  alloc i1 [temp_22_cmp_43] 
              #                     128  alloc i1 [temp_23_cmp_47] 
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     25    
              #                     27    
              #                     29    
              #                     31    
              #                     33    
              #                     35    
              #                     37    
              #                     38   (nop) 
              #                     569  a_20_2 = i32 0_0 
              #                    occupy a2 with a_20_2
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_24 
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     95   label while.head_24: 
.while.head_24:
              #                     87   temp_16_cmp_23_0 = icmp i32 Slt a_20_2, x_18_0 
              #                    occupy a2 with a_20_2
              #                    occupy a0 with x_18_0
              #                    occupy a3 with temp_16_cmp_23_0
    slt     a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                     96   br i1 temp_16_cmp_23_0, label branch_short_circuit_p_true_315, label branch_short_circuit_c_false_315 
              #                    occupy a3 with temp_16_cmp_23_0
              #                    free a3
              #                    occupy a3 with temp_16_cmp_23_0
    bnez    a3, .branch_short_circuit_p_true_315
              #                    free a3
    j       .branch_short_circuit_c_false_315
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     92   label branch_short_circuit_p_true_315: 
.branch_short_circuit_p_true_315:
              #                     89   temp_17_cmp_23_0 = icmp i32 Slt a_20_2, y_18_0 
              #                    occupy a2 with a_20_2
              #                    occupy a1 with y_18_0
              #                    occupy a4 with temp_17_cmp_23_0
    slt     a4,a2,a1
              #                    free a2
              #                    free a1
              #                    free a4
              #                     94   br i1 temp_17_cmp_23_0, label branch_short_circuit_c_true_315, label branch_short_circuit_c_false_315 
              #                    occupy a4 with temp_17_cmp_23_0
              #                    free a4
              #                    occupy a4 with temp_17_cmp_23_0
    bnez    a4, .branch_short_circuit_c_true_315
              #                    free a4
              #                    occupy a4 with temp_17_cmp_23_0
              #                    store to temp_17_cmp_23_0 in mem offset legal
    sb      a4,10(sp)
              #                    release a4 with temp_17_cmp_23_0
    j       .branch_short_circuit_c_false_315
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     90   label branch_short_circuit_c_true_315: 
.branch_short_circuit_c_true_315:
              #                     39   (nop) 
              #                     570  b_20_3 = i32 0_0 
              #                    occupy a5 with b_20_3
    li      a5, 0
              #                    free a5
              #                          jump label: while.head_28 
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     100  label while.head_28: 
.while.head_28:
              #                     99   temp_18_cmp_27_0 = icmp i32 Slt b_20_3, 2_0 
              #                    occupy a5 with b_20_3
              #                    occupy a6 with 2_0
    li      a6, 2
              #                    occupy a7 with temp_18_cmp_27_0
    slt     a7,a5,a6
              #                    free a5
              #                    free a6
              #                    free a7
              #                     103  br i1 temp_18_cmp_27_0, label while.body_28, label while.exit_28 
              #                    occupy a7 with temp_18_cmp_27_0
              #                    free a7
              #                    occupy a7 with temp_18_cmp_27_0
    bnez    a7, .while.body_28
              #                    free a7
    j       .while.exit_28
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     101  label while.body_28: 
.while.body_28:
              #                     43   (nop) 
              #                     66   temp_7_arithop_49_0 = Add i32 a_20_2, b_20_3 
              #                    occupy a2 with a_20_2
              #                    occupy a5 with b_20_3
              #                    occupy a6 with temp_7_arithop_49_0
    ADDW    a6,a2,a5
              #                    free a2
              #                    free a5
              #                    free a6
              #                     571  c_20_4 = i32 0_0 
              #                    occupy s1 with c_20_4
    li      s1, 0
              #                    free s1
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     106  label while.head_32: 
.while.head_32:
              #                     105  temp_19_cmp_31_0 = icmp i32 Slt c_20_4, 3_0 
              #                    occupy s1 with c_20_4
              #                    occupy s2 with 3_0
    li      s2, 3
              #                    occupy s3 with temp_19_cmp_31_0
    slt     s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                     109  br i1 temp_19_cmp_31_0, label while.body_32, label while.exit_32 
              #                    occupy s3 with temp_19_cmp_31_0
              #                    free s3
              #                    occupy s3 with temp_19_cmp_31_0
    bnez    s3, .while.body_32
              #                    free s3
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     107  label while.body_32: 
.while.body_32:
              #                     47   (nop) 
              #                     68   temp_8_arithop_49_0 = Add i32 temp_7_arithop_49_0, c_20_4 
              #                    occupy a6 with temp_7_arithop_49_0
              #                    occupy s1 with c_20_4
              #                    occupy s2 with temp_8_arithop_49_0
    ADDW    s2,a6,s1
              #                    free a6
              #                    free s1
              #                    free s2
              #                     572  d_20_5 = i32 0_0 
              #                    occupy s4 with d_20_5
    li      s4, 0
              #                    free s4
              #                          jump label: while.head_36 
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s2:Freed { symidx: temp_8_arithop_49_0, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |     s4:Freed { symidx: d_20_5, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     112  label while.head_36: 
.while.head_36:
              #                     111  temp_20_cmp_35_0 = icmp i32 Slt d_20_5, 4_0 
              #                    occupy s4 with d_20_5
              #                    occupy s5 with 4_0
    li      s5, 4
              #                    occupy s6 with temp_20_cmp_35_0
    slt     s6,s4,s5
              #                    free s4
              #                    occupy s4 with d_20_5
              #                    store to d_20_5 in mem offset legal
    sw      s4,168(sp)
              #                    release s4 with d_20_5
              #                    free s5
              #                    free s6
              #                     115  br i1 temp_20_cmp_35_0, label while.body_36, label while.exit_36 
              #                    occupy s6 with temp_20_cmp_35_0
              #                    free s6
              #                    occupy s6 with temp_20_cmp_35_0
    bnez    s6, .while.body_36
              #                    free s6
    j       .while.exit_36
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s2:Freed { symidx: temp_8_arithop_49_0, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |     s6:Freed { symidx: temp_20_cmp_35_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     113  label while.body_36: 
.while.body_36:
              #                     51   (nop) 
              #                     70   temp_9_arithop_49_0 = Add i32 temp_8_arithop_49_0, d_20_5 
              #                    occupy s2 with temp_8_arithop_49_0
              #                    occupy s4 with d_20_5
              #                    load from d_20_5 in mem


    lw      s4,168(sp)
              #                    occupy s5 with temp_9_arithop_49_0
    ADDW    s5,s2,s4
              #                    free s2
              #                    occupy s2 with temp_8_arithop_49_0
              #                    store to temp_8_arithop_49_0 in mem offset legal
    sw      s2,40(sp)
              #                    release s2 with temp_8_arithop_49_0
              #                    free s4
              #                    occupy s4 with d_20_5
              #                    store to d_20_5 in mem offset legal
    sw      s4,168(sp)
              #                    release s4 with d_20_5
              #                    free s5
              #                     573  e_20_6 = i32 0_0 
              #                    occupy s2 with e_20_6
    li      s2, 0
              #                    free s2
              #                    occupy s2 with e_20_6
              #                    store to e_20_6 in mem offset legal
    sw      s2,144(sp)
              #                    release s2 with e_20_6
              #                          jump label: while.head_40 
    j       .while.head_40
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |     s5:Freed { symidx: temp_9_arithop_49_0, tracked: true } |     s6:Freed { symidx: temp_20_cmp_35_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     118  label while.head_40: 
.while.head_40:
              #                     117  temp_21_cmp_39_0 = icmp i32 Slt e_20_6, 5_0 
              #                    occupy s2 with e_20_6
              #                    load from e_20_6 in mem


    lw      s2,144(sp)
              #                    occupy s4 with 5_0
    li      s4, 5
              #                    occupy s7 with temp_21_cmp_39_0
    slt     s7,s2,s4
              #                    free s2
              #                    occupy s2 with e_20_6
              #                    store to e_20_6 in mem offset legal
    sw      s2,144(sp)
              #                    release s2 with e_20_6
              #                    free s4
              #                    free s7
              #                    occupy s7 with temp_21_cmp_39_0
              #                    store to temp_21_cmp_39_0 in mem offset legal
    sb      s7,6(sp)
              #                    release s7 with temp_21_cmp_39_0
              #                     121  br i1 temp_21_cmp_39_0, label while.body_40, label while.exit_40 
              #                    occupy s2 with temp_21_cmp_39_0
              #                    load from temp_21_cmp_39_0 in mem


    lb      s2,6(sp)
              #                    free s2
              #                    occupy s2 with temp_21_cmp_39_0
              #                    store to temp_21_cmp_39_0 in mem offset legal
    sb      s2,6(sp)
              #                    release s2 with temp_21_cmp_39_0
              #                    occupy s2 with temp_21_cmp_39_0
              #                    load from temp_21_cmp_39_0 in mem


    lb      s2,6(sp)
    bnez    s2, .while.body_40
              #                    free s2
              #                    occupy s2 with temp_21_cmp_39_0
              #                    store to temp_21_cmp_39_0 in mem offset legal
    sb      s2,6(sp)
              #                    release s2 with temp_21_cmp_39_0
    j       .while.exit_40
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |     s5:Freed { symidx: temp_9_arithop_49_0, tracked: true } |     s6:Freed { symidx: temp_20_cmp_35_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     119  label while.body_40: 
.while.body_40:
              #                     55   (nop) 
              #                     72   temp_10_arithop_49_0 = Add i32 temp_9_arithop_49_0, e_20_6 
              #                    occupy s5 with temp_9_arithop_49_0
              #                    occupy s2 with e_20_6
              #                    load from e_20_6 in mem


    lw      s2,144(sp)
              #                    occupy s4 with temp_10_arithop_49_0
    ADDW    s4,s5,s2
              #                    free s5
              #                    occupy s5 with temp_9_arithop_49_0
              #                    store to temp_9_arithop_49_0 in mem offset legal
    sw      s5,36(sp)
              #                    release s5 with temp_9_arithop_49_0
              #                    free s2
              #                    occupy s2 with e_20_6
              #                    store to e_20_6 in mem offset legal
    sw      s2,144(sp)
              #                    release s2 with e_20_6
              #                    free s4
              #                     574  f_20_7 = i32 0_0 
              #                    occupy s2 with f_20_7
    li      s2, 0
              #                    free s2
              #                    occupy s2 with f_20_7
              #                    store to f_20_7 in mem offset legal
    sw      s2,116(sp)
              #                    release s2 with f_20_7
              #                          jump label: while.head_44 
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |     s4:Freed { symidx: temp_10_arithop_49_0, tracked: true } |     s6:Freed { symidx: temp_20_cmp_35_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     124  label while.head_44: 
.while.head_44:
              #                     123  temp_22_cmp_43_0 = icmp i32 Slt f_20_7, 6_0 
              #                    occupy s2 with f_20_7
              #                    load from f_20_7 in mem


    lw      s2,116(sp)
              #                    occupy s5 with 6_0
    li      s5, 6
              #                    occupy s7 with temp_22_cmp_43_0
    slt     s7,s2,s5
              #                    free s2
              #                    occupy s2 with f_20_7
              #                    store to f_20_7 in mem offset legal
    sw      s2,116(sp)
              #                    release s2 with f_20_7
              #                    free s5
              #                    free s7
              #                    occupy s7 with temp_22_cmp_43_0
              #                    store to temp_22_cmp_43_0 in mem offset legal
    sb      s7,5(sp)
              #                    release s7 with temp_22_cmp_43_0
              #                     127  br i1 temp_22_cmp_43_0, label while.body_44, label while.exit_44 
              #                    occupy s2 with temp_22_cmp_43_0
              #                    load from temp_22_cmp_43_0 in mem


    lb      s2,5(sp)
              #                    free s2
              #                    occupy s2 with temp_22_cmp_43_0
              #                    store to temp_22_cmp_43_0 in mem offset legal
    sb      s2,5(sp)
              #                    release s2 with temp_22_cmp_43_0
              #                    occupy s2 with temp_22_cmp_43_0
              #                    load from temp_22_cmp_43_0 in mem


    lb      s2,5(sp)
    bnez    s2, .while.body_44
              #                    free s2
              #                    occupy s2 with temp_22_cmp_43_0
              #                    store to temp_22_cmp_43_0 in mem offset legal
    sb      s2,5(sp)
              #                    release s2 with temp_22_cmp_43_0
    j       .while.exit_44
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |     s4:Freed { symidx: temp_10_arithop_49_0, tracked: true } |     s6:Freed { symidx: temp_20_cmp_35_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     125  label while.body_44: 
.while.body_44:
              #                     59   (nop) 
              #                     74   temp_11_arithop_49_0 = Add i32 temp_10_arithop_49_0, f_20_7 
              #                    occupy s4 with temp_10_arithop_49_0
              #                    occupy s2 with f_20_7
              #                    load from f_20_7 in mem


    lw      s2,116(sp)
              #                    occupy s5 with temp_11_arithop_49_0
    ADDW    s5,s4,s2
              #                    free s4
              #                    occupy s4 with temp_10_arithop_49_0
              #                    store to temp_10_arithop_49_0 in mem offset legal
    sw      s4,32(sp)
              #                    release s4 with temp_10_arithop_49_0
              #                    free s2
              #                    occupy s2 with f_20_7
              #                    store to f_20_7 in mem offset legal
    sw      s2,116(sp)
              #                    release s2 with f_20_7
              #                    free s5
              #                     575  g_20_8 = i32 0_0 
              #                    occupy s2 with g_20_8
    li      s2, 0
              #                    free s2
              #                    occupy s2 with g_20_8
              #                    store to g_20_8 in mem offset legal
    sw      s2,84(sp)
              #                    release s2 with g_20_8
              #                          jump label: while.head_48 
    j       .while.head_48
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |     s5:Freed { symidx: temp_11_arithop_49_0, tracked: true } |     s6:Freed { symidx: temp_20_cmp_35_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     130  label while.head_48: 
.while.head_48:
              #                     129  temp_23_cmp_47_0 = icmp i32 Slt g_20_8, 2_0 
              #                    occupy s2 with g_20_8
              #                    load from g_20_8 in mem


    lw      s2,84(sp)
              #                    occupy s4 with 2_0
    li      s4, 2
              #                    occupy s7 with temp_23_cmp_47_0
    slt     s7,s2,s4
              #                    free s2
              #                    occupy s2 with g_20_8
              #                    store to g_20_8 in mem offset legal
    sw      s2,84(sp)
              #                    release s2 with g_20_8
              #                    free s4
              #                    free s7
              #                    occupy s7 with temp_23_cmp_47_0
              #                    store to temp_23_cmp_47_0 in mem offset legal
    sb      s7,4(sp)
              #                    release s7 with temp_23_cmp_47_0
              #                     133  br i1 temp_23_cmp_47_0, label while.body_48, label while.exit_48 
              #                    occupy s2 with temp_23_cmp_47_0
              #                    load from temp_23_cmp_47_0 in mem


    lb      s2,4(sp)
              #                    free s2
              #                    occupy s2 with temp_23_cmp_47_0
              #                    store to temp_23_cmp_47_0 in mem offset legal
    sb      s2,4(sp)
              #                    release s2 with temp_23_cmp_47_0
              #                    occupy s2 with temp_23_cmp_47_0
              #                    load from temp_23_cmp_47_0 in mem


    lb      s2,4(sp)
    bnez    s2, .while.body_48
              #                    free s2
              #                    occupy s2 with temp_23_cmp_47_0
              #                    store to temp_23_cmp_47_0 in mem offset legal
    sb      s2,4(sp)
              #                    release s2 with temp_23_cmp_47_0
    j       .while.exit_48
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |     s5:Freed { symidx: temp_11_arithop_49_0, tracked: true } |     s6:Freed { symidx: temp_20_cmp_35_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     131  label while.body_48: 
.while.body_48:
              #                     64   temp_6_ptr_of_*arr1_0_49 = GEP *arr1_0:ptr->Array:i32:[Some(2_0), Some(3_0), Some(4_0), Some(5_0), Some(6_0), Some(2_0)] [Some(a_20_2), Some(b_20_3), Some(c_20_4), Some(d_20_5), Some(e_20_6), Some(f_20_7), Some(g_20_8)] 
              #                    occupy s2 with temp_6_ptr_of_*arr1_0_49
    li      s2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 1440_0
    li      s7, 1440
              #                    occupy a2 with a_20_2
    mul     s4,s7,a2
              #                    free s7
              #                    free a2
              #                    occupy a2 with a_20_2
              #                    store to a_20_2 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with a_20_2
    add     s2,s2,s4
              #                    free s4
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 720_0
    li      s4, 720
              #                    occupy a5 with b_20_3
    mul     a2,s4,a5
              #                    free s4
              #                    free a5
              #                    occupy a5 with b_20_3
              #                    store to b_20_3 in mem offset legal
    sw      a5,204(sp)
              #                    release a5 with b_20_3
    add     s2,s2,a2
              #                    free a2
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 240_0
    li      s4, 240
              #                    occupy s1 with c_20_4
    mul     a5,s4,s1
              #                    free s4
              #                    free s1
              #                    occupy s1 with c_20_4
              #                    store to c_20_4 in mem offset legal
    sw      s1,188(sp)
              #                    release s1 with c_20_4
    add     s2,s2,a5
              #                    free a5
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 60_0
    li      s4, 60
              #                    occupy s7 with d_20_5
              #                    load from d_20_5 in mem


    lw      s7,168(sp)
    mul     s1,s4,s7
              #                    free s4
              #                    free s7
              #                    occupy s7 with d_20_5
              #                    store to d_20_5 in mem offset legal
    sw      s7,168(sp)
              #                    release s7 with d_20_5
    add     s2,s2,s1
              #                    free s1
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 12_0
    li      s4, 12
              #                    occupy s7 with e_20_6
              #                    load from e_20_6 in mem


    lw      s7,144(sp)
    mul     s1,s4,s7
              #                    free s4
              #                    free s7
              #                    occupy s7 with e_20_6
              #                    store to e_20_6 in mem offset legal
    sw      s7,144(sp)
              #                    release s7 with e_20_6
    add     s2,s2,s1
              #                    free s1
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with f_20_7
              #                    load from f_20_7 in mem


    lw      s4,116(sp)
    slli s1,s4,1
              #                    free s4
              #                    occupy s4 with f_20_7
              #                    store to f_20_7 in mem offset legal
    sw      s4,116(sp)
              #                    release s4 with f_20_7
    add     s2,s2,s1
              #                    free s1
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with g_20_8
              #                    load from g_20_8 in mem


    lw      s4,84(sp)
    mv      s1, s4
              #                    free s4
              #                    occupy s4 with g_20_8
              #                    store to g_20_8 in mem offset legal
    sw      s4,84(sp)
              #                    release s4 with g_20_8
    add     s2,s2,s1
              #                    free s1
    slli s2,s2,2
              #                    occupy s1 with *arr1_0
              #                       load label arr1 as ptr to reg
    la      s1, arr1
              #                    occupy reg s1 with *arr1_0
    add     s2,s2,s1
              #                    free s1
              #                    free s2
              #                     76   temp_12_arithop_49_0 = Add i32 temp_11_arithop_49_0, g_20_8 
              #                    occupy s5 with temp_11_arithop_49_0
              #                    occupy s1 with g_20_8
              #                    load from g_20_8 in mem


    lw      s1,84(sp)
              #                    occupy s4 with temp_12_arithop_49_0
    ADDW    s4,s5,s1
              #                    free s5
              #                    occupy s5 with temp_11_arithop_49_0
              #                    store to temp_11_arithop_49_0 in mem offset legal
    sw      s5,28(sp)
              #                    release s5 with temp_11_arithop_49_0
              #                    free s1
              #                    occupy s1 with g_20_8
              #                    store to g_20_8 in mem offset legal
    sw      s1,84(sp)
              #                    release s1 with g_20_8
              #                    free s4
              #                     78   temp_13_arithop_49_0 = Add i32 temp_12_arithop_49_0, x_18_0 
              #                    occupy s4 with temp_12_arithop_49_0
              #                    occupy a0 with x_18_0
              #                    occupy s1 with temp_13_arithop_49_0
    ADDW    s1,s4,a0
              #                    free s4
              #                    occupy s4 with temp_12_arithop_49_0
              #                    store to temp_12_arithop_49_0 in mem offset legal
    sw      s4,24(sp)
              #                    release s4 with temp_12_arithop_49_0
              #                    free a0
              #                    free s1
              #                     80   temp_14_arithop_49_0 = Add i32 temp_13_arithop_49_0, y_18_0 
              #                    occupy s1 with temp_13_arithop_49_0
              #                    occupy a1 with y_18_0
              #                    occupy s4 with temp_14_arithop_49_0
    ADDW    s4,s1,a1
              #                    free s1
              #                    occupy s1 with temp_13_arithop_49_0
              #                    store to temp_13_arithop_49_0 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with temp_13_arithop_49_0
              #                    free a1
              #                    free s4
              #                     81   store temp_14_arithop_49_0:i32 temp_6_ptr_of_*arr1_0_49:ptr->i32 
              #                    occupy s2 with temp_6_ptr_of_*arr1_0_49
              #                    occupy s4 with temp_14_arithop_49_0
    sw      s4,0(s2)
              #                    free s4
              #                    free s2
              #                     82   arr1_0_9 = chi arr1_0_8:81 
              #                     84   temp_15_arithop_49_0 = Add i32 g_20_8, 1_0 
              #                    occupy s1 with g_20_8
              #                    load from g_20_8 in mem


    lw      s1,84(sp)
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s7 with temp_15_arithop_49_0
    ADDW    s7,s1,s5
              #                    free s1
              #                    occupy s1 with g_20_8
              #                    store to g_20_8 in mem offset legal
    sw      s1,84(sp)
              #                    release s1 with g_20_8
              #                    free s5
              #                    free s7
              #                    occupy s7 with temp_15_arithop_49_0
              #                    store to temp_15_arithop_49_0 in mem offset legal
    sw      s7,12(sp)
              #                    release s7 with temp_15_arithop_49_0
              #                     85   (nop) 
              #                     576  g_20_8 = i32 temp_15_arithop_49_0 
              #                    occupy s1 with temp_15_arithop_49_0
              #                    load from temp_15_arithop_49_0 in mem


    lw      s1,12(sp)
              #                    occupy s5 with g_20_8
    mv      s5, s1
              #                    free s1
              #                    occupy s1 with temp_15_arithop_49_0
              #                    store to temp_15_arithop_49_0 in mem offset legal
    sw      s1,12(sp)
              #                    release s1 with temp_15_arithop_49_0
              #                    free s5
              #                    occupy s5 with g_20_8
              #                    store to g_20_8 in mem offset legal
    sw      s5,84(sp)
              #                    release s5 with g_20_8
              #                          jump label: while.head_48 
              #                    occupy a5 with b_20_3
              #                    load from b_20_3 in mem


    lw      a5,204(sp)
              #                    occupy s1 with c_20_4
              #                    load from c_20_4 in mem


    lw      s1,188(sp)
              #                    occupy s2 with temp_6_ptr_of_*arr1_0_49
              #                    store to temp_6_ptr_of_*arr1_0_49 in mem offset legal
    sd      s2,48(sp)
              #                    release s2 with temp_6_ptr_of_*arr1_0_49
              #                    occupy a2 with a_20_2
              #                    load from a_20_2 in mem


    lw      a2,216(sp)
              #                    occupy s5 with temp_11_arithop_49_0
              #                    load from temp_11_arithop_49_0 in mem


    lw      s5,28(sp)
              #                    occupy s4 with temp_14_arithop_49_0
              #                    store to temp_14_arithop_49_0 in mem offset legal
    sw      s4,16(sp)
              #                    release s4 with temp_14_arithop_49_0
    j       .while.head_48
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |     s5:Freed { symidx: temp_11_arithop_49_0, tracked: true } |     s6:Freed { symidx: temp_20_cmp_35_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     132  label while.exit_48: 
.while.exit_48:
              #                     61   temp_5_arithop_45_0 = Add i32 f_20_7, 1_0 
              #                    occupy s2 with f_20_7
              #                    load from f_20_7 in mem


    lw      s2,116(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s7 with temp_5_arithop_45_0
    ADDW    s7,s2,s4
              #                    free s2
              #                    occupy s2 with f_20_7
              #                    store to f_20_7 in mem offset legal
    sw      s2,116(sp)
              #                    release s2 with f_20_7
              #                    free s4
              #                    free s7
              #                    occupy s7 with temp_5_arithop_45_0
              #                    store to temp_5_arithop_45_0 in mem offset legal
    sw      s7,60(sp)
              #                    release s7 with temp_5_arithop_45_0
              #                     62   (nop) 
              #                     577  f_20_7 = i32 temp_5_arithop_45_0 
              #                    occupy s2 with temp_5_arithop_45_0
              #                    load from temp_5_arithop_45_0 in mem


    lw      s2,60(sp)
              #                    occupy s4 with f_20_7
    mv      s4, s2
              #                    free s2
              #                    occupy s2 with temp_5_arithop_45_0
              #                    store to temp_5_arithop_45_0 in mem offset legal
    sw      s2,60(sp)
              #                    release s2 with temp_5_arithop_45_0
              #                    free s4
              #                    occupy s4 with f_20_7
              #                    store to f_20_7 in mem offset legal
    sw      s4,116(sp)
              #                    release s4 with f_20_7
              #                          jump label: while.head_44 
              #                    occupy s5 with temp_11_arithop_49_0
              #                    store to temp_11_arithop_49_0 in mem offset legal
    sw      s5,28(sp)
              #                    release s5 with temp_11_arithop_49_0
              #                    occupy s4 with temp_10_arithop_49_0
              #                    load from temp_10_arithop_49_0 in mem


    lw      s4,32(sp)
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |     s4:Freed { symidx: temp_10_arithop_49_0, tracked: true } |     s6:Freed { symidx: temp_20_cmp_35_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     126  label while.exit_44: 
.while.exit_44:
              #                     57   temp_4_arithop_41_0 = Add i32 e_20_6, 1_0 
              #                    occupy s2 with e_20_6
              #                    load from e_20_6 in mem


    lw      s2,144(sp)
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s7 with temp_4_arithop_41_0
    ADDW    s7,s2,s5
              #                    free s2
              #                    occupy s2 with e_20_6
              #                    store to e_20_6 in mem offset legal
    sw      s2,144(sp)
              #                    release s2 with e_20_6
              #                    free s5
              #                    free s7
              #                    occupy s7 with temp_4_arithop_41_0
              #                    store to temp_4_arithop_41_0 in mem offset legal
    sw      s7,64(sp)
              #                    release s7 with temp_4_arithop_41_0
              #                     58   (nop) 
              #                     578  e_20_6 = i32 temp_4_arithop_41_0 
              #                    occupy s2 with temp_4_arithop_41_0
              #                    load from temp_4_arithop_41_0 in mem


    lw      s2,64(sp)
              #                    occupy s5 with e_20_6
    mv      s5, s2
              #                    free s2
              #                    occupy s2 with temp_4_arithop_41_0
              #                    store to temp_4_arithop_41_0 in mem offset legal
    sw      s2,64(sp)
              #                    release s2 with temp_4_arithop_41_0
              #                    free s5
              #                    occupy s5 with e_20_6
              #                    store to e_20_6 in mem offset legal
    sw      s5,144(sp)
              #                    release s5 with e_20_6
              #                          jump label: while.head_40 
              #                    occupy s5 with temp_9_arithop_49_0
              #                    load from temp_9_arithop_49_0 in mem


    lw      s5,36(sp)
              #                    occupy s4 with temp_10_arithop_49_0
              #                    store to temp_10_arithop_49_0 in mem offset legal
    sw      s4,32(sp)
              #                    release s4 with temp_10_arithop_49_0
    j       .while.head_40
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |     s5:Freed { symidx: temp_9_arithop_49_0, tracked: true } |     s6:Freed { symidx: temp_20_cmp_35_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     120  label while.exit_40: 
.while.exit_40:
              #                     53   temp_3_arithop_37_0 = Add i32 d_20_5, 1_0 
              #                    occupy s2 with d_20_5
              #                    load from d_20_5 in mem


    lw      s2,168(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s7 with temp_3_arithop_37_0
    ADDW    s7,s2,s4
              #                    free s2
              #                    occupy s2 with d_20_5
              #                    store to d_20_5 in mem offset legal
    sw      s2,168(sp)
              #                    release s2 with d_20_5
              #                    free s4
              #                    free s7
              #                    occupy s7 with temp_3_arithop_37_0
              #                    store to temp_3_arithop_37_0 in mem offset legal
    sw      s7,68(sp)
              #                    release s7 with temp_3_arithop_37_0
              #                     54   (nop) 
              #                     579  d_20_5 = i32 temp_3_arithop_37_0 
              #                    occupy s2 with temp_3_arithop_37_0
              #                    load from temp_3_arithop_37_0 in mem


    lw      s2,68(sp)
              #                    occupy s4 with d_20_5
    mv      s4, s2
              #                    free s2
              #                    occupy s2 with temp_3_arithop_37_0
              #                    store to temp_3_arithop_37_0 in mem offset legal
    sw      s2,68(sp)
              #                    release s2 with temp_3_arithop_37_0
              #                    free s4
              #                    occupy s4 with d_20_5
              #                    store to d_20_5 in mem offset legal
    sw      s4,168(sp)
              #                    release s4 with d_20_5
              #                          jump label: while.head_36 
              #                    occupy s6 with temp_20_cmp_35_0
              #                    store to temp_20_cmp_35_0 in mem offset legal
    sb      s6,7(sp)
              #                    release s6 with temp_20_cmp_35_0
              #                    occupy s2 with temp_8_arithop_49_0
              #                    load from temp_8_arithop_49_0 in mem


    lw      s2,40(sp)
              #                    occupy s5 with temp_9_arithop_49_0
              #                    store to temp_9_arithop_49_0 in mem offset legal
    sw      s5,36(sp)
              #                    release s5 with temp_9_arithop_49_0
              #                    occupy s4 with d_20_5
              #                    load from d_20_5 in mem


    lw      s4,168(sp)
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s2:Freed { symidx: temp_8_arithop_49_0, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |     s6:Freed { symidx: temp_20_cmp_35_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     114  label while.exit_36: 
.while.exit_36:
              #                     49   temp_2_arithop_33_0 = Add i32 c_20_4, 1_0 
              #                    occupy s1 with c_20_4
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_2_arithop_33_0
    ADDW    s5,s1,s4
              #                    free s1
              #                    occupy s1 with c_20_4
              #                    store to c_20_4 in mem offset legal
    sw      s1,188(sp)
              #                    release s1 with c_20_4
              #                    free s4
              #                    free s5
              #                     50   (nop) 
              #                     580  c_20_4 = i32 temp_2_arithop_33_0 
              #                    occupy s5 with temp_2_arithop_33_0
              #                    occupy s1 with c_20_4
    mv      s1, s5
              #                    free s5
              #                    occupy s5 with temp_2_arithop_33_0
              #                    store to temp_2_arithop_33_0 in mem offset legal
    sw      s5,72(sp)
              #                    release s5 with temp_2_arithop_33_0
              #                    free s1
              #                          jump label: while.head_32 
              #                    occupy s6 with temp_20_cmp_35_0
              #                    store to temp_20_cmp_35_0 in mem offset legal
    sb      s6,7(sp)
              #                    release s6 with temp_20_cmp_35_0
              #                    occupy s2 with temp_8_arithop_49_0
              #                    store to temp_8_arithop_49_0 in mem offset legal
    sw      s2,40(sp)
              #                    release s2 with temp_8_arithop_49_0
              #                    occupy s3 with temp_19_cmp_31_0
              #                    store to temp_19_cmp_31_0 in mem offset legal
    sb      s3,8(sp)
              #                    release s3 with temp_19_cmp_31_0
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a6:Freed { symidx: temp_7_arithop_49_0, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |     s1:Freed { symidx: c_20_4, tracked: true } |     s3:Freed { symidx: temp_19_cmp_31_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     108  label while.exit_32: 
.while.exit_32:
              #                     45   temp_1_arithop_29_0 = Add i32 b_20_3, 1_0 
              #                    occupy a5 with b_20_3
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s4 with temp_1_arithop_29_0
    ADDW    s4,a5,s2
              #                    free a5
              #                    free s2
              #                    free s4
              #                     46   (nop) 
              #                     581  b_20_3 = i32 temp_1_arithop_29_0 
              #                    occupy s4 with temp_1_arithop_29_0
              #                    occupy a5 with b_20_3
    mv      a5, s4
              #                    free s4
              #                    free a5
              #                          jump label: while.head_28 
              #                    occupy s1 with c_20_4
              #                    store to c_20_4 in mem offset legal
    sw      s1,188(sp)
              #                    release s1 with c_20_4
              #                    occupy a6 with temp_7_arithop_49_0
              #                    store to temp_7_arithop_49_0 in mem offset legal
    sw      a6,44(sp)
              #                    release a6 with temp_7_arithop_49_0
              #                    occupy s3 with temp_19_cmp_31_0
              #                    store to temp_19_cmp_31_0 in mem offset legal
    sb      s3,8(sp)
              #                    release s3 with temp_19_cmp_31_0
              #                    occupy a7 with temp_18_cmp_27_0
              #                    store to temp_18_cmp_27_0 in mem offset legal
    sb      a7,9(sp)
              #                    release a7 with temp_18_cmp_27_0
              #                    occupy s4 with temp_1_arithop_29_0
              #                    store to temp_1_arithop_29_0 in mem offset legal
    sw      s4,76(sp)
              #                    release s4 with temp_1_arithop_29_0
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |     a4:Freed { symidx: temp_17_cmp_23_0, tracked: true } |     a5:Freed { symidx: b_20_3, tracked: true } |     a7:Freed { symidx: temp_18_cmp_27_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     102  label while.exit_28: 
.while.exit_28:
              #                     41   temp_0_arithop_25_0 = Add i32 a_20_2, 1_0 
              #                    occupy a2 with a_20_2
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with temp_0_arithop_25_0
    ADDW    s1,a2,a6
              #                    free a2
              #                    free a6
              #                    free s1
              #                     42   (nop) 
              #                     582  a_20_2 = i32 temp_0_arithop_25_0 
              #                    occupy s1 with temp_0_arithop_25_0
              #                    occupy a2 with a_20_2
    mv      a2, s1
              #                    free s1
              #                    free a2
              #                          jump label: while.head_24 
              #                    occupy a4 with temp_17_cmp_23_0
              #                    store to temp_17_cmp_23_0 in mem offset legal
    sb      a4,10(sp)
              #                    release a4 with temp_17_cmp_23_0
              #                    occupy a5 with b_20_3
              #                    store to b_20_3 in mem offset legal
    sw      a5,204(sp)
              #                    release a5 with b_20_3
              #                    occupy s1 with temp_0_arithop_25_0
              #                    store to temp_0_arithop_25_0 in mem offset legal
    sw      s1,80(sp)
              #                    release s1 with temp_0_arithop_25_0
              #                    occupy a3 with temp_16_cmp_23_0
              #                    store to temp_16_cmp_23_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_16_cmp_23_0
              #                    occupy a7 with temp_18_cmp_27_0
              #                    store to temp_18_cmp_27_0 in mem offset legal
    sb      a7,9(sp)
              #                    release a7 with temp_18_cmp_27_0
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: x_18_0, tracked: true } |     a1:Freed { symidx: y_18_0, tracked: true } |     a2:Freed { symidx: a_20_2, tracked: true } |     a3:Freed { symidx: temp_16_cmp_23_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     91   label branch_short_circuit_c_false_315: 
.branch_short_circuit_c_false_315:
              #                     651  untrack a_20_2 
              #                    occupy a2 with a_20_2
              #                    release a2 with a_20_2
              #                     650  untrack y_18_0 
              #                    occupy a1 with y_18_0
              #                    release a1 with y_18_0
              #                     649  untrack x_18_0 
              #                    occupy a0 with x_18_0
              #                    release a0 with x_18_0
              #                     648  untrack a_20_2 
              #                     647  untrack y_18_0 
              #                     646  untrack x_18_0 
              #                     416  mu arr1_0_2:97 
              #                     97   ret 
              #                    load from ra_loop1_0 in mem
    ld      ra,240(sp)
              #                    load from s0_loop1_0 in mem
    ld      s0,232(sp)
    addi    sp,sp,248
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     21   Define loop2_0 "" -> loop2_ret_0 
    .globl loop2
    .type loop2,@function
loop2:
              #                    mem layout:|ra_loop2:8 at 208|s0_loop2:8 at 200|a _s59 _i0:4 at 196|a _s59 _i2:4 at 192|b _s59 _i0:4 at 188|b _s59 _i1:4 at 184|b _s59 _i3:4 at 180|c _s59 _i0:4 at 176|c _s59 _i1:4 at 172|c _s59 _i2:4 at 168|c _s59 _i4:4 at 164|d _s59 _i0:4 at 160|d _s59 _i1:4 at 156|d _s59 _i2:4 at 152|d _s59 _i3:4 at 148|d _s59 _i5:4 at 144|e _s59 _i0:4 at 140|e _s59 _i1:4 at 136|e _s59 _i2:4 at 132|e _s59 _i3:4 at 128|e _s59 _i4:4 at 124|e _s59 _i6:4 at 120|f _s59 _i0:4 at 116|f _s59 _i1:4 at 112|f _s59 _i2:4 at 108|f _s59 _i3:4 at 104|f _s59 _i4:4 at 100|f _s59 _i5:4 at 96|f _s59 _i7:4 at 92|g _s59 _i0:4 at 88|g _s59 _i1:4 at 84|g _s59 _i2:4 at 80|g _s59 _i3:4 at 76|g _s59 _i4:4 at 72|g _s59 _i5:4 at 68|g _s59 _i6:4 at 64|g _s59 _i8:4 at 60|temp_24_arithop _s64 _i0:4 at 56|temp_25_arithop _s68 _i0:4 at 52|temp_26_arithop _s72 _i0:4 at 48|temp_27_arithop _s76 _i0:4 at 44|temp_28_arithop _s80 _i0:4 at 40|temp_29_arithop _s84 _i0:4 at 36|none:4 at 32|temp_30_ptr_of_*arr2_0:8 at 24|temp_31_arithop _s88 _i0:4 at 20|temp_32_arithop _s88 _i0:4 at 16|temp_33_arithop _s88 _i0:4 at 12|temp_34_arithop _s88 _i0:4 at 8|temp_35_cmp _s62 _i0:1 at 7|temp_36_cmp _s66 _i0:1 at 6|temp_37_cmp _s70 _i0:1 at 5|temp_38_cmp _s74 _i0:1 at 4|temp_39_cmp _s78 _i0:1 at 3|temp_40_cmp _s82 _i0:1 at 2|temp_41_cmp _s86 _i0:1 at 1|none:1 at 0
    addi    sp,sp,-216
              #                    store to ra_loop2_0 in mem offset legal
    sd      ra,208(sp)
              #                    store to s0_loop2_0 in mem offset legal
    sd      s0,200(sp)
    addi    s0,sp,216
              #                     417  arr2_0_1 = chi arr2_0_0:21 
              #                     134  alloc i32 [a_59] 
              #                     136  alloc i32 [b_59] 
              #                     138  alloc i32 [c_59] 
              #                     140  alloc i32 [d_59] 
              #                     142  alloc i32 [e_59] 
              #                     144  alloc i32 [f_59] 
              #                     146  alloc i32 [g_59] 
              #                     150  alloc i32 [temp_24_arithop_64] 
              #                     154  alloc i32 [temp_25_arithop_68] 
              #                     158  alloc i32 [temp_26_arithop_72] 
              #                     162  alloc i32 [temp_27_arithop_76] 
              #                     166  alloc i32 [temp_28_arithop_80] 
              #                     170  alloc i32 [temp_29_arithop_84] 
              #                     173  alloc ptr->i32 [temp_30_ptr_of_*arr2_0_88] 
              #                     175  alloc i32 [temp_31_arithop_88] 
              #                     177  alloc i32 [temp_32_arithop_88] 
              #                     179  alloc i32 [temp_33_arithop_88] 
              #                     183  alloc i32 [temp_34_arithop_88] 
              #                     186  alloc i1 [temp_35_cmp_62] 
              #                     193  alloc i1 [temp_36_cmp_66] 
              #                     199  alloc i1 [temp_37_cmp_70] 
              #                     205  alloc i1 [temp_38_cmp_74] 
              #                     211  alloc i1 [temp_39_cmp_78] 
              #                     217  alloc i1 [temp_40_cmp_82] 
              #                     223  alloc i1 [temp_41_cmp_86] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     135   
              #                     137   
              #                     139   
              #                     141   
              #                     143   
              #                     145   
              #                     147   
              #                     148  (nop) 
              #                     583  a_59_2 = i32 0_0 
              #                    occupy a0 with a_59_2
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_63 
    j       .while.head_63
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     188  label while.head_63: 
.while.head_63:
              #                     187  temp_35_cmp_62_0 = icmp i32 Slt a_59_2, 10_0 
              #                    occupy a0 with a_59_2
              #                    occupy a1 with 10_0
    li      a1, 10
              #                    occupy a2 with temp_35_cmp_62_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     191  br i1 temp_35_cmp_62_0, label while.body_63, label while.exit_63 
              #                    occupy a2 with temp_35_cmp_62_0
              #                    free a2
              #                    occupy a2 with temp_35_cmp_62_0
    bnez    a2, .while.body_63
              #                    free a2
    j       .while.exit_63
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     189  label while.body_63: 
.while.body_63:
              #                     149  (nop) 
              #                     584  b_59_3 = i32 0_0 
              #                    occupy a1 with b_59_3
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_67 
    j       .while.head_67
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     195  label while.head_67: 
.while.head_67:
              #                     194  temp_36_cmp_66_0 = icmp i32 Slt b_59_3, 2_0 
              #                    occupy a1 with b_59_3
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy a4 with temp_36_cmp_66_0
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                     198  br i1 temp_36_cmp_66_0, label while.body_67, label while.exit_67 
              #                    occupy a4 with temp_36_cmp_66_0
              #                    free a4
              #                    occupy a4 with temp_36_cmp_66_0
    bnez    a4, .while.body_67
              #                    free a4
    j       .while.exit_67
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     196  label while.body_67: 
.while.body_67:
              #                     153  (nop) 
              #                     176  temp_31_arithop_88_0 = Add i32 a_59_2, b_59_3 
              #                    occupy a0 with a_59_2
              #                    occupy a1 with b_59_3
              #                    occupy a3 with temp_31_arithop_88_0
    ADDW    a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                     585  c_59_4 = i32 0_0 
              #                    occupy a5 with c_59_4
    li      a5, 0
              #                    free a5
              #                          jump label: while.head_71 
    j       .while.head_71
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     201  label while.head_71: 
.while.head_71:
              #                     200  temp_37_cmp_70_0 = icmp i32 Slt c_59_4, 3_0 
              #                    occupy a5 with c_59_4
              #                    occupy a6 with 3_0
    li      a6, 3
              #                    occupy a7 with temp_37_cmp_70_0
    slt     a7,a5,a6
              #                    free a5
              #                    free a6
              #                    free a7
              #                     204  br i1 temp_37_cmp_70_0, label while.body_71, label while.exit_71 
              #                    occupy a7 with temp_37_cmp_70_0
              #                    free a7
              #                    occupy a7 with temp_37_cmp_70_0
    bnez    a7, .while.body_71
              #                    free a7
    j       .while.exit_71
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     202  label while.body_71: 
.while.body_71:
              #                     157  (nop) 
              #                     586  d_59_5 = i32 0_0 
              #                    occupy a6 with d_59_5
    li      a6, 0
              #                    free a6
              #                          jump label: while.head_75 
    j       .while.head_75
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a6:Freed { symidx: d_59_5, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     207  label while.head_75: 
.while.head_75:
              #                     206  temp_38_cmp_74_0 = icmp i32 Slt d_59_5, 2_0 
              #                    occupy a6 with d_59_5
              #                    occupy s1 with 2_0
    li      s1, 2
              #                    occupy s2 with temp_38_cmp_74_0
    slt     s2,a6,s1
              #                    free a6
              #                    free s1
              #                    free s2
              #                     210  br i1 temp_38_cmp_74_0, label while.body_75, label while.exit_75 
              #                    occupy s2 with temp_38_cmp_74_0
              #                    free s2
              #                    occupy s2 with temp_38_cmp_74_0
    bnez    s2, .while.body_75
              #                    free s2
    j       .while.exit_75
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a6:Freed { symidx: d_59_5, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |     s2:Freed { symidx: temp_38_cmp_74_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     208  label while.body_75: 
.while.body_75:
              #                     161  (nop) 
              #                     178  temp_32_arithop_88_0 = Add i32 temp_31_arithop_88_0, d_59_5 
              #                    occupy a3 with temp_31_arithop_88_0
              #                    occupy a6 with d_59_5
              #                    occupy s1 with temp_32_arithop_88_0
    ADDW    s1,a3,a6
              #                    free a3
              #                    free a6
              #                    free s1
              #                     587  e_59_6 = i32 0_0 
              #                    occupy s3 with e_59_6
    li      s3, 0
              #                    free s3
              #                    occupy s3 with e_59_6
              #                    store to e_59_6 in mem offset legal
    sw      s3,120(sp)
              #                    release s3 with e_59_6
              #                          jump label: while.head_79 
    j       .while.head_79
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a6:Freed { symidx: d_59_5, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |     s1:Freed { symidx: temp_32_arithop_88_0, tracked: true } |     s2:Freed { symidx: temp_38_cmp_74_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     213  label while.head_79: 
.while.head_79:
              #                     212  temp_39_cmp_78_0 = icmp i32 Slt e_59_6, 4_0 
              #                    occupy s3 with e_59_6
              #                    load from e_59_6 in mem


    lw      s3,120(sp)
              #                    occupy s4 with 4_0
    li      s4, 4
              #                    occupy s5 with temp_39_cmp_78_0
    slt     s5,s3,s4
              #                    free s3
              #                    occupy s3 with e_59_6
              #                    store to e_59_6 in mem offset legal
    sw      s3,120(sp)
              #                    release s3 with e_59_6
              #                    free s4
              #                    free s5
              #                    occupy s5 with temp_39_cmp_78_0
              #                    store to temp_39_cmp_78_0 in mem offset legal
    sb      s5,3(sp)
              #                    release s5 with temp_39_cmp_78_0
              #                     216  br i1 temp_39_cmp_78_0, label while.body_79, label while.exit_79 
              #                    occupy s3 with temp_39_cmp_78_0
              #                    load from temp_39_cmp_78_0 in mem


    lb      s3,3(sp)
              #                    free s3
              #                    occupy s3 with temp_39_cmp_78_0
              #                    store to temp_39_cmp_78_0 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_39_cmp_78_0
              #                    occupy s3 with temp_39_cmp_78_0
              #                    load from temp_39_cmp_78_0 in mem


    lb      s3,3(sp)
    bnez    s3, .while.body_79
              #                    free s3
              #                    occupy s3 with temp_39_cmp_78_0
              #                    store to temp_39_cmp_78_0 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_39_cmp_78_0
    j       .while.exit_79
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a6:Freed { symidx: d_59_5, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |     s1:Freed { symidx: temp_32_arithop_88_0, tracked: true } |     s2:Freed { symidx: temp_38_cmp_74_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     214  label while.body_79: 
.while.body_79:
              #                     165  (nop) 
              #                     588  f_59_7 = i32 0_0 
              #                    occupy s3 with f_59_7
    li      s3, 0
              #                    free s3
              #                    occupy s3 with f_59_7
              #                    store to f_59_7 in mem offset legal
    sw      s3,92(sp)
              #                    release s3 with f_59_7
              #                          jump label: while.head_83 
    j       .while.head_83
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a6:Freed { symidx: d_59_5, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |     s1:Freed { symidx: temp_32_arithop_88_0, tracked: true } |     s2:Freed { symidx: temp_38_cmp_74_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     219  label while.head_83: 
.while.head_83:
              #                     218  temp_40_cmp_82_0 = icmp i32 Slt f_59_7, 8_0 
              #                    occupy s3 with f_59_7
              #                    load from f_59_7 in mem


    lw      s3,92(sp)
              #                    occupy s4 with 8_0
    li      s4, 8
              #                    occupy s5 with temp_40_cmp_82_0
    slt     s5,s3,s4
              #                    free s3
              #                    occupy s3 with f_59_7
              #                    store to f_59_7 in mem offset legal
    sw      s3,92(sp)
              #                    release s3 with f_59_7
              #                    free s4
              #                    free s5
              #                    occupy s5 with temp_40_cmp_82_0
              #                    store to temp_40_cmp_82_0 in mem offset legal
    sb      s5,2(sp)
              #                    release s5 with temp_40_cmp_82_0
              #                     222  br i1 temp_40_cmp_82_0, label while.body_83, label while.exit_83 
              #                    occupy s3 with temp_40_cmp_82_0
              #                    load from temp_40_cmp_82_0 in mem


    lb      s3,2(sp)
              #                    free s3
              #                    occupy s3 with temp_40_cmp_82_0
              #                    store to temp_40_cmp_82_0 in mem offset legal
    sb      s3,2(sp)
              #                    release s3 with temp_40_cmp_82_0
              #                    occupy s3 with temp_40_cmp_82_0
              #                    load from temp_40_cmp_82_0 in mem


    lb      s3,2(sp)
    bnez    s3, .while.body_83
              #                    free s3
              #                    occupy s3 with temp_40_cmp_82_0
              #                    store to temp_40_cmp_82_0 in mem offset legal
    sb      s3,2(sp)
              #                    release s3 with temp_40_cmp_82_0
    j       .while.exit_83
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a6:Freed { symidx: d_59_5, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |     s1:Freed { symidx: temp_32_arithop_88_0, tracked: true } |     s2:Freed { symidx: temp_38_cmp_74_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     220  label while.body_83: 
.while.body_83:
              #                     169  (nop) 
              #                     589  g_59_8 = i32 0_0 
              #                    occupy s3 with g_59_8
    li      s3, 0
              #                    free s3
              #                    occupy s3 with g_59_8
              #                    store to g_59_8 in mem offset legal
    sw      s3,60(sp)
              #                    release s3 with g_59_8
              #                          jump label: while.head_87 
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a6:Freed { symidx: d_59_5, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |     s1:Freed { symidx: temp_32_arithop_88_0, tracked: true } |     s2:Freed { symidx: temp_38_cmp_74_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     225  label while.head_87: 
.while.head_87:
              #                     224  temp_41_cmp_86_0 = icmp i32 Slt g_59_8, 7_0 
              #                    occupy s3 with g_59_8
              #                    load from g_59_8 in mem


    lw      s3,60(sp)
              #                    occupy s4 with 7_0
    li      s4, 7
              #                    occupy s5 with temp_41_cmp_86_0
    slt     s5,s3,s4
              #                    free s3
              #                    occupy s3 with g_59_8
              #                    store to g_59_8 in mem offset legal
    sw      s3,60(sp)
              #                    release s3 with g_59_8
              #                    free s4
              #                    free s5
              #                    occupy s5 with temp_41_cmp_86_0
              #                    store to temp_41_cmp_86_0 in mem offset legal
    sb      s5,1(sp)
              #                    release s5 with temp_41_cmp_86_0
              #                     228  br i1 temp_41_cmp_86_0, label while.body_87, label while.exit_87 
              #                    occupy s3 with temp_41_cmp_86_0
              #                    load from temp_41_cmp_86_0 in mem


    lb      s3,1(sp)
              #                    free s3
              #                    occupy s3 with temp_41_cmp_86_0
              #                    store to temp_41_cmp_86_0 in mem offset legal
    sb      s3,1(sp)
              #                    release s3 with temp_41_cmp_86_0
              #                    occupy s3 with temp_41_cmp_86_0
              #                    load from temp_41_cmp_86_0 in mem


    lb      s3,1(sp)
    bnez    s3, .while.body_87
              #                    free s3
              #                    occupy s3 with temp_41_cmp_86_0
              #                    store to temp_41_cmp_86_0 in mem offset legal
    sb      s3,1(sp)
              #                    release s3 with temp_41_cmp_86_0
    j       .while.exit_87
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a6:Freed { symidx: d_59_5, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |     s1:Freed { symidx: temp_32_arithop_88_0, tracked: true } |     s2:Freed { symidx: temp_38_cmp_74_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     226  label while.body_87: 
.while.body_87:
              #                     174  temp_30_ptr_of_*arr2_0_88 = GEP *arr2_0:ptr->Array:i32:[Some(2_0), Some(3_0), Some(2_0), Some(4_0), Some(8_0), Some(7_0)] [Some(a_59_2), Some(b_59_3), Some(c_59_4), Some(d_59_5), Some(e_59_6), Some(f_59_7), Some(g_59_8)] 
              #                    occupy s3 with temp_30_ptr_of_*arr2_0_88
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with 2688_0
    li      s5, 2688
              #                    occupy a0 with a_59_2
    mul     s4,s5,a0
              #                    free s5
              #                    free a0
              #                    occupy a0 with a_59_2
              #                    store to a_59_2 in mem offset legal
    sw      a0,192(sp)
              #                    release a0 with a_59_2
    add     s3,s3,s4
              #                    free s4
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 1344_0
    li      s4, 1344
              #                    occupy a1 with b_59_3
    mul     a0,s4,a1
              #                    free s4
              #                    free a1
              #                    occupy a1 with b_59_3
              #                    store to b_59_3 in mem offset legal
    sw      a1,180(sp)
              #                    release a1 with b_59_3
    add     s3,s3,a0
              #                    free a0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 448_0
    li      s4, 448
              #                    occupy a5 with c_59_4
    mul     a1,s4,a5
              #                    free s4
              #                    free a5
              #                    occupy a5 with c_59_4
              #                    store to c_59_4 in mem offset legal
    sw      a5,164(sp)
              #                    release a5 with c_59_4
    add     s3,s3,a1
              #                    free a1
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 224_0
    li      s4, 224
              #                    occupy a6 with d_59_5
    mul     a5,s4,a6
              #                    free s4
              #                    free a6
              #                    occupy a6 with d_59_5
              #                    store to d_59_5 in mem offset legal
    sw      a6,144(sp)
              #                    release a6 with d_59_5
    add     s3,s3,a5
              #                    free a5
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 56_0
    li      s4, 56
              #                    occupy s5 with e_59_6
              #                    load from e_59_6 in mem


    lw      s5,120(sp)
    mul     a6,s4,s5
              #                    free s4
              #                    free s5
              #                    occupy s5 with e_59_6
              #                    store to e_59_6 in mem offset legal
    sw      s5,120(sp)
              #                    release s5 with e_59_6
    add     s3,s3,a6
              #                    free a6
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 7_0
    li      s4, 7
              #                    occupy s5 with f_59_7
              #                    load from f_59_7 in mem


    lw      s5,92(sp)
    mul     a6,s4,s5
              #                    free s4
              #                    free s5
              #                    occupy s5 with f_59_7
              #                    store to f_59_7 in mem offset legal
    sw      s5,92(sp)
              #                    release s5 with f_59_7
    add     s3,s3,a6
              #                    free a6
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with g_59_8
              #                    load from g_59_8 in mem


    lw      s4,60(sp)
    mv      a6, s4
              #                    free s4
              #                    occupy s4 with g_59_8
              #                    store to g_59_8 in mem offset legal
    sw      s4,60(sp)
              #                    release s4 with g_59_8
    add     s3,s3,a6
              #                    free a6
    slli s3,s3,2
              #                    occupy a6 with *arr2_0
              #                       load label arr2 as ptr to reg
    la      a6, arr2
              #                    occupy reg a6 with *arr2_0
    add     s3,s3,a6
              #                    free a6
              #                    free s3
              #                     180  temp_33_arithop_88_0 = Add i32 temp_32_arithop_88_0, g_59_8 
              #                    occupy s1 with temp_32_arithop_88_0
              #                    occupy a6 with g_59_8
              #                    load from g_59_8 in mem


    lw      a6,60(sp)
              #                    occupy s4 with temp_33_arithop_88_0
    ADDW    s4,s1,a6
              #                    free s1
              #                    occupy s1 with temp_32_arithop_88_0
              #                    store to temp_32_arithop_88_0 in mem offset legal
    sw      s1,16(sp)
              #                    release s1 with temp_32_arithop_88_0
              #                    free a6
              #                    occupy a6 with g_59_8
              #                    store to g_59_8 in mem offset legal
    sw      a6,60(sp)
              #                    release a6 with g_59_8
              #                    free s4
              #                     181  store temp_33_arithop_88_0:i32 temp_30_ptr_of_*arr2_0_88:ptr->i32 
              #                    occupy s3 with temp_30_ptr_of_*arr2_0_88
              #                    occupy s4 with temp_33_arithop_88_0
    sw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                     182  arr2_0_9 = chi arr2_0_8:181 
              #                     184  temp_34_arithop_88_0 = Add i32 g_59_8, 1_0 
              #                    occupy a6 with g_59_8
              #                    load from g_59_8 in mem


    lw      a6,60(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s5 with temp_34_arithop_88_0
    ADDW    s5,a6,s1
              #                    free a6
              #                    occupy a6 with g_59_8
              #                    store to g_59_8 in mem offset legal
    sw      a6,60(sp)
              #                    release a6 with g_59_8
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_34_arithop_88_0
              #                    store to temp_34_arithop_88_0 in mem offset legal
    sw      s5,8(sp)
              #                    release s5 with temp_34_arithop_88_0
              #                     185  (nop) 
              #                     590  g_59_8 = i32 temp_34_arithop_88_0 
              #                    occupy a6 with temp_34_arithop_88_0
              #                    load from temp_34_arithop_88_0 in mem


    lw      a6,8(sp)
              #                    occupy s1 with g_59_8
    mv      s1, a6
              #                    free a6
              #                    occupy a6 with temp_34_arithop_88_0
              #                    store to temp_34_arithop_88_0 in mem offset legal
    sw      a6,8(sp)
              #                    release a6 with temp_34_arithop_88_0
              #                    free s1
              #                    occupy s1 with g_59_8
              #                    store to g_59_8 in mem offset legal
    sw      s1,60(sp)
              #                    release s1 with g_59_8
              #                          jump label: while.head_87 
              #                    occupy s1 with temp_32_arithop_88_0
              #                    load from temp_32_arithop_88_0 in mem


    lw      s1,16(sp)
              #                    occupy s4 with temp_33_arithop_88_0
              #                    store to temp_33_arithop_88_0 in mem offset legal
    sw      s4,12(sp)
              #                    release s4 with temp_33_arithop_88_0
              #                    occupy a0 with a_59_2
              #                    load from a_59_2 in mem


    lw      a0,192(sp)
              #                    occupy a5 with c_59_4
              #                    load from c_59_4 in mem


    lw      a5,164(sp)
              #                    occupy s3 with temp_30_ptr_of_*arr2_0_88
              #                    store to temp_30_ptr_of_*arr2_0_88 in mem offset legal
    sd      s3,24(sp)
              #                    release s3 with temp_30_ptr_of_*arr2_0_88
              #                    occupy a6 with d_59_5
              #                    load from d_59_5 in mem


    lw      a6,144(sp)
              #                    occupy a1 with b_59_3
              #                    load from b_59_3 in mem


    lw      a1,180(sp)
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a6:Freed { symidx: d_59_5, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |     s1:Freed { symidx: temp_32_arithop_88_0, tracked: true } |     s2:Freed { symidx: temp_38_cmp_74_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     227  label while.exit_87: 
.while.exit_87:
              #                     171  temp_29_arithop_84_0 = Add i32 f_59_7, 1_0 
              #                    occupy s3 with f_59_7
              #                    load from f_59_7 in mem


    lw      s3,92(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_29_arithop_84_0
    ADDW    s5,s3,s4
              #                    free s3
              #                    occupy s3 with f_59_7
              #                    store to f_59_7 in mem offset legal
    sw      s3,92(sp)
              #                    release s3 with f_59_7
              #                    free s4
              #                    free s5
              #                    occupy s5 with temp_29_arithop_84_0
              #                    store to temp_29_arithop_84_0 in mem offset legal
    sw      s5,36(sp)
              #                    release s5 with temp_29_arithop_84_0
              #                     172  (nop) 
              #                     591  f_59_7 = i32 temp_29_arithop_84_0 
              #                    occupy s3 with temp_29_arithop_84_0
              #                    load from temp_29_arithop_84_0 in mem


    lw      s3,36(sp)
              #                    occupy s4 with f_59_7
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_29_arithop_84_0
              #                    store to temp_29_arithop_84_0 in mem offset legal
    sw      s3,36(sp)
              #                    release s3 with temp_29_arithop_84_0
              #                    free s4
              #                    occupy s4 with f_59_7
              #                    store to f_59_7 in mem offset legal
    sw      s4,92(sp)
              #                    release s4 with f_59_7
              #                          jump label: while.head_83 
    j       .while.head_83
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a6:Freed { symidx: d_59_5, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |     s1:Freed { symidx: temp_32_arithop_88_0, tracked: true } |     s2:Freed { symidx: temp_38_cmp_74_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     221  label while.exit_83: 
.while.exit_83:
              #                     167  temp_28_arithop_80_0 = Add i32 e_59_6, 1_0 
              #                    occupy s3 with e_59_6
              #                    load from e_59_6 in mem


    lw      s3,120(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_28_arithop_80_0
    ADDW    s5,s3,s4
              #                    free s3
              #                    occupy s3 with e_59_6
              #                    store to e_59_6 in mem offset legal
    sw      s3,120(sp)
              #                    release s3 with e_59_6
              #                    free s4
              #                    free s5
              #                    occupy s5 with temp_28_arithop_80_0
              #                    store to temp_28_arithop_80_0 in mem offset legal
    sw      s5,40(sp)
              #                    release s5 with temp_28_arithop_80_0
              #                     168  (nop) 
              #                     592  e_59_6 = i32 temp_28_arithop_80_0 
              #                    occupy s3 with temp_28_arithop_80_0
              #                    load from temp_28_arithop_80_0 in mem


    lw      s3,40(sp)
              #                    occupy s4 with e_59_6
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_28_arithop_80_0
              #                    store to temp_28_arithop_80_0 in mem offset legal
    sw      s3,40(sp)
              #                    release s3 with temp_28_arithop_80_0
              #                    free s4
              #                    occupy s4 with e_59_6
              #                    store to e_59_6 in mem offset legal
    sw      s4,120(sp)
              #                    release s4 with e_59_6
              #                          jump label: while.head_79 
    j       .while.head_79
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a6:Freed { symidx: d_59_5, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |     s1:Freed { symidx: temp_32_arithop_88_0, tracked: true } |     s2:Freed { symidx: temp_38_cmp_74_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     215  label while.exit_79: 
.while.exit_79:
              #                     163  temp_27_arithop_76_0 = Add i32 d_59_5, 1_0 
              #                    occupy a6 with d_59_5
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_27_arithop_76_0
    ADDW    s4,a6,s3
              #                    free a6
              #                    occupy a6 with d_59_5
              #                    store to d_59_5 in mem offset legal
    sw      a6,144(sp)
              #                    release a6 with d_59_5
              #                    free s3
              #                    free s4
              #                     164  (nop) 
              #                     593  d_59_5 = i32 temp_27_arithop_76_0 
              #                    occupy s4 with temp_27_arithop_76_0
              #                    occupy a6 with d_59_5
    mv      a6, s4
              #                    free s4
              #                    occupy s4 with temp_27_arithop_76_0
              #                    store to temp_27_arithop_76_0 in mem offset legal
    sw      s4,44(sp)
              #                    release s4 with temp_27_arithop_76_0
              #                    free a6
              #                          jump label: while.head_75 
              #                    occupy s1 with temp_32_arithop_88_0
              #                    store to temp_32_arithop_88_0 in mem offset legal
    sw      s1,16(sp)
              #                    release s1 with temp_32_arithop_88_0
              #                    occupy s2 with temp_38_cmp_74_0
              #                    store to temp_38_cmp_74_0 in mem offset legal
    sb      s2,4(sp)
              #                    release s2 with temp_38_cmp_74_0
    j       .while.head_75
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a6:Freed { symidx: d_59_5, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |     s2:Freed { symidx: temp_38_cmp_74_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     209  label while.exit_75: 
.while.exit_75:
              #                     159  temp_26_arithop_72_0 = Add i32 c_59_4, 1_0 
              #                    occupy a5 with c_59_4
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with temp_26_arithop_72_0
    ADDW    s3,a5,s1
              #                    free a5
              #                    occupy a5 with c_59_4
              #                    store to c_59_4 in mem offset legal
    sw      a5,164(sp)
              #                    release a5 with c_59_4
              #                    free s1
              #                    free s3
              #                     160  (nop) 
              #                     594  c_59_4 = i32 temp_26_arithop_72_0 
              #                    occupy s3 with temp_26_arithop_72_0
              #                    occupy a5 with c_59_4
    mv      a5, s3
              #                    free s3
              #                    occupy s3 with temp_26_arithop_72_0
              #                    store to temp_26_arithop_72_0 in mem offset legal
    sw      s3,48(sp)
              #                    release s3 with temp_26_arithop_72_0
              #                    free a5
              #                          jump label: while.head_71 
              #                    occupy s2 with temp_38_cmp_74_0
              #                    store to temp_38_cmp_74_0 in mem offset legal
    sb      s2,4(sp)
              #                    release s2 with temp_38_cmp_74_0
              #                    occupy a6 with d_59_5
              #                    store to d_59_5 in mem offset legal
    sw      a6,144(sp)
              #                    release a6 with d_59_5
              #                    occupy a7 with temp_37_cmp_70_0
              #                    store to temp_37_cmp_70_0 in mem offset legal
    sb      a7,5(sp)
              #                    release a7 with temp_37_cmp_70_0
    j       .while.head_71
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a3:Freed { symidx: temp_31_arithop_88_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |     a5:Freed { symidx: c_59_4, tracked: true } |     a7:Freed { symidx: temp_37_cmp_70_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     203  label while.exit_71: 
.while.exit_71:
              #                     155  temp_25_arithop_68_0 = Add i32 b_59_3, 1_0 
              #                    occupy a1 with b_59_3
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with temp_25_arithop_68_0
    ADDW    s1,a1,a6
              #                    free a1
              #                    free a6
              #                    free s1
              #                     156  (nop) 
              #                     595  b_59_3 = i32 temp_25_arithop_68_0 
              #                    occupy s1 with temp_25_arithop_68_0
              #                    occupy a1 with b_59_3
    mv      a1, s1
              #                    free s1
              #                    free a1
              #                          jump label: while.head_67 
              #                    occupy s1 with temp_25_arithop_68_0
              #                    store to temp_25_arithop_68_0 in mem offset legal
    sw      s1,52(sp)
              #                    release s1 with temp_25_arithop_68_0
              #                    occupy a5 with c_59_4
              #                    store to c_59_4 in mem offset legal
    sw      a5,164(sp)
              #                    release a5 with c_59_4
              #                    occupy a3 with temp_31_arithop_88_0
              #                    store to temp_31_arithop_88_0 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_31_arithop_88_0
              #                    occupy a7 with temp_37_cmp_70_0
              #                    store to temp_37_cmp_70_0 in mem offset legal
    sb      a7,5(sp)
              #                    release a7 with temp_37_cmp_70_0
              #                    occupy a4 with temp_36_cmp_66_0
              #                    store to temp_36_cmp_66_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_36_cmp_66_0
    j       .while.head_67
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a1:Freed { symidx: b_59_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_66_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     197  label while.exit_67: 
.while.exit_67:
              #                     151  temp_24_arithop_64_0 = Add i32 a_59_2, 1_0 
              #                    occupy a0 with a_59_2
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_24_arithop_64_0
    ADDW    a5,a0,a3
              #                    free a0
              #                    free a3
              #                    free a5
              #                     152  (nop) 
              #                     596  a_59_2 = i32 temp_24_arithop_64_0 
              #                    occupy a5 with temp_24_arithop_64_0
              #                    occupy a0 with a_59_2
    mv      a0, a5
              #                    free a5
              #                    free a0
              #                          jump label: while.head_63 
              #                    occupy a5 with temp_24_arithop_64_0
              #                    store to temp_24_arithop_64_0 in mem offset legal
    sw      a5,56(sp)
              #                    release a5 with temp_24_arithop_64_0
              #                    occupy a1 with b_59_3
              #                    store to b_59_3 in mem offset legal
    sw      a1,180(sp)
              #                    release a1 with b_59_3
              #                    occupy a2 with temp_35_cmp_62_0
              #                    store to temp_35_cmp_62_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_35_cmp_62_0
              #                    occupy a4 with temp_36_cmp_66_0
              #                    store to temp_36_cmp_66_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_36_cmp_66_0
    j       .while.head_63
              #                    regtab     a0:Freed { symidx: a_59_2, tracked: true } |     a2:Freed { symidx: temp_35_cmp_62_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     190  label while.exit_63: 
.while.exit_63:
              #                     652  untrack a_59_2 
              #                    occupy a0 with a_59_2
              #                    release a0 with a_59_2
              #                     418  mu arr2_0_2:192 
              #                     192  ret 
              #                    load from ra_loop2_0 in mem
    ld      ra,208(sp)
              #                    load from s0_loop2_0 in mem
    ld      s0,200(sp)
    addi    sp,sp,216
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     22   Define loop3_0 "h_97_0,i_97_0,j_97_0,k_97_0,l_97_0,m_97_0,n_97_0," -> loop3_ret_0 
    .globl loop3
    .type loop3,@function
loop3:
              #                    mem layout:|ra_loop3:8 at 432|s0_loop3:8 at 424|h _s97 _i0:4 at 420|i _s97 _i0:4 at 416|j _s97 _i0:4 at 412|k _s97 _i0:4 at 408|l _s97 _i0:4 at 404|m _s97 _i0:4 at 400|n _s97 _i0:4 at 396|a _s99 _i0:4 at 392|a _s99 _i2:4 at 388|a _s99 _i4:4 at 384|b _s99 _i0:4 at 380|b _s99 _i1:4 at 376|b _s99 _i3:4 at 372|b _s99 _i5:4 at 368|b _s99 _i6:4 at 364|c _s99 _i0:4 at 360|c _s99 _i1:4 at 356|c _s99 _i2:4 at 352|c _s99 _i4:4 at 348|c _s99 _i6:4 at 344|c _s99 _i7:4 at 340|c _s99 _i8:4 at 336|d _s99 _i0:4 at 332|d _s99 _i1:4 at 328|d _s99 _i2:4 at 324|d _s99 _i3:4 at 320|d _s99 _i5:4 at 316|d _s99 _i7:4 at 312|d _s99 _i8:4 at 308|d _s99 _i9:4 at 304|d _s99 _i10:4 at 300|e _s99 _i0:4 at 296|e _s99 _i1:4 at 292|e _s99 _i2:4 at 288|e _s99 _i3:4 at 284|e _s99 _i4:4 at 280|e _s99 _i6:4 at 276|e _s99 _i8:4 at 272|e _s99 _i9:4 at 268|e _s99 _i10:4 at 264|e _s99 _i11:4 at 260|e _s99 _i12:4 at 256|f _s99 _i0:4 at 252|f _s99 _i1:4 at 248|f _s99 _i2:4 at 244|f _s99 _i3:4 at 240|f _s99 _i4:4 at 236|f _s99 _i5:4 at 232|f _s99 _i7:4 at 228|f _s99 _i9:4 at 224|f _s99 _i10:4 at 220|f _s99 _i11:4 at 216|f _s99 _i12:4 at 212|f _s99 _i13:4 at 208|f _s99 _i14:4 at 204|g _s99 _i0:4 at 200|g _s99 _i1:4 at 196|g _s99 _i2:4 at 192|g _s99 _i3:4 at 188|g _s99 _i4:4 at 184|g _s99 _i5:4 at 180|g _s99 _i6:4 at 176|g _s99 _i8:4 at 172|g _s99 _i10:4 at 168|g _s99 _i11:4 at 164|g _s99 _i12:4 at 160|g _s99 _i13:4 at 156|g _s99 _i14:4 at 152|g _s99 _i15:4 at 148|g _s99 _i16:4 at 144|ans _s99 _i1:4 at 140|ans _s99 _i2:4 at 136|ans _s99 _i3:4 at 132|ans _s99 _i4:4 at 128|ans _s99 _i5:4 at 124|ans _s99 _i6:4 at 120|ans _s99 _i7:4 at 116|ans _s99 _i9:4 at 112|ans _s99 _i10:4 at 108|ans _s99 _i11:4 at 104|ans _s99 _i12:4 at 100|ans _s99 _i13:4 at 96|ans _s99 _i14:4 at 92|ans _s99 _i15:4 at 88|temp_42_arithop _s105 _i0:4 at 84|temp_43_arithop _s109 _i0:4 at 80|temp_44_arithop _s113 _i0:4 at 76|temp_45_arithop _s117 _i0:4 at 72|temp_46_arithop _s121 _i0:4 at 68|temp_47_arithop _s125 _i0:4 at 64|temp_48_arithop _s129 _i0:4 at 60|none:4 at 56|temp_49_ptr_of_*arr1_0:8 at 48|temp_50_ele_of_*arr1_0 _s129 _i0:4 at 44|temp_51_arithop _s129 _i0:4 at 40|temp_52_ptr_of_*arr2_0:8 at 32|temp_53_ele_of_*arr2_0 _s129 _i0:4 at 28|temp_54_arithop _s129 _i0:4 at 24|temp_55_arithop _s129 _i0:4 at 20|temp_56_cmp _s103 _i0:1 at 19|temp_57_cmp _s107 _i0:1 at 18|temp_58_cmp _s156 _i0:1 at 17|temp_59_cmp _s111 _i0:1 at 16|temp_60_cmp _s152 _i0:1 at 15|temp_61_cmp _s115 _i0:1 at 14|temp_62_cmp _s148 _i0:1 at 13|temp_63_cmp _s119 _i0:1 at 12|temp_64_cmp _s144 _i0:1 at 11|temp_65_cmp _s123 _i0:1 at 10|temp_66_cmp _s140 _i0:1 at 9|temp_67_cmp _s127 _i0:1 at 8|temp_68_cmp _s136 _i0:1 at 7|temp_69_cmp _s132 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-440
              #                    store to ra_loop3_0 in mem offset legal
    sd      ra,432(sp)
              #                    store to s0_loop3_0 in mem offset legal
    sd      s0,424(sp)
    addi    s0,sp,440
              #                     229  alloc i32 [a_99] 
              #                     231  alloc i32 [b_99] 
              #                     233  alloc i32 [c_99] 
              #                     235  alloc i32 [d_99] 
              #                     237  alloc i32 [e_99] 
              #                     239  alloc i32 [f_99] 
              #                     241  alloc i32 [g_99] 
              #                     244  alloc i32 [ans_99] 
              #                     249  alloc i32 [temp_42_arithop_105] 
              #                     253  alloc i32 [temp_43_arithop_109] 
              #                     257  alloc i32 [temp_44_arithop_113] 
              #                     261  alloc i32 [temp_45_arithop_117] 
              #                     265  alloc i32 [temp_46_arithop_121] 
              #                     269  alloc i32 [temp_47_arithop_125] 
              #                     272  alloc i32 [temp_48_arithop_129] 
              #                     274  alloc ptr->i32 [temp_49_ptr_of_*arr1_0_129] 
              #                     276  alloc i32 [temp_50_ele_of_*arr1_0_129] 
              #                     279  alloc i32 [temp_51_arithop_129] 
              #                     281  alloc ptr->i32 [temp_52_ptr_of_*arr2_0_129] 
              #                     283  alloc i32 [temp_53_ele_of_*arr2_0_129] 
              #                     286  alloc i32 [temp_54_arithop_129] 
              #                     289  alloc i32 [temp_55_arithop_129] 
              #                     292  alloc i1 [temp_56_cmp_103] 
              #                     300  alloc i1 [temp_57_cmp_107] 
              #                     306  alloc i1 [temp_58_cmp_156] 
              #                     311  alloc i1 [temp_59_cmp_111] 
              #                     317  alloc i1 [temp_60_cmp_152] 
              #                     322  alloc i1 [temp_61_cmp_115] 
              #                     328  alloc i1 [temp_62_cmp_148] 
              #                     333  alloc i1 [temp_63_cmp_119] 
              #                     339  alloc i1 [temp_64_cmp_144] 
              #                     344  alloc i1 [temp_65_cmp_123] 
              #                     350  alloc i1 [temp_66_cmp_140] 
              #                     355  alloc i1 [temp_67_cmp_127] 
              #                     361  alloc i1 [temp_68_cmp_136] 
              #                     366  alloc i1 [temp_69_cmp_132] 
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     230   
              #                     232   
              #                     234   
              #                     236   
              #                     238   
              #                     240   
              #                     242   
              #                     243  (nop) 
              #                     245  (nop) 
              #                     604  a_99_2 = i32 0_0 
              #                    occupy a7 with a_99_2
    li      a7, 0
              #                    free a7
              #                     605  ans_99_1 = i32 0_0 
              #                    occupy s1 with ans_99_1
    li      s1, 0
              #                    free s1
              #                          jump label: while.head_104 
    j       .while.head_104
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     294  label while.head_104: 
.while.head_104:
              #                     293  temp_56_cmp_103_0 = icmp i32 Slt a_99_2, 10_0 
              #                    occupy a7 with a_99_2
              #                    occupy s2 with 10_0
    li      s2, 10
              #                    occupy s3 with temp_56_cmp_103_0
    slt     s3,a7,s2
              #                    free a7
              #                    free s2
              #                    free s3
              #                     297  br i1 temp_56_cmp_103_0, label while.body_104, label UP_100_0 
              #                    occupy s3 with temp_56_cmp_103_0
              #                    free s3
              #                    occupy s3 with temp_56_cmp_103_0
    bnez    s3, .while.body_104
              #                    free s3
    j       .UP_100_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     295  label while.body_104: 
.while.body_104:
              #                     248  (nop) 
              #                     606  ans_99_2 = i32 ans_99_1 
              #                    occupy s1 with ans_99_1
              #                    occupy s2 with ans_99_2
    mv      s2, s1
              #                    free s1
              #                    free s2
              #                     607  b_99_3 = i32 0_0 
              #                    occupy s4 with b_99_3
    li      s4, 0
              #                    free s4
              #                          jump label: while.head_108 
    j       .while.head_108
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: ans_99_2, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: b_99_3, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     302  label while.head_108: 
.while.head_108:
              #                     301  temp_57_cmp_107_0 = icmp i32 Slt b_99_3, 100_0 
              #                    occupy s4 with b_99_3
              #                    occupy s5 with 100_0
    li      s5, 100
              #                    occupy s6 with temp_57_cmp_107_0
    slt     s6,s4,s5
              #                    free s4
              #                    occupy s4 with b_99_3
              #                    store to b_99_3 in mem offset legal
    sw      s4,372(sp)
              #                    release s4 with b_99_3
              #                    free s5
              #                    free s6
              #                     305  br i1 temp_57_cmp_107_0, label while.body_108, label UP_99_0 
              #                    occupy s6 with temp_57_cmp_107_0
              #                    free s6
              #                    occupy s6 with temp_57_cmp_107_0
    bnez    s6, .while.body_108
              #                    free s6
    j       .UP_99_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: ans_99_2, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     303  label while.body_108: 
.while.body_108:
              #                     252  (nop) 
              #                     608  ans_99_3 = i32 ans_99_2 
              #                    occupy s2 with ans_99_2
              #                    occupy s4 with ans_99_3
    mv      s4, s2
              #                    free s2
              #                    occupy s2 with ans_99_2
              #                    store to ans_99_2 in mem offset legal
    sw      s2,136(sp)
              #                    release s2 with ans_99_2
              #                    free s4
              #                     609  c_99_4 = i32 0_0 
              #                    occupy s2 with c_99_4
    li      s2, 0
              #                    free s2
              #                    occupy s2 with c_99_4
              #                    store to c_99_4 in mem offset legal
    sw      s2,348(sp)
              #                    release s2 with c_99_4
              #                          jump label: while.head_112 
    j       .while.head_112
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: ans_99_3, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     313  label while.head_112: 
.while.head_112:
              #                     312  temp_59_cmp_111_0 = icmp i32 Slt c_99_4, 1000_0 
              #                    occupy s2 with c_99_4
              #                    load from c_99_4 in mem


    lw      s2,348(sp)
              #                    occupy s5 with 1000_0
    li      s5, 1000
              #                    occupy s7 with temp_59_cmp_111_0
    slt     s7,s2,s5
              #                    free s2
              #                    occupy s2 with c_99_4
              #                    store to c_99_4 in mem offset legal
    sw      s2,348(sp)
              #                    release s2 with c_99_4
              #                    free s5
              #                    free s7
              #                    occupy s7 with temp_59_cmp_111_0
              #                    store to temp_59_cmp_111_0 in mem offset legal
    sb      s7,16(sp)
              #                    release s7 with temp_59_cmp_111_0
              #                     316  br i1 temp_59_cmp_111_0, label while.body_112, label UP_98_0 
              #                    occupy s2 with temp_59_cmp_111_0
              #                    load from temp_59_cmp_111_0 in mem


    lb      s2,16(sp)
              #                    free s2
              #                    occupy s2 with temp_59_cmp_111_0
              #                    store to temp_59_cmp_111_0 in mem offset legal
    sb      s2,16(sp)
              #                    release s2 with temp_59_cmp_111_0
              #                    occupy s2 with temp_59_cmp_111_0
              #                    load from temp_59_cmp_111_0 in mem


    lb      s2,16(sp)
    bnez    s2, .while.body_112
              #                    free s2
              #                    occupy s2 with temp_59_cmp_111_0
              #                    store to temp_59_cmp_111_0 in mem offset legal
    sb      s2,16(sp)
              #                    release s2 with temp_59_cmp_111_0
    j       .UP_98_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: ans_99_3, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     314  label while.body_112: 
.while.body_112:
              #                     256  (nop) 
              #                     610  ans_99_4 = i32 ans_99_3 
              #                    occupy s4 with ans_99_3
              #                    occupy s2 with ans_99_4
    mv      s2, s4
              #                    free s4
              #                    occupy s4 with ans_99_3
              #                    store to ans_99_3 in mem offset legal
    sw      s4,132(sp)
              #                    release s4 with ans_99_3
              #                    free s2
              #                     611  d_99_5 = i32 0_0 
              #                    occupy s4 with d_99_5
    li      s4, 0
              #                    free s4
              #                    occupy s4 with d_99_5
              #                    store to d_99_5 in mem offset legal
    sw      s4,316(sp)
              #                    release s4 with d_99_5
              #                          jump label: while.head_116 
    j       .while.head_116
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: ans_99_4, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     324  label while.head_116: 
.while.head_116:
              #                     323  temp_61_cmp_115_0 = icmp i32 Slt d_99_5, 10000_0 
              #                    occupy s4 with d_99_5
              #                    load from d_99_5 in mem


    lw      s4,316(sp)
              #                    occupy s5 with 10000_0
    li      s5, 10000
              #                    occupy s7 with temp_61_cmp_115_0
    slt     s7,s4,s5
              #                    free s4
              #                    occupy s4 with d_99_5
              #                    store to d_99_5 in mem offset legal
    sw      s4,316(sp)
              #                    release s4 with d_99_5
              #                    free s5
              #                    free s7
              #                    occupy s7 with temp_61_cmp_115_0
              #                    store to temp_61_cmp_115_0 in mem offset legal
    sb      s7,14(sp)
              #                    release s7 with temp_61_cmp_115_0
              #                     327  br i1 temp_61_cmp_115_0, label while.body_116, label UP_97_0 
              #                    occupy s4 with temp_61_cmp_115_0
              #                    load from temp_61_cmp_115_0 in mem


    lb      s4,14(sp)
              #                    free s4
              #                    occupy s4 with temp_61_cmp_115_0
              #                    store to temp_61_cmp_115_0 in mem offset legal
    sb      s4,14(sp)
              #                    release s4 with temp_61_cmp_115_0
              #                    occupy s4 with temp_61_cmp_115_0
              #                    load from temp_61_cmp_115_0 in mem


    lb      s4,14(sp)
    bnez    s4, .while.body_116
              #                    free s4
              #                    occupy s4 with temp_61_cmp_115_0
              #                    store to temp_61_cmp_115_0 in mem offset legal
    sb      s4,14(sp)
              #                    release s4 with temp_61_cmp_115_0
    j       .UP_97_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: ans_99_4, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     325  label while.body_116: 
.while.body_116:
              #                     260  (nop) 
              #                     612  ans_99_5 = i32 ans_99_4 
              #                    occupy s2 with ans_99_4
              #                    occupy s4 with ans_99_5
    mv      s4, s2
              #                    free s2
              #                    occupy s2 with ans_99_4
              #                    store to ans_99_4 in mem offset legal
    sw      s2,128(sp)
              #                    release s2 with ans_99_4
              #                    free s4
              #                     613  e_99_6 = i32 0_0 
              #                    occupy s2 with e_99_6
    li      s2, 0
              #                    free s2
              #                    occupy s2 with e_99_6
              #                    store to e_99_6 in mem offset legal
    sw      s2,276(sp)
              #                    release s2 with e_99_6
              #                          jump label: while.head_120 
    j       .while.head_120
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: ans_99_5, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     335  label while.head_120: 
.while.head_120:
              #                     334  temp_63_cmp_119_0 = icmp i32 Slt e_99_6, 100000_0 
              #                    occupy s2 with e_99_6
              #                    load from e_99_6 in mem


    lw      s2,276(sp)
              #                    occupy s5 with 100000_0
    li      s5, 100000
              #                    occupy s7 with temp_63_cmp_119_0
    slt     s7,s2,s5
              #                    free s2
              #                    occupy s2 with e_99_6
              #                    store to e_99_6 in mem offset legal
    sw      s2,276(sp)
              #                    release s2 with e_99_6
              #                    free s5
              #                    free s7
              #                    occupy s7 with temp_63_cmp_119_0
              #                    store to temp_63_cmp_119_0 in mem offset legal
    sb      s7,12(sp)
              #                    release s7 with temp_63_cmp_119_0
              #                     338  br i1 temp_63_cmp_119_0, label while.body_120, label UP_96_0 
              #                    occupy s2 with temp_63_cmp_119_0
              #                    load from temp_63_cmp_119_0 in mem


    lb      s2,12(sp)
              #                    free s2
              #                    occupy s2 with temp_63_cmp_119_0
              #                    store to temp_63_cmp_119_0 in mem offset legal
    sb      s2,12(sp)
              #                    release s2 with temp_63_cmp_119_0
              #                    occupy s2 with temp_63_cmp_119_0
              #                    load from temp_63_cmp_119_0 in mem


    lb      s2,12(sp)
    bnez    s2, .while.body_120
              #                    free s2
              #                    occupy s2 with temp_63_cmp_119_0
              #                    store to temp_63_cmp_119_0 in mem offset legal
    sb      s2,12(sp)
              #                    release s2 with temp_63_cmp_119_0
    j       .UP_96_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: ans_99_5, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     336  label while.body_120: 
.while.body_120:
              #                     264  (nop) 
              #                     614  ans_99_6 = i32 ans_99_5 
              #                    occupy s4 with ans_99_5
              #                    occupy s2 with ans_99_6
    mv      s2, s4
              #                    free s4
              #                    occupy s4 with ans_99_5
              #                    store to ans_99_5 in mem offset legal
    sw      s4,124(sp)
              #                    release s4 with ans_99_5
              #                    free s2
              #                     615  f_99_7 = i32 0_0 
              #                    occupy s4 with f_99_7
    li      s4, 0
              #                    free s4
              #                    occupy s4 with f_99_7
              #                    store to f_99_7 in mem offset legal
    sw      s4,228(sp)
              #                    release s4 with f_99_7
              #                          jump label: while.head_124 
    j       .while.head_124
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: ans_99_6, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     346  label while.head_124: 
.while.head_124:
              #                     345  temp_65_cmp_123_0 = icmp i32 Slt f_99_7, 1000000_0 
              #                    occupy s4 with f_99_7
              #                    load from f_99_7 in mem


    lw      s4,228(sp)
              #                    occupy s5 with 1000000_0
    li      s5, 1000000
              #                    occupy s7 with temp_65_cmp_123_0
    slt     s7,s4,s5
              #                    free s4
              #                    occupy s4 with f_99_7
              #                    store to f_99_7 in mem offset legal
    sw      s4,228(sp)
              #                    release s4 with f_99_7
              #                    free s5
              #                    free s7
              #                    occupy s7 with temp_65_cmp_123_0
              #                    store to temp_65_cmp_123_0 in mem offset legal
    sb      s7,10(sp)
              #                    release s7 with temp_65_cmp_123_0
              #                     349  br i1 temp_65_cmp_123_0, label while.body_124, label UP_48_0 
              #                    occupy s4 with temp_65_cmp_123_0
              #                    load from temp_65_cmp_123_0 in mem


    lb      s4,10(sp)
              #                    free s4
              #                    occupy s4 with temp_65_cmp_123_0
              #                    store to temp_65_cmp_123_0 in mem offset legal
    sb      s4,10(sp)
              #                    release s4 with temp_65_cmp_123_0
              #                    occupy s4 with temp_65_cmp_123_0
              #                    load from temp_65_cmp_123_0 in mem


    lb      s4,10(sp)
    bnez    s4, .while.body_124
              #                    free s4
              #                    occupy s4 with temp_65_cmp_123_0
              #                    store to temp_65_cmp_123_0 in mem offset legal
    sb      s4,10(sp)
              #                    release s4 with temp_65_cmp_123_0
    j       .UP_48_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: ans_99_6, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     347  label while.body_124: 
.while.body_124:
              #                     268  (nop) 
              #                     616  ans_99_7 = i32 ans_99_6 
              #                    occupy s2 with ans_99_6
              #                    occupy s4 with ans_99_7
    mv      s4, s2
              #                    free s2
              #                    occupy s2 with ans_99_6
              #                    store to ans_99_6 in mem offset legal
    sw      s2,120(sp)
              #                    release s2 with ans_99_6
              #                    free s4
              #                     617  g_99_8 = i32 0_0 
              #                    occupy s2 with g_99_8
    li      s2, 0
              #                    free s2
              #                    occupy s2 with g_99_8
              #                    store to g_99_8 in mem offset legal
    sw      s2,172(sp)
              #                    release s2 with g_99_8
              #                          jump label: while.head_128 
    j       .while.head_128
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: ans_99_7, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     357  label while.head_128: 
.while.head_128:
              #                     356  temp_67_cmp_127_0 = icmp i32 Slt g_99_8, 10000000_0 
              #                    occupy s2 with g_99_8
              #                    load from g_99_8 in mem


    lw      s2,172(sp)
              #                    occupy s5 with 10000000_0
    li      s5, 10000000
              #                    occupy s7 with temp_67_cmp_127_0
    slt     s7,s2,s5
              #                    free s2
              #                    occupy s2 with g_99_8
              #                    store to g_99_8 in mem offset legal
    sw      s2,172(sp)
              #                    release s2 with g_99_8
              #                    free s5
              #                    free s7
              #                    occupy s7 with temp_67_cmp_127_0
              #                    store to temp_67_cmp_127_0 in mem offset legal
    sb      s7,8(sp)
              #                    release s7 with temp_67_cmp_127_0
              #                     360  br i1 temp_67_cmp_127_0, label while.body_128, label UP_93_0 
              #                    occupy s2 with temp_67_cmp_127_0
              #                    load from temp_67_cmp_127_0 in mem


    lb      s2,8(sp)
              #                    free s2
              #                    occupy s2 with temp_67_cmp_127_0
              #                    store to temp_67_cmp_127_0 in mem offset legal
    sb      s2,8(sp)
              #                    release s2 with temp_67_cmp_127_0
              #                    occupy s2 with temp_67_cmp_127_0
              #                    load from temp_67_cmp_127_0 in mem


    lb      s2,8(sp)
    bnez    s2, .while.body_128
              #                    free s2
              #                    occupy s2 with temp_67_cmp_127_0
              #                    store to temp_67_cmp_127_0 in mem offset legal
    sb      s2,8(sp)
              #                    release s2 with temp_67_cmp_127_0
    j       .UP_93_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: ans_99_7, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     358  label while.body_128: 
.while.body_128:
              #                     273  temp_48_arithop_129_0 = Mod i32 ans_99_7, 817_0 
              #                    occupy s4 with ans_99_7
              #                    occupy s2 with 817_0
    li      s2, 817
              #                    occupy s5 with temp_48_arithop_129_0
    rem     s5,s4,s2
              #                    free s4
              #                    occupy s4 with ans_99_7
              #                    store to ans_99_7 in mem offset legal
    sw      s4,116(sp)
              #                    release s4 with ans_99_7
              #                    free s2
              #                    free s5
              #                     275  temp_49_ptr_of_*arr1_0_129 = GEP *arr1_0:Array:i32:[None, Some(2_0), Some(3_0), Some(4_0), Some(5_0), Some(6_0), Some(2_0)] [Some(a_99_2), Some(b_99_3), Some(c_99_4), Some(d_99_5), Some(e_99_6), Some(f_99_7), Some(g_99_8)] 
              #                    occupy s2 with temp_49_ptr_of_*arr1_0_129
    li      s2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 1440_0
    li      s7, 1440
              #                    occupy a7 with a_99_2
    mul     s4,s7,a7
              #                    free s7
              #                    free a7
              #                    occupy a7 with a_99_2
              #                    store to a_99_2 in mem offset legal
    sw      a7,388(sp)
              #                    release a7 with a_99_2
    add     s2,s2,s4
              #                    free s4
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 720_0
    li      s4, 720
              #                    occupy s7 with b_99_3
              #                    load from b_99_3 in mem


    lw      s7,372(sp)
    mul     a7,s4,s7
              #                    free s4
              #                    free s7
              #                    occupy s7 with b_99_3
              #                    store to b_99_3 in mem offset legal
    sw      s7,372(sp)
              #                    release s7 with b_99_3
    add     s2,s2,a7
              #                    free a7
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 240_0
    li      s4, 240
              #                    occupy s7 with c_99_4
              #                    load from c_99_4 in mem


    lw      s7,348(sp)
    mul     a7,s4,s7
              #                    free s4
              #                    free s7
              #                    occupy s7 with c_99_4
              #                    store to c_99_4 in mem offset legal
    sw      s7,348(sp)
              #                    release s7 with c_99_4
    add     s2,s2,a7
              #                    free a7
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 60_0
    li      s4, 60
              #                    occupy s7 with d_99_5
              #                    load from d_99_5 in mem


    lw      s7,316(sp)
    mul     a7,s4,s7
              #                    free s4
              #                    free s7
              #                    occupy s7 with d_99_5
              #                    store to d_99_5 in mem offset legal
    sw      s7,316(sp)
              #                    release s7 with d_99_5
    add     s2,s2,a7
              #                    free a7
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with 12_0
    li      s4, 12
              #                    occupy s7 with e_99_6
              #                    load from e_99_6 in mem


    lw      s7,276(sp)
    mul     a7,s4,s7
              #                    free s4
              #                    free s7
              #                    occupy s7 with e_99_6
              #                    store to e_99_6 in mem offset legal
    sw      s7,276(sp)
              #                    release s7 with e_99_6
    add     s2,s2,a7
              #                    free a7
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with f_99_7
              #                    load from f_99_7 in mem


    lw      s4,228(sp)
    slli a7,s4,1
              #                    free s4
              #                    occupy s4 with f_99_7
              #                    store to f_99_7 in mem offset legal
    sw      s4,228(sp)
              #                    release s4 with f_99_7
    add     s2,s2,a7
              #                    free a7
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with g_99_8
              #                    load from g_99_8 in mem


    lw      s4,172(sp)
    mv      a7, s4
              #                    free s4
              #                    occupy s4 with g_99_8
              #                    store to g_99_8 in mem offset legal
    sw      s4,172(sp)
              #                    release s4 with g_99_8
    add     s2,s2,a7
              #                    free a7
    slli s2,s2,2
              #                    occupy a7 with *arr1_0
              #                       load label arr1 as ptr to reg
    la      a7, arr1
              #                    occupy reg a7 with *arr1_0
    add     s2,s2,a7
              #                    free a7
              #                    free s2
              #                     277  temp_50_ele_of_*arr1_0_129_0 = load temp_49_ptr_of_*arr1_0_129:ptr->i32 
              #                    occupy s2 with temp_49_ptr_of_*arr1_0_129
              #                    occupy a7 with temp_50_ele_of_*arr1_0_129_0
    lw      a7,0(s2)
              #                    free a7
              #                    occupy a7 with temp_50_ele_of_*arr1_0_129_0
              #                    store to temp_50_ele_of_*arr1_0_129_0 in mem offset legal
    sw      a7,44(sp)
              #                    release a7 with temp_50_ele_of_*arr1_0_129_0
              #                    free s2
              #                     278  mu arr1_0_0:277 
              #                     280  temp_51_arithop_129_0 = Add i32 temp_48_arithop_129_0, temp_50_ele_of_*arr1_0_129_0 
              #                    occupy s5 with temp_48_arithop_129_0
              #                    occupy a7 with temp_50_ele_of_*arr1_0_129_0
              #                    load from temp_50_ele_of_*arr1_0_129_0 in mem


    lw      a7,44(sp)
              #                    occupy s4 with temp_51_arithop_129_0
    ADDW    s4,s5,a7
              #                    free s5
              #                    occupy s5 with temp_48_arithop_129_0
              #                    store to temp_48_arithop_129_0 in mem offset legal
    sw      s5,60(sp)
              #                    release s5 with temp_48_arithop_129_0
              #                    free a7
              #                    occupy a7 with temp_50_ele_of_*arr1_0_129_0
              #                    store to temp_50_ele_of_*arr1_0_129_0 in mem offset legal
    sw      a7,44(sp)
              #                    release a7 with temp_50_ele_of_*arr1_0_129_0
              #                    free s4
              #                     282  temp_52_ptr_of_*arr2_0_129 = GEP *arr2_0:Array:i32:[None, Some(2_0), Some(3_0), Some(2_0), Some(4_0), Some(8_0), Some(7_0)] [Some(a_99_2), Some(b_99_3), Some(c_99_4), Some(d_99_5), Some(e_99_6), Some(f_99_7), Some(g_99_8)] 
              #                    occupy a7 with temp_52_ptr_of_*arr2_0_129
    li      a7, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 2688_0
    li      s7, 2688
              #                    occupy s8 with a_99_2
              #                    load from a_99_2 in mem


    lw      s8,388(sp)
    mul     s5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with a_99_2
              #                    store to a_99_2 in mem offset legal
    sw      s8,388(sp)
              #                    release s8 with a_99_2
    add     a7,a7,s5
              #                    free s5
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 1344_0
    li      s7, 1344
              #                    occupy s8 with b_99_3
              #                    load from b_99_3 in mem


    lw      s8,372(sp)
    mul     s5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with b_99_3
              #                    store to b_99_3 in mem offset legal
    sw      s8,372(sp)
              #                    release s8 with b_99_3
    add     a7,a7,s5
              #                    free s5
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 448_0
    li      s7, 448
              #                    occupy s8 with c_99_4
              #                    load from c_99_4 in mem


    lw      s8,348(sp)
    mul     s5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with c_99_4
              #                    store to c_99_4 in mem offset legal
    sw      s8,348(sp)
              #                    release s8 with c_99_4
    add     a7,a7,s5
              #                    free s5
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 224_0
    li      s7, 224
              #                    occupy s8 with d_99_5
              #                    load from d_99_5 in mem


    lw      s8,316(sp)
    mul     s5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with d_99_5
              #                    store to d_99_5 in mem offset legal
    sw      s8,316(sp)
              #                    release s8 with d_99_5
    add     a7,a7,s5
              #                    free s5
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 56_0
    li      s7, 56
              #                    occupy s8 with e_99_6
              #                    load from e_99_6 in mem


    lw      s8,276(sp)
    mul     s5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with e_99_6
              #                    store to e_99_6 in mem offset legal
    sw      s8,276(sp)
              #                    release s8 with e_99_6
    add     a7,a7,s5
              #                    free s5
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 7_0
    li      s7, 7
              #                    occupy s8 with f_99_7
              #                    load from f_99_7 in mem


    lw      s8,228(sp)
    mul     s5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with f_99_7
              #                    store to f_99_7 in mem offset legal
    sw      s8,228(sp)
              #                    release s8 with f_99_7
    add     a7,a7,s5
              #                    free s5
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with g_99_8
              #                    load from g_99_8 in mem


    lw      s7,172(sp)
    mv      s5, s7
              #                    free s7
              #                    occupy s7 with g_99_8
              #                    store to g_99_8 in mem offset legal
    sw      s7,172(sp)
              #                    release s7 with g_99_8
    add     a7,a7,s5
              #                    free s5
    slli a7,a7,2
              #                    occupy s5 with *arr2_0
              #                       load label arr2 as ptr to reg
    la      s5, arr2
              #                    occupy reg s5 with *arr2_0
    add     a7,a7,s5
              #                    free s5
              #                    free a7
              #                    occupy a7 with temp_52_ptr_of_*arr2_0_129
              #                    store to temp_52_ptr_of_*arr2_0_129 in mem offset legal
    sd      a7,32(sp)
              #                    release a7 with temp_52_ptr_of_*arr2_0_129
              #                     284  temp_53_ele_of_*arr2_0_129_0 = load temp_52_ptr_of_*arr2_0_129:ptr->i32 
              #                    occupy a7 with temp_52_ptr_of_*arr2_0_129
              #                    load from temp_52_ptr_of_*arr2_0_129 in mem
    ld      a7,32(sp)
              #                    occupy s5 with temp_53_ele_of_*arr2_0_129_0
    lw      s5,0(a7)
              #                    free s5
              #                    occupy s5 with temp_53_ele_of_*arr2_0_129_0
              #                    store to temp_53_ele_of_*arr2_0_129_0 in mem offset legal
    sw      s5,28(sp)
              #                    release s5 with temp_53_ele_of_*arr2_0_129_0
              #                    free a7
              #                    occupy a7 with temp_52_ptr_of_*arr2_0_129
              #                    store to temp_52_ptr_of_*arr2_0_129 in mem offset legal
    sd      a7,32(sp)
              #                    release a7 with temp_52_ptr_of_*arr2_0_129
              #                     285  mu arr2_0_0:284 
              #                     287  temp_54_arithop_129_0 = Add i32 temp_51_arithop_129_0, temp_53_ele_of_*arr2_0_129_0 
              #                    occupy s4 with temp_51_arithop_129_0
              #                    occupy a7 with temp_53_ele_of_*arr2_0_129_0
              #                    load from temp_53_ele_of_*arr2_0_129_0 in mem


    lw      a7,28(sp)
              #                    occupy s5 with temp_54_arithop_129_0
    ADDW    s5,s4,a7
              #                    free s4
              #                    occupy s4 with temp_51_arithop_129_0
              #                    store to temp_51_arithop_129_0 in mem offset legal
    sw      s4,40(sp)
              #                    release s4 with temp_51_arithop_129_0
              #                    free a7
              #                    occupy a7 with temp_53_ele_of_*arr2_0_129_0
              #                    store to temp_53_ele_of_*arr2_0_129_0 in mem offset legal
    sw      a7,28(sp)
              #                    release a7 with temp_53_ele_of_*arr2_0_129_0
              #                    free s5
              #                     288  (nop) 
              #                     290  temp_55_arithop_129_0 = Add i32 g_99_8, 1_0 
              #                    occupy a7 with g_99_8
              #                    load from g_99_8 in mem


    lw      a7,172(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s7 with temp_55_arithop_129_0
    ADDW    s7,a7,s4
              #                    free a7
              #                    occupy a7 with g_99_8
              #                    store to g_99_8 in mem offset legal
    sw      a7,172(sp)
              #                    release a7 with g_99_8
              #                    free s4
              #                    free s7
              #                    occupy s7 with temp_55_arithop_129_0
              #                    store to temp_55_arithop_129_0 in mem offset legal
    sw      s7,20(sp)
              #                    release s7 with temp_55_arithop_129_0
              #                     291  (nop) 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: temp_49_ptr_of_*arr1_0_129, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s5:Freed { symidx: temp_54_arithop_129_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     367  temp_69_cmp_132_0 = icmp i32 Sge temp_55_arithop_129_0, n_97_0 
              #                    occupy a7 with temp_55_arithop_129_0
              #                    load from temp_55_arithop_129_0 in mem


    lw      a7,20(sp)
              #                    occupy a6 with n_97_0
              #                    occupy s4 with temp_69_cmp_132_0
    slt     s4,a7,a6
    xori    s4,s4,1
              #                    free a7
              #                    occupy a7 with temp_55_arithop_129_0
              #                    store to temp_55_arithop_129_0 in mem offset legal
    sw      a7,20(sp)
              #                    release a7 with temp_55_arithop_129_0
              #                    free a6
              #                    occupy a6 with n_97_0
              #                    store to n_97_0 in mem offset legal
    sw      a6,396(sp)
              #                    release a6 with n_97_0
              #                    free s4
              #                     370  br i1 temp_69_cmp_132_0, label branch_true_133, label branch_false_133 
              #                    occupy s4 with temp_69_cmp_132_0
              #                    free s4
              #                    occupy s4 with temp_69_cmp_132_0
    bnez    s4, .branch_true_133
              #                    free s4
    j       .branch_false_133
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: temp_49_ptr_of_*arr1_0_129, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: temp_69_cmp_132_0, tracked: true } |     s5:Freed { symidx: temp_54_arithop_129_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     368  label branch_true_133: 
.branch_true_133:
              #                     669  untrack temp_53_ele_of_*arr2_0_129_0 
              #                     668  untrack temp_69_cmp_132_0 
              #                    occupy s4 with temp_69_cmp_132_0
              #                    release s4 with temp_69_cmp_132_0
              #                     667  untrack temp_48_arithop_129_0 
              #                     666  untrack temp_52_ptr_of_*arr2_0_129 
              #                     665  untrack temp_55_arithop_129_0 
              #                     664  untrack temp_51_arithop_129_0 
              #                     663  untrack temp_50_ele_of_*arr1_0_129_0 
              #                     662  untrack temp_67_cmp_127_0 
              #                     661  untrack temp_49_ptr_of_*arr1_0_129 
              #                    occupy s2 with temp_49_ptr_of_*arr1_0_129
              #                    release s2 with temp_49_ptr_of_*arr1_0_129
              #                     618  ans_99_9 = i32 temp_54_arithop_129_0 
              #                    occupy s5 with temp_54_arithop_129_0
              #                    occupy a6 with ans_99_9
    mv      a6, s5
              #                    free s5
              #                    free a6
              #                     670  untrack temp_54_arithop_129_0 
              #                    occupy s5 with temp_54_arithop_129_0
              #                    release s5 with temp_54_arithop_129_0
              #                          jump label: while.exit_128 
    j       .while.exit_128
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     359  label while.exit_128: 
.while.exit_128:
              #                     270  temp_47_arithop_125_0 = Add i32 f_99_7, 1_0 
              #                    occupy a7 with f_99_7
              #                    load from f_99_7 in mem


    lw      a7,228(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s4 with temp_47_arithop_125_0
    ADDW    s4,a7,s2
              #                    free a7
              #                    occupy a7 with f_99_7
              #                    store to f_99_7 in mem offset legal
    sw      a7,228(sp)
              #                    release a7 with f_99_7
              #                    free s2
              #                    free s4
              #                     271  (nop) 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: temp_47_arithop_125_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     362  temp_68_cmp_136_0 = icmp i32 Sge temp_47_arithop_125_0, m_97_0 
              #                    occupy s4 with temp_47_arithop_125_0
              #                    occupy a5 with m_97_0
              #                    occupy a7 with temp_68_cmp_136_0
    slt     a7,s4,a5
    xori    a7,a7,1
              #                    free s4
              #                    occupy s4 with temp_47_arithop_125_0
              #                    store to temp_47_arithop_125_0 in mem offset legal
    sw      s4,64(sp)
              #                    release s4 with temp_47_arithop_125_0
              #                    free a5
              #                    free a7
              #                     365  br i1 temp_68_cmp_136_0, label branch_true_137, label branch_false_137 
              #                    occupy a7 with temp_68_cmp_136_0
              #                    free a7
              #                    occupy a7 with temp_68_cmp_136_0
    bnez    a7, .branch_true_137
              #                    free a7
    j       .branch_false_137
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: temp_68_cmp_136_0, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     363  label branch_true_137: 
.branch_true_137:
              #                     675  untrack ans_99_7 
              #                     674  untrack temp_68_cmp_136_0 
              #                    occupy a7 with temp_68_cmp_136_0
              #                    release a7 with temp_68_cmp_136_0
              #                     673  untrack temp_47_arithop_125_0 
              #                     672  untrack g_99_8 
              #                     671  untrack temp_65_cmp_123_0 
              #                     619  ans_99_10 = i32 ans_99_9 
              #                    occupy a6 with ans_99_9
              #                    occupy a7 with ans_99_10
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                          jump label: while.exit_124 
    j       .while.exit_124
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     348  label while.exit_124: 
.while.exit_124:
              #                     266  temp_46_arithop_121_0 = Add i32 e_99_6, 1_0 
              #                    occupy s2 with e_99_6
              #                    load from e_99_6 in mem


    lw      s2,276(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_46_arithop_121_0
    ADDW    s5,s2,s4
              #                    free s2
              #                    occupy s2 with e_99_6
              #                    store to e_99_6 in mem offset legal
    sw      s2,276(sp)
              #                    release s2 with e_99_6
              #                    free s4
              #                    free s5
              #                    occupy s5 with temp_46_arithop_121_0
              #                    store to temp_46_arithop_121_0 in mem offset legal
    sw      s5,68(sp)
              #                    release s5 with temp_46_arithop_121_0
              #                     267  (nop) 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     351  temp_66_cmp_140_0 = icmp i32 Sge temp_46_arithop_121_0, l_97_0 
              #                    occupy s2 with temp_46_arithop_121_0
              #                    load from temp_46_arithop_121_0 in mem


    lw      s2,68(sp)
              #                    occupy a4 with l_97_0
              #                    occupy s4 with temp_66_cmp_140_0
    slt     s4,s2,a4
    xori    s4,s4,1
              #                    free s2
              #                    occupy s2 with temp_46_arithop_121_0
              #                    store to temp_46_arithop_121_0 in mem offset legal
    sw      s2,68(sp)
              #                    release s2 with temp_46_arithop_121_0
              #                    free a4
              #                    occupy a4 with l_97_0
              #                    store to l_97_0 in mem offset legal
    sw      a4,404(sp)
              #                    release a4 with l_97_0
              #                    free s4
              #                     354  br i1 temp_66_cmp_140_0, label branch_true_141, label branch_false_141 
              #                    occupy s4 with temp_66_cmp_140_0
              #                    free s4
              #                    occupy s4 with temp_66_cmp_140_0
    bnez    s4, .branch_true_141
              #                    free s4
    j       .branch_false_141
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: temp_66_cmp_140_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     352  label branch_true_141: 
.branch_true_141:
              #                     680  untrack temp_63_cmp_119_0 
              #                     679  untrack ans_99_6 
              #                     678  untrack temp_46_arithop_121_0 
              #                     677  untrack f_99_7 
              #                     676  untrack temp_66_cmp_140_0 
              #                    occupy s4 with temp_66_cmp_140_0
              #                    release s4 with temp_66_cmp_140_0
              #                     620  ans_99_11 = i32 ans_99_10 
              #                    occupy a7 with ans_99_10
              #                    occupy a4 with ans_99_11
    mv      a4, a7
              #                    free a7
              #                    free a4
              #                          jump label: while.exit_120 
    j       .while.exit_120
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     337  label while.exit_120: 
.while.exit_120:
              #                     262  temp_45_arithop_117_0 = Add i32 d_99_5, 1_0 
              #                    occupy s2 with d_99_5
              #                    load from d_99_5 in mem


    lw      s2,316(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_45_arithop_117_0
    ADDW    s5,s2,s4
              #                    free s2
              #                    occupy s2 with d_99_5
              #                    store to d_99_5 in mem offset legal
    sw      s2,316(sp)
              #                    release s2 with d_99_5
              #                    free s4
              #                    free s5
              #                    occupy s5 with temp_45_arithop_117_0
              #                    store to temp_45_arithop_117_0 in mem offset legal
    sw      s5,72(sp)
              #                    release s5 with temp_45_arithop_117_0
              #                     263  (nop) 
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     340  temp_64_cmp_144_0 = icmp i32 Sge temp_45_arithop_117_0, k_97_0 
              #                    occupy s2 with temp_45_arithop_117_0
              #                    load from temp_45_arithop_117_0 in mem


    lw      s2,72(sp)
              #                    occupy a3 with k_97_0
              #                    occupy s4 with temp_64_cmp_144_0
    slt     s4,s2,a3
    xori    s4,s4,1
              #                    free s2
              #                    occupy s2 with temp_45_arithop_117_0
              #                    store to temp_45_arithop_117_0 in mem offset legal
    sw      s2,72(sp)
              #                    release s2 with temp_45_arithop_117_0
              #                    free a3
              #                    occupy a3 with k_97_0
              #                    store to k_97_0 in mem offset legal
    sw      a3,408(sp)
              #                    release a3 with k_97_0
              #                    free s4
              #                     343  br i1 temp_64_cmp_144_0, label branch_true_145, label branch_false_145 
              #                    occupy s4 with temp_64_cmp_144_0
              #                    free s4
              #                    occupy s4 with temp_64_cmp_144_0
    bnez    s4, .branch_true_145
              #                    free s4
    j       .branch_false_145
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: temp_64_cmp_144_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     341  label branch_true_145: 
.branch_true_145:
              #                     685  untrack temp_61_cmp_115_0 
              #                     684  untrack ans_99_5 
              #                     683  untrack e_99_6 
              #                     682  untrack temp_64_cmp_144_0 
              #                    occupy s4 with temp_64_cmp_144_0
              #                    release s4 with temp_64_cmp_144_0
              #                     681  untrack temp_45_arithop_117_0 
              #                     621  ans_99_12 = i32 ans_99_11 
              #                    occupy a4 with ans_99_11
              #                    occupy a3 with ans_99_12
    mv      a3, a4
              #                    free a4
              #                    free a3
              #                          jump label: while.exit_116 
    j       .while.exit_116
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: ans_99_12, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     326  label while.exit_116: 
.while.exit_116:
              #                     258  temp_44_arithop_113_0 = Add i32 c_99_4, 1_0 
              #                    occupy s2 with c_99_4
              #                    load from c_99_4 in mem


    lw      s2,348(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_44_arithop_113_0
    ADDW    s5,s2,s4
              #                    free s2
              #                    occupy s2 with c_99_4
              #                    store to c_99_4 in mem offset legal
    sw      s2,348(sp)
              #                    release s2 with c_99_4
              #                    free s4
              #                    free s5
              #                    occupy s5 with temp_44_arithop_113_0
              #                    store to temp_44_arithop_113_0 in mem offset legal
    sw      s5,76(sp)
              #                    release s5 with temp_44_arithop_113_0
              #                     259  (nop) 
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: ans_99_12, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     329  temp_62_cmp_148_0 = icmp i32 Sge temp_44_arithop_113_0, j_97_0 
              #                    occupy s2 with temp_44_arithop_113_0
              #                    load from temp_44_arithop_113_0 in mem


    lw      s2,76(sp)
              #                    occupy a2 with j_97_0
              #                    occupy s4 with temp_62_cmp_148_0
    slt     s4,s2,a2
    xori    s4,s4,1
              #                    free s2
              #                    occupy s2 with temp_44_arithop_113_0
              #                    store to temp_44_arithop_113_0 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with temp_44_arithop_113_0
              #                    free a2
              #                    occupy a2 with j_97_0
              #                    store to j_97_0 in mem offset legal
    sw      a2,412(sp)
              #                    release a2 with j_97_0
              #                    free s4
              #                     332  br i1 temp_62_cmp_148_0, label branch_true_149, label branch_false_149 
              #                    occupy s4 with temp_62_cmp_148_0
              #                    free s4
              #                    occupy s4 with temp_62_cmp_148_0
    bnez    s4, .branch_true_149
              #                    free s4
    j       .branch_false_149
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a3:Freed { symidx: ans_99_12, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: temp_62_cmp_148_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     330  label branch_true_149: 
.branch_true_149:
              #                     690  untrack ans_99_4 
              #                     689  untrack temp_44_arithop_113_0 
              #                     688  untrack temp_59_cmp_111_0 
              #                     687  untrack temp_62_cmp_148_0 
              #                    occupy s4 with temp_62_cmp_148_0
              #                    release s4 with temp_62_cmp_148_0
              #                     686  untrack d_99_5 
              #                     622  ans_99_13 = i32 ans_99_12 
              #                    occupy a3 with ans_99_12
              #                    occupy a2 with ans_99_13
    mv      a2, a3
              #                    free a3
              #                    free a2
              #                          jump label: while.exit_112 
    j       .while.exit_112
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: ans_99_13, tracked: true } |     a3:Freed { symidx: ans_99_12, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     315  label while.exit_112: 
.while.exit_112:
              #                     254  temp_43_arithop_109_0 = Add i32 b_99_3, 1_0 
              #                    occupy s2 with b_99_3
              #                    load from b_99_3 in mem


    lw      s2,372(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_43_arithop_109_0
    ADDW    s5,s2,s4
              #                    free s2
              #                    occupy s2 with b_99_3
              #                    store to b_99_3 in mem offset legal
    sw      s2,372(sp)
              #                    release s2 with b_99_3
              #                    free s4
              #                    free s5
              #                    occupy s5 with temp_43_arithop_109_0
              #                    store to temp_43_arithop_109_0 in mem offset legal
    sw      s5,80(sp)
              #                    release s5 with temp_43_arithop_109_0
              #                     255  (nop) 
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: ans_99_13, tracked: true } |     a3:Freed { symidx: ans_99_12, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     318  temp_60_cmp_152_0 = icmp i32 Sge temp_43_arithop_109_0, i_97_0 
              #                    occupy s2 with temp_43_arithop_109_0
              #                    load from temp_43_arithop_109_0 in mem


    lw      s2,80(sp)
              #                    occupy a1 with i_97_0
              #                    occupy s4 with temp_60_cmp_152_0
    slt     s4,s2,a1
    xori    s4,s4,1
              #                    free s2
              #                    occupy s2 with temp_43_arithop_109_0
              #                    store to temp_43_arithop_109_0 in mem offset legal
    sw      s2,80(sp)
              #                    release s2 with temp_43_arithop_109_0
              #                    free a1
              #                    occupy a1 with i_97_0
              #                    store to i_97_0 in mem offset legal
    sw      a1,416(sp)
              #                    release a1 with i_97_0
              #                    free s4
              #                     321  br i1 temp_60_cmp_152_0, label branch_true_153, label branch_false_153 
              #                    occupy s4 with temp_60_cmp_152_0
              #                    free s4
              #                    occupy s4 with temp_60_cmp_152_0
    bnez    s4, .branch_true_153
              #                    free s4
    j       .branch_false_153
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a2:Freed { symidx: ans_99_13, tracked: true } |     a3:Freed { symidx: ans_99_12, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: temp_60_cmp_152_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     319  label branch_true_153: 
.branch_true_153:
              #                     695  untrack ans_99_3 
              #                     694  untrack temp_60_cmp_152_0 
              #                    occupy s4 with temp_60_cmp_152_0
              #                    release s4 with temp_60_cmp_152_0
              #                     693  untrack c_99_4 
              #                     692  untrack temp_57_cmp_107_0 
              #                    occupy s6 with temp_57_cmp_107_0
              #                    release s6 with temp_57_cmp_107_0
              #                     691  untrack temp_43_arithop_109_0 
              #                     623  ans_99_14 = i32 ans_99_13 
              #                    occupy a2 with ans_99_13
              #                    occupy a1 with ans_99_14
    mv      a1, a2
              #                    free a2
              #                    free a1
              #                          jump label: while.exit_108 
    j       .while.exit_108
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: ans_99_14, tracked: true } |     a2:Freed { symidx: ans_99_13, tracked: true } |     a3:Freed { symidx: ans_99_12, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     304  label while.exit_108: 
.while.exit_108:
              #                     250  temp_42_arithop_105_0 = Add i32 a_99_2, 1_0 
              #                    occupy s2 with a_99_2
              #                    load from a_99_2 in mem


    lw      s2,388(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_42_arithop_105_0
    ADDW    s5,s2,s4
              #                    free s2
              #                    occupy s2 with a_99_2
              #                    store to a_99_2 in mem offset legal
    sw      s2,388(sp)
              #                    release s2 with a_99_2
              #                    free s4
              #                    free s5
              #                     251  (nop) 
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: ans_99_14, tracked: true } |     a2:Freed { symidx: ans_99_13, tracked: true } |     a3:Freed { symidx: ans_99_12, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s5:Freed { symidx: temp_42_arithop_105_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     307  temp_58_cmp_156_0 = icmp i32 Sge temp_42_arithop_105_0, h_97_0 
              #                    occupy s5 with temp_42_arithop_105_0
              #                    occupy a0 with h_97_0
              #                    occupy s2 with temp_58_cmp_156_0
    slt     s2,s5,a0
    xori    s2,s2,1
              #                    free s5
              #                    occupy s5 with temp_42_arithop_105_0
              #                    store to temp_42_arithop_105_0 in mem offset legal
    sw      s5,84(sp)
              #                    release s5 with temp_42_arithop_105_0
              #                    free a0
              #                    free s2
              #                     310  br i1 temp_58_cmp_156_0, label branch_true_157, label branch_false_157 
              #                    occupy s2 with temp_58_cmp_156_0
              #                    free s2
              #                    occupy s2 with temp_58_cmp_156_0
    bnez    s2, .branch_true_157
              #                    free s2
    j       .branch_false_157
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: ans_99_14, tracked: true } |     a2:Freed { symidx: ans_99_13, tracked: true } |     a3:Freed { symidx: ans_99_12, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: temp_58_cmp_156_0, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     308  label branch_true_157: 
.branch_true_157:
              #                     700  untrack temp_42_arithop_105_0 
              #                     699  untrack temp_58_cmp_156_0 
              #                    occupy s2 with temp_58_cmp_156_0
              #                    release s2 with temp_58_cmp_156_0
              #                     698  untrack temp_56_cmp_103_0 
              #                    occupy s3 with temp_56_cmp_103_0
              #                    release s3 with temp_56_cmp_103_0
              #                     697  untrack ans_99_2 
              #                     696  untrack b_99_3 
              #                     624  ans_99_15 = i32 ans_99_14 
              #                    occupy a1 with ans_99_14
              #                    occupy s2 with ans_99_15
    mv      s2, a1
              #                    free a1
              #                    free s2
              #                          jump label: while.exit_104 
    j       .while.exit_104
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: ans_99_14, tracked: true } |     a2:Freed { symidx: ans_99_13, tracked: true } |     a3:Freed { symidx: ans_99_12, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: ans_99_15, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     296  label while.exit_104: 
.while.exit_104:
              #                     247  ret ans_99_15 
              #                    load from ra_loop3_0 in mem
    ld      ra,432(sp)
              #                    load from s0_loop3_0 in mem
    ld      s0,424(sp)
              #                    occupy s2 with ans_99_15
              #                    store to ans_99_15 in mem offset legal
    sw      s2,88(sp)
              #                    release s2 with ans_99_15
              #                    occupy a0 with h_97_0
              #                    store to h_97_0 in mem offset legal
    sw      a0,420(sp)
              #                    release a0 with h_97_0
              #                    occupy a0 with ans_99_15
              #                    load from ans_99_15 in mem


    lw      a0,88(sp)
    addi    sp,sp,440
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: ans_99_14, tracked: true } |     a2:Freed { symidx: ans_99_13, tracked: true } |     a3:Freed { symidx: ans_99_12, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: temp_58_cmp_156_0, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     309  label branch_false_157: 
.branch_false_157:
              #                     625  ans_99_1 = i32 ans_99_14 
              #                    occupy a1 with ans_99_14
              #                    occupy s1 with ans_99_1
    mv      s1, a1
              #                    free a1
              #                    free s1
              #                     626  a_99_2 = i32 temp_42_arithop_105_0 
              #                    occupy s4 with temp_42_arithop_105_0
              #                    load from temp_42_arithop_105_0 in mem


    lw      s4,84(sp)
              #                    occupy s5 with a_99_2
    mv      s5, s4
              #                    free s4
              #                    occupy s4 with temp_42_arithop_105_0
              #                    store to temp_42_arithop_105_0 in mem offset legal
    sw      s4,84(sp)
              #                    release s4 with temp_42_arithop_105_0
              #                    free s5
              #                    occupy s5 with a_99_2
              #                    store to a_99_2 in mem offset legal
    sw      s5,388(sp)
              #                    release s5 with a_99_2
              #                          jump label: while.head_104 
              #                    occupy a2 with ans_99_13
              #                    store to ans_99_13 in mem offset legal
    sw      a2,96(sp)
              #                    release a2 with ans_99_13
              #                    occupy a2 with j_97_0
              #                    load from j_97_0 in mem


    lw      a2,412(sp)
              #                    occupy s3 with temp_56_cmp_103_0
              #                    store to temp_56_cmp_103_0 in mem offset legal
    sb      s3,19(sp)
              #                    release s3 with temp_56_cmp_103_0
              #                    occupy a1 with ans_99_14
              #                    store to ans_99_14 in mem offset legal
    sw      a1,92(sp)
              #                    release a1 with ans_99_14
              #                    occupy a1 with i_97_0
              #                    load from i_97_0 in mem


    lw      a1,416(sp)
              #                    occupy s2 with temp_58_cmp_156_0
              #                    store to temp_58_cmp_156_0 in mem offset legal
    sb      s2,17(sp)
              #                    release s2 with temp_58_cmp_156_0
              #                    occupy a3 with ans_99_12
              #                    store to ans_99_12 in mem offset legal
    sw      a3,100(sp)
              #                    release a3 with ans_99_12
              #                    occupy a3 with k_97_0
              #                    load from k_97_0 in mem


    lw      a3,408(sp)
              #                    occupy a6 with ans_99_9
              #                    store to ans_99_9 in mem offset legal
    sw      a6,112(sp)
              #                    release a6 with ans_99_9
              #                    occupy a6 with n_97_0
              #                    load from n_97_0 in mem


    lw      a6,396(sp)
              #                    occupy a4 with ans_99_11
              #                    store to ans_99_11 in mem offset legal
    sw      a4,104(sp)
              #                    release a4 with ans_99_11
              #                    occupy a4 with l_97_0
              #                    load from l_97_0 in mem


    lw      a4,404(sp)
              #                    occupy a7 with ans_99_10
              #                    store to ans_99_10 in mem offset legal
    sw      a7,108(sp)
              #                    release a7 with ans_99_10
              #                    occupy a7 with a_99_2
              #                    load from a_99_2 in mem


    lw      a7,388(sp)
    j       .while.head_104
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a2:Freed { symidx: ans_99_13, tracked: true } |     a3:Freed { symidx: ans_99_12, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: temp_60_cmp_152_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     320  label branch_false_153: 
.branch_false_153:
              #                     627  ans_99_2 = i32 ans_99_13 
              #                    occupy a2 with ans_99_13
              #                    occupy a1 with ans_99_2
    mv      a1, a2
              #                    free a2
              #                    occupy a2 with ans_99_13
              #                    store to ans_99_13 in mem offset legal
    sw      a2,96(sp)
              #                    release a2 with ans_99_13
              #                    free a1
              #                     628  b_99_3 = i32 temp_43_arithop_109_0 
              #                    occupy a2 with temp_43_arithop_109_0
              #                    load from temp_43_arithop_109_0 in mem


    lw      a2,80(sp)
              #                    occupy s2 with b_99_3
    mv      s2, a2
              #                    free a2
              #                    occupy a2 with temp_43_arithop_109_0
              #                    store to temp_43_arithop_109_0 in mem offset legal
    sw      a2,80(sp)
              #                    release a2 with temp_43_arithop_109_0
              #                    free s2
              #                    occupy s2 with b_99_3
              #                    store to b_99_3 in mem offset legal
    sw      s2,372(sp)
              #                    release s2 with b_99_3
              #                          jump label: while.head_108 
              #                    occupy a2 with j_97_0
              #                    load from j_97_0 in mem


    lw      a2,412(sp)
              #                    occupy a1 with ans_99_2
              #                    store to ans_99_2 in mem offset legal
    sw      a1,136(sp)
              #                    release a1 with ans_99_2
              #                    occupy a1 with i_97_0
              #                    load from i_97_0 in mem


    lw      a1,416(sp)
              #                    occupy s2 with ans_99_2
              #                    load from ans_99_2 in mem


    lw      s2,136(sp)
              #                    occupy a3 with ans_99_12
              #                    store to ans_99_12 in mem offset legal
    sw      a3,100(sp)
              #                    release a3 with ans_99_12
              #                    occupy a3 with k_97_0
              #                    load from k_97_0 in mem


    lw      a3,408(sp)
              #                    occupy a6 with ans_99_9
              #                    store to ans_99_9 in mem offset legal
    sw      a6,112(sp)
              #                    release a6 with ans_99_9
              #                    occupy a6 with n_97_0
              #                    load from n_97_0 in mem


    lw      a6,396(sp)
              #                    occupy s6 with temp_57_cmp_107_0
              #                    store to temp_57_cmp_107_0 in mem offset legal
    sb      s6,18(sp)
              #                    release s6 with temp_57_cmp_107_0
              #                    occupy a4 with ans_99_11
              #                    store to ans_99_11 in mem offset legal
    sw      a4,104(sp)
              #                    release a4 with ans_99_11
              #                    occupy a4 with l_97_0
              #                    load from l_97_0 in mem


    lw      a4,404(sp)
              #                    occupy a7 with ans_99_10
              #                    store to ans_99_10 in mem offset legal
    sw      a7,108(sp)
              #                    release a7 with ans_99_10
              #                    occupy a7 with a_99_2
              #                    load from a_99_2 in mem


    lw      a7,388(sp)
              #                    occupy s4 with temp_60_cmp_152_0
              #                    store to temp_60_cmp_152_0 in mem offset legal
    sb      s4,15(sp)
              #                    release s4 with temp_60_cmp_152_0
              #                    occupy s4 with b_99_3
              #                    load from b_99_3 in mem


    lw      s4,372(sp)
    j       .while.head_108
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a3:Freed { symidx: ans_99_12, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: temp_62_cmp_148_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     331  label branch_false_149: 
.branch_false_149:
              #                     629  c_99_4 = i32 temp_44_arithop_113_0 
              #                    occupy a2 with temp_44_arithop_113_0
              #                    load from temp_44_arithop_113_0 in mem


    lw      a2,76(sp)
              #                    occupy s2 with c_99_4
    mv      s2, a2
              #                    free a2
              #                    occupy a2 with temp_44_arithop_113_0
              #                    store to temp_44_arithop_113_0 in mem offset legal
    sw      a2,76(sp)
              #                    release a2 with temp_44_arithop_113_0
              #                    free s2
              #                    occupy s2 with c_99_4
              #                    store to c_99_4 in mem offset legal
    sw      s2,348(sp)
              #                    release s2 with c_99_4
              #                     630  ans_99_3 = i32 ans_99_12 
              #                    occupy a3 with ans_99_12
              #                    occupy a2 with ans_99_3
    mv      a2, a3
              #                    free a3
              #                    occupy a3 with ans_99_12
              #                    store to ans_99_12 in mem offset legal
    sw      a3,100(sp)
              #                    release a3 with ans_99_12
              #                    free a2
              #                          jump label: while.head_112 
              #                    occupy a2 with ans_99_3
              #                    store to ans_99_3 in mem offset legal
    sw      a2,132(sp)
              #                    release a2 with ans_99_3
              #                    occupy a2 with j_97_0
              #                    load from j_97_0 in mem


    lw      a2,412(sp)
              #                    occupy a3 with k_97_0
              #                    load from k_97_0 in mem


    lw      a3,408(sp)
              #                    occupy a6 with ans_99_9
              #                    store to ans_99_9 in mem offset legal
    sw      a6,112(sp)
              #                    release a6 with ans_99_9
              #                    occupy a6 with n_97_0
              #                    load from n_97_0 in mem


    lw      a6,396(sp)
              #                    occupy a4 with ans_99_11
              #                    store to ans_99_11 in mem offset legal
    sw      a4,104(sp)
              #                    release a4 with ans_99_11
              #                    occupy a4 with l_97_0
              #                    load from l_97_0 in mem


    lw      a4,404(sp)
              #                    occupy a7 with ans_99_10
              #                    store to ans_99_10 in mem offset legal
    sw      a7,108(sp)
              #                    release a7 with ans_99_10
              #                    occupy a7 with a_99_2
              #                    load from a_99_2 in mem


    lw      a7,388(sp)
              #                    occupy s4 with temp_62_cmp_148_0
              #                    store to temp_62_cmp_148_0 in mem offset legal
    sb      s4,13(sp)
              #                    release s4 with temp_62_cmp_148_0
              #                    occupy s4 with ans_99_3
              #                    load from ans_99_3 in mem


    lw      s4,132(sp)
    j       .while.head_112
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a4:Freed { symidx: ans_99_11, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: temp_64_cmp_144_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     342  label branch_false_145: 
.branch_false_145:
              #                     631  ans_99_4 = i32 ans_99_11 
              #                    occupy a4 with ans_99_11
              #                    occupy a3 with ans_99_4
    mv      a3, a4
              #                    free a4
              #                    occupy a4 with ans_99_11
              #                    store to ans_99_11 in mem offset legal
    sw      a4,104(sp)
              #                    release a4 with ans_99_11
              #                    free a3
              #                     632  d_99_5 = i32 temp_45_arithop_117_0 
              #                    occupy a4 with temp_45_arithop_117_0
              #                    load from temp_45_arithop_117_0 in mem


    lw      a4,72(sp)
              #                    occupy s2 with d_99_5
    mv      s2, a4
              #                    free a4
              #                    occupy a4 with temp_45_arithop_117_0
              #                    store to temp_45_arithop_117_0 in mem offset legal
    sw      a4,72(sp)
              #                    release a4 with temp_45_arithop_117_0
              #                    free s2
              #                    occupy s2 with d_99_5
              #                    store to d_99_5 in mem offset legal
    sw      s2,316(sp)
              #                    release s2 with d_99_5
              #                          jump label: while.head_116 
              #                    occupy a3 with ans_99_4
              #                    store to ans_99_4 in mem offset legal
    sw      a3,128(sp)
              #                    release a3 with ans_99_4
              #                    occupy s2 with ans_99_4
              #                    load from ans_99_4 in mem


    lw      s2,128(sp)
              #                    occupy a3 with k_97_0
              #                    load from k_97_0 in mem


    lw      a3,408(sp)
              #                    occupy a6 with ans_99_9
              #                    store to ans_99_9 in mem offset legal
    sw      a6,112(sp)
              #                    release a6 with ans_99_9
              #                    occupy a6 with n_97_0
              #                    load from n_97_0 in mem


    lw      a6,396(sp)
              #                    occupy a4 with l_97_0
              #                    load from l_97_0 in mem


    lw      a4,404(sp)
              #                    occupy a7 with ans_99_10
              #                    store to ans_99_10 in mem offset legal
    sw      a7,108(sp)
              #                    release a7 with ans_99_10
              #                    occupy a7 with a_99_2
              #                    load from a_99_2 in mem


    lw      a7,388(sp)
              #                    occupy s4 with temp_64_cmp_144_0
              #                    store to temp_64_cmp_144_0 in mem offset legal
    sb      s4,11(sp)
              #                    release s4 with temp_64_cmp_144_0
    j       .while.head_116
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: ans_99_10, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: temp_66_cmp_140_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     353  label branch_false_141: 
.branch_false_141:
              #                     633  ans_99_5 = i32 ans_99_10 
              #                    occupy a7 with ans_99_10
              #                    occupy a4 with ans_99_5
    mv      a4, a7
              #                    free a7
              #                    occupy a7 with ans_99_10
              #                    store to ans_99_10 in mem offset legal
    sw      a7,108(sp)
              #                    release a7 with ans_99_10
              #                    free a4
              #                     634  e_99_6 = i32 temp_46_arithop_121_0 
              #                    occupy a7 with temp_46_arithop_121_0
              #                    load from temp_46_arithop_121_0 in mem


    lw      a7,68(sp)
              #                    occupy s2 with e_99_6
    mv      s2, a7
              #                    free a7
              #                    occupy a7 with temp_46_arithop_121_0
              #                    store to temp_46_arithop_121_0 in mem offset legal
    sw      a7,68(sp)
              #                    release a7 with temp_46_arithop_121_0
              #                    free s2
              #                    occupy s2 with e_99_6
              #                    store to e_99_6 in mem offset legal
    sw      s2,276(sp)
              #                    release s2 with e_99_6
              #                          jump label: while.head_120 
              #                    occupy a6 with ans_99_9
              #                    store to ans_99_9 in mem offset legal
    sw      a6,112(sp)
              #                    release a6 with ans_99_9
              #                    occupy a6 with n_97_0
              #                    load from n_97_0 in mem


    lw      a6,396(sp)
              #                    occupy a4 with ans_99_5
              #                    store to ans_99_5 in mem offset legal
    sw      a4,124(sp)
              #                    release a4 with ans_99_5
              #                    occupy a4 with l_97_0
              #                    load from l_97_0 in mem


    lw      a4,404(sp)
              #                    occupy a7 with a_99_2
              #                    load from a_99_2 in mem


    lw      a7,388(sp)
              #                    occupy s4 with temp_66_cmp_140_0
              #                    store to temp_66_cmp_140_0 in mem offset legal
    sb      s4,9(sp)
              #                    release s4 with temp_66_cmp_140_0
              #                    occupy s4 with ans_99_5
              #                    load from ans_99_5 in mem


    lw      s4,124(sp)
    j       .while.head_120
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: ans_99_9, tracked: true } |     a7:Freed { symidx: temp_68_cmp_136_0, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     364  label branch_false_137: 
.branch_false_137:
              #                     635  ans_99_6 = i32 ans_99_9 
              #                    occupy a6 with ans_99_9
              #                    occupy s2 with ans_99_6
    mv      s2, a6
              #                    free a6
              #                    occupy a6 with ans_99_9
              #                    store to ans_99_9 in mem offset legal
    sw      a6,112(sp)
              #                    release a6 with ans_99_9
              #                    free s2
              #                     636  f_99_7 = i32 temp_47_arithop_125_0 
              #                    occupy a6 with temp_47_arithop_125_0
              #                    load from temp_47_arithop_125_0 in mem


    lw      a6,64(sp)
              #                    occupy s4 with f_99_7
    mv      s4, a6
              #                    free a6
              #                    occupy a6 with temp_47_arithop_125_0
              #                    store to temp_47_arithop_125_0 in mem offset legal
    sw      a6,64(sp)
              #                    release a6 with temp_47_arithop_125_0
              #                    free s4
              #                    occupy s4 with f_99_7
              #                    store to f_99_7 in mem offset legal
    sw      s4,228(sp)
              #                    release s4 with f_99_7
              #                          jump label: while.head_124 
              #                    occupy a6 with n_97_0
              #                    load from n_97_0 in mem


    lw      a6,396(sp)
              #                    occupy a7 with temp_68_cmp_136_0
              #                    store to temp_68_cmp_136_0 in mem offset legal
    sb      a7,7(sp)
              #                    release a7 with temp_68_cmp_136_0
              #                    occupy a7 with a_99_2
              #                    load from a_99_2 in mem


    lw      a7,388(sp)
    j       .while.head_124
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: temp_49_ptr_of_*arr1_0_129, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: temp_69_cmp_132_0, tracked: true } |     s5:Freed { symidx: temp_54_arithop_129_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     369  label branch_false_133: 
.branch_false_133:
              #                     637  g_99_8 = i32 temp_55_arithop_129_0 
              #                    occupy a6 with temp_55_arithop_129_0
              #                    load from temp_55_arithop_129_0 in mem


    lw      a6,20(sp)
              #                    occupy a7 with g_99_8
    mv      a7, a6
              #                    free a6
              #                    occupy a6 with temp_55_arithop_129_0
              #                    store to temp_55_arithop_129_0 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_55_arithop_129_0
              #                    free a7
              #                    occupy a7 with g_99_8
              #                    store to g_99_8 in mem offset legal
    sw      a7,172(sp)
              #                    release a7 with g_99_8
              #                     638  ans_99_7 = i32 temp_54_arithop_129_0 
              #                    occupy s5 with temp_54_arithop_129_0
              #                    occupy a6 with ans_99_7
    mv      a6, s5
              #                    free s5
              #                    occupy s5 with temp_54_arithop_129_0
              #                    store to temp_54_arithop_129_0 in mem offset legal
    sw      s5,24(sp)
              #                    release s5 with temp_54_arithop_129_0
              #                    free a6
              #                          jump label: while.head_128 
              #                    occupy s2 with temp_49_ptr_of_*arr1_0_129
              #                    store to temp_49_ptr_of_*arr1_0_129 in mem offset legal
    sd      s2,48(sp)
              #                    release s2 with temp_49_ptr_of_*arr1_0_129
              #                    occupy a6 with ans_99_7
              #                    store to ans_99_7 in mem offset legal
    sw      a6,116(sp)
              #                    release a6 with ans_99_7
              #                    occupy a6 with n_97_0
              #                    load from n_97_0 in mem


    lw      a6,396(sp)
              #                    occupy a7 with a_99_2
              #                    load from a_99_2 in mem


    lw      a7,388(sp)
              #                    occupy s4 with temp_69_cmp_132_0
              #                    store to temp_69_cmp_132_0 in mem offset legal
    sb      s4,6(sp)
              #                    release s4 with temp_69_cmp_132_0
              #                    occupy s4 with ans_99_7
              #                    load from ans_99_7 in mem


    lw      s4,116(sp)
    j       .while.head_128
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: ans_99_7, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     597  label UP_93_0: 
.UP_93_0:
              #                     639  ans_99_9 = i32 ans_99_7 
              #                    occupy s4 with ans_99_7
              #                    occupy s2 with ans_99_9
    mv      s2, s4
              #                    free s4
              #                    occupy s4 with ans_99_7
              #                    store to ans_99_7 in mem offset legal
    sw      s4,116(sp)
              #                    release s4 with ans_99_7
              #                    free s2
              #                          jump label: while.exit_128 
              #                    occupy s2 with ans_99_9
              #                    store to ans_99_9 in mem offset legal
    sw      s2,112(sp)
              #                    release s2 with ans_99_9
              #                    occupy a6 with n_97_0
              #                    store to n_97_0 in mem offset legal
    sw      a6,396(sp)
              #                    release a6 with n_97_0
              #                    occupy a6 with ans_99_9
              #                    load from ans_99_9 in mem


    lw      a6,112(sp)
              #                    occupy a7 with a_99_2
              #                    store to a_99_2 in mem offset legal
    sw      a7,388(sp)
              #                    release a7 with a_99_2
    j       .while.exit_128
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: ans_99_6, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     598  label UP_48_0: 
.UP_48_0:
              #                     640  ans_99_10 = i32 ans_99_6 
              #                    occupy s2 with ans_99_6
              #                    occupy s4 with ans_99_10
    mv      s4, s2
              #                    free s2
              #                    occupy s2 with ans_99_6
              #                    store to ans_99_6 in mem offset legal
    sw      s2,120(sp)
              #                    release s2 with ans_99_6
              #                    free s4
              #                          jump label: while.exit_124 
              #                    occupy a6 with n_97_0
              #                    store to n_97_0 in mem offset legal
    sw      a6,396(sp)
              #                    release a6 with n_97_0
              #                    occupy a6 with ans_99_9
              #                    load from ans_99_9 in mem


    lw      a6,112(sp)
              #                    occupy a7 with a_99_2
              #                    store to a_99_2 in mem offset legal
    sw      a7,388(sp)
              #                    release a7 with a_99_2
              #                    occupy s4 with ans_99_10
              #                    store to ans_99_10 in mem offset legal
    sw      s4,108(sp)
              #                    release s4 with ans_99_10
              #                    occupy a7 with ans_99_10
              #                    load from ans_99_10 in mem


    lw      a7,108(sp)
    j       .while.exit_124
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: ans_99_5, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     599  label UP_96_0: 
.UP_96_0:
              #                     641  ans_99_11 = i32 ans_99_5 
              #                    occupy s4 with ans_99_5
              #                    occupy s2 with ans_99_11
    mv      s2, s4
              #                    free s4
              #                    occupy s4 with ans_99_5
              #                    store to ans_99_5 in mem offset legal
    sw      s4,124(sp)
              #                    release s4 with ans_99_5
              #                    free s2
              #                          jump label: while.exit_120 
              #                    occupy s2 with ans_99_11
              #                    store to ans_99_11 in mem offset legal
    sw      s2,104(sp)
              #                    release s2 with ans_99_11
              #                    occupy a6 with n_97_0
              #                    store to n_97_0 in mem offset legal
    sw      a6,396(sp)
              #                    release a6 with n_97_0
              #                    occupy a6 with ans_99_9
              #                    load from ans_99_9 in mem


    lw      a6,112(sp)
              #                    occupy a4 with l_97_0
              #                    store to l_97_0 in mem offset legal
    sw      a4,404(sp)
              #                    release a4 with l_97_0
              #                    occupy a4 with ans_99_11
              #                    load from ans_99_11 in mem


    lw      a4,104(sp)
              #                    occupy a7 with a_99_2
              #                    store to a_99_2 in mem offset legal
    sw      a7,388(sp)
              #                    release a7 with a_99_2
              #                    occupy a7 with ans_99_10
              #                    load from ans_99_10 in mem


    lw      a7,108(sp)
    j       .while.exit_120
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: ans_99_4, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     600  label UP_97_0: 
.UP_97_0:
              #                     642  ans_99_12 = i32 ans_99_4 
              #                    occupy s2 with ans_99_4
              #                    occupy s4 with ans_99_12
    mv      s4, s2
              #                    free s2
              #                    occupy s2 with ans_99_4
              #                    store to ans_99_4 in mem offset legal
    sw      s2,128(sp)
              #                    release s2 with ans_99_4
              #                    free s4
              #                          jump label: while.exit_116 
              #                    occupy a3 with k_97_0
              #                    store to k_97_0 in mem offset legal
    sw      a3,408(sp)
              #                    release a3 with k_97_0
              #                    occupy s4 with ans_99_12
              #                    store to ans_99_12 in mem offset legal
    sw      s4,100(sp)
              #                    release s4 with ans_99_12
              #                    occupy a3 with ans_99_12
              #                    load from ans_99_12 in mem


    lw      a3,100(sp)
              #                    occupy a6 with n_97_0
              #                    store to n_97_0 in mem offset legal
    sw      a6,396(sp)
              #                    release a6 with n_97_0
              #                    occupy a6 with ans_99_9
              #                    load from ans_99_9 in mem


    lw      a6,112(sp)
              #                    occupy a4 with l_97_0
              #                    store to l_97_0 in mem offset legal
    sw      a4,404(sp)
              #                    release a4 with l_97_0
              #                    occupy a4 with ans_99_11
              #                    load from ans_99_11 in mem


    lw      a4,104(sp)
              #                    occupy a7 with a_99_2
              #                    store to a_99_2 in mem offset legal
    sw      a7,388(sp)
              #                    release a7 with a_99_2
              #                    occupy a7 with ans_99_10
              #                    load from ans_99_10 in mem


    lw      a7,108(sp)
    j       .while.exit_116
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s4:Freed { symidx: ans_99_3, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     601  label UP_98_0: 
.UP_98_0:
              #                     643  ans_99_13 = i32 ans_99_3 
              #                    occupy s4 with ans_99_3
              #                    occupy s2 with ans_99_13
    mv      s2, s4
              #                    free s4
              #                    occupy s4 with ans_99_3
              #                    store to ans_99_3 in mem offset legal
    sw      s4,132(sp)
              #                    release s4 with ans_99_3
              #                    free s2
              #                          jump label: while.exit_112 
              #                    occupy a2 with j_97_0
              #                    store to j_97_0 in mem offset legal
    sw      a2,412(sp)
              #                    release a2 with j_97_0
              #                    occupy s2 with ans_99_13
              #                    store to ans_99_13 in mem offset legal
    sw      s2,96(sp)
              #                    release s2 with ans_99_13
              #                    occupy a2 with ans_99_13
              #                    load from ans_99_13 in mem


    lw      a2,96(sp)
              #                    occupy a3 with k_97_0
              #                    store to k_97_0 in mem offset legal
    sw      a3,408(sp)
              #                    release a3 with k_97_0
              #                    occupy a3 with ans_99_12
              #                    load from ans_99_12 in mem


    lw      a3,100(sp)
              #                    occupy a6 with n_97_0
              #                    store to n_97_0 in mem offset legal
    sw      a6,396(sp)
              #                    release a6 with n_97_0
              #                    occupy a6 with ans_99_9
              #                    load from ans_99_9 in mem


    lw      a6,112(sp)
              #                    occupy a4 with l_97_0
              #                    store to l_97_0 in mem offset legal
    sw      a4,404(sp)
              #                    release a4 with l_97_0
              #                    occupy a4 with ans_99_11
              #                    load from ans_99_11 in mem


    lw      a4,104(sp)
              #                    occupy a7 with a_99_2
              #                    store to a_99_2 in mem offset legal
    sw      a7,388(sp)
              #                    release a7 with a_99_2
              #                    occupy a7 with ans_99_10
              #                    load from ans_99_10 in mem


    lw      a7,108(sp)
    j       .while.exit_112
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s2:Freed { symidx: ans_99_2, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |     s6:Freed { symidx: temp_57_cmp_107_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     602  label UP_99_0: 
.UP_99_0:
              #                     644  ans_99_14 = i32 ans_99_2 
              #                    occupy s2 with ans_99_2
              #                    occupy s4 with ans_99_14
    mv      s4, s2
              #                    free s2
              #                    occupy s2 with ans_99_2
              #                    store to ans_99_2 in mem offset legal
    sw      s2,136(sp)
              #                    release s2 with ans_99_2
              #                    free s4
              #                          jump label: while.exit_108 
              #                    occupy a2 with j_97_0
              #                    store to j_97_0 in mem offset legal
    sw      a2,412(sp)
              #                    release a2 with j_97_0
              #                    occupy a2 with ans_99_13
              #                    load from ans_99_13 in mem


    lw      a2,96(sp)
              #                    occupy a1 with i_97_0
              #                    store to i_97_0 in mem offset legal
    sw      a1,416(sp)
              #                    release a1 with i_97_0
              #                    occupy s4 with ans_99_14
              #                    store to ans_99_14 in mem offset legal
    sw      s4,92(sp)
              #                    release s4 with ans_99_14
              #                    occupy a1 with ans_99_14
              #                    load from ans_99_14 in mem


    lw      a1,92(sp)
              #                    occupy a3 with k_97_0
              #                    store to k_97_0 in mem offset legal
    sw      a3,408(sp)
              #                    release a3 with k_97_0
              #                    occupy a3 with ans_99_12
              #                    load from ans_99_12 in mem


    lw      a3,100(sp)
              #                    occupy a6 with n_97_0
              #                    store to n_97_0 in mem offset legal
    sw      a6,396(sp)
              #                    release a6 with n_97_0
              #                    occupy a6 with ans_99_9
              #                    load from ans_99_9 in mem


    lw      a6,112(sp)
              #                    occupy s6 with temp_57_cmp_107_0
              #                    store to temp_57_cmp_107_0 in mem offset legal
    sb      s6,18(sp)
              #                    release s6 with temp_57_cmp_107_0
              #                    occupy a4 with l_97_0
              #                    store to l_97_0 in mem offset legal
    sw      a4,404(sp)
              #                    release a4 with l_97_0
              #                    occupy a4 with ans_99_11
              #                    load from ans_99_11 in mem


    lw      a4,104(sp)
              #                    occupy a7 with a_99_2
              #                    store to a_99_2 in mem offset legal
    sw      a7,388(sp)
              #                    release a7 with a_99_2
              #                    occupy a7 with ans_99_10
              #                    load from ans_99_10 in mem


    lw      a7,108(sp)
    j       .while.exit_108
              #                    regtab     a0:Freed { symidx: h_97_0, tracked: true } |     a1:Freed { symidx: i_97_0, tracked: true } |     a2:Freed { symidx: j_97_0, tracked: true } |     a3:Freed { symidx: k_97_0, tracked: true } |     a4:Freed { symidx: l_97_0, tracked: true } |     a5:Freed { symidx: m_97_0, tracked: true } |     a6:Freed { symidx: n_97_0, tracked: true } |     a7:Freed { symidx: a_99_2, tracked: true } |     s1:Freed { symidx: ans_99_1, tracked: true } |     s3:Freed { symidx: temp_56_cmp_103_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     603  label UP_100_0: 
.UP_100_0:
              #                     660  untrack k_97_0 
              #                    occupy a3 with k_97_0
              #                    release a3 with k_97_0
              #                     659  untrack a_99_2 
              #                    occupy a7 with a_99_2
              #                    release a7 with a_99_2
              #                     658  untrack i_97_0 
              #                    occupy a1 with i_97_0
              #                    release a1 with i_97_0
              #                     657  untrack m_97_0 
              #                    occupy a5 with m_97_0
              #                    release a5 with m_97_0
              #                     656  untrack n_97_0 
              #                    occupy a6 with n_97_0
              #                    release a6 with n_97_0
              #                     655  untrack h_97_0 
              #                    occupy a0 with h_97_0
              #                    release a0 with h_97_0
              #                     654  untrack l_97_0 
              #                    occupy a4 with l_97_0
              #                    release a4 with l_97_0
              #                     653  untrack j_97_0 
              #                    occupy a2 with j_97_0
              #                    release a2 with j_97_0
              #                     645  ans_99_15 = i32 ans_99_1 
              #                    occupy s1 with ans_99_1
              #                    occupy a0 with ans_99_15
    mv      a0, s1
              #                    free s1
              #                    free a0
              #                     701  untrack ans_99_1 
              #                    occupy s1 with ans_99_1
              #                    release s1 with ans_99_1
              #                          jump label: while.exit_104 
              #                    occupy s1 with ans_99_1
              #                    load from ans_99_1 in mem


    lw      s1,140(sp)
              #                    occupy a2 with ans_99_13
              #                    load from ans_99_13 in mem


    lw      a2,96(sp)
              #                    occupy s3 with temp_56_cmp_103_0
              #                    store to temp_56_cmp_103_0 in mem offset legal
    sb      s3,19(sp)
              #                    release s3 with temp_56_cmp_103_0
              #                    occupy a1 with ans_99_14
              #                    load from ans_99_14 in mem


    lw      a1,92(sp)
              #                    occupy a0 with ans_99_15
              #                    store to ans_99_15 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with ans_99_15
              #                    occupy a0 with h_97_0
              #                    load from h_97_0 in mem


    lw      a0,420(sp)
              #                    occupy s2 with ans_99_15
              #                    load from ans_99_15 in mem


    lw      s2,88(sp)
              #                    occupy a3 with ans_99_12
              #                    load from ans_99_12 in mem


    lw      a3,100(sp)
              #                    occupy a6 with ans_99_9
              #                    load from ans_99_9 in mem


    lw      a6,112(sp)
              #                    occupy a5 with m_97_0
              #                    load from m_97_0 in mem


    lw      a5,400(sp)
              #                    occupy a4 with ans_99_11
              #                    load from ans_99_11 in mem


    lw      a4,104(sp)
              #                    occupy a7 with ans_99_10
              #                    load from ans_99_10 in mem


    lw      a7,108(sp)
    j       .while.exit_104
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     23   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 48|s0_main:8 at 40|temp_70_ret_of_getint _s161 _i0:4 at 36|temp_71_ret_of_getint _s161 _i0:4 at 32|temp_72_ret_of_getint _s161 _i0:4 at 28|temp_73_ret_of_getint _s161 _i0:4 at 24|temp_74_ret_of_getint _s161 _i0:4 at 20|temp_75_ret_of_getint _s161 _i0:4 at 16|temp_76_ret_of_getint _s161 _i0:4 at 12|temp_77_ret_of_getint _s161 _i0:4 at 8|temp_78_ret_of_getint _s161 _i0:4 at 4|temp_79_ret_of_loop3 _s161 _i0:4 at 0
    addi    sp,sp,-56
              #                    store to ra_main_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     419  arr2_0_10 = chi arr2_0_0:23 
              #                     420  arr1_0_10 = chi arr1_0_0:23 
              #                     371  alloc i32 [temp_70_ret_of_getint_161] 
              #                     374  alloc i32 [x_161] 
              #                     375  alloc i32 [temp_71_ret_of_getint_161] 
              #                     378  alloc i32 [y_161] 
              #                     379  alloc i32 [temp_72_ret_of_getint_161] 
              #                     382  alloc i32 [h_161] 
              #                     383  alloc i32 [temp_73_ret_of_getint_161] 
              #                     386  alloc i32 [i_161] 
              #                     387  alloc i32 [temp_74_ret_of_getint_161] 
              #                     390  alloc i32 [j_161] 
              #                     391  alloc i32 [temp_75_ret_of_getint_161] 
              #                     394  alloc i32 [k_161] 
              #                     395  alloc i32 [temp_76_ret_of_getint_161] 
              #                     398  alloc i32 [l_161] 
              #                     399  alloc i32 [temp_77_ret_of_getint_161] 
              #                     402  alloc i32 [m_161] 
              #                     403  alloc i32 [temp_78_ret_of_getint_161] 
              #                     406  alloc i32 [n_161] 
              #                     410  alloc i32 [temp_79_ret_of_loop3_161] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     372  temp_70_ret_of_getint_161_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     373  (nop) 
              #                     376  temp_71_ret_of_getint_161_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_70_ret_of_getint_161_0
              #                    store to temp_70_ret_of_getint_161_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_70_ret_of_getint_161_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     377  (nop) 
              #                     380  temp_72_ret_of_getint_161_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_71_ret_of_getint_161_0
              #                    store to temp_71_ret_of_getint_161_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_71_ret_of_getint_161_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     381  (nop) 
              #                     384  temp_73_ret_of_getint_161_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_72_ret_of_getint_161_0
              #                    store to temp_72_ret_of_getint_161_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_72_ret_of_getint_161_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     385  (nop) 
              #                     388  temp_74_ret_of_getint_161_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_73_ret_of_getint_161_0
              #                    store to temp_73_ret_of_getint_161_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_73_ret_of_getint_161_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     389  (nop) 
              #                     392  temp_75_ret_of_getint_161_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_74_ret_of_getint_161_0
              #                    store to temp_74_ret_of_getint_161_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_74_ret_of_getint_161_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     393  (nop) 
              #                     396  temp_76_ret_of_getint_161_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_75_ret_of_getint_161_0
              #                    store to temp_75_ret_of_getint_161_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_75_ret_of_getint_161_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     397  (nop) 
              #                     400  temp_77_ret_of_getint_161_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_76_ret_of_getint_161_0
              #                    store to temp_76_ret_of_getint_161_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_76_ret_of_getint_161_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     401  (nop) 
              #                     404  temp_78_ret_of_getint_161_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_77_ret_of_getint_161_0
              #                    store to temp_77_ret_of_getint_161_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_77_ret_of_getint_161_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     405  (nop) 
              #                     407   Call void loop1_0(temp_70_ret_of_getint_161_0, temp_71_ret_of_getint_161_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_78_ret_of_getint_161_0
              #                    store to temp_78_ret_of_getint_161_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_78_ret_of_getint_161_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_70_ret_of_getint_161_0_0
              #                    load from temp_70_ret_of_getint_161_0 in mem


    lw      a0,36(sp)
              #                    occupy a1 with _anonymous_of_temp_71_ret_of_getint_161_0_0
              #                    load from temp_71_ret_of_getint_161_0 in mem


    lw      a1,32(sp)
              #                    arg load ended


    call    loop1
              #                     706  untrack temp_70_ret_of_getint_161_0 
              #                     705  untrack temp_71_ret_of_getint_161_0 
              #                     421  mu arr1_0_10:407 
              #                     422  arr1_0_11 = chi arr1_0_10:407 
              #                     408   Call void loop2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    loop2
              #                     423  mu arr2_0_10:408 
              #                     424  arr2_0_11 = chi arr2_0_10:408 
              #                     411  temp_79_ret_of_loop3_161_0 =  Call i32 loop3_0(temp_72_ret_of_getint_161_0, temp_73_ret_of_getint_161_0, temp_74_ret_of_getint_161_0, temp_75_ret_of_getint_161_0, temp_76_ret_of_getint_161_0, temp_77_ret_of_getint_161_0, temp_78_ret_of_getint_161_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_72_ret_of_getint_161_0_0
              #                    load from temp_72_ret_of_getint_161_0 in mem


    lw      a0,28(sp)
              #                    occupy a1 with _anonymous_of_temp_73_ret_of_getint_161_0_0
              #                    load from temp_73_ret_of_getint_161_0 in mem


    lw      a1,24(sp)
              #                    occupy a2 with _anonymous_of_temp_74_ret_of_getint_161_0_0
              #                    load from temp_74_ret_of_getint_161_0 in mem


    lw      a2,20(sp)
              #                    occupy a3 with _anonymous_of_temp_75_ret_of_getint_161_0_0
              #                    load from temp_75_ret_of_getint_161_0 in mem


    lw      a3,16(sp)
              #                    occupy a4 with _anonymous_of_temp_76_ret_of_getint_161_0_0
              #                    load from temp_76_ret_of_getint_161_0 in mem


    lw      a4,12(sp)
              #                    occupy a5 with _anonymous_of_temp_77_ret_of_getint_161_0_0
              #                    load from temp_77_ret_of_getint_161_0 in mem


    lw      a5,8(sp)
              #                    occupy a6 with _anonymous_of_temp_78_ret_of_getint_161_0_0
              #                    load from temp_78_ret_of_getint_161_0 in mem


    lw      a6,4(sp)
              #                    arg load ended


    call    loop3
              #                     710  untrack temp_75_ret_of_getint_161_0 
              #                     709  untrack temp_73_ret_of_getint_161_0 
              #                     708  untrack temp_74_ret_of_getint_161_0 
              #                     707  untrack temp_77_ret_of_getint_161_0 
              #                     704  untrack temp_72_ret_of_getint_161_0 
              #                     703  untrack temp_76_ret_of_getint_161_0 
              #                     702  untrack temp_78_ret_of_getint_161_0 
              #                     425  mu arr2_0_11:411 
              #                     426  mu arr1_0_11:411 
              #                     427  mu arr2_0_11:412 
              #                     428  mu arr1_0_11:412 
              #                     412  ret temp_79_ret_of_loop3_161_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with temp_79_ret_of_loop3_161_0
              #                    store to temp_79_ret_of_loop3_161_0 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_79_ret_of_loop3_161_0
              #                    occupy a0 with temp_79_ret_of_loop3_161_0
              #                    load from temp_79_ret_of_loop3_161_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,56
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl arr2
              #                     18   global Array:i32:[Some(10_0), Some(2_0), Some(3_0), Some(2_0), Some(4_0), Some(8_0), Some(7_0)] arr2_0 
    .type arr2,@object
arr2:
    .zero 107520
    .align 4
    .globl arr1
              #                     16   global Array:i32:[Some(10_0), Some(2_0), Some(3_0), Some(4_0), Some(5_0), Some(6_0), Some(2_0)] arr1_0 
    .type arr1,@object
arr1:
    .zero 57600
