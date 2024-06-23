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
              #                    regtab 
              #                          Define my_memset_0 [arr_22, val_22, n_22] -> my_memset_ret_0 
    .globl my_memset
    .type my_memset,@function
my_memset:
              #                    mem layout:|ra_my_memset:8 at 48|s0_my_memset:8 at 40|arr:8 at 32|val:4 at 28|n:4 at 24|i:4 at 20|temp_0_cmp:1 at 19|none:3 at 16|temp_1_index_ptr:8 at 8|temp_2_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-56
              #                    store to ra_my_memset_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_my_memset_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          new_var arr_22:ptr->i32 
              #                          alloc i32 i_24 
              #                          alloc i1 temp_0_cmp_26 
              #                          alloc ptr->i32 temp_1_index_ptr_28 
              #                          alloc i32 temp_2_arithop_28 
              #                    regtab     a0:Freed { symidx: arr_22, tracked: true } |     a1:Freed { symidx: val_22, tracked: true } |     a2:Freed { symidx: n_22, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          i_24 = i32 0_0 
              #                    occupy a3 with i_24
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_27 
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: arr_22, tracked: true } |     a1:Freed { symidx: val_22, tracked: true } |     a2:Freed { symidx: n_22, tracked: true } |     a3:Freed { symidx: i_24, tracked: true } | 
              #                          label while.head_27: 
.while.head_27:
              #                          new_var temp_0_cmp_26:i1 
              #                          temp_0_cmp_26 = icmp i32 Slt i_24, n_22 
              #                    occupy a3 with i_24
              #                    occupy a2 with n_22
              #                    occupy a4 with temp_0_cmp_26
    slt     a4,a3,a2
              #                    free a3
              #                    free a2
              #                    free a4
              #                          br i1 temp_0_cmp_26, label while.body_27, label while.exit_27 
              #                    occupy a4 with temp_0_cmp_26
              #                    free a4
              #                    occupy a4 with temp_0_cmp_26
    bnez    a4, .while.body_27
              #                    free a4
    j       .while.exit_27
              #                    regtab     a0:Freed { symidx: arr_22, tracked: true } |     a1:Freed { symidx: val_22, tracked: true } |     a2:Freed { symidx: n_22, tracked: true } |     a3:Freed { symidx: i_24, tracked: true } |     a4:Freed { symidx: temp_0_cmp_26, tracked: true } | 
              #                          label while.body_27: 
.while.body_27:
              #                          new_var temp_1_index_ptr_28:ptr->i32 
              #                          temp_1_index_ptr_28 = getelementptr arr_22:ptr->i32 [Some(i_24)] 
              #                    occupy a5 with temp_1_index_ptr_28
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a3 with i_24
              #                    occupy a7 with _anonymous_of_arr_22_0
    mul     a7,a6,a3
              #                    free a6
              #                    free a3
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy a0 with arr_22
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                          store val_22:i32 temp_1_index_ptr_28:ptr->i32 
              #                    occupy a5 with temp_1_index_ptr_28
              #                    occupy a1 with val_22
    sw      a1,0(a5)
              #                    free a1
              #                    free a5
              #                          mu arr_22:46 
              #                          arr_22 = chi arr_22:46 
              #                          new_var temp_2_arithop_28:i32 
              #                          temp_2_arithop_28 = Add i32 i_24, 1_0 
              #                    occupy a3 with i_24
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s1 with temp_2_arithop_28
    add     s1,a3,a6
              #                    free a3
              #                    free a6
              #                    free s1
              #                          i_24 = i32 temp_2_arithop_28 
              #                    occupy s1 with temp_2_arithop_28
              #                    occupy a3 with i_24
    mv      a3, s1
              #                    free s1
              #                    free a3
              #                          jump label: while.head_27 
              #                    store to temp_1_index_ptr_28 in mem offset legal
    sd      a5,8(sp)
              #                    release a5 with temp_1_index_ptr_28
              #                    store to temp_2_arithop_28 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_2_arithop_28
              #                    store to temp_0_cmp_26 in mem offset legal
    sb      a4,19(sp)
              #                    release a4 with temp_0_cmp_26
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: arr_22, tracked: true } |     a1:Freed { symidx: val_22, tracked: true } |     a2:Freed { symidx: n_22, tracked: true } |     a3:Freed { symidx: i_24, tracked: true } |     a4:Freed { symidx: temp_0_cmp_26, tracked: true } | 
              #                          label while.exit_27: 
.while.exit_27:
              #                    regtab 
              #                          Define add_node_0 [u_31, v_31, c_31] -> add_node_ret_0 
    .globl add_node
    .type add_node,@function
