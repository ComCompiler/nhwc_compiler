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
              #                          Define exgcd_0 [a_16, b_16, x_16, y_16] -> exgcd_ret_0 
    .globl exgcd
    .type exgcd,@function
exgcd:
              #                    mem layout:|ra_exgcd:8 at 144|s0_exgcd:8 at 136|a:4 at 132|b:4 at 128|x:8 at 120|y:8 at 112|temp_0_cmp:1 at 111|none:7 at 104|temp_1_index_ptr:8 at 96|temp_2_index_ptr:8 at 88|temp_3_arithop:4 at 84|temp_4_ret_of_exgcd:4 at 80|r:4 at 76|none:4 at 72|temp_5_array_ptr:8 at 64|temp_6_array_ele:4 at 60|t:4 at 56|temp_7_index_ptr:8 at 48|temp_8_array_ptr:8 at 40|temp_9_array_ele:4 at 36|none:4 at 32|temp_10_index_ptr:8 at 24|temp_11_array_ptr:8 at 16|temp_12_array_ele:4 at 12|temp_13_arithop:4 at 8|temp_14_arithop:4 at 4|temp_15_arithop:4 at 0
    addi    sp,sp,-152
              #                    store to ra_exgcd_0 in mem offset legal
    sd      ra,144(sp)
              #                    store to s0_exgcd_0 in mem offset legal
    sd      s0,136(sp)
    addi    s0,sp,152
              #                          new_var x_16:ptr->i32 
              #                          new_var y_16:ptr->i32 
              #                          alloc i1 temp_0_cmp_19 
              #                          alloc ptr->i32 temp_1_index_ptr_21 
              #                          alloc ptr->i32 temp_2_index_ptr_21 
              #                          alloc i32 temp_3_arithop_25 
              #                          alloc i32 temp_4_ret_of_exgcd_25 
              #                          alloc i32 r_25 
              #                          alloc ptr->i32 temp_5_array_ptr_25 
              #                          alloc i32 temp_6_array_ele_25 
              #                          alloc i32 t_25 
              #                          alloc ptr->i32 temp_7_index_ptr_25 
              #                          alloc ptr->i32 temp_8_array_ptr_25 
              #                          alloc i32 temp_9_array_ele_25 
              #                          alloc ptr->i32 temp_10_index_ptr_25 
              #                          alloc ptr->i32 temp_11_array_ptr_25 
              #                          alloc i32 temp_12_array_ele_25 
              #                          alloc i32 temp_13_arithop_25 
              #                          alloc i32 temp_14_arithop_25 
              #                          alloc i32 temp_15_arithop_25 
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: x_16, tracked: true } |     a3:Freed { symidx: y_16, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_0_cmp_19:i1 
              #                          temp_0_cmp_19 = icmp i32 Eq b_16, 0_0 
              #                    occupy a1 with b_16
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_0_cmp_19
    xor     a5,a1,a4
    seqz    a5, a5
              #                    free a1
              #                    free a4
              #                    free a5
              #                          br i1 temp_0_cmp_19, label branch_true_20, label branch_false_20 
              #                    occupy a5 with temp_0_cmp_19
              #                    free a5
              #                    occupy a5 with temp_0_cmp_19
    bnez    a5, .branch_true_20
              #                    free a5
    j       .branch_false_20
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: x_16, tracked: true } |     a3:Freed { symidx: y_16, tracked: true } |     a5:Freed { symidx: temp_0_cmp_19, tracked: true } | 
              #                          label branch_true_20: 
