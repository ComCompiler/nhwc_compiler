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
                    ;mem layout:|ra_main:8|s0_main:8|a:4|b0:4|_c:4|none:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    ;      alloc i32 a_17 
                    ;      alloc i32 b0_17 
                    ;      alloc i32 _c_17 
                    ;      label L0_0: 
L0_0:
                    ;      new_var a_17:i32 
                    ;      new_var b0_17:i32 
                    ;      new_var _c_17:i32 
                    ;      a_17 = i32 1_0 
    li      s1, 1
    sw      s1,12(sp)
                    ;      b0_17 = i32 2_0 
    li      s1, 2
    sw      s1,8(sp)
                    ;      _c_17 = i32 3_0 
    li      s1, 3
    sw      s1,4(sp)
                    ;      ret 
    ld      ra,24(sp)
    ld      s0,16(sp)
    addi    sp,sp,-32
    ret

