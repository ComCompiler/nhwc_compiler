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
.section
    .text
                    ;      Define main_0 [] -> main_ret_0 
    .global main_0
    .type main @function
main_0:
                    ;mem layout:|ra_main:8|s0_main:8
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
                    ;      label %0_0: 
%0_0:
                    ;      ret 0_0 
    ld      ra,8(sp)
    ld      s0,0(sp)
    li      a0, 0
    addi    sp,sp,-16
    ret