.branch_true_20:
              #                          new_var temp_1_index_ptr_21:ptr->i32 
              #                          temp_1_index_ptr_21 = getelementptr x_16:ptr->i32 [Some(0_0)] 
              #                    occupy a4 with temp_1_index_ptr_21
    li      a4, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
              #                    occupy a2 with x_16
    add     a4,a4,a2
              #                    free a2
              #                    free a4
              #                          store 1_0:i32 temp_1_index_ptr_21:ptr->i32 
              #                    occupy a4 with temp_1_index_ptr_21
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
    sw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                          mu x_16:28 
              #                          x_16 = chi x_16:28 
              #                          new_var temp_2_index_ptr_21:ptr->i32 
              #                          temp_2_index_ptr_21 = getelementptr y_16:ptr->i32 [Some(0_0)] 
              #                    occupy s2 with temp_2_index_ptr_21
    li      s2, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a6,a7
              #                    free a6
              #                    free a7
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy a3 with y_16
    add     s2,s2,a3
              #                    free a3
              #                    free s2
              #                          store 0_0:i32 temp_2_index_ptr_21:ptr->i32 
              #                    occupy s2 with temp_2_index_ptr_21
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
    sw      a7,0(s2)
              #                    free a7
              #                    free s2
              #                          mu y_16:34 
              #                          y_16 = chi y_16:34 
              #                          ret a_16 
              #                    load from ra_exgcd_0 in mem
    ld      ra,144(sp)
              #                    load from s0_exgcd_0 in mem
    ld      s0,136(sp)
              #                    store to a_16 in mem offset legal
    sw      a0,132(sp)
              #                    release a0 with a_16
              #                    occupy a0 with a_16
              #                    load from a_16 in mem


    lw      a0,132(sp)
    addi    sp,sp,152
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: x_16, tracked: true } |     a3:Freed { symidx: y_16, tracked: true } |     a5:Freed { symidx: temp_0_cmp_19, tracked: true } | 
              #                          label branch_false_20: 
