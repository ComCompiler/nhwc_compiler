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
              #                    mem layout:|ra_main:8 at 968|s0_main:8 at 960|a:60 at 900|b:60 at 840|temp_0_array_init_ptr:8 at 832|temp_1_array_init_ptr:8 at 824|temp_2_array_init_ptr:8 at 816|temp_3_array_init_ptr:8 at 808|temp_4_array_init_ptr:8 at 800|temp_5_array_init_ptr:8 at 792|temp_6_array_init_ptr:8 at 784|temp_7_array_init_ptr:8 at 776|temp_8_array_init_ptr:8 at 768|temp_9_array_init_ptr:8 at 760|temp_10_array_init_ptr:8 at 752|temp_11_array_init_ptr:8 at 744|temp_12_array_init_ptr:8 at 736|temp_13_array_init_ptr:8 at 728|temp_14_array_init_ptr:8 at 720|c:60 at 660|none:4 at 656|temp_15_array_init_ptr:8 at 648|temp_16_array_init_ptr:8 at 640|temp_17_array_init_ptr:8 at 632|temp_18_array_init_ptr:8 at 624|temp_19_array_init_ptr:8 at 616|temp_20_array_init_ptr:8 at 608|temp_21_array_init_ptr:8 at 600|temp_22_array_init_ptr:8 at 592|temp_23_array_init_ptr:8 at 584|temp_24_array_init_ptr:8 at 576|temp_25_array_init_ptr:8 at 568|temp_26_array_init_ptr:8 at 560|temp_27_array_init_ptr:8 at 552|temp_28_array_init_ptr:8 at 544|temp_29_array_init_ptr:8 at 536|d:60 at 476|none:4 at 472|temp_30_array_init_ptr:8 at 464|temp_31_array_init_ptr:8 at 456|temp_32_array_init_ptr:8 at 448|temp_33_array_init_ptr:8 at 440|temp_34_array_init_ptr:8 at 432|temp_35_array_init_ptr:8 at 424|temp_36_array_init_ptr:8 at 416|temp_37_array_init_ptr:8 at 408|temp_38_array_init_ptr:8 at 400|temp_39_array_init_ptr:8 at 392|temp_40_array_init_ptr:8 at 384|temp_41_array_init_ptr:8 at 376|temp_42_array_init_ptr:8 at 368|temp_43_array_init_ptr:8 at 360|temp_44_array_init_ptr:8 at 352|e:60 at 292|f:20 at 272|temp_45_array_init_ptr:8 at 264|temp_46_array_init_ptr:8 at 256|temp_47_array_init_ptr:8 at 248|temp_48_array_init_ptr:8 at 240|temp_49_array_init_ptr:8 at 232|temp_50_array_init_ptr:8 at 224|temp_51_array_init_ptr:8 at 216|temp_52_array_init_ptr:8 at 208|g:60 at 148|h:12 at 136|temp_53_array_init_ptr:8 at 128|temp_54_array_init_ptr:8 at 120|temp_55_array_init_ptr:8 at 112|temp_56_array_init_ptr:8 at 104|temp_57_array_init_ptr:8 at 96|i:96 at 0
    addi    sp,sp,-976
              #                    store to ra_main_0 in mem offset legal
    sd      ra,968(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,960(sp)
    addi    s0,sp,976
              #                          alloc Array:i32:[Some(5_0), Some(3_0)] a_17 
              #                          alloc Array:i32:[Some(5_0), Some(3_0)] b_17 
              #                          alloc ptr->i32 temp_0_array_init_ptr_17 
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
              #                          alloc Array:i32:[Some(5_0), Some(3_0)] c_17 
              #                          alloc ptr->i32 temp_15_array_init_ptr_17 
              #                          alloc ptr->i32 temp_16_array_init_ptr_17 
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
              #                          alloc Array:i32:[Some(5_0), Some(3_0)] d_17 
              #                          alloc ptr->i32 temp_30_array_init_ptr_17 
              #                          alloc ptr->i32 temp_31_array_init_ptr_17 
              #                          alloc ptr->i32 temp_32_array_init_ptr_17 
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
              #                          alloc Array:i32:[Some(5_0), Some(3_0)] e_17 
              #                          alloc Array:i32:[Some(5_0)] f_17 
              #                          alloc ptr->i32 temp_45_array_init_ptr_17 
              #                          alloc ptr->i32 temp_46_array_init_ptr_17 
              #                          alloc ptr->i32 temp_47_array_init_ptr_17 
              #                          alloc ptr->i32 temp_48_array_init_ptr_17 
              #                          alloc ptr->i32 temp_49_array_init_ptr_17 
              #                          alloc ptr->i32 temp_50_array_init_ptr_17 
              #                          alloc ptr->i32 temp_51_array_init_ptr_17 
              #                          alloc ptr->i32 temp_52_array_init_ptr_17 
              #                          alloc Array:i32:[Some(5_0), Some(3_0)] g_17 
              #                          alloc Array:i32:[Some(3_0)] h_17 
              #                          alloc ptr->i32 temp_53_array_init_ptr_17 
              #                          alloc ptr->i32 temp_54_array_init_ptr_17 
              #                          alloc ptr->i32 temp_55_array_init_ptr_17 
              #                          alloc ptr->i32 temp_56_array_init_ptr_17 
              #                          alloc ptr->i32 temp_57_array_init_ptr_17 
              #                          alloc Array:i32:[Some(2_0), Some(3_0), Some(4_0)] i_17 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var a_17:Array:i32:[Some(5_0), Some(3_0)] 
              #                          new_var b_17:Array:i32:[Some(5_0), Some(3_0)] 
              #                          new_var c_17:Array:i32:[Some(5_0), Some(3_0)] 
              #                          new_var temp_0_array_init_ptr_17:ptr->i32 
              #                          temp_0_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_0_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_c_17_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with _anonymous_of_c_17_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,660
              #                    free a0
              #                          store 2_0:i32 temp_0_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_0_array_init_ptr_17
              #                    occupy a7 with 2_0
    li      a7, 2
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                          mu c_17:24 
              #                          c_17 = chi c_17:24 
              #                          new_var temp_1_array_init_ptr_17:ptr->i32 
              #                          temp_1_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(2_0)] 
              #                    occupy s1 with temp_1_array_init_ptr_17
    li      s1, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s2 with _anonymous_of_c_17_0
    mul     s2,a1,a2
              #                    free a1
              #                    free a2
    add     s1,s1,s2
              #                    free s2
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a7) already exist with 2_0
              #                    occupy a7 with 2_0
              #                    occupy s3 with _anonymous_of_c_17_0
    mul     s3,a5,a7
              #                    free a5
              #                    free a7
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,660
              #                    free s1
              #                          store 3_0:i32 temp_1_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s1 with temp_1_array_init_ptr_17
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
    sw      a1,0(s1)
              #                    free a1
              #                    free s1
              #                          mu c_17:30 
              #                          c_17 = chi c_17:30 
              #                          new_var temp_2_array_init_ptr_17:ptr->i32 
              #                          temp_2_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(1_0)] 
              #                    occupy s4 with temp_2_array_init_ptr_17
    li      s4, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    occupy s5 with 4_0
    li      s5, 4
              #                    occupy s6 with _anonymous_of_c_17_0
    mul     s6,a1,s5
              #                    free a1
              #                    free s5
    add     s4,s4,s6
              #                    free s6
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s7 with _anonymous_of_c_17_0
    mul     s7,a5,a4
              #                    free a5
              #                    free a4
    add     s4,s4,s7
              #                    free s7
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,660
              #                    free s4
              #                          store 14_0:i32 temp_2_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s4 with temp_2_array_init_ptr_17
              #                    occupy s8 with 14_0
    li      s8, 14
    sw      s8,0(s4)
              #                    free s8
              #                    free s4
              #                          mu c_17:36 
              #                          c_17 = chi c_17:36 
              #                          new_var temp_3_array_init_ptr_17:ptr->i32 
              #                          temp_3_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(1_0)] 
              #                    occupy s9 with temp_3_array_init_ptr_17
    li      s9, 0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s10 with _anonymous_of_c_17_0
    mul     s10,a1,a5
              #                    free a1
              #                    free a5
    add     s9,s9,s10
              #                    free s10
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s11 with _anonymous_of_c_17_0
    mul     s11,a5,a4
              #                    free a5
              #                    free a4
    add     s9,s9,s11
              #                    free s11
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,660
              #                    free s9
              #                          store 5_0:i32 temp_3_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s9 with temp_3_array_init_ptr_17
              #                    occupy a1 with 5_0
    li      a1, 5
    sw      a1,0(s9)
              #                    free a1
              #                    free s9
              #                          mu c_17:42 
              #                          c_17 = chi c_17:42 
              #                          new_var temp_4_array_init_ptr_17:ptr->i32 
              #                          temp_4_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a1 with temp_4_array_init_ptr_17
    li      a1, 0
              #                    occupy a2 with 3_0
    li      a2, 3
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with _anonymous_of_c_17_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a3) already exist with 0_0
              #                    occupy a3 with 0_0
              #                    occupy a2 with _anonymous_of_c_17_0
    mul     a2,a5,a3
              #                    free a5
              #                    free a3
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,660
              #                    free a1
              #                          store 1_0:i32 temp_4_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_4_array_init_ptr_17
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          mu c_17:48 
              #                          c_17 = chi c_17:48 
              #                          new_var temp_5_array_init_ptr_17:ptr->i32 
              #                          temp_5_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a2 with temp_5_array_init_ptr_17
    li      a2, 0
              #                    occupy a3 with 3_0
    li      a3, 3
              #                    found literal reg Some(a7) already exist with 2_0
              #                    occupy a7 with 2_0
              #                    occupy a4 with _anonymous_of_c_17_0
    mul     a4,a3,a7
              #                    free a3
              #                    free a7
    add     a2,a2,a4
              #                    free a4
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with _anonymous_of_c_17_0
    mul     a4,a5,a3
              #                    free a5
              #                    free a3
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,660
              #                    free a2
              #                          store 7_0:i32 temp_5_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a2 with temp_5_array_init_ptr_17
              #                    occupy a3 with 7_0
    li      a3, 7
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu c_17:54 
              #                          c_17 = chi c_17:54 
              #                          new_var temp_6_array_init_ptr_17:ptr->i32 
              #                          temp_6_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(2_0)] 
              #                    occupy a3 with temp_6_array_init_ptr_17
    li      a3, 0
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    found literal reg Some(a7) already exist with 2_0
              #                    occupy a7 with 2_0
              #                    occupy a5 with _anonymous_of_c_17_0
    mul     a5,a4,a7
              #                    free a4
              #                    free a7
    add     a3,a3,a5
              #                    free a5
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    found literal reg Some(a7) already exist with 2_0
              #                    occupy a7 with 2_0
              #                    occupy a5 with _anonymous_of_c_17_0
    mul     a5,a4,a7
              #                    free a4
              #                    free a7
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,660
              #                    free a3
              #                          store 9_0:i32 temp_6_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a3 with temp_6_array_init_ptr_17
              #                    occupy a4 with 9_0
    li      a4, 9
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu c_17:60 
              #                          c_17 = chi c_17:60 
              #                          new_var temp_7_array_init_ptr_17:ptr->i32 
              #                          temp_7_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(2_0)] 
              #                    occupy a4 with temp_7_array_init_ptr_17
    li      a4, 0
              #                    occupy a5 with 3_0
    li      a5, 3
              #                    found literal reg Some(s5) already exist with 4_0
              #                    occupy s5 with 4_0
              #                    occupy a6 with _anonymous_of_c_17_0
    mul     a6,a5,s5
              #                    free a5
              #                    free s5
    add     a4,a4,a6
              #                    free a6
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    found literal reg Some(a7) already exist with 2_0
              #                    occupy a7 with 2_0
              #                    occupy a6 with _anonymous_of_c_17_0
    mul     a6,a5,a7
              #                    free a5
              #                    free a7
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,660
              #                    free a4
              #                          store 15_0:i32 temp_7_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a4 with temp_7_array_init_ptr_17
              #                    occupy a5 with 15_0
    li      a5, 15
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu c_17:66 
              #                          c_17 = chi c_17:66 
              #                          new_var temp_8_array_init_ptr_17:ptr->i32 
              #                          temp_8_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(2_0)] 
              #                    occupy a5 with temp_8_array_init_ptr_17
    li      a5, 0
              #                    occupy a6 with 3_0
    li      a6, 3
              #                    occupy a7 with 3_0
    li      a7, 3
              #                    occupy s2 with _anonymous_of_c_17_0
    mul     s2,a6,a7
              #                    free a6
              #                    free a7
    add     a5,a5,s2
              #                    free s2
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 2_0
    li      a7, 2
              #                    occupy s2 with _anonymous_of_c_17_0
    mul     s2,a6,a7
              #                    free a6
              #                    free a7
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,660
              #                    free a5
              #                          store 12_0:i32 temp_8_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a5 with temp_8_array_init_ptr_17
              #                    occupy a6 with 12_0
    li      a6, 12
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu c_17:72 
              #                          c_17 = chi c_17:72 
              #                          new_var temp_9_array_init_ptr_17:ptr->i32 
              #                          temp_9_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(0_0)] 
              #                    occupy a6 with temp_9_array_init_ptr_17
    li      a6, 0
              #                    occupy a7 with 3_0
    li      a7, 3
              #                    found literal reg Some(s5) already exist with 4_0
              #                    occupy s5 with 4_0
              #                    occupy s2 with _anonymous_of_c_17_0
    mul     s2,a7,s5
              #                    free a7
              #                    free s5
    add     a6,a6,s2
              #                    free s2
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s3 with _anonymous_of_c_17_0
    mul     s3,a7,s2
              #                    free a7
              #                    free s2
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,660
              #                    free a6
              #                          store 13_0:i32 temp_9_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a6 with temp_9_array_init_ptr_17
              #                    occupy a7 with 13_0
    li      a7, 13
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          mu c_17:78 
              #                          c_17 = chi c_17:78 
              #                          new_var temp_10_array_init_ptr_17:ptr->i32 
              #                          temp_10_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a7 with temp_10_array_init_ptr_17
    li      a7, 0
              #                    occupy s2 with 3_0
    li      s2, 3
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s5 with _anonymous_of_c_17_0
    mul     s5,s2,s3
              #                    free s2
              #                    free s3
    add     a7,a7,s5
              #                    free s5
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s5 with _anonymous_of_c_17_0
    mul     s5,s3,s2
              #                    free s3
              #                    free s2
    add     a7,a7,s5
              #                    free s5
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,660
              #                    free a7
              #                          store 4_0:i32 temp_10_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a7 with temp_10_array_init_ptr_17
              #                    occupy s2 with 4_0
    li      s2, 4
    sw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                          mu c_17:84 
              #                          c_17 = chi c_17:84 
              #                          new_var temp_11_array_init_ptr_17:ptr->i32 
              #                          temp_11_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(1_0)] 
              #                    occupy s2 with temp_11_array_init_ptr_17
    li      s2, 0
              #                    occupy s3 with 3_0
    li      s3, 3
              #                    occupy s5 with 2_0
    li      s5, 2
              #                    occupy s6 with _anonymous_of_c_17_0
    mul     s6,s3,s5
              #                    free s3
              #                    free s5
    add     s2,s2,s6
              #                    free s6
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with _anonymous_of_c_17_0
    mul     s6,s3,s5
              #                    free s3
              #                    free s5
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,660
              #                    free s2
              #                          store 8_0:i32 temp_11_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s2 with temp_11_array_init_ptr_17
              #                    occupy s3 with 8_0
    li      s3, 8
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          mu c_17:90 
              #                          c_17 = chi c_17:90 
              #                          new_var temp_12_array_init_ptr_17:ptr->i32 
              #                          temp_12_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(1_0)] 
              #                    occupy s3 with temp_12_array_init_ptr_17
    li      s3, 0
              #                    occupy s5 with 3_0
    li      s5, 3
              #                    occupy s6 with 3_0
    li      s6, 3
              #                    occupy s7 with _anonymous_of_c_17_0
    mul     s7,s5,s6
              #                    free s5
              #                    free s6
    add     s3,s3,s7
              #                    free s7
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s7 with _anonymous_of_c_17_0
    mul     s7,s5,s6
              #                    free s5
              #                    free s6
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,660
              #                    free s3
              #                          store 11_0:i32 temp_12_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s3 with temp_12_array_init_ptr_17
              #                    occupy s5 with 11_0
    li      s5, 11
    sw      s5,0(s3)
              #                    free s5
              #                    free s3
              #                          mu c_17:96 
              #                          c_17 = chi c_17:96 
              #                          new_var temp_13_array_init_ptr_17:ptr->i32 
              #                          temp_13_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(2_0)] 
              #                    occupy s5 with temp_13_array_init_ptr_17
    li      s5, 0
              #                    occupy s6 with 3_0
    li      s6, 3
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with _anonymous_of_c_17_0
    mul     s8,s6,s7
              #                    free s6
              #                    free s7
    add     s5,s5,s8
              #                    free s8
              #                    found literal reg Some(s7) already exist with 1_0
              #                    occupy s7 with 1_0
              #                    occupy s6 with 2_0
    li      s6, 2
              #                    occupy s8 with _anonymous_of_c_17_0
    mul     s8,s7,s6
              #                    free s7
              #                    free s6
    add     s5,s5,s8
              #                    free s8
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,660
              #                    free s5
              #                          store 6_0:i32 temp_13_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s5 with temp_13_array_init_ptr_17
              #                    occupy s6 with 6_0
    li      s6, 6
    sw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                          mu c_17:102 
              #                          c_17 = chi c_17:102 
              #                          new_var temp_14_array_init_ptr_17:ptr->i32 
              #                          temp_14_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(0_0)] 
              #                    occupy s6 with temp_14_array_init_ptr_17
    li      s6, 0
              #                    occupy s7 with 3_0
    li      s7, 3
              #                    occupy s8 with 3_0
    li      s8, 3
              #                    occupy s10 with _anonymous_of_c_17_0
    mul     s10,s7,s8
              #                    free s7
              #                    free s8
    add     s6,s6,s10
              #                    free s10
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with 0_0
    li      s8, 0
              #                    occupy s10 with _anonymous_of_c_17_0
    mul     s10,s7,s8
              #                    free s7
              #                    free s8
    add     s6,s6,s10
              #                    free s10
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,660
              #                    free s6
              #                          store 10_0:i32 temp_14_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s6 with temp_14_array_init_ptr_17
              #                    occupy s7 with 10_0
    li      s7, 10
    sw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          mu c_17:108 
              #                          c_17 = chi c_17:108 
              #                          new_var d_17:Array:i32:[Some(5_0), Some(3_0)] 
              #                          new_var temp_15_array_init_ptr_17:ptr->i32 
              #                          temp_15_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(2_0)] 
              #                    occupy s7 with temp_15_array_init_ptr_17
    li      s7, 0
              #                    occupy s8 with 3_0
    li      s8, 3
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with _anonymous_of_d_17_0
    mul     s11,s8,s10
              #                    free s8
              #                    free s10
    add     s7,s7,s11
              #                    free s11
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    occupy s11 with _anonymous_of_d_17_0
    mul     s11,s8,s10
              #                    free s8
              #                    free s10
    add     s7,s7,s11
              #                    free s11
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,476
              #                    free s7
              #                          store 12_0:i32 temp_15_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s7 with temp_15_array_init_ptr_17
              #                    occupy s8 with 12_0
    li      s8, 12
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                          mu d_17:116 
              #                          d_17 = chi d_17:116 
              #                          new_var temp_16_array_init_ptr_17:ptr->i32 
              #                          temp_16_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(0_0)] 
              #                    occupy s8 with temp_16_array_init_ptr_17
    li      s8, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 2_0
    li      s11, 2
              #                    store to temp_0_array_init_ptr_17 in mem offset legal
    sd      a0,832(sp)
              #                    release a0 with temp_0_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_d_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     s8,s8,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    occupy s11 with _anonymous_of_d_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     s8,s8,s11
              #                    free s11
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,476
              #                    free s8
              #                          store 7_0:i32 temp_16_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy s8 with temp_16_array_init_ptr_17
              #                    occupy a0 with 7_0
    li      a0, 7
    sw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          mu d_17:122 
              #                          d_17 = chi d_17:122 
              #                          new_var temp_17_array_init_ptr_17:ptr->i32 
              #                          temp_17_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a0 with temp_17_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to temp_4_array_init_ptr_17 in mem offset legal
    sd      a1,800(sp)
              #                    release a1 with temp_4_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_d_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy s10 with _anonymous_of_d_17_0
    mul     s10,s11,a1
              #                    free s11
              #                    free a1
    add     a0,a0,s10
              #                    free s10
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,476
              #                    free a0
              #                          store 4_0:i32 temp_17_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_17_array_init_ptr_17
              #                    occupy a1 with 4_0
    li      a1, 4
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu d_17:128 
              #                          d_17 = chi d_17:128 
              #                          new_var temp_18_array_init_ptr_17:ptr->i32 
              #                          temp_18_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a1 with temp_18_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 3_0
    li      s11, 3
              #                    store to temp_17_array_init_ptr_17 in mem offset legal
    sd      a0,632(sp)
              #                    release a0 with temp_17_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_d_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    occupy s11 with _anonymous_of_d_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     a1,a1,s11
              #                    free s11
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,476
              #                    free a1
              #                          store 10_0:i32 temp_18_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_18_array_init_ptr_17
              #                    occupy a0 with 10_0
    li      a0, 10
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu d_17:134 
              #                          d_17 = chi d_17:134 
              #                          new_var temp_19_array_init_ptr_17:ptr->i32 
              #                          temp_19_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(1_0)] 
              #                    occupy a0 with temp_19_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 4_0
    li      s11, 4
              #                    store to temp_18_array_init_ptr_17 in mem offset legal
    sd      a1,624(sp)
              #                    release a1 with temp_18_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_d_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with _anonymous_of_d_17_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,s11
              #                    free s11
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,476
              #                    free a0
              #                          store 14_0:i32 temp_19_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_19_array_init_ptr_17
              #                    occupy a1 with 14_0
    li      a1, 14
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu d_17:140 
              #                          d_17 = chi d_17:140 
              #                          new_var temp_20_array_init_ptr_17:ptr->i32 
              #                          temp_20_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(2_0)] 
              #                    occupy a1 with temp_20_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to temp_19_array_init_ptr_17 in mem offset legal
    sd      a0,616(sp)
              #                    release a0 with temp_19_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_d_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy s10 with _anonymous_of_d_17_0
    mul     s10,s11,a0
              #                    free s11
              #                    free a0
    add     a1,a1,s10
              #                    free s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,476
              #                    free a1
              #                          store 6_0:i32 temp_20_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_20_array_init_ptr_17
              #                    occupy a0 with 6_0
    li      a0, 6
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu d_17:146 
              #                          d_17 = chi d_17:146 
              #                          new_var temp_21_array_init_ptr_17:ptr->i32 
              #                          temp_21_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(2_0)] 
              #                    occupy a0 with temp_21_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 4_0
    li      s11, 4
              #                    store to temp_20_array_init_ptr_17 in mem offset legal
    sd      a1,608(sp)
              #                    release a1 with temp_20_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_d_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    occupy s11 with _anonymous_of_d_17_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,s11
              #                    free s11
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,476
              #                    free a0
              #                          store 15_0:i32 temp_21_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_21_array_init_ptr_17
              #                    occupy a1 with 15_0
    li      a1, 15
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu d_17:152 
              #                          d_17 = chi d_17:152 
              #                          new_var temp_22_array_init_ptr_17:ptr->i32 
              #                          temp_22_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(2_0)] 
              #                    occupy a1 with temp_22_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 2_0
    li      s11, 2
              #                    store to temp_21_array_init_ptr_17 in mem offset legal
    sd      a0,600(sp)
              #                    release a0 with temp_21_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_d_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    found literal reg Some(s11) already exist with 2_0
              #                    occupy s11 with 2_0
              #                    occupy s10 with _anonymous_of_d_17_0
    mul     s10,a0,s11
              #                    free a0
              #                    free s11
    add     a1,a1,s10
              #                    free s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,476
              #                    free a1
              #                          store 9_0:i32 temp_22_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_22_array_init_ptr_17
              #                    occupy a0 with 9_0
    li      a0, 9
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu d_17:158 
              #                          d_17 = chi d_17:158 
              #                          new_var temp_23_array_init_ptr_17:ptr->i32 
              #                          temp_23_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(2_0)] 
              #                    occupy a0 with temp_23_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_22_array_init_ptr_17 in mem offset legal
    sd      a1,592(sp)
              #                    release a1 with temp_22_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_d_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    occupy s11 with _anonymous_of_d_17_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,s11
              #                    free s11
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,476
              #                    free a0
              #                          store 3_0:i32 temp_23_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_23_array_init_ptr_17
              #                    occupy a1 with 3_0
    li      a1, 3
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu d_17:164 
              #                          d_17 = chi d_17:164 
              #                          new_var temp_24_array_init_ptr_17:ptr->i32 
              #                          temp_24_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(0_0)] 
              #                    occupy a1 with temp_24_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 4_0
    li      s11, 4
              #                    store to temp_23_array_init_ptr_17 in mem offset legal
    sd      a0,584(sp)
              #                    release a0 with temp_23_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_d_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    occupy s11 with _anonymous_of_d_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     a1,a1,s11
              #                    free s11
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,476
              #                    free a1
              #                          store 13_0:i32 temp_24_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_24_array_init_ptr_17
              #                    occupy a0 with 13_0
    li      a0, 13
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu d_17:170 
              #                          d_17 = chi d_17:170 
              #                          new_var temp_25_array_init_ptr_17:ptr->i32 
              #                          temp_25_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a0 with temp_25_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 2_0
    li      s11, 2
              #                    store to temp_24_array_init_ptr_17 in mem offset legal
    sd      a1,576(sp)
              #                    release a1 with temp_24_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_d_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with _anonymous_of_d_17_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,s11
              #                    free s11
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,476
              #                    free a0
              #                          store 8_0:i32 temp_25_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_25_array_init_ptr_17
              #                    occupy a1 with 8_0
    li      a1, 8
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu d_17:176 
              #                          d_17 = chi d_17:176 
              #                          new_var temp_26_array_init_ptr_17:ptr->i32 
              #                          temp_26_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a1 with temp_26_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_25_array_init_ptr_17 in mem offset legal
    sd      a0,568(sp)
              #                    release a0 with temp_25_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_d_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with _anonymous_of_d_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     a1,a1,s11
              #                    free s11
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,476
              #                    free a1
              #                          store 2_0:i32 temp_26_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_26_array_init_ptr_17
              #                    occupy a0 with 2_0
    li      a0, 2
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu d_17:182 
              #                          d_17 = chi d_17:182 
              #                          new_var temp_27_array_init_ptr_17:ptr->i32 
              #                          temp_27_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(1_0)] 
              #                    occupy a0 with temp_27_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 3_0
    li      s11, 3
              #                    store to temp_26_array_init_ptr_17 in mem offset legal
    sd      a1,560(sp)
              #                    release a1 with temp_26_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_d_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with _anonymous_of_d_17_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,s11
              #                    free s11
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,476
              #                    free a0
              #                          store 11_0:i32 temp_27_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_27_array_init_ptr_17
              #                    occupy a1 with 11_0
    li      a1, 11
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu d_17:188 
              #                          d_17 = chi d_17:188 
              #                          new_var temp_28_array_init_ptr_17:ptr->i32 
              #                          temp_28_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a1 with temp_28_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_27_array_init_ptr_17 in mem offset legal
    sd      a0,552(sp)
              #                    release a0 with temp_27_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_d_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    found literal reg Some(s11) already exist with 0_0
              #                    occupy s11 with 0_0
              #                    occupy s10 with _anonymous_of_d_17_0
    mul     s10,a0,s11
              #                    free a0
              #                    free s11
    add     a1,a1,s10
              #                    free s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,476
              #                    free a1
              #                          store 1_0:i32 temp_28_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_28_array_init_ptr_17
              #                    found literal reg Some(a0) already exist with 1_0
              #                    occupy a0 with 1_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu d_17:194 
              #                          d_17 = chi d_17:194 
              #                          new_var temp_29_array_init_ptr_17:ptr->i32 
              #                          temp_29_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(1_0)] 
              #                    occupy a0 with temp_29_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to temp_28_array_init_ptr_17 in mem offset legal
    sd      a1,544(sp)
              #                    release a1 with temp_28_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_d_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with _anonymous_of_d_17_0
    mul     s10,s11,a1
              #                    free s11
              #                    free a1
    add     a0,a0,s10
              #                    free s10
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,476
              #                    free a0
              #                          store 5_0:i32 temp_29_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_29_array_init_ptr_17
              #                    occupy a1 with 5_0
    li      a1, 5
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu d_17:200 
              #                          d_17 = chi d_17:200 
              #                          new_var e_17:Array:i32:[Some(5_0), Some(3_0)] 
              #                          new_var temp_30_array_init_ptr_17:ptr->i32 
              #                          temp_30_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a1 with temp_30_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_29_array_init_ptr_17 in mem offset legal
    sd      a0,536(sp)
              #                    release a0 with temp_29_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_e_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    found literal reg Some(s11) already exist with 0_0
              #                    occupy s11 with 0_0
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a0,s11
              #                    free a0
              #                    free s11
    add     a1,a1,s10
              #                    free s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,292
              #                    free a1
              #                          store 1_0:i32 temp_30_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_30_array_init_ptr_17
              #                    found literal reg Some(a0) already exist with 1_0
              #                    occupy a0 with 1_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu e_17:208 
              #                          e_17 = chi e_17:208 
              #                          new_var temp_31_array_init_ptr_17:ptr->i32 
              #                          temp_31_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(2_0)] 
              #                    occupy a0 with temp_31_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to temp_30_array_init_ptr_17 in mem offset legal
    sd      a1,464(sp)
              #                    release a1 with temp_30_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_e_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,s11,a1
              #                    free s11
              #                    free a1
    add     a0,a0,s10
              #                    free s10
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,292
              #                    free a0
              #                          store 6_0:i32 temp_31_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_31_array_init_ptr_17
              #                    occupy a1 with 6_0
    li      a1, 6
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu e_17:214 
              #                          e_17 = chi e_17:214 
              #                          new_var temp_32_array_init_ptr_17:ptr->i32 
              #                          temp_32_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a1 with temp_32_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 2_0
    li      s11, 2
              #                    store to temp_31_array_init_ptr_17 in mem offset legal
    sd      a0,456(sp)
              #                    release a0 with temp_31_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_e_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    occupy s11 with _anonymous_of_e_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     a1,a1,s11
              #                    free s11
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,292
              #                    free a1
              #                          store 7_0:i32 temp_32_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_32_array_init_ptr_17
              #                    occupy a0 with 7_0
    li      a0, 7
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu e_17:220 
              #                          e_17 = chi e_17:220 
              #                          new_var temp_33_array_init_ptr_17:ptr->i32 
              #                          temp_33_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_33_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_32_array_init_ptr_17 in mem offset legal
    sd      a1,448(sp)
              #                    release a1 with temp_32_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_e_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with _anonymous_of_e_17_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,s11
              #                    free s11
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,292
              #                    free a0
              #                          store 2_0:i32 temp_33_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_33_array_init_ptr_17
              #                    occupy a1 with 2_0
    li      a1, 2
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu e_17:226 
              #                          e_17 = chi e_17:226 
              #                          new_var temp_34_array_init_ptr_17:ptr->i32 
              #                          temp_34_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(1_0)] 
              #                    occupy a1 with temp_34_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 4_0
    li      s11, 4
              #                    store to temp_33_array_init_ptr_17 in mem offset legal
    sd      a0,440(sp)
              #                    release a0 with temp_33_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_e_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with _anonymous_of_e_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     a1,a1,s11
              #                    free s11
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,292
              #                    free a1
              #                          store 14_0:i32 temp_34_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_34_array_init_ptr_17
              #                    occupy a0 with 14_0
    li      a0, 14
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu e_17:232 
              #                          e_17 = chi e_17:232 
              #                          new_var temp_35_array_init_ptr_17:ptr->i32 
              #                          temp_35_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a0 with temp_35_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 3_0
    li      s11, 3
              #                    store to temp_34_array_init_ptr_17 in mem offset legal
    sd      a1,432(sp)
              #                    release a1 with temp_34_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_e_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    occupy s11 with _anonymous_of_e_17_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,s11
              #                    free s11
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,292
              #                    free a0
              #                          store 10_0:i32 temp_35_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_35_array_init_ptr_17
              #                    occupy a1 with 10_0
    li      a1, 10
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu e_17:238 
              #                          e_17 = chi e_17:238 
              #                          new_var temp_36_array_init_ptr_17:ptr->i32 
              #                          temp_36_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(2_0)] 
              #                    occupy a1 with temp_36_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 2_0
    li      s11, 2
              #                    store to temp_35_array_init_ptr_17 in mem offset legal
    sd      a0,424(sp)
              #                    release a0 with temp_35_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_e_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    found literal reg Some(s11) already exist with 2_0
              #                    occupy s11 with 2_0
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a0,s11
              #                    free a0
              #                    free s11
    add     a1,a1,s10
              #                    free s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,292
              #                    free a1
              #                          store 9_0:i32 temp_36_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_36_array_init_ptr_17
              #                    occupy a0 with 9_0
    li      a0, 9
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu e_17:244 
              #                          e_17 = chi e_17:244 
              #                          new_var temp_37_array_init_ptr_17:ptr->i32 
              #                          temp_37_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(1_0)] 
              #                    occupy a0 with temp_37_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to temp_36_array_init_ptr_17 in mem offset legal
    sd      a1,416(sp)
              #                    release a1 with temp_36_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_e_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,s11,a1
              #                    free s11
              #                    free a1
    add     a0,a0,s10
              #                    free s10
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,292
              #                    free a0
              #                          store 5_0:i32 temp_37_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_37_array_init_ptr_17
              #                    occupy a1 with 5_0
    li      a1, 5
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu e_17:250 
              #                          e_17 = chi e_17:250 
              #                          new_var temp_38_array_init_ptr_17:ptr->i32 
              #                          temp_38_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a1 with temp_38_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 2_0
    li      s11, 2
              #                    store to temp_37_array_init_ptr_17 in mem offset legal
    sd      a0,408(sp)
              #                    release a0 with temp_37_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_e_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with _anonymous_of_e_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     a1,a1,s11
              #                    free s11
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,292
              #                    free a1
              #                          store 8_0:i32 temp_38_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_38_array_init_ptr_17
              #                    occupy a0 with 8_0
    li      a0, 8
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu e_17:256 
              #                          e_17 = chi e_17:256 
              #                          new_var temp_39_array_init_ptr_17:ptr->i32 
              #                          temp_39_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(2_0)] 
              #                    occupy a0 with temp_39_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_38_array_init_ptr_17 in mem offset legal
    sd      a1,400(sp)
              #                    release a1 with temp_38_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_e_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    occupy s11 with _anonymous_of_e_17_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,s11
              #                    free s11
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,292
              #                    free a0
              #                          store 3_0:i32 temp_39_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_39_array_init_ptr_17
              #                    occupy a1 with 3_0
    li      a1, 3
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu e_17:262 
              #                          e_17 = chi e_17:262 
              #                          new_var temp_40_array_init_ptr_17:ptr->i32 
              #                          temp_40_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(2_0)] 
              #                    occupy a1 with temp_40_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 3_0
    li      s11, 3
              #                    store to temp_39_array_init_ptr_17 in mem offset legal
    sd      a0,392(sp)
              #                    release a0 with temp_39_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_e_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    occupy s11 with _anonymous_of_e_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     a1,a1,s11
              #                    free s11
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,292
              #                    free a1
              #                          store 12_0:i32 temp_40_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_40_array_init_ptr_17
              #                    occupy a0 with 12_0
    li      a0, 12
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu e_17:268 
              #                          e_17 = chi e_17:268 
              #                          new_var temp_41_array_init_ptr_17:ptr->i32 
              #                          temp_41_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(2_0)] 
              #                    occupy a0 with temp_41_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 4_0
    li      s11, 4
              #                    store to temp_40_array_init_ptr_17 in mem offset legal
    sd      a1,384(sp)
              #                    release a1 with temp_40_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_e_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    occupy s11 with _anonymous_of_e_17_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,s11
              #                    free s11
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,292
              #                    free a0
              #                          store 15_0:i32 temp_41_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_41_array_init_ptr_17
              #                    occupy a1 with 15_0
    li      a1, 15
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu e_17:274 
              #                          e_17 = chi e_17:274 
              #                          new_var temp_42_array_init_ptr_17:ptr->i32 
              #                          temp_42_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a1 with temp_42_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to temp_41_array_init_ptr_17 in mem offset legal
    sd      a0,376(sp)
              #                    release a0 with temp_41_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_e_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,s11,a0
              #                    free s11
              #                    free a0
    add     a1,a1,s10
              #                    free s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,292
              #                    free a1
              #                          store 4_0:i32 temp_42_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_42_array_init_ptr_17
              #                    occupy a0 with 4_0
    li      a0, 4
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu e_17:280 
              #                          e_17 = chi e_17:280 
              #                          new_var temp_43_array_init_ptr_17:ptr->i32 
              #                          temp_43_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(4_0), Some(0_0)] 
              #                    occupy a0 with temp_43_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 4_0
    li      s11, 4
              #                    store to temp_42_array_init_ptr_17 in mem offset legal
    sd      a1,368(sp)
              #                    release a1 with temp_42_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_e_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    occupy s11 with _anonymous_of_e_17_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,s11
              #                    free s11
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,292
              #                    free a0
              #                          store 13_0:i32 temp_43_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_43_array_init_ptr_17
              #                    occupy a1 with 13_0
    li      a1, 13
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu e_17:286 
              #                          e_17 = chi e_17:286 
              #                          new_var temp_44_array_init_ptr_17:ptr->i32 
              #                          temp_44_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(5_0), Some(3_0)] [Some(3_0), Some(1_0)] 
              #                    occupy a1 with temp_44_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 3_0
    li      s11, 3
              #                    store to temp_43_array_init_ptr_17 in mem offset legal
    sd      a0,360(sp)
              #                    release a0 with temp_43_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_e_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with _anonymous_of_e_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     a1,a1,s11
              #                    free s11
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,292
              #                    free a1
              #                          store 11_0:i32 temp_44_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_44_array_init_ptr_17
              #                    occupy a0 with 11_0
    li      a0, 11
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu e_17:292 
              #                          e_17 = chi e_17:292 
              #                          new_var f_17:Array:i32:[Some(5_0)] 
              #                          new_var g_17:Array:i32:[Some(5_0), Some(3_0)] 
              #                          new_var temp_45_array_init_ptr_17:ptr->i32 
              #                          temp_45_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(2_0)] 
              #                    occupy a0 with temp_45_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to temp_44_array_init_ptr_17 in mem offset legal
    sd      a1,352(sp)
              #                    release a1 with temp_44_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_g_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy s10 with _anonymous_of_g_17_0
    mul     s10,s11,a1
              #                    free s11
              #                    free a1
    add     a0,a0,s10
              #                    free s10
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,148
              #                    free a0
              #                          store 10_0:i32 temp_45_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_45_array_init_ptr_17
              #                    occupy a1 with 10_0
    li      a1, 10
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu g_17:302 
              #                          g_17 = chi g_17:302 
              #                          new_var temp_46_array_init_ptr_17:ptr->i32 
              #                          temp_46_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a1 with temp_46_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 2_0
    li      s11, 2
              #                    store to temp_45_array_init_ptr_17 in mem offset legal
    sd      a0,264(sp)
              #                    release a0 with temp_45_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_g_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    occupy s11 with _anonymous_of_g_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     a1,a1,s11
              #                    free s11
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,148
              #                    free a1
              #                          store 11_0:i32 temp_46_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_46_array_init_ptr_17
              #                    occupy a0 with 11_0
    li      a0, 11
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu g_17:308 
              #                          g_17 = chi g_17:308 
              #                          new_var temp_47_array_init_ptr_17:ptr->i32 
              #                          temp_47_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a0 with temp_47_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 2_0
    li      s11, 2
              #                    store to temp_46_array_init_ptr_17 in mem offset legal
    sd      a1,256(sp)
              #                    release a1 with temp_46_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_g_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with _anonymous_of_g_17_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,s11
              #                    free s11
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,148
              #                    free a0
              #                          store 12_0:i32 temp_47_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_47_array_init_ptr_17
              #                    occupy a1 with 12_0
    li      a1, 12
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu g_17:314 
              #                          g_17 = chi g_17:314 
              #                          new_var temp_48_array_init_ptr_17:ptr->i32 
              #                          temp_48_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a1 with temp_48_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_47_array_init_ptr_17 in mem offset legal
    sd      a0,248(sp)
              #                    release a0 with temp_47_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_g_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with _anonymous_of_g_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     a1,a1,s11
              #                    free s11
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,148
              #                    free a1
              #                          store 2_0:i32 temp_48_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_48_array_init_ptr_17
              #                    occupy a0 with 2_0
    li      a0, 2
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu g_17:320 
              #                          g_17 = chi g_17:320 
              #                          new_var temp_49_array_init_ptr_17:ptr->i32 
              #                          temp_49_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(1_0)] 
              #                    occupy a0 with temp_49_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to temp_48_array_init_ptr_17 in mem offset legal
    sd      a1,240(sp)
              #                    release a1 with temp_48_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_g_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with _anonymous_of_g_17_0
    mul     s10,s11,a1
              #                    free s11
              #                    free a1
    add     a0,a0,s10
              #                    free s10
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,148
              #                    free a0
              #                          store 7_0:i32 temp_49_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_49_array_init_ptr_17
              #                    occupy a1 with 7_0
    li      a1, 7
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu g_17:326 
              #                          g_17 = chi g_17:326 
              #                          new_var temp_50_array_init_ptr_17:ptr->i32 
              #                          temp_50_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(2_0)] 
              #                    occupy a1 with temp_50_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_49_array_init_ptr_17 in mem offset legal
    sd      a0,232(sp)
              #                    release a0 with temp_49_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_g_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    occupy s11 with _anonymous_of_g_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     a1,a1,s11
              #                    free s11
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,148
              #                    free a1
              #                          store 3_0:i32 temp_50_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_50_array_init_ptr_17
              #                    occupy a0 with 3_0
    li      a0, 3
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu g_17:332 
              #                          g_17 = chi g_17:332 
              #                          new_var temp_51_array_init_ptr_17:ptr->i32 
              #                          temp_51_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_51_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_50_array_init_ptr_17 in mem offset legal
    sd      a1,224(sp)
              #                    release a1 with temp_50_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_g_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    found literal reg Some(s11) already exist with 0_0
              #                    occupy s11 with 0_0
              #                    occupy s10 with _anonymous_of_g_17_0
    mul     s10,a1,s11
              #                    free a1
              #                    free s11
    add     a0,a0,s10
              #                    free s10
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,148
              #                    free a0
              #                          store 1_0:i32 temp_51_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a0 with temp_51_array_init_ptr_17
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu g_17:338 
              #                          g_17 = chi g_17:338 
              #                          new_var temp_52_array_init_ptr_17:ptr->i32 
              #                          temp_52_array_init_ptr_17 = getelementptr g_17:Array:i32:[Some(5_0), Some(3_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a1 with temp_52_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to temp_51_array_init_ptr_17 in mem offset legal
    sd      a0,216(sp)
              #                    release a0 with temp_51_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_g_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy s10 with _anonymous_of_g_17_0
    mul     s10,s11,a0
              #                    free s11
              #                    free a0
    add     a1,a1,s10
              #                    free s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,148
              #                    free a1
              #                          store 4_0:i32 temp_52_array_init_ptr_17:ptr->Array:i32:[Some(3_0)] 
              #                    occupy a1 with temp_52_array_init_ptr_17
              #                    occupy a0 with 4_0
    li      a0, 4
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu g_17:344 
              #                          g_17 = chi g_17:344 
              #                          new_var h_17:Array:i32:[Some(3_0)] 
              #                          new_var i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] 
              #                          new_var temp_53_array_init_ptr_17:ptr->i32 
              #                          temp_53_array_init_ptr_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(0_0), Some(3_0)] 
              #                    occupy a0 with temp_53_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 12_0
    li      s10, 12
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_52_array_init_ptr_17 in mem offset legal
    sd      a1,208(sp)
              #                    release a1 with temp_52_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_i_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 4_0
    li      a1, 4
              #                    found literal reg Some(s11) already exist with 0_0
              #                    occupy s11 with 0_0
              #                    occupy s10 with _anonymous_of_i_17_0
    mul     s10,a1,s11
              #                    free a1
              #                    free s11
    add     a0,a0,s10
              #                    free s10
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with _anonymous_of_i_17_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,s11
              #                    free s11
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,0
              #                    free a0
              #                          store 4_0:i32 temp_53_array_init_ptr_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
              #                    occupy a0 with temp_53_array_init_ptr_17
              #                    occupy a1 with 4_0
    li      a1, 4
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu i_17:354 
              #                          i_17 = chi i_17:354 
              #                          new_var temp_54_array_init_ptr_17:ptr->i32 
              #                          temp_54_array_init_ptr_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(0_0), Some(2_0)] 
              #                    occupy a1 with temp_54_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 12_0
    li      s10, 12
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_53_array_init_ptr_17 in mem offset legal
    sd      a0,128(sp)
              #                    release a0 with temp_53_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_i_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 4_0
    li      a0, 4
              #                    found literal reg Some(s11) already exist with 0_0
              #                    occupy s11 with 0_0
              #                    occupy s10 with _anonymous_of_i_17_0
    mul     s10,a0,s11
              #                    free a0
              #                    free s11
    add     a1,a1,s10
              #                    free s10
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    occupy s11 with _anonymous_of_i_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     a1,a1,s11
              #                    free s11
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,0
              #                    free a1
              #                          store 3_0:i32 temp_54_array_init_ptr_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
              #                    occupy a1 with temp_54_array_init_ptr_17
              #                    occupy a0 with 3_0
    li      a0, 3
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu i_17:360 
              #                          i_17 = chi i_17:360 
              #                          new_var temp_55_array_init_ptr_17:ptr->i32 
              #                          temp_55_array_init_ptr_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_55_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 12_0
    li      s10, 12
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_54_array_init_ptr_17 in mem offset legal
    sd      a1,120(sp)
              #                    release a1 with temp_54_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_i_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 4_0
    li      a1, 4
              #                    found literal reg Some(s11) already exist with 0_0
              #                    occupy s11 with 0_0
              #                    occupy s10 with _anonymous_of_i_17_0
    mul     s10,a1,s11
              #                    free a1
              #                    free s11
    add     a0,a0,s10
              #                    free s10
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    found literal reg Some(s11) already exist with 0_0
              #                    occupy s11 with 0_0
              #                    occupy s10 with _anonymous_of_i_17_0
    mul     s10,a1,s11
              #                    free a1
              #                    free s11
    add     a0,a0,s10
              #                    free s10
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,0
              #                    free a0
              #                          store 1_0:i32 temp_55_array_init_ptr_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
              #                    occupy a0 with temp_55_array_init_ptr_17
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu i_17:366 
              #                          i_17 = chi i_17:366 
              #                          new_var temp_56_array_init_ptr_17:ptr->i32 
              #                          temp_56_array_init_ptr_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(0_0), Some(1_0)] 
              #                    occupy a1 with temp_56_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 12_0
    li      s10, 12
              #                    found literal reg Some(s11) already exist with 0_0
              #                    occupy s11 with 0_0
              #                    store to temp_55_array_init_ptr_17 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with temp_55_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_i_17_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 4_0
    li      a0, 4
              #                    found literal reg Some(s11) already exist with 0_0
              #                    occupy s11 with 0_0
              #                    occupy s10 with _anonymous_of_i_17_0
    mul     s10,a0,s11
              #                    free a0
              #                    free s11
    add     a1,a1,s10
              #                    free s10
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with _anonymous_of_i_17_0
    mul     s11,a0,s10
              #                    free a0
              #                    free s10
    add     a1,a1,s11
              #                    free s11
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,0
              #                    free a1
              #                          store 2_0:i32 temp_56_array_init_ptr_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
              #                    occupy a1 with temp_56_array_init_ptr_17
              #                    occupy a0 with 2_0
    li      a0, 2
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu i_17:372 
              #                          i_17 = chi i_17:372 
              #                          new_var temp_57_array_init_ptr_17:ptr->i32 
              #                          temp_57_array_init_ptr_17 = getelementptr i_17:Array:i32:[Some(2_0), Some(3_0), Some(4_0)] [Some(0_0), Some(1_0), Some(0_0)] 
              #                    occupy a0 with temp_57_array_init_ptr_17
    li      a0, 0
              #                    occupy s10 with 12_0
    li      s10, 12
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_56_array_init_ptr_17 in mem offset legal
    sd      a1,104(sp)
              #                    release a1 with temp_56_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_i_17_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 4_0
    li      a1, 4
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with _anonymous_of_i_17_0
    mul     s11,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,s11
              #                    free s11
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy s11 with _anonymous_of_i_17_0
    mul     s11,s10,a1
              #                    free s10
              #                    free a1
    add     a0,a0,s11
              #                    free s11
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,0
              #                    free a0
              #                          store 5_0:i32 temp_57_array_init_ptr_17:ptr->Array:i32:[Some(3_0), Some(4_0)] 
              #                    occupy a0 with temp_57_array_init_ptr_17
              #                    occupy a1 with 5_0
    li      a1, 5
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu i_17:378 
              #                          i_17 = chi i_17:378 
              #                          ret 4_0 
              #                    load from ra_main_0 in mem
    ld      ra,968(sp)
              #                    load from s0_main_0 in mem
    ld      s0,960(sp)
              #                    store to temp_57_array_init_ptr_17 in mem offset legal
    sd      a0,96(sp)
              #                    release a0 with temp_57_array_init_ptr_17
              #                    occupy a0 with 4_0
    li      a0, 4
    addi    sp,sp,976
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_5_array_init_ptr_17, tracked: true } |     a3:Freed { symidx: temp_6_array_init_ptr_17, tracked: true } |     a4:Freed { symidx: temp_7_array_init_ptr_17, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_17, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_17, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_17, tracked: true } |     s1:Freed { symidx: temp_1_array_init_ptr_17, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_17, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_17, tracked: true } |     s4:Freed { symidx: temp_2_array_init_ptr_17, tracked: true } |     s5:Freed { symidx: temp_13_array_init_ptr_17, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_17, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_17, tracked: true } |     s8:Freed { symidx: temp_16_array_init_ptr_17, tracked: true } |     s9:Freed { symidx: temp_3_array_init_ptr_17, tracked: true } | 
