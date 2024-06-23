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
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 24|s0_main:8 at 16|a:4 at 12|b0:4 at 8|_c:4 at 4|temp_0_arithop:4 at 0
    addi    sp,sp,-32
              #                    store to ra_main_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                          alloc i32 a_17 
              #                          alloc i32 b0_17 
              #                          alloc i32 _c_17 
              #                          alloc i32 temp_0_arithop_17 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var a_17:i32 
              #                          new_var b0_17:i32 
              #                          new_var _c_17:i32 
              #                          a_17 = i32 1_0 
              #                    occupy a0 with a_17
    li      a0, 1
              #                    free a0
              #                          b0_17 = i32 2_0 
              #                    occupy a1 with b0_17
    li      a1, 2
              #                    free a1
              #                          _c_17 = i32 3_0 
              #                    occupy a2 with _c_17
    li      a2, 3
              #                    free a2
              #                          new_var temp_0_arithop_17:i32 
              #                          temp_0_arithop_17 = Add i32 b0_17, _c_17 
              #                    occupy a1 with b0_17
              #                    occupy a2 with _c_17
              #                    occupy a3 with temp_0_arithop_17
    add     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          ret temp_0_arithop_17 
              #                    load from ra_main_0 in mem
    ld      ra,24(sp)
              #                    load from s0_main_0 in mem
    ld      s0,16(sp)
              #                    store to temp_0_arithop_17 in mem offset legal
    sw      a3,0(sp)
              #                    release a3 with temp_0_arithop_17
              #                    store to a_17 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with a_17
              #                    occupy a0 with temp_0_arithop_17
              #                    load from temp_0_arithop_17 in mem


    lw      a0,0(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b0_17, tracked: true } |     a2:Freed { symidx: _c_17, tracked: true } | 
