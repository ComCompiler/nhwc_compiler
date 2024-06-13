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
    .global len_0
                    ;      global i32 len_0 
    .type len_0 @object
len_0:
    .word 20
.section
    .text
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8|i:4|j:4|t:4|n:4|temp:4|len1:4|temp_0:8|temp_1:8|temp_2:8|temp_3:8|temp_4:8|temp_5:8|temp_6:8|temp_7:8|temp_8:8|temp_9:8|temp_10:8|temp_11:8|temp_12:8|temp_13:8|temp_14:8|temp_15:8|temp_16:8|temp_17:8|temp_18:8|temp_19:8|mult1:80|temp_20:8|temp_21:8|temp_22:8|temp_23:8|temp_24:8|temp_25:8|temp_26:8|temp_27:8|temp_28:8|temp_29:8|temp_30:8|temp_31:8|temp_32:8|temp_33:8|temp_34:8|temp_35:8|temp_36:8|temp_37:8|temp_38:8|temp_39:8|mult2:80|len2:4|c1:100|c2:100|result:160|none:4
    addi    sp,sp,-888
    sd      ra,880(sp)
    sd      s0,872(sp)
    addi    s0,sp,888
                    ;      alloc i32 i_18 
                    ;      alloc i32 j_18 
                    ;      alloc i32 t_18 
                    ;      alloc i32 n_18 
                    ;      alloc i32 temp_18 
                    ;      alloc ptr->i32 temp_0_18 
                    ;      alloc ptr->i32 temp_1_18 
                    ;      alloc ptr->i32 temp_2_18 
                    ;      alloc ptr->i32 temp_3_18 
                    ;      alloc ptr->i32 temp_4_18 
                    ;      alloc ptr->i32 temp_5_18 
                    ;      alloc ptr->i32 temp_6_18 
                    ;      alloc ptr->i32 temp_7_18 
                    ;      alloc ptr->i32 temp_8_18 
                    ;      alloc ptr->i32 temp_9_18 
                    ;      alloc ptr->i32 temp_10_18 
                    ;      alloc ptr->i32 temp_11_18 
                    ;      alloc ptr->i32 temp_12_18 
                    ;      alloc ptr->i32 temp_13_18 
                    ;      alloc ptr->i32 temp_14_18 
                    ;      alloc ptr->i32 temp_15_18 
                    ;      alloc ptr->i32 temp_16_18 
                    ;      alloc ptr->i32 temp_17_18 
                    ;      alloc ptr->i32 temp_18_18 
                    ;      alloc ptr->i32 temp_19_18 
                    ;      alloc Array:i32:[Some(20_0)] mult1_18 
                    ;      alloc ptr->i32 temp_20_18 
                    ;      alloc ptr->i32 temp_21_18 
                    ;      alloc ptr->i32 temp_22_18 
                    ;      alloc ptr->i32 temp_23_18 
                    ;      alloc ptr->i32 temp_24_18 
                    ;      alloc ptr->i32 temp_25_18 
                    ;      alloc ptr->i32 temp_26_18 
                    ;      alloc ptr->i32 temp_27_18 
                    ;      alloc ptr->i32 temp_28_18 
                    ;      alloc ptr->i32 temp_29_18 
                    ;      alloc ptr->i32 temp_30_18 
                    ;      alloc ptr->i32 temp_31_18 
                    ;      alloc ptr->i32 temp_32_18 
                    ;      alloc ptr->i32 temp_33_18 
                    ;      alloc ptr->i32 temp_34_18 
                    ;      alloc ptr->i32 temp_35_18 
                    ;      alloc ptr->i32 temp_36_18 
                    ;      alloc ptr->i32 temp_37_18 
                    ;      alloc ptr->i32 temp_38_18 
                    ;      alloc ptr->i32 temp_39_18 
                    ;      alloc Array:i32:[Some(20_0)] mult2_18 
                    ;      alloc i32 len1_18 
                    ;      alloc i32 len2_18 
                    ;      alloc Array:i32:[Some(25_0)] c1_18 
                    ;      alloc Array:i32:[Some(25_0)] c2_18 
                    ;      alloc Array:i32:[Some(40_0)] result_18 
                    ;      label L0_0: 
