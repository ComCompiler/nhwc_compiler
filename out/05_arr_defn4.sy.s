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
              #                    mem layout:|ra_main:8 at 440|s0_main:8 at 432|temp_0_array_init_ptr:8 at 424|temp_1_array_init_ptr:8 at 416|temp_2_array_init_ptr:8 at 408|temp_3_array_init_ptr:8 at 400|temp_4_array_init_ptr:8 at 392|a:32 at 360|N:4 at 356|b:32 at 324|none:4 at 320|temp_5_array_init_ptr:8 at 312|temp_6_array_init_ptr:8 at 304|temp_7_array_init_ptr:8 at 296|temp_8_array_init_ptr:8 at 288|temp_9_array_init_ptr:8 at 280|temp_10_array_init_ptr:8 at 272|temp_11_array_init_ptr:8 at 264|temp_12_array_init_ptr:8 at 256|c:32 at 224|temp_13_array_ptr:8 at 216|temp_14_array_ele:4 at 212|none:4 at 208|temp_15_array_init_ptr:8 at 200|temp_16_array_init_ptr:8 at 192|temp_17_array_init_ptr:8 at 184|temp_18_array_init_ptr:8 at 176|temp_19_array_init_ptr:8 at 168|temp_20_array_init_ptr:8 at 160|d:32 at 128|temp_21_array_ptr:8 at 120|temp_22_array_ele:4 at 116|none:4 at 112|temp_23_array_ptr:8 at 104|temp_24_array_ele:4 at 100|none:4 at 96|temp_25_array_init_ptr:8 at 88|temp_26_array_init_ptr:8 at 80|temp_27_array_init_ptr:8 at 72|temp_28_array_init_ptr:8 at 64|temp_29_array_init_ptr:8 at 56|temp_30_array_init_ptr:8 at 48|temp_31_array_init_ptr:8 at 40|temp_32_array_init_ptr:8 at 32|e:32 at 0
    addi    sp,sp,-448
              #                    store to ra_main_0 in mem offset legal
    sd      ra,440(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,432(sp)
    addi    s0,sp,448
              #                          alloc ptr->i32 temp_0_array_init_ptr_17 
              #                          alloc ptr->i32 temp_1_array_init_ptr_17 
              #                          alloc ptr->i32 temp_2_array_init_ptr_17 
              #                          alloc ptr->i32 temp_3_array_init_ptr_17 
              #                          alloc ptr->i32 temp_4_array_init_ptr_17 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] a_17 
              #                          alloc i32 N_17 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] b_17 
              #                          alloc ptr->i32 temp_5_array_init_ptr_17 
              #                          alloc ptr->i32 temp_6_array_init_ptr_17 
              #                          alloc ptr->i32 temp_7_array_init_ptr_17 
              #                          alloc ptr->i32 temp_8_array_init_ptr_17 
              #                          alloc ptr->i32 temp_9_array_init_ptr_17 
              #                          alloc ptr->i32 temp_10_array_init_ptr_17 
              #                          alloc ptr->i32 temp_11_array_init_ptr_17 
              #                          alloc ptr->i32 temp_12_array_init_ptr_17 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] c_17 
              #                          alloc ptr->i32 temp_13_array_ptr_17 
              #                          alloc i32 temp_14_array_ele_17 
              #                          alloc ptr->i32 temp_15_array_init_ptr_17 
              #                          alloc ptr->i32 temp_16_array_init_ptr_17 
              #                          alloc ptr->i32 temp_17_array_init_ptr_17 
              #                          alloc ptr->i32 temp_18_array_init_ptr_17 
              #                          alloc ptr->i32 temp_19_array_init_ptr_17 
              #                          alloc ptr->i32 temp_20_array_init_ptr_17 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] d_17 
              #                          alloc ptr->i32 temp_21_array_ptr_17 
              #                          alloc i32 temp_22_array_ele_17 
              #                          alloc ptr->i32 temp_23_array_ptr_17 
              #                          alloc i32 temp_24_array_ele_17 
              #                          alloc ptr->i32 temp_25_array_init_ptr_17 
              #                          alloc ptr->i32 temp_26_array_init_ptr_17 
              #                          alloc ptr->i32 temp_27_array_init_ptr_17 
              #                          alloc ptr->i32 temp_28_array_init_ptr_17 
              #                          alloc ptr->i32 temp_29_array_init_ptr_17 
              #                          alloc ptr->i32 temp_30_array_init_ptr_17 
              #                          alloc ptr->i32 temp_31_array_init_ptr_17 
              #                          alloc ptr->i32 temp_32_array_init_ptr_17 
              #                          alloc Array:i32:[Some(4_0), Some(2_0), Some(1_0)] e_17 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var a_17:Array:i32:[Some(4_0), Some(2_0)] 
              #                          new_var temp_0_array_init_ptr_17:ptr->i32 
              #                          temp_0_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_0_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_a_17_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with _anonymous_of_a_17_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,360
              #                    free a0
              #                          store 2_0:i32 temp_0_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_0_array_init_ptr_17
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu a_17:20 
              #                          a_17 = chi a_17:20 
              #                          new_var temp_1_array_init_ptr_17:ptr->i32 
              #                          temp_1_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a7 with temp_1_array_init_ptr_17
    li      a7, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s1 with _anonymous_of_a_17_0
    mul     s1,a1,a4
              #                    free a1
              #                    free a4
    add     a7,a7,s1
              #                    free s1
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s2 with _anonymous_of_a_17_0
    mul     s2,a4,a2
              #                    free a4
              #                    free a2
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,360
              #                    free a7
              #                          store 3_0:i32 temp_1_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a7 with temp_1_array_init_ptr_17
              #                    occupy s3 with 3_0
    li      s3, 3
    sw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          mu a_17:26 
              #                          a_17 = chi a_17:26 
              #                          new_var temp_2_array_init_ptr_17:ptr->i32 
              #                          temp_2_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s4 with temp_2_array_init_ptr_17
    li      s4, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s5 with _anonymous_of_a_17_0
    mul     s5,a1,a2
              #                    free a1
              #                    free a2
    add     s4,s4,s5
              #                    free s5
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s6 with _anonymous_of_a_17_0
    mul     s6,a4,a2
              #                    free a4
              #                    free a2
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,360
              #                    free s4
              #                          store 1_0:i32 temp_2_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s4 with temp_2_array_init_ptr_17
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
    sw      a4,0(s4)
              #                    free a4
              #                    free s4
              #                          mu a_17:32 
              #                          a_17 = chi a_17:32 
              #                          new_var temp_3_array_init_ptr_17:ptr->i32 
              #                          temp_3_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
              #                    occupy s7 with temp_3_array_init_ptr_17
    li      s7, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s8 with _anonymous_of_a_17_0
    mul     s8,a1,a4
              #                    free a1
              #                    free a4
    add     s7,s7,s8
              #                    free s8
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s9 with _anonymous_of_a_17_0
    mul     s9,a4,a5
              #                    free a4
              #                    free a5
    add     s7,s7,s9
              #                    free s9
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,360
              #                    free s7
              #                          store 4_0:i32 temp_3_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s7 with temp_3_array_init_ptr_17
              #                    occupy s10 with 4_0
    li      s10, 4
    sw      s10,0(s7)
              #                    free s10
              #                    free s7
              #                          mu a_17:38 
              #                          a_17 = chi a_17:38 
              #                          new_var temp_4_array_init_ptr_17:ptr->i32 
              #                          temp_4_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy s11 with temp_4_array_init_ptr_17
    li      s11, 0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with _anonymous_of_a_17_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     s11,s11,a3
              #                    free a3
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_a_17_0
    mul     a2,a4,a1
              #                    free a4
              #                    free a1
    add     s11,s11,a2
              #                    free a2
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,360
              #                    free s11
              #                          store 7_0:i32 temp_4_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s11 with temp_4_array_init_ptr_17
              #                    occupy a1 with 7_0
    li      a1, 7
    sw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          mu a_17:44 
              #                          a_17 = chi a_17:44 
              #                          N_17 = i32 3_0 
              #                    occupy a1 with N_17
    li      a1, 3
              #                    free a1
              #                          new_var b_17:Array:i32:[Some(4_0), Some(2_0)] 
              #                          new_var c_17:Array:i32:[Some(4_0), Some(2_0)] 
              #                          new_var temp_5_array_init_ptr_17:ptr->i32 
              #                          temp_5_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a2 with temp_5_array_init_ptr_17
    li      a2, 0
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_c_17_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
              #                    occupy a5 with _anonymous_of_c_17_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,224
              #                    free a2
              #                          store 1_0:i32 temp_5_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a2 with temp_5_array_init_ptr_17
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu c_17:56 
              #                          c_17 = chi c_17:56 
              #                          new_var temp_6_array_init_ptr_17:ptr->i32 
              #                          temp_6_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a3 with temp_6_array_init_ptr_17
    li      a3, 0
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    found literal reg Some(s3) already exist with 3_0
              #                    occupy s3 with 3_0
              #                    occupy a5 with _anonymous_of_c_17_0
    mul     a5,a4,s3
              #                    free a4
              #                    free s3
    add     a3,a3,a5
              #                    free a5
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with _anonymous_of_c_17_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,224
              #                    free a3
              #                          store 7_0:i32 temp_6_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a3 with temp_6_array_init_ptr_17
              #                    occupy a4 with 7_0
    li      a4, 7
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu c_17:62 
              #                          c_17 = chi c_17:62 
              #                          new_var temp_7_array_init_ptr_17:ptr->i32 
              #                          temp_7_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
              #                    occupy a4 with temp_7_array_init_ptr_17
    li      a4, 0
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with _anonymous_of_c_17_0
    mul     s1,a5,a6
              #                    free a5
              #                    free a6
    add     a4,a4,s1
              #                    free s1
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s1 with _anonymous_of_c_17_0
    mul     s1,a6,a5
              #                    free a6
              #                    free a5
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,224
              #                    free a4
              #                          store 4_0:i32 temp_7_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a4 with temp_7_array_init_ptr_17
              #                    found literal reg Some(s10) already exist with 4_0
              #                    occupy s10 with 4_0
    sw      s10,0(a4)
              #                    free s10
              #                    free a4
              #                          mu c_17:68 
              #                          c_17 = chi c_17:68 
              #                          new_var temp_8_array_init_ptr_17:ptr->i32 
              #                          temp_8_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a5 with temp_8_array_init_ptr_17
    li      a5, 0
              #                    occupy a6 with 2_0
    li      a6, 2
              #                    occupy s1 with 2_0
    li      s1, 2
              #                    occupy s2 with _anonymous_of_c_17_0
    mul     s2,a6,s1
              #                    free a6
              #                    free s1
    add     a5,a5,s2
              #                    free s2
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with _anonymous_of_c_17_0
    mul     s2,a6,s1
              #                    free a6
              #                    free s1
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,224
              #                    free a5
              #                          store 6_0:i32 temp_8_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a5 with temp_8_array_init_ptr_17
              #                    occupy a6 with 6_0
    li      a6, 6
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu c_17:74 
              #                          c_17 = chi c_17:74 
              #                          new_var temp_9_array_init_ptr_17:ptr->i32 
              #                          temp_9_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a6 with temp_9_array_init_ptr_17
    li      a6, 0
              #                    occupy s1 with 2_0
    li      s1, 2
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s3 with _anonymous_of_c_17_0
    mul     s3,s1,s2
              #                    free s1
              #                    free s2
    add     a6,a6,s3
              #                    free s3
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with _anonymous_of_c_17_0
    mul     s3,s1,s2
              #                    free s1
              #                    free s2
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,224
              #                    free a6
              #                          store 2_0:i32 temp_9_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a6 with temp_9_array_init_ptr_17
              #                    occupy s1 with 2_0
    li      s1, 2
    sw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                          mu c_17:80 
              #                          c_17 = chi c_17:80 
              #                          new_var temp_10_array_init_ptr_17:ptr->i32 
              #                          temp_10_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy s1 with temp_10_array_init_ptr_17
    li      s1, 0
              #                    occupy s2 with 2_0
    li      s2, 2
              #                    occupy s3 with 2_0
    li      s3, 2
              #                    occupy s5 with _anonymous_of_c_17_0
    mul     s5,s2,s3
              #                    free s2
              #                    free s3
    add     s1,s1,s5
              #                    free s5
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with 0_0
    li      s3, 0
              #                    occupy s5 with _anonymous_of_c_17_0
    mul     s5,s2,s3
              #                    free s2
              #                    free s3
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,224
              #                    free s1
              #                          store 5_0:i32 temp_10_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s1 with temp_10_array_init_ptr_17
              #                    occupy s2 with 5_0
    li      s2, 5
    sw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          mu c_17:86 
              #                          c_17 = chi c_17:86 
              #                          new_var temp_11_array_init_ptr_17:ptr->i32 
              #                          temp_11_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
              #                    occupy s2 with temp_11_array_init_ptr_17
    li      s2, 0
              #                    occupy s3 with 2_0
    li      s3, 2
              #                    occupy s5 with 3_0
    li      s5, 3
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
    addi    s2,s2,224
              #                    free s2
              #                          store 8_0:i32 temp_11_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s2 with temp_11_array_init_ptr_17
              #                    occupy s3 with 8_0
    li      s3, 8
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          mu c_17:92 
              #                          c_17 = chi c_17:92 
              #                          new_var temp_12_array_init_ptr_17:ptr->i32 
              #                          temp_12_array_init_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy s3 with temp_12_array_init_ptr_17
    li      s3, 0
              #                    occupy s5 with 2_0
    li      s5, 2
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s8 with _anonymous_of_c_17_0
    mul     s8,s5,s6
              #                    free s5
              #                    free s6
    add     s3,s3,s8
              #                    free s8
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
              #                    occupy s5 with 0_0
    li      s5, 0
              #                    occupy s8 with _anonymous_of_c_17_0
    mul     s8,s6,s5
              #                    free s6
              #                    free s5
    add     s3,s3,s8
              #                    free s8
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,224
              #                    free s3
              #                          store 3_0:i32 temp_12_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s3 with temp_12_array_init_ptr_17
              #                    occupy s5 with 3_0
    li      s5, 3
    sw      s5,0(s3)
              #                    free s5
              #                    free s3
              #                          mu c_17:98 
              #                          c_17 = chi c_17:98 
              #                          new_var d_17:Array:i32:[Some(4_0), Some(2_0)] 
              #                          new_var temp_13_array_ptr_17:ptr->i32 
              #                          temp_13_array_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
              #                    occupy s5 with temp_13_array_ptr_17
    li      s5, 0
              #                    occupy s6 with 2_0
    li      s6, 2
              #                    occupy s8 with 3_0
    li      s8, 3
              #                    occupy s9 with _anonymous_of_a_17_0
    mul     s9,s6,s8
              #                    free s6
              #                    free s8
    add     s5,s5,s9
              #                    free s9
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s8 with 0_0
    li      s8, 0
              #                    occupy s9 with _anonymous_of_a_17_0
    mul     s9,s6,s8
              #                    free s6
              #                    free s8
    add     s5,s5,s9
              #                    free s9
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,360
              #                    free s5
              #                          new_var temp_14_array_ele_17:i32 
              #                          temp_14_array_ele_17 = load temp_13_array_ptr_17:ptr->i32 
              #                    occupy s5 with temp_13_array_ptr_17
              #                    occupy s6 with temp_14_array_ele_17
    lw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                          new_var temp_15_array_init_ptr_17:ptr->i32 
              #                          temp_15_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s8 with temp_15_array_init_ptr_17
    li      s8, 0
              #                    occupy s9 with 2_0
    li      s9, 2
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    store to temp_0_array_init_ptr_17 in mem offset legal
    sd      a0,424(sp)
              #                    release a0 with temp_0_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_d_17_0
    mul     a0,s9,s10
              #                    free s9
              #                    free s10
    add     s8,s8,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    found literal reg Some(s10) already exist with 0_0
              #                    occupy s10 with 0_0
              #                    occupy s9 with _anonymous_of_d_17_0
    mul     s9,a0,s10
              #                    free a0
              #                    free s10
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,128
              #                    free s8
              #                          store 1_0:i32 temp_15_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s8 with temp_15_array_init_ptr_17
              #                    found literal reg Some(a0) already exist with 1_0
              #                    occupy a0 with 1_0
    sw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          mu d_17:112 
              #                          d_17 = chi d_17:112 
              #                          new_var temp_16_array_init_ptr_17:ptr->i32 
              #                          temp_16_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_16_array_init_ptr_17
    li      a0, 0
              #                    occupy s9 with 2_0
    li      s9, 2
              #                    found literal reg Some(s10) already exist with 0_0
              #                    occupy s10 with 0_0
              #                    store to N_17 in mem offset legal
    sw      a1,356(sp)
              #                    release a1 with N_17
              #                    occupy a1 with _anonymous_of_d_17_0
    mul     a1,s9,s10
              #                    free s9
              #                    free s10
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s10 with _anonymous_of_d_17_0
    mul     s10,a1,s9
              #                    free a1
              #                    free s9
    add     a0,a0,s10
              #                    free s10
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,128
              #                    free a0
              #                          store 2_0:i32 temp_16_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_16_array_init_ptr_17
              #                    occupy a1 with 2_0
    li      a1, 2
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu d_17:118 
              #                          d_17 = chi d_17:118 
              #                          new_var temp_17_array_init_ptr_17:ptr->i32 
              #                          temp_17_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a1 with temp_17_array_init_ptr_17
    li      a1, 0
              #                    occupy s9 with 2_0
    li      s9, 2
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    store to temp_16_array_init_ptr_17 in mem offset legal
    sd      a0,192(sp)
              #                    release a0 with temp_16_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_d_17_0
    mul     a0,s9,s10
              #                    free s9
              #                    free s10
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    occupy s10 with _anonymous_of_d_17_0
    mul     s10,a0,s9
              #                    free a0
              #                    free s9
    add     a1,a1,s10
              #                    free s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,128
              #                    free a1
              #                          store temp_14_array_ele_17:i32 temp_17_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a1 with temp_17_array_init_ptr_17
              #                    occupy s6 with temp_14_array_ele_17
    sw      s6,0(a1)
              #                    free s6
              #                    free a1
              #                          mu d_17:124 
              #                          d_17 = chi d_17:124 
              #                          new_var temp_18_array_init_ptr_17:ptr->i32 
              #                          temp_18_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a0 with temp_18_array_init_ptr_17
    li      a0, 0
              #                    occupy s9 with 2_0
    li      s9, 2
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    store to temp_17_array_init_ptr_17 in mem offset legal
    sd      a1,184(sp)
              #                    release a1 with temp_17_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_d_17_0
    mul     a1,s9,s10
              #                    free s9
              #                    free s10
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s10 with _anonymous_of_d_17_0
    mul     s10,a1,s9
              #                    free a1
              #                    free s9
    add     a0,a0,s10
              #                    free s10
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,128
              #                    free a0
              #                          store 8_0:i32 temp_18_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_18_array_init_ptr_17
              #                    occupy a1 with 8_0
    li      a1, 8
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu d_17:130 
              #                          d_17 = chi d_17:130 
              #                          new_var temp_19_array_init_ptr_17:ptr->i32 
              #                          temp_19_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
              #                    occupy a1 with temp_19_array_init_ptr_17
    li      a1, 0
              #                    occupy s9 with 2_0
    li      s9, 2
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    store to temp_18_array_init_ptr_17 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with temp_18_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_d_17_0
    mul     a0,s9,s10
              #                    free s9
              #                    free s10
    add     a1,a1,a0
              #                    free a0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s9 with _anonymous_of_d_17_0
    mul     s9,s10,a0
              #                    free s10
              #                    free a0
    add     a1,a1,s9
              #                    free s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,128
              #                    free a1
              #                          store 5_0:i32 temp_19_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a1 with temp_19_array_init_ptr_17
              #                    occupy a0 with 5_0
    li      a0, 5
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu d_17:136 
              #                          d_17 = chi d_17:136 
              #                          new_var temp_20_array_init_ptr_17:ptr->i32 
              #                          temp_20_array_init_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a0 with temp_20_array_init_ptr_17
    li      a0, 0
              #                    occupy s9 with 2_0
    li      s9, 2
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    store to temp_19_array_init_ptr_17 in mem offset legal
    sd      a1,168(sp)
              #                    release a1 with temp_19_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_d_17_0
    mul     a1,s9,s10
              #                    free s9
              #                    free s10
    add     a0,a0,a1
              #                    free a1
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy s9 with _anonymous_of_d_17_0
    mul     s9,s10,a1
              #                    free s10
              #                    free a1
    add     a0,a0,s9
              #                    free s9
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,128
              #                    free a0
              #                          store 3_0:i32 temp_20_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_20_array_init_ptr_17
              #                    occupy a1 with 3_0
    li      a1, 3
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu d_17:142 
              #                          d_17 = chi d_17:142 
              #                          new_var e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] 
              #                          new_var temp_21_array_ptr_17:ptr->i32 
              #                          temp_21_array_ptr_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a1 with temp_21_array_ptr_17
    li      a1, 0
              #                    occupy s9 with 2_0
    li      s9, 2
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    store to temp_20_array_init_ptr_17 in mem offset legal
    sd      a0,160(sp)
              #                    release a0 with temp_20_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_d_17_0
    mul     a0,s9,s10
              #                    free s9
              #                    free s10
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s10 with _anonymous_of_d_17_0
    mul     s10,a0,s9
              #                    free a0
              #                    free s9
    add     a1,a1,s10
              #                    free s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,128
              #                    free a1
              #                          new_var temp_22_array_ele_17:i32 
              #                          temp_22_array_ele_17 = load temp_21_array_ptr_17:ptr->i32 
              #                    occupy a1 with temp_21_array_ptr_17
              #                    occupy a0 with temp_22_array_ele_17
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_23_array_ptr_17:ptr->i32 
              #                          temp_23_array_ptr_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy s9 with temp_23_array_ptr_17
    li      s9, 0
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    store to temp_22_array_ele_17 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_22_array_ele_17
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    store to temp_21_array_ptr_17 in mem offset legal
    sd      a1,120(sp)
              #                    release a1 with temp_21_array_ptr_17
              #                    occupy a1 with _anonymous_of_c_17_0
    mul     a1,s10,a0
              #                    free s10
              #                    free a0
    add     s9,s9,a1
              #                    free a1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with _anonymous_of_c_17_0
    mul     s10,a0,a1
              #                    free a0
              #                    free a1
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,224
              #                    free s9
              #                          new_var temp_24_array_ele_17:i32 
              #                          temp_24_array_ele_17 = load temp_23_array_ptr_17:ptr->i32 
              #                    occupy s9 with temp_23_array_ptr_17
              #                    occupy a0 with temp_24_array_ele_17
    lw      a0,0(s9)
              #                    free a0
              #                    free s9
              #                          new_var temp_25_array_init_ptr_17:ptr->i32 
              #                          temp_25_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(1_0), Some(1_0), Some(0_0)] 
              #                    occupy a1 with temp_25_array_init_ptr_17
    li      a1, 0
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    store to temp_24_array_ele_17 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_24_array_ele_17
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_5_array_init_ptr_17 in mem offset legal
    sd      a2,312(sp)
              #                    release a2 with temp_5_array_init_ptr_17
              #                    occupy a2 with _anonymous_of_e_17_0
    mul     a2,s10,a0
              #                    free s10
              #                    free a0
    add     a1,a1,a2
              #                    free a2
              #                    found literal reg Some(a0) already exist with 1_0
              #                    occupy a0 with 1_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,s10
              #                    free s10
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a2,a0
              #                    free a2
              #                    free a0
    add     a1,a1,s10
              #                    free s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,0
              #                    free a1
              #                          store 4_0:i32 temp_25_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a1 with temp_25_array_init_ptr_17
              #                    occupy a0 with 4_0
    li      a0, 4
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu e_17:162 
              #                          e_17 = chi e_17:162 
              #                          new_var temp_26_array_init_ptr_17:ptr->i32 
              #                          temp_26_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(0_0), Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_26_array_init_ptr_17
    li      a0, 0
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    store to temp_25_array_init_ptr_17 in mem offset legal
    sd      a1,88(sp)
              #                    release a1 with temp_25_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_e_17_0
    mul     a1,a2,s10
              #                    free a2
              #                    free s10
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    found literal reg Some(s10) already exist with 0_0
              #                    occupy s10 with 0_0
              #                    occupy a2 with _anonymous_of_e_17_0
    mul     a2,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,a2
              #                    free a2
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    found literal reg Some(s10) already exist with 0_0
              #                    occupy s10 with 0_0
              #                    occupy a2 with _anonymous_of_e_17_0
    mul     a2,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,0
              #                    free a0
              #                          store temp_22_array_ele_17:i32 temp_26_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a0 with temp_26_array_init_ptr_17
              #                    occupy a1 with temp_22_array_ele_17
              #                    load from temp_22_array_ele_17 in mem


    lw      a1,116(sp)
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu e_17:168 
              #                          e_17 = chi e_17:168 
              #                          new_var temp_27_array_init_ptr_17:ptr->i32 
              #                          temp_27_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(3_0), Some(1_0), Some(0_0)] 
              #                    occupy a2 with temp_27_array_init_ptr_17
    li      a2, 0
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    store to temp_26_array_init_ptr_17 in mem offset legal
    sd      a0,80(sp)
              #                    release a0 with temp_26_array_init_ptr_17
              #                    occupy a0 with 3_0
    li      a0, 3
              #                    store to temp_22_array_ele_17 in mem offset legal
    sw      a1,116(sp)
              #                    release a1 with temp_22_array_ele_17
              #                    occupy a1 with _anonymous_of_e_17_0
    mul     a1,s10,a0
              #                    free s10
              #                    free a0
    add     a2,a2,a1
              #                    free a1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,s10
              #                    free s10
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a1,a0
              #                    free a1
              #                    free a0
    add     a2,a2,s10
              #                    free s10
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,0
              #                    free a2
              #                          store 8_0:i32 temp_27_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a2 with temp_27_array_init_ptr_17
              #                    occupy a0 with 8_0
    li      a0, 8
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          mu e_17:174 
              #                          e_17 = chi e_17:174 
              #                          new_var temp_28_array_init_ptr_17:ptr->i32 
              #                          temp_28_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(1_0), Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_28_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    store to temp_27_array_init_ptr_17 in mem offset legal
    sd      a2,72(sp)
              #                    release a2 with temp_27_array_init_ptr_17
              #                    occupy a2 with _anonymous_of_e_17_0
    mul     a2,a1,s10
              #                    free a1
              #                    free s10
    add     a0,a0,a2
              #                    free a2
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_e_17_0
    mul     a2,s10,a1
              #                    free s10
              #                    free a1
    add     a0,a0,a2
              #                    free a2
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with _anonymous_of_e_17_0
    mul     a2,s10,a1
              #                    free s10
              #                    free a1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,0
              #                    free a0
              #                          store 3_0:i32 temp_28_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a0 with temp_28_array_init_ptr_17
              #                    occupy a1 with 3_0
    li      a1, 3
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu e_17:180 
              #                          e_17 = chi e_17:180 
              #                          new_var temp_29_array_init_ptr_17:ptr->i32 
              #                          temp_29_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(2_0), Some(0_0), Some(0_0)] 
              #                    occupy a1 with temp_29_array_init_ptr_17
    li      a1, 0
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    store to temp_28_array_init_ptr_17 in mem offset legal
    sd      a0,64(sp)
              #                    release a0 with temp_28_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_e_17_0
    mul     a0,a2,s10
              #                    free a2
              #                    free s10
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,s10
              #                    free s10
              #                    found literal reg Some(a0) already exist with 1_0
              #                    occupy a0 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,s10
              #                    free s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,0
              #                    free a1
              #                          store 5_0:i32 temp_29_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a1 with temp_29_array_init_ptr_17
              #                    occupy a0 with 5_0
    li      a0, 5
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu e_17:186 
              #                          e_17 = chi e_17:186 
              #                          new_var temp_30_array_init_ptr_17:ptr->i32 
              #                          temp_30_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(2_0), Some(1_0), Some(0_0)] 
              #                    occupy a0 with temp_30_array_init_ptr_17
    li      a0, 0
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    store to temp_29_array_init_ptr_17 in mem offset legal
    sd      a1,56(sp)
              #                    release a1 with temp_29_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_e_17_0
    mul     a1,a2,s10
              #                    free a2
              #                    free s10
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,s10
              #                    free s10
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,s10
              #                    free s10
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,0
              #                    free a0
              #                          store 6_0:i32 temp_30_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a0 with temp_30_array_init_ptr_17
              #                    occupy a1 with 6_0
    li      a1, 6
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu e_17:192 
              #                          e_17 = chi e_17:192 
              #                          new_var temp_31_array_init_ptr_17:ptr->i32 
              #                          temp_31_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(0_0), Some(1_0), Some(0_0)] 
              #                    occupy a1 with temp_31_array_init_ptr_17
    li      a1, 0
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    store to temp_30_array_init_ptr_17 in mem offset legal
    sd      a0,48(sp)
              #                    release a0 with temp_30_array_init_ptr_17
              #                    occupy a0 with _anonymous_of_e_17_0
    mul     a0,a2,s10
              #                    free a2
              #                    free s10
    add     a1,a1,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,s10
              #                    free s10
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a2,a0
              #                    free a2
              #                    free a0
    add     a1,a1,s10
              #                    free s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,0
              #                    free a1
              #                          store temp_24_array_ele_17:i32 temp_31_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a1 with temp_31_array_init_ptr_17
              #                    occupy a0 with temp_24_array_ele_17
              #                    load from temp_24_array_ele_17 in mem


    lw      a0,100(sp)
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu e_17:198 
              #                          e_17 = chi e_17:198 
              #                          new_var temp_32_array_init_ptr_17:ptr->i32 
              #                          temp_32_array_init_ptr_17 = getelementptr e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(3_0), Some(0_0), Some(0_0)] 
              #                    occupy a2 with temp_32_array_init_ptr_17
    li      a2, 0
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    store to temp_24_array_ele_17 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_24_array_ele_17
              #                    occupy a0 with 3_0
    li      a0, 3
              #                    store to temp_31_array_init_ptr_17 in mem offset legal
    sd      a1,40(sp)
              #                    release a1 with temp_31_array_init_ptr_17
              #                    occupy a1 with _anonymous_of_e_17_0
    mul     a1,s10,a0
              #                    free s10
              #                    free a0
    add     a2,a2,a1
              #                    free a1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,s10
              #                    free s10
              #                    found literal reg Some(a0) already exist with 1_0
              #                    occupy a0 with 1_0
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy s10 with _anonymous_of_e_17_0
    mul     s10,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,s10
              #                    free s10
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,0
              #                    free a2
              #                          store 7_0:i32 temp_32_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a2 with temp_32_array_init_ptr_17
              #                    occupy a0 with 7_0
    li      a0, 7
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          mu e_17:204 
              #                          e_17 = chi e_17:204 
              #                          ret 3_0 
              #                    load from ra_main_0 in mem
    ld      ra,440(sp)
              #                    load from s0_main_0 in mem
    ld      s0,432(sp)
              #                    occupy a0 with 3_0
    li      a0, 3
    addi    sp,sp,448
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_32_array_init_ptr_17, tracked: true } |     a3:Freed { symidx: temp_6_array_init_ptr_17, tracked: true } |     a4:Freed { symidx: temp_7_array_init_ptr_17, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_17, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_17, tracked: true } |     a7:Freed { symidx: temp_1_array_init_ptr_17, tracked: true } |     s11:Freed { symidx: temp_4_array_init_ptr_17, tracked: true } |     s1:Freed { symidx: temp_10_array_init_ptr_17, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_17, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_17, tracked: true } |     s4:Freed { symidx: temp_2_array_init_ptr_17, tracked: true } |     s5:Freed { symidx: temp_13_array_ptr_17, tracked: true } |     s6:Freed { symidx: temp_14_array_ele_17, tracked: true } |     s7:Freed { symidx: temp_3_array_init_ptr_17, tracked: true } |     s8:Freed { symidx: temp_15_array_init_ptr_17, tracked: true } |     s9:Freed { symidx: temp_23_array_ptr_17, tracked: true } | 
