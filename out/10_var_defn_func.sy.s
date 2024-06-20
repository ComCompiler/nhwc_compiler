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
                    #      Define defn_0 [] -> defn_ret_0 
    .globl defn
    .type defn,@function
defn:
                    #mem layout:|ra_defn:8|s0_defn:8
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
                    #      label L1_0: 
.L1_0:
                    #      ret 4_0 
    ld      ra,8(sp)
    ld      s0,0(sp)
    li      a0, 4
    addi    sp,sp,16
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_0:4|a:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_0_20 
                    #      alloc i32 a_20 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_0_20:i32 
                    #      temp_0_20 =  Call i32 defn_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    defn
    sw      a0,4(sp)
                    #      a_20 = i32 temp_0_20 
    mv      a1, a0
                    #      ret a_20 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a1,0(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