add_node:
              #                    mem layout:|ra_add_node:8 at 648|s0_add_node:8 at 640|u:4 at 636|v:4 at 632|c:4 at 628|temp_3_ptr2globl:40 at 588|none:4 at 584|temp_4_array_ptr:8 at 576|temp_5_array_ele:4 at 572|none:4 at 568|temp_6_index_ptr:8 at 560|temp_7_ptr2globl:40 at 520|temp_8_array_ptr:8 at 512|temp_9_array_ele:4 at 508|none:4 at 504|temp_10_index_ptr:8 at 496|temp_11_ptr2globl:40 at 456|temp_12_array_ptr:8 at 448|temp_13_array_ele:4 at 444|none:4 at 440|temp_14_index_ptr:8 at 432|temp_15_ptr2globl:40 at 392|temp_16_array_ptr:8 at 384|temp_17_array_ele:4 at 380|temp_18_ptr2globl:40 at 340|none:4 at 336|temp_19_array_ptr:8 at 328|temp_20_array_ele:4 at 324|none:4 at 320|temp_21_index_ptr:8 at 312|temp_22_ptr2globl:40 at 272|temp_23_array_ptr:8 at 264|temp_24_array_ele:4 at 260|none:4 at 256|temp_25_index_ptr:8 at 248|temp_26_ptr2globl:40 at 208|temp_27_array_ptr:8 at 200|temp_28_array_ele:4 at 196|none:4 at 192|temp_29_index_ptr:8 at 184|temp_30_ptr2globl:40 at 144|temp_31_array_ptr:8 at 136|temp_32_array_ele:4 at 132|none:4 at 128|temp_33_index_ptr:8 at 120|temp_34_ptr2globl:40 at 80|temp_35_array_ptr:8 at 72|temp_36_array_ele:4 at 68|temp_37_arithop:4 at 64|temp_38_index_ptr:8 at 56|temp_39_ptr2globl:40 at 16|temp_40_array_ptr:8 at 8|temp_41_array_ele:4 at 4|temp_42_arithop:4 at 0
    addi    sp,sp,-656
              #                    store to ra_add_node_0 in mem offset legal
    sd      ra,648(sp)
              #                    store to s0_add_node_0 in mem offset legal
    sd      s0,640(sp)
    addi    s0,sp,656
              #                          alloc Array:i32:[Some(10_0)] temp_3_ptr2globl_33 
              #                          alloc ptr->i32 temp_4_array_ptr_33 
              #                          alloc i32 temp_5_array_ele_33 
              #                          alloc ptr->i32 temp_6_index_ptr_33 
              #                          alloc Array:i32:[Some(10_0)] temp_7_ptr2globl_33 
              #                          alloc ptr->i32 temp_8_array_ptr_33 
              #                          alloc i32 temp_9_array_ele_33 
              #                          alloc ptr->i32 temp_10_index_ptr_33 
              #                          alloc Array:i32:[Some(10_0)] temp_11_ptr2globl_33 
              #                          alloc ptr->i32 temp_12_array_ptr_33 
              #                          alloc i32 temp_13_array_ele_33 
              #                          alloc ptr->i32 temp_14_index_ptr_33 
              #                          alloc Array:i32:[Some(10_0)] temp_15_ptr2globl_33 
              #                          alloc ptr->i32 temp_16_array_ptr_33 
              #                          alloc i32 temp_17_array_ele_33 
              #                          alloc Array:i32:[Some(10_0)] temp_18_ptr2globl_33 
              #                          alloc ptr->i32 temp_19_array_ptr_33 
              #                          alloc i32 temp_20_array_ele_33 
              #                          alloc ptr->i32 temp_21_index_ptr_33 
              #                          alloc Array:i32:[Some(10_0)] temp_22_ptr2globl_33 
              #                          alloc ptr->i32 temp_23_array_ptr_33 
              #                          alloc i32 temp_24_array_ele_33 
              #                          alloc ptr->i32 temp_25_index_ptr_33 
              #                          alloc Array:i32:[Some(10_0)] temp_26_ptr2globl_33 
              #                          alloc ptr->i32 temp_27_array_ptr_33 
              #                          alloc i32 temp_28_array_ele_33 
              #                          alloc ptr->i32 temp_29_index_ptr_33 
              #                          alloc Array:i32:[Some(10_0)] temp_30_ptr2globl_33 
              #                          alloc ptr->i32 temp_31_array_ptr_33 
              #                          alloc i32 temp_32_array_ele_33 
              #                          alloc ptr->i32 temp_33_index_ptr_33 
              #                          alloc Array:i32:[Some(10_0)] temp_34_ptr2globl_33 
              #                          alloc ptr->i32 temp_35_array_ptr_33 
              #                          alloc i32 temp_36_array_ele_33 
              #                          alloc i32 temp_37_arithop_33 
              #                          alloc ptr->i32 temp_38_index_ptr_33 
              #                          alloc Array:i32:[Some(10_0)] temp_39_ptr2globl_33 
              #                          alloc ptr->i32 temp_40_array_ptr_33 
              #                          alloc i32 temp_41_array_ele_33 
              #                          alloc i32 temp_42_arithop_33 
              #                    regtab     a0:Freed { symidx: u_31, tracked: true } |     a1:Freed { symidx: v_31, tracked: true } |     a2:Freed { symidx: c_31, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                          new_var temp_3_ptr2globl_33:Array:i32:[Some(10_0)] 
              #                          temp_3_ptr2globl_33 = load *size_0:ptr->i32 
              #                    occupy a3 with *size_0
              #                       load label size as ptr to reg
    la      a3, size
              #                    occupy reg a3 with *size_0
              #                    occupy a4 with temp_3_ptr2globl_33
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          new_var temp_4_array_ptr_33:ptr->i32 
              #                          temp_4_array_ptr_33 = getelementptr temp_3_ptr2globl_33:Array:i32:[Some(10_0)] [Some(u_31)] 
              #                    occupy a5 with temp_4_array_ptr_33
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with u_31
              #                    occupy a7 with _anonymous_of_temp_3_ptr2globl_33_0
    mul     a7,a6,a0
              #                    free a6
              #                    free a0
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,588
              #                    free a5
              #                          new_var temp_5_array_ele_33:i32 
              #                          temp_5_array_ele_33 = load temp_4_array_ptr_33:ptr->i32 
              #                    occupy a5 with temp_4_array_ptr_33
              #                    occupy s1 with temp_5_array_ele_33
    lw      s1,0(a5)
              #                    free s1
              #                    free a5
              #                          new_var temp_6_index_ptr_33:ptr->i32 
              #                          temp_6_index_ptr_33 = getelementptr to_0:Array:i32:[Some(10_0), Some(10_0)] [Some(u_31), Some(temp_5_array_ele_33)] 
              #                    occupy s2 with temp_6_index_ptr_33
    li      s2, 0
              #                    occupy s3 with 10_0
    li      s3, 10
              #                    occupy a0 with u_31
              #                    occupy s4 with _anonymous_of_to_0_0
    mul     s4,s3,a0
              #                    free s3
              #                    free a0
    add     s2,s2,s4
              #                    free s4
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s1 with temp_5_array_ele_33
              #                    occupy s5 with _anonymous_of_to_0_0
    mul     s5,a6,s1
              #                    free a6
              #                    free s1
    add     s2,s2,s5
              #                    free s5
    slli s2,s2,2
              #                    occupy s6 with _anonymous_of_to_0_0
    la      s6, to
    add     s2,s2,s6
              #                    free s6
              #                    free s2
              #                          store v_31:i32 temp_6_index_ptr_33:ptr->i32 
              #                    occupy s2 with temp_6_index_ptr_33
              #                    occupy a1 with v_31
    sw      a1,0(s2)
              #                    free a1
              #                    free s2
              #                          mu to_0:65 
              #                          to_0 = chi to_0:65 
              #                          new_var temp_7_ptr2globl_33:Array:i32:[Some(10_0)] 
              #                          temp_7_ptr2globl_33 = load *size_0:ptr->i32 
              #                    occupy s7 with *size_0
              #                       load label size as ptr to reg
    la      s7, size
              #                    occupy reg s7 with *size_0
              #                    occupy s8 with temp_7_ptr2globl_33
    lw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                          new_var temp_8_array_ptr_33:ptr->i32 
              #                          temp_8_array_ptr_33 = getelementptr temp_7_ptr2globl_33:Array:i32:[Some(10_0)] [Some(u_31)] 
              #                    occupy s9 with temp_8_array_ptr_33
    li      s9, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a0 with u_31
              #                    occupy s10 with _anonymous_of_temp_7_ptr2globl_33_0
    mul     s10,a6,a0
              #                    free a6
              #                    free a0
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,520
              #                    free s9
              #                          new_var temp_9_array_ele_33:i32 
              #                          temp_9_array_ele_33 = load temp_8_array_ptr_33:ptr->i32 
              #                    occupy s9 with temp_8_array_ptr_33
              #                    occupy s11 with temp_9_array_ele_33
    lw      s11,0(s9)
              #                    free s11
              #                    free s9
              #                          new_var temp_10_index_ptr_33:ptr->i32 
              #                          temp_10_index_ptr_33 = getelementptr cap_0:Array:i32:[Some(10_0), Some(10_0)] [Some(u_31), Some(temp_9_array_ele_33)] 
              #                    occupy a3 with temp_10_index_ptr_33
    li      a3, 0
              #                    found literal reg Some(s3) already exist with 10_0
              #                    occupy s3 with 10_0
              #                    occupy a0 with u_31
              #                    occupy a6 with _anonymous_of_cap_0_0
    mul     a6,s3,a0
              #                    free s3
              #                    free a0
    add     a3,a3,a6
              #                    free a6
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s11 with temp_9_array_ele_33
              #                    occupy a7 with _anonymous_of_cap_0_0
    mul     a7,a6,s11
              #                    free a6
              #                    free s11
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
              #                    occupy a6 with _anonymous_of_cap_0_0
    la      a6, cap
    add     a3,a3,a6
              #                    free a6
              #                    free a3
              #                          store c_31:i32 temp_10_index_ptr_33:ptr->i32 
              #                    occupy a3 with temp_10_index_ptr_33
              #                    occupy a2 with c_31
    sw      a2,0(a3)
              #                    free a2
              #                    free a3
              #                          mu cap_0:80 
              #                          cap_0 = chi cap_0:80 
              #                          new_var temp_11_ptr2globl_33:Array:i32:[Some(10_0)] 
              #                          temp_11_ptr2globl_33 = load *size_0:ptr->i32 
              #                    occupy a6 with *size_0
              #                       load label size as ptr to reg
    la      a6, size
              #                    occupy reg a6 with *size_0
              #                    occupy a7 with temp_11_ptr2globl_33
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_12_array_ptr_33:ptr->i32 
              #                          temp_12_array_ptr_33 = getelementptr temp_11_ptr2globl_33:Array:i32:[Some(10_0)] [Some(u_31)] 
              #                    occupy a6 with temp_12_array_ptr_33
    li      a6, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a0 with u_31
              #                    occupy s4 with _anonymous_of_temp_11_ptr2globl_33_0
    mul     s4,s3,a0
              #                    free s3
              #                    free a0
    add     a6,a6,s4
              #                    free s4
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,456
              #                    free a6
              #                          new_var temp_13_array_ele_33:i32 
              #                          temp_13_array_ele_33 = load temp_12_array_ptr_33:ptr->i32 
              #                    occupy a6 with temp_12_array_ptr_33
              #                    occupy s3 with temp_13_array_ele_33
    lw      s3,0(a6)
              #                    free s3
              #                    free a6
              #                          new_var temp_14_index_ptr_33:ptr->i32 
              #                          temp_14_index_ptr_33 = getelementptr rev_0:Array:i32:[Some(10_0), Some(10_0)] [Some(u_31), Some(temp_13_array_ele_33)] 
              #                    occupy s4 with temp_14_index_ptr_33
    li      s4, 0
              #                    occupy s5 with 10_0
    li      s5, 10
              #                    occupy a0 with u_31
              #                    occupy s6 with _anonymous_of_rev_0_0
    mul     s6,s5,a0
              #                    free s5
              #                    free a0
    add     s4,s4,s6
              #                    free s6
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s3 with temp_13_array_ele_33
              #                    occupy s6 with _anonymous_of_rev_0_0
    mul     s6,s5,s3
              #                    free s5
              #                    free s3
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
              #                    occupy s5 with _anonymous_of_rev_0_0
    la      s5, rev
    add     s4,s4,s5
              #                    free s5
              #                    free s4
              #                          new_var temp_15_ptr2globl_33:Array:i32:[Some(10_0)] 
              #                          temp_15_ptr2globl_33 = load *size_0:ptr->i32 
              #                    occupy s5 with *size_0
              #                       load label size as ptr to reg
    la      s5, size
              #                    occupy reg s5 with *size_0
              #                    occupy s6 with temp_15_ptr2globl_33
    lw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                          new_var temp_16_array_ptr_33:ptr->i32 
              #                          temp_16_array_ptr_33 = getelementptr temp_15_ptr2globl_33:Array:i32:[Some(10_0)] [Some(v_31)] 
              #                    occupy s5 with temp_16_array_ptr_33
    li      s5, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy a1 with v_31
              #                    occupy s10 with _anonymous_of_temp_15_ptr2globl_33_0
    mul     s10,s7,a1
              #                    free s7
              #                    free a1
    add     s5,s5,s10
              #                    free s10
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,392
              #                    free s5
              #                          new_var temp_17_array_ele_33:i32 
              #                          temp_17_array_ele_33 = load temp_16_array_ptr_33:ptr->i32 
              #                    occupy s5 with temp_16_array_ptr_33
              #                    occupy s7 with temp_17_array_ele_33
    lw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          store temp_17_array_ele_33:i32 temp_14_index_ptr_33:ptr->i32 
              #                    occupy s4 with temp_14_index_ptr_33
              #                    occupy s7 with temp_17_array_ele_33
    sw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          mu rev_0:104 
              #                          rev_0 = chi rev_0:104 
              #                          new_var temp_18_ptr2globl_33:Array:i32:[Some(10_0)] 
              #                          temp_18_ptr2globl_33 = load *size_0:ptr->i32 
              #                    occupy s10 with *size_0
              #                       load label size as ptr to reg
    la      s10, size
              #                    occupy reg s10 with *size_0
              #                    store to u_31 in mem offset legal
    sw      a0,636(sp)
              #                    release a0 with u_31
              #                    occupy a0 with temp_18_ptr2globl_33
    lw      a0,0(s10)
              #                    free a0
              #                    free s10
              #                          new_var temp_19_array_ptr_33:ptr->i32 
              #                          temp_19_array_ptr_33 = getelementptr temp_18_ptr2globl_33:Array:i32:[Some(10_0)] [Some(v_31)] 
              #                    occupy s10 with temp_19_array_ptr_33
    li      s10, 0
              #                    store to temp_18_ptr2globl_33 in mem offset legal
    sw      a0,340(sp)
              #                    release a0 with temp_18_ptr2globl_33
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with v_31
              #                    store to c_31 in mem offset legal
    sw      a2,628(sp)
              #                    release a2 with c_31
              #                    occupy a2 with _anonymous_of_temp_18_ptr2globl_33_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s10,s10,a2
              #                    free a2
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,340
              #                    free s10
              #                          new_var temp_20_array_ele_33:i32 
              #                          temp_20_array_ele_33 = load temp_19_array_ptr_33:ptr->i32 
              #                    occupy s10 with temp_19_array_ptr_33
              #                    occupy a0 with temp_20_array_ele_33
    lw      a0,0(s10)
              #                    free a0
              #                    free s10
              #                          new_var temp_21_index_ptr_33:ptr->i32 
              #                          temp_21_index_ptr_33 = getelementptr to_0:Array:i32:[Some(10_0), Some(10_0)] [Some(v_31), Some(temp_20_array_ele_33)] 
              #                    occupy a2 with temp_21_index_ptr_33
    li      a2, 0
              #                    store to temp_20_array_ele_33 in mem offset legal
    sw      a0,324(sp)
              #                    release a0 with temp_20_array_ele_33
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    occupy a1 with v_31
              #                    store to temp_10_index_ptr_33 in mem offset legal
    sd      a3,496(sp)
              #                    release a3 with temp_10_index_ptr_33
              #                    occupy a3 with _anonymous_of_to_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with temp_20_array_ele_33
              #                    load from temp_20_array_ele_33 in mem


    lw      a3,324(sp)
              #                    store to v_31 in mem offset legal
    sw      a1,632(sp)
              #                    release a1 with v_31
              #                    occupy a1 with _anonymous_of_to_0_0
    mul     a1,a0,a3
              #                    free a0
              #                    free a3
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
              #                    occupy a0 with _anonymous_of_to_0_0
    la      a0, to
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          store u_31:i32 temp_21_index_ptr_33:ptr->i32 
              #                    occupy a2 with temp_21_index_ptr_33
              #                    occupy a0 with u_31
              #                    load from u_31 in mem


    lw      a0,636(sp)
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          mu to_0:119 
              #                          to_0 = chi to_0:119 
              #                          new_var temp_22_ptr2globl_33:Array:i32:[Some(10_0)] 
              #                          temp_22_ptr2globl_33 = load *size_0:ptr->i32 
              #                    occupy a1 with *size_0
              #                       load label size as ptr to reg
    la      a1, size
              #                    occupy reg a1 with *size_0
              #                    store to u_31 in mem offset legal
    sw      a0,636(sp)
              #                    release a0 with u_31
              #                    occupy a0 with temp_22_ptr2globl_33
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_23_array_ptr_33:ptr->i32 
              #                          temp_23_array_ptr_33 = getelementptr temp_22_ptr2globl_33:Array:i32:[Some(10_0)] [Some(v_31)] 
              #                    occupy a1 with temp_23_array_ptr_33
    li      a1, 0
              #                    store to temp_22_ptr2globl_33 in mem offset legal
    sw      a0,272(sp)
              #                    release a0 with temp_22_ptr2globl_33
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_21_index_ptr_33 in mem offset legal
    sd      a2,312(sp)
              #                    release a2 with temp_21_index_ptr_33
              #                    occupy a2 with v_31
              #                    load from v_31 in mem


    lw      a2,632(sp)
              #                    store to temp_20_array_ele_33 in mem offset legal
    sw      a3,324(sp)
              #                    release a3 with temp_20_array_ele_33
              #                    occupy a3 with _anonymous_of_temp_22_ptr2globl_33_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,272
              #                    free a1
              #                          new_var temp_24_array_ele_33:i32 
              #                          temp_24_array_ele_33 = load temp_23_array_ptr_33:ptr->i32 
              #                    occupy a1 with temp_23_array_ptr_33
              #                    occupy a0 with temp_24_array_ele_33
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_25_index_ptr_33:ptr->i32 
              #                          temp_25_index_ptr_33 = getelementptr cap_0:Array:i32:[Some(10_0), Some(10_0)] [Some(v_31), Some(temp_24_array_ele_33)] 
              #                    occupy a3 with temp_25_index_ptr_33
    li      a3, 0
              #                    store to temp_24_array_ele_33 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with temp_24_array_ele_33
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    occupy a2 with v_31
              #                    store to temp_23_array_ptr_33 in mem offset legal
    sd      a1,264(sp)
              #                    release a1 with temp_23_array_ptr_33
              #                    occupy a1 with _anonymous_of_cap_0_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     a3,a3,a1
              #                    free a1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with temp_24_array_ele_33
              #                    load from temp_24_array_ele_33 in mem


    lw      a1,260(sp)
              #                    store to v_31 in mem offset legal
    sw      a2,632(sp)
              #                    release a2 with v_31
              #                    occupy a2 with _anonymous_of_cap_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with _anonymous_of_cap_0_0
    la      a0, cap
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          store 0_0:i32 temp_25_index_ptr_33:ptr->i32 
              #                    occupy a3 with temp_25_index_ptr_33
              #                    occupy a0 with 0_0
    li      a0, 0
    sw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          mu cap_0:134 
              #                          cap_0 = chi cap_0:134 
              #                          new_var temp_26_ptr2globl_33:Array:i32:[Some(10_0)] 
              #                          temp_26_ptr2globl_33 = load *size_0:ptr->i32 
              #                    occupy a0 with *size_0
              #                       load label size as ptr to reg
    la      a0, size
              #                    occupy reg a0 with *size_0
              #                    occupy a2 with temp_26_ptr2globl_33
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          new_var temp_27_array_ptr_33:ptr->i32 
              #                          temp_27_array_ptr_33 = getelementptr temp_26_ptr2globl_33:Array:i32:[Some(10_0)] [Some(v_31)] 
              #                    occupy a0 with temp_27_array_ptr_33
    li      a0, 0
              #                    store to temp_24_array_ele_33 in mem offset legal
    sw      a1,260(sp)
              #                    release a1 with temp_24_array_ele_33
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_26_ptr2globl_33 in mem offset legal
    sw      a2,208(sp)
              #                    release a2 with temp_26_ptr2globl_33
              #                    occupy a2 with v_31
              #                    load from v_31 in mem


    lw      a2,632(sp)
              #                    store to temp_25_index_ptr_33 in mem offset legal
    sd      a3,248(sp)
              #                    release a3 with temp_25_index_ptr_33
              #                    occupy a3 with _anonymous_of_temp_26_ptr2globl_33_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,208
              #                    free a0
              #                          new_var temp_28_array_ele_33:i32 
              #                          temp_28_array_ele_33 = load temp_27_array_ptr_33:ptr->i32 
              #                    occupy a0 with temp_27_array_ptr_33
              #                    occupy a1 with temp_28_array_ele_33
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_29_index_ptr_33:ptr->i32 
              #                          temp_29_index_ptr_33 = getelementptr rev_0:Array:i32:[Some(10_0), Some(10_0)] [Some(v_31), Some(temp_28_array_ele_33)] 
              #                    occupy a3 with temp_29_index_ptr_33
    li      a3, 0
              #                    store to temp_27_array_ptr_33 in mem offset legal
    sd      a0,200(sp)
              #                    release a0 with temp_27_array_ptr_33
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    occupy a2 with v_31
              #                    store to temp_28_array_ele_33 in mem offset legal
    sw      a1,196(sp)
              #                    release a1 with temp_28_array_ele_33
              #                    occupy a1 with _anonymous_of_rev_0_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     a3,a3,a1
              #                    free a1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with temp_28_array_ele_33
              #                    load from temp_28_array_ele_33 in mem


    lw      a1,196(sp)
              #                    store to v_31 in mem offset legal
    sw      a2,632(sp)
              #                    release a2 with v_31
              #                    occupy a2 with _anonymous_of_rev_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with _anonymous_of_rev_0_0
    la      a0, rev
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_30_ptr2globl_33:Array:i32:[Some(10_0)] 
              #                          temp_30_ptr2globl_33 = load *size_0:ptr->i32 
              #                    occupy a0 with *size_0
              #                       load label size as ptr to reg
    la      a0, size
              #                    occupy reg a0 with *size_0
              #                    occupy a2 with temp_30_ptr2globl_33
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          new_var temp_31_array_ptr_33:ptr->i32 
              #                          temp_31_array_ptr_33 = getelementptr temp_30_ptr2globl_33:Array:i32:[Some(10_0)] [Some(u_31)] 
              #                    occupy a0 with temp_31_array_ptr_33
    li      a0, 0
              #                    store to temp_28_array_ele_33 in mem offset legal
    sw      a1,196(sp)
              #                    release a1 with temp_28_array_ele_33
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_30_ptr2globl_33 in mem offset legal
    sw      a2,144(sp)
              #                    release a2 with temp_30_ptr2globl_33
              #                    occupy a2 with u_31
              #                    load from u_31 in mem


    lw      a2,636(sp)
              #                    store to temp_29_index_ptr_33 in mem offset legal
    sd      a3,184(sp)
              #                    release a3 with temp_29_index_ptr_33
              #                    occupy a3 with _anonymous_of_temp_30_ptr2globl_33_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,144
              #                    free a0
              #                          new_var temp_32_array_ele_33:i32 
              #                          temp_32_array_ele_33 = load temp_31_array_ptr_33:ptr->i32 
              #                    occupy a0 with temp_31_array_ptr_33
              #                    occupy a1 with temp_32_array_ele_33
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          store temp_32_array_ele_33:i32 temp_29_index_ptr_33:ptr->i32 
              #                    occupy a3 with temp_29_index_ptr_33
              #                    load from temp_29_index_ptr_33 in mem
    ld      a3,184(sp)
              #                    occupy a1 with temp_32_array_ele_33
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                          mu rev_0:158 
              #                          rev_0 = chi rev_0:158 
              #                          new_var temp_33_index_ptr_33:ptr->i32 
              #                          temp_33_index_ptr_33 = getelementptr size_0:Array:i32:[Some(10_0)] [Some(u_31)] 
              #                    store to temp_31_array_ptr_33 in mem offset legal
    sd      a0,136(sp)
              #                    release a0 with temp_31_array_ptr_33
              #                    occupy a0 with temp_33_index_ptr_33
    li      a0, 0
              #                    store to temp_32_array_ele_33 in mem offset legal
    sw      a1,132(sp)
              #                    release a1 with temp_32_array_ele_33
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with u_31
              #                    store to temp_29_index_ptr_33 in mem offset legal
    sd      a3,184(sp)
              #                    release a3 with temp_29_index_ptr_33
              #                    occupy a3 with _anonymous_of_size_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with _anonymous_of_size_0_0
    la      a1, size
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_34_ptr2globl_33:Array:i32:[Some(10_0)] 
              #                          temp_34_ptr2globl_33 = load *size_0:ptr->i32 
              #                    occupy a1 with *size_0
              #                       load label size as ptr to reg
    la      a1, size
              #                    occupy reg a1 with *size_0
              #                    occupy a3 with temp_34_ptr2globl_33
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_35_array_ptr_33:ptr->i32 
              #                          temp_35_array_ptr_33 = getelementptr temp_34_ptr2globl_33:Array:i32:[Some(10_0)] [Some(u_31)] 
              #                    occupy a1 with temp_35_array_ptr_33
    li      a1, 0
              #                    store to temp_33_index_ptr_33 in mem offset legal
    sd      a0,120(sp)
              #                    release a0 with temp_33_index_ptr_33
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with u_31
              #                    store to temp_34_ptr2globl_33 in mem offset legal
    sw      a3,80(sp)
              #                    release a3 with temp_34_ptr2globl_33
              #                    occupy a3 with _anonymous_of_temp_34_ptr2globl_33_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,80
              #                    free a1
              #                          new_var temp_36_array_ele_33:i32 
              #                          temp_36_array_ele_33 = load temp_35_array_ptr_33:ptr->i32 
              #                    occupy a1 with temp_35_array_ptr_33
              #                    occupy a0 with temp_36_array_ele_33
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_37_arithop_33:i32 
              #                          temp_37_arithop_33 = Add i32 temp_36_array_ele_33, 1_0 
              #                    occupy a0 with temp_36_array_ele_33
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    store to temp_35_array_ptr_33 in mem offset legal
    sd      a1,72(sp)
              #                    release a1 with temp_35_array_ptr_33
              #                    occupy a1 with temp_37_arithop_33
    add     a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                          store temp_37_arithop_33:i32 temp_33_index_ptr_33:ptr->i32 
              #                    occupy a3 with temp_33_index_ptr_33
              #                    load from temp_33_index_ptr_33 in mem
    ld      a3,120(sp)
              #                    occupy a1 with temp_37_arithop_33
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                          mu size_0:176 
              #                          size_0 = chi size_0:176 
              #                          new_var temp_38_index_ptr_33:ptr->i32 
              #                          temp_38_index_ptr_33 = getelementptr size_0:Array:i32:[Some(10_0)] [Some(v_31)] 
              #                    store to temp_36_array_ele_33 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_36_array_ele_33
              #                    occupy a0 with temp_38_index_ptr_33
    li      a0, 0
              #                    store to temp_37_arithop_33 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with temp_37_arithop_33
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to u_31 in mem offset legal
    sw      a2,636(sp)
              #                    release a2 with u_31
              #                    occupy a2 with v_31
              #                    load from v_31 in mem


    lw      a2,632(sp)
              #                    store to temp_33_index_ptr_33 in mem offset legal
    sd      a3,120(sp)
              #                    release a3 with temp_33_index_ptr_33
              #                    occupy a3 with _anonymous_of_size_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with _anonymous_of_size_0_0
    la      a1, size
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_39_ptr2globl_33:Array:i32:[Some(10_0)] 
              #                          temp_39_ptr2globl_33 = load *size_0:ptr->i32 
              #                    occupy a1 with *size_0
              #                       load label size as ptr to reg
    la      a1, size
              #                    occupy reg a1 with *size_0
              #                    occupy a3 with temp_39_ptr2globl_33
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_40_array_ptr_33:ptr->i32 
              #                          temp_40_array_ptr_33 = getelementptr temp_39_ptr2globl_33:Array:i32:[Some(10_0)] [Some(v_31)] 
              #                    occupy a1 with temp_40_array_ptr_33
    li      a1, 0
              #                    store to temp_38_index_ptr_33 in mem offset legal
    sd      a0,56(sp)
              #                    release a0 with temp_38_index_ptr_33
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with v_31
              #                    store to temp_39_ptr2globl_33 in mem offset legal
    sw      a3,16(sp)
              #                    release a3 with temp_39_ptr2globl_33
              #                    occupy a3 with _anonymous_of_temp_39_ptr2globl_33_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,16
              #                    free a1
              #                          new_var temp_41_array_ele_33:i32 
              #                          temp_41_array_ele_33 = load temp_40_array_ptr_33:ptr->i32 
              #                    occupy a1 with temp_40_array_ptr_33
              #                    occupy a0 with temp_41_array_ele_33
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_42_arithop_33:i32 
              #                          temp_42_arithop_33 = Add i32 temp_41_array_ele_33, 1_0 
              #                    occupy a0 with temp_41_array_ele_33
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    store to temp_40_array_ptr_33 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_40_array_ptr_33
              #                    occupy a1 with temp_42_arithop_33
    add     a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                          store temp_42_arithop_33:i32 temp_38_index_ptr_33:ptr->i32 
              #                    occupy a3 with temp_38_index_ptr_33
              #                    load from temp_38_index_ptr_33 in mem
    ld      a3,56(sp)
              #                    occupy a1 with temp_42_arithop_33
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                          mu size_0:194 
              #                          size_0 = chi size_0:194 
              #                    store to temp_38_index_ptr_33 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with temp_38_index_ptr_33
              #                    regtab     a0:Freed { symidx: temp_41_array_ele_33, tracked: true } |     a1:Freed { symidx: temp_42_arithop_33, tracked: true } |     a2:Freed { symidx: v_31, tracked: true } |     a4:Freed { symidx: temp_3_ptr2globl_33, tracked: true } |     a5:Freed { symidx: temp_4_array_ptr_33, tracked: true } |     a6:Freed { symidx: temp_12_array_ptr_33, tracked: true } |     a7:Freed { symidx: temp_11_ptr2globl_33, tracked: true } |     s10:Freed { symidx: temp_19_array_ptr_33, tracked: true } |     s11:Freed { symidx: temp_9_array_ele_33, tracked: true } |     s1:Freed { symidx: temp_5_array_ele_33, tracked: true } |     s2:Freed { symidx: temp_6_index_ptr_33, tracked: true } |     s3:Freed { symidx: temp_13_array_ele_33, tracked: true } |     s4:Freed { symidx: temp_14_index_ptr_33, tracked: true } |     s5:Freed { symidx: temp_16_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_15_ptr2globl_33, tracked: true } |     s7:Freed { symidx: temp_17_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_7_ptr2globl_33, tracked: true } |     s9:Freed { symidx: temp_8_array_ptr_33, tracked: true } | 
              #                    regtab 
              #                          Define dfs_0 [s_42, t_42, f_42] -> dfs_ret_0 
    .globl dfs
    .type dfs,@function
dfs:
              #                    mem layout:|ra_dfs:8 at 4776|s0_dfs:8 at 4768|s:4 at 4764|t:4 at 4760|f:4 at 4756|temp_43_cmp:1 at 4755|none:3 at 4752|temp_44_index_ptr:8 at 4744|i:4 at 4740|temp_45_ptr2globl:40 at 4700|none:4 at 4696|temp_46_array_ptr:8 at 4688|temp_47_array_ele:4 at 4684|temp_48_cmp:1 at 4683|none:3 at 4680|temp_49_ptr2globl:400 at 4280|temp_50_array_ptr:8 at 4272|temp_51_array_ele:4 at 4268|temp_52_ptr2globl:40 at 4228|none:4 at 4224|temp_53_array_ptr:8 at 4216|temp_54_array_ele:4 at 4212|temp_55_:1 at 4211|none:3 at 4208|temp_56_arithop:4 at 4204|temp_57_ptr2globl:400 at 3804|none:4 at 3800|temp_58_array_ptr:8 at 3792|temp_59_array_ele:4 at 3788|temp_60_cmp:1 at 3787|none:3 at 3784|temp_61_arithop:4 at 3780|min_f:4 at 3776|temp_62_ptr2globl:400 at 3376|temp_63_array_ptr:8 at 3368|temp_64_array_ele:4 at 3364|temp_65_cmp:1 at 3363|none:3 at 3360|temp_66_ptr2globl:400 at 2960|temp_67_array_ptr:8 at 2952|temp_68_array_ele:4 at 2948|temp_69_ret_of_dfs:4 at 2944|d:4 at 2940|temp_70_cmp:1 at 2939|none:3 at 2936|temp_71_index_ptr:8 at 2928|temp_72_ptr2globl:400 at 2528|temp_73_array_ptr:8 at 2520|temp_74_array_ele:4 at 2516|temp_75_arithop:4 at 2512|temp_76_ptr2globl:400 at 2112|temp_77_array_ptr:8 at 2104|temp_78_array_ele:4 at 2100|temp_79_ptr2globl:400 at 1700|none:4 at 1696|temp_80_array_ptr:8 at 1688|temp_81_array_ele:4 at 1684|none:4 at 1680|temp_82_index_ptr:8 at 1672|temp_83_ptr2globl:400 at 1272|temp_84_array_ptr:8 at 1264|temp_85_array_ele:4 at 1260|temp_86_ptr2globl:400 at 860|none:4 at 856|temp_87_array_ptr:8 at 848|temp_88_array_ele:4 at 844|temp_89_ptr2globl:400 at 444|none:4 at 440|temp_90_array_ptr:8 at 432|temp_91_array_ele:4 at 428|temp_92_arithop:4 at 424|temp_93_arithop:4 at 420|temp_94_ptr2globl:400 at 20|none:4 at 16|temp_95_array_ptr:8 at 8|temp_96_array_ele:4 at 4|none:4 at 0
              #                    occupy a3 with -4784_0
    li      a3, -4784
    li      a3, -4784
    add     sp,a3,sp
              #                    free a3
              #                    store to ra_dfs_0 in mem offset_illegal
              #                    occupy a4 with 4776_0
    li      a4, 4776
    add     a4,sp,a4
    sd      ra,0(a4)
              #                    free a4
              #                    store to s0_dfs_0 in mem offset_illegal
              #                    occupy a5 with 4768_0
    li      a5, 4768
    add     a5,sp,a5
    sd      s0,0(a5)
              #                    free a5
              #                    occupy a6 with 4784_0
    li      a6, 4784
    li      a6, 4784
    add     s0,a6,sp
              #                    free a6
              #                          alloc i1 temp_43_cmp_45 
              #                          alloc ptr->i32 temp_44_index_ptr_44 
              #                          alloc i32 i_44 
              #                          alloc Array:i32:[Some(10_0)] temp_45_ptr2globl_50 
              #                          alloc ptr->i32 temp_46_array_ptr_50 
              #                          alloc i32 temp_47_array_ele_50 
              #                          alloc i1 temp_48_cmp_50 
              #                          alloc Array:i32:[Some(10_0), Some(10_0)] temp_49_ptr2globl_53 
              #                          alloc ptr->i32 temp_50_array_ptr_53 
              #                          alloc i32 temp_51_array_ele_53 
              #                          alloc Array:i32:[Some(10_0)] temp_52_ptr2globl_53 
              #                          alloc ptr->i32 temp_53_array_ptr_53 
              #                          alloc i32 temp_54_array_ele_53 
              #                          alloc i1 temp_55__1500 
              #                          alloc i32 temp_56_arithop_55 
              #                          alloc Array:i32:[Some(10_0), Some(10_0)] temp_57_ptr2globl_58 
              #                          alloc ptr->i32 temp_58_array_ptr_58 
              #                          alloc i32 temp_59_array_ele_58 
              #                          alloc i1 temp_60_cmp_58 
              #                          alloc i32 temp_61_arithop_60 
              #                          alloc i32 min_f_52 
              #                          alloc Array:i32:[Some(10_0), Some(10_0)] temp_62_ptr2globl_64 
              #                          alloc ptr->i32 temp_63_array_ptr_64 
              #                          alloc i32 temp_64_array_ele_64 
              #                          alloc i1 temp_65_cmp_64 
              #                          alloc Array:i32:[Some(10_0), Some(10_0)] temp_66_ptr2globl_52 
              #                          alloc ptr->i32 temp_67_array_ptr_52 
              #                          alloc i32 temp_68_array_ele_52 
              #                          alloc i32 temp_69_ret_of_dfs_52 
              #                          alloc i32 d_52 
              #                          alloc i1 temp_70_cmp_69 
              #                          alloc ptr->i32 temp_71_index_ptr_71 
              #                          alloc Array:i32:[Some(10_0), Some(10_0)] temp_72_ptr2globl_71 
              #                          alloc ptr->i32 temp_73_array_ptr_71 
              #                          alloc i32 temp_74_array_ele_71 
              #                          alloc i32 temp_75_arithop_71 
              #                          alloc Array:i32:[Some(10_0), Some(10_0)] temp_76_ptr2globl_71 
              #                          alloc ptr->i32 temp_77_array_ptr_71 
              #                          alloc i32 temp_78_array_ele_71 
              #                          alloc Array:i32:[Some(10_0), Some(10_0)] temp_79_ptr2globl_71 
              #                          alloc ptr->i32 temp_80_array_ptr_71 
              #                          alloc i32 temp_81_array_ele_71 
              #                          alloc ptr->i32 temp_82_index_ptr_71 
              #                          alloc Array:i32:[Some(10_0), Some(10_0)] temp_83_ptr2globl_71 
              #                          alloc ptr->i32 temp_84_array_ptr_71 
              #                          alloc i32 temp_85_array_ele_71 
              #                          alloc Array:i32:[Some(10_0), Some(10_0)] temp_86_ptr2globl_71 
              #                          alloc ptr->i32 temp_87_array_ptr_71 
              #                          alloc i32 temp_88_array_ele_71 
              #                          alloc Array:i32:[Some(10_0), Some(10_0)] temp_89_ptr2globl_71 
              #                          alloc ptr->i32 temp_90_array_ptr_71 
              #                          alloc i32 temp_91_array_ele_71 
              #                          alloc i32 temp_92_arithop_71 
              #                          alloc i32 temp_93_arithop_52 
              #                          alloc Array:i32:[Some(10_0), Some(10_0)] temp_94_ptr2globl_64 
              #                          alloc ptr->i32 temp_95_array_ptr_64 
              #                          alloc i32 temp_96_array_ele_64 
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_43_cmp_45:i1 
              #                          temp_43_cmp_45 = icmp i32 Eq s_42, t_42 
              #                    occupy a0 with s_42
              #                    occupy a1 with t_42
              #                    occupy a3 with temp_43_cmp_45
    xor     a3,a0,a1
    seqz    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                          br i1 temp_43_cmp_45, label branch_true_46, label branch_false_46 
              #                    occupy a3 with temp_43_cmp_45
              #                    free a3
              #                    occupy a3 with temp_43_cmp_45
    bnez    a3, .branch_true_46
              #                    free a3
    j       .branch_false_46
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } | 
              #                          label branch_true_46: 
.branch_true_46:
              #                          ret f_42 
              #                    load from ra_dfs_0 in mem
              #                    occupy a4 with ra_dfs_0
    li      a4, 4776
    add     a4,sp,a4
    ld      ra,0(a4)
              #                    free a4
              #                    load from s0_dfs_0 in mem
              #                    occupy a5 with s0_dfs_0
    li      a5, 4768
    add     a5,sp,a5
    ld      s0,0(a5)
              #                    free a5
              #                    store to f_42 in mem offset_illegal
              #                    occupy a2 with 4756_0
    li      a2, 4756
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with f_42
              #                    store to s_42 in mem offset_illegal
              #                    occupy a0 with 4764_0
    li      a0, 4764
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with s_42
              #                    occupy a0 with f_42
              #                    load from f_42 in mem

              #                    occupy a2 with f_42
    li      a2, 4756
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    occupy a6 with 4784_0
    li      a6, 4784
    li      a6, 4784
    add     sp,a6,sp
              #                    free a6
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } | 
              #                          label branch_false_46: 
.branch_false_46:
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_44_index_ptr_44:ptr->i32 
              #                          temp_44_index_ptr_44 = getelementptr used_0:Array:i32:[Some(10_0)] [Some(s_42)] 
              #                    occupy a4 with temp_44_index_ptr_44
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with s_42
              #                    occupy a6 with _anonymous_of_used_0_0
    mul     a6,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with _anonymous_of_used_0_0
    la      a7, used
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store 1_0:i32 temp_44_index_ptr_44:ptr->i32 
              #                    occupy a4 with temp_44_index_ptr_44
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu used_0:208 
              #                          used_0 = chi used_0:208 
              #                          i_44 = i32 0_0 
              #                    occupy s1 with i_44
    li      s1, 0
              #                    free s1
              #                          jump label: while.head_51 
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } | 
              #                          label while.head_51: 
