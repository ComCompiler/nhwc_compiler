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
                    #      Define doubleWhile_0 [] -> doubleWhile_ret_0 
    .globl doubleWhile
    .type doubleWhile,@function
doubleWhile:
                    #mem layout:|ra_doubleWhile:8|s0_doubleWhile:8|i:4|j:4|temp_0:1|none:3|temp_1:4|temp_2:1|none:3|temp_3:4|temp_4:4|none:4
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      alloc i32 i_17 
                    #      alloc i32 j_17 
                    #      alloc i1 temp_0_22 
                    #      alloc i32 temp_1_24 
                    #      alloc i1 temp_2_26 
                    #      alloc i32 temp_3_28 
                    #      alloc i32 temp_4_24 
                    #      label L1_0: 
.L1_0:
                    #      new_var i_17:i32 
                    #      i_17 = i32 5_0 
    li      a0, 5
                    #      new_var j_17:i32 
                    #      j_17 = i32 7_0 
    li      a1, 7
                    #      jump label: while.head_23 
    j       .while.head_23
                    #      label while.head_23: 
.while.head_23:
                    #      new_var temp_0_22:i1 
                    #      temp_0_22 = icmp i32 Slt i_17, 100_0 
    li      a2, 100
    slt     a3,a0,a2
                    #      br i1 temp_0_22, label while.body_23, label while.exit_23 
    bnez    a3, .while.body_23
    j       .while.exit_23
                    #      label while.body_23: 
.while.body_23:
                    #      new_var temp_1_24:i32 
                    #      temp_1_24 = Add i32 i_17, 30_0 
    li      a4, 30
    add     a5,a0,a4
                    #      i_17 = i32 temp_1_24 
                    #      jump label: while.head_27 
    j       .while.head_27
                    #      label while.head_27: 
.while.head_27:
                    #      new_var temp_2_26:i1 
                    #      temp_2_26 = icmp i32 Slt j_17, 100_0 
                    #found literal reg Some(a2) already exist with 100_0
    slt     a6,a1,a2
                    #      br i1 temp_2_26, label while.body_27, label while.exit_27 
    bnez    a6, .while.body_27
    j       .while.exit_27
                    #      label while.body_27: 
.while.body_27:
                    #      new_var temp_3_28:i32 
                    #      temp_3_28 = Add i32 j_17, 6_0 
    li      a7, 6
    add     s1,a1,a7
                    #      j_17 = i32 temp_3_28 
                    #      jump label: while.head_27 
    j       .while.head_27
                    #      label while.exit_27: 
.while.exit_27:
                    #      new_var temp_4_24:i32 
                    #      temp_4_24 = Sub i32 j_17, 100_0 
                    #found literal reg Some(a2) already exist with 100_0
    sub     s2,a1,a2
                    #      j_17 = i32 temp_4_24 
                    #      jump label: while.head_23 
    j       .while.head_23
                    #      label while.exit_23: 
.while.exit_23:
                    #      ret j_17 
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a1,24(sp)
    sw      a0,28(sp)
    addi    sp,sp,48
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_5:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_5_33 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_5_33:i32 
                    #      temp_5_33 =  Call i32 doubleWhile_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    doubleWhile
    sw      a0,4(sp)
                    #      ret temp_5_33 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
