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
              #                          Define f1_0 [b_17] -> f1_ret_0 
    .globl f1
    .type f1,@function
f1:
              #                    mem layout:|ra_f1:8 at 65648|s0_f1:8 at 65640|b:8 at 65632|temp_0_index_ptr:8 at 65624|temp_1_index_ptr:8 at 65616|temp_2_index_ptr:8 at 65608|temp_3_ptr2globl:16384 at 49224|temp_4_array_ptr:8 at 49216|temp_5_array_ele:4 at 49212|none:4 at 49208|temp_6_index_ptr:8 at 49200|temp_7_ptr2globl:16384 at 32816|temp_8_array_ptr:8 at 32808|temp_9_array_ele:4 at 32804|temp_10_arithop:4 at 32800|temp_11_ptr2globl:16384 at 16416|temp_12_array_ptr:8 at 16408|temp_13_array_ele:4 at 16404|temp_14_ptr2globl:16384 at 20|none:4 at 16|temp_15_array_ptr:8 at 8|temp_16_array_ele:4 at 4|none:4 at 0
              #                    occupy a1 with -65656_0
    li      a1, -65656
    li      a1, -65656
    add     sp,a1,sp
              #                    free a1
              #                    store to ra_f1_0 in mem offset_illegal
              #                    occupy a2 with 65648_0
    li      a2, 65648
    add     a2,sp,a2
    sd      ra,0(a2)
              #                    free a2
              #                    store to s0_f1_0 in mem offset_illegal
              #                    occupy a3 with 65640_0
    li      a3, 65640
    add     a3,sp,a3
    sd      s0,0(a3)
              #                    free a3
              #                    occupy a4 with 65656_0
    li      a4, 65656
    li      a4, 65656
    add     s0,a4,sp
              #                    free a4
              #                          new_var b_17:ptr->i32 
              #                          alloc ptr->i32 temp_0_index_ptr_19 
              #                          alloc ptr->i32 temp_1_index_ptr_19 
              #                          alloc ptr->i32 temp_2_index_ptr_19 
              #                          alloc Array:i32:[Some(4096_0)] temp_3_ptr2globl_19 
              #                          alloc ptr->i32 temp_4_array_ptr_19 
              #                          alloc i32 temp_5_array_ele_19 
              #                          alloc ptr->i32 temp_6_index_ptr_19 
              #                          alloc Array:i32:[Some(4096_0)] temp_7_ptr2globl_19 
              #                          alloc ptr->i32 temp_8_array_ptr_19 
              #                          alloc i32 temp_9_array_ele_19 
              #                          alloc i32 temp_10_arithop_19 
              #                          alloc Array:i32:[Some(4096_0)] temp_11_ptr2globl_19 
              #                          alloc ptr->i32 temp_12_array_ptr_19 
              #                          alloc i32 temp_13_array_ele_19 
              #                          alloc Array:i32:[Some(4096_0)] temp_14_ptr2globl_19 
              #                          alloc ptr->i32 temp_15_array_ptr_19 
              #                          alloc i32 temp_16_array_ele_19 
              #                    regtab     a0:Freed { symidx: b_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_0_index_ptr_19:ptr->i32 
              #                          temp_0_index_ptr_19 = getelementptr a_0:Array:i32:[Some(4096_0)] [Some(5_0)] 
              #                    occupy a1 with temp_0_index_ptr_19
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with 5_0
    li      a3, 5
              #                    occupy a4 with _anonymous_of_a_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a5 with _anonymous_of_a_0_0
    la      a5, a
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                          store 4000_0:i32 temp_0_index_ptr_19:ptr->i32 
              #                    occupy a1 with temp_0_index_ptr_19
              #                    occupy a6 with 4000_0
    li      a6, 4000
    sw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          mu a_0:23 
              #                          a_0 = chi a_0:23 
              #                          new_var temp_1_index_ptr_19:ptr->i32 
              #                          temp_1_index_ptr_19 = getelementptr a_0:Array:i32:[Some(4096_0)] [Some(4000_0)] 
              #                    occupy a7 with temp_1_index_ptr_19
    li      a7, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    found literal reg Some(a6) already exist with 4000_0
              #                    occupy a6 with 4000_0
              #                    occupy s1 with _anonymous_of_a_0_0
    mul     s1,a2,a6
              #                    free a2
              #                    free a6
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy s2 with _anonymous_of_a_0_0
    la      s2, a
    add     a7,a7,s2
              #                    free s2
              #                    free a7
              #                          store 3_0:i32 temp_1_index_ptr_19:ptr->i32 
              #                    occupy a7 with temp_1_index_ptr_19
              #                    occupy s3 with 3_0
    li      s3, 3
    sw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          mu a_0:29 
              #                          a_0 = chi a_0:29 
              #                          new_var temp_2_index_ptr_19:ptr->i32 
              #                          temp_2_index_ptr_19 = getelementptr a_0:Array:i32:[Some(4096_0)] [Some(4095_0)] 
              #                    occupy s4 with temp_2_index_ptr_19
    li      s4, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy s5 with 4095_0
    li      s5, 4095
              #                    occupy s6 with _anonymous_of_a_0_0
    mul     s6,a2,s5
              #                    free a2
              #                    free s5
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
              #                    occupy s7 with _anonymous_of_a_0_0
    la      s7, a
    add     s4,s4,s7
              #                    free s7
              #                    free s4
              #                          store 7_0:i32 temp_2_index_ptr_19:ptr->i32 
              #                    occupy s4 with temp_2_index_ptr_19
              #                    occupy s8 with 7_0
    li      s8, 7
    sw      s8,0(s4)
              #                    free s8
              #                    free s4
              #                          mu a_0:35 
              #                          a_0 = chi a_0:35 
              #                          new_var temp_3_ptr2globl_19:Array:i32:[Some(4096_0)] 
              #                          temp_3_ptr2globl_19 = load *a_0:ptr->i32 
              #                    occupy s9 with *a_0
              #                       load label a as ptr to reg
    la      s9, a
              #                    occupy reg s9 with *a_0
              #                    occupy s10 with temp_3_ptr2globl_19
    lw      s10,0(s9)
              #                    free s10
              #                    free s9
              #                          new_var temp_4_array_ptr_19:ptr->i32 
              #                          temp_4_array_ptr_19 = getelementptr temp_3_ptr2globl_19:Array:i32:[Some(4096_0)] [Some(4095_0)] 
              #                    occupy s11 with temp_4_array_ptr_19
    li      s11, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    found literal reg Some(s5) already exist with 4095_0
              #                    occupy s5 with 4095_0
              #                    occupy a3 with _anonymous_of_temp_3_ptr2globl_19_0
    mul     a3,a2,s5
              #                    free a2
              #                    free s5
    add     s11,s11,a3
              #                    free a3
    slli s11,s11,2
    add     s11,s11,sp
              #                    occupy a2 with 49224_0
    li      a2, 49224
    li      a2, 49224
    add     s11,a2,s11
              #                    free a2
              #                    free s11
              #                          new_var temp_5_array_ele_19:i32 
              #                          temp_5_array_ele_19 = load temp_4_array_ptr_19:ptr->i32 
              #                    occupy s11 with temp_4_array_ptr_19
              #                    occupy a2 with temp_5_array_ele_19
    lw      a2,0(s11)
              #                    free a2
              #                    free s11
              #                          new_var temp_6_index_ptr_19:ptr->i32 
              #                          temp_6_index_ptr_19 = getelementptr b_17:ptr->i32 [Some(temp_5_array_ele_19)] 
              #                    occupy a3 with temp_6_index_ptr_19
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a2 with temp_5_array_ele_19
              #                    occupy a5 with _anonymous_of_b_17_0
    mul     a5,a4,a2
              #                    free a4
              #                    free a2
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a0 with b_17
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_7_ptr2globl_19:Array:i32:[Some(4096_0)] 
              #                          temp_7_ptr2globl_19 = load *a_0:ptr->i32 
              #                    occupy a4 with *a_0
              #                       load label a as ptr to reg
    la      a4, a
              #                    occupy reg a4 with *a_0
              #                    occupy a5 with temp_7_ptr2globl_19
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_8_array_ptr_19:ptr->i32 
              #                          temp_8_array_ptr_19 = getelementptr temp_7_ptr2globl_19:Array:i32:[Some(4096_0)] [Some(2216_0)] 
              #                    occupy a4 with temp_8_array_ptr_19
    li      a4, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with 2216_0
    li      s1, 2216
              #                    occupy s2 with _anonymous_of_temp_7_ptr2globl_19_0
    mul     s2,a6,s1
              #                    free a6
              #                    free s1
    add     a4,a4,s2
              #                    free s2
    slli a4,a4,2
    add     a4,a4,sp
              #                    occupy a6 with 32816_0
    li      a6, 32816
    li      a6, 32816
    add     a4,a6,a4
              #                    free a6
              #                    free a4
              #                          new_var temp_9_array_ele_19:i32 
              #                          temp_9_array_ele_19 = load temp_8_array_ptr_19:ptr->i32 
              #                    occupy a4 with temp_8_array_ptr_19
              #                    occupy a6 with temp_9_array_ele_19
    lw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                          new_var temp_10_arithop_19:i32 
              #                          temp_10_arithop_19 = Add i32 temp_9_array_ele_19, 9_0 
              #                    occupy a6 with temp_9_array_ele_19
              #                    occupy s1 with 9_0
    li      s1, 9
              #                    occupy s2 with temp_10_arithop_19
    add     s2,a6,s1
              #                    free a6
              #                    free s1
              #                    free s2
              #                          store temp_10_arithop_19:i32 temp_6_index_ptr_19:ptr->i32 
              #                    occupy a3 with temp_6_index_ptr_19
              #                    occupy s2 with temp_10_arithop_19
    sw      s2,0(a3)
              #                    free s2
              #                    free a3
              #                          mu b_17:62 
              #                          b_17 = chi b_17:62 
              #                          new_var temp_11_ptr2globl_19:Array:i32:[Some(4096_0)] 
              #                          temp_11_ptr2globl_19 = load *a_0:ptr->i32 
              #                    occupy s1 with *a_0
              #                       load label a as ptr to reg
    la      s1, a
              #                    occupy reg s1 with *a_0
              #                    occupy s3 with temp_11_ptr2globl_19
    lw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          new_var temp_12_array_ptr_19:ptr->i32 
              #                          temp_12_array_ptr_19 = getelementptr temp_11_ptr2globl_19:Array:i32:[Some(4096_0)] [Some(5_0)] 
              #                    occupy s1 with temp_12_array_ptr_19
    li      s1, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with 5_0
    li      s6, 5
              #                    occupy s7 with _anonymous_of_temp_11_ptr2globl_19_0
    mul     s7,s5,s6
              #                    free s5
              #                    free s6
    add     s1,s1,s7
              #                    free s7
    slli s1,s1,2
    add     s1,s1,sp
              #                    occupy s5 with 16416_0
    li      s5, 16416
    li      s5, 16416
    add     s1,s5,s1
              #                    free s5
              #                    free s1
              #                          new_var temp_13_array_ele_19:i32 
              #                          temp_13_array_ele_19 = load temp_12_array_ptr_19:ptr->i32 
              #                    occupy s1 with temp_12_array_ptr_19
              #                    occupy s5 with temp_13_array_ele_19
    lw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          new_var temp_14_ptr2globl_19:Array:i32:[Some(4096_0)] 
              #                          temp_14_ptr2globl_19 = load *a_0:ptr->i32 
              #                    occupy s6 with *a_0
              #                       load label a as ptr to reg
    la      s6, a
              #                    occupy reg s6 with *a_0
              #                    occupy s7 with temp_14_ptr2globl_19
    lw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          new_var temp_15_array_ptr_19:ptr->i32 
              #                          temp_15_array_ptr_19 = getelementptr temp_14_ptr2globl_19:Array:i32:[Some(4096_0)] [Some(temp_13_array_ele_19)] 
              #                    occupy s6 with temp_15_array_ptr_19
    li      s6, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s5 with temp_13_array_ele_19
              #                    occupy s9 with _anonymous_of_temp_14_ptr2globl_19_0
    mul     s9,s8,s5
              #                    free s8
              #                    free s5
    add     s6,s6,s9
              #                    free s9
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,20
              #                    free s6
              #                          new_var temp_16_array_ele_19:i32 
              #                          temp_16_array_ele_19 = load temp_15_array_ptr_19:ptr->i32 
              #                    occupy s6 with temp_15_array_ptr_19
              #                    occupy s8 with temp_16_array_ele_19
    lw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                          ret temp_16_array_ele_19 
              #                    load from ra_f1_0 in mem
              #                    occupy s9 with ra_f1_0
    li      s9, 65648
    add     s9,sp,s9
    ld      ra,0(s9)
              #                    free s9
              #                    load from s0_f1_0 in mem
              #                    store to b_17 in mem offset_illegal
              #                    occupy a0 with 65632_0
    li      a0, 65632
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with b_17
              #                    occupy a0 with s0_f1_0
    li      a0, 65640
    add     a0,sp,a0
    ld      s0,0(a0)
              #                    free a0
              #                    store to temp_16_array_ele_19 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_16_array_ele_19
              #                    store to s0_f1_0 in mem offset_illegal
              #                    occupy a0 with 65640_0
    li      a0, 65640
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with s0_f1_0
              #                    occupy a0 with temp_16_array_ele_19
              #                    load from temp_16_array_ele_19 in mem


    lw      a0,4(sp)
              #                    occupy s8 with 65656_0
    li      s8, 65656
    li      s8, 65656
    add     sp,s8,sp
              #                    free s8
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_0_index_ptr_19, tracked: true } |     a2:Freed { symidx: temp_5_array_ele_19, tracked: true } |     a3:Freed { symidx: temp_6_index_ptr_19, tracked: true } |     a4:Freed { symidx: temp_8_array_ptr_19, tracked: true } |     a5:Freed { symidx: temp_7_ptr2globl_19, tracked: true } |     a6:Freed { symidx: temp_9_array_ele_19, tracked: true } |     a7:Freed { symidx: temp_1_index_ptr_19, tracked: true } |     s10:Freed { symidx: temp_3_ptr2globl_19, tracked: true } |     s11:Freed { symidx: temp_4_array_ptr_19, tracked: true } |     s1:Freed { symidx: temp_12_array_ptr_19, tracked: true } |     s2:Freed { symidx: temp_10_arithop_19, tracked: true } |     s3:Freed { symidx: temp_11_ptr2globl_19, tracked: true } |     s4:Freed { symidx: temp_2_index_ptr_19, tracked: true } |     s5:Freed { symidx: temp_13_array_ele_19, tracked: true } |     s6:Freed { symidx: temp_15_array_ptr_19, tracked: true } |     s7:Freed { symidx: temp_14_ptr2globl_19, tracked: true } |     s9:Freed { symidx: ra_f1_0, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32888|s0_main:8 at 32880|temp_17_array_init_ptr:8 at 32872|temp_18_array_init_ptr:8 at 32864|temp_19_array_init_ptr:8 at 32856|temp_20_array_init_ptr:8 at 32848|temp_21_array_init_ptr:8 at 32840|temp_22_array_init_ptr:8 at 32832|b:16384 at 16448|temp_23_array_init_ptr:8 at 16440|temp_24_array_init_ptr:8 at 16432|temp_25_array_init_ptr:8 at 16424|temp_26_array_init_ptr:8 at 16416|c:16384 at 32|temp_27_array_ptr:8 at 24|temp_28_ret_of_f1:4 at 20|none:4 at 16|temp_29_array_ptr:8 at 8|temp_30_array_ele:4 at 4|none:4 at 0
              #                    occupy a0 with -32896_0
    li      a0, -32896
    li      a0, -32896
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 32888_0
    li      a1, 32888
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 32880_0
    li      a2, 32880
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 32896_0
    li      a3, 32896
    li      a3, 32896
    add     s0,a3,sp
              #                    free a3
              #                          alloc ptr->i32 temp_17_array_init_ptr_26 
              #                          alloc ptr->i32 temp_18_array_init_ptr_26 
              #                          alloc ptr->i32 temp_19_array_init_ptr_26 
              #                          alloc ptr->i32 temp_20_array_init_ptr_26 
              #                          alloc ptr->i32 temp_21_array_init_ptr_26 
              #                          alloc ptr->i32 temp_22_array_init_ptr_26 
              #                          alloc Array:i32:[Some(4_0), Some(1024_0)] b_26 
              #                          alloc ptr->i32 temp_23_array_init_ptr_26 
              #                          alloc ptr->i32 temp_24_array_init_ptr_26 
              #                          alloc ptr->i32 temp_25_array_init_ptr_26 
              #                          alloc ptr->i32 temp_26_array_init_ptr_26 
              #                          alloc Array:i32:[Some(1024_0), Some(4_0)] c_26 
              #                          alloc ptr->i32 temp_27_array_ptr_26 
              #                          alloc i32 temp_28_ret_of_f1_26 
              #                          alloc ptr->i32 temp_29_array_ptr_26 
              #                          alloc i32 temp_30_array_ele_26 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var b_26:Array:i32:[Some(4_0), Some(1024_0)] 
              #                          new_var temp_17_array_init_ptr_26:ptr->i32 
              #                          temp_17_array_init_ptr_26 = getelementptr b_26:Array:i32:[Some(4_0), Some(1024_0)] [Some(0_0), Some(4_0)] 
              #                    occupy a0 with temp_17_array_init_ptr_26
    li      a0, 0
              #                    occupy a1 with 1024_0
    li      a1, 1024
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_b_26_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 4_0
    li      a5, 4
              #                    occupy a6 with _anonymous_of_b_26_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a7 with 16448_0
    li      a7, 16448
    li      a7, 16448
    add     a0,a7,a0
              #                    free a7
              #                    free a0
              #                          store 5_0:i32 temp_17_array_init_ptr_26:ptr->Array:i32:[Some(1024_0)] 
              #                    occupy a0 with temp_17_array_init_ptr_26
              #                    occupy s1 with 5_0
    li      s1, 5
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                          mu b_26:89 
              #                          b_26 = chi b_26:89 
              #                          new_var temp_18_array_init_ptr_26:ptr->i32 
              #                          temp_18_array_init_ptr_26 = getelementptr b_26:Array:i32:[Some(4_0), Some(1024_0)] [Some(0_0), Some(1_0)] 
              #                    occupy s2 with temp_18_array_init_ptr_26
    li      s2, 0
              #                    found literal reg Some(a1) already exist with 1024_0
              #                    occupy a1 with 1024_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s3 with _anonymous_of_b_26_0
    mul     s3,a1,a2
              #                    free a1
              #                    free a2
    add     s2,s2,s3
              #                    free s3
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with _anonymous_of_b_26_0
    mul     s5,a4,s4
              #                    free a4
              #                    free s4
    add     s2,s2,s5
              #                    free s5
    slli s2,s2,2
    add     s2,s2,sp
              #                    found literal reg Some(a7) already exist with 16448_0
              #                    occupy a7 with 16448_0
    li      a7, 16448
    add     s2,a7,s2
              #                    free a7
              #                    free s2
              #                          store 2_0:i32 temp_18_array_init_ptr_26:ptr->Array:i32:[Some(1024_0)] 
              #                    occupy s2 with temp_18_array_init_ptr_26
              #                    occupy s6 with 2_0
    li      s6, 2
    sw      s6,0(s2)
              #                    free s6
              #                    free s2
              #                          mu b_26:95 
              #                          b_26 = chi b_26:95 
              #                          new_var temp_19_array_init_ptr_26:ptr->i32 
              #                          temp_19_array_init_ptr_26 = getelementptr b_26:Array:i32:[Some(4_0), Some(1024_0)] [Some(0_0), Some(5_0)] 
              #                    occupy s7 with temp_19_array_init_ptr_26
    li      s7, 0
              #                    found literal reg Some(a1) already exist with 1024_0
              #                    occupy a1 with 1024_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s8 with _anonymous_of_b_26_0
    mul     s8,a1,a2
              #                    free a1
              #                    free a2
    add     s7,s7,s8
              #                    free s8
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    found literal reg Some(s1) already exist with 5_0
              #                    occupy s1 with 5_0
              #                    occupy s9 with _anonymous_of_b_26_0
    mul     s9,s4,s1
              #                    free s4
              #                    free s1
    add     s7,s7,s9
              #                    free s9
    slli s7,s7,2
    add     s7,s7,sp
              #                    found literal reg Some(a7) already exist with 16448_0
              #                    occupy a7 with 16448_0
    li      a7, 16448
    add     s7,a7,s7
              #                    free a7
              #                    free s7
              #                          store 6_0:i32 temp_19_array_init_ptr_26:ptr->Array:i32:[Some(1024_0)] 
              #                    occupy s7 with temp_19_array_init_ptr_26
              #                    occupy s10 with 6_0
    li      s10, 6
    sw      s10,0(s7)
              #                    free s10
              #                    free s7
              #                          mu b_26:101 
              #                          b_26 = chi b_26:101 
              #                          new_var temp_20_array_init_ptr_26:ptr->i32 
              #                          temp_20_array_init_ptr_26 = getelementptr b_26:Array:i32:[Some(4_0), Some(1024_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s11 with temp_20_array_init_ptr_26
    li      s11, 0
              #                    found literal reg Some(a1) already exist with 1024_0
              #                    occupy a1 with 1024_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a3 with _anonymous_of_b_26_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     s11,s11,a3
              #                    free a3
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a1 with _anonymous_of_b_26_0
    mul     a1,s4,a2
              #                    free s4
              #                    free a2
    add     s11,s11,a1
              #                    free a1
    slli s11,s11,2
    add     s11,s11,sp
              #                    found literal reg Some(a7) already exist with 16448_0
              #                    occupy a7 with 16448_0
    li      a7, 16448
    add     s11,a7,s11
              #                    free a7
              #                    free s11
              #                          store 1_0:i32 temp_20_array_init_ptr_26:ptr->Array:i32:[Some(1024_0)] 
              #                    occupy s11 with temp_20_array_init_ptr_26
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
    sw      s4,0(s11)
              #                    free s4
              #                    free s11
              #                          mu b_26:107 
              #                          b_26 = chi b_26:107 
              #                          new_var temp_21_array_init_ptr_26:ptr->i32 
              #                          temp_21_array_init_ptr_26 = getelementptr b_26:Array:i32:[Some(4_0), Some(1024_0)] [Some(0_0), Some(2_0)] 
              #                    occupy a1 with temp_21_array_init_ptr_26
    li      a1, 0
              #                    occupy a2 with 1024_0
    li      a2, 1024
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with _anonymous_of_b_26_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    found literal reg Some(s6) already exist with 2_0
              #                    occupy s6 with 2_0
              #                    occupy a2 with _anonymous_of_b_26_0
    mul     a2,s4,s6
              #                    free s4
              #                    free s6
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
              #                    found literal reg Some(a7) already exist with 16448_0
              #                    occupy a7 with 16448_0
    li      a7, 16448
    add     a1,a7,a1
              #                    free a7
              #                    free a1
              #                          store 3_0:i32 temp_21_array_init_ptr_26:ptr->Array:i32:[Some(1024_0)] 
              #                    occupy a1 with temp_21_array_init_ptr_26
              #                    occupy a2 with 3_0
    li      a2, 3
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu b_26:113 
              #                          b_26 = chi b_26:113 
              #                          new_var temp_22_array_init_ptr_26:ptr->i32 
              #                          temp_22_array_init_ptr_26 = getelementptr b_26:Array:i32:[Some(4_0), Some(1024_0)] [Some(0_0), Some(3_0)] 
              #                    occupy a2 with temp_22_array_init_ptr_26
    li      a2, 0
              #                    occupy a3 with 1024_0
    li      a3, 1024
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_b_26_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy a3 with 3_0
    li      a3, 3
              #                    occupy a4 with _anonymous_of_b_26_0
    mul     a4,s4,a3
              #                    free s4
              #                    free a3
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
              #                    found literal reg Some(a7) already exist with 16448_0
              #                    occupy a7 with 16448_0
    li      a7, 16448
    add     a2,a7,a2
              #                    free a7
              #                    free a2
              #                          store 4_0:i32 temp_22_array_init_ptr_26:ptr->Array:i32:[Some(1024_0)] 
              #                    occupy a2 with temp_22_array_init_ptr_26
              #                    occupy a3 with 4_0
    li      a3, 4
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu b_26:119 
              #                          b_26 = chi b_26:119 
              #                          new_var c_26:Array:i32:[Some(1024_0), Some(4_0)] 
              #                          new_var temp_23_array_init_ptr_26:ptr->i32 
              #                          temp_23_array_init_ptr_26 = getelementptr c_26:Array:i32:[Some(1024_0), Some(4_0)] [Some(0_0), Some(3_0)] 
              #                    occupy a3 with temp_23_array_init_ptr_26
    li      a3, 0
              #                    occupy a4 with 4_0
    li      a4, 4
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with _anonymous_of_c_26_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a3,a3,a6
              #                    free a6
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy a5 with _anonymous_of_c_26_0
    mul     a5,s4,a4
              #                    free s4
              #                    free a4
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,32
              #                    free a3
              #                          store 4_0:i32 temp_23_array_init_ptr_26:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a3 with temp_23_array_init_ptr_26
              #                    occupy a4 with 4_0
    li      a4, 4
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu c_26:127 
              #                          c_26 = chi c_26:127 
              #                          new_var temp_24_array_init_ptr_26:ptr->i32 
              #                          temp_24_array_init_ptr_26 = getelementptr c_26:Array:i32:[Some(1024_0), Some(4_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a4 with temp_24_array_init_ptr_26
    li      a4, 0
              #                    occupy a5 with 4_0
    li      a5, 4
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with _anonymous_of_c_26_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a4,a4,a7
              #                    free a7
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with _anonymous_of_c_26_0
    mul     a6,s4,a5
              #                    free s4
              #                    free a5
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,32
              #                    free a4
              #                          store 2_0:i32 temp_24_array_init_ptr_26:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a4 with temp_24_array_init_ptr_26
              #                    found literal reg Some(s6) already exist with 2_0
              #                    occupy s6 with 2_0
    sw      s6,0(a4)
              #                    free s6
              #                    free a4
              #                          mu c_26:133 
              #                          c_26 = chi c_26:133 
              #                          new_var temp_25_array_init_ptr_26:ptr->i32 
              #                          temp_25_array_init_ptr_26 = getelementptr c_26:Array:i32:[Some(1024_0), Some(4_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a5 with temp_25_array_init_ptr_26
    li      a5, 0
              #                    occupy a6 with 4_0
    li      a6, 4
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s1 with _anonymous_of_c_26_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a5,a5,s1
              #                    free s1
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
              #                    occupy a6 with _anonymous_of_c_26_0
    mul     a6,s4,a7
              #                    free s4
              #                    free a7
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,32
              #                    free a5
              #                          store 1_0:i32 temp_25_array_init_ptr_26:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a5 with temp_25_array_init_ptr_26
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
    sw      s4,0(a5)
              #                    free s4
              #                    free a5
              #                          mu c_26:139 
              #                          c_26 = chi c_26:139 
              #                          new_var temp_26_array_init_ptr_26:ptr->i32 
              #                          temp_26_array_init_ptr_26 = getelementptr c_26:Array:i32:[Some(1024_0), Some(4_0)] [Some(0_0), Some(2_0)] 
              #                    occupy a6 with temp_26_array_init_ptr_26
    li      a6, 0
              #                    occupy a7 with 4_0
    li      a7, 4
              #                    occupy s1 with 0_0
    li      s1, 0
              #                    occupy s3 with _anonymous_of_c_26_0
    mul     s3,a7,s1
              #                    free a7
              #                    free s1
    add     a6,a6,s3
              #                    free s3
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    found literal reg Some(s6) already exist with 2_0
              #                    occupy s6 with 2_0
              #                    occupy a7 with _anonymous_of_c_26_0
    mul     a7,s4,s6
              #                    free s4
              #                    free s6
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,32
              #                    free a6
              #                          store 3_0:i32 temp_26_array_init_ptr_26:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a6 with temp_26_array_init_ptr_26
              #                    occupy a7 with 3_0
    li      a7, 3
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          mu c_26:145 
              #                          c_26 = chi c_26:145 
              #                          new_var temp_27_array_ptr_26:ptr->i32 
              #                          temp_27_array_ptr_26 = getelementptr c_26:Array:i32:[Some(1024_0), Some(4_0)] [Some(0_0)] 
              #                    occupy a7 with temp_27_array_ptr_26
    li      a7, 0
              #                    occupy s1 with 4_0
    li      s1, 4
              #                    occupy s3 with 0_0
    li      s3, 0
              #                    occupy s4 with _anonymous_of_c_26_0
    mul     s4,s1,s3
              #                    free s1
              #                    free s3
    add     a7,a7,s4
              #                    free s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,32
              #                    free a7
              #                          new_var temp_28_ret_of_f1_26:i32 
              #                          temp_28_ret_of_f1_26 =  Call i32 f1_0(temp_27_array_ptr_26) 
              #                    saved register dumping to mem
              #                    store to temp_18_array_init_ptr_26 in mem offset_illegal
              #                    occupy s1 with 32864_0
    li      s1, 32864
    add     s1,sp,s1
    sd      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_18_array_init_ptr_26
              #                    store to temp_19_array_init_ptr_26 in mem offset_illegal
              #                    occupy s2 with 32856_0
    li      s2, 32856
    add     s2,sp,s2
    sd      s7,0(s2)
              #                    free s2
              #                    release s7 with temp_19_array_init_ptr_26
              #                    store to temp_20_array_init_ptr_26 in mem offset_illegal
              #                    occupy s3 with 32848_0
    li      s3, 32848
    add     s3,sp,s3
    sd      s11,0(s3)
              #                    free s3
              #                    release s11 with temp_20_array_init_ptr_26
              #                    store to temp_17_array_init_ptr_26 in mem offset_illegal
              #                    occupy a0 with 32872_0
    li      a0, 32872
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_17_array_init_ptr_26
              #                    store to temp_21_array_init_ptr_26 in mem offset_illegal
              #                    occupy a0 with 32840_0
    li      a0, 32840
    add     a0,sp,a0
    sd      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_21_array_init_ptr_26
              #                    store to temp_22_array_init_ptr_26 in mem offset_illegal
              #                    occupy a1 with 32832_0
    li      a1, 32832
    add     a1,sp,a1
    sd      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_22_array_init_ptr_26
              #                    store to temp_23_array_init_ptr_26 in mem offset_illegal
              #                    occupy a2 with 16440_0
    li      a2, 16440
    add     a2,sp,a2
    sd      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_23_array_init_ptr_26
              #                    store to temp_24_array_init_ptr_26 in mem offset_illegal
              #                    occupy a3 with 16432_0
    li      a3, 16432
    add     a3,sp,a3
    sd      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_24_array_init_ptr_26
              #                    store to temp_25_array_init_ptr_26 in mem offset_illegal
              #                    occupy a4 with 16424_0
    li      a4, 16424
    add     a4,sp,a4
    sd      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_25_array_init_ptr_26
              #                    store to temp_26_array_init_ptr_26 in mem offset_illegal
              #                    occupy a5 with 16416_0
    li      a5, 16416
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_26_array_init_ptr_26
              #                    store to temp_27_array_ptr_26 in mem offset legal
    sd      a7,24(sp)
              #                    release a7 with temp_27_array_ptr_26
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_27_array_ptr_26_0
              #                    load from temp_27_array_ptr_26 in mem
    ld      a0,24(sp)
              #                    arg load ended


    call    f1
              #                    store to temp_28_ret_of_f1_26 in mem offset legal
    sw      a0,20(sp)
              #                           Call void putint_0(temp_28_ret_of_f1_26) 
              #                    saved register dumping to mem
              #                    store to temp_28_ret_of_f1_26 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_28_ret_of_f1_26
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_28_ret_of_f1_26_0
              #                    load from temp_28_ret_of_f1_26 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          new_var temp_29_array_ptr_26:ptr->i32 
              #                          temp_29_array_ptr_26 = getelementptr c_26:Array:i32:[Some(1024_0), Some(4_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a0 with temp_29_array_ptr_26
    li      a0, 0
              #                    occupy a1 with 4_0
    li      a1, 4
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with _anonymous_of_c_26_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with _anonymous_of_c_26_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,32
              #                    free a0
              #                          new_var temp_30_array_ele_26:i32 
              #                          temp_30_array_ele_26 = load temp_29_array_ptr_26:ptr->i32 
              #                    occupy a0 with temp_29_array_ptr_26
              #                    occupy a7 with temp_30_array_ele_26
    lw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                          ret temp_30_array_ele_26 
              #                    load from ra_main_0 in mem
              #                    occupy s1 with ra_main_0
    li      s1, 32888
    add     s1,sp,s1
    ld      ra,0(s1)
              #                    free s1
              #                    load from s0_main_0 in mem
              #                    occupy s2 with s0_main_0
    li      s2, 32880
    add     s2,sp,s2
    ld      s0,0(s2)
              #                    free s2
              #                    store to temp_30_array_ele_26 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_30_array_ele_26
              #                    store to temp_29_array_ptr_26 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_29_array_ptr_26
              #                    occupy a0 with temp_30_array_ele_26
              #                    load from temp_30_array_ele_26 in mem


    lw      a0,4(sp)
              #                    occupy a7 with 32896_0
    li      a7, 32896
    li      a7, 32896
    add     sp,a7,sp
              #                    free a7
              #                    free a0
    ret
              #                    regtab     s1:Freed { symidx: ra_main_0, tracked: true } |     s2:Freed { symidx: s0_main_0, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl a
              #                          global Array:i32:[Some(4096_0)] a_0 
    .type a,@object
a:
    .zero 16384
