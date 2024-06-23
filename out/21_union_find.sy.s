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
              #                          Define find_0 [root_18] -> find_ret_0 
    .globl find
    .type find,@function
find:
              #                    mem layout:|ra_find:8 at 12136|s0_find:8 at 12128|root:4 at 12124|temp_0_ptr2globl:4020 at 8104|temp_1_array_ptr:8 at 8096|temp_2_array_ele:4 at 8092|temp_3_cmp:1 at 8091|none:3 at 8088|temp_4_index_ptr:8 at 8080|temp_5_ptr2globl:4020 at 4060|none:4 at 4056|temp_6_array_ptr:8 at 4048|temp_7_array_ele:4 at 4044|temp_8_ret_of_find:4 at 4040|temp_9_ptr2globl:4020 at 20|none:4 at 16|temp_10_array_ptr:8 at 8|temp_11_array_ele:4 at 4|none:4 at 0
              #                    occupy a1 with -12144_0
    li      a1, -12144
    li      a1, -12144
    add     sp,a1,sp
              #                    free a1
              #                    store to ra_find_0 in mem offset_illegal
              #                    occupy a2 with 12136_0
    li      a2, 12136
    add     a2,sp,a2
    sd      ra,0(a2)
              #                    free a2
              #                    store to s0_find_0 in mem offset_illegal
              #                    occupy a3 with 12128_0
    li      a3, 12128
    add     a3,sp,a3
    sd      s0,0(a3)
              #                    free a3
              #                    occupy a4 with 12144_0
    li      a4, 12144
    li      a4, 12144
    add     s0,a4,sp
              #                    free a4
              #                          alloc Array:i32:[Some(1005_0)] temp_0_ptr2globl_21 
              #                          alloc ptr->i32 temp_1_array_ptr_21 
              #                          alloc i32 temp_2_array_ele_21 
              #                          alloc i1 temp_3_cmp_21 
              #                          alloc ptr->i32 temp_4_index_ptr_24 
              #                          alloc Array:i32:[Some(1005_0)] temp_5_ptr2globl_24 
              #                          alloc ptr->i32 temp_6_array_ptr_24 
              #                          alloc i32 temp_7_array_ele_24 
              #                          alloc i32 temp_8_ret_of_find_24 
              #                          alloc Array:i32:[Some(1005_0)] temp_9_ptr2globl_24 
              #                          alloc ptr->i32 temp_10_array_ptr_24 
              #                          alloc i32 temp_11_array_ele_24 
              #                    regtab     a0:Freed { symidx: root_18, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_0_ptr2globl_21:Array:i32:[Some(1005_0)] 
              #                          temp_0_ptr2globl_21 = load *parent_0:ptr->i32 
              #                    occupy a1 with *parent_0
              #                       load label parent as ptr to reg
    la      a1, parent
              #                    occupy reg a1 with *parent_0
              #                    occupy a2 with temp_0_ptr2globl_21
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_1_array_ptr_21:ptr->i32 
              #                          temp_1_array_ptr_21 = getelementptr temp_0_ptr2globl_21:Array:i32:[Some(1005_0)] [Some(root_18)] 
              #                    occupy a3 with temp_1_array_ptr_21
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with root_18
              #                    occupy a5 with _anonymous_of_temp_0_ptr2globl_21_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy a6 with 8104_0
    li      a6, 8104
    li      a6, 8104
    add     a3,a6,a3
              #                    free a6
              #                    free a3
              #                          new_var temp_2_array_ele_21:i32 
              #                          temp_2_array_ele_21 = load temp_1_array_ptr_21:ptr->i32 
              #                    occupy a3 with temp_1_array_ptr_21
              #                    occupy a7 with temp_2_array_ele_21
    lw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                          new_var temp_3_cmp_21:i1 
              #                          temp_3_cmp_21 = icmp i32 Eq temp_2_array_ele_21, root_18 
              #                    occupy a7 with temp_2_array_ele_21
              #                    occupy a0 with root_18
              #                    occupy s1 with temp_3_cmp_21
    xor     s1,a7,a0
    seqz    s1, s1
              #                    free a7
              #                    free a0
              #                    free s1
              #                          br i1 temp_3_cmp_21, label branch_true_22, label branch_false_22 
              #                    occupy s1 with temp_3_cmp_21
              #                    free s1
              #                    occupy s1 with temp_3_cmp_21
    bnez    s1, .branch_true_22
              #                    free s1
    j       .branch_false_22
              #                    regtab     a0:Freed { symidx: root_18, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_21, tracked: true } |     a3:Freed { symidx: temp_1_array_ptr_21, tracked: true } |     a7:Freed { symidx: temp_2_array_ele_21, tracked: true } |     s1:Freed { symidx: temp_3_cmp_21, tracked: true } | 
              #                          label branch_true_22: 
.branch_true_22:
              #                          ret root_18 
              #                    load from ra_find_0 in mem
              #                    occupy a1 with ra_find_0
    li      a1, 12136
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_find_0 in mem
              #                    occupy a4 with s0_find_0
    li      a4, 12128
    add     a4,sp,a4
    ld      s0,0(a4)
              #                    free a4
              #                    store to root_18 in mem offset_illegal
              #                    occupy a0 with 12124_0
    li      a0, 12124
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_18
              #                    occupy a0 with root_18
              #                    load from root_18 in mem

              #                    occupy a5 with root_18
    li      a5, 12124
    add     a5,sp,a5
    lw      a0,0(a5)
              #                    free a5
              #                    occupy a6 with 12144_0
    li      a6, 12144
    li      a6, 12144
    add     sp,a6,sp
              #                    free a6
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_18, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_21, tracked: true } |     a3:Freed { symidx: temp_1_array_ptr_21, tracked: true } |     a7:Freed { symidx: temp_2_array_ele_21, tracked: true } |     s1:Freed { symidx: temp_3_cmp_21, tracked: true } | 
              #                          label branch_false_22: 
.branch_false_22:
              #                          new_var temp_4_index_ptr_24:ptr->i32 
              #                          temp_4_index_ptr_24 = getelementptr parent_0:Array:i32:[Some(1005_0)] [Some(root_18)] 
              #                    occupy a1 with temp_4_index_ptr_24
    li      a1, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with root_18
              #                    occupy a5 with _anonymous_of_parent_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
              #                    occupy a6 with _anonymous_of_parent_0_0
    la      a6, parent
    add     a1,a1,a6
              #                    free a6
              #                    free a1
              #                          new_var temp_5_ptr2globl_24:Array:i32:[Some(1005_0)] 
              #                          temp_5_ptr2globl_24 = load *parent_0:ptr->i32 
              #                    occupy s2 with *parent_0
              #                       load label parent as ptr to reg
    la      s2, parent
              #                    occupy reg s2 with *parent_0
              #                    occupy s3 with temp_5_ptr2globl_24
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_6_array_ptr_24:ptr->i32 
              #                          temp_6_array_ptr_24 = getelementptr temp_5_ptr2globl_24:Array:i32:[Some(1005_0)] [Some(root_18)] 
              #                    occupy s4 with temp_6_array_ptr_24
    li      s4, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a0 with root_18
              #                    occupy s5 with _anonymous_of_temp_5_ptr2globl_24_0
    mul     s5,a4,a0
              #                    free a4
              #                    free a0
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
    add     s4,s4,sp
              #                    occupy s6 with 4060_0
    li      s6, 4060
    li      s6, 4060
    add     s4,s6,s4
              #                    free s6
              #                    free s4
              #                          new_var temp_7_array_ele_24:i32 
              #                          temp_7_array_ele_24 = load temp_6_array_ptr_24:ptr->i32 
              #                    occupy s4 with temp_6_array_ptr_24
              #                    occupy s7 with temp_7_array_ele_24
    lw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          new_var temp_8_ret_of_find_24:i32 
              #                          temp_8_ret_of_find_24 =  Call i32 find_0(temp_7_array_ele_24) 
              #                    saved register dumping to mem
              #                    store to temp_3_cmp_21 in mem offset_illegal
              #                    occupy s1 with 8091_0
    li      s1, 8091
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_3_cmp_21
              #                    store to temp_5_ptr2globl_24 in mem offset_illegal
              #                    found literal reg Some(s6) already exist with 4060_0
              #                    occupy s6 with 4060_0
    add     s6,sp,s6
    sw      s3,0(s6)
              #                    free s6
              #                    release s3 with temp_5_ptr2globl_24
              #                    store to temp_6_array_ptr_24 in mem offset_illegal
              #                    occupy s1 with 4048_0
    li      s1, 4048
    add     s1,sp,s1
    sd      s4,0(s1)
              #                    free s1
              #                    release s4 with temp_6_array_ptr_24
              #                    store to temp_7_array_ele_24 in mem offset_illegal
              #                    occupy s2 with 4044_0
    li      s2, 4044
    add     s2,sp,s2
    sw      s7,0(s2)
              #                    free s2
              #                    release s7 with temp_7_array_ele_24
              #                    store to root_18 in mem offset_illegal
              #                    occupy a0 with 12124_0
    li      a0, 12124
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_18
              #                    store to temp_4_index_ptr_24 in mem offset_illegal
              #                    occupy a0 with 8080_0
    li      a0, 8080
    add     a0,sp,a0
    sd      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_4_index_ptr_24
              #                    store to temp_0_ptr2globl_21 in mem offset_illegal
              #                    occupy a1 with 8104_0
    li      a1, 8104
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_0_ptr2globl_21
              #                    store to temp_1_array_ptr_21 in mem offset_illegal
              #                    occupy a2 with 8096_0
    li      a2, 8096
    add     a2,sp,a2
    sd      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_1_array_ptr_21
              #                    store to temp_2_array_ele_21 in mem offset_illegal
              #                    occupy a3 with 8092_0
    li      a3, 8092
    add     a3,sp,a3
    sw      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_2_array_ele_21
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_7_array_ele_24_0
              #                    load from temp_7_array_ele_24 in mem

              #                    occupy a4 with temp_7_array_ele_24
    li      a4, 4044
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    arg load ended


    call    find
              #                    store to temp_8_ret_of_find_24 in mem offset_illegal
              #                    occupy a0 with 4040_0
    li      a0, 4040
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_8_ret_of_find_24:i32 temp_4_index_ptr_24:ptr->i32 
              #                    occupy a5 with temp_4_index_ptr_24
              #                    load from temp_4_index_ptr_24 in mem
              #                    occupy a5 with temp_4_index_ptr_24
    add     a5,sp,a5
    ld      a5,0(a5)
              #                    free a5
              #                    occupy a0 with temp_8_ret_of_find_24
    sw      a0,0(a5)
              #                    free a0
              #                    free a5
              #                          mu parent_0:54 
              #                          parent_0 = chi parent_0:54 
              #                          new_var temp_9_ptr2globl_24:Array:i32:[Some(1005_0)] 
              #                          temp_9_ptr2globl_24 = load *parent_0:ptr->i32 
              #                    occupy a6 with *parent_0
              #                       load label parent as ptr to reg
    la      a6, parent
              #                    occupy reg a6 with *parent_0
              #                    occupy a7 with temp_9_ptr2globl_24
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_10_array_ptr_24:ptr->i32 
              #                          temp_10_array_ptr_24 = getelementptr temp_9_ptr2globl_24:Array:i32:[Some(1005_0)] [Some(root_18)] 
              #                    occupy s3 with temp_10_array_ptr_24
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with root_18
              #                    load from root_18 in mem

              #                    occupy s5 with root_18
    add     s5,sp,s5
    lw      s5,0(s5)
              #                    free s5
              #                    occupy s6 with _anonymous_of_temp_9_ptr2globl_24_0
    mul     s6,s4,s5
              #                    free s4
              #                    free s5
    add     s3,s3,s6
              #                    free s6
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,20
              #                    free s3
              #                          new_var temp_11_array_ele_24:i32 
              #                          temp_11_array_ele_24 = load temp_10_array_ptr_24:ptr->i32 
              #                    occupy s3 with temp_10_array_ptr_24
              #                    occupy s7 with temp_11_array_ele_24
    lw      s7,0(s3)
              #                    free s7
              #                    free s3
              #                          ret temp_11_array_ele_24 
              #                    load from ra_find_0 in mem
              #                    occupy s8 with ra_find_0
    li      s8, 12136
    add     s8,sp,s8
    ld      ra,0(s8)
              #                    free s8
              #                    load from s0_find_0 in mem
              #                    occupy s9 with s0_find_0
    li      s9, 12128
    add     s9,sp,s9
    ld      s0,0(s9)
              #                    free s9
              #                    store to temp_11_array_ele_24 in mem offset legal
    sw      s7,4(sp)
              #                    release s7 with temp_11_array_ele_24
              #                    store to temp_8_ret_of_find_24 in mem offset_illegal
              #                    occupy a0 with 4040_0
    li      a0, 4040
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_8_ret_of_find_24
              #                    occupy a0 with temp_11_array_ele_24
              #                    load from temp_11_array_ele_24 in mem


    lw      a0,4(sp)
              #                    occupy s7 with 12144_0
    li      s7, 12144
    li      s7, 12144
    add     sp,s7,sp
              #                    free s7
              #                    free a0
    ret
              #                    regtab     a4:Freed { symidx: temp_7_array_ele_24, tracked: true } |     a5:Freed { symidx: temp_4_index_ptr_24, tracked: true } |     a7:Freed { symidx: temp_9_ptr2globl_24, tracked: true } |     s3:Freed { symidx: temp_10_array_ptr_24, tracked: true } |     s5:Freed { symidx: root_18, tracked: true } |     s8:Freed { symidx: ra_find_0, tracked: true } |     s9:Freed { symidx: s0_find_0, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                    regtab     a4:Freed { symidx: temp_7_array_ele_24, tracked: true } |     a5:Freed { symidx: temp_4_index_ptr_24, tracked: true } |     a7:Freed { symidx: temp_9_ptr2globl_24, tracked: true } |     s3:Freed { symidx: temp_10_array_ptr_24, tracked: true } |     s5:Freed { symidx: root_18, tracked: true } |     s8:Freed { symidx: ra_find_0, tracked: true } |     s9:Freed { symidx: s0_find_0, tracked: true } | 
              #                    regtab 
              #                          Define merge_0 [p_27, q_27] -> merge_ret_0 
    .globl merge
    .type merge,@function
