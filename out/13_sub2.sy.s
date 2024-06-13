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
    .global a_0
                    ;      global i32 a_0 
    .type a_0 @object
a_0:
    .word 10
.section
    .text
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8|b:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    ;      alloc i32 b_18 
                    ;      label L0_0: 
L0_0:
                    ;      new_var b_18:i32 
                    ;      b_18 = i32 2_0 
    li      s1, 2
    sw      s1,4(sp)
                    ;      ret 
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,-24
    ret

