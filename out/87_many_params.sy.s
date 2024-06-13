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
                    ;      Define sort_0 [arr[]_16, len_16] -> sort_ret_0 
    .global sort
    .type sort @function
sort:
                    ;mem layout:|ra_sort:8|s0_sort:8|arr[]:4|len:4|i:4|none:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
    sw      a0,12(sp)
    sw      a1,8(sp)
                    ;      alloc i32 i_18 
                    ;      label L10_0: 
L10_0:
                    ;      i_18 = i32 0_0 
    li      s1, 0
    sw      s1,4(sp)
                    ;      jump label: L11_0 
    j       L11_0
                    ;      label L11_0: 
L11_0:
                    ;      label L12_0: 
L12_0:
                    ;      jump label: L13_0 
    j       L13_0
                    ;      label L13_0: 
L13_0:
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
                    ;      jump label: L13_0 
    j       L13_0
                    ;      label L18_0: 
L18_0:
                    ;      jump label: L11_0 
    j       L11_0
                    ;      Define param32_rec_0 [a1_35, a2_35, a3_35, a4_35, a5_35, a6_35, a7_35, a8_35, a9_35, a10_35, a11_35, a12_35, a13_35, a14_35, a15_35, a16_35, a17_35, a18_35, a19_35, a20_35, a21_35, a22_35, a23_35, a24_35, a25_35, a26_35, a27_35, a28_35, a29_35, a30_35, a31_35, a32_35] -> param32_rec_ret_0 
    .global param32_rec
    .type param32_rec @function
param32_rec:
                    ;mem layout:|ra_param32_rec:8|s0_param32_rec:8|a1:4|a2:4|a3:4|a4:4|a5:4|a6:4|a7:4|a8:4|a9:4|a10:4|a11:4|a12:4|a13:4|a14:4|a15:4|a16:4|a17:4|a18:4|a19:4|a20:4|a21:4|a22:4|a23:4|a24:4|a25:4|a26:4|a27:4|a28:4|a29:4|a30:4|a31:4|a32:4
    addi    sp,sp,-144
    sd      ra,136(sp)
    sd      s0,128(sp)
    addi    s0,sp,144
    sw      a0,124(sp)
    sw      a1,120(sp)
    sw      a2,116(sp)
    sw      a3,112(sp)
    sw      a4,108(sp)
    sw      a5,104(sp)
    sw      a6,100(sp)
    sw      a7,96(sp)
    sw      a8,92(sp)
    sw      a9,88(sp)
    sw      a10,84(sp)
    sw      a11,80(sp)
    sw      a12,76(sp)
    sw      a13,72(sp)
    sw      a14,68(sp)
    sw      a15,64(sp)
    sw      a16,60(sp)
    sw      a17,56(sp)
    sw      a18,52(sp)
    sw      a19,48(sp)
    sw      a20,44(sp)
    sw      a21,40(sp)
    sw      a22,36(sp)
    sw      a23,32(sp)
    sw      a24,28(sp)
    sw      a25,24(sp)
    sw      a26,20(sp)
    sw      a27,16(sp)
    sw      a28,12(sp)
    sw      a29,8(sp)
    sw      a30,4(sp)
    sw      a31,0(sp)
                    ;      label L6_0: 
L6_0:
                    ;      label L7_0: 
L7_0:
                    ;      jump label: L9_0 
    j       L9_0
                    ;      label L8_0: 
L8_0:
                    ;      jump label: L9_0 
    j       L9_0
                    ;      label L9_0: 
L9_0:
                    ;      Define param32_arr_0 [a1[]_44, a2[]_44, a3[]_44, a4[]_44, a5[]_44, a6[]_44, a7[]_44, a8[]_44, a9[]_44, a10[]_44, a11[]_44, a12[]_44, a13[]_44, a14[]_44, a15[]_44, a16[]_44, a17[]_44, a18[]_44, a19[]_44, a20[]_44, a21[]_44, a22[]_44, a23[]_44, a24[]_44, a25[]_44, a26[]_44, a27[]_44, a28[]_44, a29[]_44, a30[]_44, a31[]_44, a32[]_44] -> param32_arr_ret_0 
    .global param32_arr
    .type param32_arr @function
param32_arr:
                    ;mem layout:|ra_param32_arr:8|s0_param32_arr:8|a1[]:4|a2[]:4|a3[]:4|a4[]:4|a5[]:4|a6[]:4|a7[]:4|a8[]:4|a9[]:4|a10[]:4|a11[]:4|a12[]:4|a13[]:4|a14[]:4|a15[]:4|a16[]:4|a17[]:4|a18[]:4|a19[]:4|a20[]:4|a21[]:4|a22[]:4|a23[]:4|a24[]:4|a25[]:4|a26[]:4|a27[]:4|a28[]:4|a29[]:4|a30[]:4|a31[]:4|a32[]:4
    addi    sp,sp,-144
    sd      ra,136(sp)
    sd      s0,128(sp)
    addi    s0,sp,144
    sw      a0,124(sp)
    sw      a1,120(sp)
    sw      a2,116(sp)
    sw      a3,112(sp)
    sw      a4,108(sp)
    sw      a5,104(sp)
    sw      a6,100(sp)
    sw      a7,96(sp)
    sw      a8,92(sp)
    sw      a9,88(sp)
    sw      a10,84(sp)
    sw      a11,80(sp)
    sw      a12,76(sp)
    sw      a13,72(sp)
    sw      a14,68(sp)
    sw      a15,64(sp)
    sw      a16,60(sp)
    sw      a17,56(sp)
    sw      a18,52(sp)
    sw      a19,48(sp)
    sw      a20,44(sp)
    sw      a21,40(sp)
    sw      a22,36(sp)
    sw      a23,32(sp)
    sw      a24,28(sp)
    sw      a25,24(sp)
    sw      a26,20(sp)
    sw      a27,16(sp)
    sw      a28,12(sp)
    sw      a29,8(sp)
    sw      a30,4(sp)
    sw      a31,0(sp)
                    ;      label L5_0: 
L5_0:
                    ;      Define param16_0 [a1_80, a2_80, a3_80, a4_80, a5_80, a6_80, a7_80, a8_80, a9_80, a10_80, a11_80, a12_80, a13_80, a14_80, a15_80, a16_80] -> param16_ret_0 
    .global param16
    .type param16 @function
param16:
                    ;mem layout:|ra_param16:8|s0_param16:8|a1:4|a2:4|a3:4|a4:4|a5:4|a6:4|a7:4|a8:4|a9:4|a10:4|a11:4|a12:4|a13:4|a14:4|a15:4|a16:4
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
    sw      a0,60(sp)
    sw      a1,56(sp)
    sw      a2,52(sp)
    sw      a3,48(sp)
    sw      a4,44(sp)
    sw      a5,40(sp)
    sw      a6,36(sp)
    sw      a7,32(sp)
    sw      a8,28(sp)
    sw      a9,24(sp)
    sw      a10,20(sp)
    sw      a11,16(sp)
    sw      a12,12(sp)
    sw      a13,8(sp)
    sw      a14,4(sp)
    sw      a15,0(sp)
                    ;      label L4_0: 
L4_0:
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
                    ;      jump label: L1_0 
    j       L1_0
                    ;      label L3_0: 
L3_0:

