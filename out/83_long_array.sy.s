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
              #                          Define long_array_0 [k_17] -> long_array_ret_0 
    .globl long_array
    .type long_array,@function
long_array:
              #                    mem layout:|ra_long_array:8 at 120392|s0_long_array:8 at 120384|k:4 at 120380|a1:40000 at 80380|a2:40000 at 40380|a3:40000 at 380|i:4 at 376|temp_0_cmp:1 at 375|none:7 at 368|temp_1_index_ptr:8 at 360|temp_2_arithop:4 at 356|temp_3_arithop:4 at 352|temp_4_arithop:4 at 348|temp_5_cmp:1 at 347|none:3 at 344|temp_6_index_ptr:8 at 336|temp_7_array_ptr:8 at 328|temp_8_array_ele:4 at 324|none:4 at 320|temp_9_array_ptr:8 at 312|temp_10_array_ele:4 at 308|temp_11_arithop:4 at 304|temp_12_arithop:4 at 300|temp_13_arithop:4 at 296|temp_14_cmp:1 at 295|none:7 at 288|temp_15_index_ptr:8 at 280|temp_16_array_ptr:8 at 272|temp_17_array_ele:4 at 268|none:4 at 264|temp_18_array_ptr:8 at 256|temp_19_array_ele:4 at 252|none:4 at 248|temp_20_array_ptr:8 at 240|temp_21_array_ele:4 at 236|temp_22_arithop:4 at 232|temp_23_arithop:4 at 228|temp_24_arithop:4 at 224|temp_25_arithop:4 at 220|ans:4 at 216|temp_26_cmp:1 at 215|temp_27_cmp:1 at 214|none:6 at 208|temp_28_array_ptr:8 at 200|temp_29_array_ele:4 at 196|temp_30_arithop:4 at 192|temp_31_arithop:4 at 188|temp_32_arithop:4 at 184|temp_33_cmp:1 at 183|none:3 at 180|j:4 at 176|temp_34_cmp:1 at 175|none:7 at 168|temp_35_array_ptr:8 at 160|temp_36_array_ele:4 at 156|none:4 at 152|temp_37_array_ptr:8 at 144|temp_38_array_ele:4 at 140|temp_39_arithop:4 at 136|temp_40_arithop:4 at 132|temp_41_arithop:4 at 128|temp_42_cmp:1 at 127|none:3 at 124|j:4 at 120|temp_43_cmp:1 at 119|temp_44_cmp:1 at 118|none:6 at 112|temp_45_array_ptr:8 at 104|temp_46_array_ele:4 at 100|none:4 at 96|temp_47_array_ptr:8 at 88|temp_48_array_ele:4 at 84|temp_49_arithop:4 at 80|temp_50_arithop:4 at 76|temp_51_arithop:4 at 72|temp_52_array_ptr:8 at 64|temp_53_array_ele:4 at 60|none:4 at 56|temp_54_array_ptr:8 at 48|temp_55_array_ele:4 at 44|temp_56_arithop:4 at 40|temp_57_arithop:4 at 36|temp_58_arithop:4 at 32|temp_59_arithop:4 at 28|none:4 at 24|temp_60_array_ptr:8 at 16|temp_61_array_ele:4 at 12|temp_62_arithop:4 at 8|temp_63_arithop:4 at 4|temp_64_arithop:4 at 0
              #                    occupy a1 with -120400_0
    li      a1, -120400
    li      a1, -120400
    add     sp,a1,sp
              #                    free a1
              #                    store to ra_long_array_0 in mem offset_illegal
              #                    occupy a2 with 120392_0
    li      a2, 120392
    add     a2,sp,a2
    sd      ra,0(a2)
              #                    free a2
              #                    store to s0_long_array_0 in mem offset_illegal
              #                    occupy a3 with 120384_0
    li      a3, 120384
    add     a3,sp,a3
    sd      s0,0(a3)
              #                    free a3
              #                    occupy a4 with 120400_0
    li      a4, 120400
    li      a4, 120400
    add     s0,a4,sp
              #                    free a4
              #                          alloc Array:i32:[Some(10000_0)] a1_19 
              #                          alloc Array:i32:[Some(10000_0)] a2_19 
              #                          alloc Array:i32:[Some(10000_0)] a3_19 
              #                          alloc i32 i_19 
              #                          alloc i1 temp_0_cmp_24 
              #                          alloc ptr->i32 temp_1_index_ptr_26 
              #                          alloc i32 temp_2_arithop_26 
              #                          alloc i32 temp_3_arithop_26 
              #                          alloc i32 temp_4_arithop_26 
              #                          alloc i1 temp_5_cmp_30 
              #                          alloc ptr->i32 temp_6_index_ptr_32 
              #                          alloc ptr->i32 temp_7_array_ptr_32 
              #                          alloc i32 temp_8_array_ele_32 
              #                          alloc ptr->i32 temp_9_array_ptr_32 
              #                          alloc i32 temp_10_array_ele_32 
              #                          alloc i32 temp_11_arithop_32 
              #                          alloc i32 temp_12_arithop_32 
              #                          alloc i32 temp_13_arithop_32 
              #                          alloc i1 temp_14_cmp_36 
              #                          alloc ptr->i32 temp_15_index_ptr_38 
              #                          alloc ptr->i32 temp_16_array_ptr_38 
              #                          alloc i32 temp_17_array_ele_38 
              #                          alloc ptr->i32 temp_18_array_ptr_38 
              #                          alloc i32 temp_19_array_ele_38 
              #                          alloc ptr->i32 temp_20_array_ptr_38 
              #                          alloc i32 temp_21_array_ele_38 
              #                          alloc i32 temp_22_arithop_38 
              #                          alloc i32 temp_23_arithop_38 
              #                          alloc i32 temp_24_arithop_38 
              #                          alloc i32 temp_25_arithop_38 
              #                          alloc i32 ans_19 
              #                          alloc i1 temp_26_cmp_43 
              #                          alloc i1 temp_27_cmp_46 
              #                          alloc ptr->i32 temp_28_array_ptr_48 
              #                          alloc i32 temp_29_array_ele_48 
              #                          alloc i32 temp_30_arithop_48 
              #                          alloc i32 temp_31_arithop_48 
              #                          alloc i32 temp_32_arithop_45 
              #                          alloc i1 temp_33_cmp_51 
              #                          alloc i32 j_53 
              #                          alloc i1 temp_34_cmp_55 
              #                          alloc ptr->i32 temp_35_array_ptr_57 
              #                          alloc i32 temp_36_array_ele_57 
              #                          alloc ptr->i32 temp_37_array_ptr_57 
              #                          alloc i32 temp_38_array_ele_57 
              #                          alloc i32 temp_39_arithop_57 
              #                          alloc i32 temp_40_arithop_57 
              #                          alloc i32 temp_41_arithop_57 
              #                          alloc i1 temp_42_cmp_61 
              #                          alloc i32 j_63 
              #                          alloc i1 temp_43_cmp_65 
              #                          alloc i1 temp_44_cmp_68 
              #                          alloc ptr->i32 temp_45_array_ptr_70 
              #                          alloc i32 temp_46_array_ele_70 
              #                          alloc ptr->i32 temp_47_array_ptr_70 
              #                          alloc i32 temp_48_array_ele_70 
              #                          alloc i32 temp_49_arithop_70 
              #                          alloc i32 temp_50_arithop_70 
              #                          alloc i32 temp_51_arithop_70 
              #                          alloc ptr->i32 temp_52_array_ptr_73 
              #                          alloc i32 temp_53_array_ele_73 
              #                          alloc ptr->i32 temp_54_array_ptr_73 
              #                          alloc i32 temp_55_array_ele_73 
              #                          alloc i32 temp_56_arithop_73 
              #                          alloc i32 temp_57_arithop_73 
              #                          alloc i32 temp_58_arithop_73 
              #                          alloc i32 temp_59_arithop_73 
              #                          alloc ptr->i32 temp_60_array_ptr_77 
              #                          alloc i32 temp_61_array_ele_77 
              #                          alloc i32 temp_62_arithop_77 
              #                          alloc i32 temp_63_arithop_77 
              #                          alloc i32 temp_64_arithop_77 
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var a1_19:Array:i32:[Some(10000_0)] 
              #                          new_var a2_19:Array:i32:[Some(10000_0)] 
              #                          new_var a3_19:Array:i32:[Some(10000_0)] 
              #                          i_19 = i32 0_0 
              #                    occupy a1 with i_19
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } | 
              #                          label while.head_25: 
.while.head_25:
              #                          new_var temp_0_cmp_24:i1 
              #                          temp_0_cmp_24 = icmp i32 Slt i_19, 10000_0 
              #                    occupy a1 with i_19
              #                    occupy a2 with 10000_0
    li      a2, 10000
              #                    occupy a3 with temp_0_cmp_24
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_0_cmp_24, label while.body_25, label while.exit_25 
              #                    occupy a3 with temp_0_cmp_24
              #                    free a3
              #                    occupy a3 with temp_0_cmp_24
    bnez    a3, .while.body_25
              #                    free a3
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } | 
              #                          label while.body_25: 
.while.body_25:
              #                          new_var temp_1_index_ptr_26:ptr->i32 
              #                          temp_1_index_ptr_26 = getelementptr a1_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
              #                    occupy a2 with temp_1_index_ptr_26
    li      a2, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a1 with i_19
              #                    occupy a5 with _anonymous_of_a1_19_0
    mul     a5,a4,a1
              #                    free a4
              #                    free a1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a6 with 80380_0
    li      a6, 80380
    li      a6, 80380
    add     a2,a6,a2
              #                    free a6
              #                    free a2
              #                          new_var temp_2_arithop_26:i32 
              #                          temp_2_arithop_26 = Mul i32 i_19, i_19 
              #                    occupy a1 with i_19
              #                    occupy a1 with i_19
              #                    occupy a7 with temp_2_arithop_26
    mul     a7,a1,a1
              #                    free a1
              #                    free a1
              #                    free a7
              #                          new_var temp_3_arithop_26:i32 
              #                          temp_3_arithop_26 = Mod i32 temp_2_arithop_26, 10_0 
              #                    occupy a7 with temp_2_arithop_26
              #                    occupy s1 with 10_0
    li      s1, 10
              #                    occupy s2 with temp_3_arithop_26
              #                    load from temp_3_arithop_26 in mem


    lw      s2,352(sp)
    rem     s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                          store temp_3_arithop_26:i32 temp_1_index_ptr_26:ptr->i32 
              #                    occupy a2 with temp_1_index_ptr_26
              #                    occupy s2 with temp_3_arithop_26
    sw      s2,0(a2)
              #                    free s2
              #                    free a2
              #                          mu a1_19:44 
              #                          a1_19 = chi a1_19:44 
              #                          new_var temp_4_arithop_26:i32 
              #                          temp_4_arithop_26 = Add i32 i_19, 1_0 
              #                    occupy a1 with i_19
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s3 with temp_4_arithop_26
    add     s3,a1,a4
              #                    free a1
              #                    free a4
              #                    free s3
              #                          i_19 = i32 temp_4_arithop_26 
              #                    occupy s3 with temp_4_arithop_26
              #                    occupy a1 with i_19
    mv      a1, s3
              #                    free s3
              #                    free a1
              #                          jump label: while.head_25 
              #                    store to temp_2_arithop_26 in mem offset legal
    sw      a7,356(sp)
              #                    release a7 with temp_2_arithop_26
              #                    store to temp_4_arithop_26 in mem offset legal
    sw      s3,348(sp)
              #                    release s3 with temp_4_arithop_26
              #                    store to temp_1_index_ptr_26 in mem offset legal
    sd      a2,360(sp)
              #                    release a2 with temp_1_index_ptr_26
              #                    store to temp_0_cmp_24 in mem offset legal
    sb      a3,375(sp)
              #                    release a3 with temp_0_cmp_24
              #                    store to temp_3_arithop_26 in mem offset legal
    sw      s2,352(sp)
              #                    release s2 with temp_3_arithop_26
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } | 
              #                          label while.exit_25: 
.while.exit_25:
              #                          i_19 = i32 0_0 
              #                    occupy a1 with i_19
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_31 
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } | 
              #                          label while.head_31: 
.while.head_31:
              #                          new_var temp_5_cmp_30:i1 
              #                          temp_5_cmp_30 = icmp i32 Slt i_19, 10000_0 
              #                    occupy a1 with i_19
              #                    occupy a2 with 10000_0
    li      a2, 10000
              #                    occupy a4 with temp_5_cmp_30
    slt     a4,a1,a2
              #                    free a1
              #                    free a2
              #                    free a4
              #                          br i1 temp_5_cmp_30, label while.body_31, label while.exit_31 
              #                    occupy a4 with temp_5_cmp_30
              #                    free a4
              #                    occupy a4 with temp_5_cmp_30
    bnez    a4, .while.body_31
              #                    free a4
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } | 
              #                          label while.body_31: 
.while.body_31:
              #                          new_var temp_6_index_ptr_32:ptr->i32 
              #                          temp_6_index_ptr_32 = getelementptr a2_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
              #                    occupy a2 with temp_6_index_ptr_32
    li      a2, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with i_19
              #                    occupy a6 with _anonymous_of_a2_19_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a7 with 40380_0
    li      a7, 40380
    li      a7, 40380
    add     a2,a7,a2
              #                    free a7
              #                    free a2
              #                          new_var temp_7_array_ptr_32:ptr->i32 
              #                          temp_7_array_ptr_32 = getelementptr a1_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
              #                    occupy s1 with temp_7_array_ptr_32
    li      s1, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a1 with i_19
              #                    occupy s2 with _anonymous_of_a1_19_0
    mul     s2,a5,a1
              #                    free a5
              #                    free a1
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
              #                    occupy s3 with 80380_0
    li      s3, 80380
    li      s3, 80380
    add     s1,s3,s1
              #                    free s3
              #                    free s1
              #                          new_var temp_8_array_ele_32:i32 
              #                          temp_8_array_ele_32 = load temp_7_array_ptr_32:ptr->i32 
              #                    occupy s1 with temp_7_array_ptr_32
              #                    occupy s4 with temp_8_array_ele_32
    lw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          new_var temp_9_array_ptr_32:ptr->i32 
              #                          temp_9_array_ptr_32 = getelementptr a1_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
              #                    occupy s5 with temp_9_array_ptr_32
    li      s5, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a1 with i_19
              #                    occupy s6 with _anonymous_of_a1_19_0
    mul     s6,a5,a1
              #                    free a5
              #                    free a1
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
    add     s5,s5,sp
              #                    found literal reg Some(s3) already exist with 80380_0
              #                    occupy s3 with 80380_0
    li      s3, 80380
    add     s5,s3,s5
              #                    free s3
              #                    free s5
              #                          new_var temp_10_array_ele_32:i32 
              #                          temp_10_array_ele_32 = load temp_9_array_ptr_32:ptr->i32 
              #                    occupy s5 with temp_9_array_ptr_32
              #                    occupy s7 with temp_10_array_ele_32
    lw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          new_var temp_11_arithop_32:i32 
              #                          temp_11_arithop_32 = Mul i32 temp_10_array_ele_32, temp_8_array_ele_32 
              #                    occupy s7 with temp_10_array_ele_32
              #                    occupy s4 with temp_8_array_ele_32
              #                    occupy s8 with temp_11_arithop_32
    mul     s8,s7,s4
              #                    free s7
              #                    free s4
              #                    free s8
              #                          new_var temp_12_arithop_32:i32 
              #                          temp_12_arithop_32 = Mod i32 temp_11_arithop_32, 10_0 
              #                    occupy s8 with temp_11_arithop_32
              #                    occupy s9 with 10_0
    li      s9, 10
              #                    occupy s10 with temp_12_arithop_32
              #                    load from temp_12_arithop_32 in mem


    lw      s10,300(sp)
    rem     s10,s8,s9
              #                    free s8
              #                    free s9
              #                    free s10
              #                          store temp_12_arithop_32:i32 temp_6_index_ptr_32:ptr->i32 
              #                    occupy a2 with temp_6_index_ptr_32
              #                    occupy s10 with temp_12_arithop_32
    sw      s10,0(a2)
              #                    free s10
              #                    free a2
              #                          mu a2_19:81 
              #                          a2_19 = chi a2_19:81 
              #                          new_var temp_13_arithop_32:i32 
              #                          temp_13_arithop_32 = Add i32 i_19, 1_0 
              #                    occupy a1 with i_19
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s11 with temp_13_arithop_32
    add     s11,a1,a5
              #                    free a1
              #                    free a5
              #                    free s11
              #                          i_19 = i32 temp_13_arithop_32 
              #                    occupy s11 with temp_13_arithop_32
              #                    occupy a1 with i_19
    mv      a1, s11
              #                    free s11
              #                    free a1
              #                          jump label: while.head_31 
              #                    store to temp_13_arithop_32 in mem offset legal
    sw      s11,296(sp)
              #                    release s11 with temp_13_arithop_32
              #                    store to temp_12_arithop_32 in mem offset legal
    sw      s10,300(sp)
              #                    release s10 with temp_12_arithop_32
              #                    store to temp_5_cmp_30 in mem offset legal
    sb      a4,347(sp)
              #                    release a4 with temp_5_cmp_30
              #                    store to temp_6_index_ptr_32 in mem offset legal
    sd      a2,336(sp)
              #                    release a2 with temp_6_index_ptr_32
              #                    store to temp_9_array_ptr_32 in mem offset legal
    sd      s5,312(sp)
              #                    release s5 with temp_9_array_ptr_32
              #                    store to temp_11_arithop_32 in mem offset legal
    sw      s8,304(sp)
              #                    release s8 with temp_11_arithop_32
              #                    store to temp_7_array_ptr_32 in mem offset legal
    sd      s1,328(sp)
              #                    release s1 with temp_7_array_ptr_32
              #                    store to temp_8_array_ele_32 in mem offset legal
    sw      s4,324(sp)
              #                    release s4 with temp_8_array_ele_32
              #                    store to temp_10_array_ele_32 in mem offset legal
    sw      s7,308(sp)
              #                    release s7 with temp_10_array_ele_32
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } | 
              #                          label while.exit_31: 
.while.exit_31:
              #                          i_19 = i32 0_0 
              #                    occupy a1 with i_19
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_37 
    j       .while.head_37
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } | 
              #                          label while.head_37: 
.while.head_37:
              #                          new_var temp_14_cmp_36:i1 
              #                          temp_14_cmp_36 = icmp i32 Slt i_19, 10000_0 
              #                    occupy a1 with i_19
              #                    occupy a2 with 10000_0
    li      a2, 10000
              #                    occupy a5 with temp_14_cmp_36
    slt     a5,a1,a2
              #                    free a1
              #                    free a2
              #                    free a5
              #                          br i1 temp_14_cmp_36, label while.body_37, label while.exit_37 
              #                    occupy a5 with temp_14_cmp_36
              #                    free a5
              #                    occupy a5 with temp_14_cmp_36
    bnez    a5, .while.body_37
              #                    free a5
    j       .while.exit_37
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } | 
              #                          label while.body_37: 
.while.body_37:
              #                          new_var temp_15_index_ptr_38:ptr->i32 
              #                          temp_15_index_ptr_38 = getelementptr a3_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
              #                    occupy a2 with temp_15_index_ptr_38
    li      a2, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a1 with i_19
              #                    occupy a7 with _anonymous_of_a3_19_0
    mul     a7,a6,a1
              #                    free a6
              #                    free a1
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,380
              #                    free a2
              #                          new_var temp_16_array_ptr_38:ptr->i32 
              #                          temp_16_array_ptr_38 = getelementptr a1_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
              #                    occupy s1 with temp_16_array_ptr_38
    li      s1, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a1 with i_19
              #                    occupy s2 with _anonymous_of_a1_19_0
    mul     s2,a6,a1
              #                    free a6
              #                    free a1
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
              #                    occupy s3 with 80380_0
    li      s3, 80380
    li      s3, 80380
    add     s1,s3,s1
              #                    free s3
              #                    free s1
              #                          new_var temp_17_array_ele_38:i32 
              #                          temp_17_array_ele_38 = load temp_16_array_ptr_38:ptr->i32 
              #                    occupy s1 with temp_16_array_ptr_38
              #                    occupy s4 with temp_17_array_ele_38
    lw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          new_var temp_18_array_ptr_38:ptr->i32 
              #                          temp_18_array_ptr_38 = getelementptr a2_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
              #                    occupy s5 with temp_18_array_ptr_38
    li      s5, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a1 with i_19
              #                    occupy s6 with _anonymous_of_a2_19_0
    mul     s6,a6,a1
              #                    free a6
              #                    free a1
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
    add     s5,s5,sp
              #                    occupy s7 with 40380_0
    li      s7, 40380
    li      s7, 40380
    add     s5,s7,s5
              #                    free s7
              #                    free s5
              #                          new_var temp_19_array_ele_38:i32 
              #                          temp_19_array_ele_38 = load temp_18_array_ptr_38:ptr->i32 
              #                    occupy s5 with temp_18_array_ptr_38
              #                    occupy s8 with temp_19_array_ele_38
    lw      s8,0(s5)
              #                    free s8
              #                    free s5
              #                          new_var temp_20_array_ptr_38:ptr->i32 
              #                          temp_20_array_ptr_38 = getelementptr a2_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
              #                    occupy s9 with temp_20_array_ptr_38
    li      s9, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a1 with i_19
              #                    occupy s10 with _anonymous_of_a2_19_0
    mul     s10,a6,a1
              #                    free a6
              #                    free a1
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
    add     s9,s9,sp
              #                    found literal reg Some(s7) already exist with 40380_0
              #                    occupy s7 with 40380_0
    li      s7, 40380
    add     s9,s7,s9
              #                    free s7
              #                    free s9
              #                          new_var temp_21_array_ele_38:i32 
              #                          temp_21_array_ele_38 = load temp_20_array_ptr_38:ptr->i32 
              #                    occupy s9 with temp_20_array_ptr_38
              #                    occupy s11 with temp_21_array_ele_38
    lw      s11,0(s9)
              #                    free s11
              #                    free s9
              #                          new_var temp_22_arithop_38:i32 
              #                          temp_22_arithop_38 = Mul i32 temp_21_array_ele_38, temp_19_array_ele_38 
              #                    occupy s11 with temp_21_array_ele_38
              #                    occupy s8 with temp_19_array_ele_38
              #                    occupy a6 with temp_22_arithop_38
    mul     a6,s11,s8
              #                    free s11
              #                    free s8
              #                    free a6
              #                          new_var temp_23_arithop_38:i32 
              #                          temp_23_arithop_38 = Mod i32 temp_22_arithop_38, 100_0 
              #                    occupy a6 with temp_22_arithop_38
              #                    occupy a7 with 100_0
    li      a7, 100
              #                    occupy s2 with temp_23_arithop_38
              #                    load from temp_23_arithop_38 in mem


    lw      s2,228(sp)
    rem     s2,a6,a7
              #                    free a6
              #                    free a7
              #                    free s2
              #                          new_var temp_24_arithop_38:i32 
              #                          temp_24_arithop_38 = Add i32 temp_23_arithop_38, temp_17_array_ele_38 
              #                    occupy s2 with temp_23_arithop_38
              #                    occupy s4 with temp_17_array_ele_38
              #                    occupy a7 with temp_24_arithop_38
    add     a7,s2,s4
              #                    free s2
              #                    free s4
              #                    free a7
              #                          store temp_24_arithop_38:i32 temp_15_index_ptr_38:ptr->i32 
              #                    occupy a2 with temp_15_index_ptr_38
              #                    occupy a7 with temp_24_arithop_38
    sw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          mu a3_19:127 
              #                          a3_19 = chi a3_19:127 
              #                          new_var temp_25_arithop_38:i32 
              #                          temp_25_arithop_38 = Add i32 i_19, 1_0 
              #                    occupy a1 with i_19
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s6 with temp_25_arithop_38
    add     s6,a1,s3
              #                    free a1
              #                    free s3
              #                    free s6
              #                          i_19 = i32 temp_25_arithop_38 
              #                    occupy s6 with temp_25_arithop_38
              #                    occupy a1 with i_19
    mv      a1, s6
              #                    free s6
              #                    free a1
              #                          jump label: while.head_37 
              #                    store to temp_24_arithop_38 in mem offset legal
    sw      a7,224(sp)
              #                    release a7 with temp_24_arithop_38
              #                    store to temp_21_array_ele_38 in mem offset legal
    sw      s11,236(sp)
              #                    release s11 with temp_21_array_ele_38
              #                    store to temp_14_cmp_36 in mem offset legal
    sb      a5,295(sp)
              #                    release a5 with temp_14_cmp_36
              #                    store to temp_15_index_ptr_38 in mem offset legal
    sd      a2,280(sp)
              #                    release a2 with temp_15_index_ptr_38
              #                    store to temp_18_array_ptr_38 in mem offset legal
    sd      s5,256(sp)
              #                    release s5 with temp_18_array_ptr_38
              #                    store to temp_19_array_ele_38 in mem offset legal
    sw      s8,252(sp)
              #                    release s8 with temp_19_array_ele_38
              #                    store to temp_23_arithop_38 in mem offset legal
    sw      s2,228(sp)
              #                    release s2 with temp_23_arithop_38
              #                    store to temp_22_arithop_38 in mem offset legal
    sw      a6,232(sp)
              #                    release a6 with temp_22_arithop_38
              #                    store to temp_25_arithop_38 in mem offset legal
    sw      s6,220(sp)
              #                    release s6 with temp_25_arithop_38
              #                    store to temp_16_array_ptr_38 in mem offset legal
    sd      s1,272(sp)
              #                    release s1 with temp_16_array_ptr_38
              #                    store to temp_17_array_ele_38 in mem offset legal
    sw      s4,268(sp)
              #                    release s4 with temp_17_array_ele_38
              #                    store to temp_20_array_ptr_38 in mem offset legal
    sd      s9,240(sp)
              #                    release s9 with temp_20_array_ptr_38
    j       .while.head_37
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } | 
              #                          label while.exit_37: 
