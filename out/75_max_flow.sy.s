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
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
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
              #                    mem layout:|ra_add_node:8 at 248|s0_add_node:8 at 240|u:4 at 236|v:4 at 232|c:4 at 228|none:4 at 224|temp_3_array_ptr:8 at 216|temp_4_array_ele:4 at 212|none:4 at 208|temp_5_index_ptr:8 at 200|temp_6_array_ptr:8 at 192|temp_7_array_ele:4 at 188|none:4 at 184|temp_8_index_ptr:8 at 176|temp_9_array_ptr:8 at 168|temp_10_array_ele:4 at 164|none:4 at 160|temp_11_index_ptr:8 at 152|temp_12_array_ptr:8 at 144|temp_13_array_ele:4 at 140|none:4 at 136|temp_14_array_ptr:8 at 128|temp_15_array_ele:4 at 124|none:4 at 120|temp_16_index_ptr:8 at 112|temp_17_array_ptr:8 at 104|temp_18_array_ele:4 at 100|none:4 at 96|temp_19_index_ptr:8 at 88|temp_20_array_ptr:8 at 80|temp_21_array_ele:4 at 76|none:4 at 72|temp_22_index_ptr:8 at 64|temp_23_array_ptr:8 at 56|temp_24_array_ele:4 at 52|none:4 at 48|temp_25_index_ptr:8 at 40|temp_26_array_ptr:8 at 32|temp_27_array_ele:4 at 28|temp_28_arithop:4 at 24|temp_29_index_ptr:8 at 16|temp_30_array_ptr:8 at 8|temp_31_array_ele:4 at 4|temp_32_arithop:4 at 0
    addi    sp,sp,-256
              #                    store to ra_add_node_0 in mem offset legal
    sd      ra,248(sp)
              #                    store to s0_add_node_0 in mem offset legal
    sd      s0,240(sp)
    addi    s0,sp,256
              #                          alloc ptr->i32 temp_3_array_ptr_33 
              #                          alloc i32 temp_4_array_ele_33 
              #                          alloc ptr->i32 temp_5_index_ptr_33 
              #                          alloc ptr->i32 temp_6_array_ptr_33 
              #                          alloc i32 temp_7_array_ele_33 
              #                          alloc ptr->i32 temp_8_index_ptr_33 
              #                          alloc ptr->i32 temp_9_array_ptr_33 
              #                          alloc i32 temp_10_array_ele_33 
              #                          alloc ptr->i32 temp_11_index_ptr_33 
              #                          alloc ptr->i32 temp_12_array_ptr_33 
              #                          alloc i32 temp_13_array_ele_33 
              #                          alloc ptr->i32 temp_14_array_ptr_33 
              #                          alloc i32 temp_15_array_ele_33 
              #                          alloc ptr->i32 temp_16_index_ptr_33 
              #                          alloc ptr->i32 temp_17_array_ptr_33 
              #                          alloc i32 temp_18_array_ele_33 
              #                          alloc ptr->i32 temp_19_index_ptr_33 
              #                          alloc ptr->i32 temp_20_array_ptr_33 
              #                          alloc i32 temp_21_array_ele_33 
              #                          alloc ptr->i32 temp_22_index_ptr_33 
              #                          alloc ptr->i32 temp_23_array_ptr_33 
              #                          alloc i32 temp_24_array_ele_33 
              #                          alloc ptr->i32 temp_25_index_ptr_33 
              #                          alloc ptr->i32 temp_26_array_ptr_33 
              #                          alloc i32 temp_27_array_ele_33 
              #                          alloc i32 temp_28_arithop_33 
              #                          alloc ptr->i32 temp_29_index_ptr_33 
              #                          alloc ptr->i32 temp_30_array_ptr_33 
              #                          alloc i32 temp_31_array_ele_33 
              #                          alloc i32 temp_32_arithop_33 
              #                    regtab     a0:Freed { symidx: u_31, tracked: true } |     a1:Freed { symidx: v_31, tracked: true } |     a2:Freed { symidx: c_31, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                          new_var temp_3_array_ptr_33:ptr->i32 
              #                          temp_3_array_ptr_33 = getelementptr *size_0:ptr->i32 [Some(u_31)] 
              #                    occupy a3 with temp_3_array_ptr_33
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with u_31
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a6 with *size_0
              #                       load label size as ptr to reg
    la      a6, size
              #                    occupy reg a6 with *size_0
    add     a3,a3,a6
              #                    free a6
              #                    free a3
              #                          new_var temp_4_array_ele_33:i32 
              #                          temp_4_array_ele_33 = load temp_3_array_ptr_33:ptr->i32 
              #                    occupy a3 with temp_3_array_ptr_33
              #                    occupy a7 with temp_4_array_ele_33
    lw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                          new_var temp_5_index_ptr_33:ptr->i32 
              #                          temp_5_index_ptr_33 = getelementptr *to_0:ptr->Array:i32:[Some(10_0)] [Some(u_31), Some(temp_4_array_ele_33)] 
              #                    occupy s1 with temp_5_index_ptr_33
    li      s1, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a0 with u_31
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a4,a0
              #                    free a4
              #                    free a0
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *to_0
              #                       load label to as ptr to reg
    la      s3, to
              #                    occupy reg s3 with *to_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          store v_31:i32 temp_5_index_ptr_33:ptr->i32 
              #                    occupy s1 with temp_5_index_ptr_33
              #                    occupy a1 with v_31
    sw      a1,0(s1)
              #                    free a1
              #                    free s1
              #                          mu *to_0:62 
              #                          *to_0 = chi *to_0:62 
              #                          new_var temp_6_array_ptr_33:ptr->i32 
              #                          temp_6_array_ptr_33 = getelementptr *size_0:ptr->i32 [Some(u_31)] 
              #                    occupy s4 with temp_6_array_ptr_33
    li      s4, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a0 with u_31
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a4,a0
              #                    free a4
              #                    free a0
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy s6 with *size_0
              #                       load label size as ptr to reg
    la      s6, size
              #                    occupy reg s6 with *size_0
    add     s4,s4,s6
              #                    free s6
              #                    free s4
              #                          new_var temp_7_array_ele_33:i32 
              #                          temp_7_array_ele_33 = load temp_6_array_ptr_33:ptr->i32 
              #                    occupy s4 with temp_6_array_ptr_33
              #                    occupy s7 with temp_7_array_ele_33
    lw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          new_var temp_8_index_ptr_33:ptr->i32 
              #                          temp_8_index_ptr_33 = getelementptr *cap_0:ptr->Array:i32:[Some(10_0)] [Some(u_31), Some(temp_7_array_ele_33)] 
              #                    occupy s8 with temp_8_index_ptr_33
    li      s8, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a0 with u_31
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,a4,a0
              #                    free a4
              #                    free a0
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
              #                    occupy s10 with *cap_0
              #                       load label cap as ptr to reg
    la      s10, cap
              #                    occupy reg s10 with *cap_0
    add     s8,s8,s10
              #                    free s10
              #                    free s8
              #                          store c_31:i32 temp_8_index_ptr_33:ptr->i32 
              #                    occupy s8 with temp_8_index_ptr_33
              #                    occupy a2 with c_31
    sw      a2,0(s8)
              #                    free a2
              #                    free s8
              #                          mu *cap_0:74 
              #                          *cap_0 = chi *cap_0:74 
              #                          new_var temp_9_array_ptr_33:ptr->i32 
              #                          temp_9_array_ptr_33 = getelementptr *size_0:ptr->i32 [Some(u_31)] 
              #                    occupy s11 with temp_9_array_ptr_33
    li      s11, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a0 with u_31
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     s11,s11,a5
              #                    free a5
    slli s11,s11,2
              #                    occupy a4 with *size_0
              #                       load label size as ptr to reg
    la      a4, size
              #                    occupy reg a4 with *size_0
    add     s11,s11,a4
              #                    free a4
              #                    free s11
              #                          new_var temp_10_array_ele_33:i32 
              #                          temp_10_array_ele_33 = load temp_9_array_ptr_33:ptr->i32 
              #                    occupy s11 with temp_9_array_ptr_33
              #                    occupy a4 with temp_10_array_ele_33
    lw      a4,0(s11)
              #                    free a4
              #                    free s11
              #                          new_var temp_11_index_ptr_33:ptr->i32 
              #                          temp_11_index_ptr_33 = getelementptr *rev_0:ptr->Array:i32:[Some(10_0)] [Some(u_31), Some(temp_10_array_ele_33)] 
              #                    occupy a5 with temp_11_index_ptr_33
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with u_31
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a6,a0
              #                    free a6
              #                    free a0
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
              #                    occupy a6 with *rev_0
              #                       load label rev as ptr to reg
    la      a6, rev
              #                    occupy reg a6 with *rev_0
    add     a5,a5,a6
              #                    free a6
              #                    free a5
              #                          new_var temp_12_array_ptr_33:ptr->i32 
              #                          temp_12_array_ptr_33 = getelementptr *size_0:ptr->i32 [Some(v_31)] 
              #                    occupy a6 with temp_12_array_ptr_33
    li      a6, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a1 with v_31
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,s2,a1
              #                    free s2
              #                    free a1
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
              #                    occupy s2 with *size_0
              #                       load label size as ptr to reg
    la      s2, size
              #                    occupy reg s2 with *size_0
    add     a6,a6,s2
              #                    free s2
              #                    free a6
              #                          new_var temp_13_array_ele_33:i32 
              #                          temp_13_array_ele_33 = load temp_12_array_ptr_33:ptr->i32 
              #                    occupy a6 with temp_12_array_ptr_33
              #                    occupy s2 with temp_13_array_ele_33
    lw      s2,0(a6)
              #                    free s2
              #                    free a6
              #                          store temp_13_array_ele_33:i32 temp_11_index_ptr_33:ptr->i32 
              #                    occupy a5 with temp_11_index_ptr_33
              #                    occupy s2 with temp_13_array_ele_33
    sw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          mu *rev_0:92 
              #                          *rev_0 = chi *rev_0:92 
              #                          new_var temp_14_array_ptr_33:ptr->i32 
              #                          temp_14_array_ptr_33 = getelementptr *size_0:ptr->i32 [Some(v_31)] 
              #                    occupy s3 with temp_14_array_ptr_33
    li      s3, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy a1 with v_31
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s5,a1
              #                    free s5
              #                    free a1
    add     s3,s3,s6
              #                    free s6
    slli s3,s3,2
              #                    occupy s5 with *size_0
              #                       load label size as ptr to reg
    la      s5, size
              #                    occupy reg s5 with *size_0
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                          new_var temp_15_array_ele_33:i32 
              #                          temp_15_array_ele_33 = load temp_14_array_ptr_33:ptr->i32 
              #                    occupy s3 with temp_14_array_ptr_33
              #                    occupy s5 with temp_15_array_ele_33
    lw      s5,0(s3)
              #                    free s5
              #                    free s3
              #                          new_var temp_16_index_ptr_33:ptr->i32 
              #                          temp_16_index_ptr_33 = getelementptr *to_0:ptr->Array:i32:[Some(10_0)] [Some(v_31), Some(temp_15_array_ele_33)] 
              #                    occupy s6 with temp_16_index_ptr_33
    li      s6, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy a1 with v_31
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,s9,a1
              #                    free s9
              #                    free a1
    add     s6,s6,s10
              #                    free s10
    slli s6,s6,2
              #                    occupy s9 with *to_0
              #                       load label to as ptr to reg
    la      s9, to
              #                    occupy reg s9 with *to_0
    add     s6,s6,s9
              #                    free s9
              #                    free s6
              #                          store u_31:i32 temp_16_index_ptr_33:ptr->i32 
              #                    occupy s6 with temp_16_index_ptr_33
              #                    occupy a0 with u_31
    sw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                          mu *to_0:104 
              #                          *to_0 = chi *to_0:104 
              #                          new_var temp_17_array_ptr_33:ptr->i32 
              #                          temp_17_array_ptr_33 = getelementptr *size_0:ptr->i32 [Some(v_31)] 
              #                    occupy s9 with temp_17_array_ptr_33
    li      s9, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy a1 with v_31
              #                    store to u_31 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with u_31
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,s10,a1
              #                    free s10
              #                    free a1
    add     s9,s9,a0
              #                    free a0
    slli s9,s9,2
              #                    occupy a0 with *size_0
              #                       load label size as ptr to reg
    la      a0, size
              #                    occupy reg a0 with *size_0
    add     s9,s9,a0
              #                    free a0
              #                    free s9
              #                          new_var temp_18_array_ele_33:i32 
              #                          temp_18_array_ele_33 = load temp_17_array_ptr_33:ptr->i32 
              #                    occupy s9 with temp_17_array_ptr_33
              #                    occupy a0 with temp_18_array_ele_33
    lw      a0,0(s9)
              #                    free a0
              #                    free s9
              #                          new_var temp_19_index_ptr_33:ptr->i32 
              #                          temp_19_index_ptr_33 = getelementptr *cap_0:ptr->Array:i32:[Some(10_0)] [Some(v_31), Some(temp_18_array_ele_33)] 
              #                    occupy s10 with temp_19_index_ptr_33
    li      s10, 0
              #                    store to temp_18_array_ele_33 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_18_array_ele_33
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with v_31
              #                    store to c_31 in mem offset legal
    sw      a2,228(sp)
              #                    release a2 with c_31
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s10,s10,a2
              #                    free a2
    slli s10,s10,2
              #                    occupy a0 with *cap_0
              #                       load label cap as ptr to reg
    la      a0, cap
              #                    occupy reg a0 with *cap_0
    add     s10,s10,a0
              #                    free a0
              #                    free s10
              #                          store 0_0:i32 temp_19_index_ptr_33:ptr->i32 
              #                    occupy s10 with temp_19_index_ptr_33
              #                    occupy a0 with 0_0
    li      a0, 0
    sw      a0,0(s10)
              #                    free a0
              #                    free s10
              #                          mu *cap_0:116 
              #                          *cap_0 = chi *cap_0:116 
              #                          new_var temp_20_array_ptr_33:ptr->i32 
              #                          temp_20_array_ptr_33 = getelementptr *size_0:ptr->i32 [Some(v_31)] 
              #                    occupy a0 with temp_20_array_ptr_33
    li      a0, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a1 with v_31
              #                    store to temp_3_array_ptr_33 in mem offset legal
    sd      a3,216(sp)
              #                    release a3 with temp_3_array_ptr_33
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a2,a1
              #                    free a2
              #                    free a1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a2 with *size_0
              #                       load label size as ptr to reg
    la      a2, size
              #                    occupy reg a2 with *size_0
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                          new_var temp_21_array_ele_33:i32 
              #                          temp_21_array_ele_33 = load temp_20_array_ptr_33:ptr->i32 
              #                    occupy a0 with temp_20_array_ptr_33
              #                    occupy a2 with temp_21_array_ele_33
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          new_var temp_22_index_ptr_33:ptr->i32 
              #                          temp_22_index_ptr_33 = getelementptr *rev_0:ptr->Array:i32:[Some(10_0)] [Some(v_31), Some(temp_21_array_ele_33)] 
              #                    occupy a3 with temp_22_index_ptr_33
    li      a3, 0
              #                    store to temp_20_array_ptr_33 in mem offset legal
    sd      a0,80(sp)
              #                    release a0 with temp_20_array_ptr_33
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with v_31
              #                    store to temp_21_array_ele_33 in mem offset legal
    sw      a2,76(sp)
              #                    release a2 with temp_21_array_ele_33
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with *rev_0
              #                       load label rev as ptr to reg
    la      a0, rev
              #                    occupy reg a0 with *rev_0
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_23_array_ptr_33:ptr->i32 
              #                          temp_23_array_ptr_33 = getelementptr *size_0:ptr->i32 [Some(u_31)] 
              #                    occupy a0 with temp_23_array_ptr_33
    li      a0, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    store to v_31 in mem offset legal
    sw      a1,232(sp)
              #                    release a1 with v_31
              #                    occupy a1 with u_31
              #                    load from u_31 in mem


    lw      a1,236(sp)
              #                    store to temp_22_index_ptr_33 in mem offset legal
    sd      a3,64(sp)
              #                    release a3 with temp_22_index_ptr_33
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a2,a1
              #                    free a2
              #                    free a1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a2 with *size_0
              #                       load label size as ptr to reg
    la      a2, size
              #                    occupy reg a2 with *size_0
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                          new_var temp_24_array_ele_33:i32 
              #                          temp_24_array_ele_33 = load temp_23_array_ptr_33:ptr->i32 
              #                    occupy a0 with temp_23_array_ptr_33
              #                    occupy a2 with temp_24_array_ele_33
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          store temp_24_array_ele_33:i32 temp_22_index_ptr_33:ptr->i32 
              #                    occupy a3 with temp_22_index_ptr_33
              #                    load from temp_22_index_ptr_33 in mem
    ld      a3,64(sp)
              #                    occupy a2 with temp_24_array_ele_33
    sw      a2,0(a3)
              #                    free a2
              #                    free a3
              #                          mu *rev_0:134 
              #                          *rev_0 = chi *rev_0:134 
              #                          new_var temp_25_index_ptr_33:ptr->i32 
              #                          temp_25_index_ptr_33 = getelementptr *size_0:ptr->i32 [Some(u_31)] 
              #                    store to temp_23_array_ptr_33 in mem offset legal
    sd      a0,56(sp)
              #                    release a0 with temp_23_array_ptr_33
              #                    occupy a0 with temp_25_index_ptr_33
    li      a0, 0
              #                    store to u_31 in mem offset legal
    sw      a1,236(sp)
              #                    release a1 with u_31
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_24_array_ele_33 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_24_array_ele_33
              #                    occupy a2 with u_31
              #                    load from u_31 in mem


    lw      a2,236(sp)
              #                    store to temp_22_index_ptr_33 in mem offset legal
    sd      a3,64(sp)
              #                    release a3 with temp_22_index_ptr_33
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *size_0
              #                       load label size as ptr to reg
    la      a1, size
              #                    occupy reg a1 with *size_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_26_array_ptr_33:ptr->i32 
              #                          temp_26_array_ptr_33 = getelementptr *size_0:ptr->i32 [Some(u_31)] 
              #                    occupy a1 with temp_26_array_ptr_33
    li      a1, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a2 with u_31
              #                    store to temp_25_index_ptr_33 in mem offset legal
    sd      a0,40(sp)
              #                    release a0 with temp_25_index_ptr_33
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,a3,a2
              #                    free a3
              #                    free a2
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
              #                    occupy a0 with *size_0
              #                       load label size as ptr to reg
    la      a0, size
              #                    occupy reg a0 with *size_0
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_27_array_ele_33:i32 
              #                          temp_27_array_ele_33 = load temp_26_array_ptr_33:ptr->i32 
              #                    occupy a1 with temp_26_array_ptr_33
              #                    occupy a0 with temp_27_array_ele_33
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_28_arithop_33:i32 
              #                          temp_28_arithop_33 = Add i32 temp_27_array_ele_33, 1_0 
              #                    occupy a0 with temp_27_array_ele_33
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    store to temp_26_array_ptr_33 in mem offset legal
    sd      a1,32(sp)
              #                    release a1 with temp_26_array_ptr_33
              #                    occupy a1 with temp_28_arithop_33
    add     a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                          store temp_28_arithop_33:i32 temp_25_index_ptr_33:ptr->i32 
              #                    occupy a3 with temp_25_index_ptr_33
              #                    load from temp_25_index_ptr_33 in mem
    ld      a3,40(sp)
              #                    occupy a1 with temp_28_arithop_33
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                          mu *size_0:149 
              #                          *size_0 = chi *size_0:149 
              #                          new_var temp_29_index_ptr_33:ptr->i32 
              #                          temp_29_index_ptr_33 = getelementptr *size_0:ptr->i32 [Some(v_31)] 
              #                    store to temp_27_array_ele_33 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_27_array_ele_33
              #                    occupy a0 with temp_29_index_ptr_33
    li      a0, 0
              #                    store to temp_28_arithop_33 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with temp_28_arithop_33
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to u_31 in mem offset legal
    sw      a2,236(sp)
              #                    release a2 with u_31
              #                    occupy a2 with v_31
              #                    load from v_31 in mem


    lw      a2,232(sp)
              #                    store to temp_25_index_ptr_33 in mem offset legal
    sd      a3,40(sp)
              #                    release a3 with temp_25_index_ptr_33
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *size_0
              #                       load label size as ptr to reg
    la      a1, size
              #                    occupy reg a1 with *size_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_30_array_ptr_33:ptr->i32 
              #                          temp_30_array_ptr_33 = getelementptr *size_0:ptr->i32 [Some(v_31)] 
              #                    occupy a1 with temp_30_array_ptr_33
    li      a1, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a2 with v_31
              #                    store to temp_29_index_ptr_33 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_29_index_ptr_33
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,a3,a2
              #                    free a3
              #                    free a2
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
              #                    occupy a0 with *size_0
              #                       load label size as ptr to reg
    la      a0, size
              #                    occupy reg a0 with *size_0
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_31_array_ele_33:i32 
              #                          temp_31_array_ele_33 = load temp_30_array_ptr_33:ptr->i32 
              #                    occupy a1 with temp_30_array_ptr_33
              #                    occupy a0 with temp_31_array_ele_33
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_32_arithop_33:i32 
              #                          temp_32_arithop_33 = Add i32 temp_31_array_ele_33, 1_0 
              #                    occupy a0 with temp_31_array_ele_33
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    store to temp_30_array_ptr_33 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_30_array_ptr_33
              #                    occupy a1 with temp_32_arithop_33
    add     a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                          store temp_32_arithop_33:i32 temp_29_index_ptr_33:ptr->i32 
              #                    occupy a3 with temp_29_index_ptr_33
              #                    load from temp_29_index_ptr_33 in mem
    ld      a3,16(sp)
              #                    occupy a1 with temp_32_arithop_33
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                          mu *size_0:164 
              #                          *size_0 = chi *size_0:164 
              #                    store to temp_12_array_ptr_33 in mem offset legal
    sd      a6,144(sp)
              #                    release a6 with temp_12_array_ptr_33
              #                    regtab     a0:Freed { symidx: temp_31_array_ele_33, tracked: true } |     a1:Freed { symidx: temp_32_arithop_33, tracked: true } |     a2:Freed { symidx: v_31, tracked: true } |     a3:Freed { symidx: temp_29_index_ptr_33, tracked: true } |     a4:Freed { symidx: temp_10_array_ele_33, tracked: true } |     a5:Freed { symidx: temp_11_index_ptr_33, tracked: true } |     a7:Freed { symidx: temp_4_array_ele_33, tracked: true } |     s10:Freed { symidx: temp_19_index_ptr_33, tracked: true } |     s11:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     s1:Freed { symidx: temp_5_index_ptr_33, tracked: true } |     s2:Freed { symidx: temp_13_array_ele_33, tracked: true } |     s3:Freed { symidx: temp_14_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_6_array_ptr_33, tracked: true } |     s5:Freed { symidx: temp_15_array_ele_33, tracked: true } |     s6:Freed { symidx: temp_16_index_ptr_33, tracked: true } |     s7:Freed { symidx: temp_7_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_8_index_ptr_33, tracked: true } |     s9:Freed { symidx: temp_17_array_ptr_33, tracked: true } | 
              #                    regtab 
              #                          Define dfs_0 [s_42, t_42, f_42] -> dfs_ret_0 
    .globl dfs
    .type dfs,@function
