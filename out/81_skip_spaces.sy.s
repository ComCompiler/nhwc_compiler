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
                    #mem layout:|ra_main:8|s0_main:8|arr:400|i:4|sum:4|temp_0:4|temp_1:1|none:3|temp_2:8|temp_3:4|temp_4:4|temp_5:1|none:3|temp_6:4|temp_7:8|temp_8:4|temp_9:4|temp_10:4|none:4
    addi    sp,sp,-480
    sd      ra,472(sp)
    sd      s0,464(sp)
    addi    s0,sp,480
                    #      alloc Array:i32:[Some(100_0)] arr_17 
                    #      alloc i32 i_17 
                    #      alloc i32 sum_17 
                    #      alloc i32 temp_0_19 
                    #      alloc i1 temp_1_103 
                    #      alloc ptr->i32 temp_2_21 
                    #      alloc i32 temp_3_21 
                    #      alloc i32 temp_4_21 
                    #      alloc i1 temp_5_227 
                    #      alloc i32 temp_6_26 
                    #      alloc ptr->i32 temp_7_26 
                    #      alloc i32 temp_8_26 
                    #      alloc i32 temp_9_26 
                    #      alloc i32 temp_10_17 
                    #      label L0_0: 
.L0_0:
                    #      new_var arr_17:Array:i32:[Some(100_0)] 
                    #      i_17 = i32 0_0 
    li      a0, 0
                    #      sum_17 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_20 
    j       .while.head_20
                    #      label while.head_20: 
.while.head_20:
                    #      new_var temp_0_19:i32 
                    #      temp_0_19 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,60(sp)
    sw      a0,52(sp)
                    #      new_var temp_1_103:i1 
                    #      temp_1_103 = icmp i32 Ne temp_0_19, 0_0 
    li      a2, 0
    xor     a3,a0,a2
    snez    a3, a3
                    #      br i1 temp_1_103, label while.body_20, label while.exit_20 
    bnez    a3, .while.body_20
    j       .while.exit_20
                    #      label while.body_20: 
.while.body_20:
                    #      new_var temp_2_21:ptr->i32 
                    #      temp_2_21 = getelementptr arr_17:Array:i32:[Some(100_0)] [Some(i_17)] 
    li      a4, 0
    li      a5, 1
    mul     a7,a5,a6
    add     a4,a4,a7
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      new_var temp_3_21:i32 
                    #      temp_3_21 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,52(sp)
    sw      a0,36(sp)
                    #      store temp_3_21:i32 temp_2_21:ptr->i32 
    sd      a0,0(a4)
                    #      mu arr_17:39 
                    #      arr_17 = chi arr_17:39 
                    #      new_var temp_4_21:i32 
                    #      temp_4_21 = Add i32 i_17, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    add     s1,a6,a5
                    #      i_17 = i32 temp_4_21 
                    #      jump label: while.head_20 
    j       .while.head_20
                    #      label while.head_25: 
.while.head_25:
                    #      new_var temp_5_227:i1 
                    #      temp_5_227 = icmp i32 Ne i_17, 0_0 
                    #found literal reg Some(a2) already exist with 0_0
    xor     s2,a6,a2
    snez    s2, s2
                    #      br i1 temp_5_227, label while.body_25, label while.exit_25 
    bnez    s2, .while.body_25
    j       .while.exit_25
                    #      label while.body_25: 
.while.body_25:
                    #      new_var temp_6_26:i32 
                    #      temp_6_26 = Sub i32 i_17, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    sub     s3,a6,a5
                    #      i_17 = i32 temp_6_26 
                    #      new_var temp_7_26:ptr->i32 
                    #      new_var temp_8_26:i32 
                    #      temp_7_26 = getelementptr arr_17:Array:i32:[Some(100_0)] [Some(i_17)] 
    li      s4, 0
                    #found literal reg Some(a5) already exist with 1_0
    add     s4,s4,a7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_8_26 = load temp_7_26:ptr->i32 
    lw      s5,0(s4)
                    #      new_var temp_9_26:i32 
                    #      temp_9_26 = Add i32 sum_17, temp_8_26 
    add     s6,a1,s5
                    #      sum_17 = i32 temp_9_26 
                    #      jump label: while.head_25 
    j       .while.head_25
                    #      label while.exit_25: 
.while.exit_25:
                    #      new_var temp_10_17:i32 
                    #      temp_10_17 = Mod i32 sum_17, 79_0 
    li      s7, 79
    rem     s8,a1,s7
                    #      ret temp_10_17 
    ld      ra,472(sp)
    ld      s0,464(sp)
    sw      s8,4(sp)
    sw      a0,36(sp)
    addi    sp,sp,480
    ret
