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
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 144|s0_main:8 at 136|temp_0_array_init_ptr:8 at 128|temp_1_array_init_ptr:8 at 120|temp_2_array_init_ptr:8 at 112|temp_3_array_init_ptr:8 at 104|temp_4_array_init_ptr:8 at 96|temp_5_array_init_ptr:8 at 88|temp_6_array_init_ptr:8 at 80|temp_7_array_init_ptr:8 at 72|b:32 at 40|i:4 at 36|j:4 at 32|temp_8_cmp:1 at 31|temp_9_cmp:1 at 30|none:6 at 24|temp_10_array_ptr:8 at 16|temp_11_array_ele:4 at 12|temp_12_arithop:4 at 8|temp_13_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-152
              #                    store to ra_main_0 in mem offset legal
    sd      ra,144(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,136(sp)
    addi    s0,sp,152
              #                          alloc ptr->i32 temp_0_array_init_ptr_17 
              #                          alloc ptr->i32 temp_1_array_init_ptr_17 
              #                          alloc ptr->i32 temp_2_array_init_ptr_17 
              #                          alloc ptr->i32 temp_3_array_init_ptr_17 
              #                          alloc ptr->i32 temp_4_array_init_ptr_17 
              #                          alloc ptr->i32 temp_5_array_init_ptr_17 
              #                          alloc ptr->i32 temp_6_array_init_ptr_17 
              #                          alloc ptr->i32 temp_7_array_init_ptr_17 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] b_17 
              #                          alloc i32 i_17 
              #                          alloc i32 j_17 
              #                          alloc i1 temp_8_cmp_20 
              #                          alloc i1 temp_9_cmp_23 
              #                          alloc ptr->i32 temp_10_array_ptr_25 
              #                          alloc i32 temp_11_array_ele_25 
              #                          alloc i32 temp_12_arithop_25 
              #                          alloc i32 temp_13_arithop_22 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var b_17:Array:i32:[Some(4_0), Some(2_0)] 
              #                          new_var temp_0_array_init_ptr_17:ptr->i32 
              #                          temp_0_array_init_ptr_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a0 with temp_0_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with _anonymous_of_b_17_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with _anonymous_of_b_17_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,40
              #                    free a0
              #                          store 5_0:i32 temp_0_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_0_array_init_ptr_17
              #                    occupy a7 with 5_0
    li      a7, 5
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                          mu b_17:20 
              #                          b_17 = chi b_17:20 
              #                          new_var temp_1_array_init_ptr_17:ptr->i32 
              #                          temp_1_array_init_ptr_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy s1 with temp_1_array_init_ptr_17
    li      s1, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(a2) already exist with 2_0
              #                    occupy a2 with 2_0
              #                    occupy s2 with _anonymous_of_b_17_0
    mul     s2,a1,a2
              #                    free a1
              #                    free a2
    add     s1,s1,s2
              #                    free s2
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with _anonymous_of_b_17_0
    mul     s4,a4,s3
              #                    free a4
              #                    free s3
    add     s1,s1,s4
              #                    free s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,40
              #                    free s1
              #                          store 6_0:i32 temp_1_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s1 with temp_1_array_init_ptr_17
              #                    occupy s5 with 6_0
    li      s5, 6
    sw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          mu b_17:26 
              #                          b_17 = chi b_17:26 
              #                          new_var temp_2_array_init_ptr_17:ptr->i32 
              #                          temp_2_array_init_ptr_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy s6 with temp_2_array_init_ptr_17
    li      s6, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s7 with _anonymous_of_b_17_0
    mul     s7,a1,s3
              #                    free a1
              #                    free s3
    add     s6,s6,s7
              #                    free s7
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy s8 with _anonymous_of_b_17_0
    mul     s8,s3,a5
              #                    free s3
              #                    free a5
    add     s6,s6,s8
              #                    free s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,40
              #                    free s6
              #                          store 3_0:i32 temp_2_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s6 with temp_2_array_init_ptr_17
              #                    occupy s9 with 3_0
    li      s9, 3
    sw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          mu b_17:32 
              #                          b_17 = chi b_17:32 
              #                          new_var temp_3_array_init_ptr_17:ptr->i32 
              #                          temp_3_array_init_ptr_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy s10 with temp_3_array_init_ptr_17
    li      s10, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy s11 with _anonymous_of_b_17_0
    mul     s11,a1,a5
              #                    free a1
              #                    free a5
    add     s10,s10,s11
              #                    free s11
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a1 with _anonymous_of_b_17_0
    mul     a1,s3,a4
              #                    free s3
              #                    free a4
    add     s10,s10,a1
              #                    free a1
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,40
              #                    free s10
              #                          store 2_0:i32 temp_3_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s10 with temp_3_array_init_ptr_17
              #                    found literal reg Some(a2) already exist with 2_0
              #                    occupy a2 with 2_0
    sw      a2,0(s10)
              #                    free a2
              #                    free s10
              #                          mu b_17:38 
              #                          b_17 = chi b_17:38 
              #                          new_var temp_4_array_init_ptr_17:ptr->i32 
              #                          temp_4_array_init_ptr_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a1 with temp_4_array_init_ptr_17
    li      a1, 0
              #                    found literal reg Some(a2) already exist with 2_0
              #                    occupy a2 with 2_0
              #                    found literal reg Some(s9) already exist with 3_0
              #                    occupy s9 with 3_0
              #                    occupy a3 with _anonymous_of_b_17_0
    mul     a3,a2,s9
              #                    free a2
              #                    free s9
    add     a1,a1,a3
              #                    free a3
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy a2 with _anonymous_of_b_17_0
    mul     a2,s3,a5
              #                    free s3
              #                    free a5
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,40
              #                    free a1
              #                          store 7_0:i32 temp_4_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a1 with temp_4_array_init_ptr_17
              #                    occupy a2 with 7_0
    li      a2, 7
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu b_17:44 
              #                          b_17 = chi b_17:44 
              #                          new_var temp_5_array_init_ptr_17:ptr->i32 
              #                          temp_5_array_init_ptr_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a2 with temp_5_array_init_ptr_17
    li      a2, 0
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy a4 with _anonymous_of_b_17_0
    mul     a4,a3,a5
              #                    free a3
              #                    free a5
    add     a2,a2,a4
              #                    free a4
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy a3 with _anonymous_of_b_17_0
    mul     a3,s3,a5
              #                    free s3
              #                    free a5
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,40
              #                    free a2
              #                          store 9_0:i32 temp_5_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a2 with temp_5_array_init_ptr_17
              #                    occupy a3 with 9_0
    li      a3, 9
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu b_17:50 
              #                          b_17 = chi b_17:50 
              #                          new_var temp_6_array_init_ptr_17:ptr->i32 
              #                          temp_6_array_init_ptr_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
              #                    occupy a3 with temp_6_array_init_ptr_17
    li      a3, 0
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a5 with _anonymous_of_b_17_0
    mul     a5,a4,s3
              #                    free a4
              #                    free s3
    add     a3,a3,a5
              #                    free a5
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with _anonymous_of_b_17_0
    mul     a5,s3,a4
              #                    free s3
              #                    free a4
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,40
              #                    free a3
              #                          store 4_0:i32 temp_6_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a3 with temp_6_array_init_ptr_17
              #                    occupy a4 with 4_0
    li      a4, 4
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu b_17:56 
              #                          b_17 = chi b_17:56 
              #                          new_var temp_7_array_init_ptr_17:ptr->i32 
              #                          temp_7_array_init_ptr_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
              #                    occupy a4 with temp_7_array_init_ptr_17
    li      a4, 0
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    found literal reg Some(s9) already exist with 3_0
              #                    occupy s9 with 3_0
              #                    occupy a6 with _anonymous_of_b_17_0
    mul     a6,a5,s9
              #                    free a5
              #                    free s9
    add     a4,a4,a6
              #                    free a6
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with _anonymous_of_b_17_0
    mul     a6,s3,a5
              #                    free s3
              #                    free a5
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,40
              #                    free a4
              #                          store 8_0:i32 temp_7_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a4 with temp_7_array_init_ptr_17
              #                    occupy a5 with 8_0
    li      a5, 8
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu b_17:62 
              #                          b_17 = chi b_17:62 
              #                          i_17 = i32 0_0 
              #                    occupy a5 with i_17
    li      a5, 0
              #                    free a5
              #                          j_17 = i32 0_0 
              #                    occupy a6 with j_17
    li      a6, 0
              #                    free a6
              #                          jump label: while.head_21 
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: temp_0_array_init_ptr_17, tracked: true } |     a1:Freed { symidx: temp_4_array_init_ptr_17, tracked: true } |     a2:Freed { symidx: temp_5_array_init_ptr_17, tracked: true } |     a3:Freed { symidx: temp_6_array_init_ptr_17, tracked: true } |     a4:Freed { symidx: temp_7_array_init_ptr_17, tracked: true } |     a5:Freed { symidx: i_17, tracked: true } |     a6:Freed { symidx: j_17, tracked: true } |     s10:Freed { symidx: temp_3_array_init_ptr_17, tracked: true } |     s1:Freed { symidx: temp_1_array_init_ptr_17, tracked: true } |     s6:Freed { symidx: temp_2_array_init_ptr_17, tracked: true } | 
              #                          label while.head_21: 