.while.exit_37:
              #                          ans_19 = i32 0_0 
              #                    occupy a2 with ans_19
    li      a2, 0
              #                    free a2
              #                          i_19 = i32 0_0 
              #                    occupy a1 with i_19
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_44 
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } | 
              #                          label while.head_44: 
.while.head_44:
              #                          new_var temp_26_cmp_43:i1 
              #                          temp_26_cmp_43 = icmp i32 Slt i_19, 10000_0 
              #                    occupy a1 with i_19
              #                    occupy a6 with 10000_0
    li      a6, 10000
              #                    occupy a7 with temp_26_cmp_43
    slt     a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                          br i1 temp_26_cmp_43, label while.body_44, label while.exit_44 
              #                    occupy a7 with temp_26_cmp_43
              #                    free a7
              #                    occupy a7 with temp_26_cmp_43
    bnez    a7, .while.body_44
              #                    free a7
    j       .while.exit_44
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } | 
              #                          label while.body_44: 
.while.body_44:
              #                          new_var temp_27_cmp_46:i1 
              #                          temp_27_cmp_46 = icmp i32 Slt i_19, 10_0 
              #                    occupy a1 with i_19
              #                    occupy a6 with 10_0
    li      a6, 10
              #                    occupy s1 with temp_27_cmp_46
    slt     s1,a1,a6
              #                    free a1
              #                    free a6
              #                    free s1
              #                          br i1 temp_27_cmp_46, label branch_true_47, label branch_false_47 
              #                    occupy s1 with temp_27_cmp_46
              #                    free s1
              #                    occupy s1 with temp_27_cmp_46
    bnez    s1, .branch_true_47
              #                    free s1
    j       .branch_false_47
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } | 
              #                          label branch_true_47: 
.branch_true_47:
              #                          new_var temp_28_array_ptr_48:ptr->i32 
              #                          temp_28_array_ptr_48 = getelementptr a3_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
              #                    occupy a6 with temp_28_array_ptr_48
    li      a6, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a1 with i_19
              #                    occupy s3 with _anonymous_of_a3_19_0
    mul     s3,s2,a1
              #                    free s2
              #                    free a1
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,380
              #                    free a6
              #                          new_var temp_29_array_ele_48:i32 
              #                          temp_29_array_ele_48 = load temp_28_array_ptr_48:ptr->i32 
              #                    occupy a6 with temp_28_array_ptr_48
              #                    occupy s4 with temp_29_array_ele_48
    lw      s4,0(a6)
              #                    free s4
              #                    free a6
              #                          new_var temp_30_arithop_48:i32 
              #                          temp_30_arithop_48 = Add i32 ans_19, temp_29_array_ele_48 
              #                    occupy a2 with ans_19
              #                    occupy s4 with temp_29_array_ele_48
              #                    occupy s5 with temp_30_arithop_48
    add     s5,a2,s4
              #                    free a2
              #                    free s4
              #                    free s5
              #                          new_var temp_31_arithop_48:i32 
              #                          temp_31_arithop_48 = Mod i32 temp_30_arithop_48, 1333_0 
              #                    occupy s5 with temp_30_arithop_48
              #                    occupy s6 with 1333_0
    li      s6, 1333
              #                    occupy s7 with temp_31_arithop_48
              #                    load from temp_31_arithop_48 in mem


    lw      s7,188(sp)
    rem     s7,s5,s6
              #                    free s5
              #                    free s6
              #                    free s7
              #                          ans_19 = i32 temp_31_arithop_48 
              #                    occupy s7 with temp_31_arithop_48
              #                    occupy a2 with ans_19
    mv      a2, s7
              #                    free s7
              #                    free a2
              #                           Call void putint_0(ans_19) 
              #                    saved register dumping to mem
              #                    store to temp_27_cmp_46 in mem offset legal
    sb      s1,214(sp)
              #                    release s1 with temp_27_cmp_46
              #                    store to temp_29_array_ele_48 in mem offset legal
    sw      s4,196(sp)
              #                    release s4 with temp_29_array_ele_48
              #                    store to temp_30_arithop_48 in mem offset legal
    sw      s5,192(sp)
              #                    release s5 with temp_30_arithop_48
              #                    store to temp_31_arithop_48 in mem offset legal
    sw      s7,188(sp)
              #                    release s7 with temp_31_arithop_48
              #                    store to k_17 in mem offset_illegal
              #                    occupy a0 with 120380_0
    li      a0, 120380
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with k_17
              #                    store to i_19 in mem offset legal
    sw      a1,376(sp)
              #                    release a1 with i_19
              #                    store to ans_19 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with ans_19
              #                    store to temp_0_cmp_24 in mem offset legal
    sb      a3,375(sp)
              #                    release a3 with temp_0_cmp_24
              #                    store to temp_5_cmp_30 in mem offset legal
    sb      a4,347(sp)
              #                    release a4 with temp_5_cmp_30
              #                    store to temp_14_cmp_36 in mem offset legal
    sb      a5,295(sp)
              #                    release a5 with temp_14_cmp_36
              #                    store to temp_28_array_ptr_48 in mem offset legal
    sd      a6,200(sp)
              #                    release a6 with temp_28_array_ptr_48
              #                    store to temp_26_cmp_43 in mem offset legal
    sb      a7,215(sp)
              #                    release a7 with temp_26_cmp_43
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_ans_19_0
              #                    load from ans_19 in mem


    lw      a0,216(sp)
              #                    arg load ended


    call    putint
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } | 
              #                          label branch_false_47: 
.branch_false_47:
              #                          new_var temp_33_cmp_51:i1 
              #                          temp_33_cmp_51 = icmp i32 Slt i_19, 20_0 
              #                    occupy a1 with i_19
              #                    occupy a6 with 20_0
    li      a6, 20
              #                    occupy s2 with temp_33_cmp_51
    slt     s2,a1,a6
              #                    free a1
              #                    free a6
              #                    free s2
              #                          br i1 temp_33_cmp_51, label branch_true_52, label branch_false_52 
              #                    occupy s2 with temp_33_cmp_51
              #                    free s2
              #                    occupy s2 with temp_33_cmp_51
    bnez    s2, .branch_true_52
              #                    free s2
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } | 
              #                          label branch_true_52: 
.branch_true_52:
              #                          j_53 = i32 5000_0 
              #                    occupy a6 with j_53
    li      a6, 5000
              #                    free a6
              #                          jump label: while.head_56 
    j       .while.head_56
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: j_53, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } | 
              #                          label while.head_56: 
.while.head_56:
              #                          new_var temp_34_cmp_55:i1 
              #                          temp_34_cmp_55 = icmp i32 Slt j_53, 10000_0 
              #                    occupy a6 with j_53
              #                    occupy s3 with 10000_0
    li      s3, 10000
              #                    occupy s4 with temp_34_cmp_55
    slt     s4,a6,s3
              #                    free a6
              #                    free s3
              #                    free s4
              #                          br i1 temp_34_cmp_55, label while.body_56, label while.exit_56 
              #                    occupy s4 with temp_34_cmp_55
              #                    free s4
              #                    occupy s4 with temp_34_cmp_55
    bnez    s4, .while.body_56
              #                    free s4
    j       .while.exit_56
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: j_53, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } |     s4:Freed { symidx: temp_34_cmp_55, tracked: true } | 
              #                          label while.body_56: 
