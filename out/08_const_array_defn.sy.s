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
              #                    mem layout:|ra_main:8 at 48|s0_main:8 at 40|temp_5_ptr2globl:20 at 20|none:4 at 16|temp_6_array_ptr:8 at 8|temp_7_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-56
              #                    store to ra_main_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc Array:i32:[Some(5_0)] temp_5_ptr2globl_18 
              #                          alloc ptr->i32 temp_6_array_ptr_18 
              #                          alloc i32 temp_7_array_ele_18 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_5_ptr2globl_18:Array:i32:[Some(5_0)] 
              #                          temp_5_ptr2globl_18 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with temp_5_ptr2globl_18
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_6_array_ptr_18:ptr->i32 
              #                          temp_6_array_ptr_18 = getelementptr temp_5_ptr2globl_18:Array:i32:[Some(5_0)] [Some(4_0)] 
              #                    occupy a2 with temp_6_array_ptr_18
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 4_0
    li      a4, 4
              #                    occupy a5 with _anonymous_of_temp_5_ptr2globl_18_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,20
              #                    free a2
              #                          new_var temp_7_array_ele_18:i32 
              #                          temp_7_array_ele_18 = load temp_6_array_ptr_18:ptr->i32 
              #                    occupy a2 with temp_6_array_ptr_18
              #                    occupy a6 with temp_7_array_ele_18
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          ret temp_7_array_ele_18 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to temp_7_array_ele_18 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_7_array_ele_18
              #                    occupy a0 with temp_7_array_ele_18
              #                    load from temp_7_array_ele_18 in mem


    lw      a0,4(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_5_ptr2globl_18, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_18, tracked: true } | 
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
    .zero 16
