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
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8|arr:400|i:4|sum:4
    addi    sp,sp,-424
    sd      ra,416(sp)
    sd      s0,408(sp)
    addi    s0,sp,424
                    ;      alloc Array:i32:[Some(100_0)] arr_17 
                    ;      alloc i32 i_17 
                    ;      alloc i32 sum_17 
                    ;      label L0_0: 
L0_0:
                    ;      new_var arr_17:Array:i32:[Some(100_0)] 
                    ;      i_17 = i32 0_0 
    li      s1, 0
    sw      s1,4(sp)
                    ;      sum_17 = i32 0_0 
    li      s1, 0
    sw      s1,0(sp)
                    ;      jump label: L1_0 
    j       L1_0
                    ;      label L1_0: 
L1_0:
                    ;      label L2_0: 
L2_0:
                    ;      jump label: L1_0 
    j       L1_0
                    ;      label L3_0: 
L3_0:
                    ;      label L4_0: 
L4_0:
                    ;      jump label: L3_0 
    j       L3_0
                    ;      label L5_0: 
L5_0:
                    ;      ret 
    ld      ra,416(sp)
    ld      s0,408(sp)
    addi    sp,sp,-424
    ret

