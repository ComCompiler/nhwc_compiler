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
                    ;mem layout:|ra_main:8|s0_main:8|a:4|b:4|c:4|d:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    ;      alloc i32 a_17 
                    ;      alloc i32 b_17 
                    ;      alloc i32 c_17 
                    ;      alloc i32 d_17 
                    ;      label L0_0: 
L0_0:
                    ;      new_var a_17:i32 
                    ;      new_var b_17:i32 
                    ;      new_var c_17:i32 
                    ;      new_var d_17:i32 
                    ;      a_17 = i32 10_0 
    li      s1, 10
    sw      s1,12(sp)
                    ;      b_17 = i32 4_0 
    li      s1, 4
    sw      s1,8(sp)
                    ;      c_17 = i32 2_0 
    li      s1, 2
    sw      s1,4(sp)
                    ;      d_17 = i32 2_0 
    li      s1, 2
    sw      s1,0(sp)
                    ;      ret 
    ld      ra,24(sp)
    ld      s0,16(sp)
    addi    sp,sp,-32
    ret

