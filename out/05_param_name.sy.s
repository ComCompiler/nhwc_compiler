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
                    #      Define f_0 [f_16] -> f_ret_0 
    .globl f
    .type f,@function
f:
                    #mem layout:|ra_f:8|s0_f:8|f:4|temp_0:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_0_18 
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_0_18:i32 
                    #      temp_0_18 = Mul i32 f_16, 2_0 
    li      a1, 2
    mul     a2,a0,a1
                    #      ret temp_0_18 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a2,0(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_1:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_1_21 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_1_21:i32 
                    #      temp_1_21 =  Call i32 f_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    f
    sw      a0,4(sp)
                    #      ret temp_1_21 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
