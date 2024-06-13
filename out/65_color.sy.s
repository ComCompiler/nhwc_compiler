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
    .align 4
    .global mod_0
                    ;      global i32 mod_0 
    .type mod_0 @object
mod_0:
    .word 1000000007
    .align 4
    .global maxn_0
                    ;      global i32 maxn_0 
    .type maxn_0 @object
maxn_0:
    .word 18
.section
    .text
                    ;      Define equal_0 [a_21, b_21] -> equal_ret_0 
    .global equal
    .type equal @function
equal:
                    ;mem layout:|ra_equal:8|s0_equal:8|a:4|b:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
    sw      a1,0(sp)
                    ;      label L45_0: 
L45_0:
                    ;      label branch_true_25: 
branch_true_25:
                    ;      ret 1_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 1
    addi    sp,sp,-24
    ret
                    ;      label branch_false_25: 
branch_false_25:
                    ;      label L46_0: 
L46_0:
                    ;      ret 0_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,-24
    ret
                    ;      Define dfs_0 [a_28, b_28, c_28, d_28, e_28, last_28] -> dfs_ret_0 
    .global dfs
    .type dfs @function
dfs:
                    ;mem layout:|ra_dfs:8|s0_dfs:8|a:4|b:4|c:4|d:4|e:4|last:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
    sw      a0,20(sp)
    sw      a1,16(sp)
    sw      a2,12(sp)
    sw      a3,8(sp)
    sw      a4,4(sp)
    sw      a5,0(sp)
                    ;      label L22_0: 
L22_0:
                    ;      label L23_0: 
L23_0:
                    ;      jump label: L24_0 
    j       L24_0
                    ;      label L24_0: 
L24_0:
                    ;      label L25_0: 
L25_0:
                    ;      label L26_0: 
L26_0:
                    ;      jump label: L27_0 
    j       L27_0
                    ;      label L27_0: 
L27_0:
                    ;      label L28_0: 
L28_0:
                    ;      jump label: L29_0 
    j       L29_0
                    ;      label L29_0: 
L29_0:
                    ;      label L30_0: 
L30_0:
                    ;      jump label: L31_0 
    j       L31_0
                    ;      label L31_0: 
L31_0:
                    ;      label L32_0: 
L32_0:
                    ;      label L33_0: 
L33_0:
                    ;      jump label: L34_0 
    j       L34_0
                    ;      label L34_0: 
L34_0:
                    ;      label L35_0: 
L35_0:
                    ;      label L36_0: 
L36_0:
                    ;      jump label: L37_0 
    j       L37_0
                    ;      label L37_0: 
L37_0:
                    ;      label L38_0: 
L38_0:
                    ;      label L39_0: 
L39_0:
                    ;      jump label: L40_0 
    j       L40_0
                    ;      label L40_0: 
L40_0:
                    ;      label L41_0: 
L41_0:
                    ;      label L42_0: 
L42_0:
                    ;      jump label: L43_0 
    j       L43_0
                    ;      label L43_0: 
L43_0:
                    ;      label L44_0: 
L44_0:
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
                    ;      jump label: L1_0 
    j       L1_0
                    ;      label L1_0: 
L1_0:
                    ;      label L2_0: 
L2_0:
                    ;      jump label: L3_0 
    j       L3_0
                    ;      label L3_0: 
L3_0:
                    ;      label L4_0: 
L4_0:
                    ;      jump label: L5_0 
    j       L5_0
                    ;      label L5_0: 
L5_0:
                    ;      label L6_0: 
L6_0:
                    ;      jump label: L7_0 
    j       L7_0
                    ;      label L7_0: 
L7_0:
                    ;      label L8_0: 
L8_0:
                    ;      jump label: L9_0 
    j       L9_0
                    ;      label L9_0: 
L9_0:
                    ;      label L10_0: 
L10_0:
                    ;      jump label: L11_0 
    j       L11_0
                    ;      label L11_0: 
L11_0:
                    ;      label L12_0: 
L12_0:
                    ;      jump label: L11_0 
    j       L11_0
                    ;      label L13_0: 
L13_0:
                    ;      jump label: L9_0 
    j       L9_0
                    ;      label L14_0: 
L14_0:
                    ;      jump label: L7_0 
    j       L7_0
                    ;      label L15_0: 
L15_0:
                    ;      jump label: L5_0 
    j       L5_0
                    ;      label L16_0: 
L16_0:
                    ;      jump label: L3_0 
    j       L3_0
                    ;      label L17_0: 
L17_0:
                    ;      jump label: L1_0 
    j       L1_0
                    ;      label L18_0: 
L18_0:
                    ;      jump label: L19_0 
    j       L19_0
                    ;      label L19_0: 
L19_0:
                    ;      label L20_0: 
L20_0:
                    ;      jump label: L19_0 
    j       L19_0
                    ;      label L21_0: 
L21_0:

