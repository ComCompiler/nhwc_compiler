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
                    #      Define exgcd_0 [a_16, b_16, x_16, y_16] -> exgcd_ret_0 
    .globl exgcd
    .type exgcd,@function
exgcd:
                    #mem layout:|ra_exgcd:8|s0_exgcd:8|a:4|b:4|x:8|y:8|temp_0:1|none:7|temp_1:8|temp_2:8|temp_3:4|temp_4:4|r:4|none:4|temp_5:8|temp_6:4|t:4|temp_7:8|temp_8:8|temp_9:4|none:4|temp_10:8|temp_11:8|temp_12:4|temp_13:4|temp_14:4|temp_15:4
    addi    sp,sp,-152
    sd      ra,144(sp)
    sd      s0,136(sp)
    addi    s0,sp,152
                    #      new_var x_16:ptr->i32 
                    #      new_var y_16:ptr->i32 
                    #      alloc i1 temp_0_19 
                    #      alloc ptr->i32 temp_1_21 
                    #      alloc ptr->i32 temp_2_21 
                    #      alloc i32 temp_3_25 
                    #      alloc i32 temp_4_25 
                    #      alloc i32 r_25 
                    #      alloc ptr->i32 temp_5_25 
                    #      alloc i32 temp_6_25 
                    #      alloc i32 t_25 
                    #      alloc ptr->i32 temp_7_25 
                    #      alloc ptr->i32 temp_8_25 
                    #      alloc i32 temp_9_25 
                    #      alloc ptr->i32 temp_10_25 
                    #      alloc ptr->i32 temp_11_25 
                    #      alloc i32 temp_12_25 
                    #      alloc i32 temp_13_25 
                    #      alloc i32 temp_14_25 
                    #      alloc i32 temp_15_25 
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_0_19:i1 
                    #      temp_0_19 = icmp i32 Eq b_16, 0_0 
    li      a4, 0
    xor     a5,a1,a4
    seqz    a5, a5
                    #      br i1 temp_0_19, label branch_true_20, label branch_false_20 
    bnez    a5, .branch_true_20
    j       .branch_false_20
                    #      label branch_true_20: 
.branch_true_20:
                    #      new_var temp_1_21:ptr->i32 
                    #      temp_1_21 = getelementptr x_16:ptr->i32 [Some(0_0)] 
    li      a6, 0
    li      a7, 1
                    #found literal reg Some(a4) already exist with 0_0
    add     a6,a6,a2
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
                    #      store 1_0:i32 temp_1_21:ptr->i32 
                    #found literal reg Some(a7) already exist with 1_0
    sd      a7,0(a6)
                    #      mu x_16:28 
                    #      x_16 = chi x_16:28 
                    #      new_var temp_2_21:ptr->i32 
                    #      temp_2_21 = getelementptr y_16:ptr->i32 [Some(0_0)] 
    li      s1, 0
                    #found literal reg Some(a7) already exist with 1_0
                    #found literal reg Some(a4) already exist with 0_0
    add     s1,s1,a3
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      store 0_0:i32 temp_2_21:ptr->i32 
                    #found literal reg Some(a4) already exist with 0_0
    sd      a4,0(s1)
                    #      mu y_16:34 
                    #      y_16 = chi y_16:34 
                    #      ret a_16 
    ld      ra,144(sp)
    ld      s0,136(sp)
    sw      a0,132(sp)
    addi    sp,sp,152
    ret
                    #      label branch_false_20: 
.branch_false_20:
                    #      new_var temp_3_25:i32 
                    #      temp_3_25 = Mod i32 a_16, b_16 
    rem     s2,a0,a1
                    #      new_var temp_4_25:i32 
                    #      temp_4_25 =  Call i32 exgcd_0(b_16, temp_3_25, x_16, y_16) 
                    #saved register dumping to mem
    sd      s1,88(sp)
    sw      s2,84(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a1,128(sp)
    sw      a0,132(sp)
    sd      a2,120(sp)
    sd      a3,112(sp)
                    #arg load ended
    call    exgcd
    sw      a0,80(sp)
                    #      r_25 = i32 temp_4_25 
    mv      a1, a0
                    #      new_var temp_5_25:ptr->i32 
                    #      new_var temp_6_25:i32 
                    #      temp_5_25 = getelementptr x_16:ptr->i32 [Some(0_0)] 
    li      a2, 0
                    #found literal reg Some(a7) already exist with 1_0
                    #found literal reg Some(a4) already exist with 0_0
    mul     a3,a7,a4
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_6_25 = load temp_5_25:ptr->i32 
    lw      s1,0(a2)
                    #      t_25 = i32 temp_6_25 
    mv      s2, s1
                    #      new_var temp_7_25:ptr->i32 
                    #      temp_7_25 = getelementptr x_16:ptr->i32 [Some(0_0)] 
    li      s3, 0
                    #found literal reg Some(a7) already exist with 1_0
                    #found literal reg Some(a4) already exist with 0_0
    add     s3,s3,a3
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      new_var temp_8_25:ptr->i32 
                    #      new_var temp_9_25:i32 
                    #      temp_8_25 = getelementptr y_16:ptr->i32 [Some(0_0)] 
    li      s4, 0
                    #found literal reg Some(a7) already exist with 1_0
                    #found literal reg Some(a4) already exist with 0_0
    mul     s5,a7,a4
    add     s4,s4,s5
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_9_25 = load temp_8_25:ptr->i32 
    lw      s6,0(s4)
                    #      store temp_9_25:i32 temp_7_25:ptr->i32 
    sd      s6,0(s3)
                    #      mu x_16:64 
                    #      x_16 = chi x_16:64 
                    #      new_var temp_10_25:ptr->i32 
                    #      temp_10_25 = getelementptr y_16:ptr->i32 [Some(0_0)] 
    li      s7, 0
                    #found literal reg Some(a7) already exist with 1_0
                    #found literal reg Some(a4) already exist with 0_0
    add     s7,s7,s5
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
                    #      new_var temp_11_25:ptr->i32 
                    #      new_var temp_12_25:i32 
                    #      temp_11_25 = getelementptr y_16:ptr->i32 [Some(0_0)] 
    li      s8, 0
                    #found literal reg Some(a7) already exist with 1_0
                    #found literal reg Some(a4) already exist with 0_0
    add     s8,s8,s5
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_12_25 = load temp_11_25:ptr->i32 
    lw      s9,0(s8)
                    #      new_var temp_13_25:i32 
                    #      temp_13_25 = Div i32 a_16, b_16 
    div     a4,s10,s11
                    #      new_var temp_14_25:i32 
                    #      temp_14_25 = Mul i32 temp_13_25, temp_12_25 
    mul     a7,a4,s9
                    #      new_var temp_15_25:i32 
                    #      temp_15_25 = Sub i32 t_25, temp_14_25 
    sw      a0,80(sp)
    sub     a0,s2,a7
                    #      store temp_15_25:i32 temp_10_25:ptr->i32 
    sd      a0,0(s7)
                    #      mu y_16:85 
                    #      y_16 = chi y_16:85 
                    #      ret r_25 
    ld      ra,144(sp)
    ld      s0,136(sp)
    sw      a1,76(sp)
    sw      a0,0(sp)
    addi    sp,sp,152
    ret
                    #      label L2_0: 
.L2_0:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a:4|b:4|temp_16:8|x:4|none:4|temp_17:8|y:4|temp_18:4|temp_19:8|temp_20:8|temp_21:4|temp_22:4|temp_23:4|temp_24:4|temp_25:8|temp_26:4|none:4
    addi    sp,sp,-104
    sd      ra,96(sp)
    sd      s0,88(sp)
    addi    s0,sp,104
                    #      alloc i32 a_32 
                    #      alloc i32 b_32 
                    #      alloc ptr->i32 temp_16_32 
                    #      alloc Array:i32:[Some(1_0)] x_32 
                    #      alloc ptr->i32 temp_17_32 
                    #      alloc Array:i32:[Some(1_0)] y_32 
                    #      alloc i32 temp_18_32 
                    #      alloc ptr->i32 temp_19_32 
                    #      alloc ptr->i32 temp_20_32 
                    #      alloc i32 temp_21_32 
                    #      alloc i32 temp_22_32 
                    #      alloc i32 temp_23_32 
                    #      alloc i32 temp_24_32 
                    #      alloc ptr->i32 temp_25_32 
                    #      alloc i32 temp_26_32 
                    #      label L0_0: 
.L0_0:
                    #      a_32 = i32 7_0 
    li      a0, 7
                    #      b_32 = i32 15_0 
    li      a1, 15
                    #      new_var x_32:Array:i32:[Some(1_0)] 
                    #      new_var temp_16_32:ptr->i32 
                    #      temp_16_32 = getelementptr x_32:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 1_0:i32 temp_16_32:ptr->i32 
                    #found literal reg Some(a3) already exist with 1_0
    sd      a3,0(a2)
                    #      mu x_32:98 
                    #      x_32 = chi x_32:98 
                    #      new_var y_32:Array:i32:[Some(1_0)] 
                    #      new_var temp_17_32:ptr->i32 
                    #      temp_17_32 = getelementptr y_32:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      a6, 0
                    #found literal reg Some(a3) already exist with 1_0
                    #found literal reg Some(a4) already exist with 0_0
    mul     a7,a3,a4
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      store 1_0:i32 temp_17_32:ptr->i32 
                    #found literal reg Some(a3) already exist with 1_0
    sd      a3,0(a6)
                    #      mu y_32:106 
                    #      y_32 = chi y_32:106 
                    #      new_var temp_18_32:i32 
                    #      temp_18_32 =  Call i32 exgcd_0(a_32, b_32, x_32, y_32) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,84(sp)
    sw      a1,80(sp)
    sw      a5,68(sp)
    sd      a2,72(sp)
    sw      a7,52(sp)
                    #arg load ended
    call    exgcd
    sw      a0,48(sp)
                    #      new_var temp_19_32:ptr->i32 
                    #      temp_19_32 = getelementptr x_32:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      a1, 0
    li      a2, 1
                    #found literal reg Some(a4) already exist with 0_0
    mul     a3,a2,a4
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      new_var temp_20_32:ptr->i32 
                    #      new_var temp_21_32:i32 
                    #      temp_20_32 = getelementptr x_32:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      a5, 0
                    #found literal reg Some(a2) already exist with 1_0
                    #found literal reg Some(a4) already exist with 0_0
    add     a5,a5,a3
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_21_32 = load temp_20_32:ptr->i32 
    lw      a7,0(a5)
                    #      new_var temp_22_32:i32 
                    #      temp_22_32 = Mod i32 temp_21_32, b_32 
    rem     s2,a7,s1
                    #      new_var temp_23_32:i32 
                    #      temp_23_32 = Add i32 temp_22_32, b_32 
    add     s3,s2,s1
                    #      new_var temp_24_32:i32 
                    #      temp_24_32 = Mod i32 temp_23_32, b_32 
    rem     s4,s3,s1
                    #      store temp_24_32:i32 temp_19_32:ptr->i32 
    sd      s4,0(a1)
                    #      mu x_32:131 
                    #      x_32 = chi x_32:131 
                    #      new_var temp_25_32:ptr->i32 
                    #      new_var temp_26_32:i32 
                    #      temp_25_32 = getelementptr x_32:Array:i32:[Some(1_0)] [Some(0_0)] 
    li      s5, 0
                    #found literal reg Some(a2) already exist with 1_0
                    #found literal reg Some(a4) already exist with 0_0
    add     s5,s5,a3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_26_32 = load temp_25_32:ptr->i32 
    lw      s6,0(s5)
                    #       Call void putint_0(temp_26_32) 
                    #saved register dumping to mem
    sw      s1,80(sp)
    sw      s2,24(sp)
    sw      s3,20(sp)
    sw      s4,16(sp)
    sd      s5,8(sp)
    sw      s6,4(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,48(sp)
                    #arg load ended
    call    putint
                    #      ret 0_0 
    ld      ra,96(sp)
    ld      s0,88(sp)
    li      a0, 0
    addi    sp,sp,104
    ret
