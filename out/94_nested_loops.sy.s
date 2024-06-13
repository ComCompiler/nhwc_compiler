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
                    ;      Define loop1_0 [x_18, y_18] -> loop1_ret_0 
    .global loop1
    .type loop1 @function
loop1:
                    ;mem layout:|ra_loop1:8|s0_loop1:8|x:4|y:4|a:4|b:4|c:4|d:4|e:4|f:4|g:4|none:4
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
    sw      a0,36(sp)
    sw      a1,32(sp)
                    ;      alloc i32 a_20 
                    ;      alloc i32 b_20 
                    ;      alloc i32 c_20 
                    ;      alloc i32 d_20 
                    ;      alloc i32 e_20 
                    ;      alloc i32 f_20 
                    ;      alloc i32 g_20 
                    ;      label L65_0: 
L65_0:
                    ;      new_var a_20:i32 
                    ;      new_var b_20:i32 
                    ;      new_var c_20:i32 
                    ;      new_var d_20:i32 
                    ;      new_var e_20:i32 
                    ;      new_var f_20:i32 
                    ;      new_var g_20:i32 
                    ;      a_20 = i32 0_0 
    li      s1, 0
    sw      s1,28(sp)
                    ;      jump label: L66_0 
    j       L66_0
                    ;      label L66_0: 
L66_0:
                    ;      label L67_0: 
L67_0:
                    ;      b_20 = i32 0_0 
    li      s1, 0
    sw      s1,24(sp)
                    ;      jump label: L68_0 
    j       L68_0
                    ;      label L68_0: 
L68_0:
                    ;      label L69_0: 
L69_0:
                    ;      jump label: L70_0 
    j       L70_0
                    ;      label L70_0: 
L70_0:
                    ;      label L71_0: 
L71_0:
                    ;      jump label: L72_0 
    j       L72_0
                    ;      label L72_0: 
L72_0:
                    ;      label L73_0: 
L73_0:
                    ;      jump label: L74_0 
    j       L74_0
                    ;      label L74_0: 
L74_0:
                    ;      label L75_0: 
L75_0:
                    ;      jump label: L76_0 
    j       L76_0
                    ;      label L76_0: 
L76_0:
                    ;      label L77_0: 
L77_0:
                    ;      jump label: L78_0 
    j       L78_0
                    ;      label L78_0: 
L78_0:
                    ;      label L79_0: 
L79_0:
                    ;      jump label: L78_0 
    j       L78_0
                    ;      label L80_0: 
L80_0:
                    ;      jump label: L76_0 
    j       L76_0
                    ;      label L81_0: 
L81_0:
                    ;      jump label: L74_0 
    j       L74_0
                    ;      label L82_0: 
L82_0:
                    ;      jump label: L72_0 
    j       L72_0
                    ;      label L83_0: 
L83_0:
                    ;      jump label: L70_0 
    j       L70_0
                    ;      label L84_0: 
L84_0:
                    ;      jump label: L68_0 
    j       L68_0
                    ;      label L85_0: 
L85_0:
                    ;      jump label: L66_0 
    j       L66_0
                    ;      Define loop2_0 [] -> loop2_ret_0 
    .global loop2
    .type loop2 @function
loop2:
                    ;mem layout:|ra_loop2:8|s0_loop2:8
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
                    ;      label L44_0: 
L44_0:
                    ;      jump label: L45_0 
    j       L45_0
                    ;      label L45_0: 
L45_0:
                    ;      label L46_0: 
L46_0:
                    ;      jump label: L47_0 
    j       L47_0
                    ;      label L47_0: 
L47_0:
                    ;      label L48_0: 
L48_0:
                    ;      jump label: L49_0 
    j       L49_0
                    ;      label L49_0: 
L49_0:
                    ;      label L50_0: 
L50_0:
                    ;      jump label: L51_0 
    j       L51_0
                    ;      label L51_0: 
L51_0:
                    ;      label L52_0: 
L52_0:
                    ;      jump label: L53_0 
    j       L53_0
                    ;      label L53_0: 
L53_0:
                    ;      label L54_0: 
L54_0:
                    ;      jump label: L55_0 
    j       L55_0
                    ;      label L55_0: 
L55_0:
                    ;      label L56_0: 
L56_0:
                    ;      jump label: L57_0 
    j       L57_0
                    ;      label L57_0: 
L57_0:
                    ;      label L58_0: 
L58_0:
                    ;      jump label: L57_0 
    j       L57_0
                    ;      label L59_0: 
L59_0:
                    ;      jump label: L55_0 
    j       L55_0
                    ;      label L60_0: 
L60_0:
                    ;      jump label: L53_0 
    j       L53_0
                    ;      label L61_0: 
L61_0:
                    ;      jump label: L51_0 
    j       L51_0
                    ;      label L62_0: 
L62_0:
                    ;      jump label: L49_0 
    j       L49_0
                    ;      label L63_0: 
L63_0:
                    ;      jump label: L47_0 
    j       L47_0
                    ;      label L64_0: 
L64_0:
                    ;      jump label: L45_0 
    j       L45_0
                    ;      Define loop3_0 [h_97, i_97, j_97, k_97, l_97, m_97, n_97] -> loop3_ret_0 
    .global loop3
    .type loop3 @function
loop3:
                    ;mem layout:|ra_loop3:8|s0_loop3:8|h:4|i:4|j:4|k:4|l:4|m:4|n:4|none:4
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
    sw      a0,28(sp)
    sw      a1,24(sp)
    sw      a2,20(sp)
    sw      a3,16(sp)
    sw      a4,12(sp)
    sw      a5,8(sp)
    sw      a6,4(sp)
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
                    ;      jump label: L6_0 
    j       L6_0
                    ;      label L6_0: 
L6_0:
                    ;      label L7_0: 
L7_0:
                    ;      jump label: L8_0 
    j       L8_0
                    ;      label L8_0: 
L8_0:
                    ;      label L9_0: 
L9_0:
                    ;      jump label: L10_0 
    j       L10_0
                    ;      label L10_0: 
L10_0:
                    ;      label L11_0: 
L11_0:
                    ;      jump label: L12_0 
    j       L12_0
                    ;      label L12_0: 
L12_0:
                    ;      label L13_0: 
L13_0:
                    ;      jump label: L14_0 
    j       L14_0
                    ;      label L14_0: 
L14_0:
                    ;      label L15_0: 
L15_0:
                    ;      jump label: L16_0 
    j       L16_0
                    ;      label L16_0: 
L16_0:
                    ;      label L17_0: 
L17_0:
                    ;      jump label: L18_0 
    j       L18_0
                    ;      label L18_0: 
L18_0:
                    ;      label L19_0: 
L19_0:
                    ;      jump label: L20_0 
    j       L20_0
                    ;      label L20_0: 
L20_0:
                    ;      label L21_0: 
L21_0:
                    ;      jump label: L22_0 
    j       L22_0
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
                    ;      jump label: L26_0 
    j       L26_0
                    ;      label L26_0: 
L26_0:
                    ;      label L27_0: 
L27_0:
                    ;      jump label: L28_0 
    j       L28_0
                    ;      label L28_0: 
L28_0:
                    ;      label L29_0: 
L29_0:
                    ;      jump label: L30_0 
    j       L30_0
                    ;      label L30_0: 
L30_0:
                    ;      label L31_0: 
L31_0:
                    ;      jump label: L32_0 
    j       L32_0
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
                    ;      jump label: L36_0 
    j       L36_0
                    ;      label L36_0: 
L36_0:
                    ;      label L37_0: 
L37_0:
                    ;      jump label: L38_0 
    j       L38_0
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
                    ;      jump label: L42_0 
    j       L42_0
                    ;      label L42_0: 
L42_0:
                    ;      label L43_0: 
L43_0:
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