.while.head_51:
              #                          new_var temp_45_ptr2globl_50:Array:i32:[Some(10_0)] 
              #                          temp_45_ptr2globl_50 = load *size_0:ptr->i32 
              #                    occupy a5 with *size_0
              #                       load label size as ptr to reg
    la      a5, size
              #                    occupy reg a5 with *size_0
              #                    occupy a6 with temp_45_ptr2globl_50
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_46_array_ptr_50:ptr->i32 
              #                          temp_46_array_ptr_50 = getelementptr temp_45_ptr2globl_50:Array:i32:[Some(10_0)] [Some(s_42)] 
              #                    occupy a7 with temp_46_array_ptr_50
    li      a7, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a0 with s_42
              #                    occupy s3 with _anonymous_of_temp_45_ptr2globl_50_0
    mul     s3,s2,a0
              #                    free s2
              #                    free a0
    add     a7,a7,s3
              #                    free s3
    slli a7,a7,2
    add     a7,a7,sp
              #                    occupy s4 with 4700_0
    li      s4, 4700
    li      s4, 4700
    add     a7,s4,a7
              #                    free s4
              #                    free a7
              #                          new_var temp_47_array_ele_50:i32 
              #                          temp_47_array_ele_50 = load temp_46_array_ptr_50:ptr->i32 
              #                    occupy a7 with temp_46_array_ptr_50
              #                    occupy s5 with temp_47_array_ele_50
    lw      s5,0(a7)
              #                    free s5
              #                    free a7
              #                          new_var temp_48_cmp_50:i1 
              #                          temp_48_cmp_50 = icmp i32 Slt i_44, temp_47_array_ele_50 
              #                    occupy s1 with i_44
              #                    occupy s5 with temp_47_array_ele_50
              #                    occupy s6 with temp_48_cmp_50
    slt     s6,s1,s5
              #                    free s1
              #                    free s5
              #                    free s6
              #                          br i1 temp_48_cmp_50, label while.body_51, label while.exit_51 
              #                    occupy s6 with temp_48_cmp_50
              #                    free s6
              #                    occupy s6 with temp_48_cmp_50
    bnez    s6, .while.body_51
              #                    free s6
    j       .while.exit_51
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } | 
              #                          label while.body_51: 
.while.body_51:
              #                          new_var temp_49_ptr2globl_53:Array:i32:[Some(10_0), Some(10_0)] 
              #                          temp_49_ptr2globl_53 = load *to_0:ptr->Array:i32:[Some(10_0)] 
              #                    occupy a5 with *to_0
              #                       load label to as ptr to reg
    la      a5, to
              #                    occupy reg a5 with *to_0
              #                    occupy s2 with temp_49_ptr2globl_53
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_50_array_ptr_53:ptr->i32 
              #                          temp_50_array_ptr_53 = getelementptr temp_49_ptr2globl_53:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s3 with temp_50_array_ptr_53
    li      s3, 0
              #                    occupy s4 with 10_0
    li      s4, 10
              #                    occupy a0 with s_42
              #                    occupy s7 with _anonymous_of_temp_49_ptr2globl_53_0
    mul     s7,s4,a0
              #                    free s4
              #                    free a0
    add     s3,s3,s7
              #                    free s7
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s1 with i_44
              #                    occupy s9 with _anonymous_of_temp_49_ptr2globl_53_0
    mul     s9,s8,s1
              #                    free s8
              #                    free s1
    add     s3,s3,s9
              #                    free s9
    slli s3,s3,2
    add     s3,s3,sp
              #                    occupy s10 with 4280_0
    li      s10, 4280
    li      s10, 4280
    add     s3,s10,s3
              #                    free s10
              #                    free s3
              #                          new_var temp_51_array_ele_53:i32 
              #                          temp_51_array_ele_53 = load temp_50_array_ptr_53:ptr->i32 
              #                    occupy s3 with temp_50_array_ptr_53
              #                    occupy s11 with temp_51_array_ele_53
    lw      s11,0(s3)
              #                    free s11
              #                    free s3
              #                          new_var temp_52_ptr2globl_53:Array:i32:[Some(10_0)] 
              #                          temp_52_ptr2globl_53 = load *used_0:ptr->i32 
              #                    occupy a5 with *used_0
              #                       load label used as ptr to reg
    la      a5, used
              #                    occupy reg a5 with *used_0
              #                    occupy s4 with temp_52_ptr2globl_53
    lw      s4,0(a5)
              #                    free s4
              #                    free a5
              #                          new_var temp_53_array_ptr_53:ptr->i32 
              #                          temp_53_array_ptr_53 = getelementptr temp_52_ptr2globl_53:Array:i32:[Some(10_0)] [Some(temp_51_array_ele_53)] 
              #                    occupy a5 with temp_53_array_ptr_53
    li      a5, 0
              #                    found literal reg Some(s8) already exist with 1_0
              #                    occupy s8 with 1_0
              #                    occupy s11 with temp_51_array_ele_53
              #                    occupy s7 with _anonymous_of_temp_52_ptr2globl_53_0
    mul     s7,s8,s11
              #                    free s8
              #                    free s11
    add     a5,a5,s7
              #                    free s7
    slli a5,a5,2
    add     a5,a5,sp
              #                    occupy s7 with 4228_0
    li      s7, 4228
    li      s7, 4228
    add     a5,s7,a5
              #                    free s7
              #                    free a5
              #                          new_var temp_54_array_ele_53:i32 
              #                          temp_54_array_ele_53 = load temp_53_array_ptr_53:ptr->i32 
              #                    occupy a5 with temp_53_array_ptr_53
              #                    occupy s7 with temp_54_array_ele_53
    lw      s7,0(a5)
              #                    free s7
              #                    free a5
              #                          new_var temp_55__1500:i1 
              #                          temp_55__1500 = icmp i32 Ne temp_54_array_ele_53, 0_0 
              #                    occupy s7 with temp_54_array_ele_53
              #                    occupy s8 with 0_0
    li      s8, 0
              #                    occupy s9 with temp_55__1500
    xor     s9,s7,s8
    snez    s9, s9
              #                    free s7
              #                    free s8
              #                    free s9
              #                          br i1 temp_55__1500, label branch_true_54, label branch_false_54 
              #                    occupy s9 with temp_55__1500
              #                    free s9
              #                    occupy s9 with temp_55__1500
    bnez    s9, .branch_true_54
              #                    free s9
    j       .branch_false_54
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_53_array_ptr_53, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s11:Freed { symidx: temp_51_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_49_ptr2globl_53, tracked: true } |     s3:Freed { symidx: temp_50_array_ptr_53, tracked: true } |     s4:Freed { symidx: temp_52_ptr2globl_53, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } |     s7:Freed { symidx: temp_54_array_ele_53, tracked: true } |     s9:Freed { symidx: temp_55__1500, tracked: true } | 
              #                          label branch_true_54: 
.branch_true_54:
              #                          new_var temp_56_arithop_55:i32 
              #                          temp_56_arithop_55 = Add i32 i_44, 1_0 
              #                    occupy s1 with i_44
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s10 with temp_56_arithop_55
    add     s10,s1,s8
              #                    free s1
              #                    free s8
              #                    free s10
              #                          i_44 = i32 temp_56_arithop_55 
              #                    occupy s10 with temp_56_arithop_55
              #                    occupy s1 with i_44
    mv      s1, s10
              #                    free s10
              #                    free s1
              #                          jump label: while.exit_51 
              #                    store to temp_50_array_ptr_53 in mem offset_illegal
              #                    occupy s3 with 4272_0
    li      s3, 4272
    add     s3,sp,s3
    sd      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_50_array_ptr_53
              #                    store to temp_56_arithop_55 in mem offset_illegal
              #                    occupy s3 with 4204_0
    li      s3, 4204
    add     s3,sp,s3
    sw      s10,0(s3)
              #                    free s3
              #                    release s10 with temp_56_arithop_55
              #                    store to temp_52_ptr2globl_53 in mem offset_illegal
              #                    occupy s4 with 4228_0
    li      s4, 4228
    add     s4,sp,s4
    sw      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_52_ptr2globl_53
              #                    store to temp_55__1500 in mem offset_illegal
              #                    occupy s4 with 4211_0
    li      s4, 4211
    add     s4,sp,s4
    sb      s9,0(s4)
              #                    free s4
              #                    release s9 with temp_55__1500
              #                    store to temp_54_array_ele_53 in mem offset_illegal
              #                    occupy s7 with 4212_0
    li      s7, 4212
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_54_array_ele_53
              #                    store to temp_49_ptr2globl_53 in mem offset_illegal
              #                    occupy s2 with 4280_0
    li      s2, 4280
    add     s2,sp,s2
    sw      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_49_ptr2globl_53
              #                    store to temp_51_array_ele_53 in mem offset_illegal
              #                    occupy s2 with 4268_0
    li      s2, 4268
    add     s2,sp,s2
    sw      s11,0(s2)
              #                    free s2
              #                    release s11 with temp_51_array_ele_53
              #                    store to temp_53_array_ptr_53 in mem offset_illegal
              #                    occupy a5 with 4216_0
    li      a5, 4216
    add     a5,sp,a5
    sd      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_53_array_ptr_53
    j       .while.exit_51
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_53_array_ptr_53, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s11:Freed { symidx: temp_51_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_49_ptr2globl_53, tracked: true } |     s3:Freed { symidx: temp_50_array_ptr_53, tracked: true } |     s4:Freed { symidx: temp_52_ptr2globl_53, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } |     s7:Freed { symidx: temp_54_array_ele_53, tracked: true } |     s9:Freed { symidx: temp_55__1500, tracked: true } | 
              #                          label branch_false_54: 
