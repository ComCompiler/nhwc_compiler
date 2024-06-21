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
                    #      Define func_0 [p_17] -> func_ret_0 
    .globl func
    .type func,@function
func:
                    #mem layout:|ra_func:8|s0_func:8|p:4|temp_0:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_0_19 
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_0_19:i32 
                    #      temp_0_19 = Sub i32 p_17, 1_0 
    li      a1, 1
    sub     a2,a0,a1
                    #      p_17 = i32 temp_0_19 
                    #      ret p_17 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|b:4|temp_1:4|temp_2:4|none:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    #      alloc i32 b_23 
                    #      alloc i32 temp_1_23 
                    #      alloc i32 temp_2_23 
                    #      label L0_0: 
.L0_0:
                    #      new_var b_23:i32 
                    #      store 10_0:i32 *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a0, a
                    #occupy reg a0 with *a_0
    li      a1, 10
    sd      a1,0(a0)
                    #      new_var temp_1_23:i32 
                    #      temp_1_23 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a2, a
                    #occupy reg a2 with *a_0
    lw      a3,0(a2)
                    #      new_var temp_2_23:i32 
                    #      temp_2_23 =  Call i32 func_0(temp_1_23) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a3
                    #arg load ended
    call    func
    sw      a0,4(sp)
                    #      b_23 = i32 temp_2_23 
    mv      a4, a0
                    #      ret b_23 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a4,12(sp)
    sw      a0,4(sp)
    addi    sp,sp,32
    ret
.section        .data
    .align 4
    .globl a
                    #      global i32 a_0 
    .type a,@object
a:
    .word 0