L0_0:
                    ;      new_var i_18:i32 
                    ;      new_var j_18:i32 
                    ;      new_var t_18:i32 
                    ;      new_var n_18:i32 
                    ;      new_var temp_18:i32 
                    ;      new_var mult1_18:Array:i32:[Some(20_0)] 
                    ;      new_var temp_0_18:ptr->i32 
                    ;      temp_0_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [0_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,840(sp)
                    ;      store 1_0:i32 temp_0_18:ptr->Array:i32:[] 
    li      s2, 1
    ld      s1,840(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:32 
                    ;      mult1_18 = chi mult1_18:32 
                    ;      new_var temp_1_18:ptr->i32 
                    ;      temp_1_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [5_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 5
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,832(sp)
                    ;      store 6_0:i32 temp_1_18:ptr->Array:i32:[] 
    li      s2, 6
    ld      s1,832(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:38 
                    ;      mult1_18 = chi mult1_18:38 
                    ;      new_var temp_2_18:ptr->i32 
                    ;      temp_2_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [17_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 17
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,824(sp)
                    ;      store 8_0:i32 temp_2_18:ptr->Array:i32:[] 
    li      s2, 8
    ld      s1,824(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:44 
                    ;      mult1_18 = chi mult1_18:44 
                    ;      new_var temp_3_18:ptr->i32 
                    ;      temp_3_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [12_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 12
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,816(sp)
                    ;      store 3_0:i32 temp_3_18:ptr->Array:i32:[] 
    li      s2, 3
    ld      s1,816(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:50 
                    ;      mult1_18 = chi mult1_18:50 
                    ;      new_var temp_4_18:ptr->i32 
                    ;      temp_4_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [1_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,808(sp)
                    ;      store 2_0:i32 temp_4_18:ptr->Array:i32:[] 
    li      s2, 2
    ld      s1,808(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:56 
                    ;      mult1_18 = chi mult1_18:56 
                    ;      new_var temp_5_18:ptr->i32 
                    ;      temp_5_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [3_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,800(sp)
                    ;      store 4_0:i32 temp_5_18:ptr->Array:i32:[] 
    li      s2, 4
    ld      s1,800(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:62 
                    ;      mult1_18 = chi mult1_18:62 
                    ;      new_var temp_6_18:ptr->i32 
                    ;      temp_6_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [7_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 7
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,792(sp)
                    ;      store 8_0:i32 temp_6_18:ptr->Array:i32:[] 
    li      s2, 8
    ld      s1,792(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:68 
                    ;      mult1_18 = chi mult1_18:68 
                    ;      new_var temp_7_18:ptr->i32 
                    ;      temp_7_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [15_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 15
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,784(sp)
                    ;      store 6_0:i32 temp_7_18:ptr->Array:i32:[] 
    li      s2, 6
    ld      s1,784(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:74 
                    ;      mult1_18 = chi mult1_18:74 
                    ;      new_var temp_8_18:ptr->i32 
                    ;      temp_8_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [11_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 11
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,776(sp)
                    ;      store 2_0:i32 temp_8_18:ptr->Array:i32:[] 
    li      s2, 2
    ld      s1,776(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:80 
                    ;      mult1_18 = chi mult1_18:80 
                    ;      new_var temp_9_18:ptr->i32 
                    ;      temp_9_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [16_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 16
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,768(sp)
                    ;      store 7_0:i32 temp_9_18:ptr->Array:i32:[] 
    li      s2, 7
    ld      s1,768(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:86 
                    ;      mult1_18 = chi mult1_18:86 
                    ;      new_var temp_10_18:ptr->i32 
                    ;      temp_10_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [19_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 19
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,760(sp)
                    ;      store 0_0:i32 temp_10_18:ptr->Array:i32:[] 
    li      s2, 0
    ld      s1,760(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:92 
                    ;      mult1_18 = chi mult1_18:92 
                    ;      new_var temp_11_18:ptr->i32 
                    ;      temp_11_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [13_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 13
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,752(sp)
                    ;      store 4_0:i32 temp_11_18:ptr->Array:i32:[] 
    li      s2, 4
    ld      s1,752(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:98 
                    ;      mult1_18 = chi mult1_18:98 
                    ;      new_var temp_12_18:ptr->i32 
                    ;      temp_12_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [2_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,744(sp)
                    ;      store 3_0:i32 temp_12_18:ptr->Array:i32:[] 
    li      s2, 3
    ld      s1,744(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:104 
                    ;      mult1_18 = chi mult1_18:104 
                    ;      new_var temp_13_18:ptr->i32 
                    ;      temp_13_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [8_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 8
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,736(sp)
                    ;      store 9_0:i32 temp_13_18:ptr->Array:i32:[] 
    li      s2, 9
    ld      s1,736(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:110 
                    ;      mult1_18 = chi mult1_18:110 
                    ;      new_var temp_14_18:ptr->i32 
                    ;      temp_14_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [9_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 9
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,728(sp)
                    ;      store 0_0:i32 temp_14_18:ptr->Array:i32:[] 
    li      s2, 0
    ld      s1,728(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:116 
                    ;      mult1_18 = chi mult1_18:116 
                    ;      new_var temp_15_18:ptr->i32 
                    ;      temp_15_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [10_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 10
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,720(sp)
                    ;      store 1_0:i32 temp_15_18:ptr->Array:i32:[] 
    li      s2, 1
    ld      s1,720(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:122 
                    ;      mult1_18 = chi mult1_18:122 
                    ;      new_var temp_16_18:ptr->i32 
                    ;      temp_16_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [18_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 18
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,712(sp)
                    ;      store 9_0:i32 temp_16_18:ptr->Array:i32:[] 
    li      s2, 9
    ld      s1,712(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:128 
                    ;      mult1_18 = chi mult1_18:128 
                    ;      new_var temp_17_18:ptr->i32 
                    ;      temp_17_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [6_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 6
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,704(sp)
                    ;      store 7_0:i32 temp_17_18:ptr->Array:i32:[] 
    li      s2, 7
    ld      s1,704(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:134 
                    ;      mult1_18 = chi mult1_18:134 
                    ;      new_var temp_18_18:ptr->i32 
                    ;      temp_18_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [4_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 4
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,696(sp)
                    ;      store 5_0:i32 temp_18_18:ptr->Array:i32:[] 
    li      s2, 5
    ld      s1,696(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:140 
                    ;      mult1_18 = chi mult1_18:140 
                    ;      new_var temp_19_18:ptr->i32 
                    ;      temp_19_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [14_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 14
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 684
    add     s3,s3,s5
    sd      s3,688(sp)
                    ;      store 5_0:i32 temp_19_18:ptr->Array:i32:[] 
    li      s2, 5
    ld      s1,688(sp)
    sd      s2,0(s1)
                    ;      mu mult1_18:146 
                    ;      mult1_18 = chi mult1_18:146 
                    ;      new_var mult2_18:Array:i32:[Some(20_0)] 
                    ;      new_var temp_20_18:ptr->i32 
                    ;      temp_20_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [14_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 14
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,600(sp)
                    ;      store 4_0:i32 temp_20_18:ptr->Array:i32:[] 
    li      s2, 4
    ld      s1,600(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:154 
                    ;      mult2_18 = chi mult2_18:154 
                    ;      new_var temp_21_18:ptr->i32 
                    ;      temp_21_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [17_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 17
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,592(sp)
                    ;      store 1_0:i32 temp_21_18:ptr->Array:i32:[] 
    li      s2, 1
    ld      s1,592(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:160 
                    ;      mult2_18 = chi mult2_18:160 
                    ;      new_var temp_22_18:ptr->i32 
                    ;      temp_22_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [12_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 12
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,584(sp)
                    ;      store 7_0:i32 temp_22_18:ptr->Array:i32:[] 
    li      s2, 7
    ld      s1,584(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:166 
                    ;      mult2_18 = chi mult2_18:166 
                    ;      new_var temp_23_18:ptr->i32 
                    ;      temp_23_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [11_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 11
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,576(sp)
                    ;      store 8_0:i32 temp_23_18:ptr->Array:i32:[] 
    li      s2, 8
    ld      s1,576(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:172 
                    ;      mult2_18 = chi mult2_18:172 
                    ;      new_var temp_24_18:ptr->i32 
                    ;      temp_24_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [0_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 0
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,568(sp)
                    ;      store 2_0:i32 temp_24_18:ptr->Array:i32:[] 
    li      s2, 2
    ld      s1,568(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:178 
                    ;      mult2_18 = chi mult2_18:178 
                    ;      new_var temp_25_18:ptr->i32 
                    ;      temp_25_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [4_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 4
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,560(sp)
                    ;      store 5_0:i32 temp_25_18:ptr->Array:i32:[] 
    li      s2, 5
    ld      s1,560(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:184 
                    ;      mult2_18 = chi mult2_18:184 
                    ;      new_var temp_26_18:ptr->i32 
                    ;      temp_26_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [10_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 10
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,552(sp)
                    ;      store 9_0:i32 temp_26_18:ptr->Array:i32:[] 
    li      s2, 9
    ld      s1,552(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:190 
                    ;      mult2_18 = chi mult2_18:190 
                    ;      new_var temp_27_18:ptr->i32 
                    ;      temp_27_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [18_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 18
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,544(sp)
                    ;      store 2_0:i32 temp_27_18:ptr->Array:i32:[] 
    li      s2, 2
    ld      s1,544(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:196 
                    ;      mult2_18 = chi mult2_18:196 
                    ;      new_var temp_28_18:ptr->i32 
                    ;      temp_28_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [7_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 7
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,536(sp)
                    ;      store 9_0:i32 temp_28_18:ptr->Array:i32:[] 
    li      s2, 9
    ld      s1,536(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:202 
                    ;      mult2_18 = chi mult2_18:202 
                    ;      new_var temp_29_18:ptr->i32 
                    ;      temp_29_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [16_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 16
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,528(sp)
                    ;      store 2_0:i32 temp_29_18:ptr->Array:i32:[] 
    li      s2, 2
    ld      s1,528(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:208 
                    ;      mult2_18 = chi mult2_18:208 
                    ;      new_var temp_30_18:ptr->i32 
                    ;      temp_30_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [15_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 15
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,520(sp)
                    ;      store 3_0:i32 temp_30_18:ptr->Array:i32:[] 
    li      s2, 3
    ld      s1,520(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:214 
                    ;      mult2_18 = chi mult2_18:214 
                    ;      new_var temp_31_18:ptr->i32 
                    ;      temp_31_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [13_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 13
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,512(sp)
                    ;      store 6_0:i32 temp_31_18:ptr->Array:i32:[] 
    li      s2, 6
    ld      s1,512(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:220 
                    ;      mult2_18 = chi mult2_18:220 
                    ;      new_var temp_32_18:ptr->i32 
                    ;      temp_32_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [3_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 3
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,504(sp)
                    ;      store 2_0:i32 temp_32_18:ptr->Array:i32:[] 
    li      s2, 2
    ld      s1,504(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:226 
                    ;      mult2_18 = chi mult2_18:226 
                    ;      new_var temp_33_18:ptr->i32 
                    ;      temp_33_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [1_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 1
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,496(sp)
                    ;      store 3_0:i32 temp_33_18:ptr->Array:i32:[] 
    li      s2, 3
    ld      s1,496(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:232 
                    ;      mult2_18 = chi mult2_18:232 
                    ;      new_var temp_34_18:ptr->i32 
                    ;      temp_34_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [2_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 2
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,488(sp)
                    ;      store 4_0:i32 temp_34_18:ptr->Array:i32:[] 
    li      s2, 4
    ld      s1,488(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:238 
                    ;      mult2_18 = chi mult2_18:238 
                    ;      new_var temp_35_18:ptr->i32 
                    ;      temp_35_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [5_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 5
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,480(sp)
                    ;      store 7_0:i32 temp_35_18:ptr->Array:i32:[] 
    li      s2, 7
    ld      s1,480(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:244 
                    ;      mult2_18 = chi mult2_18:244 
                    ;      new_var temp_36_18:ptr->i32 
                    ;      temp_36_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [8_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 8
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,472(sp)
                    ;      store 0_0:i32 temp_36_18:ptr->Array:i32:[] 
    li      s2, 0
    ld      s1,472(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:250 
                    ;      mult2_18 = chi mult2_18:250 
                    ;      new_var temp_37_18:ptr->i32 
                    ;      temp_37_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [6_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 6
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,464(sp)
                    ;      store 9_0:i32 temp_37_18:ptr->Array:i32:[] 
    li      s2, 9
    ld      s1,464(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:256 
                    ;      mult2_18 = chi mult2_18:256 
                    ;      new_var temp_38_18:ptr->i32 
                    ;      temp_38_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [9_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 9
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,456(sp)
                    ;      store 1_0:i32 temp_38_18:ptr->Array:i32:[] 
    li      s2, 1
    ld      s1,456(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:262 
                    ;      mult2_18 = chi mult2_18:262 
                    ;      new_var temp_39_18:ptr->i32 
                    ;      temp_39_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [19_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 19
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 444
    add     s3,s3,s5
    sd      s3,448(sp)
                    ;      store 2_0:i32 temp_39_18:ptr->Array:i32:[] 
    li      s2, 2
    ld      s1,448(sp)
    sd      s2,0(s1)
                    ;      mu mult2_18:268 
                    ;      mult2_18 = chi mult2_18:268 
                    ;      len1_18 = i32 20_0 
    li      s1, 20
    sw      s1,848(sp)
                    ;      len2_18 = i32 20_0 
    li      s1, 20
    sw      s1,364(sp)
                    ;      new_var c1_18:Array:i32:[Some(25_0)] 
                    ;      new_var c2_18:Array:i32:[Some(25_0)] 
                    ;      new_var result_18:Array:i32:[Some(40_0)] 
                    ;      i_18 = i32 0_0 
    li      s1, 0
    sw      s1,868(sp)
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
                    ;      i_18 = i32 0_0 
    li      s1, 0
    sw      s1,868(sp)
                    ;      jump label: L4_0 
    j       L4_0
                    ;      label L4_0: 
L4_0:
                    ;      label L5_0: 
L5_0:
                    ;      jump label: L4_0 
    j       L4_0
                    ;      label L6_0: 
L6_0:
                    ;      jump label: L7_0 
    j       L7_0
                    ;      label L7_0: 
L7_0:
                    ;      label L8_0: 
L8_0:
                    ;      jump label: L7_0 
    j       L7_0
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
                    ;      jump label: L17_0 
    j       L17_0
                    ;      label L16_0: 
L16_0:
                    ;      jump label: L17_0 
    j       L17_0
                    ;      label L17_0: 
L17_0:
                    ;      label L18_0: 
L18_0:
                    ;      jump label: L12_0 
    j       L12_0
                    ;      label L19_0: 
L19_0:
                    ;      jump label: L10_0 
    j       L10_0
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
                    ;      jump label: L24_0 
    j       L24_0
                    ;      label L26_0: 
L26_0:

