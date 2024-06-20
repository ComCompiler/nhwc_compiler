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
                    #mem layout:|ra_main:8|s0_main:8|temp_5:20|none:4|temp_6:8|temp_7:4|none:4
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      alloc Array:i32:[Some(5_0)] temp_5_18 
                    #      alloc ptr->i32 temp_6_18 
                    #      alloc i32 temp_7_18 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_5_18:Array:i32:[Some(5_0)] 
                    #      temp_5_18 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a0, a
                    #occupy reg a0 with *a_0
    lw      a1,0(a0)
                    #      new_var temp_6_18:ptr->i32 
                    #      new_var temp_7_18:i32 
                    #      temp_6_18 = getelementptr temp_5_18:Array:i32:[Some(5_0)] [Some(4_0)] 
    li      a2, 0
    li      a3, 1
    li      a4, 4
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_7_18 = load temp_6_18:ptr->i32 
    lw      a5,0(a2)
                    #      ret temp_7_18 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a5,4(sp)
    addi    sp,sp,56
    ret
.section        .data
    .align 4
    .globl a
                    #      global Array:i32:[Some(5_0)] a_0 
    .type a,@object
a:
    .word 0
    .word 1
    .word 2
    .word 3
    .word 4
    .zero 16