dfs:
              #                    mem layout:|ra_dfs:8 at 296|s0_dfs:8 at 288|s:4 at 284|t:4 at 280|f:4 at 276|temp_33_cmp:1 at 275|none:3 at 272|temp_34_index_ptr:8 at 264|i:4 at 260|none:4 at 256|temp_35_array_ptr:8 at 248|temp_36_array_ele:4 at 244|temp_37_cmp:1 at 243|none:3 at 240|temp_38_array_ptr:8 at 232|temp_39_array_ele:4 at 228|none:4 at 224|temp_40_array_ptr:8 at 216|temp_41_array_ele:4 at 212|temp_42_:1 at 211|none:3 at 208|temp_43_arithop:4 at 204|none:4 at 200|temp_44_array_ptr:8 at 192|temp_45_array_ele:4 at 188|temp_46_cmp:1 at 187|none:3 at 184|temp_47_arithop:4 at 180|min_f:4 at 176|temp_48_array_ptr:8 at 168|temp_49_array_ele:4 at 164|temp_50_cmp:1 at 163|none:3 at 160|temp_51_array_ptr:8 at 152|temp_52_array_ele:4 at 148|temp_53_ret_of_dfs:4 at 144|d:4 at 140|temp_54_cmp:1 at 139|none:3 at 136|temp_55_index_ptr:8 at 128|temp_56_array_ptr:8 at 120|temp_57_array_ele:4 at 116|temp_58_arithop:4 at 112|temp_59_array_ptr:8 at 104|temp_60_array_ele:4 at 100|none:4 at 96|temp_61_array_ptr:8 at 88|temp_62_array_ele:4 at 84|none:4 at 80|temp_63_index_ptr:8 at 72|temp_64_array_ptr:8 at 64|temp_65_array_ele:4 at 60|none:4 at 56|temp_66_array_ptr:8 at 48|temp_67_array_ele:4 at 44|none:4 at 40|temp_68_array_ptr:8 at 32|temp_69_array_ele:4 at 28|temp_70_arithop:4 at 24|temp_71_arithop:4 at 20|none:4 at 16|temp_72_array_ptr:8 at 8|temp_73_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-304
              #                    store to ra_dfs_0 in mem offset legal
    sd      ra,296(sp)
              #                    store to s0_dfs_0 in mem offset legal
    sd      s0,288(sp)
    addi    s0,sp,304
              #                          alloc i1 temp_33_cmp_45 
              #                          alloc ptr->i32 temp_34_index_ptr_44 
              #                          alloc i32 i_44 
              #                          alloc ptr->i32 temp_35_array_ptr_50 
              #                          alloc i32 temp_36_array_ele_50 
              #                          alloc i1 temp_37_cmp_50 
              #                          alloc ptr->i32 temp_38_array_ptr_53 
              #                          alloc i32 temp_39_array_ele_53 
              #                          alloc ptr->i32 temp_40_array_ptr_53 
              #                          alloc i32 temp_41_array_ele_53 
              #                          alloc i1 temp_42__1500 
              #                          alloc i32 temp_43_arithop_55 
              #                          alloc ptr->i32 temp_44_array_ptr_58 
              #                          alloc i32 temp_45_array_ele_58 
              #                          alloc i1 temp_46_cmp_58 
              #                          alloc i32 temp_47_arithop_60 
              #                          alloc i32 min_f_52 
              #                          alloc ptr->i32 temp_48_array_ptr_64 
              #                          alloc i32 temp_49_array_ele_64 
              #                          alloc i1 temp_50_cmp_64 
              #                          alloc ptr->i32 temp_51_array_ptr_52 
              #                          alloc i32 temp_52_array_ele_52 
              #                          alloc i32 temp_53_ret_of_dfs_52 
              #                          alloc i32 d_52 
              #                          alloc i1 temp_54_cmp_69 
              #                          alloc ptr->i32 temp_55_index_ptr_71 
              #                          alloc ptr->i32 temp_56_array_ptr_71 
              #                          alloc i32 temp_57_array_ele_71 
              #                          alloc i32 temp_58_arithop_71 
              #                          alloc ptr->i32 temp_59_array_ptr_71 
              #                          alloc i32 temp_60_array_ele_71 
              #                          alloc ptr->i32 temp_61_array_ptr_71 
              #                          alloc i32 temp_62_array_ele_71 
              #                          alloc ptr->i32 temp_63_index_ptr_71 
              #                          alloc ptr->i32 temp_64_array_ptr_71 
              #                          alloc i32 temp_65_array_ele_71 
              #                          alloc ptr->i32 temp_66_array_ptr_71 
              #                          alloc i32 temp_67_array_ele_71 
              #                          alloc ptr->i32 temp_68_array_ptr_71 
              #                          alloc i32 temp_69_array_ele_71 
              #                          alloc i32 temp_70_arithop_71 
              #                          alloc i32 temp_71_arithop_52 
              #                          alloc ptr->i32 temp_72_array_ptr_64 
              #                          alloc i32 temp_73_array_ele_64 
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_33_cmp_45:i1 
              #                          temp_33_cmp_45 = icmp i32 Eq s_42, t_42 
              #                    occupy a0 with s_42
              #                    occupy a1 with t_42
              #                    occupy a3 with temp_33_cmp_45
    xor     a3,a0,a1
    seqz    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                          br i1 temp_33_cmp_45, label branch_true_46, label branch_false_46 
              #                    occupy a3 with temp_33_cmp_45
              #                    free a3
              #                    occupy a3 with temp_33_cmp_45
    bnez    a3, .branch_true_46
              #                    free a3
    j       .branch_false_46
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } | 
              #                          label branch_true_46: 
.branch_true_46:
              #                          ret f_42 
              #                    load from ra_dfs_0 in mem
    ld      ra,296(sp)
              #                    load from s0_dfs_0 in mem
    ld      s0,288(sp)
              #                    store to f_42 in mem offset legal
    sw      a2,276(sp)
              #                    release a2 with f_42
              #                    store to s_42 in mem offset legal
    sw      a0,284(sp)
              #                    release a0 with s_42
              #                    occupy a0 with f_42
              #                    load from f_42 in mem


    lw      a0,276(sp)
    addi    sp,sp,304
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } | 
              #                          label branch_false_46: 
.branch_false_46:
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_34_index_ptr_44:ptr->i32 
              #                          temp_34_index_ptr_44 = getelementptr *used_0:ptr->i32 [Some(s_42)] 
              #                    occupy a4 with temp_34_index_ptr_44
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with s_42
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *used_0
              #                       load label used as ptr to reg
    la      a7, used
              #                    occupy reg a7 with *used_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store 1_0:i32 temp_34_index_ptr_44:ptr->i32 
              #                    occupy a4 with temp_34_index_ptr_44
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu *used_0:178 
              #                          *used_0 = chi *used_0:178 
              #                          i_44 = i32 0_0 
              #                    occupy s1 with i_44
    li      s1, 0
              #                    free s1
              #                          jump label: while.head_51 
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } | 
              #                          label while.head_51: 
