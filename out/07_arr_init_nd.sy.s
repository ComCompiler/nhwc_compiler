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
              #                    mem layout:|ra_main:8 at 1024|s0_main:8 at 1016|a:60 at 956|none:4 at 952|temp_0_array_init_ptr:8 at 944|b:60 at 884|none:4 at 880|temp_1_array_init_ptr:8 at 872|temp_2_array_init_ptr:8 at 864|temp_3_array_init_ptr:8 at 856|temp_4_array_init_ptr:8 at 848|temp_5_array_init_ptr:8 at 840|temp_6_array_init_ptr:8 at 832|temp_7_array_init_ptr:8 at 824|temp_8_array_init_ptr:8 at 816|temp_9_array_init_ptr:8 at 808|temp_10_array_init_ptr:8 at 800|temp_11_array_init_ptr:8 at 792|temp_12_array_init_ptr:8 at 784|temp_13_array_init_ptr:8 at 776|temp_14_array_init_ptr:8 at 768|temp_15_array_init_ptr:8 at 760|temp_16_array_init_ptr:8 at 752|c:60 at 692|none:4 at 688|temp_17_array_init_ptr:8 at 680|temp_18_array_init_ptr:8 at 672|temp_19_array_init_ptr:8 at 664|temp_20_array_init_ptr:8 at 656|temp_21_array_init_ptr:8 at 648|temp_22_array_init_ptr:8 at 640|temp_23_array_init_ptr:8 at 632|temp_24_array_init_ptr:8 at 624|temp_25_array_init_ptr:8 at 616|temp_26_array_init_ptr:8 at 608|temp_27_array_init_ptr:8 at 600|temp_28_array_init_ptr:8 at 592|temp_29_array_init_ptr:8 at 584|temp_30_array_init_ptr:8 at 576|temp_31_array_init_ptr:8 at 568|temp_32_array_init_ptr:8 at 560|d:60 at 500|none:4 at 496|temp_33_array_init_ptr:8 at 488|temp_34_array_init_ptr:8 at 480|temp_35_array_init_ptr:8 at 472|temp_36_array_init_ptr:8 at 464|temp_37_array_init_ptr:8 at 456|temp_38_array_init_ptr:8 at 448|temp_39_array_init_ptr:8 at 440|temp_40_array_init_ptr:8 at 432|temp_41_array_init_ptr:8 at 424|temp_42_array_init_ptr:8 at 416|temp_43_array_init_ptr:8 at 408|temp_44_array_init_ptr:8 at 400|temp_45_array_init_ptr:8 at 392|temp_46_array_init_ptr:8 at 384|temp_47_array_init_ptr:8 at 376|temp_48_array_init_ptr:8 at 368|e:60 at 308|f:20 at 288|temp_49_array_init_ptr:8 at 280|temp_50_array_init_ptr:8 at 272|temp_51_array_init_ptr:8 at 264|temp_52_array_init_ptr:8 at 256|temp_53_array_init_ptr:8 at 248|temp_54_array_init_ptr:8 at 240|temp_55_array_init_ptr:8 at 232|temp_56_array_init_ptr:8 at 224|temp_57_array_init_ptr:8 at 216|g:60 at 156|h:12 at 144|temp_58_array_init_ptr:8 at 136|temp_59_array_init_ptr:8 at 128|temp_60_array_init_ptr:8 at 120|temp_61_array_init_ptr:8 at 112|temp_62_array_init_ptr:8 at 104|temp_63_array_init_ptr:8 at 96|i:96 at 0
    addi    sp,sp,-1032
              #                    store to ra_main_0 in mem offset legal
    sd      ra,1024(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,1016(sp)
    addi    s0,sp,1032
              #                          alloc Array:i32:[Some(5_0), Some(3_0)] a_17 
              #                          alloc ptr->i32 temp_0_array_init_ptr_17 
              #                          alloc Array:i32:[Some(5_0), Some(3_0)] b_17 
              #                          alloc ptr->i32 temp_1_array_init_ptr_17 
              #                          alloc ptr->i32 temp_2_array_init_ptr_17 
              #                          alloc ptr->i32 temp_3_array_init_ptr_17 
              #                          alloc ptr->i32 temp_4_array_init_ptr_17 
              #                          alloc ptr->i32 temp_5_array_init_ptr_17 
              #                          alloc ptr->i32 temp_6_array_init_ptr_17 
              #                          alloc ptr->i32 temp_7_array_init_ptr_17 
              #                          alloc ptr->i32 temp_8_array_init_ptr_17 
              #                          alloc ptr->i32 temp_9_array_init_ptr_17 
              #                          alloc ptr->i32 temp_10_array_init_ptr_17 
              #                          alloc ptr->i32 temp_11_array_init_ptr_17 
              #                          alloc ptr->i32 temp_12_array_init_ptr_17 
              #                          alloc ptr->i32 temp_13_array_init_ptr_17 
              #                          alloc ptr->i32 temp_14_array_init_ptr_17 
              #                          alloc ptr->i32 temp_15_array_init_ptr_17 
              #                          alloc ptr->i32 temp_16_array_init_ptr_17 
              #                          alloc Array:i32:[Some(5_0), Some(3_0)] c_17 
              #                          alloc ptr->i32 temp_17_array_init_ptr_17 
              #                          alloc ptr->i32 temp_18_array_init_ptr_17 
              #                          alloc ptr->i32 temp_19_array_init_ptr_17 
              #                          alloc ptr->i32 temp_20_array_init_ptr_17 
              #                          alloc ptr->i32 temp_21_array_init_ptr_17 
              #                          alloc ptr->i32 temp_22_array_init_ptr_17 
              #                          alloc ptr->i32 temp_23_array_init_ptr_17 
              #                          alloc ptr->i32 temp_24_array_init_ptr_17 
              #                          alloc ptr->i32 temp_25_array_init_ptr_17 
              #                          alloc ptr->i32 temp_26_array_init_ptr_17 
              #                          alloc ptr->i32 temp_27_array_init_ptr_17 
              #                          alloc ptr->i32 temp_28_array_init_ptr_17 
              #                          alloc ptr->i32 temp_29_array_init_ptr_17 
              #                          alloc ptr->i32 temp_30_array_init_ptr_17 
              #                          alloc ptr->i32 temp_31_array_init_ptr_17 
              #                          alloc ptr->i32 temp_32_array_init_ptr_17 
              #                          alloc Array:i32:[Some(5_0), Some(3_0)] d_17 
              #                          alloc ptr->i32 temp_33_array_init_ptr_17 
              #                          alloc ptr->i32 temp_34_array_init_ptr_17 
              #                          alloc ptr->i32 temp_35_array_init_ptr_17 
              #                          alloc ptr->i32 temp_36_array_init_ptr_17 
              #                          alloc ptr->i32 temp_37_array_init_ptr_17 
              #                          alloc ptr->i32 temp_38_array_init_ptr_17 
              #                          alloc ptr->i32 temp_39_array_init_ptr_17 
              #                          alloc ptr->i32 temp_40_array_init_ptr_17 
              #                          alloc ptr->i32 temp_41_array_init_ptr_17 
              #                          alloc ptr->i32 temp_42_array_init_ptr_17 
              #                          alloc ptr->i32 temp_43_array_init_ptr_17 
              #                          alloc ptr->i32 temp_44_array_init_ptr_17 
              #                          alloc ptr->i32 temp_45_array_init_ptr_17 
              #                          alloc ptr->i32 temp_46_array_init_ptr_17 
              #                          alloc ptr->i32 temp_47_array_init_ptr_17 
              #                          alloc ptr->i32 temp_48_array_init_ptr_17 
              #                          alloc Array:i32:[Some(5_0), Some(3_0)] e_17 
              #                          alloc Array:i32:[Some(5_0)] f_17 
              #                          alloc ptr->i32 temp_49_array_init_ptr_17 
              #                          alloc ptr->i32 temp_50_array_init_ptr_17 
              #                          alloc ptr->i32 temp_51_array_init_ptr_17 
              #                          alloc ptr->i32 temp_52_array_init_ptr_17 
              #                          alloc ptr->i32 temp_53_array_init_ptr_17 
              #                          alloc ptr->i32 temp_54_array_init_ptr_17 
              #                          alloc ptr->i32 temp_55_array_init_ptr_17 
              #                          alloc ptr->i32 temp_56_array_init_ptr_17 
              #                          alloc ptr->i32 temp_57_array_init_ptr_17 
              #                          alloc Array:i32:[Some(5_0), Some(3_0)] g_17 
              #                          alloc Array:i32:[Some(3_0)] h_17 
              #                          alloc ptr->i32 temp_58_array_init_ptr_17 
              #                          alloc ptr->i32 temp_59_array_init_ptr_17 
              #                          alloc ptr->i32 temp_60_array_init_ptr_17 
              #                          alloc ptr->i32 temp_61_array_init_ptr_17 
              #                          alloc ptr->i32 temp_62_array_init_ptr_17 
              #                          alloc ptr->i32 temp_63_array_init_ptr_17 
              #                          alloc Array:i32:[Some(2_0), Some(3_0), Some(4_0)] i_17 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var a_17:Array:i32:[Some(5_0), Some(3_0)] 
              #                          new_var b_17:Array:i32:[Some(5_0), Some(3_0)] 
              #                          new_var temp_0_array_init_ptr_17:ptr->i32 
              #                          temp_0_array_init_ptr_17 = getelementptr b_17:Array:i32:[Some(5_0), Some(3_0)] [] 
              #                    occupy a0 with temp_0_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,884
              #                    free a0
              #                           Call void memset_0(temp_0_array_init_ptr_17, 0_0, 60_0) 
              #                    saved register dumping to mem
              #                    store to temp_0_array_init_ptr_17 in mem offset legal
    sd      a0,944(sp)
              #                    release a0 with temp_0_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_array_init_ptr_17_0
              #                    load from temp_0_array_init_ptr_17 in mem
    ld      a0,944(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_60_0_0
    li      a2, 60
              #                    arg load ended


    call    memset
              #                          new_var c_17:Array:i32:[Some(5_0), Some(3_0)] 
              #                          new_var temp_1_array_init_ptr_17:ptr->i32 
              #                          temp_1_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [] 
              #                    occupy a0 with temp_1_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,692
              #                    free a0
              #                           Call void memset_0(temp_1_array_init_ptr_17, 0_0, 60_0) 
              #                    saved register dumping to mem
              #                    store to temp_1_array_init_ptr_17 in mem offset legal
    sd      a0,872(sp)
              #                    release a0 with temp_1_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_1_array_init_ptr_17_0
              #                    load from temp_1_array_init_ptr_17 in mem
    ld      a0,872(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_60_0_0
    li      a2, 60
              #                    arg load ended


    call    memset
              #                          new_var temp_2_array_init_ptr_17:ptr->i32 
              #                          temp_2_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_2_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with 3_0
    li      a1, 3
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
    addi    a0,a0,692
              #                    free a0
              #                          store 2_0:i32 temp_2_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_2_array_init_ptr_17
              #                    occupy a7 with 2_0
    li      a7, 2
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                          mu c_17:32 
              #                          c_17 = chi c_17:32 
              #                          new_var temp_3_array_init_ptr_17:ptr->i32 
              #                          temp_3_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(1_0)] 
              #                    occupy s1 with temp_3_array_init_ptr_17
    li      s1, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    occupy s2 with 3_0
    li      s2, 3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a1,s2
              #                    free a1
              #                    free s2
    add     s1,s1,s3
              #                    free s3
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a5,a4
              #                    free a5
              #                    free a4
    add     s1,s1,s4
              #                    free s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,692
              #                    free s1
              #                          store 11_0:i32 temp_3_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s1 with temp_3_array_init_ptr_17
              #                    occupy s5 with 11_0
    li      s5, 11
    sw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          mu c_17:38 
              #                          c_17 = chi c_17:38 
              #                          new_var temp_4_array_init_ptr_17:ptr->i32 
              #                          temp_4_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(1_0)] 
              #                    occupy s6 with temp_4_array_init_ptr_17
    li      s6, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    occupy s7 with 4_0
    li      s7, 4
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,a1,s7
              #                    free a1
              #                    free s7
    add     s6,s6,s8
              #                    free s8
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,a5,a4
              #                    free a5
              #                    free a4
    add     s6,s6,s9
              #                    free s9
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,692
              #                    free s6
              #                          store 14_0:i32 temp_4_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s6 with temp_4_array_init_ptr_17
              #                    occupy s10 with 14_0
    li      s10, 14
    sw      s10,0(s6)
              #                    free s10
              #                    free s6
              #                          mu c_17:44 
              #                          c_17 = chi c_17:44 
              #                          new_var temp_5_array_init_ptr_17:ptr->i32 
              #                          temp_5_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(0_0)] 
              #                    occupy s11 with temp_5_array_init_ptr_17
    li      s11, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a1,a5
              #                    free a1
              #                    free a5
    add     s11,s11,a2
              #                    free a2
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a5,a1
              #                    free a5
              #                    free a1
    add     s11,s11,a2
              #                    free a2
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,692
              #                    free s11
              #                          store 4_0:i32 temp_5_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s11 with temp_5_array_init_ptr_17
              #                    found literal reg Some(s7) already exist with 4_0
              #                    occupy s7 with 4_0
    sw      s7,0(s11)
              #                    free s7
              #                    free s11
              #                          mu c_17:50 
              #                          c_17 = chi c_17:50 
              #                          new_var temp_6_array_init_ptr_17:ptr->i32 
              #                          temp_6_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a1 with temp_6_array_init_ptr_17
    li      a1, 0
              #                    found literal reg Some(s2) already exist with 3_0
              #                    occupy s2 with 3_0
              #                    found literal reg Some(a7) already exist with 2_0
              #                    occupy a7 with 2_0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,s2,a7
              #                    free s2
              #                    free a7
    add     a1,a1,a2
              #                    free a2
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a5,a2
              #                    free a5
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,692
              #                    free a1
              #                          store 7_0:i32 temp_6_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_6_array_init_ptr_17
              #                    occupy a2 with 7_0
    li      a2, 7
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu c_17:56 
              #                          c_17 = chi c_17:56 
              #                          new_var temp_7_array_init_ptr_17:ptr->i32 
              #                          temp_7_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(2_0)] 
              #                    occupy a2 with temp_7_array_init_ptr_17
    li      a2, 0
              #                    found literal reg Some(s2) already exist with 3_0
              #                    occupy s2 with 3_0
              #                    found literal reg Some(s7) already exist with 4_0
              #                    occupy s7 with 4_0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,s2,s7
              #                    free s2
              #                    free s7
    add     a2,a2,a3
              #                    free a3
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a7) already exist with 2_0
              #                    occupy a7 with 2_0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a5,a7
              #                    free a5
              #                    free a7
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,692
              #                    free a2
              #                          store 15_0:i32 temp_7_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a2 with temp_7_array_init_ptr_17
              #                    occupy a3 with 15_0
    li      a3, 15
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu c_17:62 
              #                          c_17 = chi c_17:62 
              #                          new_var temp_8_array_init_ptr_17:ptr->i32 
              #                          temp_8_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a3 with temp_8_array_init_ptr_17
    li      a3, 0
              #                    found literal reg Some(s2) already exist with 3_0
              #                    occupy s2 with 3_0
              #                    found literal reg Some(a7) already exist with 2_0
              #                    occupy a7 with 2_0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,s2,a7
              #                    free s2
              #                    free a7
    add     a3,a3,a4
              #                    free a4
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a4
              #                    free a5
              #                    free a4
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,692
              #                    free a3
              #                          store 8_0:i32 temp_8_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a3 with temp_8_array_init_ptr_17
              #                    occupy a4 with 8_0
    li      a4, 8
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu c_17:68 
              #                          c_17 = chi c_17:68 
              #                          new_var temp_9_array_init_ptr_17:ptr->i32 
              #                          temp_9_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(0_0)] 
              #                    occupy a4 with temp_9_array_init_ptr_17
    li      a4, 0
              #                    found literal reg Some(s2) already exist with 3_0
              #                    occupy s2 with 3_0
              #                    found literal reg Some(s7) already exist with 4_0
              #                    occupy s7 with 4_0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,s2,s7
              #                    free s2
              #                    free s7
    add     a4,a4,a5
              #                    free a5
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,692
              #                    free a4
              #                          store 13_0:i32 temp_9_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a4 with temp_9_array_init_ptr_17
              #                    occupy a5 with 13_0
    li      a5, 13
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu c_17:74 
              #                          c_17 = chi c_17:74 
              #                          new_var temp_10_array_init_ptr_17:ptr->i32 
              #                          temp_10_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(2_0)] 
              #                    occupy a5 with temp_10_array_init_ptr_17
    li      a5, 0
              #                    found literal reg Some(s2) already exist with 3_0
              #                    occupy s2 with 3_0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,s2,a6
              #                    free s2
              #                    free a6
    add     a5,a5,a7
              #                    free a7
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a7 with 2_0
    li      a7, 2
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a6,a7
              #                    free a6
              #                    free a7
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,692
              #                    free a5
              #                          store 6_0:i32 temp_10_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a5 with temp_10_array_init_ptr_17
              #                    occupy a6 with 6_0
    li      a6, 6
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu c_17:80 
              #                          c_17 = chi c_17:80 
              #                          new_var temp_11_array_init_ptr_17:ptr->i32 
              #                          temp_11_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a6 with temp_11_array_init_ptr_17
    li      a6, 0
              #                    occupy a7 with 3_0
    li      a7, 3
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a7,s2
              #                    free a7
              #                    free s2
    add     a6,a6,s3
              #                    free s3
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    found literal reg Some(s2) already exist with 0_0
              #                    occupy s2 with 0_0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a7,s2
              #                    free a7
              #                    free s2
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,692
              #                    free a6
              #                          store 1_0:i32 temp_11_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a6 with temp_11_array_init_ptr_17
              #                    found literal reg Some(a7) already exist with 1_0
              #                    occupy a7 with 1_0
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          mu c_17:86 
              #                          c_17 = chi c_17:86 
              #                          new_var temp_12_array_init_ptr_17:ptr->i32 
              #                          temp_12_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(2_0)] 
              #                    occupy a7 with temp_12_array_init_ptr_17
    li      a7, 0
              #                    occupy s2 with 3_0
    li      s2, 3
              #                    occupy s3 with 2_0
    li      s3, 2
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,s2,s3
              #                    free s2
              #                    free s3
    add     a7,a7,s4
              #                    free s4
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    found literal reg Some(s3) already exist with 2_0
              #                    occupy s3 with 2_0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,s2,s3
              #                    free s2
              #                    free s3
    add     a7,a7,s4
              #                    free s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,692
              #                    free a7
              #                          store 9_0:i32 temp_12_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a7 with temp_12_array_init_ptr_17
              #                    occupy s2 with 9_0
    li      s2, 9
    sw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                          mu c_17:92 
              #                          c_17 = chi c_17:92 
              #                          new_var temp_13_array_init_ptr_17:ptr->i32 
              #                          temp_13_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(0_0)] 
              #                    occupy s2 with temp_13_array_init_ptr_17
    li      s2, 0
              #                    occupy s3 with 3_0
    li      s3, 3
              #                    occupy s4 with 3_0
    li      s4, 3
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s3,s4
              #                    free s3
              #                    free s4
    add     s2,s2,s5
              #                    free s5
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with 0_0
    li      s4, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s3,s4
              #                    free s3
              #                    free s4
    add     s2,s2,s5
              #                    free s5
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,692
              #                    free s2
              #                          store 10_0:i32 temp_13_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s2 with temp_13_array_init_ptr_17
              #                    occupy s3 with 10_0
    li      s3, 10
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          mu c_17:98 
              #                          c_17 = chi c_17:98 
              #                          new_var temp_14_array_init_ptr_17:ptr->i32 
              #                          temp_14_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(2_0)] 
              #                    occupy s3 with temp_14_array_init_ptr_17
    li      s3, 0
              #                    occupy s4 with 3_0
    li      s4, 3
              #                    occupy s5 with 3_0
    li      s5, 3
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s4,s5
              #                    free s4
              #                    free s5
    add     s3,s3,s7
              #                    free s7
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with 2_0
    li      s5, 2
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s4,s5
              #                    free s4
              #                    free s5
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,692
              #                    free s3
              #                          store 12_0:i32 temp_14_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s3 with temp_14_array_init_ptr_17
              #                    occupy s4 with 12_0
    li      s4, 12
    sw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          mu c_17:104 
              #                          c_17 = chi c_17:104 
              #                          new_var temp_15_array_init_ptr_17:ptr->i32 
              #                          temp_15_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(2_0)] 
              #                    occupy s4 with temp_15_array_init_ptr_17
    li      s4, 0
              #                    occupy s5 with 3_0
    li      s5, 3
              #                    occupy s7 with 0_0
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s5,s7
              #                    free s5
              #                    free s7
    add     s4,s4,s8
              #                    free s8
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s7 with 2_0
    li      s7, 2
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s5,s7
              #                    free s5
              #                    free s7
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,692
              #                    free s4
              #                          store 3_0:i32 temp_15_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s4 with temp_15_array_init_ptr_17
              #                    occupy s5 with 3_0
    li      s5, 3
    sw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          mu c_17:110 
              #                          c_17 = chi c_17:110 
              #                          new_var temp_16_array_init_ptr_17:ptr->i32 
              #                          temp_16_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(1_0)] 
              #                    occupy s5 with temp_16_array_init_ptr_17
    li      s5, 0
              #                    occupy s7 with 3_0
    li      s7, 3
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s7,s8
              #                    free s7
              #                    free s8
    add     s5,s5,s9
              #                    free s9
              #                    found literal reg Some(s8) already exist with 1_0
              #                    occupy s8 with 1_0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s8,s7
              #                    free s8
              #                    free s7
    add     s5,s5,s9
              #                    free s9
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,692
              #                    free s5
              #                          store 5_0:i32 temp_16_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s5 with temp_16_array_init_ptr_17
              #                    occupy s7 with 5_0
    li      s7, 5
    sw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          mu c_17:116 
              #                          c_17 = chi c_17:116 
              #                          new_var d_17:Array:i32:[Some(5_0), Some(3_0)] 
              #                          new_var temp_17_array_init_ptr_17:ptr->i32 
              #                          temp_17_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [] 
              #                    occupy s7 with temp_17_array_init_ptr_17
    li      s7, 0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,500
              #                    free s7
              #                           Call void memset_0(temp_17_array_init_ptr_17, 0_0, 60_0) 
              #                    saved register dumping to mem
              #                    store to temp_3_array_init_ptr_17 in mem offset legal
    sd      s1,856(sp)
              #                    release s1 with temp_3_array_init_ptr_17
              #                    store to temp_13_array_init_ptr_17 in mem offset legal
    sd      s2,776(sp)
              #                    release s2 with temp_13_array_init_ptr_17
              #                    store to temp_14_array_init_ptr_17 in mem offset legal
    sd      s3,768(sp)
              #                    release s3 with temp_14_array_init_ptr_17
              #                    store to temp_15_array_init_ptr_17 in mem offset legal
    sd      s4,760(sp)
              #                    release s4 with temp_15_array_init_ptr_17
              #                    store to temp_16_array_init_ptr_17 in mem offset legal
    sd      s5,752(sp)
              #                    release s5 with temp_16_array_init_ptr_17
              #                    store to temp_4_array_init_ptr_17 in mem offset legal
    sd      s6,848(sp)
              #                    release s6 with temp_4_array_init_ptr_17
              #                    store to temp_17_array_init_ptr_17 in mem offset legal
    sd      s7,680(sp)
              #                    release s7 with temp_17_array_init_ptr_17
              #                    store to temp_5_array_init_ptr_17 in mem offset legal
    sd      s11,840(sp)
              #                    release s11 with temp_5_array_init_ptr_17
              #                    store to temp_2_array_init_ptr_17 in mem offset legal
    sd      a0,864(sp)
              #                    release a0 with temp_2_array_init_ptr_17
              #                    store to temp_6_array_init_ptr_17 in mem offset legal
    sd      a1,832(sp)
              #                    release a1 with temp_6_array_init_ptr_17
              #                    store to temp_7_array_init_ptr_17 in mem offset legal
    sd      a2,824(sp)
              #                    release a2 with temp_7_array_init_ptr_17
              #                    store to temp_8_array_init_ptr_17 in mem offset legal
    sd      a3,816(sp)
              #                    release a3 with temp_8_array_init_ptr_17
              #                    store to temp_9_array_init_ptr_17 in mem offset legal
    sd      a4,808(sp)
              #                    release a4 with temp_9_array_init_ptr_17
              #                    store to temp_10_array_init_ptr_17 in mem offset legal
    sd      a5,800(sp)
              #                    release a5 with temp_10_array_init_ptr_17
              #                    store to temp_11_array_init_ptr_17 in mem offset legal
    sd      a6,792(sp)
              #                    release a6 with temp_11_array_init_ptr_17
              #                    store to temp_12_array_init_ptr_17 in mem offset legal
    sd      a7,784(sp)
              #                    release a7 with temp_12_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_17_array_init_ptr_17_0
              #                    load from temp_17_array_init_ptr_17 in mem
    ld      a0,680(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_60_0_0
    li      a2, 60
              #                    arg load ended


    call    memset
              #                          new_var temp_18_array_init_ptr_17:ptr->i32 
              #                          temp_18_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(0_0)] 
              #                    occupy a0 with temp_18_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    occupy a2 with 4_0
    li      a2, 4
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
    addi    a0,a0,500
              #                    free a0
              #                          store 13_0:i32 temp_18_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_18_array_init_ptr_17
              #                    occupy a7 with 13_0
    li      a7, 13
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                          mu d_17:128 
              #                          d_17 = chi d_17:128 
              #                          new_var temp_19_array_init_ptr_17:ptr->i32 
              #                          temp_19_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(0_0)] 
              #                    occupy s1 with temp_19_array_init_ptr_17
    li      s1, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a1,a4
              #                    free a1
              #                    free a4
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
    addi    s1,s1,500
              #                    free s1
              #                          store 4_0:i32 temp_19_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s1 with temp_19_array_init_ptr_17
              #                    found literal reg Some(a2) already exist with 4_0
              #                    occupy a2 with 4_0
    sw      a2,0(s1)
              #                    free a2
              #                    free s1
              #                          mu d_17:134 
              #                          d_17 = chi d_17:134 
              #                          new_var temp_20_array_init_ptr_17:ptr->i32 
              #                          temp_20_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(2_0)] 
              #                    occupy s4 with temp_20_array_init_ptr_17
    li      s4, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    found literal reg Some(a2) already exist with 4_0
              #                    occupy a2 with 4_0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a1,a2
              #                    free a1
              #                    free a2
    add     s4,s4,s5
              #                    free s5
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s6 with 2_0
    li      s6, 2
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a4,s6
              #                    free a4
              #                    free s6
    add     s4,s4,s7
              #                    free s7
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,500
              #                    free s4
              #                          store 15_0:i32 temp_20_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s4 with temp_20_array_init_ptr_17
              #                    occupy s8 with 15_0
    li      s8, 15
    sw      s8,0(s4)
              #                    free s8
              #                    free s4
              #                          mu d_17:140 
              #                          d_17 = chi d_17:140 
              #                          new_var temp_21_array_init_ptr_17:ptr->i32 
              #                          temp_21_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(1_0)] 
              #                    occupy s9 with temp_21_array_init_ptr_17
    li      s9, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    found literal reg Some(s6) already exist with 2_0
              #                    occupy s6 with 2_0
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a1,s6
              #                    free a1
              #                    free s6
    add     s9,s9,s10
              #                    free s10
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a4,s11
              #                    free a4
              #                    free s11
    add     s9,s9,a1
              #                    free a1
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,500
              #                    free s9
              #                          store 8_0:i32 temp_21_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s9 with temp_21_array_init_ptr_17
              #                    occupy a1 with 8_0
    li      a1, 8
    sw      a1,0(s9)
              #                    free a1
              #                    free s9
              #                          mu d_17:146 
              #                          d_17 = chi d_17:146 
              #                          new_var temp_22_array_init_ptr_17:ptr->i32 
              #                          temp_22_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(2_0)] 
              #                    occupy a1 with temp_22_array_init_ptr_17
    li      a1, 0
              #                    occupy a2 with 3_0
    li      a2, 3
              #                    occupy a3 with 3_0
    li      a3, 3
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    found literal reg Some(s6) already exist with 2_0
              #                    occupy s6 with 2_0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,s11,s6
              #                    free s11
              #                    free s6
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,500
              #                    free a1
              #                          store 12_0:i32 temp_22_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_22_array_init_ptr_17
              #                    occupy a2 with 12_0
    li      a2, 12
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu d_17:152 
              #                          d_17 = chi d_17:152 
              #                          new_var temp_23_array_init_ptr_17:ptr->i32 
              #                          temp_23_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(1_0)] 
              #                    occupy a2 with temp_23_array_init_ptr_17
    li      a2, 0
              #                    found literal reg Some(a3) already exist with 3_0
              #                    occupy a3 with 3_0
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,s11
              #                    free a3
              #                    free s11
    add     a2,a2,a4
              #                    free a4
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,s11,a3
              #                    free s11
              #                    free a3
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,500
              #                    free a2
              #                          store 5_0:i32 temp_23_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a2 with temp_23_array_init_ptr_17
              #                    occupy a3 with 5_0
    li      a3, 5
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu d_17:158 
              #                          d_17 = chi d_17:158 
              #                          new_var temp_24_array_init_ptr_17:ptr->i32 
              #                          temp_24_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a3 with temp_24_array_init_ptr_17
    li      a3, 0
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy a5 with 3_0
    li      a5, 3
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a3,a3,a6
              #                    free a6
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,s11,a4
              #                    free s11
              #                    free a4
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,500
              #                    free a3
              #                          store 10_0:i32 temp_24_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a3 with temp_24_array_init_ptr_17
              #                    occupy a4 with 10_0
    li      a4, 10
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu d_17:164 
              #                          d_17 = chi d_17:164 
              #                          new_var temp_25_array_init_ptr_17:ptr->i32 
              #                          temp_25_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(2_0)] 
              #                    occupy a4 with temp_25_array_init_ptr_17
    li      a4, 0
              #                    occupy a5 with 3_0
    li      a5, 3
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a4,a4,a7
              #                    free a7
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    found literal reg Some(s6) already exist with 2_0
              #                    occupy s6 with 2_0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,s11,s6
              #                    free s11
              #                    free s6
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,500
              #                    free a4
              #                          store 3_0:i32 temp_25_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a4 with temp_25_array_init_ptr_17
              #                    occupy a5 with 3_0
    li      a5, 3
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu d_17:170 
              #                          d_17 = chi d_17:170 
              #                          new_var temp_26_array_init_ptr_17:ptr->i32 
              #                          temp_26_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(2_0)] 
              #                    occupy a5 with temp_26_array_init_ptr_17
    li      a5, 0
              #                    occupy a6 with 3_0
    li      a6, 3
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a6,s11
              #                    free a6
              #                    free s11
    add     a5,a5,a7
              #                    free a7
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    found literal reg Some(s6) already exist with 2_0
              #                    occupy s6 with 2_0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,s11,s6
              #                    free s11
              #                    free s6
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,500
              #                    free a5
              #                          store 6_0:i32 temp_26_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a5 with temp_26_array_init_ptr_17
              #                    occupy a6 with 6_0
    li      a6, 6
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu d_17:176 
              #                          d_17 = chi d_17:176 
              #                          new_var temp_27_array_init_ptr_17:ptr->i32 
              #                          temp_27_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a6 with temp_27_array_init_ptr_17
    li      a6, 0
              #                    occupy a7 with 3_0
    li      a7, 3
              #                    found literal reg Some(s6) already exist with 2_0
              #                    occupy s6 with 2_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a7,s6
              #                    free a7
              #                    free s6
    add     a6,a6,s2
              #                    free s2
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,s11,a7
              #                    free s11
              #                    free a7
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,500
              #                    free a6
              #                          store 7_0:i32 temp_27_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a6 with temp_27_array_init_ptr_17
              #                    occupy a7 with 7_0
    li      a7, 7
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          mu d_17:182 
              #                          d_17 = chi d_17:182 
              #                          new_var temp_28_array_init_ptr_17:ptr->i32 
              #                          temp_28_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(1_0)] 
              #                    occupy a7 with temp_28_array_init_ptr_17
    li      a7, 0
              #                    occupy s2 with 3_0
    li      s2, 3
              #                    occupy s3 with 3_0
    li      s3, 3
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s2,s3
              #                    free s2
              #                    free s3
    add     a7,a7,s5
              #                    free s5
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,s11,s2
              #                    free s11
              #                    free s2
    add     a7,a7,s3
              #                    free s3
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,500
              #                    free a7
              #                          store 11_0:i32 temp_28_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a7 with temp_28_array_init_ptr_17
              #                    occupy s2 with 11_0
    li      s2, 11
    sw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                          mu d_17:188 
              #                          d_17 = chi d_17:188 
              #                          new_var temp_29_array_init_ptr_17:ptr->i32 
              #                          temp_29_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(2_0)] 
              #                    occupy s2 with temp_29_array_init_ptr_17
    li      s2, 0
              #                    occupy s3 with 3_0
    li      s3, 3
              #                    found literal reg Some(s6) already exist with 2_0
              #                    occupy s6 with 2_0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s3,s6
              #                    free s3
              #                    free s6
    add     s2,s2,s5
              #                    free s5
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    found literal reg Some(s6) already exist with 2_0
              #                    occupy s6 with 2_0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,s11,s6
              #                    free s11
              #                    free s6
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,500
              #                    free s2
              #                          store 9_0:i32 temp_29_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s2 with temp_29_array_init_ptr_17
              #                    occupy s3 with 9_0
    li      s3, 9
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          mu d_17:194 
              #                          d_17 = chi d_17:194 
              #                          new_var temp_30_array_init_ptr_17:ptr->i32 
              #                          temp_30_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(1_0)] 
              #                    occupy s3 with temp_30_array_init_ptr_17
    li      s3, 0
              #                    occupy s5 with 3_0
    li      s5, 3
              #                    occupy s6 with 0_0
    li      s6, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s5,s6
              #                    free s5
              #                    free s6
    add     s3,s3,s7
              #                    free s7
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s11,s5
              #                    free s11
              #                    free s5
    add     s3,s3,s6
              #                    free s6
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,500
              #                    free s3
              #                          store 2_0:i32 temp_30_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s3 with temp_30_array_init_ptr_17
              #                    occupy s5 with 2_0
    li      s5, 2
    sw      s5,0(s3)
              #                    free s5
              #                    free s3
              #                          mu d_17:200 
              #                          d_17 = chi d_17:200 
              #                          new_var temp_31_array_init_ptr_17:ptr->i32 
              #                          temp_31_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s5 with temp_31_array_init_ptr_17
    li      s5, 0
              #                    occupy s6 with 3_0
    li      s6, 3
              #                    occupy s7 with 0_0
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s6,s7
              #                    free s6
              #                    free s7
    add     s5,s5,s8
              #                    free s8
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    found literal reg Some(s7) already exist with 0_0
              #                    occupy s7 with 0_0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s11,s7
              #                    free s11
              #                    free s7
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,500
              #                    free s5
              #                          store 1_0:i32 temp_31_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s5 with temp_31_array_init_ptr_17
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
    sw      s11,0(s5)
              #                    free s11
              #                    free s5
              #                          mu d_17:206 
              #                          d_17 = chi d_17:206 
              #                          new_var temp_32_array_init_ptr_17:ptr->i32 
              #                          temp_32_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(1_0)] 
              #                    occupy s6 with temp_32_array_init_ptr_17
    li      s6, 0
              #                    occupy s7 with 3_0
    li      s7, 3
              #                    occupy s8 with 4_0
    li      s8, 4
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,s7,s8
              #                    free s7
              #                    free s8
    add     s6,s6,s10
              #                    free s10
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s11,s7
              #                    free s11
              #                    free s7
    add     s6,s6,s8
              #                    free s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,500
              #                    free s6
              #                          store 14_0:i32 temp_32_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s6 with temp_32_array_init_ptr_17
              #                    occupy s7 with 14_0
    li      s7, 14
    sw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          mu d_17:212 
              #                          d_17 = chi d_17:212 
              #                          new_var e_17:Array:i32:[Some(5_0), Some(3_0)] 
              #                          new_var temp_33_array_init_ptr_17:ptr->i32 
              #                          temp_33_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [] 
              #                    occupy s7 with temp_33_array_init_ptr_17
    li      s7, 0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,308
              #                    free s7
              #                           Call void memset_0(temp_33_array_init_ptr_17, 0_0, 60_0) 
              #                    saved register dumping to mem
              #                    store to temp_19_array_init_ptr_17 in mem offset legal
    sd      s1,664(sp)
              #                    release s1 with temp_19_array_init_ptr_17
              #                    store to temp_29_array_init_ptr_17 in mem offset legal
    sd      s2,584(sp)
              #                    release s2 with temp_29_array_init_ptr_17
              #                    store to temp_30_array_init_ptr_17 in mem offset legal
    sd      s3,576(sp)
              #                    release s3 with temp_30_array_init_ptr_17
              #                    store to temp_20_array_init_ptr_17 in mem offset legal
    sd      s4,656(sp)
              #                    release s4 with temp_20_array_init_ptr_17
              #                    store to temp_31_array_init_ptr_17 in mem offset legal
    sd      s5,568(sp)
              #                    release s5 with temp_31_array_init_ptr_17
              #                    store to temp_32_array_init_ptr_17 in mem offset legal
    sd      s6,560(sp)
              #                    release s6 with temp_32_array_init_ptr_17
              #                    store to temp_33_array_init_ptr_17 in mem offset legal
    sd      s7,488(sp)
              #                    release s7 with temp_33_array_init_ptr_17
              #                    store to temp_21_array_init_ptr_17 in mem offset legal
    sd      s9,648(sp)
              #                    release s9 with temp_21_array_init_ptr_17
              #                    store to temp_18_array_init_ptr_17 in mem offset legal
    sd      a0,672(sp)
              #                    release a0 with temp_18_array_init_ptr_17
              #                    store to temp_22_array_init_ptr_17 in mem offset legal
    sd      a1,640(sp)
              #                    release a1 with temp_22_array_init_ptr_17
              #                    store to temp_23_array_init_ptr_17 in mem offset legal
    sd      a2,632(sp)
              #                    release a2 with temp_23_array_init_ptr_17
              #                    store to temp_24_array_init_ptr_17 in mem offset legal
    sd      a3,624(sp)
              #                    release a3 with temp_24_array_init_ptr_17
              #                    store to temp_25_array_init_ptr_17 in mem offset legal
    sd      a4,616(sp)
              #                    release a4 with temp_25_array_init_ptr_17
              #                    store to temp_26_array_init_ptr_17 in mem offset legal
    sd      a5,608(sp)
              #                    release a5 with temp_26_array_init_ptr_17
              #                    store to temp_27_array_init_ptr_17 in mem offset legal
    sd      a6,600(sp)
              #                    release a6 with temp_27_array_init_ptr_17
              #                    store to temp_28_array_init_ptr_17 in mem offset legal
    sd      a7,592(sp)
              #                    release a7 with temp_28_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_33_array_init_ptr_17_0
              #                    load from temp_33_array_init_ptr_17 in mem
    ld      a0,488(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_60_0_0
    li      a2, 60
              #                    arg load ended


    call    memset
              #                          new_var temp_34_array_init_ptr_17:ptr->i32 
              #                          temp_34_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(2_0)] 
              #                    occupy a0 with temp_34_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with 3_0
    li      a1, 3
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
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,308
              #                    free a0
              #                          store 12_0:i32 temp_34_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_34_array_init_ptr_17
              #                    occupy a7 with 12_0
    li      a7, 12
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                          mu e_17:224 
              #                          e_17 = chi e_17:224 
              #                          new_var temp_35_array_init_ptr_17:ptr->i32 
              #                          temp_35_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(1_0)] 
              #                    occupy s1 with temp_35_array_init_ptr_17
    li      s1, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a1,a4
              #                    free a1
              #                    free a4
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
    addi    s1,s1,308
              #                    free s1
              #                          store 5_0:i32 temp_35_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s1 with temp_35_array_init_ptr_17
              #                    occupy s5 with 5_0
    li      s5, 5
    sw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          mu e_17:230 
              #                          e_17 = chi e_17:230 
              #                          new_var temp_36_array_init_ptr_17:ptr->i32 
              #                          temp_36_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(1_0)] 
              #                    occupy s6 with temp_36_array_init_ptr_17
    li      s6, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    occupy s7 with 0_0
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,a1,s7
              #                    free a1
              #                    free s7
    add     s6,s6,s8
              #                    free s8
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s3,a4
              #                    free s3
              #                    free a4
    add     s6,s6,s9
              #                    free s9
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,308
              #                    free s6
              #                          store 2_0:i32 temp_36_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s6 with temp_36_array_init_ptr_17
              #                    found literal reg Some(a5) already exist with 2_0
              #                    occupy a5 with 2_0
    sw      a5,0(s6)
              #                    free a5
              #                    free s6
              #                          mu e_17:236 
              #                          e_17 = chi e_17:236 
              #                          new_var temp_37_array_init_ptr_17:ptr->i32 
              #                          temp_37_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(0_0)] 
              #                    occupy s10 with temp_37_array_init_ptr_17
    li      s10, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a1,s3
              #                    free a1
              #                    free s3
    add     s10,s10,s11
              #                    free s11
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(s7) already exist with 0_0
              #                    occupy s7 with 0_0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,s3,s7
              #                    free s3
              #                    free s7
    add     s10,s10,a1
              #                    free a1
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,308
              #                    free s10
              #                          store 4_0:i32 temp_37_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s10 with temp_37_array_init_ptr_17
              #                    occupy a1 with 4_0
    li      a1, 4
    sw      a1,0(s10)
              #                    free a1
              #                    free s10
              #                          mu e_17:242 
              #                          e_17 = chi e_17:242 
              #                          new_var temp_38_array_init_ptr_17:ptr->i32 
              #                          temp_38_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(2_0)] 
              #                    occupy a1 with temp_38_array_init_ptr_17
    li      a1, 0
              #                    found literal reg Some(a2) already exist with 3_0
              #                    occupy a2 with 3_0
              #                    found literal reg Some(s7) already exist with 0_0
              #                    occupy s7 with 0_0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a2,s7
              #                    free a2
              #                    free s7
    add     a1,a1,a3
              #                    free a3
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(a5) already exist with 2_0
              #                    occupy a5 with 2_0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,s3,a5
              #                    free s3
              #                    free a5
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,308
              #                    free a1
              #                          store 3_0:i32 temp_38_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_38_array_init_ptr_17
              #                    occupy a2 with 3_0
    li      a2, 3
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu e_17:248 
              #                          e_17 = chi e_17:248 
              #                          new_var temp_39_array_init_ptr_17:ptr->i32 
              #                          temp_39_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a2 with temp_39_array_init_ptr_17
    li      a2, 0
              #                    occupy a3 with 3_0
    li      a3, 3
              #                    found literal reg Some(s7) already exist with 0_0
              #                    occupy s7 with 0_0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,s7
              #                    free a3
              #                    free s7
    add     a2,a2,a4
              #                    free a4
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(s7) already exist with 0_0
              #                    occupy s7 with 0_0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,s3,s7
              #                    free s3
              #                    free s7
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,308
              #                    free a2
              #                          store 1_0:i32 temp_39_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a2 with temp_39_array_init_ptr_17
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
    sw      s3,0(a2)
              #                    free s3
              #                    free a2
              #                          mu e_17:254 
              #                          e_17 = chi e_17:254 
              #                          new_var temp_40_array_init_ptr_17:ptr->i32 
              #                          temp_40_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a3 with temp_40_array_init_ptr_17
    li      a3, 0
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy a5 with 3_0
    li      a5, 3
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a3,a3,a6
              #                    free a6
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(s7) already exist with 0_0
              #                    occupy s7 with 0_0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,s3,s7
              #                    free s3
              #                    free s7
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,308
              #                    free a3
              #                          store 10_0:i32 temp_40_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a3 with temp_40_array_init_ptr_17
              #                    occupy a4 with 10_0
    li      a4, 10
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu e_17:260 
              #                          e_17 = chi e_17:260 
              #                          new_var temp_41_array_init_ptr_17:ptr->i32 
              #                          temp_41_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a4 with temp_41_array_init_ptr_17
    li      a4, 0
              #                    found literal reg Some(a5) already exist with 3_0
              #                    occupy a5 with 3_0
              #                    occupy a6 with 2_0
    li      a6, 2
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a4,a4,a7
              #                    free a7
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(s7) already exist with 0_0
              #                    occupy s7 with 0_0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,s3,s7
              #                    free s3
              #                    free s7
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,308
              #                    free a4
              #                          store 7_0:i32 temp_41_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a4 with temp_41_array_init_ptr_17
              #                    occupy a5 with 7_0
    li      a5, 7
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu e_17:266 
              #                          e_17 = chi e_17:266 
              #                          new_var temp_42_array_init_ptr_17:ptr->i32 
              #                          temp_42_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a5 with temp_42_array_init_ptr_17
    li      a5, 0
              #                    occupy a6 with 3_0
    li      a6, 3
              #                    occupy a7 with 2_0
    li      a7, 2
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a6,a7
              #                    free a6
              #                    free a7
    add     a5,a5,s2
              #                    free s2
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,s3,a6
              #                    free s3
              #                    free a6
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,308
              #                    free a5
              #                          store 8_0:i32 temp_42_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a5 with temp_42_array_init_ptr_17
              #                    occupy a6 with 8_0
    li      a6, 8
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu e_17:272 
              #                          e_17 = chi e_17:272 
              #                          new_var temp_43_array_init_ptr_17:ptr->i32 
              #                          temp_43_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(1_0)] 
              #                    occupy a6 with temp_43_array_init_ptr_17
    li      a6, 0
              #                    occupy a7 with 3_0
    li      a7, 3
              #                    occupy s2 with 3_0
    li      s2, 3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a7,s2
              #                    free a7
              #                    free s2
    add     a6,a6,s3
              #                    free s3
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a7,s2
              #                    free a7
              #                    free s2
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,308
              #                    free a6
              #                          store 11_0:i32 temp_43_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a6 with temp_43_array_init_ptr_17
              #                    occupy a7 with 11_0
    li      a7, 11
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          mu e_17:278 
              #                          e_17 = chi e_17:278 
              #                          new_var temp_44_array_init_ptr_17:ptr->i32 
              #                          temp_44_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(0_0)] 
              #                    occupy a7 with temp_44_array_init_ptr_17
    li      a7, 0
              #                    occupy s2 with 3_0
    li      s2, 3
              #                    occupy s3 with 4_0
    li      s3, 4
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,s2,s3
              #                    free s2
              #                    free s3
    add     a7,a7,s4
              #                    free s4
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    found literal reg Some(s7) already exist with 0_0
              #                    occupy s7 with 0_0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,s2,s7
              #                    free s2
              #                    free s7
    add     a7,a7,s3
              #                    free s3
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,308
              #                    free a7
              #                          store 13_0:i32 temp_44_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a7 with temp_44_array_init_ptr_17
              #                    occupy s2 with 13_0
    li      s2, 13
    sw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                          mu e_17:284 
              #                          e_17 = chi e_17:284 
              #                          new_var temp_45_array_init_ptr_17:ptr->i32 
              #                          temp_45_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(2_0)] 
              #                    occupy s2 with temp_45_array_init_ptr_17
    li      s2, 0
              #                    occupy s3 with 3_0
    li      s3, 3
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s3,s4
              #                    free s3
              #                    free s4
    add     s2,s2,s5
              #                    free s5
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s3 with 2_0
    li      s3, 2
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s4,s3
              #                    free s4
              #                    free s3
    add     s2,s2,s5
              #                    free s5
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,308
              #                    free s2
              #                          store 6_0:i32 temp_45_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s2 with temp_45_array_init_ptr_17
              #                    occupy s3 with 6_0
    li      s3, 6
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          mu e_17:290 
              #                          e_17 = chi e_17:290 
              #                          new_var temp_46_array_init_ptr_17:ptr->i32 
              #                          temp_46_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(2_0)] 
              #                    occupy s3 with temp_46_array_init_ptr_17
    li      s3, 0
              #                    occupy s4 with 3_0
    li      s4, 3
              #                    occupy s5 with 4_0
    li      s5, 4
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s4,s5
              #                    free s4
              #                    free s5
    add     s3,s3,s7
              #                    free s7
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with 2_0
    li      s5, 2
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s4,s5
              #                    free s4
              #                    free s5
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,308
              #                    free s3
              #                          store 15_0:i32 temp_46_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s3 with temp_46_array_init_ptr_17
              #                    occupy s4 with 15_0
    li      s4, 15
    sw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          mu e_17:296 
              #                          e_17 = chi e_17:296 
              #                          new_var temp_47_array_init_ptr_17:ptr->i32 
              #                          temp_47_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(2_0)] 
              #                    occupy s4 with temp_47_array_init_ptr_17
    li      s4, 0
              #                    occupy s5 with 3_0
    li      s5, 3
              #                    occupy s7 with 2_0
    li      s7, 2
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s5,s7
              #                    free s5
              #                    free s7
    add     s4,s4,s8
              #                    free s8
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    found literal reg Some(s7) already exist with 2_0
              #                    occupy s7 with 2_0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s5,s7
              #                    free s5
              #                    free s7
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,308
              #                    free s4
              #                          store 9_0:i32 temp_47_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s4 with temp_47_array_init_ptr_17
              #                    occupy s5 with 9_0
    li      s5, 9
    sw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          mu e_17:302 
              #                          e_17 = chi e_17:302 
              #                          new_var temp_48_array_init_ptr_17:ptr->i32 
              #                          temp_48_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(1_0)] 
              #                    occupy s5 with temp_48_array_init_ptr_17
    li      s5, 0
              #                    occupy s7 with 3_0
    li      s7, 3
              #                    occupy s8 with 4_0
    li      s8, 4
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s7,s8
              #                    free s7
              #                    free s8
    add     s5,s5,s9
              #                    free s9
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s7,s8
              #                    free s7
              #                    free s8
    add     s5,s5,s9
              #                    free s9
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,308
              #                    free s5
              #                          store 14_0:i32 temp_48_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s5 with temp_48_array_init_ptr_17
              #                    occupy s7 with 14_0
    li      s7, 14
    sw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          mu e_17:308 
              #                          e_17 = chi e_17:308 
              #                          new_var f_17:Array:i32:[Some(5_0)] 
              #                          new_var g_17:Array:i32:[Some(5_0), Some(3_0)] 
              #                          new_var temp_49_array_init_ptr_17:ptr->i32 
              #                          temp_49_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [] 
              #                    occupy s7 with temp_49_array_init_ptr_17
    li      s7, 0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,156
              #                    free s7
              #                           Call void memset_0(temp_49_array_init_ptr_17, 0_0, 60_0) 
              #                    saved register dumping to mem
              #                    store to temp_35_array_init_ptr_17 in mem offset legal
    sd      s1,472(sp)
              #                    release s1 with temp_35_array_init_ptr_17
              #                    store to temp_45_array_init_ptr_17 in mem offset legal
    sd      s2,392(sp)
              #                    release s2 with temp_45_array_init_ptr_17
              #                    store to temp_46_array_init_ptr_17 in mem offset legal
    sd      s3,384(sp)
              #                    release s3 with temp_46_array_init_ptr_17
              #                    store to temp_47_array_init_ptr_17 in mem offset legal
    sd      s4,376(sp)
              #                    release s4 with temp_47_array_init_ptr_17
              #                    store to temp_48_array_init_ptr_17 in mem offset legal
    sd      s5,368(sp)
              #                    release s5 with temp_48_array_init_ptr_17
              #                    store to temp_36_array_init_ptr_17 in mem offset legal
    sd      s6,464(sp)
              #                    release s6 with temp_36_array_init_ptr_17
              #                    store to temp_49_array_init_ptr_17 in mem offset legal
    sd      s7,280(sp)
              #                    release s7 with temp_49_array_init_ptr_17
              #                    store to temp_37_array_init_ptr_17 in mem offset legal
    sd      s10,456(sp)
              #                    release s10 with temp_37_array_init_ptr_17
              #                    store to temp_34_array_init_ptr_17 in mem offset legal
    sd      a0,480(sp)
              #                    release a0 with temp_34_array_init_ptr_17
              #                    store to temp_38_array_init_ptr_17 in mem offset legal
    sd      a1,448(sp)
              #                    release a1 with temp_38_array_init_ptr_17
              #                    store to temp_39_array_init_ptr_17 in mem offset legal
    sd      a2,440(sp)
              #                    release a2 with temp_39_array_init_ptr_17
              #                    store to temp_40_array_init_ptr_17 in mem offset legal
    sd      a3,432(sp)
              #                    release a3 with temp_40_array_init_ptr_17
              #                    store to temp_41_array_init_ptr_17 in mem offset legal
    sd      a4,424(sp)
              #                    release a4 with temp_41_array_init_ptr_17
              #                    store to temp_42_array_init_ptr_17 in mem offset legal
    sd      a5,416(sp)
              #                    release a5 with temp_42_array_init_ptr_17
              #                    store to temp_43_array_init_ptr_17 in mem offset legal
    sd      a6,408(sp)
              #                    release a6 with temp_43_array_init_ptr_17
              #                    store to temp_44_array_init_ptr_17 in mem offset legal
    sd      a7,400(sp)
              #                    release a7 with temp_44_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_49_array_init_ptr_17_0
              #                    load from temp_49_array_init_ptr_17 in mem
    ld      a0,280(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_60_0_0
    li      a2, 60
              #                    arg load ended


    call    memset
              #                          new_var temp_50_array_init_ptr_17:ptr->i32 
              #                          temp_50_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a0 with temp_50_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    occupy a2 with 2_0
    li      a2, 2
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
    addi    a0,a0,156
              #                    free a0
              #                          store 12_0:i32 temp_50_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_50_array_init_ptr_17
              #                    occupy a7 with 12_0
    li      a7, 12
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                          mu g_17:322 
              #                          g_17 = chi g_17:322 
              #                          new_var temp_51_array_init_ptr_17:ptr->i32 
              #                          temp_51_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(1_0)] 
              #                    occupy s1 with temp_51_array_init_ptr_17
    li      s1, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a1,a5
              #                    free a1
              #                    free a5
    add     s1,s1,s2
              #                    free s2
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a5,a4
              #                    free a5
              #                    free a4
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,156
              #                    free s1
              #                          store 7_0:i32 temp_51_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s1 with temp_51_array_init_ptr_17
              #                    occupy s4 with 7_0
    li      s4, 7
    sw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          mu g_17:328 
              #                          g_17 = chi g_17:328 
              #                          new_var temp_52_array_init_ptr_17:ptr->i32 
              #                          temp_52_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(2_0)] 
              #                    occupy s5 with temp_52_array_init_ptr_17
    li      s5, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a1,a5
              #                    free a1
              #                    free a5
    add     s5,s5,s6
              #                    free s6
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a2) already exist with 2_0
              #                    occupy a2 with 2_0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a5,a2
              #                    free a5
              #                    free a2
    add     s5,s5,s7
              #                    free s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,156
              #                    free s5
              #                          store 10_0:i32 temp_52_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s5 with temp_52_array_init_ptr_17
              #                    occupy s8 with 10_0
    li      s8, 10
    sw      s8,0(s5)
              #                    free s8
              #                    free s5
              #                          mu g_17:334 
              #                          g_17 = chi g_17:334 
              #                          new_var temp_53_array_init_ptr_17:ptr->i32 
              #                          temp_53_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s9 with temp_53_array_init_ptr_17
    li      s9, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     s9,s9,s11
              #                    free s11
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(s10) already exist with 0_0
              #                    occupy s10 with 0_0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a5,s10
              #                    free a5
              #                    free s10
    add     s9,s9,a1
              #                    free a1
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,156
              #                    free s9
              #                          store 1_0:i32 temp_53_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s9 with temp_53_array_init_ptr_17
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
    sw      a5,0(s9)
              #                    free a5
              #                    free s9
              #                          mu g_17:340 
              #                          g_17 = chi g_17:340 
              #                          new_var temp_54_array_init_ptr_17:ptr->i32 
              #                          temp_54_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a1 with temp_54_array_init_ptr_17
    li      a1, 0
              #                    occupy a2 with 3_0
    li      a2, 3
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(s10) already exist with 0_0
              #                    occupy s10 with 0_0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a5,s10
              #                    free a5
              #                    free s10
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,156
              #                    free a1
              #                          store 11_0:i32 temp_54_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_54_array_init_ptr_17
              #                    occupy a2 with 11_0
    li      a2, 11
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu g_17:346 
              #                          g_17 = chi g_17:346 
              #                          new_var temp_55_array_init_ptr_17:ptr->i32 
              #                          temp_55_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(2_0)] 
              #                    occupy a2 with temp_55_array_init_ptr_17
    li      a2, 0
              #                    occupy a3 with 3_0
    li      a3, 3
              #                    found literal reg Some(s10) already exist with 0_0
              #                    occupy s10 with 0_0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,s10
              #                    free a3
              #                    free s10
    add     a2,a2,a4
              #                    free a4
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a5,a3
              #                    free a5
              #                    free a3
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,156
              #                    free a2
              #                          store 3_0:i32 temp_55_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a2 with temp_55_array_init_ptr_17
              #                    occupy a3 with 3_0
    li      a3, 3
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu g_17:352 
              #                          g_17 = chi g_17:352 
              #                          new_var temp_56_array_init_ptr_17:ptr->i32 
              #                          temp_56_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a3 with temp_56_array_init_ptr_17
    li      a3, 0
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a3,a3,a6
              #                    free a6
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(s10) already exist with 0_0
              #                    occupy s10 with 0_0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a5,s10
              #                    free a5
              #                    free s10
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,156
              #                    free a3
              #                          store 4_0:i32 temp_56_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a3 with temp_56_array_init_ptr_17
              #                    occupy a4 with 4_0
    li      a4, 4
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu g_17:358 
              #                          g_17 = chi g_17:358 
              #                          new_var temp_57_array_init_ptr_17:ptr->i32 
              #                          temp_57_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a4 with temp_57_array_init_ptr_17
    li      a4, 0
              #                    occupy a5 with 3_0
    li      a5, 3
              #                    found literal reg Some(s10) already exist with 0_0
              #                    occupy s10 with 0_0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,s10
              #                    free a5
              #                    free s10
    add     a4,a4,a6
              #                    free a6
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,156
              #                    free a4
              #                          store 2_0:i32 temp_57_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a4 with temp_57_array_init_ptr_17
              #                    occupy a5 with 2_0
    li      a5, 2
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu g_17:364 
              #                          g_17 = chi g_17:364 
              #                          new_var h_17:Array:i32:[Some(3_0)] 
              #                          new_var i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] 
              #                          new_var temp_58_array_init_ptr_17:ptr->i32 
              #                          temp_58_array_init_ptr_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [] 
              #                    occupy a5 with temp_58_array_init_ptr_17
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,0
              #                    free a5
              #                           Call void memset_0(temp_58_array_init_ptr_17, 0_0, 96_0) 
              #                    saved register dumping to mem
              #                    store to temp_51_array_init_ptr_17 in mem offset legal
    sd      s1,264(sp)
              #                    release s1 with temp_51_array_init_ptr_17
              #                    store to temp_52_array_init_ptr_17 in mem offset legal
    sd      s5,256(sp)
              #                    release s5 with temp_52_array_init_ptr_17
              #                    store to temp_53_array_init_ptr_17 in mem offset legal
    sd      s9,248(sp)
              #                    release s9 with temp_53_array_init_ptr_17
              #                    store to temp_50_array_init_ptr_17 in mem offset legal
    sd      a0,272(sp)
              #                    release a0 with temp_50_array_init_ptr_17
              #                    store to temp_54_array_init_ptr_17 in mem offset legal
    sd      a1,240(sp)
              #                    release a1 with temp_54_array_init_ptr_17
              #                    store to temp_55_array_init_ptr_17 in mem offset legal
    sd      a2,232(sp)
              #                    release a2 with temp_55_array_init_ptr_17
              #                    store to temp_56_array_init_ptr_17 in mem offset legal
    sd      a3,224(sp)
              #                    release a3 with temp_56_array_init_ptr_17
              #                    store to temp_57_array_init_ptr_17 in mem offset legal
    sd      a4,216(sp)
              #                    release a4 with temp_57_array_init_ptr_17
              #                    store to temp_58_array_init_ptr_17 in mem offset legal
    sd      a5,136(sp)
              #                    release a5 with temp_58_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_58_array_init_ptr_17_0
              #                    load from temp_58_array_init_ptr_17 in mem
    ld      a0,136(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_96_0_0
    li      a2, 96
              #                    arg load ended


    call    memset
              #                          new_var temp_59_array_init_ptr_17:ptr->i32 
              #                          temp_59_array_init_ptr_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(1_0), Some(0_0)] 
              #                    occupy a0 with temp_59_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with 12_0
    li      a1, 12
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 4_0
    li      a4, 4
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
              #                          store 5_0:i32 temp_59_array_init_ptr_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
              #                    occupy a0 with temp_59_array_init_ptr_17
              #                    occupy s1 with 5_0
    li      s1, 5
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                          mu i_17:378 
              #                          i_17 = chi i_17:378 
              #                          new_var temp_60_array_init_ptr_17:ptr->i32 
              #                          temp_60_array_init_ptr_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(0_0), Some(1_0)] 
              #                    occupy s2 with temp_60_array_init_ptr_17
    li      s2, 0
              #                    found literal reg Some(a1) already exist with 12_0
              #                    occupy a1 with 12_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a1,a2
              #                    free a1
              #                    free a2
    add     s2,s2,s3
              #                    free s3
              #                    found literal reg Some(a4) already exist with 4_0
              #                    occupy a4 with 4_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a4,a2
              #                    free a4
              #                    free a2
    add     s2,s2,s4
              #                    free s4
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a5,s5
              #                    free a5
              #                    free s5
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,0
              #                    free s2
              #                          store 2_0:i32 temp_60_array_init_ptr_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
              #                    occupy s2 with temp_60_array_init_ptr_17
              #                    occupy s7 with 2_0
    li      s7, 2
    sw      s7,0(s2)
              #                    free s7
              #                    free s2
              #                          mu i_17:384 
              #                          i_17 = chi i_17:384 
              #                          new_var temp_61_array_init_ptr_17:ptr->i32 
              #                          temp_61_array_init_ptr_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(0_0), Some(2_0)] 
              #                    occupy s8 with temp_61_array_init_ptr_17
    li      s8, 0
              #                    found literal reg Some(a1) already exist with 12_0
              #                    occupy a1 with 12_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,a1,a2
              #                    free a1
              #                    free a2
    add     s8,s8,s9
              #                    free s9
              #                    found literal reg Some(a4) already exist with 4_0
              #                    occupy a4 with 4_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a4,a2
              #                    free a4
              #                    free a2
    add     s8,s8,s10
              #                    free s10
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(s7) already exist with 2_0
              #                    occupy s7 with 2_0
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a5,s7
              #                    free a5
              #                    free s7
    add     s8,s8,s11
              #                    free s11
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,0
              #                    free s8
              #                          store 3_0:i32 temp_61_array_init_ptr_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
              #                    occupy s8 with temp_61_array_init_ptr_17
              #                    occupy a1 with 3_0
    li      a1, 3
    sw      a1,0(s8)
              #                    free a1
              #                    free s8
              #                          mu i_17:390 
              #                          i_17 = chi i_17:390 
              #                          new_var temp_62_array_init_ptr_17:ptr->i32 
              #                          temp_62_array_init_ptr_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(0_0), Some(0_0)] 
              #                    occupy a1 with temp_62_array_init_ptr_17
    li      a1, 0
              #                    occupy a2 with 12_0
    li      a2, 12
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
              #                    occupy a2 with 4_0
    li      a2, 4
              #                    found literal reg Some(a3) already exist with 0_0
              #                    occupy a3 with 0_0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a3) already exist with 0_0
              #                    occupy a3 with 0_0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a5,a3
              #                    free a5
              #                    free a3
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,0
              #                    free a1
              #                          store 1_0:i32 temp_62_array_init_ptr_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
              #                    occupy a1 with temp_62_array_init_ptr_17
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          mu i_17:396 
              #                          i_17 = chi i_17:396 
              #                          new_var temp_63_array_init_ptr_17:ptr->i32 
              #                          temp_63_array_init_ptr_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(0_0), Some(3_0)] 
              #                    occupy a2 with temp_63_array_init_ptr_17
    li      a2, 0
              #                    occupy a3 with 12_0
    li      a3, 12
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
              #                    occupy a3 with 4_0
    li      a3, 4
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    occupy a3 with 3_0
    li      a3, 3
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,s5,a3
              #                    free s5
              #                    free a3
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,0
              #                    free a2
              #                          store 4_0:i32 temp_63_array_init_ptr_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
              #                    occupy a2 with temp_63_array_init_ptr_17
              #                    occupy a3 with 4_0
    li      a3, 4
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu i_17:402 
              #                          i_17 = chi i_17:402 
              #                          ret 4_0 
              #                    load from ra_main_0 in mem
    ld      ra,1024(sp)
              #                    load from s0_main_0 in mem
    ld      s0,1016(sp)
              #                    store to temp_59_array_init_ptr_17 in mem offset legal
    sd      a0,128(sp)
              #                    release a0 with temp_59_array_init_ptr_17
              #                    occupy a0 with 4_0
    li      a0, 4
    addi    sp,sp,1032
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_62_array_init_ptr_17, tracked: true } |     a2:Freed { symidx: temp_63_array_init_ptr_17, tracked: true } |     s2:Freed { symidx: temp_60_array_init_ptr_17, tracked: true } |     s8:Freed { symidx: temp_61_array_init_ptr_17, tracked: true } | 