.while.body_56:
              #                          new_var temp_35_array_ptr_57:ptr->i32 
              #                          temp_35_array_ptr_57 = getelementptr a1_19:Array:i32:[Some(10000_0)] [Some(j_53)] 
              #                    occupy s3 with temp_35_array_ptr_57
    li      s3, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy a6 with j_53
              #                    occupy s6 with _anonymous_of_a1_19_0
    mul     s6,s5,a6
              #                    free s5
              #                    free a6
    add     s3,s3,s6
              #                    free s6
    slli s3,s3,2
    add     s3,s3,sp
              #                    occupy s7 with 80380_0
    li      s7, 80380
    li      s7, 80380
    add     s3,s7,s3
              #                    free s7
              #                    free s3
              #                          new_var temp_36_array_ele_57:i32 
              #                          temp_36_array_ele_57 = load temp_35_array_ptr_57:ptr->i32 
              #                    occupy s3 with temp_35_array_ptr_57
              #                    occupy s8 with temp_36_array_ele_57
    lw      s8,0(s3)
              #                    free s8
              #                    free s3
              #                          new_var temp_37_array_ptr_57:ptr->i32 
              #                          temp_37_array_ptr_57 = getelementptr a3_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
              #                    occupy s9 with temp_37_array_ptr_57
    li      s9, 0
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    occupy a1 with i_19
              #                    occupy s10 with _anonymous_of_a3_19_0
    mul     s10,s5,a1
              #                    free s5
              #                    free a1
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,380
              #                    free s9
              #                          new_var temp_38_array_ele_57:i32 
              #                          temp_38_array_ele_57 = load temp_37_array_ptr_57:ptr->i32 
              #                    occupy s9 with temp_37_array_ptr_57
              #                    occupy s11 with temp_38_array_ele_57
    lw      s11,0(s9)
              #                    free s11
              #                    free s9
              #                          new_var temp_39_arithop_57:i32 
              #                          temp_39_arithop_57 = Add i32 ans_19, temp_38_array_ele_57 
              #                    occupy a2 with ans_19
              #                    occupy s11 with temp_38_array_ele_57
              #                    occupy s5 with temp_39_arithop_57
    add     s5,a2,s11
              #                    free a2
              #                    free s11
              #                    free s5
              #                          new_var temp_40_arithop_57:i32 
              #                          temp_40_arithop_57 = Sub i32 temp_39_arithop_57, temp_36_array_ele_57 
              #                    occupy s5 with temp_39_arithop_57
              #                    occupy s8 with temp_36_array_ele_57
              #                    occupy s6 with temp_40_arithop_57
              #                    regtab:    a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: j_53, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s10:Freed { symidx: _anonymous_of_a3_19_0, tracked: false } |     s11:Freed { symidx: temp_38_array_ele_57, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } |     s3:Freed { symidx: temp_35_array_ptr_57, tracked: true } |     s4:Freed { symidx: temp_34_cmp_55, tracked: true } |     s5:Occupied { symidx: temp_39_arithop_57, tracked: true, occupy_count: 1 } |     s6:Occupied { symidx: temp_40_arithop_57, tracked: true, occupy_count: 1 } |     s7:Freed { symidx: 80380_0, tracked: false } |     s8:Occupied { symidx: temp_36_array_ele_57, tracked: true, occupy_count: 1 } |     s9:Freed { symidx: temp_37_array_ptr_57, tracked: true } | 


    sub     s6,s5,s8
              #                    free s5
              #                    free s8
              #                    free s6
              #                          ans_19 = i32 temp_40_arithop_57 
              #                    occupy s6 with temp_40_arithop_57
              #                    occupy a2 with ans_19
    mv      a2, s6
              #                    free s6
              #                    free a2
              #                          new_var temp_41_arithop_57:i32 
              #                          temp_41_arithop_57 = Add i32 j_53, 1_0 
              #                    occupy a6 with j_53
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s10 with temp_41_arithop_57
    add     s10,a6,s7
              #                    free a6
              #                    free s7
              #                    free s10
              #                          j_53 = i32 temp_41_arithop_57 
              #                    occupy s10 with temp_41_arithop_57
              #                    occupy a6 with j_53
    mv      a6, s10
              #                    free s10
              #                    free a6
              #                          jump label: while.head_56 
              #                    store to temp_38_array_ele_57 in mem offset legal
    sw      s11,140(sp)
              #                    release s11 with temp_38_array_ele_57
              #                    store to temp_41_arithop_57 in mem offset legal
    sw      s10,128(sp)
              #                    release s10 with temp_41_arithop_57
              #                    store to temp_35_array_ptr_57 in mem offset legal
    sd      s3,160(sp)
              #                    release s3 with temp_35_array_ptr_57
              #                    store to temp_39_arithop_57 in mem offset legal
    sw      s5,136(sp)
              #                    release s5 with temp_39_arithop_57
              #                    store to temp_36_array_ele_57 in mem offset legal
    sw      s8,156(sp)
              #                    release s8 with temp_36_array_ele_57
              #                    store to temp_40_arithop_57 in mem offset legal
    sw      s6,132(sp)
              #                    release s6 with temp_40_arithop_57
              #                    store to temp_34_cmp_55 in mem offset legal
    sb      s4,175(sp)
              #                    release s4 with temp_34_cmp_55
              #                    store to temp_37_array_ptr_57 in mem offset legal
    sd      s9,144(sp)
              #                    release s9 with temp_37_array_ptr_57
    j       .while.head_56
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: j_53, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } |     s4:Freed { symidx: temp_34_cmp_55, tracked: true } | 
              #                          label while.exit_56: 
.while.exit_56:
              #                           Call void putint_0(ans_19) 
              #                    saved register dumping to mem
              #                    store to temp_27_cmp_46 in mem offset legal
    sb      s1,214(sp)
              #                    release s1 with temp_27_cmp_46
              #                    store to temp_33_cmp_51 in mem offset legal
    sb      s2,183(sp)
              #                    release s2 with temp_33_cmp_51
              #                    store to temp_34_cmp_55 in mem offset legal
    sb      s4,175(sp)
              #                    release s4 with temp_34_cmp_55
              #                    store to k_17 in mem offset_illegal
              #                    occupy a0 with 120380_0
    li      a0, 120380
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with k_17
              #                    store to i_19 in mem offset legal
    sw      a1,376(sp)
              #                    release a1 with i_19
              #                    store to ans_19 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with ans_19
              #                    store to temp_0_cmp_24 in mem offset legal
    sb      a3,375(sp)
              #                    release a3 with temp_0_cmp_24
              #                    store to temp_5_cmp_30 in mem offset legal
    sb      a4,347(sp)
              #                    release a4 with temp_5_cmp_30
              #                    store to temp_14_cmp_36 in mem offset legal
    sb      a5,295(sp)
              #                    release a5 with temp_14_cmp_36
              #                    store to j_53 in mem offset legal
    sw      a6,176(sp)
              #                    release a6 with j_53
              #                    store to temp_26_cmp_43 in mem offset legal
    sb      a7,215(sp)
              #                    release a7 with temp_26_cmp_43
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_ans_19_0
              #                    load from ans_19 in mem


    lw      a0,216(sp)
              #                    arg load ended


    call    putint
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } | 
              #                          label branch_false_52: 
.branch_false_52:
              #                          new_var temp_42_cmp_61:i1 
              #                          temp_42_cmp_61 = icmp i32 Slt i_19, 30_0 
              #                    occupy a1 with i_19
              #                    occupy a6 with 30_0
    li      a6, 30
              #                    occupy s3 with temp_42_cmp_61
    slt     s3,a1,a6
              #                    free a1
              #                    free a6
              #                    free s3
              #                          br i1 temp_42_cmp_61, label branch_true_62, label branch_false_62 
              #                    occupy s3 with temp_42_cmp_61
              #                    free s3
              #                    occupy s3 with temp_42_cmp_61
    bnez    s3, .branch_true_62
              #                    free s3
    j       .branch_false_62
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } |     s3:Freed { symidx: temp_42_cmp_61, tracked: true } | 
              #                          label branch_true_62: 
.branch_true_62:
              #                          j_63 = i32 5000_0 
              #                    occupy a6 with j_63
    li      a6, 5000
              #                    free a6
              #                          jump label: while.head_66 
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: j_63, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } |     s3:Freed { symidx: temp_42_cmp_61, tracked: true } | 
              #                          label while.head_66: 
.while.head_66:
              #                          new_var temp_43_cmp_65:i1 
              #                          temp_43_cmp_65 = icmp i32 Slt j_63, 10000_0 
              #                    occupy a6 with j_63
              #                    occupy s4 with 10000_0
    li      s4, 10000
              #                    occupy s5 with temp_43_cmp_65
    slt     s5,a6,s4
              #                    free a6
              #                    free s4
              #                    free s5
              #                          br i1 temp_43_cmp_65, label while.body_66, label while.exit_66 
              #                    occupy s5 with temp_43_cmp_65
              #                    free s5
              #                    occupy s5 with temp_43_cmp_65
    bnez    s5, .while.body_66
              #                    free s5
    j       .while.exit_66
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: j_63, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } |     s3:Freed { symidx: temp_42_cmp_61, tracked: true } |     s5:Freed { symidx: temp_43_cmp_65, tracked: true } | 
              #                          label while.body_66: 
.while.body_66:
              #                          new_var temp_44_cmp_68:i1 
              #                          temp_44_cmp_68 = icmp i32 Sgt j_63, 2233_0 
              #                    occupy a6 with j_63
              #                    occupy s4 with 2233_0
    li      s4, 2233
              #                    occupy s6 with temp_44_cmp_68
    slt     s6,s4,a6
              #                    free a6
              #                    free s4
              #                    free s6
              #                          br i1 temp_44_cmp_68, label branch_true_69, label branch_false_69 
              #                    occupy s6 with temp_44_cmp_68
              #                    free s6
              #                    occupy s6 with temp_44_cmp_68
    bnez    s6, .branch_true_69
              #                    free s6
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: j_63, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } |     s3:Freed { symidx: temp_42_cmp_61, tracked: true } |     s5:Freed { symidx: temp_43_cmp_65, tracked: true } |     s6:Freed { symidx: temp_44_cmp_68, tracked: true } | 
              #                          label branch_true_69: 
.branch_true_69:
              #                          new_var temp_45_array_ptr_70:ptr->i32 
              #                          temp_45_array_ptr_70 = getelementptr a1_19:Array:i32:[Some(10000_0)] [Some(j_63)] 
              #                    occupy s4 with temp_45_array_ptr_70
    li      s4, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy a6 with j_63
              #                    occupy s8 with _anonymous_of_a1_19_0
    mul     s8,s7,a6
              #                    free s7
              #                    free a6
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
    add     s4,s4,sp
              #                    occupy s9 with 80380_0
    li      s9, 80380
    li      s9, 80380
    add     s4,s9,s4
              #                    free s9
              #                    free s4
              #                          new_var temp_46_array_ele_70:i32 
              #                          temp_46_array_ele_70 = load temp_45_array_ptr_70:ptr->i32 
              #                    occupy s4 with temp_45_array_ptr_70
              #                    occupy s10 with temp_46_array_ele_70
    lw      s10,0(s4)
              #                    free s10
              #                    free s4
              #                          new_var temp_47_array_ptr_70:ptr->i32 
              #                          temp_47_array_ptr_70 = getelementptr a2_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
              #                    occupy s11 with temp_47_array_ptr_70
    li      s11, 0
              #                    found literal reg Some(s7) already exist with 1_0
              #                    occupy s7 with 1_0
              #                    occupy a1 with i_19
              #                    occupy s8 with _anonymous_of_a2_19_0
    mul     s8,s7,a1
              #                    free s7
              #                    free a1
    add     s11,s11,s8
              #                    free s8
    slli s11,s11,2
    add     s11,s11,sp
              #                    occupy s7 with 40380_0
    li      s7, 40380
    li      s7, 40380
    add     s11,s7,s11
              #                    free s7
              #                    free s11
              #                          new_var temp_48_array_ele_70:i32 
              #                          temp_48_array_ele_70 = load temp_47_array_ptr_70:ptr->i32 
              #                    occupy s11 with temp_47_array_ptr_70
              #                    occupy s7 with temp_48_array_ele_70
    lw      s7,0(s11)
              #                    free s7
              #                    free s11
              #                          new_var temp_49_arithop_70:i32 
              #                          temp_49_arithop_70 = Add i32 ans_19, temp_48_array_ele_70 
              #                    occupy a2 with ans_19
              #                    occupy s7 with temp_48_array_ele_70
              #                    occupy s8 with temp_49_arithop_70
    add     s8,a2,s7
              #                    free a2
              #                    free s7
              #                    free s8
              #                          new_var temp_50_arithop_70:i32 
              #                          temp_50_arithop_70 = Sub i32 temp_49_arithop_70, temp_46_array_ele_70 
              #                    occupy s8 with temp_49_arithop_70
              #                    occupy s10 with temp_46_array_ele_70
              #                    occupy s9 with temp_50_arithop_70
              #                    regtab:    a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: j_63, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s10:Occupied { symidx: temp_46_array_ele_70, tracked: true, occupy_count: 1 } |     s11:Freed { symidx: temp_47_array_ptr_70, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } |     s3:Freed { symidx: temp_42_cmp_61, tracked: true } |     s4:Freed { symidx: temp_45_array_ptr_70, tracked: true } |     s5:Freed { symidx: temp_43_cmp_65, tracked: true } |     s6:Freed { symidx: temp_44_cmp_68, tracked: true } |     s7:Freed { symidx: temp_48_array_ele_70, tracked: true } |     s8:Occupied { symidx: temp_49_arithop_70, tracked: true, occupy_count: 1 } |     s9:Occupied { symidx: temp_50_arithop_70, tracked: true, occupy_count: 1 } | 


    sub     s9,s8,s10
              #                    free s8
              #                    free s10
              #                    free s9
              #                          ans_19 = i32 temp_50_arithop_70 
              #                    occupy s9 with temp_50_arithop_70
              #                    occupy a2 with ans_19
    mv      a2, s9
              #                    free s9
              #                    free a2
              #                          new_var temp_51_arithop_70:i32 
              #                          temp_51_arithop_70 = Add i32 j_63, 1_0 
              #                    occupy a6 with j_63
              #                    store to k_17 in mem offset_illegal
              #                    occupy a0 with 120380_0
    li      a0, 120380
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with k_17
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to i_19 in mem offset legal
    sw      a1,376(sp)
              #                    release a1 with i_19
              #                    occupy a1 with temp_51_arithop_70
    add     a1,a6,a0
              #                    free a6
              #                    free a0
              #                    free a1
              #                          j_63 = i32 temp_51_arithop_70 
              #                    occupy a1 with temp_51_arithop_70
              #                    occupy a6 with j_63
    mv      a6, a1
              #                    free a1
              #                    free a6
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: j_63, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } |     s3:Freed { symidx: temp_42_cmp_61, tracked: true } |     s5:Freed { symidx: temp_43_cmp_65, tracked: true } |     s6:Freed { symidx: temp_44_cmp_68, tracked: true } | 
              #                          label branch_false_69: 
