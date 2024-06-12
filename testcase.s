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
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8|a:4|b:4|temp_0:4|temp_1:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    ;      alloc i32 a_17 
                    ;      alloc i32 b_17 
                    ;      alloc i32 temp_0_17 
                    ;      alloc i32 temp_1_17 
                    ;      label L0_0: 
L0_0:
                    ;      new_var a_17:i32 
                    ;      new_var b_17:i32 
                    ;      a_17 = i32 10_0 
    li      s1, 10
    sw      s1,12(sp)
                    ;      new_var temp_0_17:i32 
                    ;      temp_0_17 = Sub i32 0_0, 1_0 
    li      s1, 0
    li      s2, 1
    sub     s3,s1,s2
    sw      s3,4(sp)
                    ;      b_17 = i32 temp_0_17 
    lw      s1,4(sp)
    sw      s1,8(sp)
                    ;      new_var temp_1_17:i32 
                    ;      temp_1_17 = Add i32 a_17, b_17 
    lw      s1,12(sp)
    lw      s2,8(sp)
    add     s3,s1,s2
    sw      s3,0(sp)
                    ;      ret temp_1_17 
    ld      ra,24(sp)
    ld      s0,16(sp)
    lw      a0,0(sp)
    addi    sp,sp,-32
    ret