.while.head_51:
              #                          new_var temp_35_array_ptr_50:ptr->i32 
              #                          temp_35_array_ptr_50 = getelementptr *size_0:ptr->i32 [Some(s_42)] 
              #                    occupy a5 with temp_35_array_ptr_50
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with s_42
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a6,a0
              #                    free a6
              #                    free a0
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s2 with *size_0
              #                       load label size as ptr to reg
    la      s2, size
              #                    occupy reg s2 with *size_0
    add     a5,a5,s2
              #                    free s2
              #                    free a5
              #                          new_var temp_36_array_ele_50:i32 
              #                          temp_36_array_ele_50 = load temp_35_array_ptr_50:ptr->i32 
              #                    occupy a5 with temp_35_array_ptr_50
              #                    occupy s3 with temp_36_array_ele_50
    lw      s3,0(a5)
              #                    free s3
              #                    free a5
              #                          new_var temp_37_cmp_50:i1 
              #                          temp_37_cmp_50 = icmp i32 Slt i_44, temp_36_array_ele_50 
              #                    occupy s1 with i_44
              #                    occupy s3 with temp_36_array_ele_50
              #                    occupy s4 with temp_37_cmp_50
    slt     s4,s1,s3
              #                    free s1
              #                    free s3
              #                    free s4
              #                          br i1 temp_37_cmp_50, label while.body_51, label while.exit_51 
              #                    occupy s4 with temp_37_cmp_50
              #                    free s4
              #                    occupy s4 with temp_37_cmp_50
    bnez    s4, .while.body_51
              #                    free s4
    j       .while.exit_51
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s3:Freed { symidx: temp_36_array_ele_50, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } | 
              #                          label while.body_51: 
.while.body_51:
              #                          new_var temp_38_array_ptr_53:ptr->i32 
              #                          temp_38_array_ptr_53 = getelementptr *to_0:ptr->Array:i32:[Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy a6 with temp_38_array_ptr_53
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a0 with s_42
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a7,a0
              #                    free a7
              #                    free a0
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
              #                    occupy s5 with *to_0
              #                       load label to as ptr to reg
    la      s5, to
              #                    occupy reg s5 with *to_0
    add     a6,a6,s5
              #                    free s5
              #                    free a6
              #                          new_var temp_39_array_ele_53:i32 
              #                          temp_39_array_ele_53 = load temp_38_array_ptr_53:ptr->i32 
              #                    occupy a6 with temp_38_array_ptr_53
              #                    occupy s6 with temp_39_array_ele_53
    lw      s6,0(a6)
              #                    free s6
              #                    free a6
              #                          new_var temp_40_array_ptr_53:ptr->i32 
              #                          temp_40_array_ptr_53 = getelementptr *used_0:ptr->i32 [Some(temp_39_array_ele_53)] 
              #                    occupy s7 with temp_40_array_ptr_53
    li      s7, 0
              #                    found literal reg Some(a7) already exist with 1_0
              #                    occupy a7 with 1_0
              #                    occupy s6 with temp_39_array_ele_53
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,a7,s6
              #                    free a7
              #                    free s6
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy s9 with *used_0
              #                       load label used as ptr to reg
    la      s9, used
              #                    occupy reg s9 with *used_0
    add     s7,s7,s9
              #                    free s9
              #                    free s7
              #                          new_var temp_41_array_ele_53:i32 
              #                          temp_41_array_ele_53 = load temp_40_array_ptr_53:ptr->i32 
              #                    occupy s7 with temp_40_array_ptr_53
              #                    occupy s10 with temp_41_array_ele_53
    lw      s10,0(s7)
              #                    free s10
              #                    free s7
              #                          new_var temp_42__1500:i1 
              #                          temp_42__1500 = icmp i32 Ne temp_41_array_ele_53, 0_0 
              #                    occupy s10 with temp_41_array_ele_53
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    occupy a7 with temp_42__1500
    xor     a7,s10,s11
    snez    a7, a7
              #                    free s10
              #                    free s11
              #                    free a7
              #                          br i1 temp_42__1500, label branch_true_54, label branch_false_54 
              #                    occupy a7 with temp_42__1500
              #                    free a7
              #                    occupy a7 with temp_42__1500
    bnez    a7, .branch_true_54
              #                    free a7
    j       .branch_false_54
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_53, tracked: true } |     a7:Freed { symidx: temp_42__1500, tracked: true } |     s10:Freed { symidx: temp_41_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s3:Freed { symidx: temp_36_array_ele_50, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } |     s6:Freed { symidx: temp_39_array_ele_53, tracked: true } |     s7:Freed { symidx: temp_40_array_ptr_53, tracked: true } | 
              #                          label branch_true_54: 
.branch_true_54:
              #                          new_var temp_43_arithop_55:i32 
              #                          temp_43_arithop_55 = Add i32 i_44, 1_0 
              #                    occupy s1 with i_44
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s5 with temp_43_arithop_55
    add     s5,s1,s2
              #                    free s1
              #                    free s2
              #                    free s5
              #                          i_44 = i32 temp_43_arithop_55 
              #                    occupy s5 with temp_43_arithop_55
              #                    occupy s1 with i_44
    mv      s1, s5
              #                    free s5
              #                    free s1
              #                          jump label: while.exit_51 
              #                    store to temp_40_array_ptr_53 in mem offset legal
    sd      s7,216(sp)
              #                    release s7 with temp_40_array_ptr_53
              #                    store to temp_39_array_ele_53 in mem offset legal
    sw      s6,228(sp)
              #                    release s6 with temp_39_array_ele_53
              #                    store to temp_41_array_ele_53 in mem offset legal
    sw      s10,212(sp)
              #                    release s10 with temp_41_array_ele_53
              #                    store to temp_42__1500 in mem offset legal
    sb      a7,211(sp)
              #                    release a7 with temp_42__1500
              #                    store to temp_43_arithop_55 in mem offset legal
    sw      s5,204(sp)
              #                    release s5 with temp_43_arithop_55
              #                    store to temp_38_array_ptr_53 in mem offset legal
    sd      a6,232(sp)
              #                    release a6 with temp_38_array_ptr_53
    j       .while.exit_51
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_53, tracked: true } |     a7:Freed { symidx: temp_42__1500, tracked: true } |     s10:Freed { symidx: temp_41_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s3:Freed { symidx: temp_36_array_ele_50, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } |     s6:Freed { symidx: temp_39_array_ele_53, tracked: true } |     s7:Freed { symidx: temp_40_array_ptr_53, tracked: true } | 
              #                          label branch_false_54: 
.branch_false_54:
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_53, tracked: true } |     a7:Freed { symidx: temp_42__1500, tracked: true } |     s10:Freed { symidx: temp_41_array_ele_53, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s3:Freed { symidx: temp_36_array_ele_50, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } |     s6:Freed { symidx: temp_39_array_ele_53, tracked: true } |     s7:Freed { symidx: temp_40_array_ptr_53, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_44_array_ptr_58:ptr->i32 
              #                          temp_44_array_ptr_58 = getelementptr *cap_0:ptr->Array:i32:[Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s2 with temp_44_array_ptr_58
    li      s2, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy a0 with s_42
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s5,a0
              #                    free s5
              #                    free a0
    add     s2,s2,s8
              #                    free s8
    slli s2,s2,2
              #                    occupy s9 with *cap_0
              #                       load label cap as ptr to reg
    la      s9, cap
              #                    occupy reg s9 with *cap_0
    add     s2,s2,s9
              #                    free s9
              #                    free s2
              #                          new_var temp_45_array_ele_58:i32 
              #                          temp_45_array_ele_58 = load temp_44_array_ptr_58:ptr->i32 
              #                    occupy s2 with temp_44_array_ptr_58
              #                    occupy s11 with temp_45_array_ele_58
    lw      s11,0(s2)
              #                    free s11
              #                    free s2
              #                          new_var temp_46_cmp_58:i1 
              #                          temp_46_cmp_58 = icmp i32 Sle temp_45_array_ele_58, 0_0 
              #                    occupy s11 with temp_45_array_ele_58
              #                    occupy s5 with 0_0
    li      s5, 0
              #                    occupy s8 with temp_46_cmp_58
    slt     s8,s5,s11
    xori    s8,s8,1
              #                    free s11
              #                    free s5
              #                    free s8
              #                          br i1 temp_46_cmp_58, label branch_true_59, label branch_false_59 
              #                    occupy s8 with temp_46_cmp_58
              #                    free s8
              #                    occupy s8 with temp_46_cmp_58
    bnez    s8, .branch_true_59
              #                    free s8
    j       .branch_false_59
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_53, tracked: true } |     a7:Freed { symidx: temp_42__1500, tracked: true } |     s10:Freed { symidx: temp_41_array_ele_53, tracked: true } |     s11:Freed { symidx: temp_45_array_ele_58, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_44_array_ptr_58, tracked: true } |     s3:Freed { symidx: temp_36_array_ele_50, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } |     s6:Freed { symidx: temp_39_array_ele_53, tracked: true } |     s7:Freed { symidx: temp_40_array_ptr_53, tracked: true } |     s8:Freed { symidx: temp_46_cmp_58, tracked: true } | 
              #                          label branch_true_59: 
.branch_true_59:
              #                          new_var temp_47_arithop_60:i32 
              #                          temp_47_arithop_60 = Add i32 i_44, 1_0 
              #                    occupy s1 with i_44
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s9 with temp_47_arithop_60
    add     s9,s1,s5
              #                    free s1
              #                    free s5
              #                    free s9
              #                          i_44 = i32 temp_47_arithop_60 
              #                    occupy s9 with temp_47_arithop_60
              #                    occupy s1 with i_44
    mv      s1, s9
              #                    free s9
              #                    free s1
              #                          jump label: while.exit_51 
              #                    store to temp_40_array_ptr_53 in mem offset legal
    sd      s7,216(sp)
              #                    release s7 with temp_40_array_ptr_53
              #                    store to temp_45_array_ele_58 in mem offset legal
    sw      s11,188(sp)
              #                    release s11 with temp_45_array_ele_58
              #                    store to temp_47_arithop_60 in mem offset legal
    sw      s9,180(sp)
              #                    release s9 with temp_47_arithop_60
              #                    store to temp_39_array_ele_53 in mem offset legal
    sw      s6,228(sp)
              #                    release s6 with temp_39_array_ele_53
              #                    store to temp_41_array_ele_53 in mem offset legal
    sw      s10,212(sp)
              #                    release s10 with temp_41_array_ele_53
              #                    store to temp_42__1500 in mem offset legal
    sb      a7,211(sp)
              #                    release a7 with temp_42__1500
              #                    store to temp_44_array_ptr_58 in mem offset legal
    sd      s2,192(sp)
              #                    release s2 with temp_44_array_ptr_58
              #                    store to temp_46_cmp_58 in mem offset legal
    sb      s8,187(sp)
              #                    release s8 with temp_46_cmp_58
              #                    store to temp_38_array_ptr_53 in mem offset legal
    sd      a6,232(sp)
              #                    release a6 with temp_38_array_ptr_53
    j       .while.exit_51
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_53, tracked: true } |     a7:Freed { symidx: temp_42__1500, tracked: true } |     s10:Freed { symidx: temp_41_array_ele_53, tracked: true } |     s11:Freed { symidx: temp_45_array_ele_58, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_44_array_ptr_58, tracked: true } |     s3:Freed { symidx: temp_36_array_ele_50, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } |     s6:Freed { symidx: temp_39_array_ele_53, tracked: true } |     s7:Freed { symidx: temp_40_array_ptr_53, tracked: true } |     s8:Freed { symidx: temp_46_cmp_58, tracked: true } | 
              #                          label branch_false_59: 
