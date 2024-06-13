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
.section
    .data
.section
    .text
                    ;      Define foo_0 [] -> foo_ret_0 
    .global foo
    .type foo @function
foo:
                    ;mem layout:|ra_foo:8|s0_foo:8|temp_0:8|temp_1:8|temp_2:8|temp_3:8|temp_4:8|temp_5:8|temp_6:8|temp_7:8|temp_8:8|temp_9:8|temp_10:8|temp_11:8|temp_12:8|temp_13:8|temp_14:8|temp_15:8|arr:64|a:4|b:4|c:4|d:4|e:4|f:4|g:4|h:4|i:4|j:4|k:4|l:4|m:4|n:4|o:4|p:4
    addi    sp,sp,-272
    sd      ra,264(sp)
    sd      s0,256(sp)
    addi    s0,sp,272
                    ;      alloc ptr->i32 temp_0_17 
                    ;      alloc ptr->i32 temp_1_17 
                    ;      alloc ptr->i32 temp_2_17 
                    ;      alloc ptr->i32 temp_3_17 
                    ;      alloc ptr->i32 temp_4_17 
                    ;      alloc ptr->i32 temp_5_17 
                    ;      alloc ptr->i32 temp_6_17 
                    ;      alloc ptr->i32 temp_7_17 
                    ;      alloc ptr->i32 temp_8_17 
                    ;      alloc ptr->i32 temp_9_17 
                    ;      alloc ptr->i32 temp_10_17 
                    ;      alloc ptr->i32 temp_11_17 
                    ;      alloc ptr->i32 temp_12_17 
                    ;      alloc ptr->i32 temp_13_17 
                    ;      alloc ptr->i32 temp_14_17 
                    ;      alloc ptr->i32 temp_15_17 
                    ;      alloc Array:i32:[Some(16_0)] arr_17 
                    ;      alloc i32 a_17 
                    ;      alloc i32 b_17 
                    ;      alloc i32 c_17 
                    ;      alloc i32 d_17 
                    ;      alloc i32 e_17 
                    ;      alloc i32 f_17 
                    ;      alloc i32 g_17 
                    ;      alloc i32 h_17 
                    ;      alloc i32 i_17 
                    ;      alloc i32 j_17 
                    ;      alloc i32 k_17 
                    ;      alloc i32 l_17 
                    ;      alloc i32 m_17 
                    ;      alloc i32 n_17 
                    ;      alloc i32 o_17 
                    ;      alloc i32 p_17 
                    ;      label L1_0: 
