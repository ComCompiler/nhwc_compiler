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
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     16   Define defn_0 "" -> defn_ret_0 
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
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     19   ret 4_0 
              #                    load from ra_defn_0 in mem
    ld      ra,8(sp)
              #                    load from s0_defn_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 4_0
    li      a0, 4
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_0_ret_of_defn _s20 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     22   alloc i32 [temp_0_ret_of_defn_20] 
              #                     25   alloc i32 [a_20] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     23   temp_0_ret_of_defn_20_0 =  Call i32 defn_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    defn
              #                     24   (nop) 
              #                     27   ret temp_0_ret_of_defn_20_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with temp_0_ret_of_defn_20_0
              #                    store to temp_0_ret_of_defn_20_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_0_ret_of_defn_20_0
              #                    occupy a0 with temp_0_ret_of_defn_20_0
              #                    load from temp_0_ret_of_defn_20_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
