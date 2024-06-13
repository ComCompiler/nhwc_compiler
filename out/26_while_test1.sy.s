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
                    ;      Define doubleWhile_0 [] -> doubleWhile_ret_0 
    .global doubleWhile
    .type doubleWhile @function
doubleWhile:
                    ;mem layout:|ra_doubleWhile:8|s0_doubleWhile:8|i:4|j:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    ;      alloc i32 i_17 
                    ;      alloc i32 j_17 
                    ;      label L1_0: 
L1_0:
                    ;      new_var i_17:i32 
                    ;      i_17 = i32 5_0 
    li      s1, 5
    sw      s1,4(sp)
                    ;      new_var j_17:i32 
                    ;      j_17 = i32 7_0 
    li      s1, 7
    sw      s1,0(sp)
                    ;      jump label: L2_0 
    j       L2_0
                    ;      label L2_0: 
L2_0:
                    ;      label L3_0: 
L3_0:
                    ;      jump label: L4_0 
    j       L4_0
                    ;      label L4_0: 
L4_0:
                    ;      label L5_0: 
L5_0:
                    ;      jump label: L4_0 
    j       L4_0
                    ;      label L6_0: 
L6_0:
                    ;      jump label: L2_0 
    j       L2_0
                    ;      label L7_0: 
L7_0:
                    ;      ret 
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,-24
    ret
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
                    ;      label L0_0: 
L0_0:

