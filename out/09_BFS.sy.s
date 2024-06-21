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
                    #      Define quick_read_0 [] -> quick_read_ret_0 
    .globl quick_read
    .type quick_read,@function
quick_read:
                    #mem layout:|ra_quick_read:8|s0_quick_read:8|temp_0:4|ch:4|x:4|f:4|temp_1:1|temp_2:1|temp_3:1|temp_4:1|temp_5:4|temp_6:1|temp_7:1|temp_8:1|none:1|temp_9:4|temp_10:4|temp_11:4|temp_12:4|temp_13:1|none:3|temp_14:4|none:4
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
                    #      alloc i32 temp_0_22 
                    #      alloc i32 ch_22 
                    #      alloc i32 x_22 
                    #      alloc i32 f_22 
                    #      alloc i1 temp_1_25 
                    #      alloc i1 temp_2_25 
                    #      alloc i1 temp_3_25 
                    #      alloc i1 temp_4_28 
                    #      alloc i32 temp_5_27 
                    #      alloc i1 temp_6_32 
                    #      alloc i1 temp_7_32 
                    #      alloc i1 temp_8_32 
                    #      alloc i32 temp_9_34 
                    #      alloc i32 temp_10_34 
                    #      alloc i32 temp_11_34 
                    #      alloc i32 temp_12_34 
                    #      alloc i1 temp_13_416 
                    #      alloc i32 temp_14_37 
                    #      label L11_0: 
.L11_0:
                    #      new_var temp_0_22:i32 
                    #      temp_0_22 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
                    #      ch_22 = i32 temp_0_22 
    mv      a1, a0
                    #      x_22 = i32 0_0 
    li      a2, 0
                    #      f_22 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_26 
    j       .while.head_26
                    #      label while.head_26: 
.while.head_26:
                    #      new_var temp_1_25:i1 
                    #      temp_1_25 = icmp i32 Sgt 57_0, ch_22 
    li      a4, 57
    slt     a5,a1,a4
                    #      new_var temp_2_25:i1 
                    #      temp_2_25 = icmp i32 Slt ch_22, 48_0 
    li      a6, 48
    slt     a7,a1,a6
                    #      new_var temp_3_25:i1 
                    #      temp_3_25 = Or i1 temp_2_25, temp_1_25 
                    #      br i1 temp_3_25, label while.body_26, label while.exit_26 
    bnez    s1, .while.body_26
    j       .while.exit_26
                    #      label while.body_26: 
.while.body_26:
                    #      new_var temp_4_28:i1 
                    #      temp_4_28 = icmp i32 Eq ch_22, 45_0 
    li      a4, 45
    xor     a6,a1,a4
    seqz    a6, a6
                    #      br i1 temp_4_28, label branch_true_29, label branch_false_29 
    bnez    a6, .branch_true_29
    j       .branch_false_29
                    #      label branch_true_29: 
.branch_true_29:
                    #      f_22 = i32 1_0 
                    #      jump label: branch_false_29 
    j       .branch_false_29
                    #      label branch_false_29: 
.branch_false_29:
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_5_27:i32 
                    #      temp_5_27 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sb      s1,37(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
    sw      a0,32(sp)
                    #      ch_22 = i32 temp_5_27 
    mv      a1, a0
                    #      jump label: while.head_26 
    sb      a7,38(sp)
    sb      a5,39(sp)
    sw      a0,32(sp)
    lw      a0,52(sp)
    sb      a6,36(sp)
    j       .while.head_26
                    #      label while.head_33: 
.while.head_33:
                    #      new_var temp_6_32:i1 
                    #      temp_6_32 = icmp i32 Sle 57_0, ch_22 
    li      a4, 57
    slt     a6,a1,a4
    xori    a6,a6,1
                    #      new_var temp_7_32:i1 
                    #      temp_7_32 = icmp i32 Sge ch_22, 48_0 
    li      s2, 48
    slt     s3,a1,s2
    xori    s3,s3,1
                    #      new_var temp_8_32:i1 
                    #      temp_8_32 = And i1 temp_7_32, temp_6_32 
    and     s4,s3,a6
                    #      br i1 temp_8_32, label while.body_33, label while.exit_33 
    bnez    s4, .while.body_33
    j       .while.exit_33
                    #      label while.body_33: 
.while.body_33:
                    #      new_var temp_9_34:i32 
                    #      temp_9_34 = Sub i32 ch_22, 48_0 
    li      a4, 48
    sub     s2,a1,a4
                    #      new_var temp_10_34:i32 
                    #      temp_10_34 = Mul i32 x_22, 10_0 
    li      s5, 10
    mul     s6,a2,s5
                    #      new_var temp_11_34:i32 
                    #      temp_11_34 = Add i32 temp_10_34, temp_9_34 
    add     s7,s6,s2
                    #      x_22 = i32 temp_11_34 
    mv      a2, s7
                    #      new_var temp_12_34:i32 
                    #      temp_12_34 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sb      s1,37(sp)
    sw      s2,24(sp)
    sb      s3,30(sp)
    sb      s4,29(sp)
    sw      s6,20(sp)
    sw      s7,16(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
    sw      a0,12(sp)
                    #      ch_22 = i32 temp_12_34 
    mv      a1, a0
                    #      jump label: while.head_33 
    lb      s1,37(sp)
    sw      a0,12(sp)
    lw      a0,52(sp)
    sb      a6,31(sp)
    j       .while.head_33
                    #      label while.exit_33: 
.while.exit_33:
                    #      new_var temp_13_416:i1 
                    #      temp_13_416 = icmp i32 Ne f_22, 0_0 
    li      a4, 0
    xor     s2,a3,a4
    snez    s2, s2
                    #      br i1 temp_13_416, label branch_true_38, label branch_false_38 
    bnez    s2, .branch_true_38
    j       .branch_false_38
                    #      label branch_true_38: 
.branch_true_38:
                    #      new_var temp_14_37:i32 
                    #      temp_14_37 = Sub i32 0_0, x_22 
    li      a4, 0
    sub     s5,a4,a2
                    #      ret temp_14_37 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      s5,4(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      label branch_false_38: 
.branch_false_38:
                    #      ret x_22 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a2,44(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      label L13_0: 
.L13_0:
                    #      Define add_edge_0 [from_41, To_41] -> add_edge_ret_0 
    .globl add_edge
    .type add_edge,@function
add_edge:
                    #mem layout:|ra_add_edge:8|s0_add_edge:8|from:4|To:4|temp_15:4|none:4|temp_16:8|temp_17:4|none:4|temp_18:8|temp_19:4020|none:4|temp_20:8|temp_21:4|none:4|temp_22:8|temp_23:4|temp_24:4|temp_25:4|temp_26:4|temp_27:8|temp_28:4|none:4|temp_29:8|temp_30:4020|none:4|temp_31:8|temp_32:4|none:4|temp_33:8|temp_34:4|temp_35:4|temp_36:4|none:4
    li      a2, -8208
    li      a2, -8208
    add     sp,a2,sp
    li      a3, 8200
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 8192
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 8208
    li      a5, 8208
    add     s0,a5,sp
                    #      alloc i32 temp_15_43 
                    #      alloc ptr->i32 temp_16_43 
                    #      alloc i32 temp_17_43 
                    #      alloc ptr->i32 temp_18_43 
                    #      alloc Array:i32:[Some(1005_0)] temp_19_43 
                    #      alloc ptr->i32 temp_20_43 
                    #      alloc i32 temp_21_43 
                    #      alloc ptr->i32 temp_22_43 
                    #      alloc i32 temp_23_43 
                    #      alloc i32 temp_24_43 
                    #      alloc i32 temp_25_43 
                    #      alloc i32 temp_26_43 
                    #      alloc ptr->i32 temp_27_43 
                    #      alloc i32 temp_28_43 
                    #      alloc ptr->i32 temp_29_43 
                    #      alloc Array:i32:[Some(1005_0)] temp_30_43 
                    #      alloc ptr->i32 temp_31_43 
                    #      alloc i32 temp_32_43 
                    #      alloc ptr->i32 temp_33_43 
                    #      alloc i32 temp_34_43 
                    #      alloc i32 temp_35_43 
                    #      alloc i32 temp_36_43 
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_15_43:i32 
                    #      temp_15_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a6, cnt
                    #occupy reg a6 with *cnt_0
    lw      a7,0(a6)
                    #      new_var temp_16_43:ptr->i32 
                    #      temp_16_43 = getelementptr to_0:Array:i32:[Some(5005_0)] [Some(temp_15_43)] 
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a7
                    #occupy reg s3 with to_0
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,s1
                    #      store To_41:i32 temp_16_43:ptr->i32 
    sd      a1,0(s1)
                    #      mu to_0:123 
                    #      to_0 = chi to_0:123 
                    #      new_var temp_17_43:i32 
                    #      temp_17_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      s4, cnt
                    #occupy reg s4 with *cnt_0
    lw      s5,0(s4)
                    #      new_var temp_18_43:ptr->i32 
                    #      temp_18_43 = getelementptr next_0:Array:i32:[Some(5005_0)] [Some(temp_17_43)] 
    li      s6, 0
                    #found literal reg Some(s2) already exist with 1_0
    mul     s7,s2,s5
                    #occupy reg s7 with next_0
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,s6
                    #      new_var temp_19_43:Array:i32:[Some(1005_0)] 
                    #      temp_19_43 = load *head_0:ptr->i32 
                    #   load label head as ptr to reg
    la      s8, head
                    #occupy reg s8 with *head_0
    lw      s9,0(s8)
                    #      new_var temp_20_43:ptr->i32 
                    #      new_var temp_21_43:i32 
                    #      temp_20_43 = getelementptr temp_19_43:Array:i32:[Some(1005_0)] [Some(from_41)] 
    li      s10, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s10,s10,s9
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_21_43 = load temp_20_43:ptr->i32 
    lw      s11,0(s10)
                    #      store temp_21_43:i32 temp_18_43:ptr->i32 
    sd      s11,0(s6)
                    #      mu next_0:141 
                    #      next_0 = chi next_0:141 
                    #      new_var temp_22_43:ptr->i32 
                    #      temp_22_43 = getelementptr head_0:Array:i32:[Some(1005_0)] [Some(from_41)] 
    li      a2, 0
                    #found literal reg Some(s2) already exist with 1_0
    mul     a3,s2,a0
                    #occupy reg a3 with head_0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,a2
                    #      new_var temp_23_43:i32 
                    #      temp_23_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a3, cnt
                    #occupy reg a3 with *cnt_0
    lw      a4,0(a3)
                    #      store temp_23_43:i32 temp_22_43:ptr->i32 
    sd      a4,0(a2)
                    #      mu head_0:150 
                    #      head_0 = chi head_0:150 
                    #      new_var temp_24_43:i32 
                    #      temp_24_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a3, cnt
                    #occupy reg a3 with *cnt_0
    lw      a5,0(a3)
                    #      new_var temp_25_43:i32 
                    #      temp_25_43 = Add i32 temp_24_43, 1_0 
                    #found literal reg Some(s2) already exist with 1_0
    add     a3,a5,s2
                    #      store temp_25_43:i32 *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a6, cnt
                    #occupy reg a6 with *cnt_0
    sd      a3,0(a6)
                    #      new_var temp_26_43:i32 
                    #      temp_26_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a6, cnt
                    #occupy reg a6 with *cnt_0
    lw      s2,0(a6)
                    #      new_var temp_27_43:ptr->i32 
                    #      temp_27_43 = getelementptr to_0:Array:i32:[Some(5005_0)] [Some(temp_26_43)] 
    li      a6, 0
    li      s3, 1
    mul     s4,s3,s2
                    #occupy reg s4 with to_0
    add     a6,a6,s4
    slli a6,a6,2
    add     a6,a6,a6
                    #      store from_41:i32 temp_27_43:ptr->i32 
    sd      a0,0(a6)
                    #      mu to_0:166 
                    #      to_0 = chi to_0:166 
                    #      new_var temp_28_43:i32 
                    #      temp_28_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      s3, cnt
                    #occupy reg s3 with *cnt_0
    lw      s4,0(s3)
                    #      new_var temp_29_43:ptr->i32 
                    #      temp_29_43 = getelementptr next_0:Array:i32:[Some(5005_0)] [Some(temp_28_43)] 
    li      s3, 0
    li      s7, 1
    mul     s8,s7,s4
                    #occupy reg s8 with next_0
    add     s3,s3,s8
    slli s3,s3,2
    add     s3,s3,s3
                    #      new_var temp_30_43:Array:i32:[Some(1005_0)] 
                    #      temp_30_43 = load *head_0:ptr->i32 
                    #   load label head as ptr to reg
    la      s7, head
                    #occupy reg s7 with *head_0
    lw      s8,0(s7)
                    #      new_var temp_31_43:ptr->i32 
                    #      new_var temp_32_43:i32 
                    #      temp_31_43 = getelementptr temp_30_43:Array:i32:[Some(1005_0)] [Some(To_41)] 
    li      s7, 0
    li      a0, 8188
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_32_43 = load temp_31_43:ptr->i32 
    lw      a0,0(s7)
                    #      store temp_32_43:i32 temp_29_43:ptr->i32 
    sd      a0,0(s3)
                    #      mu next_0:184 
                    #      next_0 = chi next_0:184 
                    #      new_var temp_33_43:ptr->i32 
                    #      temp_33_43 = getelementptr head_0:Array:i32:[Some(1005_0)] [Some(To_41)] 
    sw      a0,28(sp)
    li      a0, 0
    li      a1, 8184
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 4104
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a3, 4092
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
                    #occupy reg a3 with head_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_34_43:i32 
                    #      temp_34_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a1, cnt
                    #occupy reg a1 with *cnt_0
    lw      a3,0(a1)
                    #      store temp_34_43:i32 temp_33_43:ptr->i32 
    sd      a3,0(a0)
                    #      mu head_0:193 
                    #      head_0 = chi head_0:193 
                    #      new_var temp_35_43:i32 
                    #      temp_35_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a1, cnt
                    #occupy reg a1 with *cnt_0
    sd      a0,16(sp)
    lw      a0,0(a1)
                    #      new_var temp_36_43:i32 
                    #      temp_36_43 = Add i32 temp_35_43, 1_0 
    li      a1, 1
    li      a2, 8184
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a0,a1
                    #      store temp_36_43:i32 *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a1, cnt
                    #occupy reg a1 with *cnt_0
    sd      a2,0(a1)
                    #      Define init_0 [] -> init_ret_0 
    .globl init
    .type init,@function
init:
                    #mem layout:|ra_init:8|s0_init:8|i:4|temp_37:1|none:3|temp_38:8|temp_39:4|none:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 i_53 
                    #      alloc i1 temp_37_55 
                    #      alloc ptr->i32 temp_38_57 
                    #      alloc i32 temp_39_57 
                    #      label L9_0: 
.L9_0:
                    #      i_53 = i32 0_0 
    li      a0, 0
                    #      jump label: while.head_56 
    j       .while.head_56
                    #      label while.head_56: 
.while.head_56:
                    #      new_var temp_37_55:i1 
                    #      temp_37_55 = icmp i32 Slt i_53, 1005_0 
    li      a1, 1005
    slt     a2,a0,a1
                    #      br i1 temp_37_55, label while.body_56, label while.exit_56 
    bnez    a2, .while.body_56
    j       .while.exit_56
                    #      label while.body_56: 
.while.body_56:
                    #      new_var temp_38_57:ptr->i32 
                    #      temp_38_57 = getelementptr head_0:Array:i32:[Some(1005_0)] [Some(i_53)] 
    li      a1, 0
    li      a3, 1
    mul     a4,a3,a0
                    #occupy reg a4 with head_0
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,a1
                    #      store -1_0:i32 temp_38_57:ptr->i32 
    li      a5, -1
    sd      a5,0(a1)
                    #      mu head_0:216 
                    #      head_0 = chi head_0:216 
                    #      new_var temp_39_57:i32 
                    #      temp_39_57 = Add i32 i_53, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     a6,a0,a3
                    #      i_53 = i32 temp_39_57 
    mv      a0, a6
                    #      jump label: while.head_56 
    sb      a2,19(sp)
    sd      a1,8(sp)
    sw      a6,4(sp)
    j       .while.head_56
                    #      label while.exit_56: 
.while.exit_56:
                    #      Define inqueue_0 [x_60] -> inqueue_ret_0 
    .globl inqueue
    .type inqueue,@function
inqueue:
                    #mem layout:|ra_inqueue:8|s0_inqueue:8|x:4|none:4|temp_40:8|temp_41:4|temp_42:4|temp_43:4|none:4|temp_44:8
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      alloc ptr->i32 temp_40_62 
                    #      alloc i32 temp_41_62 
                    #      alloc i32 temp_42_62 
                    #      alloc i32 temp_43_62 
                    #      alloc ptr->i32 temp_44_62 
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_40_62:ptr->i32 
                    #      temp_40_62 = getelementptr inq_0:Array:i32:[Some(1005_0)] [Some(x_60)] 
    li      a1, 0
    li      a2, 1
    mul     a3,a2,a0
                    #occupy reg a3 with inq_0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,a1
                    #      store 1_0:i32 temp_40_62:ptr->i32 
                    #found literal reg Some(a2) already exist with 1_0
    sd      a2,0(a1)
                    #      mu inq_0:226 
                    #      inq_0 = chi inq_0:226 
                    #      new_var temp_41_62:i32 
                    #      temp_41_62 = load *tail_0:ptr->i32 
                    #   load label tail as ptr to reg
    la      a4, tail
                    #occupy reg a4 with *tail_0
    lw      a5,0(a4)
                    #      new_var temp_42_62:i32 
                    #      temp_42_62 = Add i32 temp_41_62, 1_0 
                    #found literal reg Some(a2) already exist with 1_0
    add     a6,a5,a2
                    #      store temp_42_62:i32 *tail_0:ptr->i32 
                    #   load label tail as ptr to reg
    la      a7, tail
                    #occupy reg a7 with *tail_0
    sd      a6,0(a7)
                    #      new_var temp_43_62:i32 
                    #      temp_43_62 = load *tail_0:ptr->i32 
                    #   load label tail as ptr to reg
    la      s1, tail
                    #occupy reg s1 with *tail_0
    lw      s2,0(s1)
                    #      new_var temp_44_62:ptr->i32 
                    #      temp_44_62 = getelementptr que_0:Array:i32:[Some(1005_0)] [Some(temp_43_62)] 
    li      s3, 0
                    #found literal reg Some(a2) already exist with 1_0
    mul     s4,a2,s2
                    #occupy reg s4 with que_0
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,s3
                    #      store x_60:i32 temp_44_62:ptr->i32 
    sd      a0,0(s3)
                    #      mu que_0:242 
                    #      que_0 = chi que_0:242 
                    #      Define pop_queue_0 [] -> pop_queue_ret_0 
    .globl pop_queue
    .type pop_queue,@function
pop_queue:
                    #mem layout:|ra_pop_queue:8|s0_pop_queue:8|temp_45:4|temp_46:4|temp_47:4|temp_48:4020|temp_49:8|temp_50:4|res:4|temp_51:4|temp_52:4020|temp_53:8|temp_54:4|none:4
    li      a0, -8104
    li      a0, -8104
    add     sp,a0,sp
    li      a1, 8096
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 8088
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 8104
    li      a3, 8104
    add     s0,a3,sp
                    #      alloc i32 temp_45_67 
                    #      alloc i32 temp_46_67 
                    #      alloc i32 temp_47_67 
                    #      alloc Array:i32:[Some(1005_0)] temp_48_67 
                    #      alloc ptr->i32 temp_49_67 
                    #      alloc i32 temp_50_67 
                    #      alloc i32 res_67 
                    #      alloc i32 temp_51_67 
                    #      alloc Array:i32:[Some(1005_0)] temp_52_67 
                    #      alloc ptr->i32 temp_53_67 
                    #      alloc i32 temp_54_67 
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_45_67:i32 
                    #      temp_45_67 = load *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      a4, h
                    #occupy reg a4 with *h_0
    lw      a5,0(a4)
                    #      new_var temp_46_67:i32 
                    #      temp_46_67 = Add i32 temp_45_67, 1_0 
    li      a6, 1
    add     a7,a5,a6
                    #      store temp_46_67:i32 *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      s1, h
                    #occupy reg s1 with *h_0
    sd      a7,0(s1)
                    #      new_var temp_47_67:i32 
                    #      temp_47_67 = load *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      s2, h
                    #occupy reg s2 with *h_0
    lw      s3,0(s2)
                    #      new_var temp_48_67:Array:i32:[Some(1005_0)] 
                    #      temp_48_67 = load *que_0:ptr->i32 
                    #   load label que as ptr to reg
    la      s4, que
                    #occupy reg s4 with *que_0
    lw      s5,0(s4)
                    #      new_var temp_49_67:ptr->i32 
                    #      new_var temp_50_67:i32 
                    #      temp_49_67 = getelementptr temp_48_67:Array:i32:[Some(1005_0)] [Some(temp_47_67)] 
    li      s6, 0
                    #found literal reg Some(a6) already exist with 1_0
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_50_67 = load temp_49_67:ptr->i32 
    lw      s7,0(s6)
                    #      res_67 = i32 temp_50_67 
    mv      s8, s7
                    #      new_var temp_51_67:i32 
                    #      temp_51_67 = load *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      s9, h
                    #occupy reg s9 with *h_0
    lw      s10,0(s9)
                    #      new_var temp_52_67:Array:i32:[Some(1005_0)] 
                    #      temp_52_67 = load *que_0:ptr->i32 
                    #   load label que as ptr to reg
    la      s11, que
                    #occupy reg s11 with *que_0
    lw      a0,0(s11)
                    #      new_var temp_53_67:ptr->i32 
                    #      new_var temp_54_67:i32 
                    #      temp_53_67 = getelementptr temp_52_67:Array:i32:[Some(1005_0)] [Some(temp_51_67)] 
    li      a1, 0
                    #found literal reg Some(a6) already exist with 1_0
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_54_67 = load temp_53_67:ptr->i32 
    lw      a2,0(a1)
                    #      ret temp_54_67 
    li      a3, 8096
    add     a3,sp,a3
    ld      ra,0(a3)
    li      a4, 8088
    add     a4,sp,a4
    ld      s0,0(a4)
    sw      a2,4(sp)
    li      a0, 4032
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 8104
    li      a2, 8104
    add     sp,a2,sp
    ret
                    #      Define same_0 [s_71, t_71] -> same_ret_0 
    .globl same
    .type same,@function
same:
                    #mem layout:|ra_same:8|s0_same:8|s:4|t:4|res:4|temp_55:4|temp_56:4|temp_57:1|none:3|temp_58:4|x:4|temp_59:1|none:3|temp_60:4020|temp_61:8|temp_62:4|i:4|temp_63:1|none:3|temp_64:20020|temp_65:8|temp_66:4|temp_67:4020|temp_68:8|temp_69:4|temp_70:1|temp_71:1|none:2|temp_72:20020|none:4|temp_73:8|temp_74:4|temp_75:20020|temp_76:8|temp_77:4|i:4|temp_78:4|temp_79:1|none:3|temp_80:4020|none:4|temp_81:8|temp_82:4|none:4|temp_83:8|temp_84:4|none:4
    li      a2, -72296
    li      a2, -72296
    add     sp,a2,sp
    li      a3, 72288
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 72280
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 72296
    li      a5, 72296
    add     s0,a5,sp
                    #      alloc i32 res_73 
                    #      alloc i32 temp_55_78 
                    #      alloc i32 temp_56_78 
                    #      alloc i1 temp_57_78 
                    #      alloc i32 temp_58_80 
                    #      alloc i32 x_80 
                    #      alloc i1 temp_59_82 
                    #      alloc Array:i32:[Some(1005_0)] temp_60_80 
                    #      alloc ptr->i32 temp_61_80 
                    #      alloc i32 temp_62_80 
                    #      alloc i32 i_80 
                    #      alloc i1 temp_63_86 
                    #      alloc Array:i32:[Some(5005_0)] temp_64_89 
                    #      alloc ptr->i32 temp_65_89 
                    #      alloc i32 temp_66_89 
                    #      alloc Array:i32:[Some(1005_0)] temp_67_89 
                    #      alloc ptr->i32 temp_68_89 
                    #      alloc i32 temp_69_89 
                    #      alloc i1 temp_70_89 
                    #      alloc i1 temp_71_89 
                    #      alloc Array:i32:[Some(5005_0)] temp_72_89 
                    #      alloc ptr->i32 temp_73_89 
                    #      alloc i32 temp_74_89 
                    #      alloc Array:i32:[Some(5005_0)] temp_75_88 
                    #      alloc ptr->i32 temp_76_88 
                    #      alloc i32 temp_77_88 
                    #      alloc i32 i_73 
                    #      alloc i32 temp_78_94 
                    #      alloc i1 temp_79_94 
                    #      alloc Array:i32:[Some(1005_0)] temp_80_96 
                    #      alloc ptr->i32 temp_81_96 
                    #      alloc i32 temp_82_96 
                    #      alloc ptr->i32 temp_83_96 
                    #      alloc i32 temp_84_96 
                    #      label L3_0: 
.L3_0:
                    #      store 0_0:i32 *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      a6, h
                    #occupy reg a6 with *h_0
    li      a7, 0
    sd      a7,0(a6)
                    #      store 0_0:i32 *tail_0:ptr->i32 
                    #   load label tail as ptr to reg
    la      s1, tail
                    #occupy reg s1 with *tail_0
                    #found literal reg Some(a7) already exist with 0_0
    sd      a7,0(s1)
                    #       Call void inqueue_0(s_71) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 72276
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s1, 72276
    add     s1,sp,s1
    lw      a0,0(s1)
                    #arg load ended
    call    inqueue
                    #      res_73 = i32 0_0 
    li      a0, 0
                    #      jump label: while.exit_87 
    j       .while.exit_87
                    #      label while.exit_87: 
.while.exit_87:
                    #      new_var temp_55_78:i32 
                    #      temp_55_78 = load *tail_0:ptr->i32 
                    #   load label tail as ptr to reg
    la      a2, tail
                    #occupy reg a2 with *tail_0
    lw      a3,0(a2)
                    #      new_var temp_56_78:i32 
                    #      temp_56_78 = load *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      a4, h
                    #occupy reg a4 with *h_0
    lw      a5,0(a4)
                    #      new_var temp_57_78:i1 
                    #      temp_57_78 = icmp i32 Slt temp_56_78, temp_55_78 
    slt     a6,a5,a3
                    #      br i1 temp_57_78, label while.body_79, label while.exit_79 
    bnez    a6, .while.body_79
    j       .while.exit_79
                    #      label while.body_79: 
.while.body_79:
                    #      new_var temp_58_80:i32 
                    #      temp_58_80 =  Call i32 pop_queue_0() 
                    #saved register dumping to mem
    li      a2, 72276
    add     a2,sp,a2
    sw      s1,0(a2)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    pop_queue
    li      a0, 72268
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a4, 72252
    add     a4,sp,a4
    sw      a0,0(a4)
                    #      x_80 = i32 temp_58_80 
    mv      a7, a0
                    #      jump label: L4_0 
    j       .L4_0
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_59_82:i1 
                    #      temp_59_82 = icmp i32 Eq x_80, t_71 
    xor     a2,a7,a1
    seqz    a2, a2
                    #      br i1 temp_59_82, label branch_true_83, label branch_false_83 
    bnez    a2, .branch_true_83
    j       .branch_false_83
                    #      label branch_true_83: 
.branch_true_83:
                    #      res_73 = i32 1_0 
    li      a4, 1
                    #      jump label: branch_false_83 
    li      a4, 72268
    add     a4,sp,a4
    sw      a4,0(a4)
    j       .branch_false_83
                    #      label branch_false_83: 
.branch_false_83:
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_60_80:Array:i32:[Some(1005_0)] 
                    #      temp_60_80 = load *head_0:ptr->i32 
                    #   load label head as ptr to reg
    la      a4, head
                    #occupy reg a4 with *head_0
    lw      s1,0(a4)
                    #      new_var temp_61_80:ptr->i32 
                    #      new_var temp_62_80:i32 
                    #      temp_61_80 = getelementptr temp_60_80:Array:i32:[Some(1005_0)] [Some(x_80)] 
    li      s2, 0
    li      s3, 1
    add     s2,s2,s1
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_62_80 = load temp_61_80:ptr->i32 
    lw      s4,0(s2)
                    #      i_80 = i32 temp_62_80 
    mv      s5, s4
                    #      jump label: while.head_87 
    j       .while.head_87
                    #      label while.head_87: 
.while.head_87:
                    #      new_var temp_63_86:i1 
                    #      temp_63_86 = icmp i32 Ne i_80, -1_0 
    li      a4, -1
    xor     s3,s5,a4
    snez    s3, s3
                    #      br i1 temp_63_86, label while.body_87, label while.exit_87 
    bnez    s3, .while.body_87
    li      a4, 68207
    add     a4,sp,a4
    sb      s3,0(a4)
    li      s5, 68208
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s1, 72240
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s6, 72276
    add     s6,sp,s6
    lw      s1,0(s6)
    li      a3, 72264
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s6, 72276
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a7, 72248
    add     a7,sp,a7
    sw      a7,0(a7)
    li      s4, 68212
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s2, 68216
    add     s2,sp,s2
    sd      s2,0(s2)
    li      a2, 72247
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a5, 72260
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a0, 72252
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s8, 72268
    add     s8,sp,s8
    lw      a0,0(s8)
    li      s8, 72268
    add     s8,sp,s8
    sw      s8,0(s8)
    li      a6, 72259
    add     a6,sp,a6
    sb      a6,0(a6)
    j       .while.exit_87
                    #      label while.body_87: 
.while.body_87:
                    #      new_var temp_64_89:Array:i32:[Some(5005_0)] 
                    #      temp_64_89 = load *to_0:ptr->i32 
                    #   load label to as ptr to reg
    la      a4, to
                    #occupy reg a4 with *to_0
    lw      s6,0(a4)
                    #      new_var temp_65_89:ptr->i32 
                    #      new_var temp_66_89:i32 
                    #      temp_65_89 = getelementptr temp_64_89:Array:i32:[Some(5005_0)] [Some(i_80)] 
    li      s7, 0
    li      s8, 1
    add     s7,s7,s6
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_66_89 = load temp_65_89:ptr->i32 
    lw      s9,0(s7)
                    #      new_var temp_67_89:Array:i32:[Some(1005_0)] 
                    #      temp_67_89 = load *inq_0:ptr->i32 
                    #   load label inq as ptr to reg
    la      s10, inq
                    #occupy reg s10 with *inq_0
    lw      s11,0(s10)
                    #      new_var temp_68_89:ptr->i32 
                    #      new_var temp_69_89:i32 
                    #      temp_68_89 = getelementptr temp_67_89:Array:i32:[Some(1005_0)] [Some(temp_66_89)] 
    li      a4, 0
                    #found literal reg Some(s8) already exist with 1_0
    add     a4,a4,s11
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_69_89 = load temp_68_89:ptr->i32 
    lw      s8,0(a4)
                    #      new_var temp_70_89:i1 
                    #      temp_70_89 = icmp i1 Ne temp_69_89, 0_0 
    li      s10, 0
    li      a0, 72252
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s8,s10
    snez    a0, a0
                    #      new_var temp_71_89:i1 
                    #      temp_71_89 = xor i1 temp_70_89, true 
    seqz    s10, a0
                    #      br i1 temp_71_89, label branch_true_90, label branch_false_90 
    bnez    s10, .branch_true_90
    j       .branch_false_90
                    #      label branch_true_90: 
.branch_true_90:
                    #      new_var temp_72_89:Array:i32:[Some(5005_0)] 
                    #      temp_72_89 = load *to_0:ptr->i32 
    li      a0, 44139
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label to as ptr to reg
    la      a0, to
                    #occupy reg a0 with *to_0
    li      a1, 72272
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_73_89:ptr->i32 
                    #      new_var temp_74_89:i32 
                    #      temp_73_89 = getelementptr temp_72_89:Array:i32:[Some(5005_0)] [Some(i_80)] 
    li      a0, 0
    li      a1, 44132
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 72247
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_74_89 = load temp_73_89:ptr->i32 
    lw      a1,0(a0)
                    #       Call void inqueue_0(temp_74_89) 
                    #saved register dumping to mem
    li      s1, 72240
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 68216
    add     s2,sp,s2
    sd      s2,0(s2)
    li      s3, 68207
    add     s3,sp,s3
    sb      s3,0(s3)
    li      s4, 68212
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 68208
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s6, 68200
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s7, 48176
    add     s7,sp,s7
    sd      s7,0(s7)
    li      s8, 44140
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 48172
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s10, 44138
    add     s10,sp,s10
    sb      s10,0(s10)
    li      s11, 48168
    add     s11,sp,s11
    sw      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 24104
    add     a0,sp,a0
    sd      a0,0(a0)
    mv      a0, a1
                    #arg load ended
    call    inqueue
                    #      jump label: branch_false_90 
    li      a0, 68207
    add     a0,sp,a0
    lb      s3,0(a0)
    li      s1, 48168
    add     s1,sp,s1
    lw      s11,0(s1)
    li      s2, 68208
    add     s2,sp,s2
    lw      s5,0(s2)
    li      s4, 48176
    add     s4,sp,s4
    ld      s7,0(s4)
    li      a1, 24100
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s6, 72272
    add     s6,sp,s6
    lw      a1,0(s6)
    li      s1, 48168
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s8, 72240
    add     s8,sp,s8
    lw      s1,0(s8)
    li      s6, 72272
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s9, 68200
    add     s9,sp,s9
    lw      s6,0(s9)
    li      s4, 48176
    add     s4,sp,s4
    sd      s4,0(s4)
    li      s10, 68212
    add     s10,sp,s10
    lw      s4,0(s10)
    li      s2, 68208
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a0, 68207
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 68216
    add     a0,sp,a0
    ld      s2,0(a0)
    li      a2, 44132
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 68216
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 72247
    add     a0,sp,a0
    lb      a2,0(a0)
    li      s9, 68200
    add     s9,sp,s9
    sw      s9,0(s9)
    li      a0, 72247
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 48172
    add     a0,sp,a0
    lw      s9,0(a0)
    li      a0, 48172
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 72264
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 44139
    add     a3,sp,a3
    lb      a0,0(a3)
    li      s8, 72240
    add     s8,sp,s8
    sw      s8,0(s8)
    li      a3, 44139
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a3, 44140
    add     a3,sp,a3
    lw      s8,0(a3)
    li      s10, 68212
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a3, 44140
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 44138
    add     a3,sp,a3
    lb      s10,0(a3)
    j       .branch_false_90
                    #      label branch_false_90: 
.branch_false_90:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_75_88:Array:i32:[Some(5005_0)] 
                    #      temp_75_88 = load *next_0:ptr->i32 
    li      a0, 44139
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label next as ptr to reg
    la      a0, next
                    #occupy reg a0 with *next_0
    li      a1, 72272
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_76_88:ptr->i32 
                    #      new_var temp_77_88:i32 
                    #      temp_76_88 = getelementptr temp_75_88:Array:i32:[Some(5005_0)] [Some(i_80)] 
    li      a0, 0
    li      a1, 24096
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 72247
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_77_88 = load temp_76_88:ptr->i32 
    lw      a1,0(a0)
                    #      i_80 = i32 temp_77_88 
    mv      s5, a1
                    #      jump label: while.head_87 
    li      s3, 68207
    add     s3,sp,s3
    sb      s3,0(s3)
    li      s11, 48168
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s7, 48176
    add     s7,sp,s7
    sd      s7,0(s7)
    li      a1, 4068
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 4072
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 72272
    add     a0,sp,a0
    lw      a1,0(a0)
    li      s6, 68200
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a4, 44144
    add     a4,sp,a4
    sd      a4,0(a4)
    li      a2, 24096
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 72272
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 72247
    add     a0,sp,a0
    lb      a2,0(a0)
    li      s9, 48172
    add     s9,sp,s9
    sw      s9,0(s9)
    li      a0, 72247
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 72264
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 72252
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s8, 44140
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s10, 44138
    add     s10,sp,s10
    sb      s10,0(s10)
    j       .while.head_87
                    #      label while.exit_79: 
.while.exit_79:
                    #      i_73 = i32 0_0 
    li      a2, 0
                    #      jump label: while.head_95 
    j       .while.head_95
                    #      label while.head_95: 
.while.head_95:
                    #      new_var temp_78_94:i32 
                    #      temp_78_94 = load *tail_0:ptr->i32 
                    #   load label tail as ptr to reg
    la      a4, tail
                    #occupy reg a4 with *tail_0
    lw      a7,0(a4)
                    #      new_var temp_79_94:i1 
                    #      temp_79_94 = icmp i32 Sle i_73, temp_78_94 
    slt     s2,a7,a2
    xori    s2,s2,1
                    #      br i1 temp_79_94, label while.body_95, label while.exit_95 
    bnez    s2, .while.body_95
    j       .while.exit_95
                    #      label while.body_95: 
.while.body_95:
                    #      new_var temp_80_96:Array:i32:[Some(1005_0)] 
                    #      temp_80_96 = load *que_0:ptr->i32 
                    #   load label que as ptr to reg
    la      a4, que
                    #occupy reg a4 with *que_0
    lw      s3,0(a4)
                    #      new_var temp_81_96:ptr->i32 
                    #      new_var temp_82_96:i32 
                    #      temp_81_96 = getelementptr temp_80_96:Array:i32:[Some(1005_0)] [Some(i_73)] 
    li      s4, 0
    li      s5, 1
    add     s4,s4,s3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_82_96 = load temp_81_96:ptr->i32 
    lw      s6,0(s4)
                    #      new_var temp_83_96:ptr->i32 
                    #      temp_83_96 = getelementptr inq_0:Array:i32:[Some(1005_0)] [Some(temp_82_96)] 
    li      s7, 0
                    #found literal reg Some(s5) already exist with 1_0
    mul     s8,s5,s6
                    #occupy reg s8 with inq_0
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,s7
                    #      store 0_0:i32 temp_83_96:ptr->i32 
    li      s9, 0
    sd      s9,0(s7)
                    #      mu inq_0:402 
                    #      inq_0 = chi inq_0:402 
                    #      new_var temp_84_96:i32 
                    #      temp_84_96 = Add i32 i_73, 1_0 
                    #found literal reg Some(s5) already exist with 1_0
    add     s10,a2,s5
                    #      i_73 = i32 temp_84_96 
    mv      a2, s10
                    #      jump label: while.head_95 
    li      s3, 4052
    add     s3,sp,s3
    sw      s3,0(s3)
    sd      s7,8(sp)
    sw      s6,20(sp)
    li      a7, 4060
    add     a7,sp,a7
    sw      a7,0(a7)
    sd      s4,24(sp)
    li      s2, 4059
    add     s2,sp,s2
    sb      s2,0(s2)
    sw      s10,4(sp)
    j       .while.head_95
                    #      label while.exit_95: 
.while.exit_95:
                    #      ret res_73 
    li      a4, 72288
    add     a4,sp,a4
    ld      ra,0(a4)
    li      s3, 72280
    add     s3,sp,s3
    ld      s0,0(s3)
    li      a0, 72268
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s4, 72296
    li      s4, 72296
    add     sp,s4,sp
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_85:4|temp_86:4|temp_87:4|temp_88:1|none:3|temp_89:4|ch:4|temp_90:1|temp_91:1|temp_92:1|none:1|temp_93:4|temp_94:1|none:3|temp_95:4|x:4|temp_96:4|y:4|temp_97:4|temp_98:4|temp_99:4|temp_100:4|x:4|temp_101:4|y:4
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
                    #      alloc i32 temp_85_101 
                    #      alloc i32 temp_86_101 
                    #      alloc i32 temp_87_105 
                    #      alloc i1 temp_88_2579 
                    #      alloc i32 temp_89_107 
                    #      alloc i32 ch_107 
                    #      alloc i1 temp_90_109 
                    #      alloc i1 temp_91_109 
                    #      alloc i1 temp_92_109 
                    #      alloc i32 temp_93_111 
                    #      alloc i1 temp_94_113 
                    #      alloc i32 temp_95_115 
                    #      alloc i32 x_115 
                    #      alloc i32 temp_96_115 
                    #      alloc i32 y_115 
                    #      alloc i32 temp_97_115 
                    #      alloc i32 temp_98_107 
                    #      alloc i32 temp_99_107 
                    #      alloc i32 temp_100_119 
                    #      alloc i32 x_119 
                    #      alloc i32 temp_101_119 
                    #      alloc i32 y_119 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_85_101:i32 
                    #      temp_85_101 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,76(sp)
                    #      store temp_85_101:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    sd      a0,0(a1)
                    #      new_var temp_86_101:i32 
                    #      temp_86_101 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,76(sp)
    sw      a0,72(sp)
                    #      store temp_86_101:i32 *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a2, m
                    #occupy reg a2 with *m_0
    sd      a0,0(a2)
                    #       Call void init_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    init
                    #      jump label: while.head_106 
    j       .while.head_106
                    #      label while.head_106: 
.while.head_106:
                    #      new_var temp_87_105:i32 
                    #      temp_87_105 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a1, m
                    #occupy reg a1 with *m_0
    lw      a2,0(a1)
                    #      new_var temp_88_2579:i1 
                    #      temp_88_2579 = icmp i32 Ne temp_87_105, 0_0 
    li      a3, 0
    xor     a4,a2,a3
    snez    a4, a4
                    #      br i1 temp_88_2579, label while.body_106, label while.exit_106 
    bnez    a4, .while.body_106
    j       .while.exit_106
                    #      label while.body_106: 
.while.body_106:
                    #      new_var temp_89_107:i32 
                    #      temp_89_107 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,72(sp)
    sw      a0,60(sp)
                    #      ch_107 = i32 temp_89_107 
    mv      a1, a0
                    #      jump label: while.head_110 
    j       .while.head_110
                    #      label while.head_110: 
.while.head_110:
                    #      new_var temp_90_109:i1 
                    #      temp_90_109 = icmp i32 Ne 85_0, ch_107 
    li      a3, 85
    xor     a5,a3,a1
    snez    a5, a5
                    #      new_var temp_91_109:i1 
                    #      temp_91_109 = icmp i32 Ne ch_107, 81_0 
    li      a6, 81
    xor     a7,a1,a6
    snez    a7, a7
                    #      new_var temp_92_109:i1 
                    #      temp_92_109 = And i1 temp_91_109, temp_90_109 
    and     s1,a7,a5
                    #      br i1 temp_92_109, label while.body_110, label while.exit_110 
    bnez    s1, .while.body_110
    j       .while.exit_110
                    #      label while.body_110: 
.while.body_110:
                    #      new_var temp_93_111:i32 
                    #      temp_93_111 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sb      s1,53(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,60(sp)
    sw      a0,48(sp)
                    #      ch_107 = i32 temp_93_111 
    mv      a1, a0
                    #      jump label: while.head_110 
    sb      a5,55(sp)
    sb      a7,54(sp)
    sw      a0,48(sp)
    lw      a0,60(sp)
    j       .while.head_110
                    #      label while.exit_110: 
.while.exit_110:
                    #      new_var temp_94_113:i1 
                    #      temp_94_113 = icmp i32 Eq ch_107, 81_0 
    li      a3, 81
    xor     a6,a1,a3
    seqz    a6, a6
                    #      br i1 temp_94_113, label branch_true_114, label branch_false_114 
    bnez    a6, .branch_true_114
    j       .branch_false_114
                    #      label branch_true_114: 
.branch_true_114:
                    #      new_var temp_95_115:i32 
                    #      temp_95_115 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
    sb      s1,53(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,60(sp)
    sw      a0,40(sp)
                    #      x_115 = i32 temp_95_115 
    mv      a3, a0
                    #      new_var temp_96_115:i32 
                    #      temp_96_115 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,40(sp)
    sw      a0,32(sp)
                    #      y_115 = i32 temp_96_115 
    mv      s1, a0
                    #      new_var temp_97_115:i32 
                    #      temp_97_115 =  Call i32 same_0(x_115, y_115) 
                    #saved register dumping to mem
    sw      s1,28(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,32(sp)
    mv      a0, a3
    sw      a1,56(sp)
    lw      a1,28(sp)
                    #arg load ended
    call    same
    sw      a0,24(sp)
                    #       Call void putint_0(temp_97_115) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,24(sp)
    lw      a0,24(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      jump label: L1_0 
    j       .L1_0
                    #      label branch_false_114: 
.branch_false_114:
                    #      new_var temp_100_119:i32 
                    #      temp_100_119 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
    sb      s1,53(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,60(sp)
    sw      a0,12(sp)
                    #      x_119 = i32 temp_100_119 
    mv      a3, a0
                    #      new_var temp_101_119:i32 
                    #      temp_101_119 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,12(sp)
    sw      a0,4(sp)
                    #      y_119 = i32 temp_101_119 
    mv      s1, a0
                    #       Call void add_edge_0(x_119, y_119) 
                    #saved register dumping to mem
    sw      s1,0(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
    mv      a0, a3
    sw      a1,56(sp)
    lw      a1,0(sp)
                    #arg load ended
    call    add_edge
                    #      jump label: L1_0 
    sw      a3,8(sp)
    lw      a3,36(sp)
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_98_107:i32 
                    #      temp_98_107 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a0, m
                    #occupy reg a0 with *m_0
    lw      a1,0(a0)
                    #      new_var temp_99_107:i32 
                    #      temp_99_107 = Sub i32 temp_98_107, 1_0 
    li      s1, 1
    sub     s2,a1,s1
                    #      store temp_99_107:i32 *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      s3, m
                    #occupy reg s3 with *m_0
    sd      s2,0(s3)
                    #      jump label: while.head_106 
    sw      a1,20(sp)
    sw      a2,68(sp)
    sb      a5,55(sp)
    sw      a3,36(sp)
    sb      a7,54(sp)
    sb      a4,67(sp)
    lw      a0,72(sp)
    sw      s2,16(sp)
    sb      a6,47(sp)
    j       .while.head_106
                    #      label while.exit_106: 
.while.exit_106:
                    #      ret 0_0 
    ld      ra,88(sp)
    ld      s0,80(sp)
    sw      a0,72(sp)
    li      a0, 0
    addi    sp,sp,96
    ret
.section        .data
    .align 4
    .globl inq
                    #      global Array:i32:[Some(1005_0)] inq_0 
    .type inq,@object
inq:
    .zero 4020
    .align 4
    .globl tail
                    #      global i32 tail_0 
    .type tail,@object
tail:
    .word 0
    .align 4
    .globl h
                    #      global i32 h_0 
    .type h,@object
h:
    .word 0
    .align 4
    .globl que
                    #      global Array:i32:[Some(1005_0)] que_0 
    .type que,@object
que:
    .zero 4020
    .align 4
    .globl cnt
                    #      global i32 cnt_0 
    .type cnt,@object
cnt:
    .word 0
    .align 4
    .globl head
                    #      global Array:i32:[Some(1005_0)] head_0 
    .type head,@object
head:
    .zero 4020
    .align 4
    .globl next
                    #      global Array:i32:[Some(5005_0)] next_0 
    .type next,@object
next:
    .zero 20020
    .align 4
    .globl to
                    #      global Array:i32:[Some(5005_0)] to_0 
    .type to,@object
to:
    .zero 20020
    .align 4
    .globl maxm
                    #      global i32 maxm_0 
    .type maxm,@object
maxm:
    .word 5005
    .align 4
    .globl maxn
                    #      global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 1005
    .align 4
    .globl m
                    #      global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 0
