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
.section
    .data
.section
    .text
                    ;      Define f1_0 [b[]_17] -> f1_ret_0 
    .global f1
    .type f1 @function
f1:
                    ;mem layout:|ra_f1:8|s0_f1:8|b[]:4|temp_5:4|temp_0:8|temp_1:8|temp_2:8|temp_3:16384|temp_4:8
    addi    sp,sp,-16440
    sd      ra,16432(sp)
    sd      s0,16424(sp)
    addi    s0,sp,16440
    sw      a0,16420(sp)
                    ;      alloc ptr->i32 temp_0_19 
                    ;      alloc ptr->i32 temp_1_19 
                    ;      alloc ptr->i32 temp_2_19 
                    ;      alloc Array:i32:[Some(4096_0)] temp_3_19 
                    ;      alloc ptr->i32 temp_4_19 
                    ;      alloc i32 temp_5_19 
                    ;      label L1_0: 
L1_0:
                    ;      new_var temp_0_19:ptr->i32 
                    ;      temp_0_19 = getelementptr a_0:Array:i32:[Some(4096_0)] [5_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 5
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    la      s5, a_0
    add     s3,s3,s5
    sd      s3,16408(sp)
                    ;      store 4000_0:i32 temp_0_19:ptr->i32 
    li      s2, 4000
    ld      s1,16408(sp)
    sd      s2,0(s1)
                    ;      mu a_0:22 
                    ;      a_0 = chi a_0:22 
                    ;      new_var temp_1_19:ptr->i32 
                    ;      temp_1_19 = getelementptr a_0:Array:i32:[Some(4096_0)] [4000_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 4000
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    la      s5, a_0
    add     s3,s3,s5
    sd      s3,16400(sp)
                    ;      store 3_0:i32 temp_1_19:ptr->i32 
    li      s2, 3
    ld      s1,16400(sp)
    sd      s2,0(s1)
                    ;      mu a_0:28 
                    ;      a_0 = chi a_0:28 
                    ;      new_var temp_2_19:ptr->i32 
                    ;      temp_2_19 = getelementptr a_0:Array:i32:[Some(4096_0)] [4095_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 4095
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    la      s5, a_0
    add     s3,s3,s5
    sd      s3,16392(sp)
                    ;      store 7_0:i32 temp_2_19:ptr->i32 
    li      s2, 7
    ld      s1,16392(sp)
    sd      s2,0(s1)
                    ;      mu a_0:34 
                    ;      a_0 = chi a_0:34 
                    ;      new_var temp_3_19:Array:i32:[Some(4096_0)] 
                    ;      temp_3_19 = load *a_0:ptr->Array:i32:[] 
                    ;   load label a as ptr to reg
    la      s1, a_0
    lw      s2,0(s1)
    sw      s2,16388(sp)
                    ;      new_var temp_4_19:ptr->i32 
                    ;      new_var temp_5_19:i32 
                    ;      temp_4_19 = getelementptr temp_3_19:Array:i32:[Some(4096_0)] [4095_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 4095
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 16388
    add     s3,s3,s5
    sd      s3,0(sp)
                    ;      temp_5_19 = load temp_4_19:ptr->i32 
    ld      s1,0(sp)
    lw      s2,0(s1)
    sw      s2,16416(sp)
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
                    ;      label L0_0: 
L0_0:

