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
                    #      Define move_0 [x_16, y_16] -> move_ret_0 
    .globl move
    .type move,@function
move:
                    #mem layout:|ra_move:8|s0_move:8|x:4|y:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      label L3_0: 
.L3_0:
                    #       Call void putint_0(x_16) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
    lw      a0,4(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #       Call void putint_0(y_16) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a1
                    #arg load ended
    call    putint
                    #       Call void putch_0(44_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 44
                    #arg load ended
    call    putch
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #      Define hanoi_0 [n_24, one_24, two_24, three_24] -> hanoi_ret_0 
    .globl hanoi
    .type hanoi,@function
hanoi:
                    #mem layout:|ra_hanoi:8|s0_hanoi:8|n:4|one:4|two:4|three:4|temp_0:1|none:3|temp_1:4|temp_2:4|none:4
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      alloc i1 temp_0_27 
                    #      alloc i32 temp_1_30 
                    #      alloc i32 temp_2_30 
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_0_27:i1 
                    #      temp_0_27 = icmp i32 Eq n_24, 1_0 
    li      a4, 1
    xor     a5,a0,a4
    seqz    a5, a5
                    #      br i1 temp_0_27, label branch_true_28, label branch_false_28 
    bnez    a5, .branch_true_28
    j       .branch_false_28
                    #      label branch_true_28: 
.branch_true_28:
                    #       Call void move_0(one_24, three_24) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
    mv      a0, a1
    sw      a1,24(sp)
    mv      a1, a3
                    #arg load ended
    call    move
                    #      jump label: L2_0 
    j       .L2_0
                    #      label branch_false_28: 
.branch_false_28:
                    #      new_var temp_1_30:i32 
                    #      temp_1_30 = Sub i32 n_24, 1_0 
    li      a4, 1
    sub     a6,a0,a4
                    #       Call void hanoi_0(temp_1_30, one_24, three_24, two_24) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
    mv      a0, a6
    sw      a1,24(sp)
    lw      a1,24(sp)
    sw      a2,20(sp)
    mv      a2, a3
    sw      a3,16(sp)
    lw      a3,20(sp)
                    #arg load ended
    call    hanoi
                    #       Call void move_0(one_24, three_24) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,24(sp)
    lw      a1,16(sp)
                    #arg load ended
    call    move
                    #      new_var temp_2_30:i32 
                    #      temp_2_30 = Sub i32 n_24, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    sub     a1,a0,a4
                    #       Call void hanoi_0(temp_2_30, two_24, one_24, three_24) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
    mv      a0, a1
    sw      a1,4(sp)
    lw      a1,20(sp)
    lw      a2,24(sp)
    lw      a3,16(sp)
                    #arg load ended
    call    hanoi
                    #      jump label: L2_0 
    lw      a2,20(sp)
    lw      a3,16(sp)
    sw      a6,8(sp)
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_3:4|n:4|temp_4:1|none:3|temp_5:4|temp_6:4|none:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 temp_3_35 
                    #      alloc i32 n_35 
                    #      alloc i1 temp_4_37 
                    #      alloc i32 temp_5_39 
                    #      alloc i32 temp_6_39 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_3_35:i32 
                    #      temp_3_35 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,20(sp)
                    #      n_35 = i32 temp_3_35 
    mv      a1, a0
                    #      jump label: while.head_38 
    j       .while.head_38
                    #      label while.head_38: 
.while.head_38:
                    #      new_var temp_4_37:i1 
                    #      temp_4_37 = icmp i32 Sgt n_35, 0_0 
    li      a2, 0
    slt     a3,a2,a1
                    #      br i1 temp_4_37, label while.body_38, label while.exit_38 
    bnez    a3, .while.body_38
    j       .while.exit_38
                    #      label while.body_38: 
.while.body_38:
                    #      new_var temp_5_39:i32 
                    #      temp_5_39 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,20(sp)
    sw      a0,8(sp)
                    #       Call void hanoi_0(temp_5_39, 1_0, 2_0, 3_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,8(sp)
    lw      a0,8(sp)
    sw      a1,16(sp)
    li      a1, 1
    li      a2, 2
    sb      a3,15(sp)
    li      a3, 3
                    #arg load ended
    call    hanoi
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_6_39:i32 
                    #      temp_6_39 = Sub i32 n_35, 1_0 
    li      a1, 1
    sub     a2,a0,a1
                    #      n_35 = i32 temp_6_39 
    mv      a0, a2
                    #      jump label: while.head_38 
    mv      a1, a0
    sw      a0,16(sp)
    lw      a0,20(sp)
    sw      a2,4(sp)
    j       .while.head_38
                    #      label while.exit_38: 
.while.exit_38:
                    #      ret 0_0 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,20(sp)
    li      a0, 0
    addi    sp,sp,40
    ret
