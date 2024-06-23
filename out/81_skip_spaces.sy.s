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
              #                    mem layout:|ra_main:8 at 472|s0_main:8 at 464|arr:400 at 64|i:4 at 60|sum:4 at 56|temp_0_ret_of_getint:4 at 52|temp_1_:1 at 51|none:3 at 48|temp_2_index_ptr:8 at 40|temp_3_ret_of_getint:4 at 36|temp_4_arithop:4 at 32|temp_5_:1 at 31|none:3 at 28|temp_6_arithop:4 at 24|temp_7_array_ptr:8 at 16|temp_8_array_ele:4 at 12|temp_9_arithop:4 at 8|temp_10_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-480
              #                    store to ra_main_0 in mem offset legal
    sd      ra,472(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,464(sp)
    addi    s0,sp,480
              #                          alloc Array:i32:[Some(100_0)] arr_17 
              #                          alloc i32 i_17 
              #                          alloc i32 sum_17 
              #                          alloc i32 temp_0_ret_of_getint_19 
              #                          alloc i1 temp_1__103 
              #                          alloc ptr->i32 temp_2_index_ptr_21 
              #                          alloc i32 temp_3_ret_of_getint_21 
              #                          alloc i32 temp_4_arithop_21 
              #                          alloc i1 temp_5__227 
              #                          alloc i32 temp_6_arithop_26 
              #                          alloc ptr->i32 temp_7_array_ptr_26 
              #                          alloc i32 temp_8_array_ele_26 
              #                          alloc i32 temp_9_arithop_26 
              #                          alloc i32 temp_10_arithop_17 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var arr_17:Array:i32:[Some(100_0)] 
              #                          i_17 = i32 0_0 
              #                    occupy a0 with i_17
    li      a0, 0
              #                    free a0
              #                          sum_17 = i32 0_0 
              #                    occupy a1 with sum_17
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_20 
    j       .while.head_20
              #                    regtab     a0:Freed { symidx: i_17, tracked: true } |     a1:Freed { symidx: sum_17, tracked: true } | 
              #                          label while.head_20: 
.while.head_20:
              #                          new_var temp_0_ret_of_getint_19:i32 
              #                          temp_0_ret_of_getint_19 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to i_17 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with i_17
              #                    store to sum_17 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with sum_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_0_ret_of_getint_19 in mem offset legal
    sw      a0,52(sp)
              #                          new_var temp_1__103:i1 
              #                          temp_1__103 = icmp i32 Ne temp_0_ret_of_getint_19, 0_0 
              #                    occupy a0 with temp_0_ret_of_getint_19
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_1__103
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_1__103, label while.body_20, label while.exit_20 
              #                    occupy a2 with temp_1__103
              #                    free a2
              #                    occupy a2 with temp_1__103
    bnez    a2, .while.body_20
              #                    free a2
    j       .while.exit_20
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getint_19, tracked: true } |     a2:Freed { symidx: temp_1__103, tracked: true } | 
              #                          label while.body_20: 
.while.body_20:
              #                          new_var temp_2_index_ptr_21:ptr->i32 
              #                          temp_2_index_ptr_21 = getelementptr arr_17:Array:i32:[Some(100_0)] [Some(i_17)] 
              #                    occupy a1 with temp_2_index_ptr_21
    li      a1, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with i_17
              #                    load from i_17 in mem


    lw      a4,60(sp)
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,64
              #                    free a1
              #                          new_var temp_3_ret_of_getint_21:i32 
              #                          temp_3_ret_of_getint_21 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_0_ret_of_getint_19 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getint_19
              #                    store to temp_2_index_ptr_21 in mem offset legal
    sd      a1,40(sp)
              #                    release a1 with temp_2_index_ptr_21
              #                    store to temp_1__103 in mem offset legal
    sb      a2,51(sp)
              #                    release a2 with temp_1__103
              #                    store to i_17 in mem offset legal
    sw      a4,60(sp)
              #                    release a4 with i_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_3_ret_of_getint_21 in mem offset legal
    sw      a0,36(sp)
              #                          store temp_3_ret_of_getint_21:i32 temp_2_index_ptr_21:ptr->i32 
              #                    occupy a1 with temp_2_index_ptr_21
              #                    load from temp_2_index_ptr_21 in mem
    ld      a1,40(sp)
              #                    occupy a0 with temp_3_ret_of_getint_21
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu arr_17:39 
              #                          arr_17 = chi arr_17:39 
              #                          new_var temp_4_arithop_21:i32 
              #                          temp_4_arithop_21 = Add i32 i_17, 1_0 
              #                    occupy a2 with i_17
              #                    load from i_17 in mem


    lw      a2,60(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_4_arithop_21
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          i_17 = i32 temp_4_arithop_21 
              #                    occupy a4 with temp_4_arithop_21
              #                    occupy a2 with i_17
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_20 
              #                    store to temp_3_ret_of_getint_21 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_3_ret_of_getint_21
              #                    store to i_17 in mem offset legal
    sw      a2,60(sp)
              #                    release a2 with i_17
              #                    store to temp_2_index_ptr_21 in mem offset legal
    sd      a1,40(sp)
              #                    release a1 with temp_2_index_ptr_21
              #                    store to temp_4_arithop_21 in mem offset legal
    sw      a4,32(sp)
              #                    release a4 with temp_4_arithop_21
              #                    occupy a0 with _anonymous_of_i_17_0
              #                    load from i_17 in mem


    lw      a0,60(sp)
              #                    occupy a1 with _anonymous_of_sum_17_0
              #                    load from sum_17 in mem


    lw      a1,56(sp)
    j       .while.head_20
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getint_19, tracked: true } |     a2:Freed { symidx: temp_1__103, tracked: true } | 
              #                          label while.exit_20: 
.while.exit_20:
              #                          new_var temp_5__227:i1 
              #                          temp_5__227 = icmp i32 Ne i_17, 0_0 
              #                    occupy a1 with i_17
              #                    load from i_17 in mem


    lw      a1,60(sp)
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_5__227
    xor     a4,a1,a3
    snez    a4, a4
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_5__227, label while.body_25, label while.exit_25 
              #                    occupy a4 with temp_5__227
              #                    free a4
              #                    occupy a4 with temp_5__227
    bnez    a4, .while.body_25
              #                    free a4
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getint_19, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: temp_1__103, tracked: true } |     a4:Freed { symidx: temp_5__227, tracked: true } | 
              #                          label while.body_25: 
.while.body_25:
              #                          new_var temp_6_arithop_26:i32 
              #                          temp_6_arithop_26 = Sub i32 i_17, 1_0 
              #                    occupy a1 with i_17
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_6_arithop_26
              #                    regtab:    a0:Freed { symidx: temp_0_ret_of_getint_19, tracked: true } |     a1:Occupied { symidx: i_17, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_1__103, tracked: true } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_5__227, tracked: true } |     a5:Occupied { symidx: temp_6_arithop_26, tracked: true, occupy_count: 1 } | 


    sub     a5,a1,a3
              #                    free a1
              #                    free a3
              #                    free a5
              #                          i_17 = i32 temp_6_arithop_26 
              #                    occupy a5 with temp_6_arithop_26
              #                    occupy a1 with i_17
    mv      a1, a5
              #                    free a5
              #                    free a1
              #                          new_var temp_7_array_ptr_26:ptr->i32 
              #                          temp_7_array_ptr_26 = getelementptr arr_17:Array:i32:[Some(100_0)] [Some(i_17)] 
              #                    occupy a6 with temp_7_array_ptr_26
    li      a6, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a1 with i_17
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a3,a1
              #                    free a3
              #                    free a1
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,64
              #                    free a6
              #                          new_var temp_8_array_ele_26:i32 
              #                          temp_8_array_ele_26 = load temp_7_array_ptr_26:ptr->i32 
              #                    occupy a6 with temp_7_array_ptr_26
              #                    occupy s1 with temp_8_array_ele_26
    lw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                          new_var temp_9_arithop_26:i32 
              #                          temp_9_arithop_26 = Add i32 sum_17, temp_8_array_ele_26 
              #                    occupy s2 with sum_17
              #                    load from sum_17 in mem


    lw      s2,56(sp)
              #                    occupy s1 with temp_8_array_ele_26
              #                    occupy s3 with temp_9_arithop_26
    add     s3,s2,s1
              #                    free s2
              #                    free s1
              #                    free s3
              #                          sum_17 = i32 temp_9_arithop_26 
              #                    occupy s3 with temp_9_arithop_26
              #                    occupy s2 with sum_17
    mv      s2, s3
              #                    free s3
              #                    free s2
              #                          jump label: while.exit_20 
              #                    store to sum_17 in mem offset legal
    sw      s2,56(sp)
              #                    release s2 with sum_17
              #                    store to temp_7_array_ptr_26 in mem offset legal
    sd      a6,16(sp)
              #                    release a6 with temp_7_array_ptr_26
              #                    store to temp_6_arithop_26 in mem offset legal
    sw      a5,24(sp)
              #                    release a5 with temp_6_arithop_26
              #                    store to i_17 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with i_17
              #                    store to temp_8_array_ele_26 in mem offset legal
    sw      s1,12(sp)
              #                    release s1 with temp_8_array_ele_26
              #                    store to temp_9_arithop_26 in mem offset legal
    sw      s3,8(sp)
              #                    release s3 with temp_9_arithop_26
              #                    store to temp_5__227 in mem offset legal
    sb      a4,31(sp)
              #                    release a4 with temp_5__227
    j       .while.exit_20
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getint_19, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: temp_1__103, tracked: true } |     a4:Freed { symidx: temp_5__227, tracked: true } | 
              #                          label while.exit_25: 
.while.exit_25:
              #                          new_var temp_10_arithop_17:i32 
              #                          temp_10_arithop_17 = Mod i32 sum_17, 79_0 
              #                    occupy a3 with sum_17
              #                    load from sum_17 in mem


    lw      a3,56(sp)
              #                    occupy a5 with 79_0
    li      a5, 79
              #                    occupy a6 with temp_10_arithop_17
              #                    load from temp_10_arithop_17 in mem


    lw      a6,4(sp)
    rem     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          ret temp_10_arithop_17 
              #                    load from ra_main_0 in mem
    ld      ra,472(sp)
              #                    load from s0_main_0 in mem
    ld      s0,464(sp)
              #                    store to temp_10_arithop_17 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_10_arithop_17
              #                    store to temp_0_ret_of_getint_19 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getint_19
              #                    occupy a0 with temp_10_arithop_17
              #                    load from temp_10_arithop_17 in mem


    lw      a0,4(sp)
    addi    sp,sp,480
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: temp_1__103, tracked: true } |     a3:Freed { symidx: sum_17, tracked: true } |     a4:Freed { symidx: temp_5__227, tracked: true } | 