.branch_false_20:
              #                          new_var temp_3_arithop_25:i32 
              #                          temp_3_arithop_25 = Mod i32 a_16, b_16 
              #                    occupy a0 with a_16
              #                    occupy a1 with b_16
              #                    occupy a4 with temp_3_arithop_25
              #                    load from temp_3_arithop_25 in mem


    lw      a4,84(sp)
    rem     a4,a0,a1
              #                    free a0
              #                    free a1
              #                    free a4
              #                          new_var temp_4_ret_of_exgcd_25:i32 
              #                          temp_4_ret_of_exgcd_25 =  Call i32 exgcd_0(b_16, temp_3_arithop_25, x_16, y_16) 
              #                    saved register dumping to mem
              #                    store to a_16 in mem offset legal
    sw      a0,132(sp)
              #                    release a0 with a_16
              #                    store to b_16 in mem offset legal
    sw      a1,128(sp)
              #                    release a1 with b_16
              #                    store to x_16 in mem offset legal
    sd      a2,120(sp)
              #                    release a2 with x_16
              #                    store to y_16 in mem offset legal
    sd      a3,112(sp)
              #                    release a3 with y_16
              #                    store to temp_3_arithop_25 in mem offset legal
    sw      a4,84(sp)
              #                    release a4 with temp_3_arithop_25
              #                    store to temp_0_cmp_19 in mem offset legal
    sb      a5,111(sp)
              #                    release a5 with temp_0_cmp_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_b_16_0
              #                    load from b_16 in mem


    lw      a0,128(sp)
              #                    occupy a1 with _anonymous_of_temp_3_arithop_25_0
              #                    load from temp_3_arithop_25 in mem


    lw      a1,84(sp)
              #                    occupy a2 with _anonymous_of_x_16_0
              #                    load from x_16 in mem
    ld      a2,120(sp)
              #                    occupy a3 with _anonymous_of_y_16_0
              #                    load from y_16 in mem
    ld      a3,112(sp)
              #                    arg load ended


    call    exgcd
              #                    store to temp_4_ret_of_exgcd_25 in mem offset legal
    sw      a0,80(sp)
              #                          r_25 = i32 temp_4_ret_of_exgcd_25 
              #                    occupy a0 with temp_4_ret_of_exgcd_25
              #                    occupy a1 with r_25
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_5_array_ptr_25:ptr->i32 
              #                          temp_5_array_ptr_25 = getelementptr x_16:ptr->i32 [Some(0_0)] 
              #                    occupy a2 with temp_5_array_ptr_25
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with x_16
              #                    load from x_16 in mem
    ld      a6,120(sp)
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_6_array_ele_25:i32 
              #                          temp_6_array_ele_25 = load temp_5_array_ptr_25:ptr->i32 
              #                    occupy a2 with temp_5_array_ptr_25
              #                    occupy a7 with temp_6_array_ele_25
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          t_25 = i32 temp_6_array_ele_25 
              #                    occupy a7 with temp_6_array_ele_25
              #                    occupy s1 with t_25
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                          new_var temp_7_index_ptr_25:ptr->i32 
              #                          temp_7_index_ptr_25 = getelementptr x_16:ptr->i32 [Some(0_0)] 
              #                    occupy s2 with temp_7_index_ptr_25
    li      s2, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a3,a4
              #                    free a3
              #                    free a4
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy a6 with x_16
    add     s2,s2,a6
              #                    free a6
              #                    free s2
              #                          new_var temp_8_array_ptr_25:ptr->i32 
              #                          temp_8_array_ptr_25 = getelementptr y_16:ptr->i32 [Some(0_0)] 
              #                    occupy s4 with temp_8_array_ptr_25
    li      s4, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a3,a4
              #                    free a3
              #                    free a4
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy s6 with y_16
              #                    load from y_16 in mem
    ld      s6,112(sp)
    add     s4,s4,s6
              #                    free s6
              #                    free s4
              #                          new_var temp_9_array_ele_25:i32 
              #                          temp_9_array_ele_25 = load temp_8_array_ptr_25:ptr->i32 
              #                    occupy s4 with temp_8_array_ptr_25
              #                    occupy s7 with temp_9_array_ele_25
    lw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          store temp_9_array_ele_25:i32 temp_7_index_ptr_25:ptr->i32 
              #                    occupy s2 with temp_7_index_ptr_25
              #                    occupy s7 with temp_9_array_ele_25
    sw      s7,0(s2)
              #                    free s7
              #                    free s2
              #                          mu x_16:64 
              #                          x_16 = chi x_16:64 
              #                          new_var temp_10_index_ptr_25:ptr->i32 
              #                          temp_10_index_ptr_25 = getelementptr y_16:ptr->i32 [Some(0_0)] 
              #                    occupy s8 with temp_10_index_ptr_25
    li      s8, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,a3,a4
              #                    free a3
              #                    free a4
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
              #                    occupy s6 with y_16
    add     s8,s8,s6
              #                    free s6
              #                    free s8
              #                          new_var temp_11_array_ptr_25:ptr->i32 
              #                          temp_11_array_ptr_25 = getelementptr y_16:ptr->i32 [Some(0_0)] 
              #                    occupy s10 with temp_11_array_ptr_25
    li      s10, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a3,a4
              #                    free a3
              #                    free a4
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
              #                    occupy s6 with y_16
    add     s10,s10,s6
              #                    free s6
              #                    free s10
              #                          new_var temp_12_array_ele_25:i32 
              #                          temp_12_array_ele_25 = load temp_11_array_ptr_25:ptr->i32 
              #                    occupy s10 with temp_11_array_ptr_25
              #                    occupy a3 with temp_12_array_ele_25
    lw      a3,0(s10)
              #                    free a3
              #                    free s10
              #                          new_var temp_13_arithop_25:i32 
              #                          temp_13_arithop_25 = Div i32 a_16, b_16 
              #                    occupy a4 with a_16
              #                    load from a_16 in mem


    lw      a4,132(sp)
              #                    occupy a5 with b_16
              #                    load from b_16 in mem


    lw      a5,128(sp)
              #                    occupy s3 with temp_13_arithop_25
    div     s3,a4,a5
              #                    free a4
              #                    free a5
              #                    free s3
              #                          new_var temp_14_arithop_25:i32 
              #                          temp_14_arithop_25 = Mul i32 temp_13_arithop_25, temp_12_array_ele_25 
              #                    occupy s3 with temp_13_arithop_25
              #                    occupy a3 with temp_12_array_ele_25
              #                    occupy s5 with temp_14_arithop_25
    mul     s5,s3,a3
              #                    free s3
              #                    free a3
              #                    free s5
              #                          new_var temp_15_arithop_25:i32 
              #                          temp_15_arithop_25 = Sub i32 t_25, temp_14_arithop_25 
              #                    occupy s1 with t_25
              #                    occupy s5 with temp_14_arithop_25
              #                    occupy s9 with temp_15_arithop_25
              #                    regtab:    a0:Freed { symidx: temp_4_ret_of_exgcd_25, tracked: true } |     a1:Freed { symidx: r_25, tracked: true } |     a2:Freed { symidx: temp_5_array_ptr_25, tracked: true } |     a3:Freed { symidx: temp_12_array_ele_25, tracked: true } |     a4:Freed { symidx: a_16, tracked: true } |     a5:Freed { symidx: b_16, tracked: true } |     a6:Freed { symidx: x_16, tracked: true } |     a7:Freed { symidx: temp_6_array_ele_25, tracked: true } |     s10:Freed { symidx: temp_11_array_ptr_25, tracked: true } |     s11:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s1:Occupied { symidx: t_25, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: temp_7_index_ptr_25, tracked: true } |     s3:Freed { symidx: temp_13_arithop_25, tracked: true } |     s4:Freed { symidx: temp_8_array_ptr_25, tracked: true } |     s5:Occupied { symidx: temp_14_arithop_25, tracked: true, occupy_count: 1 } |     s6:Freed { symidx: y_16, tracked: true } |     s7:Freed { symidx: temp_9_array_ele_25, tracked: true } |     s8:Freed { symidx: temp_10_index_ptr_25, tracked: true } |     s9:Occupied { symidx: temp_15_arithop_25, tracked: true, occupy_count: 1 } | 


    sub     s9,s1,s5
              #                    free s1
              #                    free s5
              #                    free s9
              #                          store temp_15_arithop_25:i32 temp_10_index_ptr_25:ptr->i32 
              #                    occupy s8 with temp_10_index_ptr_25
              #                    occupy s9 with temp_15_arithop_25
    sw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          mu y_16:85 
              #                          y_16 = chi y_16:85 
              #                          ret r_25 
              #                    load from ra_exgcd_0 in mem
    ld      ra,144(sp)
              #                    load from s0_exgcd_0 in mem
    ld      s0,136(sp)
              #                    store to r_25 in mem offset legal
    sw      a1,76(sp)
              #                    release a1 with r_25
              #                    store to temp_4_ret_of_exgcd_25 in mem offset legal
    sw      a0,80(sp)
              #                    release a0 with temp_4_ret_of_exgcd_25
              #                    occupy a0 with r_25
              #                    load from r_25 in mem


    lw      a0,76(sp)
    addi    sp,sp,152
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_5_array_ptr_25, tracked: true } |     a3:Freed { symidx: temp_12_array_ele_25, tracked: true } |     a4:Freed { symidx: a_16, tracked: true } |     a5:Freed { symidx: b_16, tracked: true } |     a6:Freed { symidx: x_16, tracked: true } |     a7:Freed { symidx: temp_6_array_ele_25, tracked: true } |     s10:Freed { symidx: temp_11_array_ptr_25, tracked: true } |     s1:Freed { symidx: t_25, tracked: true } |     s2:Freed { symidx: temp_7_index_ptr_25, tracked: true } |     s3:Freed { symidx: temp_13_arithop_25, tracked: true } |     s4:Freed { symidx: temp_8_array_ptr_25, tracked: true } |     s5:Freed { symidx: temp_14_arithop_25, tracked: true } |     s6:Freed { symidx: y_16, tracked: true } |     s7:Freed { symidx: temp_9_array_ele_25, tracked: true } |     s8:Freed { symidx: temp_10_index_ptr_25, tracked: true } |     s9:Freed { symidx: temp_15_arithop_25, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a2:Freed { symidx: temp_5_array_ptr_25, tracked: true } |     a3:Freed { symidx: temp_12_array_ele_25, tracked: true } |     a4:Freed { symidx: a_16, tracked: true } |     a5:Freed { symidx: b_16, tracked: true } |     a6:Freed { symidx: x_16, tracked: true } |     a7:Freed { symidx: temp_6_array_ele_25, tracked: true } |     s10:Freed { symidx: temp_11_array_ptr_25, tracked: true } |     s1:Freed { symidx: t_25, tracked: true } |     s2:Freed { symidx: temp_7_index_ptr_25, tracked: true } |     s3:Freed { symidx: temp_13_arithop_25, tracked: true } |     s4:Freed { symidx: temp_8_array_ptr_25, tracked: true } |     s5:Freed { symidx: temp_14_arithop_25, tracked: true } |     s6:Freed { symidx: y_16, tracked: true } |     s7:Freed { symidx: temp_9_array_ele_25, tracked: true } |     s8:Freed { symidx: temp_10_index_ptr_25, tracked: true } |     s9:Freed { symidx: temp_15_arithop_25, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 112|s0_main:8 at 104|a:4 at 100|b:4 at 96|temp_16_array_init_ptr:8 at 88|temp_17_array_init_ptr:8 at 80|x:4 at 76|none:4 at 72|temp_18_array_init_ptr:8 at 64|temp_19_array_init_ptr:8 at 56|y:4 at 52|temp_20_ret_of_exgcd:4 at 48|temp_21_index_ptr:8 at 40|temp_22_array_ptr:8 at 32|temp_23_array_ele:4 at 28|temp_24_arithop:4 at 24|temp_25_arithop:4 at 20|temp_26_arithop:4 at 16|temp_27_array_ptr:8 at 8|temp_28_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-120
              #                    store to ra_main_0 in mem offset legal
    sd      ra,112(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,104(sp)
    addi    s0,sp,120
              #                          alloc i32 a_32 
              #                          alloc i32 b_32 
              #                          alloc ptr->i32 temp_16_array_init_ptr_32 
              #                          alloc ptr->i32 temp_17_array_init_ptr_32 
              #                          alloc Array:i32:[Some(1_0)] x_32 
              #                          alloc ptr->i32 temp_18_array_init_ptr_32 
              #                          alloc ptr->i32 temp_19_array_init_ptr_32 
              #                          alloc Array:i32:[Some(1_0)] y_32 
              #                          alloc i32 temp_20_ret_of_exgcd_32 
              #                          alloc ptr->i32 temp_21_index_ptr_32 
              #                          alloc ptr->i32 temp_22_array_ptr_32 
              #                          alloc i32 temp_23_array_ele_32 
              #                          alloc i32 temp_24_arithop_32 
              #                          alloc i32 temp_25_arithop_32 
              #                          alloc i32 temp_26_arithop_32 
              #                          alloc ptr->i32 temp_27_array_ptr_32 
              #                          alloc i32 temp_28_array_ele_32 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          a_32 = i32 7_0 
              #                    occupy a0 with a_32
    li      a0, 7
              #                    free a0
              #                          b_32 = i32 15_0 
              #                    occupy a1 with b_32
    li      a1, 15
              #                    free a1
              #                          new_var x_32:Array:i32:[Some(1_0)] 
              #                          new_var temp_16_array_init_ptr_32:ptr->i32 
              #                          temp_16_array_init_ptr_32 = getelementptr x_32:Array:i32:[Some(1_0)] [] 
              #                    occupy a2 with temp_16_array_init_ptr_32
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,76
              #                    free a2
              #                           Call void memset_0(temp_16_array_init_ptr_32, 0_0, 4_0) 
              #                    saved register dumping to mem
              #                    store to a_32 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with a_32
              #                    store to b_32 in mem offset legal
    sw      a1,96(sp)
              #                    release a1 with b_32
              #                    store to temp_16_array_init_ptr_32 in mem offset legal
    sd      a2,88(sp)
              #                    release a2 with temp_16_array_init_ptr_32
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_16_array_init_ptr_32_0
              #                    load from temp_16_array_init_ptr_32 in mem
    ld      a0,88(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_4_0_0
    li      a2, 4
              #                    arg load ended


    call    memset
              #                          new_var temp_17_array_init_ptr_32:ptr->i32 
              #                          temp_17_array_init_ptr_32 = getelementptr x_32:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a0 with temp_17_array_init_ptr_32
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,76
              #                    free a0
              #                          store 1_0:i32 temp_17_array_init_ptr_32:ptr->i32 
              #                    occupy a0 with temp_17_array_init_ptr_32
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu x_32:102 
              #                          x_32 = chi x_32:102 
              #                          new_var y_32:Array:i32:[Some(1_0)] 
              #                          new_var temp_18_array_init_ptr_32:ptr->i32 
              #                          temp_18_array_init_ptr_32 = getelementptr y_32:Array:i32:[Some(1_0)] [] 
              #                    occupy a4 with temp_18_array_init_ptr_32
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,52
              #                    free a4
              #                           Call void memset_0(temp_18_array_init_ptr_32, 0_0, 4_0) 
              #                    saved register dumping to mem
              #                    store to temp_17_array_init_ptr_32 in mem offset legal
    sd      a0,80(sp)
              #                    release a0 with temp_17_array_init_ptr_32
              #                    store to temp_18_array_init_ptr_32 in mem offset legal
    sd      a4,64(sp)
              #                    release a4 with temp_18_array_init_ptr_32
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_18_array_init_ptr_32_0
              #                    load from temp_18_array_init_ptr_32 in mem
    ld      a0,64(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_4_0_0
    li      a2, 4
              #                    arg load ended


    call    memset
              #                          new_var temp_19_array_init_ptr_32:ptr->i32 
              #                          temp_19_array_init_ptr_32 = getelementptr y_32:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a0 with temp_19_array_init_ptr_32
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
              #                    free a0
              #                          store 1_0:i32 temp_19_array_init_ptr_32:ptr->i32 
              #                    occupy a0 with temp_19_array_init_ptr_32
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu y_32:114 
              #                          y_32 = chi y_32:114 
              #                          new_var temp_20_ret_of_exgcd_32:i32 
              #                          temp_20_ret_of_exgcd_32 =  Call i32 exgcd_0(a_32, b_32, x_32, y_32) 
              #                    saved register dumping to mem
              #                    store to temp_19_array_init_ptr_32 in mem offset legal
    sd      a0,56(sp)
              #                    release a0 with temp_19_array_init_ptr_32
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_32_0
              #                    load from a_32 in mem


    lw      a0,100(sp)
              #                    occupy a1 with _anonymous_of_b_32_0
              #                    load from b_32 in mem


    lw      a1,96(sp)
              #                    occupy a2 with _anonymous_of_x_32_0
              #                    load from x_32 in mem
    lw      a2,76(sp)
              #                    occupy a3 with _anonymous_of_y_32_0
              #                    load from y_32 in mem
    lw      a3,52(sp)
              #                    arg load ended


    call    exgcd
              #                    store to temp_20_ret_of_exgcd_32 in mem offset legal
    sw      a0,48(sp)
              #                          new_var temp_21_index_ptr_32:ptr->i32 
              #                          temp_21_index_ptr_32 = getelementptr x_32:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a1 with temp_21_index_ptr_32
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,76
              #                    free a1
              #                          new_var temp_22_array_ptr_32:ptr->i32 
              #                          temp_22_array_ptr_32 = getelementptr x_32:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a5 with temp_22_array_ptr_32
    li      a5, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    found literal reg Some(a3) already exist with 0_0
              #                    occupy a3 with 0_0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a2,a3
              #                    free a2
              #                    free a3
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,76
              #                    free a5
              #                          new_var temp_23_array_ele_32:i32 
              #                          temp_23_array_ele_32 = load temp_22_array_ptr_32:ptr->i32 
              #                    occupy a5 with temp_22_array_ptr_32
              #                    occupy a7 with temp_23_array_ele_32
    lw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                          new_var temp_24_arithop_32:i32 
              #                          temp_24_arithop_32 = Mod i32 temp_23_array_ele_32, b_32 
              #                    occupy a7 with temp_23_array_ele_32
              #                    occupy s1 with b_32
              #                    load from b_32 in mem


    lw      s1,96(sp)
              #                    occupy s2 with temp_24_arithop_32
              #                    load from temp_24_arithop_32 in mem


    lw      s2,24(sp)
    rem     s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                          new_var temp_25_arithop_32:i32 
              #                          temp_25_arithop_32 = Add i32 temp_24_arithop_32, b_32 
              #                    occupy s2 with temp_24_arithop_32
              #                    occupy s1 with b_32
              #                    occupy s3 with temp_25_arithop_32
    add     s3,s2,s1
              #                    free s2
              #                    free s1
              #                    free s3
              #                          new_var temp_26_arithop_32:i32 
              #                          temp_26_arithop_32 = Mod i32 temp_25_arithop_32, b_32 
              #                    occupy s3 with temp_25_arithop_32
              #                    occupy s1 with b_32
              #                    occupy s4 with temp_26_arithop_32
              #                    load from temp_26_arithop_32 in mem


    lw      s4,16(sp)
    rem     s4,s3,s1
              #                    free s3
              #                    free s1
              #                    free s4
              #                          store temp_26_arithop_32:i32 temp_21_index_ptr_32:ptr->i32 
              #                    occupy a1 with temp_21_index_ptr_32
              #                    occupy s4 with temp_26_arithop_32
    sw      s4,0(a1)
              #                    free s4
              #                    free a1
              #                          mu x_32:139 
              #                          x_32 = chi x_32:139 
              #                          new_var temp_27_array_ptr_32:ptr->i32 
              #                          temp_27_array_ptr_32 = getelementptr x_32:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy s5 with temp_27_array_ptr_32
    li      s5, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    found literal reg Some(a3) already exist with 0_0
              #                    occupy a3 with 0_0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a2,a3
              #                    free a2
              #                    free a3
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,76
              #                    free s5
              #                          new_var temp_28_array_ele_32:i32 
              #                          temp_28_array_ele_32 = load temp_27_array_ptr_32:ptr->i32 
              #                    occupy s5 with temp_27_array_ptr_32
              #                    occupy s7 with temp_28_array_ele_32
    lw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                           Call void putint_0(temp_28_array_ele_32) 
              #                    saved register dumping to mem
              #                    store to b_32 in mem offset legal
    sw      s1,96(sp)
              #                    release s1 with b_32
              #                    store to temp_24_arithop_32 in mem offset legal
    sw      s2,24(sp)
              #                    release s2 with temp_24_arithop_32
              #                    store to temp_25_arithop_32 in mem offset legal
    sw      s3,20(sp)
              #                    release s3 with temp_25_arithop_32
              #                    store to temp_26_arithop_32 in mem offset legal
    sw      s4,16(sp)
              #                    release s4 with temp_26_arithop_32
              #                    store to temp_27_array_ptr_32 in mem offset legal
    sd      s5,8(sp)
              #                    release s5 with temp_27_array_ptr_32
              #                    store to temp_28_array_ele_32 in mem offset legal
    sw      s7,4(sp)
              #                    release s7 with temp_28_array_ele_32
              #                    store to temp_20_ret_of_exgcd_32 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_20_ret_of_exgcd_32
              #                    store to temp_21_index_ptr_32 in mem offset legal
    sd      a1,40(sp)
              #                    release a1 with temp_21_index_ptr_32
              #                    store to temp_22_array_ptr_32 in mem offset legal
    sd      a5,32(sp)
              #                    release a5 with temp_22_array_ptr_32
              #                    store to temp_23_array_ele_32 in mem offset legal
    sw      a7,28(sp)
              #                    release a7 with temp_23_array_ele_32
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_28_array_ele_32_0
              #                    load from temp_28_array_ele_32 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,112(sp)
              #                    load from s0_main_0 in mem
    ld      s0,104(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,120
              #                    free a0
    ret
              #                    regtab 
