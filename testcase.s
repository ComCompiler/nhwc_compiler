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
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 160|s0_main:8 at 152|temp_0_array_init_ptr:8 at 144|temp_1_array_init_ptr:8 at 136|temp_2_array_init_ptr:8 at 128|temp_3_array_init_ptr:8 at 120|temp_4_array_init_ptr:8 at 112|temp_5_array_init_ptr:8 at 104|temp_6_array_init_ptr:8 at 96|d:32 at 64|temp_7_array_ptr:8 at 56|temp_8_array_ele_ptr:8 at 48|temp_9_array_ptr:8 at 40|temp_10_array_ele_ptr:8 at 32|temp_11_array_ptr:8 at 24|temp_12_array_ele_ptr:8 at 16|temp_13_array_ptr:8 at 8|temp_14_array_ele_ptr:8 at 0
    addi    sp,sp,-168
              #                    store to ra_main_0 in mem offset legal
    sd      ra,160(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,152(sp)
    addi    s0,sp,168
              #                          alloc ptr->i32 temp_0_array_init_ptr_17 
              #                          alloc ptr->i32 temp_1_array_init_ptr_17 
              #                          alloc ptr->i32 temp_2_array_init_ptr_17 
              #                          alloc ptr->i32 temp_3_array_init_ptr_17 
              #                          alloc ptr->i32 temp_4_array_init_ptr_17 
              #                          alloc ptr->i32 temp_5_array_init_ptr_17 
              #                          alloc ptr->i32 temp_6_array_init_ptr_17 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] d_17 
              #                          alloc Array:i32:[Some(2_0)] temp_7_array_ptr_17 
              #                          alloc ptr->i32 temp_8_array_ele_ptr_17 
              #                          alloc Array:i32:[Some(2_0)] temp_9_array_ptr_17 
              #                          alloc ptr->i32 temp_10_array_ele_ptr_17 
              #                          alloc Array:i32:[Some(2_0)] temp_11_array_ptr_17 
              #                          alloc ptr->i32 temp_12_array_ele_ptr_17 
              #                          alloc Array:i32:[Some(2_0)] temp_13_array_ptr_17 
              #                          alloc ptr->i32 temp_14_array_ele_ptr_17 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                          new_var d_17:Array:i32:[Some(4_0), Some(2_0)] 
              #                          new_var temp_0_array_init_ptr_17:ptr->i32 
              #                          temp_0_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy a0 with temp_0_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                           Call void memset_0(temp_0_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_0_array_init_ptr_17
              #                    store to temp_0_array_init_ptr_17 in mem offset legal
    sd      a0,144(sp)
              #                    release a0 with temp_0_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_array_init_ptr_17_0
              #                    load from temp_0_array_init_ptr_17 in mem
    ld      a0,144(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                          new_var temp_1_array_init_ptr_17:ptr->i32 
              #                          temp_1_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a0 with temp_1_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with 3_0
    li      a2, 3
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                          store 7_0:i32 temp_1_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_1_array_init_ptr_17
              #                    occupy a7 with 7_0
    li      a7, 7
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                          mu d_17:24 
              #                          d_17 = chi d_17:24 
              #                          new_var temp_2_array_init_ptr_17:ptr->i32 
              #                          temp_2_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s1 with temp_2_array_init_ptr_17
    li      s1, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a1,a5
              #                    free a1
              #                    free a5
    add     s1,s1,s2
              #                    free s2
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a4,a5
              #                    free a4
              #                    free a5
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,64
              #                    free s1
              #                          store 1_0:i32 temp_2_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s1 with temp_2_array_init_ptr_17
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
    sw      a4,0(s1)
              #                    free a4
              #                    free s1
              #                          mu d_17:30 
              #                          d_17 = chi d_17:30 
              #                          new_var temp_3_array_init_ptr_17:ptr->i32 
              #                          temp_3_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy s4 with temp_3_array_init_ptr_17
    li      s4, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a1,a5
              #                    free a1
              #                    free a5
    add     s4,s4,s5
              #                    free s5
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a4,s6
              #                    free a4
              #                    free s6
    add     s4,s4,s7
              #                    free s7
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,64
              #                    free s4
              #                          store 2_0:i32 temp_3_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s4 with temp_3_array_init_ptr_17
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
    sw      a1,0(s4)
              #                    free a1
              #                    free s4
              #                          mu d_17:36 
              #                          d_17 = chi d_17:36 
              #                          new_var temp_4_array_init_ptr_17:ptr->i32 
              #                          temp_4_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a4 with temp_4_array_init_ptr_17
    li      a4, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,a1,s6
              #                    free a1
              #                    free s6
    add     a4,a4,s8
              #                    free s8
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a1,a5
              #                    free a1
              #                    free a5
    add     a4,a4,s6
              #                    free s6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,64
              #                    free a4
              #                          store 3_0:i32 temp_4_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a4 with temp_4_array_init_ptr_17
              #                    found literal reg Some(a2) already exist with 3_0
              #                    occupy a2 with 3_0
    sw      a2,0(a4)
              #                    free a2
              #                    free a4
              #                          mu d_17:42 
              #                          d_17 = chi d_17:42 
              #                          new_var temp_5_array_init_ptr_17:ptr->i32 
              #                          temp_5_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a1 with temp_5_array_init_ptr_17
    li      a1, 0
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy s9 with 2_0
    li      s9, 2
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a5,s9
              #                    free a5
              #                    free s9
    add     a1,a1,s10
              #                    free s10
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a5,s9
              #                    free a5
              #                    free s9
    add     a1,a1,s10
              #                    free s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,64
              #                    free a1
              #                    occupy a1 with temp_5_array_init_ptr_17
              #                    store to temp_5_array_init_ptr_17 in mem offset legal
    sd      a1,104(sp)
              #                    release a1 with temp_5_array_init_ptr_17
              #                          store 5_0:i32 temp_5_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a1 with temp_5_array_init_ptr_17
              #                    load from temp_5_array_init_ptr_17 in mem
    ld      a1,104(sp)
              #                    occupy a5 with 5_0
    li      a5, 5
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                    occupy a1 with temp_5_array_init_ptr_17
              #                    store to temp_5_array_init_ptr_17 in mem offset legal
    sd      a1,104(sp)
              #                    release a1 with temp_5_array_init_ptr_17
              #                          mu d_17:48 
              #                          d_17 = chi d_17:48 
              #                          new_var temp_6_array_init_ptr_17:ptr->i32 
              #                          temp_6_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
              #                    occupy a1 with temp_6_array_init_ptr_17
    li      a1, 0
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    found literal reg Some(a2) already exist with 3_0
              #                    occupy a2 with 3_0
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,a5,a2
              #                    free a5
              #                    free a2
    add     a1,a1,s9
              #                    free s9
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,a2,a5
              #                    free a2
              #                    free a5
    add     a1,a1,s9
              #                    free s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,64
              #                    free a1
              #                          store 8_0:i32 temp_6_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a1 with temp_6_array_init_ptr_17
              #                    occupy a2 with 8_0
    li      a2, 8
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu d_17:54 
              #                          d_17 = chi d_17:54 
              #                          new_var temp_7_array_ptr_17:Array:i32:[Some(2_0)] 
              #                          temp_7_array_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0)] 
              #                    occupy a2 with temp_7_array_ptr_17
    li      a2, 0
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a5,s9
              #                    free a5
              #                    free s9
    add     a2,a2,s10
              #                    free s10
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,64
              #                    free a2
              #                    occupy a2 with temp_7_array_ptr_17
              #                    store to temp_7_array_ptr_17 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with temp_7_array_ptr_17
              #                          new_var temp_8_array_ele_ptr_17:ptr->i32 
              #                          temp_8_array_ele_ptr_17 = getelementptr temp_7_array_ptr_17:Array:i32:[Some(2_0)] [] 
              #                    occupy a2 with temp_8_array_ele_ptr_17
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,56
              #                    free a2
              #                    occupy a2 with temp_8_array_ele_ptr_17
              #                    store to temp_8_array_ele_ptr_17 in mem offset legal
    sd      a2,48(sp)
              #                    release a2 with temp_8_array_ele_ptr_17
              #                           Call void putarray_0(2_0, temp_8_array_ele_ptr_17) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_2_array_init_ptr_17
              #                    store to temp_2_array_init_ptr_17 in mem offset legal
    sd      s1,128(sp)
              #                    release s1 with temp_2_array_init_ptr_17
              #                    occupy s4 with temp_3_array_init_ptr_17
              #                    store to temp_3_array_init_ptr_17 in mem offset legal
    sd      s4,120(sp)
              #                    release s4 with temp_3_array_init_ptr_17
              #                    occupy a0 with temp_1_array_init_ptr_17
              #                    store to temp_1_array_init_ptr_17 in mem offset legal
    sd      a0,136(sp)
              #                    release a0 with temp_1_array_init_ptr_17
              #                    occupy a1 with temp_6_array_init_ptr_17
              #                    store to temp_6_array_init_ptr_17 in mem offset legal
    sd      a1,96(sp)
              #                    release a1 with temp_6_array_init_ptr_17
              #                    occupy a4 with temp_4_array_init_ptr_17
              #                    store to temp_4_array_init_ptr_17 in mem offset legal
    sd      a4,112(sp)
              #                    release a4 with temp_4_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_temp_8_array_ele_ptr_17_0
              #                    load from temp_8_array_ele_ptr_17 in mem
    ld      a1,48(sp)
              #                    arg load ended


    call    putarray
              #                          new_var temp_9_array_ptr_17:Array:i32:[Some(2_0)] 
              #                          temp_9_array_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0)] 
              #                    occupy a0 with temp_9_array_ptr_17
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                          new_var temp_10_array_ele_ptr_17:ptr->i32 
              #                          temp_10_array_ele_ptr_17 = getelementptr temp_9_array_ptr_17:Array:i32:[Some(2_0)] [] 
              #                    occupy a4 with temp_10_array_ele_ptr_17
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,40
              #                    free a4
              #                           Call void putarray_0(2_0, temp_10_array_ele_ptr_17) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_9_array_ptr_17
              #                    store to temp_9_array_ptr_17 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_9_array_ptr_17
              #                    occupy a4 with temp_10_array_ele_ptr_17
              #                    store to temp_10_array_ele_ptr_17 in mem offset legal
    sd      a4,32(sp)
              #                    release a4 with temp_10_array_ele_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_temp_10_array_ele_ptr_17_0
              #                    load from temp_10_array_ele_ptr_17 in mem
    ld      a1,32(sp)
              #                    arg load ended


    call    putarray
              #                          new_var temp_11_array_ptr_17:Array:i32:[Some(2_0)] 
              #                          temp_11_array_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0)] 
              #                    occupy a0 with temp_11_array_ptr_17
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                          new_var temp_12_array_ele_ptr_17:ptr->i32 
              #                          temp_12_array_ele_ptr_17 = getelementptr temp_11_array_ptr_17:Array:i32:[Some(2_0)] [] 
              #                    occupy a4 with temp_12_array_ele_ptr_17
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,24
              #                    free a4
              #                           Call void putarray_0(2_0, temp_12_array_ele_ptr_17) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_11_array_ptr_17
              #                    store to temp_11_array_ptr_17 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_11_array_ptr_17
              #                    occupy a4 with temp_12_array_ele_ptr_17
              #                    store to temp_12_array_ele_ptr_17 in mem offset legal
    sd      a4,16(sp)
              #                    release a4 with temp_12_array_ele_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_temp_12_array_ele_ptr_17_0
              #                    load from temp_12_array_ele_ptr_17 in mem
    ld      a1,16(sp)
              #                    arg load ended


    call    putarray
              #                          new_var temp_13_array_ptr_17:Array:i32:[Some(2_0)] 
              #                          temp_13_array_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0)] 
              #                    occupy a0 with temp_13_array_ptr_17
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with 3_0
    li      a2, 3
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                          new_var temp_14_array_ele_ptr_17:ptr->i32 
              #                          temp_14_array_ele_ptr_17 = getelementptr temp_13_array_ptr_17:Array:i32:[Some(2_0)] [] 
              #                    occupy a4 with temp_14_array_ele_ptr_17
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,8
              #                    free a4
              #                           Call void putarray_0(2_0, temp_14_array_ele_ptr_17) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_13_array_ptr_17
              #                    store to temp_13_array_ptr_17 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_13_array_ptr_17
              #                    occupy a4 with temp_14_array_ele_ptr_17
              #                    store to temp_14_array_ele_ptr_17 in mem offset legal
    sd      a4,0(sp)
              #                    release a4 with temp_14_array_ele_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_temp_14_array_ele_ptr_17_0
              #                    load from temp_14_array_ele_ptr_17 in mem
    ld      a1,0(sp)
              #                    arg load ended


    call    putarray
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,160(sp)
              #                    load from s0_main_0 in mem
    ld      s0,152(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,168
              #                    free a0
    ret
              #                    regtab  released_gpr_count:18,released_fpr_count:24