.branch_false_69:
              #                          new_var temp_52_array_ptr_73:ptr->i32 
              #                          temp_52_array_ptr_73 = getelementptr a3_19:Array:i32:[Some(10000_0)] [Some(j_63)] 
              #                    occupy s4 with temp_52_array_ptr_73
    li      s4, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy a6 with j_63
              #                    occupy s8 with _anonymous_of_a3_19_0
    mul     s8,s7,a6
              #                    free s7
              #                    free a6
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,380
              #                    free s4
              #                          new_var temp_53_array_ele_73:i32 
              #                          temp_53_array_ele_73 = load temp_52_array_ptr_73:ptr->i32 
              #                    occupy s4 with temp_52_array_ptr_73
              #                    occupy s9 with temp_53_array_ele_73
    lw      s9,0(s4)
              #                    free s9
              #                    free s4
              #                          new_var temp_54_array_ptr_73:ptr->i32 
              #                          temp_54_array_ptr_73 = getelementptr a1_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
              #                    occupy s10 with temp_54_array_ptr_73
    li      s10, 0
              #                    found literal reg Some(s7) already exist with 1_0
              #                    occupy s7 with 1_0
              #                    occupy a1 with i_19
              #                    occupy s11 with _anonymous_of_a1_19_0
    mul     s11,s7,a1
              #                    free s7
              #                    free a1
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
    add     s10,s10,sp
              #                    occupy s7 with 80380_0
    li      s7, 80380
    li      s7, 80380
    add     s10,s7,s10
              #                    free s7
              #                    free s10
              #                          new_var temp_55_array_ele_73:i32 
              #                          temp_55_array_ele_73 = load temp_54_array_ptr_73:ptr->i32 
              #                    occupy s10 with temp_54_array_ptr_73
              #                    occupy s7 with temp_55_array_ele_73
    lw      s7,0(s10)
              #                    free s7
              #                    free s10
              #                          new_var temp_56_arithop_73:i32 
              #                          temp_56_arithop_73 = Add i32 ans_19, temp_55_array_ele_73 
              #                    occupy a2 with ans_19
              #                    occupy s7 with temp_55_array_ele_73
              #                    occupy s8 with temp_56_arithop_73
    add     s8,a2,s7
              #                    free a2
              #                    free s7
              #                    free s8
              #                          new_var temp_57_arithop_73:i32 
              #                          temp_57_arithop_73 = Add i32 temp_56_arithop_73, temp_53_array_ele_73 
              #                    occupy s8 with temp_56_arithop_73
              #                    occupy s9 with temp_53_array_ele_73
              #                    occupy s11 with temp_57_arithop_73
    add     s11,s8,s9
              #                    free s8
              #                    free s9
              #                    free s11
              #                          new_var temp_58_arithop_73:i32 
              #                          temp_58_arithop_73 = Mod i32 temp_57_arithop_73, 13333_0 
              #                    occupy s11 with temp_57_arithop_73
              #                    store to k_17 in mem offset_illegal
              #                    occupy a0 with 120380_0
    li      a0, 120380
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with k_17
              #                    occupy a0 with 13333_0
    li      a0, 13333
              #                    store to i_19 in mem offset legal
    sw      a1,376(sp)
              #                    release a1 with i_19
              #                    occupy a1 with temp_58_arithop_73
              #                    load from temp_58_arithop_73 in mem


    lw      a1,32(sp)
    rem     a1,s11,a0
              #                    free s11
              #                    free a0
              #                    free a1
              #                          ans_19 = i32 temp_58_arithop_73 
              #                    occupy a1 with temp_58_arithop_73
              #                    occupy a2 with ans_19
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          new_var temp_59_arithop_73:i32 
              #                          temp_59_arithop_73 = Add i32 j_63, 2_0 
              #                    occupy a6 with j_63
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    store to temp_58_arithop_73 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with temp_58_arithop_73
              #                    occupy a1 with temp_59_arithop_73
    add     a1,a6,a0
              #                    free a6
              #                    free a0
              #                    free a1
              #                          j_63 = i32 temp_59_arithop_73 
              #                    occupy a1 with temp_59_arithop_73
              #                    occupy a6 with j_63
    mv      a6, a1
              #                    free a1
              #                    free a6
              #                          jump label: L2_0 
              #                    store to temp_57_arithop_73 in mem offset legal
    sw      s11,36(sp)
              #                    release s11 with temp_57_arithop_73
              #                    store to temp_54_array_ptr_73 in mem offset legal
    sd      s10,48(sp)
              #                    release s10 with temp_54_array_ptr_73
              #                    store to temp_56_arithop_73 in mem offset legal
    sw      s8,40(sp)
              #                    release s8 with temp_56_arithop_73
              #                    store to temp_59_arithop_73 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with temp_59_arithop_73
              #                    store to temp_52_array_ptr_73 in mem offset legal
    sd      s4,64(sp)
              #                    release s4 with temp_52_array_ptr_73
              #                    store to temp_53_array_ele_73 in mem offset legal
    sw      s9,60(sp)
              #                    release s9 with temp_53_array_ele_73
              #                    store to temp_55_array_ele_73 in mem offset legal
    sw      s7,44(sp)
              #                    release s7 with temp_55_array_ele_73
              #                    occupy s11 with _anonymous_of_temp_47_array_ptr_70_0
              #                    load from temp_47_array_ptr_70 in mem
    ld      s11,88(sp)
              #                    occupy s10 with _anonymous_of_temp_46_array_ele_70_0
              #                    load from temp_46_array_ele_70 in mem


    lw      s10,100(sp)
              #                    occupy s8 with _anonymous_of_temp_49_arithop_70_0
              #                    load from temp_49_arithop_70 in mem


    lw      s8,80(sp)
              #                    occupy a1 with _anonymous_of_temp_51_arithop_70_0
              #                    load from temp_51_arithop_70 in mem


    lw      a1,72(sp)
              #                    occupy s4 with _anonymous_of_temp_45_array_ptr_70_0
              #                    load from temp_45_array_ptr_70 in mem
    ld      s4,104(sp)
              #                    occupy s9 with _anonymous_of_temp_50_arithop_70_0
              #                    load from temp_50_arithop_70 in mem


    lw      s9,76(sp)
              #                    occupy s7 with _anonymous_of_temp_48_array_ele_70_0
              #                    load from temp_48_array_ele_70 in mem


    lw      s7,84(sp)
    j       .L2_0
              #                    regtab     a1:Freed { symidx: temp_51_arithop_70, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: j_63, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s10:Freed { symidx: temp_46_array_ele_70, tracked: true } |     s11:Freed { symidx: temp_47_array_ptr_70, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } |     s3:Freed { symidx: temp_42_cmp_61, tracked: true } |     s4:Freed { symidx: temp_45_array_ptr_70, tracked: true } |     s5:Freed { symidx: temp_43_cmp_65, tracked: true } |     s6:Freed { symidx: temp_44_cmp_68, tracked: true } |     s7:Freed { symidx: temp_48_array_ele_70, tracked: true } |     s8:Freed { symidx: temp_49_arithop_70, tracked: true } |     s9:Freed { symidx: temp_50_arithop_70, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          jump label: while.head_66 
              #                    store to temp_47_array_ptr_70 in mem offset legal
    sd      s11,88(sp)
              #                    release s11 with temp_47_array_ptr_70
              #                    store to temp_46_array_ele_70 in mem offset legal
    sw      s10,100(sp)
              #                    release s10 with temp_46_array_ele_70
              #                    store to temp_43_cmp_65 in mem offset legal
    sb      s5,119(sp)
              #                    release s5 with temp_43_cmp_65
              #                    store to temp_49_arithop_70 in mem offset legal
    sw      s8,80(sp)
              #                    release s8 with temp_49_arithop_70
              #                    store to temp_44_cmp_68 in mem offset legal
    sb      s6,118(sp)
              #                    release s6 with temp_44_cmp_68
              #                    store to temp_51_arithop_70 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with temp_51_arithop_70
              #                    store to temp_45_array_ptr_70 in mem offset legal
    sd      s4,104(sp)
              #                    release s4 with temp_45_array_ptr_70
              #                    store to temp_50_arithop_70 in mem offset legal
    sw      s9,76(sp)
              #                    release s9 with temp_50_arithop_70
              #                    store to temp_48_array_ele_70 in mem offset legal
    sw      s7,84(sp)
              #                    release s7 with temp_48_array_ele_70
              #                    occupy a0 with _anonymous_of_k_17_0
              #                    load from k_17 in mem

              #                    occupy a1 with k_17
    li      a1, 120380
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    store to k_17 in mem offset_illegal
              #                    occupy a1 with 120380_0
    li      a1, 120380
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with k_17
              #                    occupy a1 with _anonymous_of_i_19_0
              #                    load from i_19 in mem


    lw      a1,376(sp)
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: j_63, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } |     s3:Freed { symidx: temp_42_cmp_61, tracked: true } |     s5:Freed { symidx: temp_43_cmp_65, tracked: true } | 
              #                          label while.exit_66: 
.while.exit_66:
              #                           Call void putint_0(ans_19) 
              #                    saved register dumping to mem
              #                    store to temp_27_cmp_46 in mem offset legal
    sb      s1,214(sp)
              #                    release s1 with temp_27_cmp_46
              #                    store to temp_33_cmp_51 in mem offset legal
    sb      s2,183(sp)
              #                    release s2 with temp_33_cmp_51
              #                    store to temp_42_cmp_61 in mem offset legal
    sb      s3,127(sp)
              #                    release s3 with temp_42_cmp_61
              #                    store to temp_43_cmp_65 in mem offset legal
    sb      s5,119(sp)
              #                    release s5 with temp_43_cmp_65
              #                    store to k_17 in mem offset_illegal
              #                    occupy a0 with 120380_0
    li      a0, 120380
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with k_17
              #                    store to i_19 in mem offset legal
    sw      a1,376(sp)
              #                    release a1 with i_19
              #                    store to ans_19 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with ans_19
              #                    store to temp_0_cmp_24 in mem offset legal
    sb      a3,375(sp)
              #                    release a3 with temp_0_cmp_24
              #                    store to temp_5_cmp_30 in mem offset legal
    sb      a4,347(sp)
              #                    release a4 with temp_5_cmp_30
              #                    store to temp_14_cmp_36 in mem offset legal
    sb      a5,295(sp)
              #                    release a5 with temp_14_cmp_36
              #                    store to j_63 in mem offset legal
    sw      a6,120(sp)
              #                    release a6 with j_63
              #                    store to temp_26_cmp_43 in mem offset legal
    sb      a7,215(sp)
              #                    release a7 with temp_26_cmp_43
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_ans_19_0
              #                    load from ans_19 in mem


    lw      a0,216(sp)
              #                    arg load ended


    call    putint
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: temp_27_cmp_46, tracked: true } |     s2:Freed { symidx: temp_33_cmp_51, tracked: true } |     s3:Freed { symidx: temp_42_cmp_61, tracked: true } | 
              #                          label branch_false_62: 
