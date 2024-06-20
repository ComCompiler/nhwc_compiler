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
                    #mem layout:|ra_main:8|s0_main:8|a:4|temp_0:4|temp_1:4|none:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    #      alloc i32 a_19 
                    #      alloc i32 temp_0_19 
                    #      alloc i32 temp_1_19 
                    #      label L0_0: 
.L0_0:
                    #      a_19 = i32 5_0 
    li      a0, 5
                    #      new_var temp_0_19:i32 
                    #      temp_0_19 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a1, b
                    #occupy reg a1 with *b_0
    lw      a2,0(a1)
                    #      new_var temp_1_19:i32 
                    #      temp_1_19 = Add i32 a_19, temp_0_19 
    add     a3,a0,a2
                    #      ret temp_1_19 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a3,4(sp)
    sw      a0,12(sp)
    addi    sp,sp,32
    ret
.section        .data
    .align 4
    .globl b
                    #      global i32 b_0 
    .type b,@object
b:
    .word 5
    .align 4
    .globl a
                    #      global i32 a_0 
    .type a,@object
a:
    .word 3