merge:
              #                    mem layout:|ra_merge:8 at 48|s0_merge:8 at 40|p:4 at 36|q:4 at 32|root_p:4 at 28|root_q:4 at 24|temp_12_ret_of_find:4 at 20|temp_13_ret_of_find:4 at 16|temp_14_cmp:1 at 15|none:7 at 8|temp_15_index_ptr:8 at 0
    addi    sp,sp,-56
              #                    store to ra_merge_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_merge_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc i32 root_p_29 
              #                          alloc i32 root_q_29 
              #                          alloc i32 temp_12_ret_of_find_29 
              #                          alloc i32 temp_13_ret_of_find_29 
              #                          alloc i1 temp_14_cmp_33 
              #                          alloc ptr->i32 temp_15_index_ptr_35 
              #                    regtab     a0:Freed { symidx: p_27, tracked: true } |     a1:Freed { symidx: q_27, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var root_p_29:i32 
              #                          new_var root_q_29:i32 
              #                          new_var temp_12_ret_of_find_29:i32 
              #                          temp_12_ret_of_find_29 =  Call i32 find_0(p_27) 
              #                    saved register dumping to mem
              #                    store to p_27 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with p_27
              #                    store to q_27 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with q_27
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_p_27_0
              #                    load from p_27 in mem


    lw      a0,36(sp)
              #                    arg load ended


    call    find
              #                    store to temp_12_ret_of_find_29 in mem offset legal
    sw      a0,20(sp)
              #                          root_p_29 = i32 temp_12_ret_of_find_29 
              #                    occupy a0 with temp_12_ret_of_find_29
              #                    occupy a1 with root_p_29
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_13_ret_of_find_29:i32 
              #                          temp_13_ret_of_find_29 =  Call i32 find_0(q_27) 
              #                    saved register dumping to mem
              #                    store to temp_12_ret_of_find_29 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_12_ret_of_find_29
              #                    store to root_p_29 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with root_p_29
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_q_27_0
              #                    load from q_27 in mem


    lw      a0,32(sp)
              #                    arg load ended


    call    find
              #                    store to temp_13_ret_of_find_29 in mem offset legal
    sw      a0,16(sp)
              #                          root_q_29 = i32 temp_13_ret_of_find_29 
              #                    occupy a0 with temp_13_ret_of_find_29
              #                    occupy a1 with root_q_29
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_13_ret_of_find_29, tracked: true } |     a1:Freed { symidx: root_q_29, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_14_cmp_33:i1 
              #                          temp_14_cmp_33 = icmp i32 Ne root_p_29, root_q_29 
              #                    occupy a2 with root_p_29
              #                    load from root_p_29 in mem


    lw      a2,28(sp)
              #                    occupy a1 with root_q_29
              #                    occupy a3 with temp_14_cmp_33
    xor     a3,a2,a1
    snez    a3, a3
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_14_cmp_33, label branch_true_34, label branch_false_34 
              #                    occupy a3 with temp_14_cmp_33
              #                    free a3
              #                    occupy a3 with temp_14_cmp_33
    bnez    a3, .branch_true_34
              #                    free a3
    j       .branch_false_34
              #                    regtab     a0:Freed { symidx: temp_13_ret_of_find_29, tracked: true } |     a1:Freed { symidx: root_q_29, tracked: true } |     a2:Freed { symidx: root_p_29, tracked: true } |     a3:Freed { symidx: temp_14_cmp_33, tracked: true } | 
              #                          label branch_true_34: 
.branch_true_34:
              #                          new_var temp_15_index_ptr_35:ptr->i32 
              #                          temp_15_index_ptr_35 = getelementptr parent_0:Array:i32:[Some(1005_0)] [Some(root_q_29)] 
              #                    occupy a4 with temp_15_index_ptr_35
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with root_q_29
              #                    occupy a6 with _anonymous_of_parent_0_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with _anonymous_of_parent_0_0
    la      a7, parent
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store root_p_29:i32 temp_15_index_ptr_35:ptr->i32 
              #                    occupy a4 with temp_15_index_ptr_35
              #                    occupy a2 with root_p_29
    sw      a2,0(a4)
              #                    free a2
              #                    free a4
              #                          mu parent_0:89 
              #                          parent_0 = chi parent_0:89 
              #                          jump label: branch_false_34 
              #                    store to temp_15_index_ptr_35 in mem offset legal
    sd      a4,0(sp)
              #                    release a4 with temp_15_index_ptr_35
    j       .branch_false_34
              #                    regtab     a0:Freed { symidx: temp_13_ret_of_find_29, tracked: true } |     a1:Freed { symidx: root_q_29, tracked: true } |     a2:Freed { symidx: root_p_29, tracked: true } |     a3:Freed { symidx: temp_14_cmp_33, tracked: true } | 
              #                          label branch_false_34: 
.branch_false_34:
              #                    regtab     a0:Freed { symidx: temp_13_ret_of_find_29, tracked: true } |     a1:Freed { symidx: root_q_29, tracked: true } |     a2:Freed { symidx: root_p_29, tracked: true } |     a3:Freed { symidx: temp_14_cmp_33, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          ret 
              #                    load from ra_merge_0 in mem
    ld      ra,48(sp)
              #                    load from s0_merge_0 in mem
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
              #                    regtab     a0:Freed { symidx: temp_13_ret_of_find_29, tracked: true } |     a1:Freed { symidx: root_q_29, tracked: true } |     a2:Freed { symidx: root_p_29, tracked: true } |     a3:Freed { symidx: temp_14_cmp_33, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 4120|s0_main:8 at 4112|temp_16_ret_of_getint:4 at 4108|n:4 at 4104|temp_17_ret_of_getint:4 at 4100|m:4 at 4096|i:4 at 4092|p:4 at 4088|q:4 at 4084|temp_18_cmp:1 at 4083|none:3 at 4080|temp_19_index_ptr:8 at 4072|temp_20_arithop:4 at 4068|temp_21_cmp:1 at 4067|none:3 at 4064|temp_22_ret_of_getint:4 at 4060|temp_23_ret_of_getint:4 at 4056|temp_24_arithop:4 at 4052|clusters:4 at 4048|temp_25_cmp:1 at 4047|none:3 at 4044|temp_26_ptr2globl:4020 at 24|temp_27_array_ptr:8 at 16|temp_28_array_ele:4 at 12|temp_29_cmp:1 at 11|none:3 at 8|temp_30_arithop:4 at 4|temp_31_arithop:4 at 0
              #                    occupy a0 with -4128_0
    li      a0, -4128
    li      a0, -4128
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 4120_0
    li      a1, 4120
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 4112_0
    li      a2, 4112
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 4128_0
    li      a3, 4128
    li      a3, 4128
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 temp_16_ret_of_getint_39 
              #                          alloc i32 n_39 
              #                          alloc i32 temp_17_ret_of_getint_39 
              #                          alloc i32 m_39 
              #                          alloc i32 i_39 
              #                          alloc i32 p_39 
              #                          alloc i32 q_39 
              #                          alloc i1 temp_18_cmp_43 
              #                          alloc ptr->i32 temp_19_index_ptr_45 
              #                          alloc i32 temp_20_arithop_45 
              #                          alloc i1 temp_21_cmp_49 
              #                          alloc i32 temp_22_ret_of_getint_51 
              #                          alloc i32 temp_23_ret_of_getint_51 
              #                          alloc i32 temp_24_arithop_51 
              #                          alloc i32 clusters_39 
              #                          alloc i1 temp_25_cmp_58 
              #                          alloc Array:i32:[Some(1005_0)] temp_26_ptr2globl_61 
              #                          alloc ptr->i32 temp_27_array_ptr_61 
              #                          alloc i32 temp_28_array_ele_61 
              #                          alloc i1 temp_29_cmp_61 
              #                          alloc i32 temp_30_arithop_61 
              #                          alloc i32 temp_31_arithop_60 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_16_ret_of_getint_39:i32 
              #                          temp_16_ret_of_getint_39 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_16_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 4108_0
    li      a0, 4108
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          n_39 = i32 temp_16_ret_of_getint_39 
              #                    occupy a0 with temp_16_ret_of_getint_39
              #                    occupy a1 with n_39
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_17_ret_of_getint_39:i32 
              #                          temp_17_ret_of_getint_39 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_16_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 4108_0
    li      a0, 4108
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_16_ret_of_getint_39
              #                    store to n_39 in mem offset_illegal
              #                    occupy a0 with 4104_0
    li      a0, 4104
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with n_39
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_17_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 4100_0
    li      a0, 4100
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          m_39 = i32 temp_17_ret_of_getint_39 
              #                    occupy a0 with temp_17_ret_of_getint_39
              #                    occupy a1 with m_39
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var i_39:i32 
              #                          new_var p_39:i32 
              #                          new_var q_39:i32 
              #                          i_39 = i32 0_0 
              #                    occupy a2 with i_39
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_44 
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } | 
              #                          label while.head_44: 
