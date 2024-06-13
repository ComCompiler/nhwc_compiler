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
    .align 4
    .global b_0
                    ;      global i32 b_0 
    .type b_0 @object
b_0:
    .word 5
    .align 4
    .global a_0
                    ;      global i32 a_0 
    .type a_0 @object
a_0:
    .word 3
.section
    .text
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8|a:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    ;      alloc i32 a_19 
                    ;      label L0_0: 
L0_0:
                    ;      a_19 = i32 5_0 
    li      s1, 5
    sw      s1,4(sp)
                    ;      ret 
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,-24
    ret

