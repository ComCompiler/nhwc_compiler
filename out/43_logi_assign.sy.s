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
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_0:4|temp_1:4|c:4|temp_2:4|temp_3:1|none:3|temp_4:4|temp_5:1|temp_6:1|none:6
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      alloc i32 temp_0_19 
                    #      alloc i32 temp_1_19 
                    #      alloc i32 c_19 
                    #      alloc i32 temp_2_23 
                    #      alloc i1 temp_3_23 
                    #      alloc i32 temp_4_23 
                    #      alloc i1 temp_5_23 
                    #      alloc i1 temp_6_23 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_0_19:i32 
                    #      temp_0_19 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,28(sp)
                    #      store temp_0_19:i32 *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a1, a
                    #occupy reg a1 with *a_0
    sd      a0,0(a1)
                    #      new_var temp_1_19:i32 
                    #      temp_1_19 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,28(sp)
    sw      a0,24(sp)
                    #      store temp_1_19:i32 *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a2, b
                    #occupy reg a2 with *b_0
    sd      a0,0(a2)
                    #      new_var c_19:i32 
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_2_23:i32 
                    #      temp_2_23 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a1, a
                    #occupy reg a1 with *a_0
    lw      a2,0(a1)
                    #      new_var temp_3_23:i1 
                    #      temp_3_23 = icmp i32 Ne 3_0, temp_2_23 
    li      a3, 3
    xor     a4,a3,a2
    snez    a4, a4
                    #      new_var temp_4_23:i32 
                    #      temp_4_23 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a5, b
                    #occupy reg a5 with *b_0
    lw      a6,0(a5)
                    #      new_var temp_5_23:i1 
                    #      temp_5_23 = icmp i32 Eq temp_2_23, temp_4_23 
    xor     a7,a2,a6
    seqz    a7, a7
                    #      new_var temp_6_23:i1 
                    #      temp_6_23 = And i1 temp_5_23, temp_3_23 
    and     s1,a7,a4
                    #      br i1 temp_6_23, label branch_true_24, label branch_false_24 
    bnez    s1, .branch_true_24
    j       .branch_false_24
                    #      label branch_true_24: 
.branch_true_24:
                    #      c_19 = i32 1_0 
    li      a1, 1
                    #      jump label: L2_0 
    j       .L2_0
                    #      label branch_false_24: 
.branch_false_24:
                    #      c_19 = i32 0_0 
    li      a1, 0
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      label L3_0: 
.L3_0:
                    #      ret c_19 
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a1,20(sp)
    sw      a0,24(sp)
    addi    sp,sp,48
    ret
.section        .data
    .align 4
    .globl b
                    #      global i32 b_0 
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
                    #      global i32 a_0 
    .type a,@object
a:
    .word 0
