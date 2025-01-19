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
              #                     30   Define my_memset_0 "arr_22,val_22_0,n_22_0," -> my_memset_ret_0 
    .globl my_memset
    .type my_memset,@function
my_memset:
              #                    mem layout:|ra_my_memset:8 at 72|s0_my_memset:8 at 64|arr:8 at 56|arr:8 at 48|arr:8 at 40|arr:8 at 32|val _s22 _i0:4 at 28|n _s22 _i0:4 at 24|i _s24 _i1:4 at 20|none:4 at 16|temp_0_ptr_of_arr_22:8 at 8|temp_1_arithop _s28 _i0:4 at 4|temp_2_cmp _s26 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-80
              #                    store to ra_my_memset_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_my_memset_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                     36   alloc i32 [i_24] 
              #                     37   alloc ptr->i32 [temp_0_ptr_of_arr_22_28] 
              #                     41   alloc i32 [temp_1_arithop_28] 
              #                     44   alloc i1 [temp_2_cmp_26] 
              #                    regtab     a0:Freed { symidx: arr_22, tracked: true } |     a1:Freed { symidx: val_22_0, tracked: true } |     a2:Freed { symidx: n_22_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L13_0: 
.L13_0:
              #                     29    
              #                     35   (nop) 
              #                     426  i_24_1 = i32 0_0 
              #                    occupy a3 with i_24_1
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_27 
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: arr_22, tracked: true } |     a1:Freed { symidx: val_22_0, tracked: true } |     a2:Freed { symidx: n_22_0, tracked: true } |     a3:Freed { symidx: i_24_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     46   label while.head_27: 
.while.head_27:
              #                     45   temp_2_cmp_26_0 = icmp i32 Slt i_24_1, n_22_0 
              #                    occupy a3 with i_24_1
              #                    occupy a2 with n_22_0
              #                    occupy a4 with temp_2_cmp_26_0
    slt     a4,a3,a2
              #                    free a3
              #                    free a2
              #                    free a4
              #                     49   br i1 temp_2_cmp_26_0, label while.body_27, label while.exit_27 
              #                    occupy a4 with temp_2_cmp_26_0
              #                    free a4
              #                    occupy a4 with temp_2_cmp_26_0
    bnez    a4, .while.body_27
              #                    free a4
    j       .while.exit_27
              #                    regtab     a0:Freed { symidx: arr_22, tracked: true } |     a1:Freed { symidx: val_22_0, tracked: true } |     a2:Freed { symidx: n_22_0, tracked: true } |     a3:Freed { symidx: i_24_1, tracked: true } |     a4:Freed { symidx: temp_2_cmp_26_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     47   label while.body_27: 
.while.body_27:
              #                     38   temp_0_ptr_of_arr_22_28 = GEP arr_22:ptr->i32 [Some(i_24_1)] 
              #                    occupy a5 with temp_0_ptr_of_arr_22_28
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_24_1
    mv      a6, a3
              #                    free a3
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a0 with arr_22
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                     39   store val_22_0:i32 temp_0_ptr_of_arr_22_28:ptr->i32 
              #                    occupy a5 with temp_0_ptr_of_arr_22_28
              #                    occupy a1 with val_22_0
    sw      a1,0(a5)
              #                    free a1
              #                    free a5
              #                     40   arr_22 = chi arr_22:39 
              #                     42   temp_1_arithop_28_0 = Add i32 i_24_1, 1_0 
              #                    occupy a3 with i_24_1
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_1_arithop_28_0
    ADDW    s1,a3,a7
              #                    free a3
              #                    free a7
              #                    free s1
              #                     43   (nop) 
              #                     427  i_24_1 = i32 temp_1_arithop_28_0 
              #                    occupy s1 with temp_1_arithop_28_0
              #                    occupy a3 with i_24_1
    mv      a3, s1
              #                    free s1
              #                    free a3
              #                          jump label: while.head_27 
              #                    occupy a4 with temp_2_cmp_26_0
              #                    store to temp_2_cmp_26_0 in mem offset legal
    sb      a4,3(sp)
              #                    release a4 with temp_2_cmp_26_0
              #                    occupy s1 with temp_1_arithop_28_0
              #                    store to temp_1_arithop_28_0 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_1_arithop_28_0
              #                    occupy a5 with temp_0_ptr_of_arr_22_28
              #                    store to temp_0_ptr_of_arr_22_28 in mem offset legal
    sd      a5,8(sp)
              #                    release a5 with temp_0_ptr_of_arr_22_28
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: arr_22, tracked: true } |     a1:Freed { symidx: val_22_0, tracked: true } |     a2:Freed { symidx: n_22_0, tracked: true } |     a3:Freed { symidx: i_24_1, tracked: true } |     a4:Freed { symidx: temp_2_cmp_26_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     48   label while.exit_27: 
.while.exit_27:
              #                     440  untrack i_24_1 
              #                    occupy a3 with i_24_1
              #                    release a3 with i_24_1
              #                     439  untrack n_22_0 
              #                    occupy a2 with n_22_0
              #                    release a2 with n_22_0
              #                     438  untrack val_22_0 
              #                    occupy a1 with val_22_0
              #                    release a1 with val_22_0
              #                     346  mu arr_22:50 
              #                     441  untrack arr_22 
              #                    occupy a0 with arr_22
              #                    release a0 with arr_22
              #                     50   ret 
              #                    load from ra_my_memset_0 in mem
    ld      ra,72(sp)
              #                    load from s0_my_memset_0 in mem
    ld      s0,64(sp)
    addi    sp,sp,80
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     31   Define add_node_0 "u_31_0,v_31_0,c_31_0," -> add_node_ret_0 
    .globl add_node
    .type add_node,@function
add_node:
              #                    mem layout:|ra_add_node:8 at 200|s0_add_node:8 at 192|u _s31 _i0:4 at 188|v _s31 _i0:4 at 184|c _s31 _i0:4 at 180|none:4 at 176|temp_3_ptr_of_*size_0:8 at 168|temp_4_ele_of_*size_0 _s33 _i0:4 at 164|none:4 at 160|temp_5_ptr_of_*to_0:8 at 152|temp_6_ptr_of_*size_0:8 at 144|temp_8_ptr_of_*cap_0:8 at 136|temp_9_ptr_of_*size_0:8 at 128|temp_11_ptr_of_*rev_0:8 at 120|temp_12_ptr_of_*size_0:8 at 112|temp_13_ele_of_*size_0 _s33 _i0:4 at 108|none:4 at 104|temp_14_ptr_of_*size_0:8 at 96|temp_16_ptr_of_*to_0:8 at 88|temp_17_ptr_of_*size_0:8 at 80|temp_19_ptr_of_*cap_0:8 at 72|temp_20_ptr_of_*size_0:8 at 64|temp_22_ptr_of_*rev_0:8 at 56|temp_23_ptr_of_*size_0:8 at 48|temp_25_ptr_of_*size_0:8 at 40|temp_26_ptr_of_*size_0:8 at 32|temp_28_arithop _s33 _i0:4 at 28|none:4 at 24|temp_29_ptr_of_*size_0:8 at 16|temp_30_ptr_of_*size_0:8 at 8|temp_31_ele_of_*size_0 _s33 _i0:4 at 4|temp_32_arithop _s33 _i0:4 at 0
    addi    sp,sp,-208
              #                    store to ra_add_node_0 in mem offset legal
    sd      ra,200(sp)
              #                    store to s0_add_node_0 in mem offset legal
    sd      s0,192(sp)
    addi    s0,sp,208
              #                     347  size_0_1 = chi size_0_0:31 
              #                     348  rev_0_1 = chi rev_0_0:31 
              #                     349  to_0_1 = chi to_0_0:31 
              #                     350  cap_0_1 = chi cap_0_0:31 
              #                     51   alloc ptr->i32 [temp_3_ptr_of_*size_0_33] 
              #                     53   alloc i32 [temp_4_ele_of_*size_0_33] 
              #                     56   alloc ptr->i32 [temp_5_ptr_of_*to_0_33] 
              #                     60   alloc ptr->i32 [temp_6_ptr_of_*size_0_33] 
              #                     62   alloc i32 [temp_7_ele_of_*size_0_33] 
              #                     65   alloc ptr->i32 [temp_8_ptr_of_*cap_0_33] 
              #                     69   alloc ptr->i32 [temp_9_ptr_of_*size_0_33] 
              #                     71   alloc i32 [temp_10_ele_of_*size_0_33] 
              #                     74   alloc ptr->i32 [temp_11_ptr_of_*rev_0_33] 
              #                     76   alloc ptr->i32 [temp_12_ptr_of_*size_0_33] 
              #                     78   alloc i32 [temp_13_ele_of_*size_0_33] 
              #                     83   alloc ptr->i32 [temp_14_ptr_of_*size_0_33] 
              #                     85   alloc i32 [temp_15_ele_of_*size_0_33] 
              #                     88   alloc ptr->i32 [temp_16_ptr_of_*to_0_33] 
              #                     92   alloc ptr->i32 [temp_17_ptr_of_*size_0_33] 
              #                     94   alloc i32 [temp_18_ele_of_*size_0_33] 
              #                     97   alloc ptr->i32 [temp_19_ptr_of_*cap_0_33] 
              #                     101  alloc ptr->i32 [temp_20_ptr_of_*size_0_33] 
              #                     103  alloc i32 [temp_21_ele_of_*size_0_33] 
              #                     106  alloc ptr->i32 [temp_22_ptr_of_*rev_0_33] 
              #                     108  alloc ptr->i32 [temp_23_ptr_of_*size_0_33] 
              #                     110  alloc i32 [temp_24_ele_of_*size_0_33] 
              #                     115  alloc ptr->i32 [temp_25_ptr_of_*size_0_33] 
              #                     117  alloc ptr->i32 [temp_26_ptr_of_*size_0_33] 
              #                     119  alloc i32 [temp_27_ele_of_*size_0_33] 
              #                     122  alloc i32 [temp_28_arithop_33] 
              #                     126  alloc ptr->i32 [temp_29_ptr_of_*size_0_33] 
              #                     128  alloc ptr->i32 [temp_30_ptr_of_*size_0_33] 
              #                     130  alloc i32 [temp_31_ele_of_*size_0_33] 
              #                     133  alloc i32 [temp_32_arithop_33] 
              #                    regtab     a0:Freed { symidx: u_31_0, tracked: true } |     a1:Freed { symidx: v_31_0, tracked: true } |     a2:Freed { symidx: c_31_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L12_0: 
.L12_0:
              #                     52   temp_3_ptr_of_*size_0_33 = GEP *size_0:Array:i32:[None] [Some(u_31_0)] 
              #                    occupy a3 with temp_3_ptr_of_*size_0_33
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with u_31_0
    mv      a4, a0
              #                    free a0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *size_0
              #                       load label size as ptr to reg
    la      a5, size
              #                    occupy reg a5 with *size_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     54   temp_4_ele_of_*size_0_33_0 = load temp_3_ptr_of_*size_0_33:ptr->i32 
              #                    occupy a3 with temp_3_ptr_of_*size_0_33
              #                    occupy a6 with temp_4_ele_of_*size_0_33_0
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     55   mu size_0_1:54 
              #                     57   temp_5_ptr_of_*to_0_33 = GEP *to_0:ptr->Array:i32:[Some(10_0)] [Some(u_31_0), Some(temp_4_ele_of_*size_0_33_0)] 
              #                    occupy a7 with temp_5_ptr_of_*to_0_33
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with 10_0
    li      s2, 10
              #                    occupy a0 with u_31_0
    mul     s1,s2,a0
              #                    free s2
              #                    free a0
    add     a7,a7,s1
              #                    free s1
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with temp_4_ele_of_*size_0_33_0
    mv      s3, a6
              #                    free a6
    add     a7,a7,s3
              #                    free s3
    slli a7,a7,2
              #                    occupy s4 with *to_0
              #                       load label to as ptr to reg
    la      s4, to
              #                    occupy reg s4 with *to_0
    add     a7,a7,s4
              #                    free s4
              #                    free a7
              #                     58   store v_31_0:i32 temp_5_ptr_of_*to_0_33:ptr->i32 
              #                    occupy a7 with temp_5_ptr_of_*to_0_33
              #                    occupy a1 with v_31_0
    sw      a1,0(a7)
              #                    free a1
              #                    free a7
              #                     450  untrack temp_5_ptr_of_*to_0_33 
              #                    occupy a7 with temp_5_ptr_of_*to_0_33
              #                    release a7 with temp_5_ptr_of_*to_0_33
              #                     59   to_0_2 = chi to_0_1:58 
              #                     61   (nop) 
              #                     63   (nop) 
              #                     64   mu size_0_1:63 
              #                     66   temp_8_ptr_of_*cap_0_33 = GEP *cap_0:ptr->Array:i32:[Some(10_0)] [Some(u_31_0), Some(temp_4_ele_of_*size_0_33_0)] 
              #                    occupy a7 with temp_8_ptr_of_*cap_0_33
    li      a7, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    found literal reg Some(s2) already exist with 10_0
              #                    occupy s2 with 10_0
              #                    occupy a0 with u_31_0
    mul     s5,s2,a0
              #                    free s2
              #                    free a0
    add     a7,a7,s5
              #                    free s5
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with temp_4_ele_of_*size_0_33_0
    mv      s6, a6
              #                    free a6
    add     a7,a7,s6
              #                    free s6
    slli a7,a7,2
              #                    occupy s7 with *cap_0
              #                       load label cap as ptr to reg
    la      s7, cap
              #                    occupy reg s7 with *cap_0
    add     a7,a7,s7
              #                    free s7
              #                    free a7
              #                     67   store c_31_0:i32 temp_8_ptr_of_*cap_0_33:ptr->i32 
              #                    occupy a7 with temp_8_ptr_of_*cap_0_33
              #                    occupy a2 with c_31_0
    sw      a2,0(a7)
              #                    free a2
              #                    free a7
              #                     449  untrack c_31_0 
              #                    occupy a2 with c_31_0
              #                    release a2 with c_31_0
              #                     447  untrack temp_8_ptr_of_*cap_0_33 
              #                    occupy a7 with temp_8_ptr_of_*cap_0_33
              #                    release a7 with temp_8_ptr_of_*cap_0_33
              #                     68   cap_0_2 = chi cap_0_1:67 
              #                     70   (nop) 
              #                     72   (nop) 
              #                     73   mu size_0_1:72 
              #                     75   temp_11_ptr_of_*rev_0_33 = GEP *rev_0:ptr->Array:i32:[Some(10_0)] [Some(u_31_0), Some(temp_4_ele_of_*size_0_33_0)] 
              #                    occupy a2 with temp_11_ptr_of_*rev_0_33
    li      a2, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    found literal reg Some(s2) already exist with 10_0
              #                    occupy s2 with 10_0
              #                    occupy a0 with u_31_0
    mul     a7,s2,a0
              #                    free s2
              #                    free a0
    add     a2,a2,a7
              #                    free a7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with temp_4_ele_of_*size_0_33_0
    mv      s7, a6
              #                    free a6
              #                    occupy a6 with temp_4_ele_of_*size_0_33_0
              #                    store to temp_4_ele_of_*size_0_33_0 in mem offset legal
    sw      a6,164(sp)
              #                    release a6 with temp_4_ele_of_*size_0_33_0
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
              #                    occupy a6 with *rev_0
              #                       load label rev as ptr to reg
    la      a6, rev
              #                    occupy reg a6 with *rev_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                     77   temp_12_ptr_of_*size_0_33 = GEP *size_0:Array:i32:[None] [Some(v_31_0)] 
              #                    occupy a6 with temp_12_ptr_of_*size_0_33
    li      a6, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with v_31_0
    mv      s8, a1
              #                    free a1
              #                    occupy a1 with v_31_0
              #                    store to v_31_0 in mem offset legal
    sw      a1,184(sp)
              #                    release a1 with v_31_0
    add     a6,a6,s8
              #                    free s8
    slli a6,a6,2
              #                    occupy a1 with *size_0
              #                       load label size as ptr to reg
    la      a1, size
              #                    occupy reg a1 with *size_0
    add     a6,a6,a1
              #                    free a1
              #                    free a6
              #                     79   temp_13_ele_of_*size_0_33_0 = load temp_12_ptr_of_*size_0_33:ptr->i32 
              #                    occupy a6 with temp_12_ptr_of_*size_0_33
              #                    occupy a1 with temp_13_ele_of_*size_0_33_0
    lw      a1,0(a6)
              #                    free a1
              #                    occupy a1 with temp_13_ele_of_*size_0_33_0
              #                    store to temp_13_ele_of_*size_0_33_0 in mem offset legal
    sw      a1,108(sp)
              #                    release a1 with temp_13_ele_of_*size_0_33_0
              #                    free a6
              #                     80   mu size_0_1:79 
              #                     81   store temp_13_ele_of_*size_0_33_0:i32 temp_11_ptr_of_*rev_0_33:ptr->i32 
              #                    occupy a2 with temp_11_ptr_of_*rev_0_33
              #                    occupy a1 with temp_13_ele_of_*size_0_33_0
              #                    load from temp_13_ele_of_*size_0_33_0 in mem


    lw      a1,108(sp)
    sw      a1,0(a2)
              #                    free a1
              #                    occupy a1 with temp_13_ele_of_*size_0_33_0
              #                    store to temp_13_ele_of_*size_0_33_0 in mem offset legal
    sw      a1,108(sp)
              #                    release a1 with temp_13_ele_of_*size_0_33_0
              #                    free a2
              #                     446  untrack temp_11_ptr_of_*rev_0_33 
              #                    occupy a2 with temp_11_ptr_of_*rev_0_33
              #                    release a2 with temp_11_ptr_of_*rev_0_33
              #                     82   rev_0_2 = chi rev_0_1:81 
              #                     84   (nop) 
              #                     86   (nop) 
              #                     87   mu size_0_1:86 
              #                     89   temp_16_ptr_of_*to_0_33 = GEP *to_0:ptr->Array:i32:[Some(10_0)] [Some(v_31_0), Some(temp_13_ele_of_*size_0_33_0)] 
              #                    occupy a1 with temp_16_ptr_of_*to_0_33
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    found literal reg Some(s2) already exist with 10_0
              #                    occupy s2 with 10_0
              #                    occupy s8 with v_31_0
              #                    load from v_31_0 in mem


    lw      s8,184(sp)
    mul     a2,s2,s8
              #                    free s2
              #                    free s8
              #                    occupy s8 with v_31_0
              #                    store to v_31_0 in mem offset legal
    sw      s8,184(sp)
              #                    release s8 with v_31_0
    add     a1,a1,a2
              #                    free a2
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with temp_13_ele_of_*size_0_33_0
              #                    load from temp_13_ele_of_*size_0_33_0 in mem


    lw      s8,108(sp)
    mv      s2, s8
              #                    free s8
              #                    occupy s8 with temp_13_ele_of_*size_0_33_0
              #                    store to temp_13_ele_of_*size_0_33_0 in mem offset legal
    sw      s8,108(sp)
              #                    release s8 with temp_13_ele_of_*size_0_33_0
    add     a1,a1,s2
              #                    free s2
    slli a1,a1,2
              #                    occupy s2 with *to_0
              #                       load label to as ptr to reg
    la      s2, to
              #                    occupy reg s2 with *to_0
    add     a1,a1,s2
              #                    free s2
              #                    free a1
              #                     90   store u_31_0:i32 temp_16_ptr_of_*to_0_33:ptr->i32 
              #                    occupy a1 with temp_16_ptr_of_*to_0_33
              #                    occupy a0 with u_31_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     451  untrack temp_16_ptr_of_*to_0_33 
              #                    occupy a1 with temp_16_ptr_of_*to_0_33
              #                    release a1 with temp_16_ptr_of_*to_0_33
              #                     443  untrack u_31_0 
              #                    occupy a0 with u_31_0
              #                    release a0 with u_31_0
              #                     91   to_0_3 = chi to_0_2:90 
              #                     93   (nop) 
              #                     95   (nop) 
              #                     96   mu size_0_1:95 
              #                     98   temp_19_ptr_of_*cap_0_33 = GEP *cap_0:ptr->Array:i32:[Some(10_0)] [Some(v_31_0), Some(temp_13_ele_of_*size_0_33_0)] 
              #                    occupy a0 with temp_19_ptr_of_*cap_0_33
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with 10_0
    li      s2, 10
              #                    occupy s8 with v_31_0
              #                    load from v_31_0 in mem


    lw      s8,184(sp)
    mul     a1,s2,s8
              #                    free s2
              #                    free s8
              #                    occupy s8 with v_31_0
              #                    store to v_31_0 in mem offset legal
    sw      s8,184(sp)
              #                    release s8 with v_31_0
    add     a0,a0,a1
              #                    free a1
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with temp_13_ele_of_*size_0_33_0
              #                    load from temp_13_ele_of_*size_0_33_0 in mem


    lw      s8,108(sp)
    mv      s2, s8
              #                    free s8
              #                    occupy s8 with temp_13_ele_of_*size_0_33_0
              #                    store to temp_13_ele_of_*size_0_33_0 in mem offset legal
    sw      s8,108(sp)
              #                    release s8 with temp_13_ele_of_*size_0_33_0
    add     a0,a0,s2
              #                    free s2
    slli a0,a0,2
              #                    occupy s2 with *cap_0
              #                       load label cap as ptr to reg
    la      s2, cap
              #                    occupy reg s2 with *cap_0
    add     a0,a0,s2
              #                    free s2
              #                    free a0
              #                     99   store 0_0:i32 temp_19_ptr_of_*cap_0_33:ptr->i32 
              #                    occupy a0 with temp_19_ptr_of_*cap_0_33
              #                    occupy s2 with 0_0
    li      s2, 0
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     457  untrack temp_19_ptr_of_*cap_0_33 
              #                    occupy a0 with temp_19_ptr_of_*cap_0_33
              #                    release a0 with temp_19_ptr_of_*cap_0_33
              #                     100  cap_0_3 = chi cap_0_2:99 
              #                     102  (nop) 
              #                     104  (nop) 
              #                     105  mu size_0_1:104 
              #                     107  temp_22_ptr_of_*rev_0_33 = GEP *rev_0:ptr->Array:i32:[Some(10_0)] [Some(v_31_0), Some(temp_13_ele_of_*size_0_33_0)] 
              #                    occupy a0 with temp_22_ptr_of_*rev_0_33
    li      a0, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with 10_0
    li      s8, 10
              #                    occupy s9 with v_31_0
              #                    load from v_31_0 in mem


    lw      s9,184(sp)
    mul     s2,s8,s9
              #                    free s8
              #                    free s9
              #                    occupy s9 with v_31_0
              #                    store to v_31_0 in mem offset legal
    sw      s9,184(sp)
              #                    release s9 with v_31_0
    add     a0,a0,s2
              #                    free s2
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with temp_13_ele_of_*size_0_33_0
              #                    load from temp_13_ele_of_*size_0_33_0 in mem


    lw      s8,108(sp)
    mv      s2, s8
              #                    free s8
              #                    occupy s8 with temp_13_ele_of_*size_0_33_0
              #                    store to temp_13_ele_of_*size_0_33_0 in mem offset legal
    sw      s8,108(sp)
              #                    release s8 with temp_13_ele_of_*size_0_33_0
    add     a0,a0,s2
              #                    free s2
    slli a0,a0,2
              #                    occupy s2 with *rev_0
              #                       load label rev as ptr to reg
    la      s2, rev
              #                    occupy reg s2 with *rev_0
    add     a0,a0,s2
              #                    free s2
              #                    free a0
              #                     455  untrack v_31_0 
              #                     442  untrack temp_13_ele_of_*size_0_33_0 
              #                     109  (nop) 
              #                     111  (nop) 
              #                     112  mu size_0_1:111 
              #                     113  store temp_4_ele_of_*size_0_33_0:i32 temp_22_ptr_of_*rev_0_33:ptr->i32 
              #                    occupy a0 with temp_22_ptr_of_*rev_0_33
              #                    occupy s2 with temp_4_ele_of_*size_0_33_0
              #                    load from temp_4_ele_of_*size_0_33_0 in mem


    lw      s2,164(sp)
    sw      s2,0(a0)
              #                    free s2
              #                    occupy s2 with temp_4_ele_of_*size_0_33_0
              #                    store to temp_4_ele_of_*size_0_33_0 in mem offset legal
    sw      s2,164(sp)
              #                    release s2 with temp_4_ele_of_*size_0_33_0
              #                    free a0
              #                     452  untrack temp_22_ptr_of_*rev_0_33 
              #                    occupy a0 with temp_22_ptr_of_*rev_0_33
              #                    release a0 with temp_22_ptr_of_*rev_0_33
              #                     114  rev_0_3 = chi rev_0_2:113 
              #                     116  (nop) 
              #                     118  (nop) 
              #                     120  (nop) 
              #                     121  mu size_0_1:120 
              #                     123  temp_28_arithop_33_0 = Add i32 temp_4_ele_of_*size_0_33_0, 1_0 
              #                    occupy a0 with temp_4_ele_of_*size_0_33_0
              #                    load from temp_4_ele_of_*size_0_33_0 in mem


    lw      a0,164(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s8 with temp_28_arithop_33_0
    ADDW    s8,a0,s2
              #                    free a0
              #                    occupy a0 with temp_4_ele_of_*size_0_33_0
              #                    store to temp_4_ele_of_*size_0_33_0 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_4_ele_of_*size_0_33_0
              #                    free s2
              #                    free s8
              #                     454  untrack temp_4_ele_of_*size_0_33_0 
              #                     124  store temp_28_arithop_33_0:i32 temp_3_ptr_of_*size_0_33:ptr->i32 
              #                    occupy a3 with temp_3_ptr_of_*size_0_33
              #                    occupy s8 with temp_28_arithop_33_0
    sw      s8,0(a3)
              #                    free s8
              #                    free a3
              #                     456  untrack temp_28_arithop_33_0 
              #                    occupy s8 with temp_28_arithop_33_0
              #                    release s8 with temp_28_arithop_33_0
              #                     445  untrack temp_3_ptr_of_*size_0_33 
              #                    occupy a3 with temp_3_ptr_of_*size_0_33
              #                    release a3 with temp_3_ptr_of_*size_0_33
              #                     125  size_0_2 = chi size_0_1:124 
              #                     127  (nop) 
              #                     129  (nop) 
              #                     131  temp_31_ele_of_*size_0_33_0 = load temp_12_ptr_of_*size_0_33:ptr->i32 
              #                    occupy a6 with temp_12_ptr_of_*size_0_33
              #                    occupy a0 with temp_31_ele_of_*size_0_33_0
    lw      a0,0(a6)
              #                    free a0
              #                    free a6
              #                     132  mu size_0_2:131 
              #                     134  temp_32_arithop_33_0 = Add i32 temp_31_ele_of_*size_0_33_0, 1_0 
              #                    occupy a0 with temp_31_ele_of_*size_0_33_0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy s2 with temp_32_arithop_33_0
    ADDW    s2,a0,a3
              #                    free a0
              #                    occupy a0 with temp_31_ele_of_*size_0_33_0
              #                    store to temp_31_ele_of_*size_0_33_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_31_ele_of_*size_0_33_0
              #                    free a3
              #                    free s2
              #                     448  untrack temp_31_ele_of_*size_0_33_0 
              #                     135  store temp_32_arithop_33_0:i32 temp_12_ptr_of_*size_0_33:ptr->i32 
              #                    occupy a6 with temp_12_ptr_of_*size_0_33
              #                    occupy s2 with temp_32_arithop_33_0
    sw      s2,0(a6)
              #                    free s2
              #                    free a6
              #                     453  untrack temp_32_arithop_33_0 
              #                    occupy s2 with temp_32_arithop_33_0
              #                    release s2 with temp_32_arithop_33_0
              #                     444  untrack temp_12_ptr_of_*size_0_33 
              #                    occupy a6 with temp_12_ptr_of_*size_0_33
              #                    release a6 with temp_12_ptr_of_*size_0_33
              #                     136  size_0_3 = chi size_0_2:135 
              #                          jump label: exit_7 
    j       .exit_7
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     138  label exit_7: 
.exit_7:
              #                     351  mu size_0_3:137 
              #                     352  mu rev_0_3:137 
              #                     353  mu to_0_3:137 
              #                     354  mu cap_0_3:137 
              #                     137  ret 
              #                    load from ra_add_node_0 in mem
    ld      ra,200(sp)
              #                    load from s0_add_node_0 in mem
    ld      s0,192(sp)
    addi    sp,sp,208
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     32   Define dfs_0 "s_42_0,t_42_0,f_42_0," -> dfs_ret_0 
    .globl dfs
    .type dfs,@function
dfs:
              #                    mem layout:|ra_dfs:8 at 256|s0_dfs:8 at 248|s _s42 _i0:4 at 244|t _s42 _i0:4 at 240|f _s42 _i0:4 at 236|none:4 at 232|temp_33_ptr_of_*used_0:8 at 224|i _s44 _i1:4 at 220|min_f _s52 _i0:4 at 216|min_f _s52 _i1:4 at 212|min_f _s52 _i2:4 at 208|temp_34_ptr_of_*cap_0:8 at 200|temp_36_ptr_of_*to_0:8 at 192|temp_38_ret_of_dfs _s52 _i0:4 at 188|temp_39_arithop _s52 _i0:4 at 184|temp_40_ptr_of_*cap_0:8 at 176|temp_41_ptr_of_*cap_0:8 at 168|temp_42_ele_of_*cap_0 _s71 _i0:4 at 164|temp_43_arithop _s71 _i0:4 at 160|temp_44_ptr_of_*rev_0:8 at 152|temp_45_ele_of_*rev_0 _s71 _i0:4 at 148|none:4 at 144|temp_46_ptr_of_*to_0:8 at 136|temp_48_ptr_of_*cap_0:8 at 128|temp_49_ptr_of_*rev_0:8 at 120|temp_51_ptr_of_*to_0:8 at 112|temp_53_ptr_of_*cap_0:8 at 104|temp_54_ele_of_*cap_0 _s71 _i0:4 at 100|temp_55_arithop _s71 _i0:4 at 96|temp_56_arithop _s60 _i0:4 at 92|temp_57_arithop _s55 _i0:4 at 88|temp_58_cmp _s45 _i0:1 at 87|none:7 at 80|temp_59_ptr_of_*size_0:8 at 72|temp_60_ele_of_*size_0 _s50 _i0:4 at 68|temp_61_cmp _s50 _i0:1 at 67|none:3 at 64|temp_62_ptr_of_*to_0:8 at 56|temp_63_ele_of_*to_0 _s53 _i0:4 at 52|none:4 at 48|temp_64_ptr_of_*used_0:8 at 40|temp_65_ele_of_*used_0 _s53 _i0:4 at 36|temp_66_ _s1887 _i0:1 at 35|none:3 at 32|temp_67_ptr_of_*cap_0:8 at 24|temp_68_ele_of_*cap_0 _s58 _i0:4 at 20|temp_69_cmp _s58 _i0:1 at 19|none:3 at 16|temp_70_ptr_of_*cap_0:8 at 8|temp_72_cmp _s64 _i0:1 at 7|temp_73_cmp _s69 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-264
              #                    store to ra_dfs_0 in mem offset legal
    sd      ra,256(sp)
              #                    store to s0_dfs_0 in mem offset legal
    sd      s0,248(sp)
    addi    s0,sp,264
              #                     355  cap_0_4 = chi cap_0_0:32 
              #                     356  used_0_1 = chi used_0_0:32 
              #                     139  alloc ptr->i32 [temp_33_ptr_of_*used_0_44] 
              #                     144  alloc i32 [i_44] 
              #                     147  alloc i32 [min_f_52] 
              #                     149  alloc ptr->i32 [temp_34_ptr_of_*cap_0_64] 
              #                     151  alloc i32 [temp_35_ele_of_*cap_0_64] 
              #                     155  alloc ptr->i32 [temp_36_ptr_of_*to_0_52] 
              #                     157  alloc i32 [temp_37_ele_of_*to_0_52] 
              #                     160  alloc i32 [temp_38_ret_of_dfs_52] 
              #                     163  alloc i32 [d_52] 
              #                     164  alloc i32 [temp_39_arithop_52] 
              #                     167  alloc ptr->i32 [temp_40_ptr_of_*cap_0_71] 
              #                     169  alloc ptr->i32 [temp_41_ptr_of_*cap_0_71] 
              #                     171  alloc i32 [temp_42_ele_of_*cap_0_71] 
              #                     174  alloc i32 [temp_43_arithop_71] 
              #                     178  alloc ptr->i32 [temp_44_ptr_of_*rev_0_71] 
              #                     180  alloc i32 [temp_45_ele_of_*rev_0_71] 
              #                     183  alloc ptr->i32 [temp_46_ptr_of_*to_0_71] 
              #                     185  alloc i32 [temp_47_ele_of_*to_0_71] 
              #                     188  alloc ptr->i32 [temp_48_ptr_of_*cap_0_71] 
              #                     190  alloc ptr->i32 [temp_49_ptr_of_*rev_0_71] 
              #                     192  alloc i32 [temp_50_ele_of_*rev_0_71] 
              #                     195  alloc ptr->i32 [temp_51_ptr_of_*to_0_71] 
              #                     197  alloc i32 [temp_52_ele_of_*to_0_71] 
              #                     200  alloc ptr->i32 [temp_53_ptr_of_*cap_0_71] 
              #                     202  alloc i32 [temp_54_ele_of_*cap_0_71] 
              #                     205  alloc i32 [temp_55_arithop_71] 
              #                     212  alloc i32 [temp_56_arithop_60] 
              #                     215  alloc i32 [temp_57_arithop_55] 
              #                     220  alloc i1 [temp_58_cmp_45] 
              #                     225  alloc ptr->i32 [temp_59_ptr_of_*size_0_50] 
              #                     227  alloc i32 [temp_60_ele_of_*size_0_50] 
              #                     230  alloc i1 [temp_61_cmp_50] 
              #                     238  alloc ptr->i32 [temp_62_ptr_of_*to_0_53] 
              #                     240  alloc i32 [temp_63_ele_of_*to_0_53] 
              #                     243  alloc ptr->i32 [temp_64_ptr_of_*used_0_53] 
              #                     245  alloc i32 [temp_65_ele_of_*used_0_53] 
              #                     248  alloc i1 [temp_66__1887] 
              #                     253  alloc ptr->i32 [temp_67_ptr_of_*cap_0_58] 
              #                     255  alloc i32 [temp_68_ele_of_*cap_0_58] 
              #                     258  alloc i1 [temp_69_cmp_58] 
              #                     263  alloc ptr->i32 [temp_70_ptr_of_*cap_0_64] 
              #                     265  alloc i32 [temp_71_ele_of_*cap_0_64] 
              #                     268  alloc i1 [temp_72_cmp_64] 
              #                     274  alloc i1 [temp_73_cmp_69] 
              #                    regtab     a0:Freed { symidx: s_42_0, tracked: true } |     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     221  temp_58_cmp_45_0 = icmp i32 Eq s_42_0, t_42_0 
              #                    occupy a0 with s_42_0
              #                    occupy a1 with t_42_0
              #                    occupy a3 with temp_58_cmp_45_0
    xor     a3,a0,a1
    seqz    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                     224  br i1 temp_58_cmp_45_0, label branch_true_46, label branch_false_46 
              #                    occupy a3 with temp_58_cmp_45_0
              #                    free a3
              #                    occupy a3 with temp_58_cmp_45_0
    bnez    a3, .branch_true_46
              #                    free a3
    j       .branch_false_46
              #                    regtab     a0:Freed { symidx: s_42_0, tracked: true } |     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |     a3:Freed { symidx: temp_58_cmp_45_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     222  label branch_true_46: 
.branch_true_46:
              #                     464  untrack min_f_52_1 
              #                     463  untrack t_42_0 
              #                    occupy a1 with t_42_0
              #                    release a1 with t_42_0
              #                     462  untrack i_44_1 
              #                     461  untrack temp_59_ptr_of_*size_0_50 
              #                     460  untrack s_42_0 
              #                    occupy a0 with s_42_0
              #                    release a0 with s_42_0
              #                     459  untrack temp_33_ptr_of_*used_0_44 
              #                     458  untrack temp_58_cmp_45_0 
              #                    occupy a3 with temp_58_cmp_45_0
              #                    release a3 with temp_58_cmp_45_0
              #                     357  mu cap_0_4:219 
              #                     358  mu used_0_1:219 
              #                     219  ret f_42_0 
              #                    load from ra_dfs_0 in mem
    ld      ra,256(sp)
              #                    load from s0_dfs_0 in mem
    ld      s0,248(sp)
              #                    occupy a2 with f_42_0
              #                    store to f_42_0 in mem offset legal
    sw      a2,236(sp)
              #                    release a2 with f_42_0
              #                    occupy a0 with f_42_0
              #                    load from f_42_0 in mem


    lw      a0,236(sp)
    addi    sp,sp,264
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: s_42_0, tracked: true } |     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |     a3:Freed { symidx: temp_58_cmp_45_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     223  label branch_false_46: 
.branch_false_46:
              #                     465  untrack temp_58_cmp_45_0 
              #                    occupy a3 with temp_58_cmp_45_0
              #                    release a3 with temp_58_cmp_45_0
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: s_42_0, tracked: true } |     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     140  temp_33_ptr_of_*used_0_44 = GEP *used_0:ptr->i32 [Some(s_42_0)] 
              #                    occupy a3 with temp_33_ptr_of_*used_0_44
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with s_42_0
    mv      a4, a0
              #                    free a0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *used_0
              #                       load label used as ptr to reg
    la      a5, used
              #                    occupy reg a5 with *used_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     141  store 1_0:i32 temp_33_ptr_of_*used_0_44:ptr->i32 
              #                    occupy a3 with temp_33_ptr_of_*used_0_44
              #                    occupy a6 with 1_0
    li      a6, 1
    sw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     466  untrack temp_33_ptr_of_*used_0_44 
              #                    occupy a3 with temp_33_ptr_of_*used_0_44
              #                    release a3 with temp_33_ptr_of_*used_0_44
              #                     142  used_0_2 = chi used_0_1:141 
              #                     143  (nop) 
              #                     226  temp_59_ptr_of_*size_0_50 = GEP *size_0:Array:i32:[None] [Some(s_42_0)] 
              #                    occupy a3 with temp_59_ptr_of_*size_0_50
    li      a3, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with s_42_0
    mv      a7, a0
              #                    free a0
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
              #                    occupy s1 with *size_0
              #                       load label size as ptr to reg
    la      s1, size
              #                    occupy reg s1 with *size_0
    add     a3,a3,s1
              #                    free s1
              #                    free a3
              #                     211  min_f_52_1 = i32 f_42_0 
              #                    occupy a2 with f_42_0
              #                    occupy s2 with min_f_52_1
    mv      s2, a2
              #                    free a2
              #                    free s2
              #                     428  i_44_1 = i32 0_0 
              #                    occupy s3 with i_44_1
    li      s3, 0
              #                    free s3
              #                          jump label: while.head_51 
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: s_42_0, tracked: true } |     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |     s3:Freed { symidx: i_44_1, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     232  label while.head_51: 
.while.head_51:
              #                     228  temp_60_ele_of_*size_0_50_0 = load temp_59_ptr_of_*size_0_50:ptr->i32 
              #                    occupy a3 with temp_59_ptr_of_*size_0_50
              #                    occupy a4 with temp_60_ele_of_*size_0_50_0
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                     229  mu size_0_0:228 
              #                     231  temp_61_cmp_50_0 = icmp i32 Slt i_44_1, temp_60_ele_of_*size_0_50_0 
              #                    occupy s3 with i_44_1
              #                    occupy a4 with temp_60_ele_of_*size_0_50_0
              #                    occupy a5 with temp_61_cmp_50_0
    slt     a5,s3,a4
              #                    free s3
              #                    free a4
              #                    free a5
              #                     235  br i1 temp_61_cmp_50_0, label while.body_51, label while.exit_51 
              #                    occupy a5 with temp_61_cmp_50_0
              #                    free a5
              #                    occupy a5 with temp_61_cmp_50_0
    bnez    a5, .while.body_51
              #                    free a5
    j       .while.exit_51
              #                    regtab     a0:Freed { symidx: s_42_0, tracked: true } |     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     a4:Freed { symidx: temp_60_ele_of_*size_0_50_0, tracked: true } |     a5:Freed { symidx: temp_61_cmp_50_0, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |     s3:Freed { symidx: i_44_1, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     233  label while.body_51: 
.while.body_51:
              #                     239  temp_62_ptr_of_*to_0_53 = GEP *to_0:Array:i32:[None, Some(10_0)] [Some(s_42_0), Some(i_44_1)] 
              #                    occupy a6 with temp_62_ptr_of_*to_0_53
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with 10_0
    li      s1, 10
              #                    occupy a0 with s_42_0
    mul     a7,s1,a0
              #                    free s1
              #                    free a0
              #                    occupy a0 with s_42_0
              #                    store to s_42_0 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with s_42_0
    add     a6,a6,a7
              #                    free a7
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with i_44_1
    mv      a0, s3
              #                    free s3
              #                    occupy s3 with i_44_1
              #                    store to i_44_1 in mem offset legal
    sw      s3,220(sp)
              #                    release s3 with i_44_1
    add     a6,a6,a0
              #                    free a0
    slli a6,a6,2
              #                    occupy s1 with *to_0
              #                       load label to as ptr to reg
    la      s1, to
              #                    occupy reg s1 with *to_0
    add     a6,a6,s1
              #                    free s1
              #                    free a6
              #                     241  temp_63_ele_of_*to_0_53_0 = load temp_62_ptr_of_*to_0_53:ptr->i32 
              #                    occupy a6 with temp_62_ptr_of_*to_0_53
              #                    occupy s1 with temp_63_ele_of_*to_0_53_0
    lw      s1,0(a6)
              #                    free s1
              #                    occupy s1 with temp_63_ele_of_*to_0_53_0
              #                    store to temp_63_ele_of_*to_0_53_0 in mem offset legal
    sw      s1,52(sp)
              #                    release s1 with temp_63_ele_of_*to_0_53_0
              #                    free a6
              #                     242  mu to_0_0:241 
              #                     244  temp_64_ptr_of_*used_0_53 = GEP *used_0:Array:i32:[None] [Some(temp_63_ele_of_*to_0_53_0)] 
              #                    occupy s1 with temp_64_ptr_of_*used_0_53
    li      s1, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with temp_63_ele_of_*to_0_53_0
              #                    load from temp_63_ele_of_*to_0_53_0 in mem


    lw      s4,52(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with temp_63_ele_of_*to_0_53_0
              #                    store to temp_63_ele_of_*to_0_53_0 in mem offset legal
    sw      s4,52(sp)
              #                    release s4 with temp_63_ele_of_*to_0_53_0
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
              #                    occupy s3 with *used_0
              #                       load label used as ptr to reg
    la      s3, used
              #                    occupy reg s3 with *used_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                    occupy s1 with temp_64_ptr_of_*used_0_53
              #                    store to temp_64_ptr_of_*used_0_53 in mem offset legal
    sd      s1,40(sp)
              #                    release s1 with temp_64_ptr_of_*used_0_53
              #                     246  temp_65_ele_of_*used_0_53_0 = load temp_64_ptr_of_*used_0_53:ptr->i32 
              #                    occupy s1 with temp_64_ptr_of_*used_0_53
              #                    load from temp_64_ptr_of_*used_0_53 in mem
    ld      s1,40(sp)
              #                    occupy s3 with temp_65_ele_of_*used_0_53_0
    lw      s3,0(s1)
              #                    free s3
              #                    occupy s3 with temp_65_ele_of_*used_0_53_0
              #                    store to temp_65_ele_of_*used_0_53_0 in mem offset legal
    sw      s3,36(sp)
              #                    release s3 with temp_65_ele_of_*used_0_53_0
              #                    free s1
              #                    occupy s1 with temp_64_ptr_of_*used_0_53
              #                    store to temp_64_ptr_of_*used_0_53 in mem offset legal
    sd      s1,40(sp)
              #                    release s1 with temp_64_ptr_of_*used_0_53
              #                     247  mu used_0_3:246 
              #                     249  temp_66__1887_0 = icmp i32 Ne temp_65_ele_of_*used_0_53_0, 0_0 
              #                    occupy s1 with temp_65_ele_of_*used_0_53_0
              #                    load from temp_65_ele_of_*used_0_53_0 in mem


    lw      s1,36(sp)
              #                    occupy s3 with 0_0
    li      s3, 0
              #                    occupy s4 with temp_66__1887_0
    xor     s4,s1,s3
    snez    s4, s4
              #                    free s1
              #                    occupy s1 with temp_65_ele_of_*used_0_53_0
              #                    store to temp_65_ele_of_*used_0_53_0 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_65_ele_of_*used_0_53_0
              #                    free s3
              #                    free s4
              #                    occupy s4 with temp_66__1887_0
              #                    store to temp_66__1887_0 in mem offset legal
    sb      s4,35(sp)
              #                    release s4 with temp_66__1887_0
              #                     252  br i1 temp_66__1887_0, label branch_true_54, label branch_false_54 
              #                    occupy s1 with temp_66__1887_0
              #                    load from temp_66__1887_0 in mem


    lb      s1,35(sp)
              #                    free s1
              #                    occupy s1 with temp_66__1887_0
              #                    store to temp_66__1887_0 in mem offset legal
    sb      s1,35(sp)
              #                    release s1 with temp_66__1887_0
              #                    occupy a0 with temp_66__1887_0
              #                    load from temp_66__1887_0 in mem


    lb      a0,35(sp)
    bnez    a0, .branch_true_54
              #                    free a0
              #                    occupy a0 with temp_66__1887_0
              #                    store to temp_66__1887_0 in mem offset legal
    sb      a0,35(sp)
              #                    release a0 with temp_66__1887_0
    j       .branch_false_54
              #                    regtab     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     a4:Freed { symidx: temp_60_ele_of_*size_0_50_0, tracked: true } |     a5:Freed { symidx: temp_61_cmp_50_0, tracked: true } |     a6:Freed { symidx: temp_62_ptr_of_*to_0_53, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     250  label branch_true_54: 
.branch_true_54:
              #                     216  temp_57_arithop_55_0 = Add i32 i_44_1, 1_0 
              #                    occupy a0 with i_44_1
              #                    load from i_44_1 in mem


    lw      a0,220(sp)
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_57_arithop_55_0
    ADDW    s1,a0,a7
              #                    free a0
              #                    occupy a0 with i_44_1
              #                    store to i_44_1 in mem offset legal
    sw      a0,220(sp)
              #                    release a0 with i_44_1
              #                    free a7
              #                    free s1
              #                    occupy s1 with temp_57_arithop_55_0
              #                    store to temp_57_arithop_55_0 in mem offset legal
    sw      s1,88(sp)
              #                    release s1 with temp_57_arithop_55_0
              #                     217  (nop) 
              #                     429  i_44_1 = i32 temp_57_arithop_55_0 
              #                    occupy a0 with temp_57_arithop_55_0
              #                    load from temp_57_arithop_55_0 in mem


    lw      a0,88(sp)
              #                    occupy a7 with i_44_1
    mv      a7, a0
              #                    free a0
              #                    occupy a0 with temp_57_arithop_55_0
              #                    store to temp_57_arithop_55_0 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_57_arithop_55_0
              #                    free a7
              #                    occupy a7 with i_44_1
              #                    store to i_44_1 in mem offset legal
    sw      a7,220(sp)
              #                    release a7 with i_44_1
              #                          jump label: while.head_51 
              #                    occupy a6 with temp_62_ptr_of_*to_0_53
              #                    store to temp_62_ptr_of_*to_0_53 in mem offset legal
    sd      a6,56(sp)
              #                    release a6 with temp_62_ptr_of_*to_0_53
              #                    occupy a5 with temp_61_cmp_50_0
              #                    store to temp_61_cmp_50_0 in mem offset legal
    sb      a5,67(sp)
              #                    release a5 with temp_61_cmp_50_0
              #                    occupy a4 with temp_60_ele_of_*size_0_50_0
              #                    store to temp_60_ele_of_*size_0_50_0 in mem offset legal
    sw      a4,68(sp)
              #                    release a4 with temp_60_ele_of_*size_0_50_0
              #                    occupy a0 with s_42_0
              #                    load from s_42_0 in mem


    lw      a0,244(sp)
              #                    occupy s3 with i_44_1
              #                    load from i_44_1 in mem


    lw      s3,220(sp)
    j       .while.head_51
              #                    regtab     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     a4:Freed { symidx: temp_60_ele_of_*size_0_50_0, tracked: true } |     a5:Freed { symidx: temp_61_cmp_50_0, tracked: true } |     a6:Freed { symidx: temp_62_ptr_of_*to_0_53, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     251  label branch_false_54: 
.branch_false_54:
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     a4:Freed { symidx: temp_60_ele_of_*size_0_50_0, tracked: true } |     a5:Freed { symidx: temp_61_cmp_50_0, tracked: true } |     a6:Freed { symidx: temp_62_ptr_of_*to_0_53, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     254  temp_67_ptr_of_*cap_0_58 = GEP *cap_0:Array:i32:[None, Some(10_0)] [Some(s_42_0), Some(i_44_1)] 
              #                    occupy a0 with temp_67_ptr_of_*cap_0_58
    li      a0, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with 10_0
    li      s1, 10
              #                    occupy s3 with s_42_0
              #                    load from s_42_0 in mem


    lw      s3,244(sp)
    mul     a7,s1,s3
              #                    free s1
              #                    free s3
              #                    occupy s3 with s_42_0
              #                    store to s_42_0 in mem offset legal
    sw      s3,244(sp)
              #                    release s3 with s_42_0
    add     a0,a0,a7
              #                    free a7
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with i_44_1
              #                    load from i_44_1 in mem


    lw      s1,220(sp)
    mv      a7, s1
              #                    free s1
              #                    occupy s1 with i_44_1
              #                    store to i_44_1 in mem offset legal
    sw      s1,220(sp)
              #                    release s1 with i_44_1
    add     a0,a0,a7
              #                    free a7
    slli a0,a0,2
              #                    occupy a7 with *cap_0
              #                       load label cap as ptr to reg
    la      a7, cap
              #                    occupy reg a7 with *cap_0
    add     a0,a0,a7
              #                    free a7
              #                    free a0
              #                    occupy a0 with temp_67_ptr_of_*cap_0_58
              #                    store to temp_67_ptr_of_*cap_0_58 in mem offset legal
    sd      a0,24(sp)
              #                    release a0 with temp_67_ptr_of_*cap_0_58
              #                     256  temp_68_ele_of_*cap_0_58_0 = load temp_67_ptr_of_*cap_0_58:ptr->i32 
              #                    occupy a0 with temp_67_ptr_of_*cap_0_58
              #                    load from temp_67_ptr_of_*cap_0_58 in mem
    ld      a0,24(sp)
              #                    occupy a7 with temp_68_ele_of_*cap_0_58_0
    lw      a7,0(a0)
              #                    free a7
              #                    occupy a7 with temp_68_ele_of_*cap_0_58_0
              #                    store to temp_68_ele_of_*cap_0_58_0 in mem offset legal
    sw      a7,20(sp)
              #                    release a7 with temp_68_ele_of_*cap_0_58_0
              #                    free a0
              #                    occupy a0 with temp_67_ptr_of_*cap_0_58
              #                    store to temp_67_ptr_of_*cap_0_58 in mem offset legal
    sd      a0,24(sp)
              #                    release a0 with temp_67_ptr_of_*cap_0_58
              #                     257  mu cap_0_5:256 
              #                     259  temp_69_cmp_58_0 = icmp i32 Sle temp_68_ele_of_*cap_0_58_0, 0_0 
              #                    occupy a0 with temp_68_ele_of_*cap_0_58_0
              #                    load from temp_68_ele_of_*cap_0_58_0 in mem


    lw      a0,20(sp)
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s1 with temp_69_cmp_58_0
    slt     s1,a7,a0
    xori    s1,s1,1
              #                    free a0
              #                    occupy a0 with temp_68_ele_of_*cap_0_58_0
              #                    store to temp_68_ele_of_*cap_0_58_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_68_ele_of_*cap_0_58_0
              #                    free a7
              #                    free s1
              #                    occupy s1 with temp_69_cmp_58_0
              #                    store to temp_69_cmp_58_0 in mem offset legal
    sb      s1,19(sp)
              #                    release s1 with temp_69_cmp_58_0
              #                     262  br i1 temp_69_cmp_58_0, label branch_true_59, label branch_false_59 
              #                    occupy a0 with temp_69_cmp_58_0
              #                    load from temp_69_cmp_58_0 in mem


    lb      a0,19(sp)
              #                    free a0
              #                    occupy a0 with temp_69_cmp_58_0
              #                    store to temp_69_cmp_58_0 in mem offset legal
    sb      a0,19(sp)
              #                    release a0 with temp_69_cmp_58_0
              #                    occupy a0 with temp_69_cmp_58_0
              #                    load from temp_69_cmp_58_0 in mem


    lb      a0,19(sp)
    bnez    a0, .branch_true_59
              #                    free a0
              #                    occupy a0 with temp_69_cmp_58_0
              #                    store to temp_69_cmp_58_0 in mem offset legal
    sb      a0,19(sp)
              #                    release a0 with temp_69_cmp_58_0
    j       .branch_false_59
              #                    regtab     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     a4:Freed { symidx: temp_60_ele_of_*size_0_50_0, tracked: true } |     a5:Freed { symidx: temp_61_cmp_50_0, tracked: true } |     a6:Freed { symidx: temp_62_ptr_of_*to_0_53, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     260  label branch_true_59: 
.branch_true_59:
              #                     213  temp_56_arithop_60_0 = Add i32 i_44_1, 1_0 
              #                    occupy a0 with i_44_1
              #                    load from i_44_1 in mem


    lw      a0,220(sp)
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_56_arithop_60_0
    ADDW    s1,a0,a7
              #                    free a0
              #                    occupy a0 with i_44_1
              #                    store to i_44_1 in mem offset legal
    sw      a0,220(sp)
              #                    release a0 with i_44_1
              #                    free a7
              #                    free s1
              #                    occupy s1 with temp_56_arithop_60_0
              #                    store to temp_56_arithop_60_0 in mem offset legal
    sw      s1,92(sp)
              #                    release s1 with temp_56_arithop_60_0
              #                     214  (nop) 
              #                     430  i_44_1 = i32 temp_56_arithop_60_0 
              #                    occupy a0 with temp_56_arithop_60_0
              #                    load from temp_56_arithop_60_0 in mem


    lw      a0,92(sp)
              #                    occupy a7 with i_44_1
    mv      a7, a0
              #                    free a0
              #                    occupy a0 with temp_56_arithop_60_0
              #                    store to temp_56_arithop_60_0 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_56_arithop_60_0
              #                    free a7
              #                    occupy a7 with i_44_1
              #                    store to i_44_1 in mem offset legal
    sw      a7,220(sp)
              #                    release a7 with i_44_1
              #                          jump label: while.head_51 
              #                    occupy a6 with temp_62_ptr_of_*to_0_53
              #                    store to temp_62_ptr_of_*to_0_53 in mem offset legal
    sd      a6,56(sp)
              #                    release a6 with temp_62_ptr_of_*to_0_53
              #                    occupy a5 with temp_61_cmp_50_0
              #                    store to temp_61_cmp_50_0 in mem offset legal
    sb      a5,67(sp)
              #                    release a5 with temp_61_cmp_50_0
              #                    occupy a4 with temp_60_ele_of_*size_0_50_0
              #                    store to temp_60_ele_of_*size_0_50_0 in mem offset legal
    sw      a4,68(sp)
              #                    release a4 with temp_60_ele_of_*size_0_50_0
              #                    occupy a0 with s_42_0
              #                    load from s_42_0 in mem


    lw      a0,244(sp)
              #                    occupy s3 with i_44_1
              #                    load from i_44_1 in mem


    lw      s3,220(sp)
    j       .while.head_51
              #                    regtab     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     a4:Freed { symidx: temp_60_ele_of_*size_0_50_0, tracked: true } |     a5:Freed { symidx: temp_61_cmp_50_0, tracked: true } |     a6:Freed { symidx: temp_62_ptr_of_*to_0_53, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     261  label branch_false_59: 
.branch_false_59:
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     a4:Freed { symidx: temp_60_ele_of_*size_0_50_0, tracked: true } |     a5:Freed { symidx: temp_61_cmp_50_0, tracked: true } |     a6:Freed { symidx: temp_62_ptr_of_*to_0_53, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     148   
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     a4:Freed { symidx: temp_60_ele_of_*size_0_50_0, tracked: true } |     a5:Freed { symidx: temp_61_cmp_50_0, tracked: true } |     a6:Freed { symidx: temp_62_ptr_of_*to_0_53, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     264  (nop) 
              #                     266  (nop) 
              #                     267  mu cap_0_5:266 
              #                     269  temp_72_cmp_64_0 = icmp i32 Slt f_42_0, temp_68_ele_of_*cap_0_58_0 
              #                    occupy a2 with f_42_0
              #                    occupy a0 with temp_68_ele_of_*cap_0_58_0
              #                    load from temp_68_ele_of_*cap_0_58_0 in mem


    lw      a0,20(sp)
              #                    occupy a7 with temp_72_cmp_64_0
    slt     a7,a2,a0
              #                    free a2
              #                    occupy a2 with f_42_0
              #                    store to f_42_0 in mem offset legal
    sw      a2,236(sp)
              #                    release a2 with f_42_0
              #                    free a0
              #                    occupy a0 with temp_68_ele_of_*cap_0_58_0
              #                    store to temp_68_ele_of_*cap_0_58_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_68_ele_of_*cap_0_58_0
              #                    free a7
              #                     272  br i1 temp_72_cmp_64_0, label branch_true_65, label branch_false_65 
              #                    occupy a7 with temp_72_cmp_64_0
              #                    free a7
              #                    occupy a7 with temp_72_cmp_64_0
    bnez    a7, .branch_true_65
              #                    free a7
    j       .branch_false_65
              #                    regtab     a1:Freed { symidx: t_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     a4:Freed { symidx: temp_60_ele_of_*size_0_50_0, tracked: true } |     a5:Freed { symidx: temp_61_cmp_50_0, tracked: true } |     a6:Freed { symidx: temp_62_ptr_of_*to_0_53, tracked: true } |     a7:Freed { symidx: temp_72_cmp_64_0, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     270  label branch_true_65: 
.branch_true_65:
              #                     483  untrack temp_60_ele_of_*size_0_50_0 
              #                    occupy a4 with temp_60_ele_of_*size_0_50_0
              #                    release a4 with temp_60_ele_of_*size_0_50_0
              #                     482  untrack temp_64_ptr_of_*used_0_53 
              #                     481  untrack temp_72_cmp_64_0 
              #                    occupy a7 with temp_72_cmp_64_0
              #                    release a7 with temp_72_cmp_64_0
              #                     480  untrack temp_62_ptr_of_*to_0_53 
              #                    occupy a6 with temp_62_ptr_of_*to_0_53
              #                    release a6 with temp_62_ptr_of_*to_0_53
              #                     479  untrack temp_68_ele_of_*cap_0_58_0 
              #                     478  untrack temp_57_arithop_55_0 
              #                     477  untrack temp_56_arithop_60_0 
              #                     476  untrack temp_66__1887_0 
              #                     475  untrack temp_61_cmp_50_0 
              #                    occupy a5 with temp_61_cmp_50_0
              #                    release a5 with temp_61_cmp_50_0
              #                     474  untrack temp_69_cmp_58_0 
              #                     473  untrack temp_65_ele_of_*used_0_53_0 
              #                     431  min_f_52_2 = i32 min_f_52_1 
              #                    occupy s2 with min_f_52_1
              #                    occupy a0 with min_f_52_2
    mv      a0, s2
              #                    free s2
              #                    free a0
              #                          jump label: gather_25 
    j       .gather_25
              #                    regtab     a0:Freed { symidx: min_f_52_2, tracked: true } |     a1:Freed { symidx: t_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     273  label gather_25: 
.gather_25:
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: min_f_52_2, tracked: true } |     a1:Freed { symidx: t_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     156  (nop) 
              #                     158  (nop) 
              #                     159  mu to_0_0:158 
              #                     161  temp_38_ret_of_dfs_52_0 =  Call i32 dfs_0(temp_63_ele_of_*to_0_53_0, t_42_0, min_f_52_2) 
              #                    saved register dumping to mem
              #                    occupy s2 with min_f_52_1
              #                    store to min_f_52_1 in mem offset legal
    sw      s2,212(sp)
              #                    release s2 with min_f_52_1
              #                    occupy a0 with min_f_52_2
              #                    store to min_f_52_2 in mem offset legal
    sw      a0,208(sp)
              #                    release a0 with min_f_52_2
              #                    occupy a1 with t_42_0
              #                    store to t_42_0 in mem offset legal
    sw      a1,240(sp)
              #                    release a1 with t_42_0
              #                    occupy a3 with temp_59_ptr_of_*size_0_50
              #                    store to temp_59_ptr_of_*size_0_50 in mem offset legal
    sd      a3,72(sp)
              #                    release a3 with temp_59_ptr_of_*size_0_50
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_63_ele_of_*to_0_53_0_0
              #                    load from temp_63_ele_of_*to_0_53_0 in mem


    lw      a0,52(sp)
              #                    occupy a1 with _anonymous_of_t_42_0_0
              #                    load from t_42_0 in mem


    lw      a1,240(sp)
              #                    occupy a2 with _anonymous_of_min_f_52_2_0
              #                    load from min_f_52_2 in mem


    lw      a2,208(sp)
              #                    arg load ended


    call    dfs
              #                     359  mu size_0_0:161 
              #                     360  mu rev_0_0:161 
              #                     361  mu to_0_0:161 
              #                     362  mu cap_0_5:161 
              #                     363  mu used_0_3:161 
              #                     364  cap_0_6 = chi cap_0_5:161 
              #                     365  used_0_4 = chi used_0_3:161 
              #                     162  (nop) 
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a0:Freed { symidx: temp_38_ret_of_dfs_52_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     275  temp_73_cmp_69_0 = icmp i32 Sgt temp_38_ret_of_dfs_52_0, 0_0 
              #                    occupy a0 with temp_38_ret_of_dfs_52_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_73_cmp_69_0
    slt     a2,a1,a0
              #                    free a0
              #                    free a1
              #                    free a2
              #                     278  br i1 temp_73_cmp_69_0, label branch_true_70, label branch_false_70 
              #                    occupy a2 with temp_73_cmp_69_0
              #                    free a2
              #                    occupy a2 with temp_73_cmp_69_0
    bnez    a2, .branch_true_70
              #                    free a2
    j       .branch_false_70
              #                    regtab     a0:Freed { symidx: temp_38_ret_of_dfs_52_0, tracked: true } |     a2:Freed { symidx: temp_73_cmp_69_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     276  label branch_true_70: 
.branch_true_70:
              #                     497  untrack temp_68_ele_of_*cap_0_58_0 
              #                     496  untrack temp_64_ptr_of_*used_0_53 
              #                     495  untrack temp_73_cmp_69_0 
              #                    occupy a2 with temp_73_cmp_69_0
              #                    release a2 with temp_73_cmp_69_0
              #                     494  untrack temp_39_arithop_52_0 
              #                     493  untrack temp_66__1887_0 
              #                     492  untrack temp_69_cmp_58_0 
              #                     491  untrack temp_62_ptr_of_*to_0_53 
              #                     490  untrack min_f_52_2 
              #                     489  untrack temp_72_cmp_64_0 
              #                     488  untrack temp_56_arithop_60_0 
              #                     487  untrack temp_57_arithop_55_0 
              #                     486  untrack temp_65_ele_of_*used_0_53_0 
              #                     485  untrack temp_61_cmp_50_0 
              #                     484  untrack temp_60_ele_of_*size_0_50_0 
              #                     168  (nop) 
              #                     170  (nop) 
              #                     172  temp_42_ele_of_*cap_0_71_0 = load temp_67_ptr_of_*cap_0_58:ptr->i32 
              #                    occupy a1 with temp_67_ptr_of_*cap_0_58
              #                    load from temp_67_ptr_of_*cap_0_58 in mem
    ld      a1,24(sp)
              #                    occupy a2 with temp_42_ele_of_*cap_0_71_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     173  mu cap_0_6:172 
              #                     175  temp_43_arithop_71_0 = Sub i32 temp_42_ele_of_*cap_0_71_0, temp_38_ret_of_dfs_52_0 
              #                    occupy a2 with temp_42_ele_of_*cap_0_71_0
              #                    occupy a0 with temp_38_ret_of_dfs_52_0
              #                    occupy a3 with temp_43_arithop_71_0
              #                    regtab:    a0:Occupied { symidx: temp_38_ret_of_dfs_52_0, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_67_ptr_of_*cap_0_58, tracked: true } |     a2:Occupied { symidx: temp_42_ele_of_*cap_0_71_0, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: temp_43_arithop_71_0, tracked: true, occupy_count: 1 } |  released_gpr_count:7,released_fpr_count:24


    subw    a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                     504  untrack temp_42_ele_of_*cap_0_71_0 
              #                    occupy a2 with temp_42_ele_of_*cap_0_71_0
              #                    release a2 with temp_42_ele_of_*cap_0_71_0
              #                     176  store temp_43_arithop_71_0:i32 temp_67_ptr_of_*cap_0_58:ptr->i32 
              #                    occupy a1 with temp_67_ptr_of_*cap_0_58
              #                    occupy a3 with temp_43_arithop_71_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     503  untrack temp_43_arithop_71_0 
              #                    occupy a3 with temp_43_arithop_71_0
              #                    release a3 with temp_43_arithop_71_0
              #                     499  untrack temp_67_ptr_of_*cap_0_58 
              #                    occupy a1 with temp_67_ptr_of_*cap_0_58
              #                    release a1 with temp_67_ptr_of_*cap_0_58
              #                     177  cap_0_7 = chi cap_0_6:176 
              #                     179  temp_44_ptr_of_*rev_0_71 = GEP *rev_0:Array:i32:[None, Some(10_0)] [Some(s_42_0), Some(i_44_1)] 
              #                    occupy a1 with temp_44_ptr_of_*rev_0_71
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with 10_0
    li      a3, 10
              #                    occupy a4 with s_42_0
              #                    load from s_42_0 in mem


    lw      a4,244(sp)
    mul     a2,a3,a4
              #                    free a3
              #                    free a4
    add     a1,a1,a2
              #                    free a2
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with i_44_1
              #                    load from i_44_1 in mem


    lw      a6,220(sp)
    mv      a5, a6
              #                    free a6
              #                    occupy a6 with i_44_1
              #                    store to i_44_1 in mem offset legal
    sw      a6,220(sp)
              #                    release a6 with i_44_1
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
              #                    occupy a6 with *rev_0
              #                       load label rev as ptr to reg
    la      a6, rev
              #                    occupy reg a6 with *rev_0
    add     a1,a1,a6
              #                    free a6
              #                    free a1
              #                     181  temp_45_ele_of_*rev_0_71_0 = load temp_44_ptr_of_*rev_0_71:ptr->i32 
              #                    occupy a1 with temp_44_ptr_of_*rev_0_71
              #                    occupy a6 with temp_45_ele_of_*rev_0_71_0
    lw      a6,0(a1)
              #                    free a6
              #                    occupy a6 with temp_45_ele_of_*rev_0_71_0
              #                    store to temp_45_ele_of_*rev_0_71_0 in mem offset legal
    sw      a6,148(sp)
              #                    release a6 with temp_45_ele_of_*rev_0_71_0
              #                    free a1
              #                     505  untrack temp_44_ptr_of_*rev_0_71 
              #                    occupy a1 with temp_44_ptr_of_*rev_0_71
              #                    release a1 with temp_44_ptr_of_*rev_0_71
              #                     182  mu rev_0_0:181 
              #                     184  (nop) 
              #                     186  (nop) 
              #                     187  mu to_0_0:186 
              #                     189  temp_48_ptr_of_*cap_0_71 = GEP *cap_0:ptr->Array:i32:[Some(10_0)] [Some(temp_63_ele_of_*to_0_53_0), Some(temp_45_ele_of_*rev_0_71_0)] 
              #                    occupy a1 with temp_48_ptr_of_*cap_0_71
    li      a1, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    found literal reg Some(a3) already exist with 10_0
              #                    occupy a3 with 10_0
              #                    occupy a7 with temp_63_ele_of_*to_0_53_0
              #                    load from temp_63_ele_of_*to_0_53_0 in mem


    lw      a7,52(sp)
    mul     a6,a3,a7
              #                    free a3
              #                    free a7
              #                    occupy a7 with temp_63_ele_of_*to_0_53_0
              #                    store to temp_63_ele_of_*to_0_53_0 in mem offset legal
    sw      a7,52(sp)
              #                    release a7 with temp_63_ele_of_*to_0_53_0
    add     a1,a1,a6
              #                    free a6
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with temp_45_ele_of_*rev_0_71_0
              #                    load from temp_45_ele_of_*rev_0_71_0 in mem


    lw      a7,148(sp)
    mv      a3, a7
              #                    free a7
              #                    occupy a7 with temp_45_ele_of_*rev_0_71_0
              #                    store to temp_45_ele_of_*rev_0_71_0 in mem offset legal
    sw      a7,148(sp)
              #                    release a7 with temp_45_ele_of_*rev_0_71_0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a3 with *cap_0
              #                       load label cap as ptr to reg
    la      a3, cap
              #                    occupy reg a3 with *cap_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     501  untrack temp_45_ele_of_*rev_0_71_0 
              #                     498  untrack temp_63_ele_of_*to_0_53_0 
              #                     191  (nop) 
              #                     193  (nop) 
              #                     194  mu rev_0_0:193 
              #                     196  (nop) 
              #                     198  (nop) 
              #                     199  mu to_0_0:198 
              #                     201  (nop) 
              #                     203  temp_54_ele_of_*cap_0_71_0 = load temp_48_ptr_of_*cap_0_71:ptr->i32 
              #                    occupy a1 with temp_48_ptr_of_*cap_0_71
              #                    occupy a3 with temp_54_ele_of_*cap_0_71_0
    lw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_54_ele_of_*cap_0_71_0
              #                    store to temp_54_ele_of_*cap_0_71_0 in mem offset legal
    sw      a3,100(sp)
              #                    release a3 with temp_54_ele_of_*cap_0_71_0
              #                    free a1
              #                     204  mu cap_0_7:203 
              #                     206  temp_55_arithop_71_0 = Add i32 temp_54_ele_of_*cap_0_71_0, temp_38_ret_of_dfs_52_0 
              #                    occupy a3 with temp_54_ele_of_*cap_0_71_0
              #                    load from temp_54_ele_of_*cap_0_71_0 in mem


    lw      a3,100(sp)
              #                    occupy a0 with temp_38_ret_of_dfs_52_0
              #                    occupy a7 with temp_55_arithop_71_0
    ADDW    a7,a3,a0
              #                    free a3
              #                    occupy a3 with temp_54_ele_of_*cap_0_71_0
              #                    store to temp_54_ele_of_*cap_0_71_0 in mem offset legal
    sw      a3,100(sp)
              #                    release a3 with temp_54_ele_of_*cap_0_71_0
              #                    free a0
              #                    occupy a0 with temp_38_ret_of_dfs_52_0
              #                    store to temp_38_ret_of_dfs_52_0 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_38_ret_of_dfs_52_0
              #                    free a7
              #                     502  untrack temp_54_ele_of_*cap_0_71_0 
              #                     207  store temp_55_arithop_71_0:i32 temp_48_ptr_of_*cap_0_71:ptr->i32 
              #                    occupy a1 with temp_48_ptr_of_*cap_0_71
              #                    occupy a7 with temp_55_arithop_71_0
    sw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                     506  untrack temp_48_ptr_of_*cap_0_71 
              #                    occupy a1 with temp_48_ptr_of_*cap_0_71
              #                    release a1 with temp_48_ptr_of_*cap_0_71
              #                     500  untrack temp_55_arithop_71_0 
              #                    occupy a7 with temp_55_arithop_71_0
              #                    release a7 with temp_55_arithop_71_0
              #                     208  cap_0_8 = chi cap_0_7:207 
              #                     366  mu cap_0_8:210 
              #                     367  mu used_0_4:210 
              #                     210  ret temp_38_ret_of_dfs_52_0 
              #                    load from ra_dfs_0 in mem
    ld      ra,256(sp)
              #                    load from s0_dfs_0 in mem
    ld      s0,248(sp)
              #                    occupy a0 with temp_38_ret_of_dfs_52_0
              #                    load from temp_38_ret_of_dfs_52_0 in mem


    lw      a0,188(sp)
    addi    sp,sp,264
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_38_ret_of_dfs_52_0, tracked: true } |     a2:Freed { symidx: temp_73_cmp_69_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     277  label branch_false_70: 
.branch_false_70:
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: temp_38_ret_of_dfs_52_0, tracked: true } |     a2:Freed { symidx: temp_73_cmp_69_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     165  temp_39_arithop_52_0 = Add i32 i_44_1, 1_0 
              #                    occupy a1 with i_44_1
              #                    load from i_44_1 in mem


    lw      a1,220(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_39_arithop_52_0
    ADDW    a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                     166  (nop) 
              #                     432  i_44_1 = i32 temp_39_arithop_52_0 
              #                    occupy a4 with temp_39_arithop_52_0
              #                    occupy a1 with i_44_1
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: while.head_51 
              #                    occupy a1 with i_44_1
              #                    store to i_44_1 in mem offset legal
    sw      a1,220(sp)
              #                    release a1 with i_44_1
              #                    occupy a1 with t_42_0
              #                    load from t_42_0 in mem


    lw      a1,240(sp)
              #                    occupy a4 with temp_39_arithop_52_0
              #                    store to temp_39_arithop_52_0 in mem offset legal
    sw      a4,184(sp)
              #                    release a4 with temp_39_arithop_52_0
              #                    occupy s2 with min_f_52_1
              #                    load from min_f_52_1 in mem


    lw      s2,212(sp)
              #                    occupy a2 with temp_73_cmp_69_0
              #                    store to temp_73_cmp_69_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_73_cmp_69_0
              #                    occupy a2 with f_42_0
              #                    load from f_42_0 in mem


    lw      a2,236(sp)
              #                    occupy a0 with temp_38_ret_of_dfs_52_0
              #                    store to temp_38_ret_of_dfs_52_0 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_38_ret_of_dfs_52_0
              #                    occupy a0 with s_42_0
              #                    load from s_42_0 in mem


    lw      a0,244(sp)
              #                    occupy s3 with i_44_1
              #                    load from i_44_1 in mem


    lw      s3,220(sp)
              #                    occupy a3 with temp_59_ptr_of_*size_0_50
              #                    load from temp_59_ptr_of_*size_0_50 in mem
    ld      a3,72(sp)
    j       .while.head_51
              #                    regtab     a1:Freed { symidx: t_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     a4:Freed { symidx: temp_60_ele_of_*size_0_50_0, tracked: true } |     a5:Freed { symidx: temp_61_cmp_50_0, tracked: true } |     a6:Freed { symidx: temp_62_ptr_of_*to_0_53, tracked: true } |     a7:Freed { symidx: temp_72_cmp_64_0, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     271  label branch_false_65: 
.branch_false_65:
              #                     150  (nop) 
              #                     152  (nop) 
              #                     153  mu cap_0_5:152 
              #                     154  (nop) 
              #                     433  min_f_52_2 = i32 temp_68_ele_of_*cap_0_58_0 
              #                    occupy a0 with temp_68_ele_of_*cap_0_58_0
              #                    load from temp_68_ele_of_*cap_0_58_0 in mem


    lw      a0,20(sp)
              #                    occupy a2 with min_f_52_2
    mv      a2, a0
              #                    free a0
              #                    occupy a0 with temp_68_ele_of_*cap_0_58_0
              #                    store to temp_68_ele_of_*cap_0_58_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_68_ele_of_*cap_0_58_0
              #                    free a2
              #                    occupy a2 with min_f_52_2
              #                    store to min_f_52_2 in mem offset legal
    sw      a2,208(sp)
              #                    release a2 with min_f_52_2
              #                          jump label: gather_25 
              #                    occupy a6 with temp_62_ptr_of_*to_0_53
              #                    store to temp_62_ptr_of_*to_0_53 in mem offset legal
    sd      a6,56(sp)
              #                    release a6 with temp_62_ptr_of_*to_0_53
              #                    occupy a5 with temp_61_cmp_50_0
              #                    store to temp_61_cmp_50_0 in mem offset legal
    sb      a5,67(sp)
              #                    release a5 with temp_61_cmp_50_0
              #                    occupy a4 with temp_60_ele_of_*size_0_50_0
              #                    store to temp_60_ele_of_*size_0_50_0 in mem offset legal
    sw      a4,68(sp)
              #                    release a4 with temp_60_ele_of_*size_0_50_0
              #                    occupy a0 with min_f_52_2
              #                    load from min_f_52_2 in mem


    lw      a0,208(sp)
              #                    occupy a7 with temp_72_cmp_64_0
              #                    store to temp_72_cmp_64_0 in mem offset legal
    sb      a7,7(sp)
              #                    release a7 with temp_72_cmp_64_0
    j       .gather_25
              #                    regtab     a0:Freed { symidx: s_42_0, tracked: true } |     a1:Freed { symidx: t_42_0, tracked: true } |     a2:Freed { symidx: f_42_0, tracked: true } |     a3:Freed { symidx: temp_59_ptr_of_*size_0_50, tracked: true } |     a4:Freed { symidx: temp_60_ele_of_*size_0_50_0, tracked: true } |     a5:Freed { symidx: temp_61_cmp_50_0, tracked: true } |     s2:Freed { symidx: min_f_52_1, tracked: true } |     s3:Freed { symidx: i_44_1, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     234  label while.exit_51: 
.while.exit_51:
              #                     472  untrack i_44_1 
              #                    occupy s3 with i_44_1
              #                    release s3 with i_44_1
              #                     471  untrack s_42_0 
              #                    occupy a0 with s_42_0
              #                    release a0 with s_42_0
              #                     470  untrack f_42_0 
              #                    occupy a2 with f_42_0
              #                    release a2 with f_42_0
              #                     469  untrack temp_59_ptr_of_*size_0_50 
              #                    occupy a3 with temp_59_ptr_of_*size_0_50
              #                    release a3 with temp_59_ptr_of_*size_0_50
              #                     468  untrack t_42_0 
              #                    occupy a1 with t_42_0
              #                    release a1 with t_42_0
              #                     467  untrack min_f_52_1 
              #                    occupy s2 with min_f_52_1
              #                    release s2 with min_f_52_1
              #                     368  mu cap_0_5:146 
              #                     369  mu used_0_3:146 
              #                     146  ret 0_0 
              #                    load from ra_dfs_0 in mem
    ld      ra,256(sp)
              #                    load from s0_dfs_0 in mem
    ld      s0,248(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,264
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     33   Define max_flow_0 "s_77_0,t_77_0," -> max_flow_ret_0 
    .globl max_flow
    .type max_flow,@function
max_flow:
              #                    mem layout:|ra_max_flow:8 at 32|s0_max_flow:8 at 24|s _s77 _i0:4 at 20|t _s77 _i0:4 at 16|flow _s79 _i1:4 at 12|temp_74_ret_of_dfs _s83 _i0:4 at 8|temp_75_arithop _s83 _i0:4 at 4|temp_77_cmp _s86 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-40
              #                    store to ra_max_flow_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_max_flow_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     370  used_0_5 = chi used_0_0:33 
              #                     371  cap_0_9 = chi cap_0_0:33 
              #                     280  alloc i32 [flow_79] 
              #                     282  alloc i32 [temp_74_ret_of_dfs_83] 
              #                     285  alloc i32 [f_83] 
              #                     286  alloc i32 [temp_75_arithop_83] 
              #                     291  alloc i1 [temp_76__3060] 
              #                     298  alloc i1 [temp_77_cmp_86] 
              #                    regtab     a0:Freed { symidx: s_77_0, tracked: true } |     a1:Freed { symidx: t_77_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     279  (nop) 
              #                     434  flow_79_1 = i32 0_0 
              #                    occupy a2 with flow_79_1
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_82 
    j       .while.head_82
              #                    regtab     a0:Freed { symidx: s_77_0, tracked: true } |     a1:Freed { symidx: t_77_0, tracked: true } |     a2:Freed { symidx: flow_79_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     293  label while.head_82: 
.while.head_82:
              #                     292  (nop) 
              #                          jump label: while.body_82 
    j       .while.body_82
              #                    regtab     a0:Freed { symidx: s_77_0, tracked: true } |     a1:Freed { symidx: t_77_0, tracked: true } |     a2:Freed { symidx: flow_79_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     294  label while.body_82: 
.while.body_82:
              #                     281   Call void my_memset_0(*used_0, 0_0, 10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with s_77_0
              #                    store to s_77_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with s_77_0
              #                    occupy a1 with t_77_0
              #                    store to t_77_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with t_77_0
              #                    occupy a2 with flow_79_1
              #                    store to flow_79_1 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with flow_79_1
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*used_0_0
              #                       load label used as ptr to reg
    la      a0, used
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_10_0_0
    li      a2, 10
              #                    arg load ended


    call    my_memset
              #                     372  mu used_0_6:281 
              #                     373  used_0_7 = chi used_0_6:281 
              #                     283  temp_74_ret_of_dfs_83_0 =  Call i32 dfs_0(s_77_0, t_77_0, 1879048192_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_s_77_0_0
              #                    load from s_77_0 in mem


    lw      a0,20(sp)
              #                    occupy a1 with _anonymous_of_t_77_0_0
              #                    load from t_77_0 in mem


    lw      a1,16(sp)
              #                    occupy a2 with _anonymous_of_1879048192_0_0
    li      a2, 1879048192
              #                    arg load ended


    call    dfs
              #                     374  mu size_0_0:283 
              #                     375  mu rev_0_0:283 
              #                     376  mu to_0_0:283 
              #                     377  mu cap_0_10:283 
              #                     378  mu used_0_7:283 
              #                     379  cap_0_11 = chi cap_0_10:283 
              #                     380  used_0_8 = chi used_0_7:283 
              #                     284  (nop) 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_74_ret_of_dfs_83_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     299  temp_77_cmp_86_0 = icmp i32 Eq temp_74_ret_of_dfs_83_0, 0_0 
              #                    occupy a0 with temp_74_ret_of_dfs_83_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_77_cmp_86_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     302  br i1 temp_77_cmp_86_0, label branch_true_87, label branch_false_87 
              #                    occupy a2 with temp_77_cmp_86_0
              #                    free a2
              #                    occupy a2 with temp_77_cmp_86_0
    bnez    a2, .branch_true_87
              #                    free a2
    j       .branch_false_87
              #                    regtab     a0:Freed { symidx: temp_74_ret_of_dfs_83_0, tracked: true } |     a2:Freed { symidx: temp_77_cmp_86_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     300  label branch_true_87: 
.branch_true_87:
              #                     512  untrack temp_77_cmp_86_0 
              #                    occupy a2 with temp_77_cmp_86_0
              #                    release a2 with temp_77_cmp_86_0
              #                     511  untrack temp_75_arithop_83_0 
              #                     510  untrack temp_74_ret_of_dfs_83_0 
              #                    occupy a0 with temp_74_ret_of_dfs_83_0
              #                    release a0 with temp_74_ret_of_dfs_83_0
              #                     381  mu used_0_8:290 
              #                     382  mu cap_0_11:290 
              #                     290  ret flow_79_1 
              #                    load from ra_max_flow_0 in mem
    ld      ra,32(sp)
              #                    load from s0_max_flow_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with flow_79_1
              #                    load from flow_79_1 in mem


    lw      a0,12(sp)
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_74_ret_of_dfs_83_0, tracked: true } |     a2:Freed { symidx: temp_77_cmp_86_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     301  label branch_false_87: 
.branch_false_87:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_74_ret_of_dfs_83_0, tracked: true } |     a2:Freed { symidx: temp_77_cmp_86_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     287  temp_75_arithop_83_0 = Add i32 flow_79_1, temp_74_ret_of_dfs_83_0 
              #                    occupy a1 with flow_79_1
              #                    load from flow_79_1 in mem


    lw      a1,12(sp)
              #                    occupy a0 with temp_74_ret_of_dfs_83_0
              #                    occupy a3 with temp_75_arithop_83_0
    ADDW    a3,a1,a0
              #                    free a1
              #                    free a0
              #                    free a3
              #                     288  (nop) 
              #                     435  flow_79_1 = i32 temp_75_arithop_83_0 
              #                    occupy a3 with temp_75_arithop_83_0
              #                    occupy a1 with flow_79_1
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: while.head_82 
              #                    occupy a3 with temp_75_arithop_83_0
              #                    store to temp_75_arithop_83_0 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_75_arithop_83_0
              #                    occupy a0 with temp_74_ret_of_dfs_83_0
              #                    store to temp_74_ret_of_dfs_83_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_74_ret_of_dfs_83_0
              #                    occupy a0 with s_77_0
              #                    load from s_77_0 in mem


    lw      a0,20(sp)
              #                    occupy a2 with temp_77_cmp_86_0
              #                    store to temp_77_cmp_86_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_77_cmp_86_0
              #                    occupy a1 with flow_79_1
              #                    store to flow_79_1 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with flow_79_1
              #                    occupy a2 with flow_79_1
              #                    load from flow_79_1 in mem


    lw      a2,12(sp)
              #                    occupy a1 with t_77_0
              #                    load from t_77_0 in mem


    lw      a1,16(sp)
    j       .while.head_82
              #                    regtab     a0:Freed { symidx: s_77_0, tracked: true } |     a1:Freed { symidx: t_77_0, tracked: true } |     a2:Freed { symidx: flow_79_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     295  label while.exit_82: 
.while.exit_82:
              #                     509  untrack flow_79_1 
              #                    occupy a2 with flow_79_1
              #                    release a2 with flow_79_1
              #                     508  untrack s_77_0 
              #                    occupy a0 with s_77_0
              #                    release a0 with s_77_0
              #                     507  untrack t_77_0 
              #                    occupy a1 with t_77_0
              #                    release a1 with t_77_0
              #                     383  mu used_0_6:297 
              #                     384  mu cap_0_10:297 
              #                     297  ret 0_0 
              #                    load from ra_max_flow_0 in mem
    ld      ra,32(sp)
              #                    load from s0_max_flow_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     34   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 64|s0_main:8 at 56|V _s91 _i0:4 at 52|E _s91 _i0:4 at 48|E _s91 _i2:4 at 44|temp_78_ret_of_getint _s91 _i0:4 at 40|temp_79_ret_of_getint _s91 _i0:4 at 36|temp_80_ret_of_max_flow _s91 _i0:4 at 32|u _s98 _i0:4 at 28|v _s98 _i0:4 at 24|temp_81_ret_of_getint _s98 _i0:4 at 20|temp_82_ret_of_getint _s98 _i0:4 at 16|temp_83_ret_of_getint _s98 _i0:4 at 12|temp_84_arithop _s98 _i0:4 at 8|temp_85_cmp _s96 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-72
              #                    store to ra_main_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     385  rev_0_4 = chi rev_0_0:34 
              #                     386  to_0_4 = chi to_0_0:34 
              #                     387  cap_0_12 = chi cap_0_0:34 
              #                     388  size_0_4 = chi size_0_0:34 
              #                     389  used_0_9 = chi used_0_0:34 
              #                     303  alloc i32 [V_91] 
              #                     305  alloc i32 [E_91] 
              #                     307  alloc i32 [temp_78_ret_of_getint_91] 
              #                     310  alloc i32 [temp_79_ret_of_getint_91] 
              #                     314  alloc i32 [temp_80_ret_of_max_flow_91] 
              #                     320  alloc i32 [u_98] 
              #                     322  alloc i32 [v_98] 
              #                     324  alloc i32 [temp_81_ret_of_getint_98] 
              #                     327  alloc i32 [temp_82_ret_of_getint_98] 
              #                     330  alloc i32 [temp_83_ret_of_getint_98] 
              #                     333  alloc i32 [c_98] 
              #                     335  alloc i32 [temp_84_arithop_98] 
              #                     338  alloc i1 [temp_85_cmp_96] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     304   
              #                     306   
              #                     308  temp_78_ret_of_getint_91_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     309  (nop) 
              #                     311  temp_79_ret_of_getint_91_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_78_ret_of_getint_91_0
              #                    store to temp_78_ret_of_getint_91_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_78_ret_of_getint_91_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     312  (nop) 
              #                     313   Call void my_memset_0(*size_0, 0_0, 10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_79_ret_of_getint_91_0
              #                    store to temp_79_ret_of_getint_91_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_79_ret_of_getint_91_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*size_0_0
              #                       load label size as ptr to reg
    la      a0, size
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_10_0_0
    li      a2, 10
              #                    arg load ended


    call    my_memset
              #                     390  mu size_0_4:313 
              #                     391  size_0_5 = chi size_0_4:313 
              #                     436  E_91_2 = i32 temp_79_ret_of_getint_91_0 
              #                    occupy a0 with temp_79_ret_of_getint_91_0
              #                    load from temp_79_ret_of_getint_91_0 in mem


    lw      a0,36(sp)
              #                    occupy a1 with E_91_2
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     513  untrack temp_79_ret_of_getint_91_0 
              #                    occupy a0 with temp_79_ret_of_getint_91_0
              #                    release a0 with temp_79_ret_of_getint_91_0
              #                          jump label: while.head_97 
    j       .while.head_97
              #                    regtab     a1:Freed { symidx: E_91_2, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     340  label while.head_97: 
.while.head_97:
              #                     339  temp_85_cmp_96_0 = icmp i32 Sgt E_91_2, 0_0 
              #                    occupy a1 with E_91_2
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with temp_85_cmp_96_0
    slt     a2,a0,a1
              #                    free a1
              #                    free a0
              #                    free a2
              #                     343  br i1 temp_85_cmp_96_0, label while.body_97, label while.exit_97 
              #                    occupy a2 with temp_85_cmp_96_0
              #                    free a2
              #                    occupy a2 with temp_85_cmp_96_0
    bnez    a2, .while.body_97
              #                    free a2
    j       .while.exit_97
              #                    regtab     a1:Freed { symidx: E_91_2, tracked: true } |     a2:Freed { symidx: temp_85_cmp_96_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     341  label while.body_97: 
.while.body_97:
              #                     321   
              #                     323   
              #                     325  temp_81_ret_of_getint_98_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with E_91_2
              #                    store to E_91_2 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with E_91_2
              #                    occupy a2 with temp_85_cmp_96_0
              #                    store to temp_85_cmp_96_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_85_cmp_96_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     326  (nop) 
              #                     328  temp_82_ret_of_getint_98_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_81_ret_of_getint_98_0
              #                    store to temp_81_ret_of_getint_98_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_81_ret_of_getint_98_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     329  (nop) 
              #                     331  temp_83_ret_of_getint_98_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_82_ret_of_getint_98_0
              #                    store to temp_82_ret_of_getint_98_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_82_ret_of_getint_98_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     332  (nop) 
              #                     334   Call void add_node_0(temp_81_ret_of_getint_98_0, temp_82_ret_of_getint_98_0, temp_83_ret_of_getint_98_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_83_ret_of_getint_98_0
              #                    store to temp_83_ret_of_getint_98_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_83_ret_of_getint_98_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_81_ret_of_getint_98_0_0
              #                    load from temp_81_ret_of_getint_98_0 in mem


    lw      a0,20(sp)
              #                    occupy a1 with _anonymous_of_temp_82_ret_of_getint_98_0_0
              #                    load from temp_82_ret_of_getint_98_0 in mem


    lw      a1,16(sp)
              #                    occupy a2 with _anonymous_of_temp_83_ret_of_getint_98_0_0
              #                    load from temp_83_ret_of_getint_98_0 in mem


    lw      a2,12(sp)
              #                    arg load ended


    call    add_node
              #                     392  mu cap_0_13:334 
              #                     393  mu size_0_6:334 
              #                     394  mu to_0_5:334 
              #                     395  mu rev_0_5:334 
              #                     396  size_0_7 = chi size_0_6:334 
              #                     397  rev_0_6 = chi rev_0_5:334 
              #                     398  to_0_6 = chi to_0_5:334 
              #                     399  cap_0_14 = chi cap_0_13:334 
              #                     336  temp_84_arithop_98_0 = Sub i32 E_91_2, 1_0 
              #                    occupy a0 with E_91_2
              #                    load from E_91_2 in mem


    lw      a0,44(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_84_arithop_98_0
              #                    regtab:    a0:Occupied { symidx: E_91_2, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_84_arithop_98_0, tracked: true, occupy_count: 1 } |  released_gpr_count:15,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     337  (nop) 
              #                     437  E_91_2 = i32 temp_84_arithop_98_0 
              #                    occupy a2 with temp_84_arithop_98_0
              #                    occupy a0 with E_91_2
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_97 
              #                    occupy a0 with E_91_2
              #                    store to E_91_2 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with E_91_2
              #                    occupy a2 with temp_84_arithop_98_0
              #                    store to temp_84_arithop_98_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_84_arithop_98_0
              #                    occupy a1 with E_91_2
              #                    load from E_91_2 in mem


    lw      a1,44(sp)
    j       .while.head_97
              #                    regtab     a1:Freed { symidx: E_91_2, tracked: true } |     a2:Freed { symidx: temp_85_cmp_96_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     342  label while.exit_97: 
.while.exit_97:
              #                     514  untrack E_91_2 
              #                    occupy a1 with E_91_2
              #                    release a1 with E_91_2
              #                     315  temp_80_ret_of_max_flow_91_0 =  Call i32 max_flow_0(1_0, temp_78_ret_of_getint_91_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_85_cmp_96_0
              #                    store to temp_85_cmp_96_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_85_cmp_96_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_temp_78_ret_of_getint_91_0_0
              #                    load from temp_78_ret_of_getint_91_0 in mem


    lw      a1,40(sp)
              #                    arg load ended


    call    max_flow
              #                     515  untrack temp_78_ret_of_getint_91_0 
              #                     400  mu to_0_5:315 
              #                     401  mu size_0_6:315 
              #                     402  mu cap_0_13:315 
              #                     403  mu used_0_9:315 
              #                     404  mu rev_0_5:315 
              #                     405  used_0_10 = chi used_0_9:315 
              #                     406  cap_0_15 = chi cap_0_13:315 
              #                     316   Call void putint_0(temp_80_ret_of_max_flow_91_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_80_ret_of_max_flow_91_0
              #                    store to temp_80_ret_of_max_flow_91_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_80_ret_of_max_flow_91_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_80_ret_of_max_flow_91_0_0
              #                    load from temp_80_ret_of_max_flow_91_0 in mem


    lw      a0,32(sp)
              #                    arg load ended


    call    putint
              #                     516  untrack temp_80_ret_of_max_flow_91_0 
              #                     317   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     407  mu rev_0_5:319 
              #                     408  mu to_0_5:319 
              #                     409  mu cap_0_15:319 
              #                     410  mu size_0_6:319 
              #                     411  mu used_0_10:319 
              #                     319  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,64(sp)
              #                    load from s0_main_0 in mem
    ld      s0,56(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,72
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl used
              #                     27   global Array:i32:[Some(10_0)] used_0 
    .type used,@object
used:
    .zero 40
    .align 4
    .globl rev
              #                     25   global Array:i32:[Some(10_0), Some(10_0)] rev_0 
    .type rev,@object
rev:
    .zero 400
    .align 4
    .globl cap
              #                     23   global Array:i32:[Some(10_0), Some(10_0)] cap_0 
    .type cap,@object
cap:
    .zero 400
    .align 4
    .globl to
              #                     21   global Array:i32:[Some(10_0), Some(10_0)] to_0 
    .type to,@object
to:
    .zero 400
    .align 4
    .globl size
              #                     19   global Array:i32:[Some(10_0)] size_0 
    .type size,@object
size:
    .zero 40
    .align 4
    .globl INF
              #                     17   global i32 INF_0 
    .type INF,@object
INF:
    .word 1879048192
