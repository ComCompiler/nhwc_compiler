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
              #                     289  Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 8|s0_main:8 at 0
    addi    sp,sp,-16
              #                    store to ra_main_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     291  ret 5_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 5_0
    li      a0, 5
    addi    sp,sp,16
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl i
              #                     287  global Array:i32:[Some(2_0), Some(3_0), Some(4_0)] i_0 
    .type i,@object
i:
    .word 1
    .word 2
    .word 3
    .word 4
    .zero 32
    .word 5
    .zero 48
    .align 4
    .globl h
              #                     268  global Array:i32:[Some(3_0)] h_0 
    .type h,@object
h:
    .zero 12
    .align 4
    .globl g
              #                     266  global Array:i32:[Some(5_0), Some(3_0)] g_0 
    .type g,@object
g:
    .word 1
    .word 2
    .word 3
    .word 4
    .zero 8
    .word 7
    .zero 8
    .word 10
    .word 11
    .word 12
    .zero 16
    .align 4
    .globl f
              #                     238  global Array:i32:[Some(5_0)] f_0 
    .type f,@object
f:
    .zero 20
    .align 4
    .globl e
              #                     236  global Array:i32:[Some(5_0), Some(3_0)] e_0 
    .type e,@object
e:
    .word 1
    .word 2
    .word 3
    .word 4
    .word 5
    .word 6
    .word 7
    .word 8
    .word 9
    .word 10
    .word 11
    .word 12
    .word 13
    .word 14
    .word 15
    .zero 4
    .align 4
    .globl d
              #                     187  global Array:i32:[Some(5_0), Some(3_0)] d_0 
    .type d,@object
d:
    .word 1
    .word 2
    .word 3
    .word 4
    .word 5
    .word 6
    .word 7
    .word 8
    .word 9
    .word 10
    .word 11
    .word 12
    .word 13
    .word 14
    .word 15
    .zero 4
    .align 4
    .globl c
              #                     138  global Array:i32:[Some(5_0), Some(3_0)] c_0 
    .type c,@object
c:
    .word 1
    .word 2
    .word 3
    .word 4
    .word 5
    .word 6
    .word 7
    .word 8
    .word 9
    .word 10
    .word 11
    .word 12
    .word 13
    .word 14
    .word 15
    .zero 4
    .align 4
    .globl b
              #                     89   global Array:i32:[Some(5_0), Some(3_0)] b_0 
    .type b,@object
b:
    .zero 60
    .align 4
    .globl a
              #                     85   global Array:i32:[Some(5_0), Some(3_0)] a_0 
    .type a,@object
a:
    .zero 60
    .align 4
    .globl g0
              #                     83   global Array:i32:[Some(9_0)] g0_0 
    .type g0,@object
g0:
    .word 85
    .word 0
    .word 1
    .word 29
    .zero 24
    .align 4
    .globl f0
              #                     67   global Array:i32:[Some(6_0)] f0_0 
    .type f0,@object
f0:
    .zero 24
    .align 4
    .globl e0
              #                     65   global Array:i32:[Some(2_0)] e0_0 
    .type e0,@object
e0:
    .word 22
    .word 33
    .zero 4
    .align 4
    .globl d0
              #                     55   global Array:i32:[Some(11_0)] d0_0 
    .type d0,@object
d0:
    .zero 44
    .align 4
    .globl c0
              #                     53   global Array:i32:[Some(7_0)] c0_0 
    .type c0,@object
c0:
    .word 2
    .word 8
    .word 6
    .word 3
    .word 9
    .word 1
    .word 5
    .zero 4
    .align 4
    .globl b0
              #                     28   global Array:i32:[Some(4_0)] b0_0 
    .type b0,@object
b0:
    .word 0
    .word 1
    .zero 12
    .align 4
    .globl a0
              #                     18   global Array:i32:[Some(3_0)] a0_0 
    .type a0,@object
a0:
    .zero 12