.branch_false_62:
              #                          new_var temp_60_array_ptr_77:ptr->i32 
              #                          temp_60_array_ptr_77 = getelementptr a3_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
              #                    occupy a6 with temp_60_array_ptr_77
    li      a6, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a1 with i_19
              #                    occupy s5 with _anonymous_of_a3_19_0
    mul     s5,s4,a1
              #                    free s4
              #                    free a1
    add     a6,a6,s5
              #                    free s5
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,380
              #                    free a6
              #                          new_var temp_61_array_ele_77:i32 
              #                          temp_61_array_ele_77 = load temp_60_array_ptr_77:ptr->i32 
              #                    occupy a6 with temp_60_array_ptr_77
              #                    occupy s6 with temp_61_array_ele_77
    lw      s6,0(a6)
              #                    free s6
              #                    free a6
              #                          new_var temp_62_arithop_77:i32 
              #                          temp_62_arithop_77 = Mul i32 temp_61_array_ele_77, k_17 
              #                    occupy s6 with temp_61_array_ele_77
              #                    occupy a0 with k_17
              #                    occupy s7 with temp_62_arithop_77
    mul     s7,s6,a0
              #                    free s6
              #                    free a0
              #                    free s7
              #                          new_var temp_63_arithop_77:i32 
              #                          temp_63_arithop_77 = Add i32 ans_19, temp_62_arithop_77 
              #                    occupy a2 with ans_19
              #                    occupy s7 with temp_62_arithop_77
              #                    occupy s8 with temp_63_arithop_77
    add     s8,a2,s7
              #                    free a2
              #                    free s7
              #                    free s8
              #                          new_var temp_64_arithop_77:i32 
              #                          temp_64_arithop_77 = Mod i32 temp_63_arithop_77, 99988_0 
              #                    occupy s8 with temp_63_arithop_77
              #                    occupy s9 with 99988_0
    li      s9, 99988
              #                    occupy s10 with temp_64_arithop_77
              #                    load from temp_64_arithop_77 in mem


    lw      s10,0(sp)
    rem     s10,s8,s9
              #                    free s8
              #                    free s9
              #                    free s10
              #                          ans_19 = i32 temp_64_arithop_77 
              #                    occupy s10 with temp_64_arithop_77
              #                    occupy a2 with ans_19
    mv      a2, s10
              #                    free s10
              #                    free a2
              #                          jump label: L3_0 
              #                    store to temp_26_cmp_43 in mem offset legal
    sb      a7,215(sp)
              #                    release a7 with temp_26_cmp_43
              #                    store to temp_64_arithop_77 in mem offset legal
    sw      s10,0(sp)
              #                    release s10 with temp_64_arithop_77
              #                    store to temp_42_cmp_61 in mem offset legal
    sb      s3,127(sp)
              #                    release s3 with temp_42_cmp_61
              #                    store to temp_14_cmp_36 in mem offset legal
    sb      a5,295(sp)
              #                    release a5 with temp_14_cmp_36
              #                    store to k_17 in mem offset_illegal
              #                    occupy a0 with 120380_0
    li      a0, 120380
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with k_17
              #                    store to temp_5_cmp_30 in mem offset legal
    sb      a4,347(sp)
              #                    release a4 with temp_5_cmp_30
              #                    store to ans_19 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with ans_19
              #                    store to temp_63_arithop_77 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_63_arithop_77
              #                    store to temp_0_cmp_24 in mem offset legal
    sb      a3,375(sp)
              #                    release a3 with temp_0_cmp_24
              #                    store to temp_33_cmp_51 in mem offset legal
    sb      s2,183(sp)
              #                    release s2 with temp_33_cmp_51
              #                    store to temp_60_array_ptr_77 in mem offset legal
    sd      a6,16(sp)
              #                    release a6 with temp_60_array_ptr_77
              #                    store to temp_61_array_ele_77 in mem offset legal
    sw      s6,12(sp)
              #                    release s6 with temp_61_array_ele_77
              #                    store to i_19 in mem offset legal
    sw      a1,376(sp)
              #                    release a1 with i_19
              #                    store to temp_27_cmp_46 in mem offset legal
    sb      s1,214(sp)
              #                    release s1 with temp_27_cmp_46
              #                    store to temp_62_arithop_77 in mem offset legal
    sw      s7,8(sp)
              #                    release s7 with temp_62_arithop_77
    j       .L3_0
              #                    regtab 
              #                          label L3_0: 
.L3_0:
              #                    regtab 
              #                          label L4_0: 
.L4_0:
              #                    regtab 
              #                          label L5_0: 
.L5_0:
              #                    regtab 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_32_arithop_45:i32 
              #                          temp_32_arithop_45 = Add i32 i_19, 1_0 
              #                    occupy a0 with i_19
              #                    load from i_19 in mem


    lw      a0,376(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_32_arithop_45
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_19 = i32 temp_32_arithop_45 
              #                    occupy a2 with temp_32_arithop_45
              #                    occupy a0 with i_19
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_44 
              #                    store to i_19 in mem offset legal
    sw      a0,376(sp)
              #                    release a0 with i_19
              #                    store to temp_32_arithop_45 in mem offset legal
    sw      a2,184(sp)
              #                    release a2 with temp_32_arithop_45
              #                    occupy a5 with _anonymous_of_temp_14_cmp_36_0
              #                    load from temp_14_cmp_36 in mem
    lb      a5,295(sp)
              #                    occupy a0 with _anonymous_of_k_17_0
              #                    load from k_17 in mem

              #                    occupy a1 with k_17
    li      a1, 120380
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    occupy a4 with _anonymous_of_temp_5_cmp_30_0
              #                    load from temp_5_cmp_30 in mem
    lb      a4,347(sp)
              #                    occupy a2 with _anonymous_of_ans_19_0
              #                    load from ans_19 in mem


    lw      a2,216(sp)
              #                    occupy a3 with _anonymous_of_temp_0_cmp_24_0
              #                    load from temp_0_cmp_24 in mem
    lb      a3,375(sp)
              #                    store to k_17 in mem offset_illegal
              #                    occupy a1 with 120380_0
    li      a1, 120380
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with k_17
              #                    occupy a1 with _anonymous_of_i_19_0
              #                    load from i_19 in mem


    lw      a1,376(sp)
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: k_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: ans_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } | 
              #                          label while.exit_44: 
.while.exit_44:
              #                          ret ans_19 
              #                    load from ra_long_array_0 in mem
              #                    occupy a6 with ra_long_array_0
    li      a6, 120392
    add     a6,sp,a6
    ld      ra,0(a6)
              #                    free a6
              #                    load from s0_long_array_0 in mem
              #                    occupy s1 with s0_long_array_0
    li      s1, 120384
    add     s1,sp,s1
    ld      s0,0(s1)
              #                    free s1
              #                    store to ans_19 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with ans_19
              #                    store to k_17 in mem offset_illegal
              #                    occupy a0 with 120380_0
    li      a0, 120380
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with k_17
              #                    occupy a0 with ans_19
              #                    load from ans_19 in mem


    lw      a0,216(sp)
              #                    occupy a2 with 120400_0
    li      a2, 120400
    li      a2, 120400
    add     sp,a2,sp
              #                    free a2
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_5_cmp_30, tracked: true } |     a5:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: ra_long_array_0, tracked: true } |     a7:Freed { symidx: temp_26_cmp_43, tracked: true } |     s1:Freed { symidx: s0_long_array_0, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_65_ret_of_long_array:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_65_ret_of_long_array_82 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_65_ret_of_long_array_82:i32 
              #                          temp_65_ret_of_long_array_82 =  Call i32 long_array_0(9_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_9_0_0
    li      a0, 9
              #                    arg load ended


    call    long_array
              #                    store to temp_65_ret_of_long_array_82 in mem offset legal
    sw      a0,4(sp)
              #                          ret temp_65_ret_of_long_array_82 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    store to temp_65_ret_of_long_array_82 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_65_ret_of_long_array_82
              #                    occupy a0 with temp_65_ret_of_long_array_82
              #                    load from temp_65_ret_of_long_array_82 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl N
              #                          global i32 N_0 
    .type N,@object
N:
    .word 10000