.branch_false_54:
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_53_array_ptr_53, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s11:Freed { symidx: temp_51_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_49_ptr2globl_53, tracked: true } |     s3:Freed { symidx: temp_50_array_ptr_53, tracked: true } |     s4:Freed { symidx: temp_52_ptr2globl_53, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } |     s7:Freed { symidx: temp_54_array_ele_53, tracked: true } |     s9:Freed { symidx: temp_55__1500, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_57_ptr2globl_58:Array:i32:[Some(10_0), Some(10_0)] 
              #                          temp_57_ptr2globl_58 = load *cap_0:ptr->Array:i32:[Some(10_0)] 
              #                    occupy s8 with *cap_0
              #                       load label cap as ptr to reg
    la      s8, cap
              #                    occupy reg s8 with *cap_0
              #                    occupy s10 with temp_57_ptr2globl_58
    lw      s10,0(s8)
              #                    free s10
              #                    free s8
              #                          new_var temp_58_array_ptr_58:ptr->i32 
              #                          temp_58_array_ptr_58 = getelementptr temp_57_ptr2globl_58:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s8 with temp_58_array_ptr_58
    li      s8, 0
              #                    store to s_42 in mem offset_illegal
              #                    occupy a0 with 4764_0
    li      a0, 4764
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with s_42
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    store to t_42 in mem offset_illegal
              #                    occupy a1 with 4760_0
    li      a1, 4760
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with t_42
              #                    occupy a1 with s_42
              #                    load from s_42 in mem

              #                    occupy a1 with s_42
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to f_42 in mem offset_illegal
              #                    occupy a2 with 4756_0
    li      a2, 4756
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with f_42
              #                    occupy a2 with _anonymous_of_temp_57_ptr2globl_58_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s8,s8,a2
              #                    free a2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s1 with i_44
              #                    occupy a2 with _anonymous_of_temp_57_ptr2globl_58_0
    mul     a2,a0,s1
              #                    free a0
              #                    free s1
    add     s8,s8,a2
              #                    free a2
    slli s8,s8,2
    add     s8,s8,sp
              #                    occupy a0 with 3804_0
    li      a0, 3804
    li      a0, 3804
    add     s8,a0,s8
              #                    free a0
              #                    free s8
              #                          new_var temp_59_array_ele_58:i32 
              #                          temp_59_array_ele_58 = load temp_58_array_ptr_58:ptr->i32 
              #                    occupy s8 with temp_58_array_ptr_58
              #                    occupy a0 with temp_59_array_ele_58
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_60_cmp_58:i1 
              #                          temp_60_cmp_58 = icmp i32 Sle temp_59_array_ele_58, 0_0 
              #                    occupy a0 with temp_59_array_ele_58
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    store to s_42 in mem offset_illegal
              #                    occupy a1 with 4764_0
    li      a1, 4764
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with s_42
              #                    occupy a1 with temp_60_cmp_58
    slt     a1,a2,a0
    xori    a1,a1,1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_60_cmp_58, label branch_true_59, label branch_false_59 
              #                    occupy a1 with temp_60_cmp_58
              #                    free a1
              #                    occupy a1 with temp_60_cmp_58
    bnez    a1, .branch_true_59
              #                    free a1
    j       .branch_false_59
              #                    regtab     a0:Freed { symidx: temp_59_array_ele_58, tracked: true } |     a1:Freed { symidx: temp_60_cmp_58, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_53_array_ptr_53, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s10:Freed { symidx: temp_57_ptr2globl_58, tracked: true } |     s11:Freed { symidx: temp_51_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_49_ptr2globl_53, tracked: true } |     s3:Freed { symidx: temp_50_array_ptr_53, tracked: true } |     s4:Freed { symidx: temp_52_ptr2globl_53, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } |     s7:Freed { symidx: temp_54_array_ele_53, tracked: true } |     s8:Freed { symidx: temp_58_array_ptr_58, tracked: true } |     s9:Freed { symidx: temp_55__1500, tracked: true } | 
              #                          label branch_true_59: 
.branch_true_59:
              #                          new_var temp_61_arithop_60:i32 
              #                          temp_61_arithop_60 = Add i32 i_44, 1_0 
              #                    occupy s1 with i_44
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    store to temp_59_array_ele_58 in mem offset_illegal
              #                    occupy a0 with 3788_0
    li      a0, 3788
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_59_array_ele_58
              #                    occupy a0 with temp_61_arithop_60
    add     a0,s1,a2
              #                    free s1
              #                    free a2
              #                    free a0
              #                          i_44 = i32 temp_61_arithop_60 
              #                    occupy a0 with temp_61_arithop_60
              #                    occupy s1 with i_44
    mv      s1, a0
              #                    free a0
              #                    free s1
              #                          jump label: while.exit_51 
              #                    store to temp_50_array_ptr_53 in mem offset_illegal
              #                    occupy s3 with 4272_0
    li      s3, 4272
    add     s3,sp,s3
    sd      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_50_array_ptr_53
              #                    store to temp_57_ptr2globl_58 in mem offset_illegal
              #                    occupy s3 with 3804_0
    li      s3, 3804
    add     s3,sp,s3
    sw      s10,0(s3)
              #                    free s3
              #                    release s10 with temp_57_ptr2globl_58
              #                    store to temp_58_array_ptr_58 in mem offset_illegal
              #                    occupy s8 with 3792_0
    li      s8, 3792
    add     s8,sp,s8
    sd      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_58_array_ptr_58
              #                    store to temp_60_cmp_58 in mem offset_illegal
              #                    occupy a1 with 3787_0
    li      a1, 3787
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_60_cmp_58
              #                    store to temp_61_arithop_60 in mem offset_illegal
              #                    occupy a0 with 3780_0
    li      a0, 3780
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_61_arithop_60
              #                    store to temp_52_ptr2globl_53 in mem offset_illegal
              #                    occupy a0 with 4228_0
    li      a0, 4228
    add     a0,sp,a0
    sw      s4,0(a0)
              #                    free a0
              #                    release s4 with temp_52_ptr2globl_53
              #                    store to temp_55__1500 in mem offset_illegal
              #                    occupy a1 with 4211_0
    li      a1, 4211
    add     a1,sp,a1
    sb      s9,0(a1)
              #                    free a1
              #                    release s9 with temp_55__1500
              #                    store to temp_54_array_ele_53 in mem offset_illegal
              #                    occupy s4 with 4212_0
    li      s4, 4212
    add     s4,sp,s4
    sw      s7,0(s4)
              #                    free s4
              #                    release s7 with temp_54_array_ele_53
              #                    store to temp_49_ptr2globl_53 in mem offset_illegal
              #                    occupy s2 with 4280_0
    li      s2, 4280
    add     s2,sp,s2
    sw      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_49_ptr2globl_53
              #                    store to temp_51_array_ele_53 in mem offset_illegal
              #                    occupy s2 with 4268_0
    li      s2, 4268
    add     s2,sp,s2
    sw      s11,0(s2)
              #                    free s2
              #                    release s11 with temp_51_array_ele_53
              #                    store to temp_53_array_ptr_53 in mem offset_illegal
              #                    occupy a2 with 4216_0
    li      a2, 4216
    add     a2,sp,a2
    sd      a5,0(a2)
              #                    free a2
              #                    release a5 with temp_53_array_ptr_53
              #                    occupy a1 with _anonymous_of_t_42_0
              #                    load from t_42 in mem

              #                    occupy a5 with t_42
    li      a5, 4760
    add     a5,sp,a5
    lw      a1,0(a5)
              #                    free a5
              #                    occupy a0 with _anonymous_of_s_42_0
              #                    load from s_42 in mem

              #                    occupy s3 with s_42
    li      s3, 4764
    add     s3,sp,s3
    lw      a0,0(s3)
              #                    free s3
              #                    occupy a2 with _anonymous_of_f_42_0
              #                    load from f_42 in mem

              #                    occupy s2 with f_42
    li      s2, 4756
    add     s2,sp,s2
    lw      a2,0(s2)
              #                    free s2
              #                    store to t_42 in mem offset_illegal
              #                    occupy a5 with 4760_0
    li      a5, 4760
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with t_42
    j       .while.exit_51
              #                    regtab     a0:Freed { symidx: temp_59_array_ele_58, tracked: true } |     a1:Freed { symidx: temp_60_cmp_58, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_53_array_ptr_53, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s10:Freed { symidx: temp_57_ptr2globl_58, tracked: true } |     s11:Freed { symidx: temp_51_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_49_ptr2globl_53, tracked: true } |     s3:Freed { symidx: temp_50_array_ptr_53, tracked: true } |     s4:Freed { symidx: temp_52_ptr2globl_53, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } |     s7:Freed { symidx: temp_54_array_ele_53, tracked: true } |     s8:Freed { symidx: temp_58_array_ptr_58, tracked: true } |     s9:Freed { symidx: temp_55__1500, tracked: true } | 
              #                          label branch_false_59: 
.branch_false_59:
              #                    regtab     a0:Freed { symidx: temp_59_array_ele_58, tracked: true } |     a1:Freed { symidx: temp_60_cmp_58, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_53_array_ptr_53, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s10:Freed { symidx: temp_57_ptr2globl_58, tracked: true } |     s11:Freed { symidx: temp_51_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_49_ptr2globl_53, tracked: true } |     s3:Freed { symidx: temp_50_array_ptr_53, tracked: true } |     s4:Freed { symidx: temp_52_ptr2globl_53, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } |     s7:Freed { symidx: temp_54_array_ele_53, tracked: true } |     s8:Freed { symidx: temp_58_array_ptr_58, tracked: true } |     s9:Freed { symidx: temp_55__1500, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var min_f_52:i32 
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a0:Freed { symidx: temp_59_array_ele_58, tracked: true } |     a1:Freed { symidx: temp_60_cmp_58, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_53_array_ptr_53, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s10:Freed { symidx: temp_57_ptr2globl_58, tracked: true } |     s11:Freed { symidx: temp_51_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_49_ptr2globl_53, tracked: true } |     s3:Freed { symidx: temp_50_array_ptr_53, tracked: true } |     s4:Freed { symidx: temp_52_ptr2globl_53, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } |     s7:Freed { symidx: temp_54_array_ele_53, tracked: true } |     s8:Freed { symidx: temp_58_array_ptr_58, tracked: true } |     s9:Freed { symidx: temp_55__1500, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_62_ptr2globl_64:Array:i32:[Some(10_0), Some(10_0)] 
              #                          temp_62_ptr2globl_64 = load *cap_0:ptr->Array:i32:[Some(10_0)] 
              #                    occupy a2 with *cap_0
              #                       load label cap as ptr to reg
    la      a2, cap
              #                    occupy reg a2 with *cap_0
              #                    store to temp_59_array_ele_58 in mem offset_illegal
              #                    occupy a0 with 3788_0
    li      a0, 3788
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_59_array_ele_58
              #                    occupy a0 with temp_62_ptr2globl_64
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_63_array_ptr_64:ptr->i32 
              #                          temp_63_array_ptr_64 = getelementptr temp_62_ptr2globl_64:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy a2 with temp_63_array_ptr_64
    li      a2, 0
              #                    store to temp_62_ptr2globl_64 in mem offset_illegal
              #                    occupy a0 with 3376_0
    li      a0, 3376
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_62_ptr2globl_64
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    store to temp_60_cmp_58 in mem offset_illegal
              #                    occupy a1 with 3787_0
    li      a1, 3787
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_60_cmp_58
              #                    occupy a1 with s_42
              #                    load from s_42 in mem

              #                    occupy a1 with s_42
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_43_cmp_45 in mem offset_illegal
              #                    occupy a3 with 4755_0
    li      a3, 4755
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_43_cmp_45
              #                    occupy a3 with _anonymous_of_temp_62_ptr2globl_64_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s1 with i_44
              #                    occupy a3 with _anonymous_of_temp_62_ptr2globl_64_0
    mul     a3,a0,s1
              #                    free a0
              #                    free s1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a0 with 3376_0
    li      a0, 3376
    li      a0, 3376
    add     a2,a0,a2
              #                    free a0
              #                    free a2
              #                          new_var temp_64_array_ele_64:i32 
              #                          temp_64_array_ele_64 = load temp_63_array_ptr_64:ptr->i32 
              #                    occupy a2 with temp_63_array_ptr_64
              #                    occupy a0 with temp_64_array_ele_64
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_65_cmp_64:i1 
              #                          temp_65_cmp_64 = icmp i32 Slt f_42, temp_64_array_ele_64 
              #                    occupy a3 with f_42
              #                    load from f_42 in mem

              #                    occupy a3 with f_42
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    occupy a0 with temp_64_array_ele_64
              #                    store to s_42 in mem offset_illegal
              #                    occupy a1 with 4764_0
    li      a1, 4764
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with s_42
              #                    occupy a1 with temp_65_cmp_64
    slt     a1,a3,a0
              #                    free a3
              #                    free a0
              #                    free a1
              #                          br i1 temp_65_cmp_64, label branch_true_65, label branch_false_65 
              #                    occupy a1 with temp_65_cmp_64
              #                    free a1
              #                    store to temp_50_array_ptr_53 in mem offset_illegal
              #                    occupy s3 with 4272_0
    li      s3, 4272
    add     s3,sp,s3
    sd      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_50_array_ptr_53
              #                    occupy a1 with temp_65_cmp_64
    bnez    a1, .branch_true_65
              #                    free a1
    j       .branch_false_65
              #                    regtab     a0:Freed { symidx: temp_64_array_ele_64, tracked: true } |     a1:Freed { symidx: temp_65_cmp_64, tracked: true } |     a2:Freed { symidx: temp_63_array_ptr_64, tracked: true } |     a3:Freed { symidx: f_42, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_53_array_ptr_53, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s10:Freed { symidx: temp_57_ptr2globl_58, tracked: true } |     s11:Freed { symidx: temp_51_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_49_ptr2globl_53, tracked: true } |     s4:Freed { symidx: temp_52_ptr2globl_53, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } |     s7:Freed { symidx: temp_54_array_ele_53, tracked: true } |     s8:Freed { symidx: temp_58_array_ptr_58, tracked: true } |     s9:Freed { symidx: temp_55__1500, tracked: true } | 
              #                          label branch_true_65: 
.branch_true_65:
              #                          min_f_52 = i32 f_42 
              #                    occupy a3 with f_42
              #                    occupy s3 with min_f_52
    mv      s3, a3
              #                    free a3
              #                    free s3
              #                          jump label: L9_0 
              #                    store to min_f_52 in mem offset_illegal
              #                    occupy s3 with 3776_0
    li      s3, 3776
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with min_f_52
    j       .L9_0
              #                    regtab     a0:Freed { symidx: temp_64_array_ele_64, tracked: true } |     a1:Freed { symidx: temp_65_cmp_64, tracked: true } |     a2:Freed { symidx: temp_63_array_ptr_64, tracked: true } |     a3:Freed { symidx: f_42, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_53_array_ptr_53, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s10:Freed { symidx: temp_57_ptr2globl_58, tracked: true } |     s11:Freed { symidx: temp_51_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_49_ptr2globl_53, tracked: true } |     s4:Freed { symidx: temp_52_ptr2globl_53, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } |     s7:Freed { symidx: temp_54_array_ele_53, tracked: true } |     s8:Freed { symidx: temp_58_array_ptr_58, tracked: true } |     s9:Freed { symidx: temp_55__1500, tracked: true } | 
              #                          label branch_false_65: 
.branch_false_65:
              #                          new_var temp_94_ptr2globl_64:Array:i32:[Some(10_0), Some(10_0)] 
              #                          temp_94_ptr2globl_64 = load *cap_0:ptr->Array:i32:[Some(10_0)] 
              #                    occupy s3 with *cap_0
              #                       load label cap as ptr to reg
    la      s3, cap
              #                    occupy reg s3 with *cap_0
              #                    store to temp_64_array_ele_64 in mem offset_illegal
              #                    occupy a0 with 3364_0
    li      a0, 3364
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_64_array_ele_64
              #                    occupy a0 with temp_94_ptr2globl_64
    lw      a0,0(s3)
              #                    free a0
              #                    free s3
              #                          new_var temp_95_array_ptr_64:ptr->i32 
              #                          temp_95_array_ptr_64 = getelementptr temp_94_ptr2globl_64:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s3 with temp_95_array_ptr_64
    li      s3, 0
              #                    store to temp_94_ptr2globl_64 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_94_ptr2globl_64
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    store to temp_65_cmp_64 in mem offset_illegal
              #                    occupy a1 with 3363_0
    li      a1, 3363
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_65_cmp_64
              #                    occupy a1 with s_42
              #                    load from s_42 in mem

              #                    occupy a1 with s_42
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_63_array_ptr_64 in mem offset_illegal
              #                    occupy a2 with 3368_0
    li      a2, 3368
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_63_array_ptr_64
              #                    occupy a2 with _anonymous_of_temp_94_ptr2globl_64_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s3,s3,a2
              #                    free a2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s1 with i_44
              #                    occupy a2 with _anonymous_of_temp_94_ptr2globl_64_0
    mul     a2,a0,s1
              #                    free a0
              #                    free s1
    add     s3,s3,a2
              #                    free a2
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,20
              #                    free s3
              #                          new_var temp_96_array_ele_64:i32 
              #                          temp_96_array_ele_64 = load temp_95_array_ptr_64:ptr->i32 
              #                    occupy s3 with temp_95_array_ptr_64
              #                    occupy a0 with temp_96_array_ele_64
    lw      a0,0(s3)
              #                    free a0
              #                    free s3
              #                          min_f_52 = i32 temp_96_array_ele_64 
              #                    occupy a0 with temp_96_array_ele_64
              #                    occupy a2 with min_f_52
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          jump label: L9_0 
              #                    store to temp_95_array_ptr_64 in mem offset legal
    sd      s3,8(sp)
              #                    release s3 with temp_95_array_ptr_64
              #                    store to s_42 in mem offset_illegal
              #                    occupy a1 with 4764_0
    li      a1, 4764
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with s_42
              #                    store to temp_96_array_ele_64 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_96_array_ele_64
              #                    store to min_f_52 in mem offset_illegal
              #                    occupy a0 with 3776_0
    li      a0, 3776
    add     a0,sp,a0
    sw      a2,0(a0)
              #                    free a0
              #                    release a2 with min_f_52
              #                    occupy a1 with _anonymous_of_temp_65_cmp_64_0
              #                    load from temp_65_cmp_64 in mem
              #                    occupy a2 with temp_65_cmp_64
    li      a2, 3363
    add     a2,sp,a2
    lb      a1,0(a2)
              #                    free a2
              #                    occupy a0 with _anonymous_of_temp_64_array_ele_64_0
              #                    load from temp_64_array_ele_64 in mem

              #                    occupy s3 with temp_64_array_ele_64
    li      s3, 3364
    add     s3,sp,s3
    lw      a0,0(s3)
              #                    free s3
              #                    store to temp_65_cmp_64 in mem offset_illegal
              #                    occupy a2 with 3363_0
    li      a2, 3363
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_65_cmp_64
              #                    occupy a2 with _anonymous_of_temp_63_array_ptr_64_0
              #                    load from temp_63_array_ptr_64 in mem
              #                    store to f_42 in mem offset_illegal
              #                    occupy a3 with 4756_0
    li      a3, 4756
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with f_42
              #                    occupy a3 with temp_63_array_ptr_64
    li      a3, 3368
    add     a3,sp,a3
    ld      a2,0(a3)
              #                    free a3
    j       .L9_0
              #                    regtab     a0:Freed { symidx: temp_64_array_ele_64, tracked: true } |     a1:Freed { symidx: temp_65_cmp_64, tracked: true } |     a2:Freed { symidx: temp_63_array_ptr_64, tracked: true } |     a3:Freed { symidx: f_42, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_53_array_ptr_53, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s10:Freed { symidx: temp_57_ptr2globl_58, tracked: true } |     s11:Freed { symidx: temp_51_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_49_ptr2globl_53, tracked: true } |     s4:Freed { symidx: temp_52_ptr2globl_53, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } |     s7:Freed { symidx: temp_54_array_ele_53, tracked: true } |     s8:Freed { symidx: temp_58_array_ptr_58, tracked: true } |     s9:Freed { symidx: temp_55__1500, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                    regtab     a0:Freed { symidx: temp_64_array_ele_64, tracked: true } |     a1:Freed { symidx: temp_65_cmp_64, tracked: true } |     a2:Freed { symidx: temp_63_array_ptr_64, tracked: true } |     a3:Freed { symidx: f_42, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_53_array_ptr_53, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s10:Freed { symidx: temp_57_ptr2globl_58, tracked: true } |     s11:Freed { symidx: temp_51_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_49_ptr2globl_53, tracked: true } |     s4:Freed { symidx: temp_52_ptr2globl_53, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } |     s7:Freed { symidx: temp_54_array_ele_53, tracked: true } |     s8:Freed { symidx: temp_58_array_ptr_58, tracked: true } |     s9:Freed { symidx: temp_55__1500, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_66_ptr2globl_52:Array:i32:[Some(10_0), Some(10_0)] 
              #                          temp_66_ptr2globl_52 = load *to_0:ptr->Array:i32:[Some(10_0)] 
              #                    occupy s3 with *to_0
              #                       load label to as ptr to reg
    la      s3, to
              #                    occupy reg s3 with *to_0
              #                    store to temp_64_array_ele_64 in mem offset_illegal
              #                    occupy a0 with 3364_0
    li      a0, 3364
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_64_array_ele_64
              #                    occupy a0 with temp_66_ptr2globl_52
    lw      a0,0(s3)
              #                    free a0
              #                    free s3
              #                          new_var temp_67_array_ptr_52:ptr->i32 
              #                          temp_67_array_ptr_52 = getelementptr temp_66_ptr2globl_52:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s3 with temp_67_array_ptr_52
    li      s3, 0
              #                    store to temp_66_ptr2globl_52 in mem offset_illegal
              #                    occupy a0 with 2960_0
    li      a0, 2960
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_66_ptr2globl_52
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    store to temp_65_cmp_64 in mem offset_illegal
              #                    occupy a1 with 3363_0
    li      a1, 3363
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_65_cmp_64
              #                    occupy a1 with s_42
              #                    load from s_42 in mem

              #                    occupy a1 with s_42
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_63_array_ptr_64 in mem offset_illegal
              #                    occupy a2 with 3368_0
    li      a2, 3368
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_63_array_ptr_64
              #                    occupy a2 with _anonymous_of_temp_66_ptr2globl_52_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s3,s3,a2
              #                    free a2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s1 with i_44
              #                    occupy a2 with _anonymous_of_temp_66_ptr2globl_52_0
    mul     a2,a0,s1
              #                    free a0
              #                    free s1
    add     s3,s3,a2
              #                    free a2
    slli s3,s3,2
    add     s3,s3,sp
              #                    occupy a0 with 2960_0
    li      a0, 2960
    li      a0, 2960
    add     s3,a0,s3
              #                    free a0
              #                    free s3
              #                          new_var temp_68_array_ele_52:i32 
              #                          temp_68_array_ele_52 = load temp_67_array_ptr_52:ptr->i32 
              #                    occupy s3 with temp_67_array_ptr_52
              #                    occupy a0 with temp_68_array_ele_52
    lw      a0,0(s3)
              #                    free a0
              #                    free s3
              #                          new_var temp_69_ret_of_dfs_52:i32 
              #                          temp_69_ret_of_dfs_52 =  Call i32 dfs_0(temp_68_array_ele_52, t_42, min_f_52) 
              #                    saved register dumping to mem
              #                    store to i_44 in mem offset_illegal
              #                    occupy s1 with 4740_0
    li      s1, 4740
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with i_44
              #                    store to temp_49_ptr2globl_53 in mem offset_illegal
              #                    occupy s1 with 4280_0
    li      s1, 4280
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_49_ptr2globl_53
              #                    store to temp_67_array_ptr_52 in mem offset_illegal
              #                    occupy s2 with 2952_0
    li      s2, 2952
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_67_array_ptr_52
              #                    store to temp_52_ptr2globl_53 in mem offset_illegal
              #                    occupy s3 with 4228_0
    li      s3, 4228
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_52_ptr2globl_53
              #                    store to temp_47_array_ele_50 in mem offset_illegal
              #                    occupy s4 with 4684_0
    li      s4, 4684
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_47_array_ele_50
              #                    store to temp_48_cmp_50 in mem offset_illegal
              #                    occupy s5 with 4683_0
    li      s5, 4683
    add     s5,sp,s5
    sb      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_48_cmp_50
              #                    store to temp_54_array_ele_53 in mem offset_illegal
              #                    occupy s6 with 4212_0
    li      s6, 4212
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_54_array_ele_53
              #                    store to temp_58_array_ptr_58 in mem offset_illegal
              #                    occupy s7 with 3792_0
    li      s7, 3792
    add     s7,sp,s7
    sd      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_58_array_ptr_58
              #                    store to temp_55__1500 in mem offset_illegal
              #                    occupy s8 with 4211_0
    li      s8, 4211
    add     s8,sp,s8
    sb      s9,0(s8)
              #                    free s8
              #                    release s9 with temp_55__1500
              #                    store to temp_57_ptr2globl_58 in mem offset_illegal
              #                    occupy s9 with 3804_0
    li      s9, 3804
    add     s9,sp,s9
    sw      s10,0(s9)
              #                    free s9
              #                    release s10 with temp_57_ptr2globl_58
              #                    store to temp_51_array_ele_53 in mem offset_illegal
              #                    occupy s10 with 4268_0
    li      s10, 4268
    add     s10,sp,s10
    sw      s11,0(s10)
              #                    free s10
              #                    release s11 with temp_51_array_ele_53
              #                    store to temp_68_array_ele_52 in mem offset_illegal
              #                    occupy a0 with 2948_0
    li      a0, 2948
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_68_array_ele_52
              #                    store to s_42 in mem offset_illegal
              #                    occupy a0 with 4764_0
    li      a0, 4764
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with s_42
              #                    store to f_42 in mem offset_illegal
              #                    occupy a1 with 4756_0
    li      a1, 4756
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with f_42
              #                    store to temp_44_index_ptr_44 in mem offset_illegal
              #                    occupy a2 with 4744_0
    li      a2, 4744
    add     a2,sp,a2
    sd      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_44_index_ptr_44
              #                    store to temp_53_array_ptr_53 in mem offset_illegal
              #                    occupy a3 with 4216_0
    li      a3, 4216
    add     a3,sp,a3
    sd      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_53_array_ptr_53
              #                    store to temp_45_ptr2globl_50 in mem offset_illegal
              #                    occupy a4 with 4700_0
    li      a4, 4700
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_45_ptr2globl_50
              #                    store to temp_46_array_ptr_50 in mem offset_illegal
              #                    occupy a5 with 4688_0
    li      a5, 4688
    add     a5,sp,a5
    sd      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_46_array_ptr_50
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_68_array_ele_52_0
              #                    load from temp_68_array_ele_52 in mem

              #                    occupy a6 with temp_68_array_ele_52
    li      a6, 2948
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    occupy a1 with _anonymous_of_t_42_0
              #                    load from t_42 in mem

              #                    occupy a7 with t_42
    li      a7, 4760
    add     a7,sp,a7
    lw      a1,0(a7)
              #                    free a7
              #                    occupy a2 with _anonymous_of_min_f_52_0
              #                    load from min_f_52 in mem

              #                    occupy s11 with min_f_52
    li      s11, 3776
    add     s11,sp,s11
    lw      a2,0(s11)
              #                    free s11
              #                    arg load ended


    call    dfs
              #                    store to temp_69_ret_of_dfs_52 in mem offset_illegal
              #                    occupy a0 with 2944_0
    li      a0, 2944
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          d_52 = i32 temp_69_ret_of_dfs_52 
              #                    occupy a0 with temp_69_ret_of_dfs_52
              #                    occupy a1 with d_52
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: temp_69_ret_of_dfs_52, tracked: true } |     a1:Freed { symidx: d_52, tracked: true } |     a6:Freed { symidx: temp_68_array_ele_52, tracked: true } |     a7:Freed { symidx: t_42, tracked: true } |     s11:Freed { symidx: min_f_52, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_70_cmp_69:i1 
              #                          temp_70_cmp_69 = icmp i32 Sgt d_52, 0_0 
              #                    occupy a1 with d_52
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_70_cmp_69
    slt     a3,a2,a1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_70_cmp_69, label branch_true_70, label branch_false_70 
              #                    occupy a3 with temp_70_cmp_69
              #                    free a3
              #                    occupy a3 with temp_70_cmp_69
    bnez    a3, .branch_true_70
              #                    free a3
    j       .branch_false_70
              #                    regtab     a0:Freed { symidx: temp_69_ret_of_dfs_52, tracked: true } |     a1:Freed { symidx: d_52, tracked: true } |     a3:Freed { symidx: temp_70_cmp_69, tracked: true } |     a6:Freed { symidx: temp_68_array_ele_52, tracked: true } |     a7:Freed { symidx: t_42, tracked: true } |     s11:Freed { symidx: min_f_52, tracked: true } | 
              #                          label branch_true_70: 
.branch_true_70:
              #                          new_var temp_71_index_ptr_71:ptr->i32 
              #                          temp_71_index_ptr_71 = getelementptr cap_0:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy a2 with temp_71_index_ptr_71
    li      a2, 0
              #                    occupy a4 with 10_0
    li      a4, 10
              #                    occupy a5 with s_42
              #                    load from s_42 in mem

              #                    occupy a5 with s_42
    add     a5,sp,a5
    lw      a5,0(a5)
              #                    free a5
              #                    occupy s1 with _anonymous_of_cap_0_0
    mul     s1,a4,a5
              #                    free a4
              #                    free a5
    add     a2,a2,s1
              #                    free s1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with i_44
              #                    load from i_44 in mem

              #                    occupy s3 with i_44
    add     s3,sp,s3
    lw      s3,0(s3)
              #                    free s3
              #                    occupy s4 with _anonymous_of_cap_0_0
    mul     s4,s2,s3
              #                    free s2
              #                    free s3
    add     a2,a2,s4
              #                    free s4
    slli a2,a2,2
              #                    occupy s5 with _anonymous_of_cap_0_0
    la      s5, cap
    add     a2,a2,s5
              #                    free s5
              #                    free a2
              #                          new_var temp_72_ptr2globl_71:Array:i32:[Some(10_0), Some(10_0)] 
              #                          temp_72_ptr2globl_71 = load *cap_0:ptr->Array:i32:[Some(10_0)] 
              #                    occupy s6 with *cap_0
              #                       load label cap as ptr to reg
    la      s6, cap
              #                    occupy reg s6 with *cap_0
              #                    occupy s7 with temp_72_ptr2globl_71
    lw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          new_var temp_73_array_ptr_71:ptr->i32 
              #                          temp_73_array_ptr_71 = getelementptr temp_72_ptr2globl_71:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s8 with temp_73_array_ptr_71
    li      s8, 0
              #                    found literal reg Some(a4) already exist with 10_0
              #                    occupy a4 with 10_0
              #                    occupy a5 with s_42
              #                    occupy s9 with _anonymous_of_temp_72_ptr2globl_71_0
    mul     s9,a4,a5
              #                    free a4
              #                    free a5
    add     s8,s8,s9
              #                    free s9
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s3 with i_44
              #                    occupy s10 with _anonymous_of_temp_72_ptr2globl_71_0
    mul     s10,s2,s3
              #                    free s2
              #                    free s3
    add     s8,s8,s10
              #                    free s10
    slli s8,s8,2
    add     s8,s8,sp
              #                    occupy a4 with 2528_0
    li      a4, 2528
    li      a4, 2528
    add     s8,a4,s8
              #                    free a4
              #                    free s8
              #                          new_var temp_74_array_ele_71:i32 
              #                          temp_74_array_ele_71 = load temp_73_array_ptr_71:ptr->i32 
              #                    occupy s8 with temp_73_array_ptr_71
              #                    occupy a4 with temp_74_array_ele_71
    lw      a4,0(s8)
              #                    free a4
              #                    free s8
              #                          new_var temp_75_arithop_71:i32 
              #                          temp_75_arithop_71 = Sub i32 temp_74_array_ele_71, d_52 
              #                    occupy a4 with temp_74_array_ele_71
              #                    occupy a1 with d_52
              #                    occupy s1 with temp_75_arithop_71
              #                    regtab:    a0:Freed { symidx: temp_69_ret_of_dfs_52, tracked: true } |     a1:Occupied { symidx: d_52, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_71_index_ptr_71, tracked: true } |     a3:Freed { symidx: temp_70_cmp_69, tracked: true } |     a4:Occupied { symidx: temp_74_array_ele_71, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: s_42, tracked: true } |     a6:Freed { symidx: temp_68_array_ele_52, tracked: true } |     a7:Freed { symidx: t_42, tracked: true } |     s10:Freed { symidx: _anonymous_of_temp_72_ptr2globl_71_0, tracked: false } |     s11:Freed { symidx: min_f_52, tracked: true } |     s1:Occupied { symidx: temp_75_arithop_71, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: 1_0, tracked: false } |     s3:Freed { symidx: i_44, tracked: true } |     s4:Freed { symidx: _anonymous_of_cap_0_0, tracked: false } |     s5:Freed { symidx: _anonymous_of_cap_0_0, tracked: false } |     s6:Freed { symidx: *cap_0, tracked: false } |     s7:Freed { symidx: temp_72_ptr2globl_71, tracked: true } |     s8:Freed { symidx: temp_73_array_ptr_71, tracked: true } |     s9:Freed { symidx: _anonymous_of_temp_72_ptr2globl_71_0, tracked: false } | 


    sub     s1,a4,a1
              #                    free a4
              #                    free a1
              #                    free s1
              #                          store temp_75_arithop_71:i32 temp_71_index_ptr_71:ptr->i32 
              #                    occupy a2 with temp_71_index_ptr_71
              #                    occupy s1 with temp_75_arithop_71
    sw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                          mu cap_0:332 
              #                          cap_0 = chi cap_0:332 
              #                          new_var temp_76_ptr2globl_71:Array:i32:[Some(10_0), Some(10_0)] 
              #                          temp_76_ptr2globl_71 = load *rev_0:ptr->Array:i32:[Some(10_0)] 
              #                    occupy s2 with *rev_0
              #                       load label rev as ptr to reg
    la      s2, rev
              #                    occupy reg s2 with *rev_0
              #                    occupy s4 with temp_76_ptr2globl_71
    lw      s4,0(s2)
              #                    free s4
              #                    free s2
              #                          new_var temp_77_array_ptr_71:ptr->i32 
              #                          temp_77_array_ptr_71 = getelementptr temp_76_ptr2globl_71:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s2 with temp_77_array_ptr_71
    li      s2, 0
              #                    occupy s5 with 10_0
    li      s5, 10
              #                    occupy a5 with s_42
              #                    occupy s6 with _anonymous_of_temp_76_ptr2globl_71_0
    mul     s6,s5,a5
              #                    free s5
              #                    free a5
    add     s2,s2,s6
              #                    free s6
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s3 with i_44
              #                    occupy s6 with _anonymous_of_temp_76_ptr2globl_71_0
    mul     s6,s5,s3
              #                    free s5
              #                    free s3
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
    add     s2,s2,sp
              #                    occupy s5 with 2112_0
    li      s5, 2112
    li      s5, 2112
    add     s2,s5,s2
              #                    free s5
              #                    free s2
              #                          new_var temp_78_array_ele_71:i32 
              #                          temp_78_array_ele_71 = load temp_77_array_ptr_71:ptr->i32 
              #                    occupy s2 with temp_77_array_ptr_71
              #                    occupy s5 with temp_78_array_ele_71
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          new_var temp_79_ptr2globl_71:Array:i32:[Some(10_0), Some(10_0)] 
              #                          temp_79_ptr2globl_71 = load *to_0:ptr->Array:i32:[Some(10_0)] 
              #                    occupy s6 with *to_0
              #                       load label to as ptr to reg
    la      s6, to
              #                    occupy reg s6 with *to_0
              #                    occupy s9 with temp_79_ptr2globl_71
    lw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          new_var temp_80_array_ptr_71:ptr->i32 
              #                          temp_80_array_ptr_71 = getelementptr temp_79_ptr2globl_71:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s6 with temp_80_array_ptr_71
    li      s6, 0
              #                    occupy s10 with 10_0
    li      s10, 10
              #                    occupy a5 with s_42
              #                    store to temp_69_ret_of_dfs_52 in mem offset_illegal
              #                    occupy a0 with 2944_0
    li      a0, 2944
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_69_ret_of_dfs_52
              #                    occupy a0 with _anonymous_of_temp_79_ptr2globl_71_0
    mul     a0,s10,a5
              #                    free s10
              #                    free a5
    add     s6,s6,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s3 with i_44
              #                    occupy s10 with _anonymous_of_temp_79_ptr2globl_71_0
    mul     s10,a0,s3
              #                    free a0
              #                    free s3
    add     s6,s6,s10
              #                    free s10
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,1700
              #                    free s6
              #                          new_var temp_81_array_ele_71:i32 
              #                          temp_81_array_ele_71 = load temp_80_array_ptr_71:ptr->i32 
              #                    occupy s6 with temp_80_array_ptr_71
              #                    occupy a0 with temp_81_array_ele_71
    lw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                          new_var temp_82_index_ptr_71:ptr->i32 
              #                          temp_82_index_ptr_71 = getelementptr cap_0:Array:i32:[Some(10_0), Some(10_0)] [Some(temp_81_array_ele_71), Some(temp_78_array_ele_71)] 
              #                    occupy s10 with temp_82_index_ptr_71
    li      s10, 0
              #                    store to temp_81_array_ele_71 in mem offset legal
    sw      a0,1684(sp)
              #                    release a0 with temp_81_array_ele_71
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    store to d_52 in mem offset_illegal
              #                    occupy a1 with 2940_0
    li      a1, 2940
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with d_52
              #                    occupy a1 with temp_81_array_ele_71
              #                    load from temp_81_array_ele_71 in mem


    lw      a1,1684(sp)
              #                    store to temp_71_index_ptr_71 in mem offset_illegal
              #                    occupy a2 with 2928_0
    li      a2, 2928
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_71_index_ptr_71
              #                    occupy a2 with _anonymous_of_cap_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s10,s10,a2
              #                    free a2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s5 with temp_78_array_ele_71
              #                    occupy a2 with _anonymous_of_cap_0_0
    mul     a2,a0,s5
              #                    free a0
              #                    free s5
    add     s10,s10,a2
              #                    free a2
    slli s10,s10,2
              #                    occupy a0 with _anonymous_of_cap_0_0
    la      a0, cap
    add     s10,s10,a0
              #                    free a0
              #                    free s10
              #                          new_var temp_83_ptr2globl_71:Array:i32:[Some(10_0), Some(10_0)] 
              #                          temp_83_ptr2globl_71 = load *rev_0:ptr->Array:i32:[Some(10_0)] 
              #                    occupy a0 with *rev_0
              #                       load label rev as ptr to reg
    la      a0, rev
              #                    occupy reg a0 with *rev_0
              #                    occupy a2 with temp_83_ptr2globl_71
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          new_var temp_84_array_ptr_71:ptr->i32 
              #                          temp_84_array_ptr_71 = getelementptr temp_83_ptr2globl_71:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy a0 with temp_84_array_ptr_71
    li      a0, 0
              #                    store to temp_81_array_ele_71 in mem offset legal
    sw      a1,1684(sp)
              #                    release a1 with temp_81_array_ele_71
              #                    occupy a1 with 10_0
    li      a1, 10
              #                    occupy a5 with s_42
              #                    store to temp_83_ptr2globl_71 in mem offset legal
    sw      a2,1272(sp)
              #                    release a2 with temp_83_ptr2globl_71
              #                    occupy a2 with _anonymous_of_temp_83_ptr2globl_71_0
    mul     a2,a1,a5
              #                    free a1
              #                    free a5
    add     a0,a0,a2
              #                    free a2
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s3 with i_44
              #                    occupy a2 with _anonymous_of_temp_83_ptr2globl_71_0
    mul     a2,a1,s3
              #                    free a1
              #                    free s3
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1272
              #                    free a0
              #                          new_var temp_85_array_ele_71:i32 
              #                          temp_85_array_ele_71 = load temp_84_array_ptr_71:ptr->i32 
              #                    occupy a0 with temp_84_array_ptr_71
              #                    occupy a1 with temp_85_array_ele_71
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_86_ptr2globl_71:Array:i32:[Some(10_0), Some(10_0)] 
              #                          temp_86_ptr2globl_71 = load *to_0:ptr->Array:i32:[Some(10_0)] 
              #                    occupy a2 with *to_0
              #                       load label to as ptr to reg
    la      a2, to
              #                    occupy reg a2 with *to_0
              #                    store to temp_84_array_ptr_71 in mem offset legal
    sd      a0,1264(sp)
              #                    release a0 with temp_84_array_ptr_71
              #                    occupy a0 with temp_86_ptr2globl_71
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_87_array_ptr_71:ptr->i32 
              #                          temp_87_array_ptr_71 = getelementptr temp_86_ptr2globl_71:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy a2 with temp_87_array_ptr_71
    li      a2, 0
              #                    store to temp_86_ptr2globl_71 in mem offset legal
    sw      a0,860(sp)
              #                    release a0 with temp_86_ptr2globl_71
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    occupy a5 with s_42
              #                    store to temp_85_array_ele_71 in mem offset legal
    sw      a1,1260(sp)
              #                    release a1 with temp_85_array_ele_71
              #                    occupy a1 with _anonymous_of_temp_86_ptr2globl_71_0
    mul     a1,a0,a5
              #                    free a0
              #                    free a5
    add     a2,a2,a1
              #                    free a1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s3 with i_44
              #                    occupy a1 with _anonymous_of_temp_86_ptr2globl_71_0
    mul     a1,a0,s3
              #                    free a0
              #                    free s3
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,860
              #                    free a2
              #                          new_var temp_88_array_ele_71:i32 
              #                          temp_88_array_ele_71 = load temp_87_array_ptr_71:ptr->i32 
              #                    occupy a2 with temp_87_array_ptr_71
              #                    occupy a0 with temp_88_array_ele_71
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_89_ptr2globl_71:Array:i32:[Some(10_0), Some(10_0)] 
              #                          temp_89_ptr2globl_71 = load *cap_0:ptr->Array:i32:[Some(10_0)] 
              #                    occupy a1 with *cap_0
              #                       load label cap as ptr to reg
    la      a1, cap
              #                    occupy reg a1 with *cap_0
              #                    store to temp_88_array_ele_71 in mem offset legal
    sw      a0,844(sp)
              #                    release a0 with temp_88_array_ele_71
              #                    occupy a0 with temp_89_ptr2globl_71
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_90_array_ptr_71:ptr->i32 
              #                          temp_90_array_ptr_71 = getelementptr temp_89_ptr2globl_71:Array:i32:[Some(10_0), Some(10_0)] [Some(temp_88_array_ele_71), Some(temp_85_array_ele_71)] 
              #                    occupy a1 with temp_90_array_ptr_71
    li      a1, 0
              #                    store to temp_89_ptr2globl_71 in mem offset legal
    sw      a0,444(sp)
              #                    release a0 with temp_89_ptr2globl_71
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    store to temp_87_array_ptr_71 in mem offset legal
    sd      a2,848(sp)
              #                    release a2 with temp_87_array_ptr_71
              #                    occupy a2 with temp_88_array_ele_71
              #                    load from temp_88_array_ele_71 in mem


    lw      a2,844(sp)
              #                    store to temp_70_cmp_69 in mem offset_illegal
              #                    occupy a3 with 2939_0
    li      a3, 2939
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_70_cmp_69
              #                    occupy a3 with _anonymous_of_temp_89_ptr2globl_71_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with temp_85_array_ele_71
              #                    load from temp_85_array_ele_71 in mem


    lw      a3,1260(sp)
              #                    store to temp_88_array_ele_71 in mem offset legal
    sw      a2,844(sp)
              #                    release a2 with temp_88_array_ele_71
              #                    occupy a2 with _anonymous_of_temp_89_ptr2globl_71_0
    mul     a2,a0,a3
              #                    free a0
              #                    free a3
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,444
              #                    free a1
              #                          new_var temp_91_array_ele_71:i32 
              #                          temp_91_array_ele_71 = load temp_90_array_ptr_71:ptr->i32 
              #                    occupy a1 with temp_90_array_ptr_71
              #                    occupy a0 with temp_91_array_ele_71
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_92_arithop_71:i32 
              #                          temp_92_arithop_71 = Add i32 temp_91_array_ele_71, d_52 
              #                    occupy a0 with temp_91_array_ele_71
              #                    occupy a2 with d_52
              #                    load from d_52 in mem

              #                    occupy a2 with d_52
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_90_array_ptr_71 in mem offset legal
    sd      a1,432(sp)
              #                    release a1 with temp_90_array_ptr_71
              #                    occupy a1 with temp_92_arithop_71
    add     a1,a0,a2
              #                    free a0
              #                    free a2
              #                    free a1
              #                          store temp_92_arithop_71:i32 temp_82_index_ptr_71:ptr->i32 
              #                    occupy s10 with temp_82_index_ptr_71
              #                    occupy a1 with temp_92_arithop_71
    sw      a1,0(s10)
              #                    free a1
              #                    free s10
              #                          mu cap_0:386 
              #                          cap_0 = chi cap_0:386 
              #                          ret d_52 
              #                    load from ra_dfs_0 in mem
              #                    store to temp_91_array_ele_71 in mem offset legal
    sw      a0,428(sp)
              #                    release a0 with temp_91_array_ele_71
              #                    occupy a0 with ra_dfs_0
    li      a0, 4776
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_dfs_0 in mem
              #                    store to ra_dfs_0 in mem offset_illegal
              #                    occupy a0 with 4776_0
    li      a0, 4776
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with ra_dfs_0
              #                    occupy a0 with s0_dfs_0
    li      a0, 4768
    add     a0,sp,a0
    ld      s0,0(a0)
              #                    free a0
              #                    store to d_52 in mem offset_illegal
              #                    occupy a2 with 2940_0
    li      a2, 2940
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with d_52
              #                    store to s0_dfs_0 in mem offset_illegal
              #                    occupy a0 with 4768_0
    li      a0, 4768
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with s0_dfs_0
              #                    occupy a0 with d_52
              #                    load from d_52 in mem

              #                    occupy a2 with d_52
    li      a2, 2940
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    store to temp_92_arithop_71 in mem offset legal
    sw      a1,424(sp)
              #                    release a1 with temp_92_arithop_71
              #                    occupy a1 with 4784_0
    li      a1, 4784
    li      a1, 4784
    add     sp,a1,sp
              #                    free a1
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_69_ret_of_dfs_52, tracked: true } |     a1:Freed { symidx: d_52, tracked: true } |     a3:Freed { symidx: temp_70_cmp_69, tracked: true } |     a6:Freed { symidx: temp_68_array_ele_52, tracked: true } |     a7:Freed { symidx: t_42, tracked: true } |     s11:Freed { symidx: min_f_52, tracked: true } | 
              #                          label branch_false_70: 
.branch_false_70:
              #                    regtab     a0:Freed { symidx: temp_69_ret_of_dfs_52, tracked: true } |     a1:Freed { symidx: d_52, tracked: true } |     a3:Freed { symidx: temp_70_cmp_69, tracked: true } |     a6:Freed { symidx: temp_68_array_ele_52, tracked: true } |     a7:Freed { symidx: t_42, tracked: true } |     s11:Freed { symidx: min_f_52, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_93_arithop_52:i32 
              #                          temp_93_arithop_52 = Add i32 i_44, 1_0 
              #                    occupy a2 with i_44
              #                    load from i_44 in mem

              #                    occupy a2 with i_44
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_93_arithop_52
    add     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          i_44 = i32 temp_93_arithop_52 
              #                    occupy a5 with temp_93_arithop_52
              #                    occupy a2 with i_44
    mv      a2, a5
              #                    free a5
              #                    free a2
              #                          jump label: while.head_51 
              #                    store to temp_70_cmp_69 in mem offset_illegal
              #                    occupy a3 with 2939_0
    li      a3, 2939
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_70_cmp_69
              #                    store to t_42 in mem offset_illegal
              #                    occupy a3 with 4760_0
    li      a3, 4760
    add     a3,sp,a3
    sw      a7,0(a3)
              #                    free a3
              #                    release a7 with t_42
              #                    store to d_52 in mem offset_illegal
              #                    occupy a1 with 2940_0
    li      a1, 2940
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with d_52
              #                    store to temp_69_ret_of_dfs_52 in mem offset_illegal
              #                    occupy a0 with 2944_0
    li      a0, 2944
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_69_ret_of_dfs_52
              #                    store to temp_68_array_ele_52 in mem offset_illegal
              #                    occupy a0 with 2948_0
    li      a0, 2948
    add     a0,sp,a0
    sw      a6,0(a0)
              #                    free a0
              #                    release a6 with temp_68_array_ele_52
              #                    store to min_f_52 in mem offset_illegal
              #                    occupy a1 with 3776_0
    li      a1, 3776
    add     a1,sp,a1
    sw      s11,0(a1)
              #                    free a1
              #                    release s11 with min_f_52
              #                    store to i_44 in mem offset_illegal
              #                    occupy a2 with 4740_0
    li      a2, 4740
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_44
              #                    store to temp_93_arithop_52 in mem offset legal
    sw      a5,420(sp)
              #                    release a5 with temp_93_arithop_52
              #                    occupy a3 with _anonymous_of_temp_43_cmp_45_0
              #                    load from temp_43_cmp_45 in mem
              #                    occupy a2 with temp_43_cmp_45
    li      a2, 4755
    add     a2,sp,a2
    lb      a3,0(a2)
              #                    free a2
              #                    occupy a1 with _anonymous_of_t_42_0
              #                    load from t_42 in mem

              #                    occupy a4 with t_42
    li      a4, 4760
    add     a4,sp,a4
    lw      a1,0(a4)
              #                    free a4
              #                    occupy a0 with _anonymous_of_s_42_0
              #                    load from s_42 in mem

              #                    occupy a5 with s_42
    li      a5, 4764
    add     a5,sp,a5
    lw      a0,0(a5)
              #                    free a5
              #                    occupy s1 with _anonymous_of_i_44_0
              #                    load from i_44 in mem

              #                    occupy a6 with i_44
    li      a6, 4740
    add     a6,sp,a6
    lw      s1,0(a6)
              #                    free a6
              #                    store to i_44 in mem offset_illegal
              #                    occupy a6 with 4740_0
    li      a6, 4740
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with i_44
              #                    store to temp_43_cmp_45 in mem offset_illegal
              #                    occupy a2 with 4755_0
    li      a2, 4755
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_43_cmp_45
              #                    occupy a2 with _anonymous_of_f_42_0
              #                    load from f_42 in mem

              #                    occupy a6 with f_42
    li      a6, 4756
    add     a6,sp,a6
    lw      a2,0(a6)
              #                    free a6
              #                    store to t_42 in mem offset_illegal
              #                    occupy a4 with 4760_0
    li      a4, 4760
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with t_42
              #                    occupy a4 with _anonymous_of_temp_44_index_ptr_44_0
              #                    load from temp_44_index_ptr_44 in mem
              #                    occupy a7 with temp_44_index_ptr_44
    li      a7, 4744
    add     a7,sp,a7
    ld      a4,0(a7)
              #                    free a7
              #                    store to s_42 in mem offset_illegal
              #                    occupy a5 with 4764_0
    li      a5, 4764
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with s_42
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } | 
              #                          label while.exit_51: 
.while.exit_51:
              #                          ret 0_0 
              #                    load from ra_dfs_0 in mem
              #                    occupy a5 with ra_dfs_0
    li      a5, 4776
    add     a5,sp,a5
    ld      ra,0(a5)
              #                    free a5
              #                    load from s0_dfs_0 in mem
              #                    occupy s2 with s0_dfs_0
    li      s2, 4768
    add     s2,sp,s2
    ld      s0,0(s2)
              #                    free s2
              #                    store to s_42 in mem offset_illegal
              #                    occupy a0 with 4764_0
    li      a0, 4764
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with s_42
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy s3 with 4784_0
    li      s3, 4784
    li      s3, 4784
    add     sp,s3,sp
              #                    free s3
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_43_cmp_45, tracked: true } |     a4:Freed { symidx: temp_44_index_ptr_44, tracked: true } |     a5:Freed { symidx: ra_dfs_0, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_50, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_50, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: s0_dfs_0, tracked: true } |     s5:Freed { symidx: temp_47_array_ele_50, tracked: true } |     s6:Freed { symidx: temp_48_cmp_50, tracked: true } | 
              #                    regtab 
              #                          Define max_flow_0 [s_77, t_77] -> max_flow_ret_0 
    .globl max_flow
    .type max_flow,@function
max_flow:
              #                    mem layout:|ra_max_flow:8 at 80|s0_max_flow:8 at 72|s:4 at 68|t:4 at 64|flow:4 at 60|temp_97_:1 at 59|none:3 at 56|temp_98_ptr2globl:40 at 16|temp_99_ret_of_dfs:4 at 12|f:4 at 8|temp_100_cmp:1 at 7|none:3 at 4|temp_101_arithop:4 at 0
    addi    sp,sp,-88
              #                    store to ra_max_flow_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_max_flow_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                          alloc i32 flow_79 
              #                          alloc i1 temp_97__2673 
              #                          alloc Array:i32:[Some(10_0)] temp_98_ptr2globl_83 
              #                          alloc i32 temp_99_ret_of_dfs_83 
              #                          alloc i32 f_83 
              #                          alloc i1 temp_100_cmp_86 
              #                          alloc i32 temp_101_arithop_83 
              #                    regtab     a0:Freed { symidx: s_77, tracked: true } |     a1:Freed { symidx: t_77, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          flow_79 = i32 0_0 
              #                    occupy a2 with flow_79
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_82 
    j       .while.head_82
              #                    regtab     a0:Freed { symidx: s_77, tracked: true } |     a1:Freed { symidx: t_77, tracked: true } |     a2:Freed { symidx: flow_79, tracked: true } | 
              #                          label while.head_82: 
.while.head_82:
              #                          new_var temp_97__2673:i1 
              #                          temp_97__2673 = icmp i32 Ne 1_0, 0_0 
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_97__2673
    xor     a5,a3,a4
    snez    a5, a5
              #                    free a3
              #                    free a4
              #                    free a5
              #                          br i1 temp_97__2673, label while.body_82, label while.exit_82 
              #                    occupy a5 with temp_97__2673
              #                    free a5
              #                    occupy a5 with temp_97__2673
    bnez    a5, .while.body_82
              #                    free a5
    j       .while.exit_82
              #                    regtab     a0:Freed { symidx: s_77, tracked: true } |     a1:Freed { symidx: t_77, tracked: true } |     a2:Freed { symidx: flow_79, tracked: true } |     a5:Freed { symidx: temp_97__2673, tracked: true } | 
              #                          label while.body_82: 
.while.body_82:
              #                          new_var temp_98_ptr2globl_83:Array:i32:[Some(10_0)] 
              #                          temp_98_ptr2globl_83 = load *used_0:ptr->i32 
              #                    occupy a3 with *used_0
              #                       load label used as ptr to reg
    la      a3, used
              #                    occupy reg a3 with *used_0
              #                    occupy a4 with temp_98_ptr2globl_83
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                           Call void my_memset_0(temp_98_ptr2globl_83, 0_0, 10_0) 
              #                    saved register dumping to mem
              #                    store to s_77 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with s_77
              #                    store to t_77 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with t_77
              #                    store to flow_79 in mem offset legal
    sw      a2,60(sp)
              #                    release a2 with flow_79
              #                    store to temp_98_ptr2globl_83 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_98_ptr2globl_83
              #                    store to temp_97__2673 in mem offset legal
    sb      a5,59(sp)
              #                    release a5 with temp_97__2673
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_98_ptr2globl_83_0
              #                    load from temp_98_ptr2globl_83 in mem
    lw      a0,16(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_10_0_0
    li      a2, 10
              #                    arg load ended


    call    my_memset
              #                          new_var temp_99_ret_of_dfs_83:i32 
              #                          temp_99_ret_of_dfs_83 =  Call i32 dfs_0(s_77, t_77, 0x70000000_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_s_77_0
              #                    load from s_77 in mem


    lw      a0,68(sp)
              #                    occupy a1 with _anonymous_of_t_77_0
              #                    load from t_77 in mem


    lw      a1,64(sp)
              #                    occupy a2 with _anonymous_of_0x70000000_0_0
    li      a2, 0x70000000
              #                    arg load ended


    call    dfs
              #                    store to temp_99_ret_of_dfs_83 in mem offset legal
    sw      a0,12(sp)
              #                          f_83 = i32 temp_99_ret_of_dfs_83 
              #                    occupy a0 with temp_99_ret_of_dfs_83
              #                    occupy a1 with f_83
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_99_ret_of_dfs_83, tracked: true } |     a1:Freed { symidx: f_83, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_100_cmp_86:i1 
              #                          temp_100_cmp_86 = icmp i32 Eq f_83, 0_0 
              #                    occupy a1 with f_83
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_100_cmp_86
    xor     a3,a1,a2
    seqz    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_100_cmp_86, label branch_true_87, label branch_false_87 
              #                    occupy a3 with temp_100_cmp_86
              #                    free a3
              #                    occupy a3 with temp_100_cmp_86
    bnez    a3, .branch_true_87
              #                    free a3
    j       .branch_false_87
              #                    regtab     a0:Freed { symidx: temp_99_ret_of_dfs_83, tracked: true } |     a1:Freed { symidx: f_83, tracked: true } |     a3:Freed { symidx: temp_100_cmp_86, tracked: true } | 
              #                          label branch_true_87: 
.branch_true_87:
              #                          ret flow_79 
              #                    load from ra_max_flow_0 in mem
    ld      ra,80(sp)
              #                    load from s0_max_flow_0 in mem
    ld      s0,72(sp)
              #                    store to temp_99_ret_of_dfs_83 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_99_ret_of_dfs_83
              #                    occupy a0 with flow_79
              #                    load from flow_79 in mem


    lw      a0,60(sp)
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_99_ret_of_dfs_83, tracked: true } |     a1:Freed { symidx: f_83, tracked: true } |     a3:Freed { symidx: temp_100_cmp_86, tracked: true } | 
              #                          label branch_false_87: 
.branch_false_87:
              #                    regtab     a0:Freed { symidx: temp_99_ret_of_dfs_83, tracked: true } |     a1:Freed { symidx: f_83, tracked: true } |     a3:Freed { symidx: temp_100_cmp_86, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_101_arithop_83:i32 
              #                          temp_101_arithop_83 = Add i32 flow_79, f_83 
              #                    occupy a2 with flow_79
              #                    load from flow_79 in mem


    lw      a2,60(sp)
              #                    occupy a1 with f_83
              #                    occupy a4 with temp_101_arithop_83
    add     a4,a2,a1
              #                    free a2
              #                    free a1
              #                    free a4
              #                          flow_79 = i32 temp_101_arithop_83 
              #                    occupy a4 with temp_101_arithop_83
              #                    occupy a2 with flow_79
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_82 
              #                    store to temp_99_ret_of_dfs_83 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_99_ret_of_dfs_83
              #                    store to temp_100_cmp_86 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_100_cmp_86
              #                    store to f_83 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with f_83
              #                    store to temp_101_arithop_83 in mem offset legal
    sw      a4,0(sp)
              #                    release a4 with temp_101_arithop_83
              #                    occupy a0 with _anonymous_of_s_77_0
              #                    load from s_77 in mem


    lw      a0,68(sp)
              #                    occupy a1 with _anonymous_of_t_77_0
              #                    load from t_77 in mem


    lw      a1,64(sp)
    j       .while.head_82
              #                    regtab     a0:Freed { symidx: s_77, tracked: true } |     a1:Freed { symidx: t_77, tracked: true } |     a2:Freed { symidx: flow_79, tracked: true } |     a5:Freed { symidx: temp_97__2673, tracked: true } | 
              #                          label while.exit_82: 
.while.exit_82:
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 104|s0_main:8 at 96|V:4 at 92|E:4 at 88|temp_102_ret_of_getint:4 at 84|temp_103_ret_of_getint:4 at 80|temp_104_ptr2globl:40 at 40|temp_105_cmp:1 at 39|none:3 at 36|u:4 at 32|v:4 at 28|temp_106_ret_of_getint:4 at 24|temp_107_ret_of_getint:4 at 20|temp_108_ret_of_getint:4 at 16|c:4 at 12|temp_109_arithop:4 at 8|temp_110_ret_of_max_flow:4 at 4|none:4 at 0
    addi    sp,sp,-112
              #                    store to ra_main_0 in mem offset legal
    sd      ra,104(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,96(sp)
    addi    s0,sp,112
              #                          alloc i32 V_91 
              #                          alloc i32 E_91 
              #                          alloc i32 temp_102_ret_of_getint_91 
              #                          alloc i32 temp_103_ret_of_getint_91 
              #                          alloc Array:i32:[Some(10_0)] temp_104_ptr2globl_91 
              #                          alloc i1 temp_105_cmp_96 
              #                          alloc i32 u_98 
              #                          alloc i32 v_98 
              #                          alloc i32 temp_106_ret_of_getint_98 
              #                          alloc i32 temp_107_ret_of_getint_98 
              #                          alloc i32 temp_108_ret_of_getint_98 
              #                          alloc i32 c_98 
              #                          alloc i32 temp_109_arithop_98 
              #                          alloc i32 temp_110_ret_of_max_flow_91 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var V_91:i32 
              #                          new_var E_91:i32 
              #                          new_var temp_102_ret_of_getint_91:i32 
              #                          temp_102_ret_of_getint_91 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_102_ret_of_getint_91 in mem offset legal
    sw      a0,84(sp)
              #                          V_91 = i32 temp_102_ret_of_getint_91 
              #                    occupy a0 with temp_102_ret_of_getint_91
              #                    occupy a1 with V_91
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_103_ret_of_getint_91:i32 
              #                          temp_103_ret_of_getint_91 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_102_ret_of_getint_91 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_102_ret_of_getint_91
              #                    store to V_91 in mem offset legal
    sw      a1,92(sp)
              #                    release a1 with V_91
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_103_ret_of_getint_91 in mem offset legal
    sw      a0,80(sp)
              #                          E_91 = i32 temp_103_ret_of_getint_91 
              #                    occupy a0 with temp_103_ret_of_getint_91
              #                    occupy a1 with E_91
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_104_ptr2globl_91:Array:i32:[Some(10_0)] 
              #                          temp_104_ptr2globl_91 = load *size_0:ptr->i32 
              #                    occupy a2 with *size_0
              #                       load label size as ptr to reg
    la      a2, size
              #                    occupy reg a2 with *size_0
              #                    occupy a3 with temp_104_ptr2globl_91
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                           Call void my_memset_0(temp_104_ptr2globl_91, 0_0, 10_0) 
              #                    saved register dumping to mem
              #                    store to temp_103_ret_of_getint_91 in mem offset legal
    sw      a0,80(sp)
              #                    release a0 with temp_103_ret_of_getint_91
              #                    store to E_91 in mem offset legal
    sw      a1,88(sp)
              #                    release a1 with E_91
              #                    store to temp_104_ptr2globl_91 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with temp_104_ptr2globl_91
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_104_ptr2globl_91_0
              #                    load from temp_104_ptr2globl_91 in mem
    lw      a0,40(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_10_0_0
    li      a2, 10
              #                    arg load ended


    call    my_memset
              #                          jump label: while.head_97 
    j       .while.head_97
              #                    regtab 
              #                          label while.head_97: 
.while.head_97:
              #                          new_var temp_105_cmp_96:i1 
              #                          temp_105_cmp_96 = icmp i32 Sgt E_91, 0_0 
              #                    occupy a0 with E_91
              #                    load from E_91 in mem


    lw      a0,88(sp)
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_105_cmp_96
    slt     a2,a1,a0
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_105_cmp_96, label while.body_97, label while.exit_97 
              #                    occupy a2 with temp_105_cmp_96
              #                    free a2
              #                    occupy a2 with temp_105_cmp_96
    bnez    a2, .while.body_97
              #                    free a2
    j       .while.exit_97
              #                    regtab     a0:Freed { symidx: E_91, tracked: true } |     a2:Freed { symidx: temp_105_cmp_96, tracked: true } | 
              #                          label while.body_97: 
.while.body_97:
              #                          new_var u_98:i32 
              #                          new_var v_98:i32 
              #                          new_var temp_106_ret_of_getint_98:i32 
              #                          temp_106_ret_of_getint_98 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to E_91 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with E_91
              #                    store to temp_105_cmp_96 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_105_cmp_96
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_106_ret_of_getint_98 in mem offset legal
    sw      a0,24(sp)
              #                          u_98 = i32 temp_106_ret_of_getint_98 
              #                    occupy a0 with temp_106_ret_of_getint_98
              #                    occupy a1 with u_98
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_107_ret_of_getint_98:i32 
              #                          temp_107_ret_of_getint_98 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_106_ret_of_getint_98 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_106_ret_of_getint_98
              #                    store to u_98 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with u_98
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_107_ret_of_getint_98 in mem offset legal
    sw      a0,20(sp)
              #                          v_98 = i32 temp_107_ret_of_getint_98 
              #                    occupy a0 with temp_107_ret_of_getint_98
              #                    occupy a1 with v_98
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_108_ret_of_getint_98:i32 
              #                          temp_108_ret_of_getint_98 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_107_ret_of_getint_98 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_107_ret_of_getint_98
              #                    store to v_98 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with v_98
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_108_ret_of_getint_98 in mem offset legal
    sw      a0,16(sp)
              #                          c_98 = i32 temp_108_ret_of_getint_98 
              #                    occupy a0 with temp_108_ret_of_getint_98
              #                    occupy a1 with c_98
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void add_node_0(u_98, v_98, c_98) 
              #                    saved register dumping to mem
              #                    store to temp_108_ret_of_getint_98 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_108_ret_of_getint_98
              #                    store to c_98 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with c_98
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_u_98_0
              #                    load from u_98 in mem


    lw      a0,32(sp)
              #                    occupy a1 with _anonymous_of_v_98_0
              #                    load from v_98 in mem


    lw      a1,28(sp)
              #                    occupy a2 with _anonymous_of_c_98_0
              #                    load from c_98 in mem


    lw      a2,12(sp)
              #                    arg load ended


    call    add_node
              #                          new_var temp_109_arithop_98:i32 
              #                          temp_109_arithop_98 = Sub i32 E_91, 1_0 
              #                    occupy a0 with E_91
              #                    load from E_91 in mem


    lw      a0,88(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_109_arithop_98
              #                    regtab:    a0:Occupied { symidx: E_91, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_109_arithop_98, tracked: true, occupy_count: 1 } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          E_91 = i32 temp_109_arithop_98 
              #                    occupy a2 with temp_109_arithop_98
              #                    occupy a0 with E_91
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_97 
              #                    store to E_91 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with E_91
              #                    store to temp_109_arithop_98 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_109_arithop_98
    j       .while.head_97
              #                    regtab     a0:Freed { symidx: E_91, tracked: true } |     a2:Freed { symidx: temp_105_cmp_96, tracked: true } | 
              #                          label while.exit_97: 
.while.exit_97:
              #                          new_var temp_110_ret_of_max_flow_91:i32 
              #                          temp_110_ret_of_max_flow_91 =  Call i32 max_flow_0(1_0, V_91) 
              #                    saved register dumping to mem
              #                    store to E_91 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with E_91
              #                    store to temp_105_cmp_96 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_105_cmp_96
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_V_91_0
              #                    load from V_91 in mem


    lw      a1,92(sp)
              #                    arg load ended


    call    max_flow
              #                    store to temp_110_ret_of_max_flow_91 in mem offset legal
    sw      a0,4(sp)
              #                           Call void putint_0(temp_110_ret_of_max_flow_91) 
              #                    saved register dumping to mem
              #                    store to temp_110_ret_of_max_flow_91 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_110_ret_of_max_flow_91
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_110_ret_of_max_flow_91_0
              #                    load from temp_110_ret_of_max_flow_91 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,104(sp)
              #                    load from s0_main_0 in mem
    ld      s0,96(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,112
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl used
              #                          global Array:i32:[Some(10_0)] used_0 
    .type used,@object
used:
    .zero 40
    .align 4
    .globl rev
              #                          global Array:i32:[Some(10_0), Some(10_0)] rev_0 
    .type rev,@object
rev:
    .zero 400
    .align 4
    .globl cap
              #                          global Array:i32:[Some(10_0), Some(10_0)] cap_0 
    .type cap,@object
cap:
    .zero 400
    .align 4
    .globl to
              #                          global Array:i32:[Some(10_0), Some(10_0)] to_0 
    .type to,@object
to:
    .zero 400
    .align 4
    .globl size
              #                          global Array:i32:[Some(10_0)] size_0 
    .type size,@object
size:
    .zero 40
    .align 4
    .globl INF
              #                          global i32 INF_0 
    .type INF,@object
INF:
    .word 0