.branch_false_59:
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_53, tracked: true } |     a7:Freed { symidx: temp_42__1500, tracked: true } |     s10:Freed { symidx: temp_41_array_ele_53, tracked: true } |     s11:Freed { symidx: temp_45_array_ele_58, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_44_array_ptr_58, tracked: true } |     s3:Freed { symidx: temp_36_array_ele_50, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } |     s6:Freed { symidx: temp_39_array_ele_53, tracked: true } |     s7:Freed { symidx: temp_40_array_ptr_53, tracked: true } |     s8:Freed { symidx: temp_46_cmp_58, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var min_f_52:i32 
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_53, tracked: true } |     a7:Freed { symidx: temp_42__1500, tracked: true } |     s10:Freed { symidx: temp_41_array_ele_53, tracked: true } |     s11:Freed { symidx: temp_45_array_ele_58, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_44_array_ptr_58, tracked: true } |     s3:Freed { symidx: temp_36_array_ele_50, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } |     s6:Freed { symidx: temp_39_array_ele_53, tracked: true } |     s7:Freed { symidx: temp_40_array_ptr_53, tracked: true } |     s8:Freed { symidx: temp_46_cmp_58, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_48_array_ptr_64:ptr->i32 
              #                          temp_48_array_ptr_64 = getelementptr *cap_0:ptr->Array:i32:[Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s5 with temp_48_array_ptr_64
    li      s5, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy a0 with s_42
              #                    store to t_42 in mem offset legal
    sw      a1,280(sp)
              #                    release a1 with t_42
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,s9,a0
              #                    free s9
              #                    free a0
    add     s5,s5,a1
              #                    free a1
    slli s5,s5,2
              #                    occupy a1 with *cap_0
              #                       load label cap as ptr to reg
    la      a1, cap
              #                    occupy reg a1 with *cap_0
    add     s5,s5,a1
              #                    free a1
              #                    free s5
              #                          new_var temp_49_array_ele_64:i32 
              #                          temp_49_array_ele_64 = load temp_48_array_ptr_64:ptr->i32 
              #                    occupy s5 with temp_48_array_ptr_64
              #                    occupy a1 with temp_49_array_ele_64
    lw      a1,0(s5)
              #                    free a1
              #                    free s5
              #                          new_var temp_50_cmp_64:i1 
              #                          temp_50_cmp_64 = icmp i32 Slt f_42, temp_49_array_ele_64 
              #                    occupy a2 with f_42
              #                    occupy a1 with temp_49_array_ele_64
              #                    occupy s9 with temp_50_cmp_64
    slt     s9,a2,a1
              #                    free a2
              #                    free a1
              #                    free s9
              #                          br i1 temp_50_cmp_64, label branch_true_65, label branch_false_65 
              #                    occupy s9 with temp_50_cmp_64
              #                    free s9
              #                    store to temp_36_array_ele_50 in mem offset legal
    sw      s3,244(sp)
              #                    release s3 with temp_36_array_ele_50
              #                    occupy s9 with temp_50_cmp_64
    bnez    s9, .branch_true_65
              #                    free s9
    j       .branch_false_65
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: temp_49_array_ele_64, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_53, tracked: true } |     a7:Freed { symidx: temp_42__1500, tracked: true } |     s10:Freed { symidx: temp_41_array_ele_53, tracked: true } |     s11:Freed { symidx: temp_45_array_ele_58, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_44_array_ptr_58, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } |     s5:Freed { symidx: temp_48_array_ptr_64, tracked: true } |     s6:Freed { symidx: temp_39_array_ele_53, tracked: true } |     s7:Freed { symidx: temp_40_array_ptr_53, tracked: true } |     s8:Freed { symidx: temp_46_cmp_58, tracked: true } |     s9:Freed { symidx: temp_50_cmp_64, tracked: true } | 
              #                          label branch_true_65: 
.branch_true_65:
              #                          min_f_52 = i32 f_42 
              #                    occupy a2 with f_42
              #                    occupy s3 with min_f_52
    mv      s3, a2
              #                    free a2
              #                    free s3
              #                          jump label: L9_0 
              #                    store to min_f_52 in mem offset legal
    sw      s3,176(sp)
              #                    release s3 with min_f_52
    j       .L9_0
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: temp_49_array_ele_64, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_53, tracked: true } |     a7:Freed { symidx: temp_42__1500, tracked: true } |     s10:Freed { symidx: temp_41_array_ele_53, tracked: true } |     s11:Freed { symidx: temp_45_array_ele_58, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_44_array_ptr_58, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } |     s5:Freed { symidx: temp_48_array_ptr_64, tracked: true } |     s6:Freed { symidx: temp_39_array_ele_53, tracked: true } |     s7:Freed { symidx: temp_40_array_ptr_53, tracked: true } |     s8:Freed { symidx: temp_46_cmp_58, tracked: true } |     s9:Freed { symidx: temp_50_cmp_64, tracked: true } | 
              #                          label branch_false_65: 
