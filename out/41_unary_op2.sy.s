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
                    ;mem layout:|ra_main:8|s0_main:8|a:4|b:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    ;      alloc i32 a_17 
                    ;      alloc i32 b_17 
                    ;      label L0_0: 
L0_0:
                    ;      new_var a_17:i32 
                    ;      new_var b_17:i32 
                    ;      a_17 = i32 070_0 
    li      s1, 070
    sw      s1,4(sp)
                    ;      b_17 = i32 0x4_0 
    li      s1, 0x4
    sw      s1,0(sp)
                    ;      jump label: L1_0 
    j       L1_0
                    ;      label L1_0: 
L1_0:
                    ;      label L2_0: 
L2_0:
                    ;      jump label: L4_0 
    j       L4_0
                    ;      label L3_0: 
L3_0:
                    ;      jump label: L4_0 
    j       L4_0
                    ;      label L4_0: 
L4_0:
                    ;      label L5_0: 
L5_0:
