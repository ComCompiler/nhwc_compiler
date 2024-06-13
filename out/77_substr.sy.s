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
                    ;      Define MAX_0 [a_16, b_16] -> MAX_ret_0 
    .global MAX
    .type MAX @function
MAX:
                    ;mem layout:|ra_MAX:8|s0_MAX:8|a:4|b:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
    sw      a1,0(sp)
                    ;      label L16_0: 
L16_0:
                    ;      label L17_0: 
L17_0:
                    ;      jump label: L22_0 
    j       L22_0
                    ;      label L18_0: 
L18_0:
                    ;      label L19_0: 
L19_0:
                    ;      jump label: L21_0 
    j       L21_0
                    ;      label L20_0: 
L20_0:
                    ;      ret 
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,-24
    ret
                    ;      label L21_0: 
L21_0:
                    ;      label L22_0: 
L22_0:
                    ;      Define max_sum_nonadjacent_0 [arr[]_26, n_26] -> max_sum_nonadjacent_ret_0 
    .global max_sum_nonadjacent
    .type max_sum_nonadjacent @function
max_sum_nonadjacent:
                    ;mem layout:|ra_max_sum_nonadjacent:8|s0_max_sum_nonadjacent:8|arr[]:4|n:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
    sw      a1,0(sp)
                    ;      label L12_0: 
L12_0:
                    ;      jump label: L13_0 
    j       L13_0
                    ;      label L13_0: 
L13_0:
                    ;      label L14_0: 
L14_0:
                    ;      jump label: L13_0 
    j       L13_0
                    ;      label L15_0: 
L15_0:
                    ;      Define longest_common_subseq_0 [arr1[]_39, len1_39, arr2[]_39, len2_39] -> longest_common_subseq_ret_0 
    .global longest_common_subseq
    .type longest_common_subseq @function
longest_common_subseq:
                    ;mem layout:|ra_longest_common_subseq:8|s0_longest_common_subseq:8|arr1[]:4|len1:4|arr2[]:4|len2:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
    sw      a0,12(sp)
    sw      a1,8(sp)
    sw      a2,4(sp)
    sw      a3,0(sp)
                    ;      label L1_0: 
L1_0:
                    ;      jump label: L2_0 
    j       L2_0
                    ;      label L2_0: 
L2_0:
                    ;      label L3_0: 
L3_0:
                    ;      jump label: L4_0 
    j       L4_0
                    ;      label L4_0: 
L4_0:
                    ;      label L5_0: 
L5_0:
                    ;      label L6_0: 
L6_0:
                    ;      jump label: L8_0 
    j       L8_0
                    ;      label L7_0: 
L7_0:
                    ;      jump label: L8_0 
    j       L8_0
                    ;      label L8_0: 
L8_0:
                    ;      label L9_0: 
L9_0:
                    ;      jump label: L4_0 
    j       L4_0
                    ;      label L10_0: 
L10_0:
                    ;      jump label: L2_0 
    j       L2_0
                    ;      label L11_0: 
L11_0:
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