.branch_false_65:
              #                          new_var temp_72_array_ptr_64:ptr->i32 
              #                          temp_72_array_ptr_64 = getelementptr *cap_0:ptr->Array:i32:[Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s3 with temp_72_array_ptr_64
    li      s3, 0
              #                    store to s_42 in mem offset legal
    sw      a0,284(sp)
              #                    release a0 with s_42
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_49_array_ele_64 in mem offset legal
    sw      a1,164(sp)
              #                    release a1 with temp_49_array_ele_64
              #                    occupy a1 with s_42
              #                    load from s_42 in mem


    lw      a1,284(sp)
              #                    store to f_42 in mem offset legal
    sw      a2,276(sp)
              #                    release a2 with f_42
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s3,s3,a2
              #                    free a2
    slli s3,s3,2
              #                    occupy a0 with *cap_0
              #                       load label cap as ptr to reg
    la      a0, cap
              #                    occupy reg a0 with *cap_0
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          new_var temp_73_array_ele_64:i32 
              #                          temp_73_array_ele_64 = load temp_72_array_ptr_64:ptr->i32 
              #                    occupy s3 with temp_72_array_ptr_64
              #                    occupy a0 with temp_73_array_ele_64
    lw      a0,0(s3)
              #                    free a0
              #                    free s3
              #                          min_f_52 = i32 temp_73_array_ele_64 
              #                    occupy a0 with temp_73_array_ele_64
              #                    occupy a2 with min_f_52
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          jump label: L9_0 
              #                    store to temp_72_array_ptr_64 in mem offset legal
    sd      s3,8(sp)
              #                    release s3 with temp_72_array_ptr_64
              #                    store to s_42 in mem offset legal
    sw      a1,284(sp)
              #                    release a1 with s_42
              #                    store to temp_73_array_ele_64 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_73_array_ele_64
              #                    store to min_f_52 in mem offset legal
    sw      a2,176(sp)
              #                    release a2 with min_f_52
              #                    occupy a1 with _anonymous_of_temp_49_array_ele_64_0
              #                    load from temp_49_array_ele_64 in mem


    lw      a1,164(sp)
              #                    occupy a0 with _anonymous_of_s_42_0
              #                    load from s_42 in mem


    lw      a0,284(sp)
              #                    occupy a2 with _anonymous_of_f_42_0
              #                    load from f_42 in mem


    lw      a2,276(sp)
    j       .L9_0
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: temp_49_array_ele_64, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_53, tracked: true } |     a7:Freed { symidx: temp_42__1500, tracked: true } |     s10:Freed { symidx: temp_41_array_ele_53, tracked: true } |     s11:Freed { symidx: temp_45_array_ele_58, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_44_array_ptr_58, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } |     s5:Freed { symidx: temp_48_array_ptr_64, tracked: true } |     s6:Freed { symidx: temp_39_array_ele_53, tracked: true } |     s7:Freed { symidx: temp_40_array_ptr_53, tracked: true } |     s8:Freed { symidx: temp_46_cmp_58, tracked: true } |     s9:Freed { symidx: temp_50_cmp_64, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: temp_49_array_ele_64, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_53, tracked: true } |     a7:Freed { symidx: temp_42__1500, tracked: true } |     s10:Freed { symidx: temp_41_array_ele_53, tracked: true } |     s11:Freed { symidx: temp_45_array_ele_58, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s2:Freed { symidx: temp_44_array_ptr_58, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } |     s5:Freed { symidx: temp_48_array_ptr_64, tracked: true } |     s6:Freed { symidx: temp_39_array_ele_53, tracked: true } |     s7:Freed { symidx: temp_40_array_ptr_53, tracked: true } |     s8:Freed { symidx: temp_46_cmp_58, tracked: true } |     s9:Freed { symidx: temp_50_cmp_64, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_51_array_ptr_52:ptr->i32 
              #                          temp_51_array_ptr_52 = getelementptr *to_0:ptr->Array:i32:[Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s3 with temp_51_array_ptr_52
    li      s3, 0
              #                    store to s_42 in mem offset legal
    sw      a0,284(sp)
              #                    release a0 with s_42
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_49_array_ele_64 in mem offset legal
    sw      a1,164(sp)
              #                    release a1 with temp_49_array_ele_64
              #                    occupy a1 with s_42
              #                    load from s_42 in mem


    lw      a1,284(sp)
              #                    store to f_42 in mem offset legal
    sw      a2,276(sp)
              #                    release a2 with f_42
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s3,s3,a2
              #                    free a2
    slli s3,s3,2
              #                    occupy a0 with *to_0
              #                       load label to as ptr to reg
    la      a0, to
              #                    occupy reg a0 with *to_0
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          new_var temp_52_array_ele_52:i32 
              #                          temp_52_array_ele_52 = load temp_51_array_ptr_52:ptr->i32 
              #                    occupy s3 with temp_51_array_ptr_52
              #                    occupy a0 with temp_52_array_ele_52
    lw      a0,0(s3)
              #                    free a0
              #                    free s3
              #                          new_var temp_53_ret_of_dfs_52:i32 
              #                          temp_53_ret_of_dfs_52 =  Call i32 dfs_0(temp_52_array_ele_52, t_42, min_f_52) 
              #                    saved register dumping to mem
              #                    store to i_44 in mem offset legal
    sw      s1,260(sp)
              #                    release s1 with i_44
              #                    store to temp_44_array_ptr_58 in mem offset legal
    sd      s2,192(sp)
              #                    release s2 with temp_44_array_ptr_58
              #                    store to temp_51_array_ptr_52 in mem offset legal
    sd      s3,152(sp)
              #                    release s3 with temp_51_array_ptr_52
              #                    store to temp_37_cmp_50 in mem offset legal
    sb      s4,243(sp)
              #                    release s4 with temp_37_cmp_50
              #                    store to temp_48_array_ptr_64 in mem offset legal
    sd      s5,168(sp)
              #                    release s5 with temp_48_array_ptr_64
              #                    store to temp_39_array_ele_53 in mem offset legal
    sw      s6,228(sp)
              #                    release s6 with temp_39_array_ele_53
              #                    store to temp_40_array_ptr_53 in mem offset legal
    sd      s7,216(sp)
              #                    release s7 with temp_40_array_ptr_53
              #                    store to temp_46_cmp_58 in mem offset legal
    sb      s8,187(sp)
              #                    release s8 with temp_46_cmp_58
              #                    store to temp_50_cmp_64 in mem offset legal
    sb      s9,163(sp)
              #                    release s9 with temp_50_cmp_64
              #                    store to temp_41_array_ele_53 in mem offset legal
    sw      s10,212(sp)
              #                    release s10 with temp_41_array_ele_53
              #                    store to temp_45_array_ele_58 in mem offset legal
    sw      s11,188(sp)
              #                    release s11 with temp_45_array_ele_58
              #                    store to temp_52_array_ele_52 in mem offset legal
    sw      a0,148(sp)
              #                    release a0 with temp_52_array_ele_52
              #                    store to s_42 in mem offset legal
    sw      a1,284(sp)
              #                    release a1 with s_42
              #                    store to temp_33_cmp_45 in mem offset legal
    sb      a3,275(sp)
              #                    release a3 with temp_33_cmp_45
              #                    store to temp_34_index_ptr_44 in mem offset legal
    sd      a4,264(sp)
              #                    release a4 with temp_34_index_ptr_44
              #                    store to temp_35_array_ptr_50 in mem offset legal
    sd      a5,248(sp)
              #                    release a5 with temp_35_array_ptr_50
              #                    store to temp_38_array_ptr_53 in mem offset legal
    sd      a6,232(sp)
              #                    release a6 with temp_38_array_ptr_53
              #                    store to temp_42__1500 in mem offset legal
    sb      a7,211(sp)
              #                    release a7 with temp_42__1500
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_52_array_ele_52_0
              #                    load from temp_52_array_ele_52 in mem


    lw      a0,148(sp)
              #                    occupy a1 with _anonymous_of_t_42_0
              #                    load from t_42 in mem


    lw      a1,280(sp)
              #                    occupy a2 with _anonymous_of_min_f_52_0
              #                    load from min_f_52 in mem


    lw      a2,176(sp)
              #                    arg load ended


    call    dfs
              #                    store to temp_53_ret_of_dfs_52 in mem offset legal
    sw      a0,144(sp)
              #                          d_52 = i32 temp_53_ret_of_dfs_52 
              #                    occupy a0 with temp_53_ret_of_dfs_52
              #                    occupy a1 with d_52
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_dfs_52, tracked: true } |     a1:Freed { symidx: d_52, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_54_cmp_69:i1 
              #                          temp_54_cmp_69 = icmp i32 Sgt d_52, 0_0 
              #                    occupy a1 with d_52
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_54_cmp_69
    slt     a3,a2,a1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_54_cmp_69, label branch_true_70, label branch_false_70 
              #                    occupy a3 with temp_54_cmp_69
              #                    free a3
              #                    occupy a3 with temp_54_cmp_69
    bnez    a3, .branch_true_70
              #                    free a3
    j       .branch_false_70
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_dfs_52, tracked: true } |     a1:Freed { symidx: d_52, tracked: true } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } | 
              #                          label branch_true_70: 
.branch_true_70:
              #                          new_var temp_55_index_ptr_71:ptr->i32 
              #                          temp_55_index_ptr_71 = getelementptr *cap_0:ptr->Array:i32:[Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy a2 with temp_55_index_ptr_71
    li      a2, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with s_42
              #                    load from s_42 in mem


    lw      a5,284(sp)
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
              #                    occupy a7 with *cap_0
              #                       load label cap as ptr to reg
    la      a7, cap
              #                    occupy reg a7 with *cap_0
    add     a2,a2,a7
              #                    free a7
              #                    free a2
              #                          new_var temp_56_array_ptr_71:ptr->i32 
              #                          temp_56_array_ptr_71 = getelementptr *cap_0:ptr->Array:i32:[Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s1 with temp_56_array_ptr_71
    li      s1, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a5 with s_42
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a4,a5
              #                    free a4
              #                    free a5
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *cap_0
              #                       load label cap as ptr to reg
    la      s3, cap
              #                    occupy reg s3 with *cap_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          new_var temp_57_array_ele_71:i32 
              #                          temp_57_array_ele_71 = load temp_56_array_ptr_71:ptr->i32 
              #                    occupy s1 with temp_56_array_ptr_71
              #                    occupy s4 with temp_57_array_ele_71
    lw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          new_var temp_58_arithop_71:i32 
              #                          temp_58_arithop_71 = Sub i32 temp_57_array_ele_71, d_52 
              #                    occupy s4 with temp_57_array_ele_71
              #                    occupy a1 with d_52
              #                    occupy s5 with temp_58_arithop_71
              #                    regtab:    a0:Freed { symidx: temp_53_ret_of_dfs_52, tracked: true } |     a1:Occupied { symidx: d_52, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_55_index_ptr_71, tracked: true } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } |     a4:Freed { symidx: 1_0, tracked: false } |     a5:Freed { symidx: s_42, tracked: true } |     a6:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a7:Freed { symidx: *cap_0, tracked: false } |     s1:Freed { symidx: temp_56_array_ptr_71, tracked: true } |     s2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s3:Freed { symidx: *cap_0, tracked: false } |     s4:Occupied { symidx: temp_57_array_ele_71, tracked: true, occupy_count: 1 } |     s5:Occupied { symidx: temp_58_arithop_71, tracked: true, occupy_count: 1 } | 


    sub     s5,s4,a1
              #                    free s4
              #                    free a1
              #                    free s5
              #                          store temp_58_arithop_71:i32 temp_55_index_ptr_71:ptr->i32 
              #                    occupy a2 with temp_55_index_ptr_71
              #                    occupy s5 with temp_58_arithop_71
    sw      s5,0(a2)
              #                    free s5
              #                    free a2
              #                          mu *cap_0:281 
              #                          *cap_0 = chi *cap_0:281 
              #                          new_var temp_59_array_ptr_71:ptr->i32 
              #                          temp_59_array_ptr_71 = getelementptr *rev_0:ptr->Array:i32:[Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s6 with temp_59_array_ptr_71
    li      s6, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a5 with s_42
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a4,a5
              #                    free a4
              #                    free a5
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s8 with *rev_0
              #                       load label rev as ptr to reg
    la      s8, rev
              #                    occupy reg s8 with *rev_0
    add     s6,s6,s8
              #                    free s8
              #                    free s6
              #                          new_var temp_60_array_ele_71:i32 
              #                          temp_60_array_ele_71 = load temp_59_array_ptr_71:ptr->i32 
              #                    occupy s6 with temp_59_array_ptr_71
              #                    occupy s9 with temp_60_array_ele_71
    lw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          new_var temp_61_array_ptr_71:ptr->i32 
              #                          temp_61_array_ptr_71 = getelementptr *to_0:ptr->Array:i32:[Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s10 with temp_61_array_ptr_71
    li      s10, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a5 with s_42
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a4,a5
              #                    free a4
              #                    free a5
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
              #                    occupy a4 with *to_0
              #                       load label to as ptr to reg
    la      a4, to
              #                    occupy reg a4 with *to_0
    add     s10,s10,a4
              #                    free a4
              #                    free s10
              #                          new_var temp_62_array_ele_71:i32 
              #                          temp_62_array_ele_71 = load temp_61_array_ptr_71:ptr->i32 
              #                    occupy s10 with temp_61_array_ptr_71
              #                    occupy a4 with temp_62_array_ele_71
    lw      a4,0(s10)
              #                    free a4
              #                    free s10
              #                          new_var temp_63_index_ptr_71:ptr->i32 
              #                          temp_63_index_ptr_71 = getelementptr *cap_0:ptr->Array:i32:[Some(10_0)] [Some(temp_62_array_ele_71), Some(temp_60_array_ele_71)] 
              #                    occupy a6 with temp_63_index_ptr_71
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a4 with temp_62_array_ele_71
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a7,a4
              #                    free a7
              #                    free a4
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
              #                    occupy a7 with *cap_0
              #                       load label cap as ptr to reg
    la      a7, cap
              #                    occupy reg a7 with *cap_0
    add     a6,a6,a7
              #                    free a7
              #                    free a6
              #                          new_var temp_64_array_ptr_71:ptr->i32 
              #                          temp_64_array_ptr_71 = getelementptr *rev_0:ptr->Array:i32:[Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy a7 with temp_64_array_ptr_71
    li      a7, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a5 with s_42
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,s2,a5
              #                    free s2
              #                    free a5
    add     a7,a7,s3
              #                    free s3
    slli a7,a7,2
              #                    occupy s2 with *rev_0
              #                       load label rev as ptr to reg
    la      s2, rev
              #                    occupy reg s2 with *rev_0
    add     a7,a7,s2
              #                    free s2
              #                    free a7
              #                          new_var temp_65_array_ele_71:i32 
              #                          temp_65_array_ele_71 = load temp_64_array_ptr_71:ptr->i32 
              #                    occupy a7 with temp_64_array_ptr_71
              #                    occupy s2 with temp_65_array_ele_71
    lw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                          new_var temp_66_array_ptr_71:ptr->i32 
              #                          temp_66_array_ptr_71 = getelementptr *to_0:ptr->Array:i32:[Some(10_0)] [Some(s_42), Some(i_44)] 
              #                    occupy s3 with temp_66_array_ptr_71
    li      s3, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy a5 with s_42
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s7,a5
              #                    free s7
              #                    free a5
    add     s3,s3,s8
              #                    free s8
    slli s3,s3,2
              #                    occupy s7 with *to_0
              #                       load label to as ptr to reg
    la      s7, to
              #                    occupy reg s7 with *to_0
    add     s3,s3,s7
              #                    free s7
              #                    free s3
              #                          new_var temp_67_array_ele_71:i32 
              #                          temp_67_array_ele_71 = load temp_66_array_ptr_71:ptr->i32 
              #                    occupy s3 with temp_66_array_ptr_71
              #                    occupy s7 with temp_67_array_ele_71
    lw      s7,0(s3)
              #                    free s7
              #                    free s3
              #                          new_var temp_68_array_ptr_71:ptr->i32 
              #                          temp_68_array_ptr_71 = getelementptr *cap_0:ptr->Array:i32:[Some(10_0)] [Some(temp_67_array_ele_71), Some(temp_65_array_ele_71)] 
              #                    occupy s8 with temp_68_array_ptr_71
    li      s8, 0
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    occupy s7 with temp_67_array_ele_71
              #                    store to temp_53_ret_of_dfs_52 in mem offset legal
    sw      a0,144(sp)
              #                    release a0 with temp_53_ret_of_dfs_52
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,s11,s7
              #                    free s11
              #                    free s7
    add     s8,s8,a0
              #                    free a0
    slli s8,s8,2
              #                    occupy a0 with *cap_0
              #                       load label cap as ptr to reg
    la      a0, cap
              #                    occupy reg a0 with *cap_0
    add     s8,s8,a0
              #                    free a0
              #                    free s8
              #                          new_var temp_69_array_ele_71:i32 
              #                          temp_69_array_ele_71 = load temp_68_array_ptr_71:ptr->i32 
              #                    occupy s8 with temp_68_array_ptr_71
              #                    occupy a0 with temp_69_array_ele_71
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_70_arithop_71:i32 
              #                          temp_70_arithop_71 = Add i32 temp_69_array_ele_71, d_52 
              #                    occupy a0 with temp_69_array_ele_71
              #                    occupy a1 with d_52
              #                    occupy s11 with temp_70_arithop_71
    add     s11,a0,a1
              #                    free a0
              #                    free a1
              #                    free s11
              #                          store temp_70_arithop_71:i32 temp_63_index_ptr_71:ptr->i32 
              #                    occupy a6 with temp_63_index_ptr_71
              #                    occupy s11 with temp_70_arithop_71
    sw      s11,0(a6)
              #                    free s11
              #                    free a6
              #                          mu *cap_0:320 
              #                          *cap_0 = chi *cap_0:320 
              #                          ret d_52 
              #                    load from ra_dfs_0 in mem
    ld      ra,296(sp)
              #                    load from s0_dfs_0 in mem
    ld      s0,288(sp)
              #                    store to d_52 in mem offset legal
    sw      a1,140(sp)
              #                    release a1 with d_52
              #                    store to temp_69_array_ele_71 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_69_array_ele_71
              #                    occupy a0 with d_52
              #                    load from d_52 in mem


    lw      a0,140(sp)
    addi    sp,sp,304
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_dfs_52, tracked: true } |     a1:Freed { symidx: d_52, tracked: true } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } | 
              #                          label branch_false_70: 
.branch_false_70:
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_dfs_52, tracked: true } |     a1:Freed { symidx: d_52, tracked: true } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_71_arithop_52:i32 
              #                          temp_71_arithop_52 = Add i32 i_44, 1_0 
              #                    occupy a2 with i_44
              #                    load from i_44 in mem


    lw      a2,260(sp)
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_71_arithop_52
    add     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          i_44 = i32 temp_71_arithop_52 
              #                    occupy a5 with temp_71_arithop_52
              #                    occupy a2 with i_44
    mv      a2, a5
              #                    free a5
              #                    free a2
              #                          jump label: while.head_51 
              #                    store to d_52 in mem offset legal
    sw      a1,140(sp)
              #                    release a1 with d_52
              #                    store to temp_53_ret_of_dfs_52 in mem offset legal
    sw      a0,144(sp)
              #                    release a0 with temp_53_ret_of_dfs_52
              #                    store to i_44 in mem offset legal
    sw      a2,260(sp)
              #                    release a2 with i_44
              #                    store to temp_71_arithop_52 in mem offset legal
    sw      a5,20(sp)
              #                    release a5 with temp_71_arithop_52
              #                    store to temp_54_cmp_69 in mem offset legal
    sb      a3,139(sp)
              #                    release a3 with temp_54_cmp_69
              #                    occupy a4 with _anonymous_of_temp_34_index_ptr_44_0
              #                    load from temp_34_index_ptr_44 in mem
    ld      a4,264(sp)
              #                    occupy a1 with _anonymous_of_t_42_0
              #                    load from t_42 in mem


    lw      a1,280(sp)
              #                    occupy a0 with _anonymous_of_s_42_0
              #                    load from s_42 in mem


    lw      a0,284(sp)
              #                    occupy a2 with _anonymous_of_f_42_0
              #                    load from f_42 in mem


    lw      a2,276(sp)
              #                    occupy a3 with _anonymous_of_temp_33_cmp_45_0
              #                    load from temp_33_cmp_45 in mem
    lb      a3,275(sp)
              #                    occupy s1 with _anonymous_of_i_44_0
              #                    load from i_44 in mem


    lw      s1,260(sp)
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: s_42, tracked: true } |     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s3:Freed { symidx: temp_36_array_ele_50, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } | 
              #                          label while.exit_51: 
.while.exit_51:
              #                          ret 0_0 
              #                    load from ra_dfs_0 in mem
    ld      ra,296(sp)
              #                    load from s0_dfs_0 in mem
    ld      s0,288(sp)
              #                    store to s_42 in mem offset legal
    sw      a0,284(sp)
              #                    release a0 with s_42
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,304
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: t_42, tracked: true } |     a2:Freed { symidx: f_42, tracked: true } |     a3:Freed { symidx: temp_33_cmp_45, tracked: true } |     a4:Freed { symidx: temp_34_index_ptr_44, tracked: true } |     a5:Freed { symidx: temp_35_array_ptr_50, tracked: true } |     s1:Freed { symidx: i_44, tracked: true } |     s3:Freed { symidx: temp_36_array_ele_50, tracked: true } |     s4:Freed { symidx: temp_37_cmp_50, tracked: true } | 
              #                    regtab 
              #                          Define max_flow_0 [s_77, t_77] -> max_flow_ret_0 
    .globl max_flow
    .type max_flow,@function
max_flow:
              #                    mem layout:|ra_max_flow:8 at 40|s0_max_flow:8 at 32|s:4 at 28|t:4 at 24|flow:4 at 20|temp_74_:1 at 19|none:3 at 16|temp_75_ret_of_dfs:4 at 12|f:4 at 8|temp_76_cmp:1 at 7|none:3 at 4|temp_77_arithop:4 at 0
    addi    sp,sp,-48
              #                    store to ra_max_flow_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_max_flow_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 flow_79 
              #                          alloc i1 temp_74__2673 
              #                          alloc i32 temp_75_ret_of_dfs_83 
              #                          alloc i32 f_83 
              #                          alloc i1 temp_76_cmp_86 
              #                          alloc i32 temp_77_arithop_83 
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
              #                          new_var temp_74__2673:i1 
              #                          temp_74__2673 = icmp i32 Ne 1_0, 0_0 
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_74__2673
    xor     a5,a3,a4
    snez    a5, a5
              #                    free a3
              #                    free a4
              #                    free a5
              #                          br i1 temp_74__2673, label while.body_82, label while.exit_82 
              #                    occupy a5 with temp_74__2673
              #                    free a5
              #                    occupy a5 with temp_74__2673
    bnez    a5, .while.body_82
              #                    free a5
    j       .while.exit_82
              #                    regtab     a0:Freed { symidx: s_77, tracked: true } |     a1:Freed { symidx: t_77, tracked: true } |     a2:Freed { symidx: flow_79, tracked: true } |     a5:Freed { symidx: temp_74__2673, tracked: true } | 
              #                          label while.body_82: 
