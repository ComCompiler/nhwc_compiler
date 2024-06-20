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


.section        .text
    .align 4
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a:4|b:4|c:4|d:4|result:4|temp_0:4|temp_1:4|temp_2:4|temp_3:4|temp_4:4|temp_5:4|temp_6:4|temp_7:4|temp_8:4|temp_9:4|temp_10:4|temp_11:4|temp_12:4|temp_13:4|temp_14:4|temp_15:4|temp_16:4
    addi    sp,sp,-104
    sd      ra,96(sp)
    sd      s0,88(sp)
    addi    s0,sp,104
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i32 c_17 
                    #      alloc i32 d_17 
                    #      alloc i32 result_17 
                    #      alloc i32 temp_0_17 
                    #      alloc i32 temp_1_17 
                    #      alloc i32 temp_2_17 
                    #      alloc i32 temp_3_17 
                    #      alloc i32 temp_4_17 
                    #      alloc i32 temp_5_17 
                    #      alloc i32 temp_6_17 
                    #      alloc i32 temp_7_17 
                    #      alloc i32 temp_8_17 
                    #      alloc i32 temp_9_17 
                    #      alloc i32 temp_10_17 
                    #      alloc i32 temp_11_17 
                    #      alloc i32 temp_12_17 
                    #      alloc i32 temp_13_17 
                    #      alloc i32 temp_14_17 
                    #      alloc i32 temp_15_17 
                    #      alloc i32 temp_16_17 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_17:i32 
                    #      new_var b_17:i32 
                    #      new_var c_17:i32 
                    #      new_var d_17:i32 
                    #      new_var result_17:i32 
                    #      a_17 = i32 5_0 
    li      a0, 5
                    #      b_17 = i32 5_0 
    li      a1, 5
                    #      c_17 = i32 1_0 
    li      a2, 1
                    #      d_17 = i32 -2_0 
    li      a3, -2
                    #      new_var temp_0_17:i32 
                    #      temp_0_17 = Add i32 c_17, 3_0 
    li      a4, 3
    add     a5,a2,a4
                    #      new_var temp_1_17:i32 
                    #      temp_1_17 = Sub i32 0_0, temp_0_17 
    li      a6, 0
    sub     a7,a6,a5
                    #      new_var temp_2_17:i32 
                    #      temp_2_17 = Mod i32 temp_1_17, 2_0 
    li      s1, 2
    rem     s2,a7,s1
                    #      new_var temp_3_17:i32 
                    #      temp_3_17 = Sub i32 a_17, b_17 
    sub     s3,a0,a1
                    #      new_var temp_4_17:i32 
                    #      temp_4_17 = Sub i32 temp_3_17, temp_2_17 
    sub     s4,s3,s2
                    #      new_var temp_5_17:i32 
                    #      temp_5_17 = Div i32 2_0, d_17 
                    #found literal reg Some(s1) already exist with 2_0
    div     s5,s1,a3
                    #      new_var temp_6_17:i32 
                    #      temp_6_17 = Add i32 temp_5_17, temp_4_17 
    add     s6,s5,s4
                    #      result_17 = i32 temp_6_17 
    mv      s7, s6
                    #       Call void putint_0(result_17) 
                    #saved register dumping to mem
    sw      s2,56(sp)
    sw      s3,52(sp)
    sw      s4,48(sp)
    sw      s5,44(sp)
    sw      s6,40(sp)
    sw      s7,68(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,84(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_7_17:i32 
                    #      temp_7_17 = Add i32 c_17, 2_0 
    li      a0, 2
    add     s1,a2,a0
                    #      new_var temp_8_17:i32 
                    #      temp_8_17 = Mod i32 temp_7_17, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    rem     s2,s1,a0
                    #      new_var temp_9_17:i32 
                    #      temp_9_17 = Sub i32 0_0, temp_8_17 
                    #found literal reg Some(a6) already exist with 0_0
    sub     s3,a6,s2
                    #      new_var temp_10_17:i32 
                    #      temp_10_17 = Sub i32 a_17, b_17 
    sub     s5,s4,a1
                    #      new_var temp_11_17:i32 
                    #      temp_11_17 = Sub i32 0_0, temp_10_17 
                    #found literal reg Some(a6) already exist with 0_0
    sub     s6,a6,s5
                    #      new_var temp_12_17:i32 
                    #      temp_12_17 = Sub i32 temp_11_17, temp_9_17 
    sub     s7,s6,s3
                    #      new_var temp_13_17:i32 
                    #      temp_13_17 = Mod i32 d_17, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    rem     s8,a3,a0
                    #      new_var temp_14_17:i32 
                    #      temp_14_17 = Add i32 temp_13_17, 67_0 
    li      s9, 67
    add     s10,s8,s9
                    #      new_var temp_15_17:i32 
                    #      temp_15_17 = Add i32 temp_14_17, temp_12_17 
    add     s11,s10,s7
                    #      result_17 = i32 temp_15_17 
    mv      a0, s11
                    #      new_var temp_16_17:i32 
                    #      temp_16_17 = Add i32 result_17, 3_0 
                    #found literal reg Some(a4) already exist with 3_0
    add     a6,a0,a4
                    #      result_17 = i32 temp_16_17 
                    #       Call void putint_0(result_17) 
                    #saved register dumping to mem
    sw      s1,36(sp)
    sw      s2,32(sp)
    sw      s3,28(sp)
    sw      s4,84(sp)
    sw      s5,24(sp)
    sw      s6,20(sp)
    sw      s7,16(sp)
    sw      s8,12(sp)
    sw      s10,8(sp)
    sw      s11,4(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,68(sp)
                    #arg load ended
    call    putint
                    #      ret 0_0 
    ld      ra,96(sp)
    ld      s0,88(sp)
    li      a0, 0
    addi    sp,sp,104
    ret
