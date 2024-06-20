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
                    #mem layout:|ra_main:8|s0_main:8|a:4|temp_0:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 a_17 
                    #      alloc i32 temp_0_17 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_17:i32 
                    #      a_17 = i32 10_0 
    li      a0, 10
                    #      new_var temp_0_17:i32 
                    #      temp_0_17 = Mod i32 a_17, 3_0 
    li      a1, 3
    rem     a2,a0,a1
                    #      ret temp_0_17 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a2,0(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
