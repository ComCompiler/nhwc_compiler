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
              #                    mem layout:|ra_main:8 at 480|s0_main:8 at 472|temp_0_array_init_ptr:8 at 464|temp_1_array_init_ptr:8 at 456|temp_2_array_init_ptr:8 at 448|temp_3_array_init_ptr:8 at 440|temp_4_array_init_ptr:8 at 432|temp_5_array_init_ptr:8 at 424|a:32 at 392|N:4 at 388|none:4 at 384|temp_6_array_init_ptr:8 at 376|b:32 at 344|temp_7_array_init_ptr:8 at 336|temp_8_array_init_ptr:8 at 328|temp_9_array_init_ptr:8 at 320|temp_10_array_init_ptr:8 at 312|temp_11_array_init_ptr:8 at 304|temp_12_array_init_ptr:8 at 296|temp_13_array_init_ptr:8 at 288|temp_14_array_init_ptr:8 at 280|temp_15_array_init_ptr:8 at 272|c:32 at 240|temp_16_array_ptr:8 at 232|temp_17_array_ele:4 at 228|none:4 at 224|temp_18_array_init_ptr:8 at 216|temp_19_array_init_ptr:8 at 208|temp_20_array_init_ptr:8 at 200|temp_21_array_init_ptr:8 at 192|temp_22_array_init_ptr:8 at 184|temp_23_array_init_ptr:8 at 176|temp_24_array_init_ptr:8 at 168|d:32 at 136|temp_25_array_ptr:8 at 128|temp_26_array_ele:4 at 124|none:4 at 120|temp_27_array_ptr:8 at 112|temp_28_array_ele:4 at 108|none:4 at 104|temp_29_array_init_ptr:8 at 96|temp_30_array_init_ptr:8 at 88|temp_31_array_init_ptr:8 at 80|temp_32_array_init_ptr:8 at 72|temp_33_array_init_ptr:8 at 64|temp_34_array_init_ptr:8 at 56|temp_35_array_init_ptr:8 at 48|temp_36_array_init_ptr:8 at 40|temp_37_array_init_ptr:8 at 32|e:32 at 0
    addi    sp,sp,-488
              #                    store to ra_main_0 in mem offset legal
    sd      ra,480(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,472(sp)
    addi    s0,sp,488
              #                          alloc ptr->i32 temp_0_array_init_ptr_17 
              #                          alloc ptr->i32 temp_1_array_init_ptr_17 
              #                          alloc ptr->i32 temp_2_array_init_ptr_17 
              #                          alloc ptr->i32 temp_3_array_init_ptr_17 
              #                          alloc ptr->i32 temp_4_array_init_ptr_17 
              #                          alloc ptr->i32 temp_5_array_init_ptr_17 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] a_17 
              #                          alloc i32 N_17 
              #                          alloc ptr->i32 temp_6_array_init_ptr_17 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] b_17 
              #                          alloc ptr->i32 temp_7_array_init_ptr_17 
              #                          alloc ptr->i32 temp_8_array_init_ptr_17 
              #                          alloc ptr->i32 temp_9_array_init_ptr_17 
              #                          alloc ptr->i32 temp_10_array_init_ptr_17 
              #                          alloc ptr->i32 temp_11_array_init_ptr_17 
              #                          alloc ptr->i32 temp_12_array_init_ptr_17 
              #                          alloc ptr->i32 temp_13_array_init_ptr_17 
              #                          alloc ptr->i32 temp_14_array_init_ptr_17 
              #                          alloc ptr->i32 temp_15_array_init_ptr_17 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] c_17 
              #                          alloc ptr->i32 temp_16_array_ptr_17 
              #                          alloc i32 temp_17_array_ele_17 
              #                          alloc ptr->i32 temp_18_array_init_ptr_17 
              #                          alloc ptr->i32 temp_19_array_init_ptr_17 
              #                          alloc ptr->i32 temp_20_array_init_ptr_17 
              #                          alloc ptr->i32 temp_21_array_init_ptr_17 
              #                          alloc ptr->i32 temp_22_array_init_ptr_17 
              #                          alloc ptr->i32 temp_23_array_init_ptr_17 
              #                          alloc ptr->i32 temp_24_array_init_ptr_17 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] d_17 
              #                          alloc ptr->i32 temp_25_array_ptr_17 
              #                          alloc i32 temp_26_array_ele_17 
              #                          alloc ptr->i32 temp_27_array_ptr_17 
              #                          alloc i32 temp_28_array_ele_17 
              #                          alloc ptr->i32 temp_29_array_init_ptr_17 
              #                          alloc ptr->i32 temp_30_array_init_ptr_17 
              #                          alloc ptr->i32 temp_31_array_init_ptr_17 
              #                          alloc ptr->i32 temp_32_array_init_ptr_17 
              #                          alloc ptr->i32 temp_33_array_init_ptr_17 
              #                          alloc ptr->i32 temp_34_array_init_ptr_17 
              #                          alloc ptr->i32 temp_35_array_init_ptr_17 
              #                          alloc ptr->i32 temp_36_array_init_ptr_17 
              #                          alloc ptr->i32 temp_37_array_init_ptr_17 
              #                          alloc Array:i32:[Some(4_0), Some(2_0), Some(1_0)] e_17 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var a_17:Array:i32:[Some(4_0), Some(2_0)] 
              #                          new_var temp_0_array_init_ptr_17:ptr->i32 
              #                          temp_0_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy a0 with temp_0_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,392
              #                    free a0
              #                           Call void memset_0(temp_0_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    store to temp_0_array_init_ptr_17 in mem offset legal
    sd      a0,464(sp)
              #                    release a0 with temp_0_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_array_init_ptr_17_0
              #                    load from temp_0_array_init_ptr_17 in mem
    ld      a0,464(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                          new_var temp_1_array_init_ptr_17:ptr->i32 
              #                          temp_1_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_1_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,392
              #                    free a0
              #                          store 2_0:i32 temp_1_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_1_array_init_ptr_17
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu a_17:24 
              #                          a_17 = chi a_17:24 
              #                          new_var temp_2_array_init_ptr_17:ptr->i32 
              #                          temp_2_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a7 with temp_2_array_init_ptr_17
    li      a7, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a1,a5
              #                    free a1
              #                    free a5
    add     a7,a7,s1
              #                    free s1
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a5,a2
              #                    free a5
              #                    free a2
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,392
              #                    free a7
              #                          store 3_0:i32 temp_2_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a7 with temp_2_array_init_ptr_17
              #                    occupy s3 with 3_0
    li      s3, 3
    sw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          mu a_17:30 
              #                          a_17 = chi a_17:30 
              #                          new_var temp_3_array_init_ptr_17:ptr->i32 
              #                          temp_3_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
              #                    occupy s4 with temp_3_array_init_ptr_17
    li      s4, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a1,a5
              #                    free a1
              #                    free a5
    add     s4,s4,s5
              #                    free s5
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a5,a4
              #                    free a5
              #                    free a4
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,392
              #                    free s4
              #                          store 4_0:i32 temp_3_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s4 with temp_3_array_init_ptr_17
              #                    occupy s7 with 4_0
    li      s7, 4
    sw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          mu a_17:36 
              #                          a_17 = chi a_17:36 
              #                          new_var temp_4_array_init_ptr_17:ptr->i32 
              #                          temp_4_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy s8 with temp_4_array_init_ptr_17
    li      s8, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    occupy s9 with 2_0
    li      s9, 2
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a1,s9
              #                    free a1
              #                    free s9
    add     s8,s8,s10
              #                    free s10
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a5,a2
              #                    free a5
              #                    free a2
    add     s8,s8,s11
              #                    free s11
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,392
              #                    free s8
              #                          store 7_0:i32 temp_4_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s8 with temp_4_array_init_ptr_17
              #                    occupy a1 with 7_0
    li      a1, 7
    sw      a1,0(s8)
              #                    free a1
              #                    free s8
              #                          mu a_17:42 
              #                          a_17 = chi a_17:42 
              #                          new_var temp_5_array_init_ptr_17:ptr->i32 
              #                          temp_5_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a1 with temp_5_array_init_ptr_17
    li      a1, 0
              #                    found literal reg Some(s9) already exist with 2_0
              #                    occupy s9 with 2_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,s9,a2
              #                    free s9
              #                    free a2
    add     a1,a1,a3
              #                    free a3
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a5,a2
              #                    free a5
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,392
              #                    free a1
              #                          store 1_0:i32 temp_5_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a1 with temp_5_array_init_ptr_17
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          mu a_17:48 
              #                          a_17 = chi a_17:48 
              #                          N_17 = i32 3_0 
              #                    occupy a2 with N_17
    li      a2, 3
              #                    free a2
              #                          new_var b_17:Array:i32:[Some(4_0), Some(2_0)] 
              #                          new_var temp_6_array_init_ptr_17:ptr->i32 
              #                          temp_6_array_init_ptr_17 = getelementptr b_17:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy a3 with temp_6_array_init_ptr_17
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,344
              #                    free a3
              #                           Call void memset_0(temp_6_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    store to temp_3_array_init_ptr_17 in mem offset legal
    sd      s4,440(sp)
              #                    release s4 with temp_3_array_init_ptr_17
              #                    store to temp_4_array_init_ptr_17 in mem offset legal
    sd      s8,432(sp)
              #                    release s8 with temp_4_array_init_ptr_17
              #                    store to temp_1_array_init_ptr_17 in mem offset legal
    sd      a0,456(sp)
              #                    release a0 with temp_1_array_init_ptr_17
              #                    store to temp_5_array_init_ptr_17 in mem offset legal
    sd      a1,424(sp)
              #                    release a1 with temp_5_array_init_ptr_17
              #                    store to N_17 in mem offset legal
    sw      a2,388(sp)
              #                    release a2 with N_17
              #                    store to temp_6_array_init_ptr_17 in mem offset legal
    sd      a3,376(sp)
              #                    release a3 with temp_6_array_init_ptr_17
              #                    store to temp_2_array_init_ptr_17 in mem offset legal
    sd      a7,448(sp)
              #                    release a7 with temp_2_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_6_array_init_ptr_17_0
              #                    load from temp_6_array_init_ptr_17 in mem
    ld      a0,376(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                          new_var c_17:Array:i32:[Some(4_0), Some(2_0)] 
              #                          new_var temp_7_array_init_ptr_17:ptr->i32 
              #                          temp_7_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy a0 with temp_7_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,240
              #                    free a0
              #                           Call void memset_0(temp_7_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    store to temp_7_array_init_ptr_17 in mem offset legal
    sd      a0,336(sp)
              #                    release a0 with temp_7_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_7_array_init_ptr_17_0
              #                    load from temp_7_array_init_ptr_17 in mem
    ld      a0,336(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                          new_var temp_8_array_init_ptr_17:ptr->i32 
              #                          temp_8_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a0 with temp_8_array_init_ptr_17
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
    addi    a0,a0,240
              #                    free a0
              #                          store 7_0:i32 temp_8_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_8_array_init_ptr_17
              #                    occupy a7 with 7_0
    li      a7, 7
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                          mu c_17:68 
              #                          c_17 = chi c_17:68 
              #                          new_var temp_9_array_init_ptr_17:ptr->i32 
              #                          temp_9_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
              #                    occupy s1 with temp_9_array_init_ptr_17
    li      s1, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(a2) already exist with 3_0
              #                    occupy a2 with 3_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a1,a2
              #                    free a1
              #                    free a2
    add     s1,s1,s2
              #                    free s2
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a4,s3
              #                    free a4
              #                    free s3
    add     s1,s1,s4
              #                    free s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,240
              #                    free s1
              #                          store 8_0:i32 temp_9_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s1 with temp_9_array_init_ptr_17
              #                    occupy s5 with 8_0
    li      s5, 8
    sw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          mu c_17:74 
              #                          c_17 = chi c_17:74 
              #                          new_var temp_10_array_init_ptr_17:ptr->i32 
              #                          temp_10_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy s6 with temp_10_array_init_ptr_17
    li      s6, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    occupy s7 with 2_0
    li      s7, 2
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,a1,s7
              #                    free a1
              #                    free s7
    add     s6,s6,s8
              #                    free s8
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s3,a5
              #                    free s3
              #                    free a5
    add     s6,s6,s9
              #                    free s9
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,240
              #                    free s6
              #                          store 5_0:i32 temp_10_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s6 with temp_10_array_init_ptr_17
              #                    occupy s10 with 5_0
    li      s10, 5
    sw      s10,0(s6)
              #                    free s10
              #                    free s6
              #                          mu c_17:80 
              #                          c_17 = chi c_17:80 
              #                          new_var temp_11_array_init_ptr_17:ptr->i32 
              #                          temp_11_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy s11 with temp_11_array_init_ptr_17
    li      s11, 0
              #                    found literal reg Some(s7) already exist with 2_0
              #                    occupy s7 with 2_0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,s7,a1
              #                    free s7
              #                    free a1
    add     s11,s11,a2
              #                    free a2
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,s3,a4
              #                    free s3
              #                    free a4
    add     s11,s11,a1
              #                    free a1
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,240
              #                    free s11
              #                          store 6_0:i32 temp_11_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s11 with temp_11_array_init_ptr_17
              #                    occupy a1 with 6_0
    li      a1, 6
    sw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          mu c_17:86 
              #                          c_17 = chi c_17:86 
              #                          new_var temp_12_array_init_ptr_17:ptr->i32 
              #                          temp_12_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
              #                    occupy a1 with temp_12_array_init_ptr_17
    li      a1, 0
              #                    found literal reg Some(s7) already exist with 2_0
              #                    occupy s7 with 2_0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,s7,s3
              #                    free s7
              #                    free s3
    add     a1,a1,a2
              #                    free a2
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,s3,a4
              #                    free s3
              #                    free a4
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,240
              #                    free a1
              #                          store 4_0:i32 temp_12_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a1 with temp_12_array_init_ptr_17
              #                    occupy a2 with 4_0
    li      a2, 4
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu c_17:92 
              #                          c_17 = chi c_17:92 
              #                          new_var temp_13_array_init_ptr_17:ptr->i32 
              #                          temp_13_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a2 with temp_13_array_init_ptr_17
    li      a2, 0
              #                    found literal reg Some(s7) already exist with 2_0
              #                    occupy s7 with 2_0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,s7,s3
              #                    free s7
              #                    free s3
    add     a2,a2,a3
              #                    free a3
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,s3,a5
              #                    free s3
              #                    free a5
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,240
              #                    free a2
              #                          store 3_0:i32 temp_13_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a2 with temp_13_array_init_ptr_17
              #                    occupy a3 with 3_0
    li      a3, 3
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu c_17:98 
              #                          c_17 = chi c_17:98 
              #                          new_var temp_14_array_init_ptr_17:ptr->i32 
              #                          temp_14_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a3 with temp_14_array_init_ptr_17
    li      a3, 0
              #                    found literal reg Some(s7) already exist with 2_0
              #                    occupy s7 with 2_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,s7,a5
              #                    free s7
              #                    free a5
    add     a3,a3,a4
              #                    free a4
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,s3,a4
              #                    free s3
              #                    free a4
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,240
              #                    free a3
              #                          store 2_0:i32 temp_14_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a3 with temp_14_array_init_ptr_17
              #                    found literal reg Some(s7) already exist with 2_0
              #                    occupy s7 with 2_0
    sw      s7,0(a3)
              #                    free s7
              #                    free a3
              #                          mu c_17:104 
              #                          c_17 = chi c_17:104 
              #                          new_var temp_15_array_init_ptr_17:ptr->i32 
              #                          temp_15_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a4 with temp_15_array_init_ptr_17
    li      a4, 0
              #                    found literal reg Some(s7) already exist with 2_0
              #                    occupy s7 with 2_0
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,s7,a5
              #                    free s7
              #                    free a5
    add     a4,a4,a6
              #                    free a6
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,s3,a5
              #                    free s3
              #                    free a5
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,240
              #                    free a4
              #                          store 1_0:i32 temp_15_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a4 with temp_15_array_init_ptr_17
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
    sw      s3,0(a4)
              #                    free s3
              #                    free a4
              #                          mu c_17:110 
              #                          c_17 = chi c_17:110 
              #                          new_var d_17:Array:i32:[Some(4_0), Some(2_0)] 
              #                          new_var temp_16_array_ptr_17:ptr->i32 
              #                          temp_16_array_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a5 with temp_16_array_ptr_17
    li      a5, 0
              #                    found literal reg Some(s7) already exist with 2_0
              #                    occupy s7 with 2_0
              #                    occupy a6 with 3_0
    li      a6, 3
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,s7,a6
              #                    free s7
              #                    free a6
    add     a5,a5,a7
              #                    free a7
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,s3,a6
              #                    free s3
              #                    free a6
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,392
              #                    free a5
              #                          new_var temp_17_array_ele_17:i32 
              #                          temp_17_array_ele_17 = load temp_16_array_ptr_17:ptr->i32 
              #                    occupy a5 with temp_16_array_ptr_17
              #                    occupy a6 with temp_17_array_ele_17
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_18_array_init_ptr_17:ptr->i32 
              #                          temp_18_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy a7 with temp_18_array_init_ptr_17
    li      a7, 0
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,136
              #                    free a7
              #                           Call void memset_0(temp_18_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    store to temp_9_array_init_ptr_17 in mem offset legal
    sd      s1,320(sp)
              #                    release s1 with temp_9_array_init_ptr_17
              #                    store to temp_10_array_init_ptr_17 in mem offset legal
    sd      s6,312(sp)
              #                    release s6 with temp_10_array_init_ptr_17
              #                    store to temp_11_array_init_ptr_17 in mem offset legal
    sd      s11,304(sp)
              #                    release s11 with temp_11_array_init_ptr_17
              #                    store to temp_8_array_init_ptr_17 in mem offset legal
    sd      a0,328(sp)
              #                    release a0 with temp_8_array_init_ptr_17
              #                    store to temp_12_array_init_ptr_17 in mem offset legal
    sd      a1,296(sp)
              #                    release a1 with temp_12_array_init_ptr_17
              #                    store to temp_13_array_init_ptr_17 in mem offset legal
    sd      a2,288(sp)
              #                    release a2 with temp_13_array_init_ptr_17
              #                    store to temp_14_array_init_ptr_17 in mem offset legal
    sd      a3,280(sp)
              #                    release a3 with temp_14_array_init_ptr_17
              #                    store to temp_15_array_init_ptr_17 in mem offset legal
    sd      a4,272(sp)
              #                    release a4 with temp_15_array_init_ptr_17
              #                    store to temp_16_array_ptr_17 in mem offset legal
    sd      a5,232(sp)
              #                    release a5 with temp_16_array_ptr_17
              #                    store to temp_17_array_ele_17 in mem offset legal
    sw      a6,228(sp)
              #                    release a6 with temp_17_array_ele_17
              #                    store to temp_18_array_init_ptr_17 in mem offset legal
    sd      a7,216(sp)
              #                    release a7 with temp_18_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_18_array_init_ptr_17_0
              #                    load from temp_18_array_init_ptr_17 in mem
    ld      a0,216(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                          new_var temp_19_array_init_ptr_17:ptr->i32 
              #                          temp_19_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_19_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,136
              #                    free a0
              #                          store 2_0:i32 temp_19_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_19_array_init_ptr_17
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu d_17:128 
              #                          d_17 = chi d_17:128 
              #                          new_var temp_20_array_init_ptr_17:ptr->i32 
              #                          temp_20_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a7 with temp_20_array_init_ptr_17
    li      a7, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a1,a5
              #                    free a1
              #                    free a5
    add     a7,a7,s1
              #                    free s1
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a5,a2
              #                    free a5
              #                    free a2
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,136
              #                    free a7
              #                          store 3_0:i32 temp_20_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a7 with temp_20_array_init_ptr_17
              #                    occupy s3 with 3_0
    li      s3, 3
    sw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          mu d_17:134 
              #                          d_17 = chi d_17:134 
              #                          new_var temp_21_array_init_ptr_17:ptr->i32 
              #                          temp_21_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
              #                    occupy s4 with temp_21_array_init_ptr_17
    li      s4, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a1,a5
              #                    free a1
              #                    free a5
    add     s4,s4,s5
              #                    free s5
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a5,a4
              #                    free a5
              #                    free a4
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,136
              #                    free s4
              #                          store 5_0:i32 temp_21_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s4 with temp_21_array_init_ptr_17
              #                    occupy s7 with 5_0
    li      s7, 5
    sw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          mu d_17:140 
              #                          d_17 = chi d_17:140 
              #                          new_var temp_22_array_init_ptr_17:ptr->i32 
              #                          temp_22_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy s8 with temp_22_array_init_ptr_17
    li      s8, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    occupy s9 with 2_0
    li      s9, 2
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a1,s9
              #                    free a1
              #                    free s9
    add     s8,s8,s10
              #                    free s10
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a5,a2
              #                    free a5
              #                    free a2
    add     s8,s8,s11
              #                    free s11
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,136
              #                    free s8
              #                          store temp_17_array_ele_17:i32 temp_22_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s8 with temp_22_array_init_ptr_17
              #                    occupy a1 with temp_17_array_ele_17
              #                    load from temp_17_array_ele_17 in mem


    lw      a1,228(sp)
    sw      a1,0(s8)
              #                    free a1
              #                    free s8
              #                          mu d_17:146 
              #                          d_17 = chi d_17:146 
              #                          new_var temp_23_array_init_ptr_17:ptr->i32 
              #                          temp_23_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a2 with temp_23_array_init_ptr_17
    li      a2, 0
              #                    found literal reg Some(s9) already exist with 2_0
              #                    occupy s9 with 2_0
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,s9,a3
              #                    free s9
              #                    free a3
    add     a2,a2,a4
              #                    free a4
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a3) already exist with 0_0
              #                    occupy a3 with 0_0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a5,a3
              #                    free a5
              #                    free a3
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                          store 1_0:i32 temp_23_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a2 with temp_23_array_init_ptr_17
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
    sw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                          mu d_17:152 
              #                          d_17 = chi d_17:152 
              #                          new_var temp_24_array_init_ptr_17:ptr->i32 
              #                          temp_24_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a3 with temp_24_array_init_ptr_17
    li      a3, 0
              #                    found literal reg Some(s9) already exist with 2_0
              #                    occupy s9 with 2_0
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,s9,a4
              #                    free s9
              #                    free a4
    add     a3,a3,a5
              #                    free a5
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,136
              #                    free a3
              #                          store 8_0:i32 temp_24_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a3 with temp_24_array_init_ptr_17
              #                    occupy a4 with 8_0
    li      a4, 8
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu d_17:158 
              #                          d_17 = chi d_17:158 
              #                          new_var e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] 
              #                          new_var temp_25_array_ptr_17:ptr->i32 
              #                          temp_25_array_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a4 with temp_25_array_ptr_17
    li      a4, 0
              #                    found literal reg Some(s9) already exist with 2_0
              #                    occupy s9 with 2_0
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,s9,a5
              #                    free s9
              #                    free a5
    add     a4,a4,a6
              #                    free a6
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a5,a6
              #                    free a5
              #                    free a6
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,136
              #                    free a4
              #                          new_var temp_26_array_ele_17:i32 
              #                          temp_26_array_ele_17 = load temp_25_array_ptr_17:ptr->i32 
              #                    occupy a4 with temp_25_array_ptr_17
              #                    occupy a5 with temp_26_array_ele_17
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_27_array_ptr_17:ptr->i32 
              #                          temp_27_array_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a6 with temp_27_array_ptr_17
    li      a6, 0
              #                    found literal reg Some(s9) already exist with 2_0
              #                    occupy s9 with 2_0
              #                    occupy s1 with 2_0
    li      s1, 2
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,s9,s1
              #                    free s9
              #                    free s1
    add     a6,a6,s2
              #                    free s2
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,s1,s2
              #                    free s1
              #                    free s2
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,240
              #                    free a6
              #                          new_var temp_28_array_ele_17:i32 
              #                          temp_28_array_ele_17 = load temp_27_array_ptr_17:ptr->i32 
              #                    occupy a6 with temp_27_array_ptr_17
              #                    occupy s1 with temp_28_array_ele_17
    lw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                          new_var temp_29_array_init_ptr_17:ptr->i32 
              #                          temp_29_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [] 
              #                    occupy s2 with temp_29_array_init_ptr_17
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,0
              #                    free s2
              #                           Call void memset_0(temp_29_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    store to temp_28_array_ele_17 in mem offset legal
    sw      s1,108(sp)
              #                    release s1 with temp_28_array_ele_17
              #                    store to temp_29_array_init_ptr_17 in mem offset legal
    sd      s2,96(sp)
              #                    release s2 with temp_29_array_init_ptr_17
              #                    store to temp_21_array_init_ptr_17 in mem offset legal
    sd      s4,192(sp)
              #                    release s4 with temp_21_array_init_ptr_17
              #                    store to temp_22_array_init_ptr_17 in mem offset legal
    sd      s8,184(sp)
              #                    release s8 with temp_22_array_init_ptr_17
              #                    store to temp_19_array_init_ptr_17 in mem offset legal
    sd      a0,208(sp)
              #                    release a0 with temp_19_array_init_ptr_17
              #                    store to temp_17_array_ele_17 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with temp_17_array_ele_17
              #                    store to temp_23_array_init_ptr_17 in mem offset legal
    sd      a2,176(sp)
              #                    release a2 with temp_23_array_init_ptr_17
              #                    store to temp_24_array_init_ptr_17 in mem offset legal
    sd      a3,168(sp)
              #                    release a3 with temp_24_array_init_ptr_17
              #                    store to temp_25_array_ptr_17 in mem offset legal
    sd      a4,128(sp)
              #                    release a4 with temp_25_array_ptr_17
              #                    store to temp_26_array_ele_17 in mem offset legal
    sw      a5,124(sp)
              #                    release a5 with temp_26_array_ele_17
              #                    store to temp_27_array_ptr_17 in mem offset legal
    sd      a6,112(sp)
              #                    release a6 with temp_27_array_ptr_17
              #                    store to temp_20_array_init_ptr_17 in mem offset legal
    sd      a7,200(sp)
              #                    release a7 with temp_20_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_29_array_init_ptr_17_0
              #                    load from temp_29_array_init_ptr_17 in mem
    ld      a0,96(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                          new_var temp_30_array_init_ptr_17:ptr->i32 
              #                          temp_30_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(0_0), Some(1_0), Some(0_0)] 
              #                    occupy a0 with temp_30_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a0,a0,a6
              #                    free a6
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a5,a2
              #                    free a5
              #                    free a2
    add     a0,a0,a7
              #                    free a7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,0
              #                    free a0
              #                          store temp_28_array_ele_17:i32 temp_30_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a0 with temp_30_array_init_ptr_17
              #                    occupy s1 with temp_28_array_ele_17
              #                    load from temp_28_array_ele_17 in mem


    lw      s1,108(sp)
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                          mu e_17:182 
              #                          e_17 = chi e_17:182 
              #                          new_var temp_31_array_init_ptr_17:ptr->i32 
              #                          temp_31_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(2_0), Some(0_0), Some(0_0)] 
              #                    occupy s2 with temp_31_array_init_ptr_17
    li      s2, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    occupy s3 with 2_0
    li      s3, 2
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a1,s3
              #                    free a1
              #                    free s3
    add     s2,s2,s4
              #                    free s4
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a5,a2
              #                    free a5
              #                    free a2
    add     s2,s2,s5
              #                    free s5
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a5,a2
              #                    free a5
              #                    free a2
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,0
              #                    free s2
              #                          store 5_0:i32 temp_31_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy s2 with temp_31_array_init_ptr_17
              #                    occupy s7 with 5_0
    li      s7, 5
    sw      s7,0(s2)
              #                    free s7
              #                    free s2
              #                          mu e_17:188 
              #                          e_17 = chi e_17:188 
              #                          new_var temp_32_array_init_ptr_17:ptr->i32 
              #                          temp_32_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(1_0), Some(0_0), Some(0_0)] 
              #                    occupy s8 with temp_32_array_init_ptr_17
    li      s8, 0
              #                    found literal reg Some(s3) already exist with 2_0
              #                    occupy s3 with 2_0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s3,a5
              #                    free s3
              #                    free a5
    add     s8,s8,s9
              #                    free s9
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a5,a2
              #                    free a5
              #                    free a2
    add     s8,s8,s10
              #                    free s10
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a5,a2
              #                    free a5
              #                    free a2
    add     s8,s8,s11
              #                    free s11
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,0
              #                    free s8
              #                          store 3_0:i32 temp_32_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy s8 with temp_32_array_init_ptr_17
              #                    occupy a1 with 3_0
    li      a1, 3
    sw      a1,0(s8)
              #                    free a1
              #                    free s8
              #                          mu e_17:194 
              #                          e_17 = chi e_17:194 
              #                          new_var temp_33_array_init_ptr_17:ptr->i32 
              #                          temp_33_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(0_0), Some(0_0), Some(0_0)] 
              #                    occupy a1 with temp_33_array_init_ptr_17
    li      a1, 0
              #                    found literal reg Some(s3) already exist with 2_0
              #                    occupy s3 with 2_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,s3,a2
              #                    free s3
              #                    free a2
    add     a1,a1,a3
              #                    free a3
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a5,a2
              #                    free a5
              #                    free a2
    add     a1,a1,a3
              #                    free a3
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a5,a2
              #                    free a5
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,0
              #                    free a1
              #                          store temp_26_array_ele_17:i32 temp_33_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a1 with temp_33_array_init_ptr_17
              #                    occupy a2 with temp_26_array_ele_17
              #                    load from temp_26_array_ele_17 in mem


    lw      a2,124(sp)
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu e_17:200 
              #                          e_17 = chi e_17:200 
              #                          new_var temp_34_array_init_ptr_17:ptr->i32 
              #                          temp_34_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(3_0), Some(0_0), Some(0_0)] 
              #                    occupy a3 with temp_34_array_init_ptr_17
    li      a3, 0
              #                    found literal reg Some(s3) already exist with 2_0
              #                    occupy s3 with 2_0
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,s3,a4
              #                    free s3
              #                    free a4
    add     a3,a3,a5
              #                    free a5
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a3,a3,a6
              #                    free a6
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,0
              #                    free a3
              #                          store 7_0:i32 temp_34_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a3 with temp_34_array_init_ptr_17
              #                    occupy a4 with 7_0
    li      a4, 7
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu e_17:206 
              #                          e_17 = chi e_17:206 
              #                          new_var temp_35_array_init_ptr_17:ptr->i32 
              #                          temp_35_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(1_0), Some(1_0), Some(0_0)] 
              #                    occupy a4 with temp_35_array_init_ptr_17
    li      a4, 0
              #                    found literal reg Some(s3) already exist with 2_0
              #                    occupy s3 with 2_0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,s3,a5
              #                    free s3
              #                    free a5
    add     a4,a4,a6
              #                    free a6
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a4,a4,a7
              #                    free a7
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a6,a5
              #                    free a6
              #                    free a5
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,0
              #                    free a4
              #                          store 4_0:i32 temp_35_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a4 with temp_35_array_init_ptr_17
              #                    occupy a5 with 4_0
    li      a5, 4
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu e_17:212 
              #                          e_17 = chi e_17:212 
              #                          new_var temp_36_array_init_ptr_17:ptr->i32 
              #                          temp_36_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(2_0), Some(1_0), Some(0_0)] 
              #                    occupy a5 with temp_36_array_init_ptr_17
    li      a5, 0
              #                    found literal reg Some(s3) already exist with 2_0
              #                    occupy s3 with 2_0
              #                    occupy a6 with 2_0
    li      a6, 2
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,s3,a6
              #                    free s3
              #                    free a6
    add     a5,a5,a7
              #                    free a7
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a6,a7
              #                    free a6
              #                    free a7
    add     a5,a5,s3
              #                    free s3
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a6,a7
              #                    free a6
              #                    free a7
    add     a5,a5,s3
              #                    free s3
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,0
              #                    free a5
              #                          store 6_0:i32 temp_36_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a5 with temp_36_array_init_ptr_17
              #                    occupy a6 with 6_0
    li      a6, 6
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu e_17:218 
              #                          e_17 = chi e_17:218 
              #                          new_var temp_37_array_init_ptr_17:ptr->i32 
              #                          temp_37_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(3_0), Some(1_0), Some(0_0)] 
              #                    occupy a6 with temp_37_array_init_ptr_17
    li      a6, 0
              #                    occupy a7 with 2_0
    li      a7, 2
              #                    occupy s3 with 3_0
    li      s3, 3
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a7,s3
              #                    free a7
              #                    free s3
    add     a6,a6,s4
              #                    free s4
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a7,s3
              #                    free a7
              #                    free s3
    add     a6,a6,s4
              #                    free s4
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,s3,a7
              #                    free s3
              #                    free a7
    add     a6,a6,s4
              #                    free s4
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,0
              #                    free a6
              #                          store 8_0:i32 temp_37_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a6 with temp_37_array_init_ptr_17
              #                    occupy a7 with 8_0
    li      a7, 8
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          mu e_17:224 
              #                          e_17 = chi e_17:224 
              #                          ret 3_0 
              #                    load from ra_main_0 in mem
    ld      ra,480(sp)
              #                    load from s0_main_0 in mem
    ld      s0,472(sp)
              #                    store to temp_30_array_init_ptr_17 in mem offset legal
    sd      a0,88(sp)
              #                    release a0 with temp_30_array_init_ptr_17
              #                    occupy a0 with 3_0
    li      a0, 3
    addi    sp,sp,488
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_33_array_init_ptr_17, tracked: true } |     a2:Freed { symidx: temp_26_array_ele_17, tracked: true } |     a3:Freed { symidx: temp_34_array_init_ptr_17, tracked: true } |     a4:Freed { symidx: temp_35_array_init_ptr_17, tracked: true } |     a5:Freed { symidx: temp_36_array_init_ptr_17, tracked: true } |     a6:Freed { symidx: temp_37_array_init_ptr_17, tracked: true } |     s1:Freed { symidx: temp_28_array_ele_17, tracked: true } |     s2:Freed { symidx: temp_31_array_init_ptr_17, tracked: true } |     s8:Freed { symidx: temp_32_array_init_ptr_17, tracked: true } | 
