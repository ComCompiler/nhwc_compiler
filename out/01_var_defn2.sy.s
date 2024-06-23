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
              #                    mem layout:|ra_main:8 at 24|s0_main:8 at 16|a:4 at 12|temp_0_ptr2globl:4 at 8|temp_1_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_main_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                          alloc i32 a_19 
              #                          alloc i32 temp_0_ptr2globl_19 
              #                          alloc i32 temp_1_arithop_19 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          a_19 = i32 5_0 
              #                    occupy a0 with a_19
    li      a0, 5
              #                    free a0
              #                          new_var temp_0_ptr2globl_19:i32 
              #                          temp_0_ptr2globl_19 = load *b_0:ptr->i32 
              #                    occupy a1 with *b_0
              #                       load label b as ptr to reg
    la      a1, b
              #                    occupy reg a1 with *b_0
              #                    occupy a2 with temp_0_ptr2globl_19
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_1_arithop_19:i32 
              #                          temp_1_arithop_19 = Add i32 a_19, temp_0_ptr2globl_19 
              #                    occupy a0 with a_19
              #                    occupy a2 with temp_0_ptr2globl_19
              #                    occupy a3 with temp_1_arithop_19
    add     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                          ret temp_1_arithop_19 
              #                    load from ra_main_0 in mem
    ld      ra,24(sp)
              #                    load from s0_main_0 in mem
    ld      s0,16(sp)
              #                    store to temp_1_arithop_19 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_1_arithop_19
              #                    store to a_19 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with a_19
              #                    occupy a0 with temp_1_arithop_19
              #                    load from temp_1_arithop_19 in mem


    lw      a0,4(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_0_ptr2globl_19, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl b
              #                          global i32 b_0 
    .type b,@object
b:
    .word 5
    .align 4
    .globl a
              #                          global i32 a_0 
    .type a,@object
a:
    .word 3
