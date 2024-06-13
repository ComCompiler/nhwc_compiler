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
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8|temp_0:8|temp_1:8|temp_2:8|temp_3:8|temp_4:8|a:32|N:4|b:32|temp_14:4|temp_5:8|temp_6:8|temp_7:8|temp_8:8|temp_9:8|temp_10:8|temp_11:8|temp_12:8|c:32|temp_13:8|temp_15:8|temp_16:8|temp_17:8|temp_18:8|temp_19:8|temp_20:8|d:32|temp_21:8|temp_22:4|none:4
    addi    sp,sp,-328
    sd      ra,320(sp)
    sd      s0,312(sp)
    addi    s0,sp,328
                    ;      alloc ptr->i32 temp_0_17 
                    ;      alloc ptr->i32 temp_1_17 
                    ;      alloc ptr->i32 temp_2_17 
                    ;      alloc ptr->i32 temp_3_17 
                    ;      alloc ptr->i32 temp_4_17 
                    ;      alloc Array:i32:[Some(4_0), Some(2_0)] a_17 
                    ;      alloc i32 N_17 
                    ;      alloc Array:i32:[Some(4_0), Some(2_0)] b_17 
                    ;      alloc ptr->i32 temp_5_17 
                    ;      alloc ptr->i32 temp_6_17 
                    ;      alloc ptr->i32 temp_7_17 
                    ;      alloc ptr->i32 temp_8_17 
                    ;      alloc ptr->i32 temp_9_17 
                    ;      alloc ptr->i32 temp_10_17 
                    ;      alloc ptr->i32 temp_11_17 
                    ;      alloc ptr->i32 temp_12_17 
                    ;      alloc Array:i32:[Some(4_0), Some(2_0)] c_17 
                    ;      alloc ptr->i32 temp_13_17 
                    ;      alloc i32 temp_14_17 
                    ;      alloc ptr->i32 temp_15_17 
                    ;      alloc ptr->i32 temp_16_17 
                    ;      alloc ptr->i32 temp_17_17 
                    ;      alloc ptr->i32 temp_18_17 
                    ;      alloc ptr->i32 temp_19_17 
                    ;      alloc ptr->i32 temp_20_17 
                    ;      alloc Array:i32:[Some(4_0), Some(2_0)] d_17 
                    ;      alloc ptr->i32 temp_21_17 
                    ;      alloc i32 temp_22_17 
                    ;      label L0_0: 
L0_0:
                    ;      new_var a_17:Array:i32:[Some(4_0), Some(2_0)] 
                    ;      new_var temp_0_17:ptr->i32 
                    ;      temp_0_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [1_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 268
    add     s3,s3,s5
    sd      s3,304(sp)
                    ;      store 3_0:i32 temp_0_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 3
    ld      s1,304(sp)
    sd      s2,0(s1)
                    ;      mu a_17:20 
                    ;      a_17 = chi a_17:20 
                    ;      new_var temp_1_17:ptr->i32 
                    ;      temp_1_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [1_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 268
    add     s3,s3,s5
    sd      s3,296(sp)
                    ;      store 4_0:i32 temp_1_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 4
    ld      s1,296(sp)
    sd      s2,0(s1)
                    ;      mu a_17:26 
                    ;      a_17 = chi a_17:26 
                    ;      new_var temp_2_17:ptr->i32 
                    ;      temp_2_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 268
    add     s3,s3,s5
    sd      s3,288(sp)
                    ;      store 2_0:i32 temp_2_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 2
    ld      s1,288(sp)
    sd      s2,0(s1)
                    ;      mu a_17:32 
                    ;      a_17 = chi a_17:32 
                    ;      new_var temp_3_17:ptr->i32 
                    ;      temp_3_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 268
    add     s3,s3,s5
    sd      s3,280(sp)
                    ;      store 7_0:i32 temp_3_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 7
    ld      s1,280(sp)
    sd      s2,0(s1)
                    ;      mu a_17:38 
                    ;      a_17 = chi a_17:38 
                    ;      new_var temp_4_17:ptr->i32 
                    ;      temp_4_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 268
    add     s3,s3,s5
    sd      s3,272(sp)
                    ;      store 1_0:i32 temp_4_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 1
    ld      s1,272(sp)
    sd      s2,0(s1)
                    ;      mu a_17:44 
                    ;      a_17 = chi a_17:44 
                    ;      N_17 = i32 3_0 
    li      s1, 3
    sw      s1,236(sp)
                    ;      new_var b_17:Array:i32:[Some(4_0), Some(2_0)] 
                    ;      new_var c_17:Array:i32:[Some(4_0), Some(2_0)] 
                    ;      new_var temp_5_17:ptr->i32 
                    ;      temp_5_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 132
    add     s3,s3,s5
    sd      s3,192(sp)
                    ;      store 2_0:i32 temp_5_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 2
    ld      s1,192(sp)
    sd      s2,0(s1)
                    ;      mu c_17:56 
                    ;      c_17 = chi c_17:56 
                    ;      new_var temp_6_17:ptr->i32 
                    ;      temp_6_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 132
    add     s3,s3,s5
    sd      s3,184(sp)
                    ;      store 6_0:i32 temp_6_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 6
    ld      s1,184(sp)
    sd      s2,0(s1)
                    ;      mu c_17:62 
                    ;      c_17 = chi c_17:62 
                    ;      new_var temp_7_17:ptr->i32 
                    ;      temp_7_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [1_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 132
    add     s3,s3,s5
    sd      s3,176(sp)
                    ;      store 4_0:i32 temp_7_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 4
    ld      s1,176(sp)
    sd      s2,0(s1)
                    ;      mu c_17:68 
                    ;      c_17 = chi c_17:68 
                    ;      new_var temp_8_17:ptr->i32 
                    ;      temp_8_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 132
    add     s3,s3,s5
    sd      s3,168(sp)
                    ;      store 5_0:i32 temp_8_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 5
    ld      s1,168(sp)
    sd      s2,0(s1)
                    ;      mu c_17:74 
                    ;      c_17 = chi c_17:74 
                    ;      new_var temp_9_17:ptr->i32 
                    ;      temp_9_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 132
    add     s3,s3,s5
    sd      s3,160(sp)
                    ;      store 7_0:i32 temp_9_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 7
    ld      s1,160(sp)
    sd      s2,0(s1)
                    ;      mu c_17:80 
                    ;      c_17 = chi c_17:80 
                    ;      new_var temp_10_17:ptr->i32 
                    ;      temp_10_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 132
    add     s3,s3,s5
    sd      s3,152(sp)
                    ;      store 8_0:i32 temp_10_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 8
    ld      s1,152(sp)
    sd      s2,0(s1)
                    ;      mu c_17:86 
                    ;      c_17 = chi c_17:86 
                    ;      new_var temp_11_17:ptr->i32 
                    ;      temp_11_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [1_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 132
    add     s3,s3,s5
    sd      s3,144(sp)
                    ;      store 3_0:i32 temp_11_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 3
    ld      s1,144(sp)
    sd      s2,0(s1)
                    ;      mu c_17:92 
                    ;      c_17 = chi c_17:92 
                    ;      new_var temp_12_17:ptr->i32 
                    ;      temp_12_17 = getelementptr c_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 132
    add     s3,s3,s5
    sd      s3,136(sp)
                    ;      store 1_0:i32 temp_12_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 1
    ld      s1,136(sp)
    sd      s2,0(s1)
                    ;      mu c_17:98 
                    ;      c_17 = chi c_17:98 
                    ;      new_var d_17:Array:i32:[Some(4_0), Some(2_0)] 
                    ;      new_var temp_13_17:ptr->i32 
                    ;      new_var temp_14_17:i32 
                    ;      temp_13_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 268
    add     s3,s3,s5
    sd      s3,96(sp)
                    ;      temp_14_17 = load temp_13_17:ptr->i32 
    ld      s1,96(sp)
    lw      s2,0(s1)
    sw      s2,200(sp)
                    ;      new_var temp_15_17:ptr->i32 
                    ;      temp_15_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [0_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 44
    add     s3,s3,s5
    sd      s3,88(sp)
                    ;      store 3_0:i32 temp_15_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 3
    ld      s1,88(sp)
    sd      s2,0(s1)
                    ;      mu d_17:112 
                    ;      d_17 = chi d_17:112 
                    ;      new_var temp_16_17:ptr->i32 
                    ;      temp_16_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 44
    add     s3,s3,s5
    sd      s3,80(sp)
                    ;      store 1_0:i32 temp_16_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 1
    ld      s1,80(sp)
    sd      s2,0(s1)
                    ;      mu d_17:118 
                    ;      d_17 = chi d_17:118 
                    ;      new_var temp_17_17:ptr->i32 
                    ;      temp_17_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 44
    add     s3,s3,s5
    sd      s3,72(sp)
                    ;      store temp_14_17:i32 temp_17_17:ptr->Array:i32:[Some(2_0)] 
    lw      s2,200(sp)
    ld      s1,72(sp)
    sd      s2,0(s1)
                    ;      mu d_17:124 
                    ;      d_17 = chi d_17:124 
                    ;      new_var temp_18_17:ptr->i32 
                    ;      temp_18_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 44
    add     s3,s3,s5
    sd      s3,64(sp)
                    ;      store 2_0:i32 temp_18_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 2
    ld      s1,64(sp)
    sd      s2,0(s1)
                    ;      mu d_17:130 
                    ;      d_17 = chi d_17:130 
                    ;      new_var temp_19_17:ptr->i32 
                    ;      temp_19_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [3_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 44
    add     s3,s3,s5
    sd      s3,56(sp)
                    ;      store 8_0:i32 temp_19_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 8
    ld      s1,56(sp)
    sd      s2,0(s1)
                    ;      mu d_17:136 
                    ;      d_17 = chi d_17:136 
                    ;      new_var temp_20_17:ptr->i32 
                    ;      temp_20_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [1_0, 0_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 44
    add     s3,s3,s5
    sd      s3,48(sp)
                    ;      store 5_0:i32 temp_20_17:ptr->Array:i32:[Some(2_0)] 
    li      s2, 5
    ld      s1,48(sp)
    sd      s2,0(s1)
                    ;      mu d_17:142 
                    ;      d_17 = chi d_17:142 
                    ;      new_var e_17:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] 
                    ;      new_var temp_21_17:ptr->i32 
                    ;      new_var temp_22_17:i32 
                    ;      temp_21_17 = getelementptr d_17:Array:i32:[Some(4_0), Some(2_0)] [2_0, 1_0] 
    mv      s3, zero
    li      s1, 2
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 44
    add     s3,s3,s5
    sd      s3,8(sp)
                    ;      temp_22_17 = load temp_21_17:ptr->i32 
    ld      s1,8(sp)
    lw      s2,0(s1)
    sw      s2,4(sp)

