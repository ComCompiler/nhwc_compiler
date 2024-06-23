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
              #                    mem layout:|ra_main:8 at 24|s0_main:8 at 16|temp_6_array_ptr:8 at 8|temp_7_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_main_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                          alloc ptr->i32 temp_6_array_ptr_18 
              #                          alloc i32 temp_7_array_ele_18 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_6_array_ptr_18:ptr->i32 
              #                          temp_6_array_ptr_18 = getelementptr *a_0:ptr->i32 [Some(4_0)] 
              #                    occupy a0 with temp_6_array_ptr_18
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 4_0
    li      a2, 4
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *a_0
              #                       load label a as ptr to reg
    la      a4, a
              #                    occupy reg a4 with *a_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          new_var temp_7_array_ele_18:i32 
              #                          temp_7_array_ele_18 = load temp_6_array_ptr_18:ptr->i32 
              #                    occupy a0 with temp_6_array_ptr_18
              #                    occupy a5 with temp_7_array_ele_18
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                          ret temp_7_array_ele_18 
              #                    load from ra_main_0 in mem
    ld      ra,24(sp)
              #                    load from s0_main_0 in mem
    ld      s0,16(sp)
              #                    store to temp_7_array_ele_18 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_7_array_ele_18
              #                    store to temp_6_array_ptr_18 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_6_array_ptr_18
              #                    occupy a0 with temp_7_array_ele_18
              #                    load from temp_7_array_ele_18 in mem


    lw      a0,4(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl a
              #                          global Array:i32:[Some(5_0)] a_0 
    .type a,@object
a:
    .word 0
    .word 1
    .word 2
    .word 3
    .word 4
    .zero 4