.while.head_21:
              #                          new_var temp_8_cmp_20:i1 
              #                          temp_8_cmp_20 = icmp i32 Slt i_17, 4_0 
              #                    occupy a5 with i_17
              #                    occupy a7 with 4_0
    li      a7, 4
              #                    occupy s2 with temp_8_cmp_20
    slt     s2,a5,a7
              #                    free a5
              #                    free a7
              #                    free s2
              #                          br i1 temp_8_cmp_20, label while.body_21, label while.exit_21 
              #                    occupy s2 with temp_8_cmp_20
              #                    free s2
              #                    occupy s2 with temp_8_cmp_20
    bnez    s2, .while.body_21
              #                    free s2
    j       .while.exit_21
              #                    regtab     a0:Freed { symidx: temp_0_array_init_ptr_17, tracked: true } |     a1:Freed { symidx: temp_4_array_init_ptr_17, tracked: true } |     a2:Freed { symidx: temp_5_array_init_ptr_17, tracked: true } |     a3:Freed { symidx: temp_6_array_init_ptr_17, tracked: true } |     a4:Freed { symidx: temp_7_array_init_ptr_17, tracked: true } |     a5:Freed { symidx: i_17, tracked: true } |     a6:Freed { symidx: j_17, tracked: true } |     s10:Freed { symidx: temp_3_array_init_ptr_17, tracked: true } |     s1:Freed { symidx: temp_1_array_init_ptr_17, tracked: true } |     s2:Freed { symidx: temp_8_cmp_20, tracked: true } |     s6:Freed { symidx: temp_2_array_init_ptr_17, tracked: true } | 
              #                          label while.body_21: 
.while.body_21:
              #                          new_var temp_9_cmp_23:i1 
              #                          temp_9_cmp_23 = icmp i32 Slt j_17, 2_0 
              #                    occupy a6 with j_17
              #                    occupy a7 with 2_0
    li      a7, 2
              #                    occupy s3 with temp_9_cmp_23
    slt     s3,a6,a7
              #                    free a6
              #                    free a7
              #                    free s3
              #                          br i1 temp_9_cmp_23, label while.body_24, label while.exit_24 
              #                    occupy s3 with temp_9_cmp_23
              #                    free s3
              #                    occupy s3 with temp_9_cmp_23
    bnez    s3, .while.body_24
              #                    free s3
    j       .while.exit_24
              #                    regtab     a0:Freed { symidx: temp_0_array_init_ptr_17, tracked: true } |     a1:Freed { symidx: temp_4_array_init_ptr_17, tracked: true } |     a2:Freed { symidx: temp_5_array_init_ptr_17, tracked: true } |     a3:Freed { symidx: temp_6_array_init_ptr_17, tracked: true } |     a4:Freed { symidx: temp_7_array_init_ptr_17, tracked: true } |     a5:Freed { symidx: i_17, tracked: true } |     a6:Freed { symidx: j_17, tracked: true } |     s10:Freed { symidx: temp_3_array_init_ptr_17, tracked: true } |     s1:Freed { symidx: temp_1_array_init_ptr_17, tracked: true } |     s2:Freed { symidx: temp_8_cmp_20, tracked: true } |     s3:Freed { symidx: temp_9_cmp_23, tracked: true } |     s6:Freed { symidx: temp_2_array_init_ptr_17, tracked: true } | 
              #                          label while.body_24: 
.while.body_24:
              #                          new_var temp_10_array_ptr_25:ptr->i32 
              #                          temp_10_array_ptr_25 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [Some(i_17), Some(j_17)] 
              #                    occupy a7 with temp_10_array_ptr_25
    li      a7, 0
              #                    occupy s4 with 2_0
    li      s4, 2
              #                    occupy a5 with i_17
              #                    occupy s5 with _anonymous_of_b_17_0
    mul     s5,s4,a5
              #                    free s4
              #                    free a5
    add     a7,a7,s5
              #                    free s5
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy a6 with j_17
              #                    occupy s8 with _anonymous_of_b_17_0
    mul     s8,s7,a6
              #                    free s7
              #                    free a6
    add     a7,a7,s8
              #                    free s8
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,40
              #                    free a7
              #                          new_var temp_11_array_ele_25:i32 
              #                          temp_11_array_ele_25 = load temp_10_array_ptr_25:ptr->i32 
              #                    occupy a7 with temp_10_array_ptr_25
              #                    occupy s9 with temp_11_array_ele_25
    lw      s9,0(a7)
              #                    free s9
              #                    free a7
              #                           Call void putint_0(temp_11_array_ele_25) 
              #                    saved register dumping to mem
              #                    store to temp_1_array_init_ptr_17 in mem offset legal
    sd      s1,120(sp)
              #                    release s1 with temp_1_array_init_ptr_17
              #                    store to temp_8_cmp_20 in mem offset legal
    sb      s2,31(sp)
              #                    release s2 with temp_8_cmp_20
              #                    store to temp_9_cmp_23 in mem offset legal
    sb      s3,30(sp)
              #                    release s3 with temp_9_cmp_23
              #                    store to temp_2_array_init_ptr_17 in mem offset legal
    sd      s6,112(sp)
              #                    release s6 with temp_2_array_init_ptr_17
              #                    store to temp_11_array_ele_25 in mem offset legal
    sw      s9,12(sp)
              #                    release s9 with temp_11_array_ele_25
              #                    store to temp_3_array_init_ptr_17 in mem offset legal
    sd      s10,104(sp)
              #                    release s10 with temp_3_array_init_ptr_17
              #                    store to temp_0_array_init_ptr_17 in mem offset legal
    sd      a0,128(sp)
              #                    release a0 with temp_0_array_init_ptr_17
              #                    store to temp_4_array_init_ptr_17 in mem offset legal
    sd      a1,96(sp)
              #                    release a1 with temp_4_array_init_ptr_17
              #                    store to temp_5_array_init_ptr_17 in mem offset legal
    sd      a2,88(sp)
              #                    release a2 with temp_5_array_init_ptr_17
              #                    store to temp_6_array_init_ptr_17 in mem offset legal
    sd      a3,80(sp)
              #                    release a3 with temp_6_array_init_ptr_17
              #                    store to temp_7_array_init_ptr_17 in mem offset legal
    sd      a4,72(sp)
              #                    release a4 with temp_7_array_init_ptr_17
              #                    store to i_17 in mem offset legal
    sw      a5,36(sp)
              #                    release a5 with i_17
              #                    store to j_17 in mem offset legal
    sw      a6,32(sp)
              #                    release a6 with j_17
              #                    store to temp_10_array_ptr_25 in mem offset legal
    sd      a7,16(sp)
              #                    release a7 with temp_10_array_ptr_25
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_11_array_ele_25_0
              #                    load from temp_11_array_ele_25 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          new_var temp_12_arithop_25:i32 
              #                          temp_12_arithop_25 = Add i32 j_17, 1_0 
              #                    occupy a0 with j_17
              #                    load from j_17 in mem


    lw      a0,32(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_12_arithop_25
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          j_17 = i32 temp_12_arithop_25 
              #                    occupy a2 with temp_12_arithop_25
              #                    occupy a0 with j_17
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.body_21 
              #                    store to j_17 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with j_17
              #                    store to temp_12_arithop_25 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_12_arithop_25
              #                    occupy a1 with _anonymous_of_temp_4_array_init_ptr_17_0
              #                    load from temp_4_array_init_ptr_17 in mem
    ld      a1,96(sp)
              #                    occupy a5 with _anonymous_of_i_17_0
              #                    load from i_17 in mem


    lw      a5,36(sp)
              #                    occupy s10 with _anonymous_of_temp_3_array_init_ptr_17_0
              #                    load from temp_3_array_init_ptr_17 in mem
    ld      s10,104(sp)
              #                    occupy a6 with _anonymous_of_j_17_0
              #                    load from j_17 in mem


    lw      a6,32(sp)
              #                    occupy a0 with _anonymous_of_temp_0_array_init_ptr_17_0
              #                    load from temp_0_array_init_ptr_17 in mem
    ld      a0,128(sp)
              #                    occupy a4 with _anonymous_of_temp_7_array_init_ptr_17_0
              #                    load from temp_7_array_init_ptr_17 in mem
    ld      a4,72(sp)
              #                    occupy a2 with _anonymous_of_temp_5_array_init_ptr_17_0
              #                    load from temp_5_array_init_ptr_17 in mem
    ld      a2,88(sp)
              #                    occupy s2 with _anonymous_of_temp_8_cmp_20_0
              #                    load from temp_8_cmp_20 in mem
    lb      s2,31(sp)
              #                    occupy s1 with _anonymous_of_temp_1_array_init_ptr_17_0
              #                    load from temp_1_array_init_ptr_17 in mem
    ld      s1,120(sp)
              #                    occupy a3 with _anonymous_of_temp_6_array_init_ptr_17_0
              #                    load from temp_6_array_init_ptr_17 in mem
    ld      a3,80(sp)
              #                    occupy s6 with _anonymous_of_temp_2_array_init_ptr_17_0
              #                    load from temp_2_array_init_ptr_17 in mem
    ld      s6,112(sp)
    j       .while.body_21
              #                    regtab     a0:Freed { symidx: temp_0_array_init_ptr_17, tracked: true } |     a1:Freed { symidx: temp_4_array_init_ptr_17, tracked: true } |     a2:Freed { symidx: temp_5_array_init_ptr_17, tracked: true } |     a3:Freed { symidx: temp_6_array_init_ptr_17, tracked: true } |     a4:Freed { symidx: temp_7_array_init_ptr_17, tracked: true } |     a5:Freed { symidx: i_17, tracked: true } |     a6:Freed { symidx: j_17, tracked: true } |     s10:Freed { symidx: temp_3_array_init_ptr_17, tracked: true } |     s1:Freed { symidx: temp_1_array_init_ptr_17, tracked: true } |     s2:Freed { symidx: temp_8_cmp_20, tracked: true } |     s3:Freed { symidx: temp_9_cmp_23, tracked: true } |     s6:Freed { symidx: temp_2_array_init_ptr_17, tracked: true } | 
              #                          label while.exit_24: 
.while.exit_24:
              #                          j_17 = i32 0_0 
              #                    occupy a6 with j_17
    li      a6, 0
              #                    free a6
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    store to temp_1_array_init_ptr_17 in mem offset legal
    sd      s1,120(sp)
              #                    release s1 with temp_1_array_init_ptr_17
              #                    store to temp_8_cmp_20 in mem offset legal
    sb      s2,31(sp)
              #                    release s2 with temp_8_cmp_20
              #                    store to temp_9_cmp_23 in mem offset legal
    sb      s3,30(sp)
              #                    release s3 with temp_9_cmp_23
              #                    store to temp_2_array_init_ptr_17 in mem offset legal
    sd      s6,112(sp)
              #                    release s6 with temp_2_array_init_ptr_17
              #                    store to temp_3_array_init_ptr_17 in mem offset legal
    sd      s10,104(sp)
              #                    release s10 with temp_3_array_init_ptr_17
              #                    store to temp_0_array_init_ptr_17 in mem offset legal
    sd      a0,128(sp)
              #                    release a0 with temp_0_array_init_ptr_17
              #                    store to temp_4_array_init_ptr_17 in mem offset legal
    sd      a1,96(sp)
              #                    release a1 with temp_4_array_init_ptr_17
              #                    store to temp_5_array_init_ptr_17 in mem offset legal
    sd      a2,88(sp)
              #                    release a2 with temp_5_array_init_ptr_17
              #                    store to temp_6_array_init_ptr_17 in mem offset legal
    sd      a3,80(sp)
              #                    release a3 with temp_6_array_init_ptr_17
              #                    store to temp_7_array_init_ptr_17 in mem offset legal
    sd      a4,72(sp)
              #                    release a4 with temp_7_array_init_ptr_17
              #                    store to i_17 in mem offset legal
    sw      a5,36(sp)
              #                    release a5 with i_17
              #                    store to j_17 in mem offset legal
    sw      a6,32(sp)
              #                    release a6 with j_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          new_var temp_13_arithop_22:i32 
              #                          temp_13_arithop_22 = Add i32 i_17, 1_0 
              #                    occupy a0 with i_17
              #                    load from i_17 in mem


    lw      a0,36(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_13_arithop_22
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_17 = i32 temp_13_arithop_22 
              #                    occupy a2 with temp_13_arithop_22
              #                    occupy a0 with i_17
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_21 
              #                    store to i_17 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_17
              #                    store to temp_13_arithop_22 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_13_arithop_22
              #                    occupy a1 with _anonymous_of_temp_4_array_init_ptr_17_0
              #                    load from temp_4_array_init_ptr_17 in mem
    ld      a1,96(sp)
              #                    occupy a5 with _anonymous_of_i_17_0
              #                    load from i_17 in mem


    lw      a5,36(sp)
              #                    occupy s10 with _anonymous_of_temp_3_array_init_ptr_17_0
              #                    load from temp_3_array_init_ptr_17 in mem
    ld      s10,104(sp)
              #                    occupy a6 with _anonymous_of_j_17_0
              #                    load from j_17 in mem


    lw      a6,32(sp)
              #                    occupy a0 with _anonymous_of_temp_0_array_init_ptr_17_0
              #                    load from temp_0_array_init_ptr_17 in mem
    ld      a0,128(sp)
              #                    occupy a4 with _anonymous_of_temp_7_array_init_ptr_17_0
              #                    load from temp_7_array_init_ptr_17 in mem
    ld      a4,72(sp)
              #                    occupy a2 with _anonymous_of_temp_5_array_init_ptr_17_0
              #                    load from temp_5_array_init_ptr_17 in mem
    ld      a2,88(sp)
              #                    occupy s1 with _anonymous_of_temp_1_array_init_ptr_17_0
              #                    load from temp_1_array_init_ptr_17 in mem
    ld      s1,120(sp)
              #                    occupy a3 with _anonymous_of_temp_6_array_init_ptr_17_0
              #                    load from temp_6_array_init_ptr_17 in mem
    ld      a3,80(sp)
              #                    occupy s6 with _anonymous_of_temp_2_array_init_ptr_17_0
              #                    load from temp_2_array_init_ptr_17 in mem
    ld      s6,112(sp)
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: temp_0_array_init_ptr_17, tracked: true } |     a1:Freed { symidx: temp_4_array_init_ptr_17, tracked: true } |     a2:Freed { symidx: temp_5_array_init_ptr_17, tracked: true } |     a3:Freed { symidx: temp_6_array_init_ptr_17, tracked: true } |     a4:Freed { symidx: temp_7_array_init_ptr_17, tracked: true } |     a5:Freed { symidx: i_17, tracked: true } |     a6:Freed { symidx: j_17, tracked: true } |     s10:Freed { symidx: temp_3_array_init_ptr_17, tracked: true } |     s1:Freed { symidx: temp_1_array_init_ptr_17, tracked: true } |     s2:Freed { symidx: temp_8_cmp_20, tracked: true } |     s6:Freed { symidx: temp_2_array_init_ptr_17, tracked: true } | 
              #                          label while.exit_21: 
.while.exit_21:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,144(sp)
              #                    load from s0_main_0 in mem
    ld      s0,136(sp)
              #                    store to temp_0_array_init_ptr_17 in mem offset legal
    sd      a0,128(sp)
              #                    release a0 with temp_0_array_init_ptr_17
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,152
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_4_array_init_ptr_17, tracked: true } |     a2:Freed { symidx: temp_5_array_init_ptr_17, tracked: true } |     a3:Freed { symidx: temp_6_array_init_ptr_17, tracked: true } |     a4:Freed { symidx: temp_7_array_init_ptr_17, tracked: true } |     a5:Freed { symidx: i_17, tracked: true } |     a6:Freed { symidx: j_17, tracked: true } |     s10:Freed { symidx: temp_3_array_init_ptr_17, tracked: true } |     s1:Freed { symidx: temp_1_array_init_ptr_17, tracked: true } |     s2:Freed { symidx: temp_8_cmp_20, tracked: true } |     s6:Freed { symidx: temp_2_array_init_ptr_17, tracked: true } | 
