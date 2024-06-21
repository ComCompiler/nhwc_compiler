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
                    #      Define FourWhile_0 [] -> FourWhile_ret_0 
    .globl FourWhile
    .type FourWhile,@function
FourWhile:
                    #mem layout:|ra_FourWhile:8|s0_FourWhile:8|a:4|b:4|c:4|d:4|temp_0:1|none:3|temp_1:4|temp_2:1|none:3|temp_3:4|temp_4:1|none:3|temp_5:4|temp_6:1|none:3|temp_7:4|temp_8:4|temp_9:4|temp_10:4|temp_11:4|temp_12:4|temp_13:4
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,72(sp)
    addi    s0,sp,88
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i32 c_17 
                    #      alloc i32 d_17 
                    #      alloc i1 temp_0_26 
                    #      alloc i32 temp_1_28 
                    #      alloc i1 temp_2_30 
                    #      alloc i32 temp_3_32 
                    #      alloc i1 temp_4_34 
                    #      alloc i32 temp_5_36 
                    #      alloc i1 temp_6_38 
                    #      alloc i32 temp_7_40 
                    #      alloc i32 temp_8_36 
                    #      alloc i32 temp_9_32 
                    #      alloc i32 temp_10_28 
                    #      alloc i32 temp_11_17 
                    #      alloc i32 temp_12_17 
                    #      alloc i32 temp_13_17 
                    #      label L1_0: 
.L1_0:
                    #      new_var a_17:i32 
                    #      a_17 = i32 5_0 
    li      a0, 5
                    #      new_var b_17:i32 
                    #      new_var c_17:i32 
                    #      b_17 = i32 6_0 
    li      a1, 6
                    #      c_17 = i32 7_0 
    li      a2, 7
                    #      new_var d_17:i32 
                    #      d_17 = i32 10_0 
    li      a3, 10
                    #      jump label: while.head_27 
    j       .while.head_27
                    #      label while.head_27: 
.while.head_27:
                    #      new_var temp_0_26:i1 
                    #      temp_0_26 = icmp i32 Slt a_17, 20_0 
    li      a4, 20
    slt     a5,a0,a4
                    #      br i1 temp_0_26, label while.body_27, label while.exit_27 
    bnez    a5, .while.body_27
    j       .while.exit_27
                    #      label while.body_27: 
.while.body_27:
                    #      new_var temp_1_28:i32 
                    #      temp_1_28 = Add i32 a_17, 3_0 
    li      a4, 3
    add     a6,a0,a4
                    #      a_17 = i32 temp_1_28 
    mv      a0, a6
                    #      jump label: while.head_31 
    j       .while.head_31
                    #      label while.head_31: 
.while.head_31:
                    #      new_var temp_2_30:i1 
                    #      temp_2_30 = icmp i32 Slt b_17, 10_0 
    li      a4, 10
    slt     a7,a1,a4
                    #      br i1 temp_2_30, label while.body_31, label while.exit_31 
    bnez    a7, .while.body_31
    j       .while.exit_31
                    #      label while.body_31: 
.while.body_31:
                    #      new_var temp_3_32:i32 
                    #      temp_3_32 = Add i32 b_17, 1_0 
    li      a4, 1
    add     s1,a1,a4
                    #      b_17 = i32 temp_3_32 
    mv      a1, s1
                    #      jump label: while.head_35 
    j       .while.head_35
                    #      label while.head_35: 
.while.head_35:
                    #      new_var temp_4_34:i1 
                    #      temp_4_34 = icmp i32 Eq c_17, 7_0 
    li      a4, 7
    xor     s2,a2,a4
    seqz    s2, s2
                    #      br i1 temp_4_34, label while.body_35, label while.exit_35 
    bnez    s2, .while.body_35
    j       .while.exit_35
                    #      label while.body_35: 
.while.body_35:
                    #      new_var temp_5_36:i32 
                    #      temp_5_36 = Sub i32 c_17, 1_0 
    li      a4, 1
    sub     s3,a2,a4
                    #      c_17 = i32 temp_5_36 
    mv      a2, s3
                    #      jump label: while.head_39 
    j       .while.head_39
                    #      label while.head_39: 
.while.head_39:
                    #      new_var temp_6_38:i1 
                    #      temp_6_38 = icmp i32 Slt d_17, 20_0 
    li      a4, 20
    slt     s4,a3,a4
                    #      br i1 temp_6_38, label while.body_39, label while.exit_39 
    bnez    s4, .while.body_39
    j       .while.exit_39
                    #      label while.body_39: 
.while.body_39:
                    #      new_var temp_7_40:i32 
                    #      temp_7_40 = Add i32 d_17, 3_0 
    li      a4, 3
    add     s5,a3,a4
                    #      d_17 = i32 temp_7_40 
    mv      a3, s5
                    #      jump label: while.head_39 
    sb      s4,31(sp)
    sw      s5,24(sp)
    j       .while.head_39
                    #      label while.exit_39: 
.while.exit_39:
                    #      new_var temp_8_36:i32 
                    #      temp_8_36 = Sub i32 d_17, 1_0 
    li      a4, 1
    sub     s5,a3,a4
                    #      d_17 = i32 temp_8_36 
    mv      a3, s5
                    #      jump label: while.head_35 
    sb      s2,39(sp)
    sb      s4,31(sp)
    sw      s3,32(sp)
    sw      s5,20(sp)
    j       .while.head_35
                    #      label while.exit_35: 
.while.exit_35:
                    #      new_var temp_9_32:i32 
                    #      temp_9_32 = Add i32 c_17, 1_0 
    li      a4, 1
    add     s3,a2,a4
                    #      c_17 = i32 temp_9_32 
    mv      a2, s3
                    #      jump label: while.head_31 
    sb      s2,39(sp)
    sb      a7,47(sp)
    sw      s3,16(sp)
    sw      s1,40(sp)
    j       .while.head_31
                    #      label while.exit_31: 
.while.exit_31:
                    #      new_var temp_10_28:i32 
                    #      temp_10_28 = Sub i32 b_17, 2_0 
    li      a4, 2
    sub     s1,a1,a4
                    #      b_17 = i32 temp_10_28 
    mv      a1, s1
                    #      jump label: while.head_27 
    sw      a6,48(sp)
    sb      a7,47(sp)
    sb      a5,55(sp)
    sw      s1,12(sp)
    j       .while.head_27
                    #      label while.exit_27: 
.while.exit_27:
                    #      new_var temp_11_17:i32 
                    #      temp_11_17 = Add i32 b_17, d_17 
    add     a4,a1,a3
                    #      new_var temp_12_17:i32 
                    #      temp_12_17 = Add i32 temp_11_17, c_17 
    add     a6,a4,a2
                    #      new_var temp_13_17:i32 
                    #      temp_13_17 = Add i32 a_17, temp_12_17 
    add     a7,a0,a6
                    #      ret temp_13_17 
    ld      ra,80(sp)
    ld      s0,72(sp)
    sw      a7,0(sp)
    sw      a0,68(sp)
    addi    sp,sp,88
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_14:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_14_47 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_14_47:i32 
                    #      temp_14_47 =  Call i32 FourWhile_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    FourWhile
    sw      a0,4(sp)
                    #      ret temp_14_47 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