.while.body_82:
              #                           Call void my_memset_0(*used_0, 0_0, 10_0) 
              #                    saved register dumping to mem
              #                    store to s_77 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with s_77
              #                    store to t_77 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with t_77
              #                    store to flow_79 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with flow_79
              #                    store to temp_74__2673 in mem offset legal
    sb      a5,19(sp)
              #                    release a5 with temp_74__2673
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
              #                          new_var temp_75_ret_of_dfs_83:i32 
              #                          temp_75_ret_of_dfs_83 =  Call i32 dfs_0(s_77, t_77, 0x70000000_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_s_77_0
              #                    load from s_77 in mem


    lw      a0,28(sp)
              #                    occupy a1 with _anonymous_of_t_77_0
              #                    load from t_77 in mem


    lw      a1,24(sp)
              #                    occupy a2 with _anonymous_of_0x70000000_0_0
    li      a2, 0x70000000
              #                    arg load ended


    call    dfs
              #                    store to temp_75_ret_of_dfs_83 in mem offset legal
    sw      a0,12(sp)
              #                          f_83 = i32 temp_75_ret_of_dfs_83 
              #                    occupy a0 with temp_75_ret_of_dfs_83
              #                    occupy a1 with f_83
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_75_ret_of_dfs_83, tracked: true } |     a1:Freed { symidx: f_83, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_76_cmp_86:i1 
              #                          temp_76_cmp_86 = icmp i32 Eq f_83, 0_0 
              #                    occupy a1 with f_83
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_76_cmp_86
    xor     a3,a1,a2
    seqz    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_76_cmp_86, label branch_true_87, label branch_false_87 
              #                    occupy a3 with temp_76_cmp_86
              #                    free a3
              #                    occupy a3 with temp_76_cmp_86
    bnez    a3, .branch_true_87
              #                    free a3
    j       .branch_false_87
              #                    regtab     a0:Freed { symidx: temp_75_ret_of_dfs_83, tracked: true } |     a1:Freed { symidx: f_83, tracked: true } |     a3:Freed { symidx: temp_76_cmp_86, tracked: true } | 
              #                          label branch_true_87: 
.branch_true_87:
              #                          ret flow_79 
              #                    load from ra_max_flow_0 in mem
    ld      ra,40(sp)
              #                    load from s0_max_flow_0 in mem
    ld      s0,32(sp)
              #                    store to temp_75_ret_of_dfs_83 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_75_ret_of_dfs_83
              #                    occupy a0 with flow_79
              #                    load from flow_79 in mem


    lw      a0,20(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_75_ret_of_dfs_83, tracked: true } |     a1:Freed { symidx: f_83, tracked: true } |     a3:Freed { symidx: temp_76_cmp_86, tracked: true } | 
              #                          label branch_false_87: 
.branch_false_87:
              #                    regtab     a0:Freed { symidx: temp_75_ret_of_dfs_83, tracked: true } |     a1:Freed { symidx: f_83, tracked: true } |     a3:Freed { symidx: temp_76_cmp_86, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_77_arithop_83:i32 
              #                          temp_77_arithop_83 = Add i32 flow_79, f_83 
              #                    occupy a2 with flow_79
              #                    load from flow_79 in mem


    lw      a2,20(sp)
              #                    occupy a1 with f_83
              #                    occupy a4 with temp_77_arithop_83
    add     a4,a2,a1
              #                    free a2
              #                    free a1
              #                    free a4
              #                          flow_79 = i32 temp_77_arithop_83 
              #                    occupy a4 with temp_77_arithop_83
              #                    occupy a2 with flow_79
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_82 
              #                    store to f_83 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with f_83
              #                    store to temp_77_arithop_83 in mem offset legal
    sw      a4,0(sp)
              #                    release a4 with temp_77_arithop_83
              #                    store to temp_76_cmp_86 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_76_cmp_86
              #                    store to temp_75_ret_of_dfs_83 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_75_ret_of_dfs_83
              #                    occupy a1 with _anonymous_of_t_77_0
              #                    load from t_77 in mem


    lw      a1,24(sp)
              #                    occupy a0 with _anonymous_of_s_77_0
              #                    load from s_77 in mem


    lw      a0,28(sp)
    j       .while.head_82
              #                    regtab     a0:Freed { symidx: s_77, tracked: true } |     a1:Freed { symidx: t_77, tracked: true } |     a2:Freed { symidx: flow_79, tracked: true } |     a5:Freed { symidx: temp_74__2673, tracked: true } | 
              #                          label while.exit_82: 
.while.exit_82:
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 64|s0_main:8 at 56|V:4 at 52|E:4 at 48|temp_78_ret_of_getint:4 at 44|temp_79_ret_of_getint:4 at 40|temp_80_cmp:1 at 39|none:3 at 36|u:4 at 32|v:4 at 28|temp_81_ret_of_getint:4 at 24|temp_82_ret_of_getint:4 at 20|temp_83_ret_of_getint:4 at 16|c:4 at 12|temp_84_arithop:4 at 8|temp_85_ret_of_max_flow:4 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_main_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc i32 V_91 
              #                          alloc i32 E_91 
              #                          alloc i32 temp_78_ret_of_getint_91 
              #                          alloc i32 temp_79_ret_of_getint_91 
              #                          alloc i1 temp_80_cmp_96 
              #                          alloc i32 u_98 
              #                          alloc i32 v_98 
              #                          alloc i32 temp_81_ret_of_getint_98 
              #                          alloc i32 temp_82_ret_of_getint_98 
              #                          alloc i32 temp_83_ret_of_getint_98 
              #                          alloc i32 c_98 
              #                          alloc i32 temp_84_arithop_98 
              #                          alloc i32 temp_85_ret_of_max_flow_91 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var V_91:i32 
              #                          new_var E_91:i32 
              #                          new_var temp_78_ret_of_getint_91:i32 
              #                          temp_78_ret_of_getint_91 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_78_ret_of_getint_91 in mem offset legal
    sw      a0,44(sp)
              #                          V_91 = i32 temp_78_ret_of_getint_91 
              #                    occupy a0 with temp_78_ret_of_getint_91
              #                    occupy a1 with V_91
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_79_ret_of_getint_91:i32 
              #                          temp_79_ret_of_getint_91 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_78_ret_of_getint_91 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_78_ret_of_getint_91
              #                    store to V_91 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with V_91
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_79_ret_of_getint_91 in mem offset legal
    sw      a0,40(sp)
              #                          E_91 = i32 temp_79_ret_of_getint_91 
              #                    occupy a0 with temp_79_ret_of_getint_91
              #                    occupy a1 with E_91
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void my_memset_0(*size_0, 0_0, 10_0) 
              #                    saved register dumping to mem
              #                    store to temp_79_ret_of_getint_91 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_79_ret_of_getint_91
              #                    store to E_91 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with E_91
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
              #                          jump label: while.head_97 
    j       .while.head_97
              #                    regtab 
              #                          label while.head_97: 
.while.head_97:
              #                          new_var temp_80_cmp_96:i1 
              #                          temp_80_cmp_96 = icmp i32 Sgt E_91, 0_0 
              #                    occupy a0 with E_91
              #                    load from E_91 in mem


    lw      a0,48(sp)
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_80_cmp_96
    slt     a2,a1,a0
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_80_cmp_96, label while.body_97, label while.exit_97 
              #                    occupy a2 with temp_80_cmp_96
              #                    free a2
              #                    occupy a2 with temp_80_cmp_96
    bnez    a2, .while.body_97
              #                    free a2
    j       .while.exit_97
              #                    regtab     a0:Freed { symidx: E_91, tracked: true } |     a2:Freed { symidx: temp_80_cmp_96, tracked: true } | 
              #                          label while.body_97: 
.while.body_97:
              #                          new_var u_98:i32 
              #                          new_var v_98:i32 
              #                          new_var temp_81_ret_of_getint_98:i32 
              #                          temp_81_ret_of_getint_98 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to E_91 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with E_91
              #                    store to temp_80_cmp_96 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_80_cmp_96
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_81_ret_of_getint_98 in mem offset legal
    sw      a0,24(sp)
              #                          u_98 = i32 temp_81_ret_of_getint_98 
              #                    occupy a0 with temp_81_ret_of_getint_98
              #                    occupy a1 with u_98
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_82_ret_of_getint_98:i32 
              #                          temp_82_ret_of_getint_98 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_81_ret_of_getint_98 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_81_ret_of_getint_98
              #                    store to u_98 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with u_98
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_82_ret_of_getint_98 in mem offset legal
    sw      a0,20(sp)
              #                          v_98 = i32 temp_82_ret_of_getint_98 
              #                    occupy a0 with temp_82_ret_of_getint_98
              #                    occupy a1 with v_98
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_83_ret_of_getint_98:i32 
              #                          temp_83_ret_of_getint_98 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_82_ret_of_getint_98 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_82_ret_of_getint_98
              #                    store to v_98 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with v_98
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_83_ret_of_getint_98 in mem offset legal
    sw      a0,16(sp)
              #                          c_98 = i32 temp_83_ret_of_getint_98 
              #                    occupy a0 with temp_83_ret_of_getint_98
              #                    occupy a1 with c_98
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void add_node_0(u_98, v_98, c_98) 
              #                    saved register dumping to mem
              #                    store to temp_83_ret_of_getint_98 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_83_ret_of_getint_98
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
              #                          new_var temp_84_arithop_98:i32 
              #                          temp_84_arithop_98 = Sub i32 E_91, 1_0 
              #                    occupy a0 with E_91
              #                    load from E_91 in mem


    lw      a0,48(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_84_arithop_98
              #                    regtab:    a0:Occupied { symidx: E_91, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_84_arithop_98, tracked: true, occupy_count: 1 } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          E_91 = i32 temp_84_arithop_98 
              #                    occupy a2 with temp_84_arithop_98
              #                    occupy a0 with E_91
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_97 
              #                    store to temp_84_arithop_98 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_84_arithop_98
              #                    store to E_91 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with E_91
    j       .while.head_97
              #                    regtab     a0:Freed { symidx: E_91, tracked: true } |     a2:Freed { symidx: temp_80_cmp_96, tracked: true } | 
              #                          label while.exit_97: 
.while.exit_97:
              #                          new_var temp_85_ret_of_max_flow_91:i32 
              #                          temp_85_ret_of_max_flow_91 =  Call i32 max_flow_0(1_0, V_91) 
              #                    saved register dumping to mem
              #                    store to E_91 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with E_91
              #                    store to temp_80_cmp_96 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_80_cmp_96
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_V_91_0
              #                    load from V_91 in mem


    lw      a1,52(sp)
              #                    arg load ended


    call    max_flow
              #                    store to temp_85_ret_of_max_flow_91 in mem offset legal
    sw      a0,4(sp)
              #                           Call void putint_0(temp_85_ret_of_max_flow_91) 
              #                    saved register dumping to mem
              #                    store to temp_85_ret_of_max_flow_91 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_85_ret_of_max_flow_91
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_85_ret_of_max_flow_91_0
              #                    load from temp_85_ret_of_max_flow_91 in mem


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
    ld      ra,64(sp)
              #                    load from s0_main_0 in mem
    ld      s0,56(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,72
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
