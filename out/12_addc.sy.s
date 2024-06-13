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
                    ;mem layout:|ra_main:8|s0_main:8|temp_0:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    ;      alloc i32 temp_0_18 
                    ;      label L0_0: 
L0_0:
                    ;      new_var temp_0_18:i32 
                    ;      temp_0_18 = Add i32 10_0, 5_0 
    li      s1, 10
    li      s2, 5
    add     s3,s1,s2
    sw      s3,4(sp)
                    ;      ret temp_0_18 
    ld      ra,16(sp)
    ld      s0,8(sp)
    lw      a0,4(sp)
    addi    sp,sp,-24
    ret

