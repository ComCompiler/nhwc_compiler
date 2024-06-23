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


.section ___func
    .text
    .align 4
              #                    regtab 
              #                          Define defn_0 [] -> defn_ret_0 
    .globl defn
    .type defn,@function
defn:
              #                    mem layout:|ra_defn:8 at 8|s0_defn:8 at 0
    addi    sp,sp,-16
              #                    store to ra_defn_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_defn_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          ret 4_0 
              #                    load from ra_defn_0 in mem
    ld      ra,8(sp)
              #                    load from s0_defn_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 4_0
    li      a0, 4
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_0_ret_of_defn:4 at 4|a:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_0_ret_of_defn_20 
              #                          alloc i32 a_20 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_0_ret_of_defn_20:i32 
              #                          temp_0_ret_of_defn_20 =  Call i32 defn_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    defn
              #                    store to temp_0_ret_of_defn_20 in mem offset legal
    sw      a0,4(sp)
              #                          a_20 = i32 temp_0_ret_of_defn_20 
              #                    occupy a0 with temp_0_ret_of_defn_20
              #                    occupy a1 with a_20
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          ret a_20 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    store to a_20 in mem offset legal
    sw      a1,0(sp)
              #                    release a1 with a_20
              #                    store to temp_0_ret_of_defn_20 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_0_ret_of_defn_20
              #                    occupy a0 with a_20
              #                    load from a_20 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