.while.head_44:
              #                          new_var temp_18_cmp_43:i1 
              #                          temp_18_cmp_43 = icmp i32 Slt i_39, n_39 
              #                    occupy a2 with i_39
              #                    occupy a3 with n_39
              #                    load from n_39 in mem

              #                    occupy a3 with n_39
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    occupy a4 with temp_18_cmp_43
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_18_cmp_43, label while.body_44, label while.exit_44 
              #                    occupy a4 with temp_18_cmp_43
              #                    free a4
              #                    occupy a4 with temp_18_cmp_43
    bnez    a4, .while.body_44
              #                    free a4
    j       .while.exit_44
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_18_cmp_43, tracked: true } | 
              #                          label while.body_44: 
.while.body_44:
              #                          new_var temp_19_index_ptr_45:ptr->i32 
              #                          temp_19_index_ptr_45 = getelementptr parent_0:Array:i32:[Some(1005_0)] [Some(i_39)] 
              #                    occupy a5 with temp_19_index_ptr_45
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a2 with i_39
              #                    occupy a7 with _anonymous_of_parent_0_0
    mul     a7,a6,a2
              #                    free a6
              #                    free a2
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with _anonymous_of_parent_0_0
    la      s1, parent
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          store i_39:i32 temp_19_index_ptr_45:ptr->i32 
              #                    occupy a5 with temp_19_index_ptr_45
              #                    occupy a2 with i_39
    sw      a2,0(a5)
              #                    free a2
              #                    free a5
              #                          mu parent_0:122 
              #                          parent_0 = chi parent_0:122 
              #                          new_var temp_20_arithop_45:i32 
              #                          temp_20_arithop_45 = Add i32 i_39, 1_0 
              #                    occupy a2 with i_39
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s2 with temp_20_arithop_45
    add     s2,a2,a6
              #                    free a2
              #                    free a6
              #                    free s2
              #                          i_39 = i32 temp_20_arithop_45 
              #                    occupy s2 with temp_20_arithop_45
              #                    occupy a2 with i_39
    mv      a2, s2
              #                    free s2
              #                    free a2
              #                          jump label: while.head_44 
              #                    store to temp_18_cmp_43 in mem offset_illegal
              #                    occupy a4 with 4083_0
    li      a4, 4083
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_18_cmp_43
              #                    store to n_39 in mem offset_illegal
              #                    occupy a3 with 4104_0
    li      a3, 4104
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with n_39
              #                    store to temp_19_index_ptr_45 in mem offset_illegal
              #                    occupy a3 with 4072_0
    li      a3, 4072
    add     a3,sp,a3
    sd      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_19_index_ptr_45
              #                    store to temp_20_arithop_45 in mem offset_illegal
              #                    occupy a4 with 4068_0
    li      a4, 4068
    add     a4,sp,a4
    sw      s2,0(a4)
              #                    free a4
              #                    release s2 with temp_20_arithop_45
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_18_cmp_43, tracked: true } | 
              #                          label while.exit_44: 
.while.exit_44:
              #                          i_39 = i32 0_0 
              #                    occupy a2 with i_39
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_50 
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_18_cmp_43, tracked: true } | 
              #                          label while.head_50: 
.while.head_50:
              #                          new_var temp_21_cmp_49:i1 
              #                          temp_21_cmp_49 = icmp i32 Slt i_39, m_39 
              #                    occupy a2 with i_39
              #                    occupy a1 with m_39
              #                    occupy a5 with temp_21_cmp_49
    slt     a5,a2,a1
              #                    free a2
              #                    free a1
              #                    free a5
              #                          br i1 temp_21_cmp_49, label while.body_50, label while.exit_50 
              #                    occupy a5 with temp_21_cmp_49
              #                    free a5
              #                    occupy a5 with temp_21_cmp_49
    bnez    a5, .while.body_50
              #                    free a5
    j       .while.exit_50
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_18_cmp_43, tracked: true } |     a5:Freed { symidx: temp_21_cmp_49, tracked: true } | 
              #                          label while.body_50: 
.while.body_50:
              #                          new_var temp_22_ret_of_getint_51:i32 
              #                          temp_22_ret_of_getint_51 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_17_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 4100_0
    li      a0, 4100
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_17_ret_of_getint_39
              #                    store to m_39 in mem offset_illegal
              #                    occupy a0 with 4096_0
    li      a0, 4096
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with m_39
              #                    store to i_39 in mem offset_illegal
              #                    occupy a1 with 4092_0
    li      a1, 4092
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with i_39
              #                    store to n_39 in mem offset_illegal
              #                    occupy a2 with 4104_0
    li      a2, 4104
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with n_39
              #                    store to temp_18_cmp_43 in mem offset_illegal
              #                    occupy a3 with 4083_0
    li      a3, 4083
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_18_cmp_43
              #                    store to temp_21_cmp_49 in mem offset_illegal
              #                    occupy a4 with 4067_0
    li      a4, 4067
    add     a4,sp,a4
    sb      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_21_cmp_49
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_22_ret_of_getint_51 in mem offset_illegal
              #                    occupy a0 with 4060_0
    li      a0, 4060
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          p_39 = i32 temp_22_ret_of_getint_51 
              #                    occupy a0 with temp_22_ret_of_getint_51
              #                    occupy a5 with p_39
    mv      a5, a0
              #                    free a0
              #                    free a5
              #                          new_var temp_23_ret_of_getint_51:i32 
              #                          temp_23_ret_of_getint_51 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_22_ret_of_getint_51 in mem offset_illegal
              #                    occupy a0 with 4060_0
    li      a0, 4060
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_22_ret_of_getint_51
              #                    store to p_39 in mem offset_illegal
              #                    occupy a0 with 4088_0
    li      a0, 4088
    add     a0,sp,a0
    sw      a5,0(a0)
              #                    free a0
              #                    release a5 with p_39
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_23_ret_of_getint_51 in mem offset_illegal
              #                    occupy a0 with 4056_0
    li      a0, 4056
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          q_39 = i32 temp_23_ret_of_getint_51 
              #                    occupy a0 with temp_23_ret_of_getint_51
              #                    occupy a1 with q_39
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void merge_0(p_39, q_39) 
              #                    saved register dumping to mem
              #                    store to temp_23_ret_of_getint_51 in mem offset_illegal
              #                    occupy a0 with 4056_0
    li      a0, 4056
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_23_ret_of_getint_51
              #                    store to q_39 in mem offset_illegal
              #                    occupy a0 with 4084_0
    li      a0, 4084
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with q_39
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_p_39_0
              #                    load from p_39 in mem

              #                    occupy a1 with p_39
    li      a1, 4088
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    store to p_39 in mem offset_illegal
              #                    occupy a1 with 4088_0
    li      a1, 4088
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with p_39
              #                    occupy a1 with _anonymous_of_q_39_0
              #                    load from q_39 in mem

              #                    occupy a2 with q_39
    li      a2, 4084
    add     a2,sp,a2
    lw      a1,0(a2)
              #                    free a2
              #                    arg load ended


    call    merge
              #                          new_var temp_24_arithop_51:i32 
              #                          temp_24_arithop_51 = Add i32 i_39, 1_0 
              #                    occupy a0 with i_39
              #                    load from i_39 in mem

              #                    occupy a0 with i_39
    add     a0,sp,a0
    lw      a0,0(a0)
              #                    free a0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_24_arithop_51
    add     a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                          i_39 = i32 temp_24_arithop_51 
              #                    occupy a3 with temp_24_arithop_51
              #                    occupy a0 with i_39
    mv      a0, a3
              #                    free a3
              #                    free a0
              #                          jump label: while.head_50 
              #                    store to q_39 in mem offset_illegal
              #                    occupy a2 with 4084_0
    li      a2, 4084
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with q_39
              #                    store to i_39 in mem offset_illegal
              #                    occupy a0 with 4092_0
    li      a0, 4092
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_39
              #                    store to temp_24_arithop_51 in mem offset_illegal
              #                    occupy a0 with 4052_0
    li      a0, 4052
    add     a0,sp,a0
    sw      a3,0(a0)
              #                    free a0
              #                    release a3 with temp_24_arithop_51
              #                    occupy a2 with _anonymous_of_i_39_0
              #                    load from i_39 in mem

              #                    occupy a1 with i_39
    li      a1, 4092
    add     a1,sp,a1
    lw      a2,0(a1)
              #                    free a1
              #                    occupy a4 with _anonymous_of_temp_18_cmp_43_0
              #                    load from temp_18_cmp_43 in mem
              #                    occupy a3 with temp_18_cmp_43
    li      a3, 4083
    add     a3,sp,a3
    lb      a4,0(a3)
              #                    free a3
              #                    store to i_39 in mem offset_illegal
              #                    occupy a1 with 4092_0
    li      a1, 4092
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with i_39
              #                    occupy a1 with _anonymous_of_m_39_0
              #                    load from m_39 in mem

              #                    occupy a5 with m_39
    li      a5, 4096
    add     a5,sp,a5
    lw      a1,0(a5)
              #                    free a5
              #                    occupy a0 with _anonymous_of_temp_17_ret_of_getint_39_0
              #                    load from temp_17_ret_of_getint_39 in mem

              #                    occupy a6 with temp_17_ret_of_getint_39
    li      a6, 4100
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    store to temp_18_cmp_43 in mem offset_illegal
              #                    occupy a3 with 4083_0
    li      a3, 4083
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_18_cmp_43
              #                    occupy a3 with _anonymous_of_n_39_0
              #                    load from n_39 in mem

              #                    occupy a7 with n_39
    li      a7, 4104
    add     a7,sp,a7
    lw      a3,0(a7)
              #                    free a7
              #                    store to n_39 in mem offset_illegal
              #                    occupy a7 with 4104_0
    li      a7, 4104
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with n_39
              #                    store to m_39 in mem offset_illegal
              #                    occupy a5 with 4096_0
    li      a5, 4096
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with m_39
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_18_cmp_43, tracked: true } |     a5:Freed { symidx: temp_21_cmp_49, tracked: true } | 
              #                          label while.exit_50: 
.while.exit_50:
              #                          clusters_39 = i32 0_0 
              #                    occupy a6 with clusters_39
    li      a6, 0
              #                    free a6
              #                          i_39 = i32 0_0 
              #                    occupy a2 with i_39
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_59 
    j       .while.head_59
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_18_cmp_43, tracked: true } |     a5:Freed { symidx: temp_21_cmp_49, tracked: true } |     a6:Freed { symidx: clusters_39, tracked: true } | 
              #                          label while.head_59: 
.while.head_59:
              #                          new_var temp_25_cmp_58:i1 
              #                          temp_25_cmp_58 = icmp i32 Slt i_39, n_39 
              #                    occupy a2 with i_39
              #                    occupy a3 with n_39
              #                    occupy a7 with temp_25_cmp_58
    slt     a7,a2,a3
              #                    free a2
              #                    free a3
              #                    free a7
              #                          br i1 temp_25_cmp_58, label while.body_59, label while.exit_59 
              #                    occupy a7 with temp_25_cmp_58
              #                    free a7
              #                    occupy a7 with temp_25_cmp_58
    bnez    a7, .while.body_59
              #                    free a7
    j       .while.exit_59
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_18_cmp_43, tracked: true } |     a5:Freed { symidx: temp_21_cmp_49, tracked: true } |     a6:Freed { symidx: clusters_39, tracked: true } |     a7:Freed { symidx: temp_25_cmp_58, tracked: true } | 
              #                          label while.body_59: 
.while.body_59:
              #                          new_var temp_26_ptr2globl_61:Array:i32:[Some(1005_0)] 
              #                          temp_26_ptr2globl_61 = load *parent_0:ptr->i32 
              #                    occupy s1 with *parent_0
              #                       load label parent as ptr to reg
    la      s1, parent
              #                    occupy reg s1 with *parent_0
              #                    occupy s2 with temp_26_ptr2globl_61
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_27_array_ptr_61:ptr->i32 
              #                          temp_27_array_ptr_61 = getelementptr temp_26_ptr2globl_61:Array:i32:[Some(1005_0)] [Some(i_39)] 
              #                    occupy s3 with temp_27_array_ptr_61
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a2 with i_39
              #                    occupy s5 with _anonymous_of_temp_26_ptr2globl_61_0
    mul     s5,s4,a2
              #                    free s4
              #                    free a2
    add     s3,s3,s5
              #                    free s5
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,24
              #                    free s3
              #                          new_var temp_28_array_ele_61:i32 
              #                          temp_28_array_ele_61 = load temp_27_array_ptr_61:ptr->i32 
              #                    occupy s3 with temp_27_array_ptr_61
              #                    occupy s6 with temp_28_array_ele_61
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          new_var temp_29_cmp_61:i1 
              #                          temp_29_cmp_61 = icmp i32 Eq temp_28_array_ele_61, i_39 
              #                    occupy s6 with temp_28_array_ele_61
              #                    occupy a2 with i_39
              #                    occupy s7 with temp_29_cmp_61
    xor     s7,s6,a2
    seqz    s7, s7
              #                    free s6
              #                    free a2
              #                    free s7
              #                          br i1 temp_29_cmp_61, label branch_true_62, label branch_false_62 
              #                    occupy s7 with temp_29_cmp_61
              #                    free s7
              #                    occupy s7 with temp_29_cmp_61
    bnez    s7, .branch_true_62
              #                    free s7
    j       .branch_false_62
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_18_cmp_43, tracked: true } |     a5:Freed { symidx: temp_21_cmp_49, tracked: true } |     a6:Freed { symidx: clusters_39, tracked: true } |     a7:Freed { symidx: temp_25_cmp_58, tracked: true } |     s2:Freed { symidx: temp_26_ptr2globl_61, tracked: true } |     s3:Freed { symidx: temp_27_array_ptr_61, tracked: true } |     s6:Freed { symidx: temp_28_array_ele_61, tracked: true } |     s7:Freed { symidx: temp_29_cmp_61, tracked: true } | 
              #                          label branch_true_62: 
.branch_true_62:
              #                          new_var temp_30_arithop_61:i32 
              #                          temp_30_arithop_61 = Add i32 clusters_39, 1_0 
              #                    occupy a6 with clusters_39
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s4 with temp_30_arithop_61
    add     s4,a6,s1
              #                    free a6
              #                    free s1
              #                    free s4
              #                          clusters_39 = i32 temp_30_arithop_61 
              #                    occupy s4 with temp_30_arithop_61
              #                    occupy a6 with clusters_39
    mv      a6, s4
              #                    free s4
              #                    free a6
              #                          jump label: branch_false_62 
              #                    store to temp_30_arithop_61 in mem offset legal
    sw      s4,4(sp)
              #                    release s4 with temp_30_arithop_61
    j       .branch_false_62
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_18_cmp_43, tracked: true } |     a5:Freed { symidx: temp_21_cmp_49, tracked: true } |     a6:Freed { symidx: clusters_39, tracked: true } |     a7:Freed { symidx: temp_25_cmp_58, tracked: true } |     s2:Freed { symidx: temp_26_ptr2globl_61, tracked: true } |     s3:Freed { symidx: temp_27_array_ptr_61, tracked: true } |     s6:Freed { symidx: temp_28_array_ele_61, tracked: true } |     s7:Freed { symidx: temp_29_cmp_61, tracked: true } | 
              #                          label branch_false_62: 
.branch_false_62:
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_18_cmp_43, tracked: true } |     a5:Freed { symidx: temp_21_cmp_49, tracked: true } |     a6:Freed { symidx: clusters_39, tracked: true } |     a7:Freed { symidx: temp_25_cmp_58, tracked: true } |     s2:Freed { symidx: temp_26_ptr2globl_61, tracked: true } |     s3:Freed { symidx: temp_27_array_ptr_61, tracked: true } |     s6:Freed { symidx: temp_28_array_ele_61, tracked: true } |     s7:Freed { symidx: temp_29_cmp_61, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_31_arithop_60:i32 
              #                          temp_31_arithop_60 = Add i32 i_39, 1_0 
              #                    occupy a2 with i_39
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s4 with temp_31_arithop_60
    add     s4,a2,s1
              #                    free a2
              #                    free s1
              #                    free s4
              #                          i_39 = i32 temp_31_arithop_60 
              #                    occupy s4 with temp_31_arithop_60
              #                    occupy a2 with i_39
    mv      a2, s4
              #                    free s4
              #                    free a2
              #                          jump label: while.head_59 
              #                    store to temp_29_cmp_61 in mem offset legal
    sb      s7,11(sp)
              #                    release s7 with temp_29_cmp_61
              #                    store to temp_28_array_ele_61 in mem offset legal
    sw      s6,12(sp)
              #                    release s6 with temp_28_array_ele_61
              #                    store to temp_27_array_ptr_61 in mem offset legal
    sd      s3,16(sp)
              #                    release s3 with temp_27_array_ptr_61
              #                    store to temp_25_cmp_58 in mem offset_illegal
              #                    occupy a7 with 4047_0
    li      a7, 4047
    add     a7,sp,a7
    sb      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_25_cmp_58
              #                    store to temp_31_arithop_60 in mem offset legal
    sw      s4,0(sp)
              #                    release s4 with temp_31_arithop_60
              #                    store to temp_26_ptr2globl_61 in mem offset legal
    sw      s2,24(sp)
              #                    release s2 with temp_26_ptr2globl_61
    j       .while.head_59
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_18_cmp_43, tracked: true } |     a5:Freed { symidx: temp_21_cmp_49, tracked: true } |     a6:Freed { symidx: clusters_39, tracked: true } |     a7:Freed { symidx: temp_25_cmp_58, tracked: true } | 
              #                          label while.exit_59: 
.while.exit_59:
              #                           Call void putint_0(clusters_39) 
              #                    saved register dumping to mem
              #                    store to temp_17_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 4100_0
    li      a0, 4100
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_17_ret_of_getint_39
              #                    store to m_39 in mem offset_illegal
              #                    occupy a0 with 4096_0
    li      a0, 4096
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with m_39
              #                    store to i_39 in mem offset_illegal
              #                    occupy a1 with 4092_0
    li      a1, 4092
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with i_39
              #                    store to n_39 in mem offset_illegal
              #                    occupy a2 with 4104_0
    li      a2, 4104
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with n_39
              #                    store to temp_18_cmp_43 in mem offset_illegal
              #                    occupy a3 with 4083_0
    li      a3, 4083
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_18_cmp_43
              #                    store to temp_21_cmp_49 in mem offset_illegal
              #                    occupy a4 with 4067_0
    li      a4, 4067
    add     a4,sp,a4
    sb      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_21_cmp_49
              #                    store to clusters_39 in mem offset_illegal
              #                    occupy a5 with 4048_0
    li      a5, 4048
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with clusters_39
              #                    store to temp_25_cmp_58 in mem offset_illegal
              #                    occupy a6 with 4047_0
    li      a6, 4047
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_25_cmp_58
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_clusters_39_0
              #                    load from clusters_39 in mem

              #                    occupy a7 with clusters_39
    li      a7, 4048
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    arg load ended


    call    putint
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
              #                    occupy a0 with ra_main_0
    li      a0, 4120
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_main_0 in mem
              #                    occupy s1 with s0_main_0
    li      s1, 4112
    add     s1,sp,s1
    ld      s0,0(s1)
              #                    free s1
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a0 with 4120_0
    li      a0, 4120
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with ra_main_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy s2 with 4128_0
    li      s2, 4128
    li      s2, 4128
    add     sp,s2,sp
              #                    free s2
              #                    free a0
    ret
              #                    regtab     a7:Freed { symidx: clusters_39, tracked: true } |     s1:Freed { symidx: s0_main_0, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl parent
              #                          global Array:i32:[Some(1005_0)] parent_0 
    .type parent,@object
parent:
    .zero 4020
    .align 4
    .globl maxN
              #                          global i32 maxN_0 
    .type maxN,@object
maxN:
    .word 1005