L1_0:
                    ;      new_var arr_17:Array:i32:[Some(16_0)] 
                    ;      new_var temp_0_17:ptr->i32 
                    ;      temp_0_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [4_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 4
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,248(sp)
                    ;      store 0_0:i32 temp_0_17:ptr->Array:i32:[] 
    li      s2, 0
    ld      s1,248(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:21 
                    ;      arr_17 = chi arr_17:21 
                    ;      new_var temp_1_17:ptr->i32 
                    ;      temp_1_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [7_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 7
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,240(sp)
                    ;      store 3_0:i32 temp_1_17:ptr->Array:i32:[] 
    li      s2, 3
    ld      s1,240(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:27 
                    ;      arr_17 = chi arr_17:27 
                    ;      new_var temp_2_17:ptr->i32 
                    ;      temp_2_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [14_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 14
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,232(sp)
                    ;      store 2_0:i32 temp_2_17:ptr->Array:i32:[] 
    li      s2, 2
    ld      s1,232(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:33 
                    ;      arr_17 = chi arr_17:33 
                    ;      new_var temp_3_17:ptr->i32 
                    ;      temp_3_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [3_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,224(sp)
                    ;      store 3_0:i32 temp_3_17:ptr->Array:i32:[] 
    li      s2, 3
    ld      s1,224(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:39 
                    ;      arr_17 = chi arr_17:39 
                    ;      new_var temp_4_17:ptr->i32 
                    ;      temp_4_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [2_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,216(sp)
                    ;      store 2_0:i32 temp_4_17:ptr->Array:i32:[] 
    li      s2, 2
    ld      s1,216(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:45 
                    ;      arr_17 = chi arr_17:45 
                    ;      new_var temp_5_17:ptr->i32 
                    ;      temp_5_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [0_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,208(sp)
                    ;      store 0_0:i32 temp_5_17:ptr->Array:i32:[] 
    li      s2, 0
    ld      s1,208(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:51 
                    ;      arr_17 = chi arr_17:51 
                    ;      new_var temp_6_17:ptr->i32 
                    ;      temp_6_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [1_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,200(sp)
                    ;      store 1_0:i32 temp_6_17:ptr->Array:i32:[] 
    li      s2, 1
    ld      s1,200(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:57 
                    ;      arr_17 = chi arr_17:57 
                    ;      new_var temp_7_17:ptr->i32 
                    ;      temp_7_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [13_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 13
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,192(sp)
                    ;      store 1_0:i32 temp_7_17:ptr->Array:i32:[] 
    li      s2, 1
    ld      s1,192(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:63 
                    ;      arr_17 = chi arr_17:63 
                    ;      new_var temp_8_17:ptr->i32 
                    ;      temp_8_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [15_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 15
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,184(sp)
                    ;      store 3_0:i32 temp_8_17:ptr->Array:i32:[] 
    li      s2, 3
    ld      s1,184(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:69 
                    ;      arr_17 = chi arr_17:69 
                    ;      new_var temp_9_17:ptr->i32 
                    ;      temp_9_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [9_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 9
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,176(sp)
                    ;      store 1_0:i32 temp_9_17:ptr->Array:i32:[] 
    li      s2, 1
    ld      s1,176(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:75 
                    ;      arr_17 = chi arr_17:75 
                    ;      new_var temp_10_17:ptr->i32 
                    ;      temp_10_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [8_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 8
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,168(sp)
                    ;      store 0_0:i32 temp_10_17:ptr->Array:i32:[] 
    li      s2, 0
    ld      s1,168(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:81 
                    ;      arr_17 = chi arr_17:81 
                    ;      new_var temp_11_17:ptr->i32 
                    ;      temp_11_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [5_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 5
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,160(sp)
                    ;      store 1_0:i32 temp_11_17:ptr->Array:i32:[] 
    li      s2, 1
    ld      s1,160(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:87 
                    ;      arr_17 = chi arr_17:87 
                    ;      new_var temp_12_17:ptr->i32 
                    ;      temp_12_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [12_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 12
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,152(sp)
                    ;      store 0_0:i32 temp_12_17:ptr->Array:i32:[] 
    li      s2, 0
    ld      s1,152(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:93 
                    ;      arr_17 = chi arr_17:93 
                    ;      new_var temp_13_17:ptr->i32 
                    ;      temp_13_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [10_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 10
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,144(sp)
                    ;      store 2_0:i32 temp_13_17:ptr->Array:i32:[] 
    li      s2, 2
    ld      s1,144(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:99 
                    ;      arr_17 = chi arr_17:99 
                    ;      new_var temp_14_17:ptr->i32 
                    ;      temp_14_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [6_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 6
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,136(sp)
                    ;      store 2_0:i32 temp_14_17:ptr->Array:i32:[] 
    li      s2, 2
    ld      s1,136(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:105 
                    ;      arr_17 = chi arr_17:105 
                    ;      new_var temp_15_17:ptr->i32 
                    ;      temp_15_17 = getelementptr arr_17:Array:i32:[Some(16_0)] [11_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 11
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 124
    add     s3,s3,s5
    sd      s3,128(sp)
                    ;      store 3_0:i32 temp_15_17:ptr->Array:i32:[] 
    li      s2, 3
    ld      s1,128(sp)
    sd      s2,0(s1)
                    ;      mu arr_17:111 
                    ;      arr_17 = chi arr_17:111 
                    ;      a_17 = i32 3_0 
    li      s1, 3
    sw      s1,60(sp)
                    ;      b_17 = i32 7_0 
    li      s1, 7
    sw      s1,56(sp)
                    ;      c_17 = i32 5_0 
    li      s1, 5
    sw      s1,52(sp)
                    ;      d_17 = i32 6_0 
    li      s1, 6
    sw      s1,48(sp)
                    ;      e_17 = i32 1_0 
    li      s1, 1
    sw      s1,44(sp)
                    ;      f_17 = i32 0_0 
    li      s1, 0
    sw      s1,40(sp)
                    ;      g_17 = i32 3_0 
    li      s1, 3
    sw      s1,36(sp)
                    ;      h_17 = i32 5_0 
    li      s1, 5
    sw      s1,32(sp)
                    ;      i_17 = i32 4_0 
    li      s1, 4
    sw      s1,28(sp)
                    ;      j_17 = i32 2_0 
    li      s1, 2
    sw      s1,24(sp)
                    ;      k_17 = i32 7_0 
    li      s1, 7
    sw      s1,20(sp)
                    ;      l_17 = i32 9_0 
    li      s1, 9
    sw      s1,16(sp)
                    ;      m_17 = i32 8_0 
    li      s1, 8
    sw      s1,12(sp)
                    ;      n_17 = i32 1_0 
    li      s1, 1
    sw      s1,8(sp)
                    ;      o_17 = i32 4_0 
    li      s1, 4
    sw      s1,4(sp)
                    ;      p_17 = i32 6_0 
    li      s1, 6
    sw      s1,0(sp)
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
                    ;      label L0_0: 
L0_0:

