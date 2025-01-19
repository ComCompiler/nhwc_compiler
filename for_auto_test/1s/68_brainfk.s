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
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     29   Define read_program_0 "" -> read_program_ret_0 
    .globl read_program
    .type read_program,@function
read_program:
              #                    mem layout:|ra_read_program:8 at 48|s0_read_program:8 at 40|i _s19 _i1:4 at 36|temp_0_ret_of_getint _s19 _i0:4 at 32|temp_1_ptr_of_*program_0:8 at 24|temp_2_ptr_of_*program_0:8 at 16|temp_3_ret_of_getch _s23 _i0:4 at 12|temp_4_arithop _s23 _i0:4 at 8|temp_5_cmp _s21 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-56
              #                    store to ra_read_program_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_read_program_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     245  program_0_1 = chi program_0_0:29 
              #                     34   alloc i32 [i_19] 
              #                     35   alloc i32 [temp_0_ret_of_getint_19] 
              #                     38   alloc i32 [len_19] 
              #                     39   alloc ptr->i32 [temp_1_ptr_of_*program_0_19] 
              #                     43   alloc ptr->i32 [temp_2_ptr_of_*program_0_23] 
              #                     45   alloc i32 [temp_3_ret_of_getch_23] 
              #                     49   alloc i32 [temp_4_arithop_23] 
              #                     52   alloc i1 [temp_5_cmp_21] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     33   (nop) 
              #                     36   temp_0_ret_of_getint_19_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     37   (nop) 
              #                     306  i_19_1 = i32 0_0 
              #                    occupy a1 with i_19_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_22 
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getint_19_0, tracked: true } |     a1:Freed { symidx: i_19_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     54   label while.head_22: 
.while.head_22:
              #                     53   temp_5_cmp_21_0 = icmp i32 Slt i_19_1, temp_0_ret_of_getint_19_0 
              #                    occupy a1 with i_19_1
              #                    occupy a0 with temp_0_ret_of_getint_19_0
              #                    occupy a2 with temp_5_cmp_21_0
    slt     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     57   br i1 temp_5_cmp_21_0, label while.body_22, label while.exit_22 
              #                    occupy a2 with temp_5_cmp_21_0
              #                    free a2
              #                    occupy a2 with temp_5_cmp_21_0
    bnez    a2, .while.body_22
              #                    free a2
    j       .while.exit_22
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getint_19_0, tracked: true } |     a1:Freed { symidx: i_19_1, tracked: true } |     a2:Freed { symidx: temp_5_cmp_21_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     55   label while.body_22: 
.while.body_22:
              #                     44   temp_2_ptr_of_*program_0_23 = GEP *program_0:ptr->i32 [Some(i_19_1)] 
              #                    occupy a3 with temp_2_ptr_of_*program_0_23
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_19_1
    mv      a4, a1
              #                    free a1
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *program_0
              #                       load label program as ptr to reg
    la      a5, program
              #                    occupy reg a5 with *program_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     46   temp_3_ret_of_getch_23_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_0_ret_of_getint_19_0
              #                    store to temp_0_ret_of_getint_19_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_0_ret_of_getint_19_0
              #                    occupy a1 with i_19_1
              #                    store to i_19_1 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with i_19_1
              #                    occupy a2 with temp_5_cmp_21_0
              #                    store to temp_5_cmp_21_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_5_cmp_21_0
              #                    occupy a3 with temp_2_ptr_of_*program_0_23
              #                    store to temp_2_ptr_of_*program_0_23 in mem offset legal
    sd      a3,16(sp)
              #                    release a3 with temp_2_ptr_of_*program_0_23
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     47   store temp_3_ret_of_getch_23_0:i32 temp_2_ptr_of_*program_0_23:ptr->i32 
              #                    occupy a1 with temp_2_ptr_of_*program_0_23
              #                    load from temp_2_ptr_of_*program_0_23 in mem
    ld      a1,16(sp)
              #                    occupy a0 with temp_3_ret_of_getch_23_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     48   program_0_3 = chi program_0_2:47 
              #                     50   temp_4_arithop_23_0 = Add i32 i_19_1, 1_0 
              #                    occupy a2 with i_19_1
              #                    load from i_19_1 in mem


    lw      a2,36(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_4_arithop_23_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     51   (nop) 
              #                     307  i_19_1 = i32 temp_4_arithop_23_0 
              #                    occupy a4 with temp_4_arithop_23_0
              #                    occupy a2 with i_19_1
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_22 
              #                    occupy a2 with i_19_1
              #                    store to i_19_1 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_19_1
              #                    occupy a4 with temp_4_arithop_23_0
              #                    store to temp_4_arithop_23_0 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_4_arithop_23_0
              #                    occupy a1 with temp_2_ptr_of_*program_0_23
              #                    store to temp_2_ptr_of_*program_0_23 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_2_ptr_of_*program_0_23
              #                    occupy a1 with i_19_1
              #                    load from i_19_1 in mem


    lw      a1,36(sp)
              #                    occupy a0 with temp_3_ret_of_getch_23_0
              #                    store to temp_3_ret_of_getch_23_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_3_ret_of_getch_23_0
              #                    occupy a0 with temp_0_ret_of_getint_19_0
              #                    load from temp_0_ret_of_getint_19_0 in mem


    lw      a0,32(sp)
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getint_19_0, tracked: true } |     a1:Freed { symidx: i_19_1, tracked: true } |     a2:Freed { symidx: temp_5_cmp_21_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     56   label while.exit_22: 
.while.exit_22:
              #                     337  untrack temp_0_ret_of_getint_19_0 
              #                    occupy a0 with temp_0_ret_of_getint_19_0
              #                    release a0 with temp_0_ret_of_getint_19_0
              #                     40   temp_1_ptr_of_*program_0_19 = GEP *program_0:ptr->i32 [Some(i_19_1)] 
              #                    occupy a0 with temp_1_ptr_of_*program_0_19
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_19_1
    mv      a3, a1
              #                    free a1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *program_0
              #                       load label program as ptr to reg
    la      a4, program
              #                    occupy reg a4 with *program_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                     338  untrack i_19_1 
              #                    occupy a1 with i_19_1
              #                    release a1 with i_19_1
              #                     41   store 0_0:i32 temp_1_ptr_of_*program_0_19:ptr->i32 
              #                    occupy a0 with temp_1_ptr_of_*program_0_19
              #                    occupy a1 with 0_0
    li      a1, 0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     339  untrack temp_1_ptr_of_*program_0_19 
              #                    occupy a0 with temp_1_ptr_of_*program_0_19
              #                    release a0 with temp_1_ptr_of_*program_0_19
              #                     42   program_0_4 = chi program_0_2:41 
              #                          jump label: exit_2 
    j       .exit_2
              #                    regtab     a2:Freed { symidx: temp_5_cmp_21_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     59   label exit_2: 
.exit_2:
              #                     246  mu program_0_4:58 
              #                     58   ret 
              #                    load from ra_read_program_0 in mem
    ld      ra,48(sp)
              #                    load from s0_read_program_0 in mem
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     31   Define interpret_0 "input_27," -> interpret_ret_0 
    .globl interpret
    .type interpret,@function
interpret:
              #                    mem layout:|ra_interpret:8 at 336|s0_interpret:8 at 328|input:8 at 320|input:8 at 312|cur_char _s29 _i0:4 at 308|cur_char _s29 _i1:4 at 304|cur_char _s29 _i3:4 at 300|cur_char _s29 _i4:4 at 296|cur_char _s29 _i5:4 at 292|cur_char _s29 _i6:4 at 288|cur_char _s29 _i7:4 at 284|cur_char _s29 _i8:4 at 280|cur_char _s29 _i9:4 at 276|cur_char _s29 _i10:4 at 272|loop _s29 _i0:4 at 268|loop _s29 _i1:4 at 264|loop _s29 _i2:4 at 260|loop _s29 _i3:4 at 256|loop _s29 _i4:4 at 252|loop _s29 _i5:4 at 248|loop _s29 _i6:4 at 244|loop _s29 _i7:4 at 240|loop _s29 _i8:4 at 236|loop _s29 _i10:4 at 232|loop _s29 _i12:4 at 228|loop _s29 _i14:4 at 224|i _s29 _i1:4 at 220|i _s29 _i2:4 at 216|i _s29 _i4:4 at 212|i _s29 _i5:4 at 208|i _s29 _i6:4 at 204|i _s29 _i7:4 at 200|i _s29 _i8:4 at 196|i _s29 _i9:4 at 192|i _s29 _i10:4 at 188|none:4 at 184|temp_6_ptr_of_input_27:8 at 176|temp_8_arithop _s33 _i0:4 at 172|temp_9_arithop _s65 _i0:4 at 168|temp_10_ptr_of_input_27:8 at 160|temp_11_ele_of_input_27 _s65 _i0:4 at 156|temp_12_arithop _s74 _i0:4 at 152|temp_13_arithop _s70 _i0:4 at 148|temp_14_value_from_ptr _s57 _i0:4 at 144|temp_15_ptr_of_*tape_0:8 at 136|temp_16_ret_of_getch _s57 _i0:4 at 132|temp_17_value_from_ptr _s53 _i0:4 at 128|temp_18_ptr_of_*tape_0:8 at 120|temp_19_ele_of_*tape_0 _s53 _i0:4 at 116|temp_20_value_from_ptr _s49 _i0:4 at 112|temp_21_ptr_of_*tape_0:8 at 104|temp_23_ptr_of_*tape_0:8 at 96|temp_24_ele_of_*tape_0 _s49 _i0:4 at 92|temp_25_arithop _s49 _i0:4 at 88|temp_26_value_from_ptr _s45 _i0:4 at 84|none:4 at 80|temp_27_ptr_of_*tape_0:8 at 72|temp_29_ptr_of_*tape_0:8 at 64|temp_30_ele_of_*tape_0 _s45 _i0:4 at 60|temp_31_arithop _s45 _i0:4 at 56|temp_32_value_from_ptr _s41 _i0:4 at 52|temp_33_arithop _s41 _i0:4 at 48|temp_34_value_from_ptr _s37 _i0:4 at 44|temp_35_arithop _s37 _i0:4 at 40|temp_36_ptr_of_input_27:8 at 32|temp_37_ele_of_input_27 _s31 _i0:4 at 28|temp_38_ _s857 _i0:1 at 27|temp_39_cmp _s35 _i0:1 at 26|temp_40_cmp _s39 _i0:1 at 25|temp_41_cmp _s43 _i0:1 at 24|temp_42_cmp _s47 _i0:1 at 23|temp_43_cmp _s51 _i0:1 at 22|temp_44_cmp _s55 _i0:1 at 21|temp_45_cmp _s59 _i0:1 at 20|temp_46_value_from_ptr _s59 _i0:4 at 16|temp_47_ptr_of_*tape_0:8 at 8|temp_48_ele_of_*tape_0 _s59 _i0:4 at 4|temp_49_i32_to_bool _s59 _i0:1 at 3|temp_50_cmp _s63 _i0:1 at 2|temp_51_cmp _s68 _i0:1 at 1|temp_52_cmp _s72 _i0:1 at 0
    addi    sp,sp,-344
              #                    store to ra_interpret_0 in mem offset legal
    sd      ra,336(sp)
              #                    store to s0_interpret_0 in mem offset legal
    sd      s0,328(sp)
    addi    s0,sp,344
              #                     247  ptr_0_1 = chi ptr_0_0:31 
              #                     248  tape_0_1 = chi tape_0_0:31 
              #                     60   alloc i32 [cur_char_29] 
              #                     62   alloc i32 [loop_29] 
              #                     65   alloc i32 [i_29] 
              #                     66   alloc ptr->i32 [temp_6_ptr_of_input_27_33] 
              #                     68   alloc i32 [temp_7_ele_of_input_27_33] 
              #                     72   alloc i32 [temp_8_arithop_33] 
              #                     76   alloc i32 [temp_9_arithop_65] 
              #                     79   alloc ptr->i32 [temp_10_ptr_of_input_27_65] 
              #                     81   alloc i32 [temp_11_ele_of_input_27_65] 
              #                     85   alloc i32 [temp_12_arithop_74] 
              #                     88   alloc i32 [temp_13_arithop_70] 
              #                     91   alloc i32 [temp_14_value_from_ptr_57] 
              #                     94   alloc ptr->i32 [temp_15_ptr_of_*tape_0_57] 
              #                     96   alloc i32 [temp_16_ret_of_getch_57] 
              #                     100  alloc i32 [temp_17_value_from_ptr_53] 
              #                     103  alloc ptr->i32 [temp_18_ptr_of_*tape_0_53] 
              #                     105  alloc i32 [temp_19_ele_of_*tape_0_53] 
              #                     109  alloc i32 [temp_20_value_from_ptr_49] 
              #                     112  alloc ptr->i32 [temp_21_ptr_of_*tape_0_49] 
              #                     114  alloc i32 [temp_22_value_from_ptr_49] 
              #                     117  alloc ptr->i32 [temp_23_ptr_of_*tape_0_49] 
              #                     119  alloc i32 [temp_24_ele_of_*tape_0_49] 
              #                     122  alloc i32 [temp_25_arithop_49] 
              #                     126  alloc i32 [temp_26_value_from_ptr_45] 
              #                     129  alloc ptr->i32 [temp_27_ptr_of_*tape_0_45] 
              #                     131  alloc i32 [temp_28_value_from_ptr_45] 
              #                     134  alloc ptr->i32 [temp_29_ptr_of_*tape_0_45] 
              #                     136  alloc i32 [temp_30_ele_of_*tape_0_45] 
              #                     139  alloc i32 [temp_31_arithop_45] 
              #                     143  alloc i32 [temp_32_value_from_ptr_41] 
              #                     146  alloc i32 [temp_33_arithop_41] 
              #                     150  alloc i32 [temp_34_value_from_ptr_37] 
              #                     153  alloc i32 [temp_35_arithop_37] 
              #                     157  alloc ptr->i32 [temp_36_ptr_of_input_27_31] 
              #                     159  alloc i32 [temp_37_ele_of_input_27_31] 
              #                     162  alloc i1 [temp_38__857] 
              #                     169  alloc i1 [temp_39_cmp_35] 
              #                     174  alloc i1 [temp_40_cmp_39] 
              #                     179  alloc i1 [temp_41_cmp_43] 
              #                     184  alloc i1 [temp_42_cmp_47] 
              #                     189  alloc i1 [temp_43_cmp_51] 
              #                     194  alloc i1 [temp_44_cmp_55] 
              #                     199  alloc i1 [temp_45_cmp_59] 
              #                     201  alloc i32 [temp_46_value_from_ptr_59] 
              #                     204  alloc ptr->i32 [temp_47_ptr_of_*tape_0_59] 
              #                     206  alloc i32 [temp_48_ele_of_*tape_0_59] 
              #                     209  alloc i1 [temp_49_i32_to_bool_59] 
              #                     223  alloc i1 [temp_50_cmp_63] 
              #                     228  alloc i1 [temp_51_cmp_68] 
              #                     233  alloc i1 [temp_52_cmp_72] 
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     30    
              #                     61    
              #                     63    
              #                     64   (nop) 
              #                     312  i_29_1 = i32 0_0 
              #                    occupy a1 with i_29_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     164  label while.head_32: 
.while.head_32:
              #                     158  temp_36_ptr_of_input_27_31 = GEP input_27:Array:i32:[None] [Some(i_29_1)] 
              #                    occupy a2 with temp_36_ptr_of_input_27_31
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_29_1
    mv      a3, a1
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with input_27
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     160  temp_37_ele_of_input_27_31_0 = load temp_36_ptr_of_input_27_31:ptr->i32 
              #                    occupy a2 with temp_36_ptr_of_input_27_31
              #                    occupy a4 with temp_37_ele_of_input_27_31_0
    lw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     161  mu input_27:160 
              #                     163  temp_38__857_0 = icmp i32 Ne temp_37_ele_of_input_27_31_0, 0_0 
              #                    occupy a4 with temp_37_ele_of_input_27_31_0
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_38__857_0
    xor     a6,a4,a5
    snez    a6, a6
              #                    free a4
              #                    free a5
              #                    free a6
              #                     167  br i1 temp_38__857_0, label while.body_32, label while.exit_32 
              #                    occupy a6 with temp_38__857_0
              #                    free a6
              #                    occupy a6 with temp_38__857_0
    bnez    a6, .while.body_32
              #                    free a6
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a4:Freed { symidx: temp_37_ele_of_input_27_31_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     165  label while.body_32: 
.while.body_32:
              #                     67   (nop) 
              #                     69   (nop) 
              #                     70   mu input_27:69 
              #                     71   (nop) 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a4:Freed { symidx: temp_37_ele_of_input_27_31_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     170  temp_39_cmp_35_0 = icmp i32 Eq temp_37_ele_of_input_27_31_0, 62_0 
              #                    occupy a4 with temp_37_ele_of_input_27_31_0
              #                    occupy a3 with 62_0
    li      a3, 62
              #                    occupy a5 with temp_39_cmp_35_0
    xor     a5,a4,a3
    seqz    a5, a5
              #                    free a4
              #                    free a3
              #                    free a5
              #                     173  br i1 temp_39_cmp_35_0, label branch_true_36, label branch_false_36 
              #                    occupy a5 with temp_39_cmp_35_0
              #                    free a5
              #                    occupy a5 with temp_39_cmp_35_0
    bnez    a5, .branch_true_36
              #                    free a5
    j       .branch_false_36
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a4:Freed { symidx: temp_37_ele_of_input_27_31_0, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     171  label branch_true_36: 
.branch_true_36:
              #                     379  untrack temp_20_value_from_ptr_49_0 
              #                     378  untrack temp_19_ele_of_*tape_0_53_0 
              #                     377  untrack temp_30_ele_of_*tape_0_45_0 
              #                     376  untrack temp_18_ptr_of_*tape_0_53 
              #                     375  untrack temp_46_value_from_ptr_59_0 
              #                     374  untrack loop_29_10 
              #                     373  untrack temp_26_value_from_ptr_45_0 
              #                     372  untrack temp_27_ptr_of_*tape_0_45 
              #                     371  untrack temp_39_cmp_35_0 
              #                    occupy a5 with temp_39_cmp_35_0
              #                    release a5 with temp_39_cmp_35_0
              #                     370  untrack temp_37_ele_of_input_27_31_0 
              #                    occupy a4 with temp_37_ele_of_input_27_31_0
              #                    release a4 with temp_37_ele_of_input_27_31_0
              #                     369  untrack temp_44_cmp_55_0 
              #                     368  untrack temp_43_cmp_51_0 
              #                     367  untrack temp_33_arithop_41_0 
              #                     366  untrack temp_31_arithop_45_0 
              #                     365  untrack i_29_8 
              #                     364  untrack i_29_10 
              #                     363  untrack i_29_9 
              #                     362  untrack i_29_7 
              #                     361  untrack i_29_5 
              #                     360  untrack temp_36_ptr_of_input_27_31 
              #                    occupy a2 with temp_36_ptr_of_input_27_31
              #                    release a2 with temp_36_ptr_of_input_27_31
              #                     359  untrack temp_15_ptr_of_*tape_0_57 
              #                     358  untrack temp_21_ptr_of_*tape_0_49 
              #                     357  untrack temp_41_cmp_43_0 
              #                     356  untrack i_29_6 
              #                     355  untrack temp_45_cmp_59_0 
              #                     354  untrack temp_47_ptr_of_*tape_0_59 
              #                     353  untrack temp_16_ret_of_getch_57_0 
              #                     352  untrack temp_32_value_from_ptr_41_0 
              #                     351  untrack temp_38__857_0 
              #                    occupy a6 with temp_38__857_0
              #                    release a6 with temp_38__857_0
              #                     350  untrack temp_42_cmp_47_0 
              #                     349  untrack temp_24_ele_of_*tape_0_49_0 
              #                     348  untrack temp_40_cmp_39_0 
              #                     347  untrack temp_49_i32_to_bool_59_0 
              #                     346  untrack temp_25_arithop_49_0 
              #                     345  untrack temp_17_value_from_ptr_53_0 
              #                     344  untrack temp_14_value_from_ptr_57_0 
              #                     343  untrack i_29_4 
              #                     342  untrack temp_48_ele_of_*tape_0_59_0 
              #                     151  temp_34_value_from_ptr_37_0 = load *ptr_0:ptr->i32 
              #                    occupy a2 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a2, ptr
              #                    occupy reg a2 with *ptr_0
              #                    occupy a3 with temp_34_value_from_ptr_37_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     152  mu ptr_0_2:151 
              #                     154  temp_35_arithop_37_0 = Add i32 temp_34_value_from_ptr_37_0, 1_0 
              #                    occupy a3 with temp_34_value_from_ptr_37_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_35_arithop_37_0
    ADDW    a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     381  untrack temp_34_value_from_ptr_37_0 
              #                    occupy a3 with temp_34_value_from_ptr_37_0
              #                    release a3 with temp_34_value_from_ptr_37_0
              #                     155  store temp_35_arithop_37_0:i32 *ptr_0:ptr->i32 
              #                    occupy a3 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a3, ptr
              #                    occupy reg a3 with *ptr_0
              #                    occupy a5 with temp_35_arithop_37_0
    sw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     380  untrack temp_35_arithop_37_0 
              #                    occupy a5 with temp_35_arithop_37_0
              #                    release a5 with temp_35_arithop_37_0
              #                     156  ptr_0_3 = chi ptr_0_2:155 
              #                     313  i_29_2 = i32 i_29_1 
              #                    occupy a1 with i_29_1
              #                    occupy a5 with i_29_2
    mv      a5, a1
              #                    free a1
              #                    free a5
              #                          jump label: gather_39 
    j       .gather_39
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a5:Freed { symidx: i_29_2, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     222  label gather_39: 
.gather_39:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a5:Freed { symidx: i_29_2, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     73   temp_8_arithop_33_0 = Add i32 i_29_2, 1_0 
              #                    occupy a5 with i_29_2
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_8_arithop_33_0
    ADDW    a3,a5,a2
              #                    free a5
              #                    free a2
              #                    free a3
              #                     74   (nop) 
              #                     314  i_29_1 = i32 temp_8_arithop_33_0 
              #                    occupy a3 with temp_8_arithop_33_0
              #                    occupy a1 with i_29_1
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: while.head_32 
              #                    occupy a5 with i_29_2
              #                    store to i_29_2 in mem offset legal
    sw      a5,216(sp)
              #                    release a5 with i_29_2
              #                    occupy a3 with temp_8_arithop_33_0
              #                    store to temp_8_arithop_33_0 in mem offset legal
    sw      a3,172(sp)
              #                    release a3 with temp_8_arithop_33_0
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a4:Freed { symidx: temp_37_ele_of_input_27_31_0, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     172  label branch_false_36: 
.branch_false_36:
              #                     175  temp_40_cmp_39_0 = icmp i32 Eq temp_37_ele_of_input_27_31_0, 60_0 
              #                    occupy a4 with temp_37_ele_of_input_27_31_0
              #                    occupy a3 with 60_0
    li      a3, 60
              #                    occupy a7 with temp_40_cmp_39_0
    xor     a7,a4,a3
    seqz    a7, a7
              #                    free a4
              #                    free a3
              #                    free a7
              #                     178  br i1 temp_40_cmp_39_0, label branch_true_40, label branch_false_40 
              #                    occupy a7 with temp_40_cmp_39_0
              #                    free a7
              #                    occupy a7 with temp_40_cmp_39_0
    bnez    a7, .branch_true_40
              #                    free a7
    j       .branch_false_40
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a4:Freed { symidx: temp_37_ele_of_input_27_31_0, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |     a7:Freed { symidx: temp_40_cmp_39_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     176  label branch_true_40: 
.branch_true_40:
              #                     418  untrack loop_29_10 
              #                     417  untrack temp_17_value_from_ptr_53_0 
              #                     416  untrack temp_14_value_from_ptr_57_0 
              #                     415  untrack temp_49_i32_to_bool_59_0 
              #                     414  untrack temp_38__857_0 
              #                    occupy a6 with temp_38__857_0
              #                    release a6 with temp_38__857_0
              #                     413  untrack temp_16_ret_of_getch_57_0 
              #                     412  untrack temp_47_ptr_of_*tape_0_59 
              #                     411  untrack temp_20_value_from_ptr_49_0 
              #                     410  untrack temp_31_arithop_45_0 
              #                     409  untrack temp_43_cmp_51_0 
              #                     408  untrack temp_21_ptr_of_*tape_0_49 
              #                     407  untrack temp_26_value_from_ptr_45_0 
              #                     406  untrack temp_19_ele_of_*tape_0_53_0 
              #                     405  untrack temp_44_cmp_55_0 
              #                     404  untrack temp_39_cmp_35_0 
              #                    occupy a5 with temp_39_cmp_35_0
              #                    release a5 with temp_39_cmp_35_0
              #                     403  untrack temp_45_cmp_59_0 
              #                     402  untrack temp_46_value_from_ptr_59_0 
              #                     401  untrack temp_48_ele_of_*tape_0_59_0 
              #                     400  untrack i_29_8 
              #                     399  untrack i_29_10 
              #                     398  untrack temp_41_cmp_43_0 
              #                     397  untrack temp_35_arithop_37_0 
              #                     396  untrack i_29_9 
              #                     395  untrack temp_24_ele_of_*tape_0_49_0 
              #                     394  untrack i_29_7 
              #                     393  untrack temp_36_ptr_of_input_27_31 
              #                    occupy a2 with temp_36_ptr_of_input_27_31
              #                    release a2 with temp_36_ptr_of_input_27_31
              #                     392  untrack temp_37_ele_of_input_27_31_0 
              #                    occupy a4 with temp_37_ele_of_input_27_31_0
              #                    release a4 with temp_37_ele_of_input_27_31_0
              #                     391  untrack temp_42_cmp_47_0 
              #                     390  untrack temp_34_value_from_ptr_37_0 
              #                     389  untrack temp_25_arithop_49_0 
              #                     388  untrack i_29_5 
              #                     387  untrack i_29_6 
              #                     386  untrack temp_30_ele_of_*tape_0_45_0 
              #                     385  untrack temp_18_ptr_of_*tape_0_53 
              #                     384  untrack temp_40_cmp_39_0 
              #                    occupy a7 with temp_40_cmp_39_0
              #                    release a7 with temp_40_cmp_39_0
              #                     383  untrack temp_15_ptr_of_*tape_0_57 
              #                     382  untrack temp_27_ptr_of_*tape_0_45 
              #                     144  temp_32_value_from_ptr_41_0 = load *ptr_0:ptr->i32 
              #                    occupy a2 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a2, ptr
              #                    occupy reg a2 with *ptr_0
              #                    occupy a3 with temp_32_value_from_ptr_41_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     145  mu ptr_0_2:144 
              #                     147  temp_33_arithop_41_0 = Sub i32 temp_32_value_from_ptr_41_0, 1_0 
              #                    occupy a3 with temp_32_value_from_ptr_41_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_33_arithop_41_0
              #                    regtab:    a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: *ptr_0, tracked: false } |     a3:Occupied { symidx: temp_32_value_from_ptr_41_0, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Occupied { symidx: temp_33_arithop_41_0, tracked: true, occupy_count: 1 } |  released_gpr_count:9,released_fpr_count:24


    subw    a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     420  untrack temp_32_value_from_ptr_41_0 
              #                    occupy a3 with temp_32_value_from_ptr_41_0
              #                    release a3 with temp_32_value_from_ptr_41_0
              #                     148  store temp_33_arithop_41_0:i32 *ptr_0:ptr->i32 
              #                    occupy a3 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a3, ptr
              #                    occupy reg a3 with *ptr_0
              #                    occupy a5 with temp_33_arithop_41_0
    sw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     419  untrack temp_33_arithop_41_0 
              #                    occupy a5 with temp_33_arithop_41_0
              #                    release a5 with temp_33_arithop_41_0
              #                     149  ptr_0_5 = chi ptr_0_2:148 
              #                     315  i_29_4 = i32 i_29_1 
              #                    occupy a1 with i_29_1
              #                    occupy a5 with i_29_4
    mv      a5, a1
              #                    free a1
              #                    free a5
              #                          jump label: gather_37 
    j       .gather_37
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a5:Freed { symidx: i_29_4, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     221  label gather_37: 
.gather_37:
              #                     316  i_29_2 = i32 i_29_4 
              #                    occupy a5 with i_29_4
              #                    occupy a2 with i_29_2
    mv      a2, a5
              #                    free a5
              #                    free a2
              #                          jump label: gather_39 
              #                    occupy a5 with i_29_4
              #                    store to i_29_4 in mem offset legal
    sw      a5,212(sp)
              #                    release a5 with i_29_4
              #                    occupy a2 with i_29_2
              #                    store to i_29_2 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_29_2
              #                    occupy a5 with i_29_2
              #                    load from i_29_2 in mem


    lw      a5,216(sp)
    j       .gather_39
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a4:Freed { symidx: temp_37_ele_of_input_27_31_0, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |     a7:Freed { symidx: temp_40_cmp_39_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     177  label branch_false_40: 
.branch_false_40:
              #                     180  temp_41_cmp_43_0 = icmp i32 Eq temp_37_ele_of_input_27_31_0, 43_0 
              #                    occupy a4 with temp_37_ele_of_input_27_31_0
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    occupy s1 with temp_41_cmp_43_0
    xor     s1,a4,a3
    seqz    s1, s1
              #                    free a4
              #                    free a3
              #                    free s1
              #                     183  br i1 temp_41_cmp_43_0, label branch_true_44, label branch_false_44 
              #                    occupy s1 with temp_41_cmp_43_0
              #                    free s1
              #                    occupy s1 with temp_41_cmp_43_0
    bnez    s1, .branch_true_44
              #                    free s1
    j       .branch_false_44
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a4:Freed { symidx: temp_37_ele_of_input_27_31_0, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |     a7:Freed { symidx: temp_40_cmp_39_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_43_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     181  label branch_true_44: 
.branch_true_44:
              #                     454  untrack i_29_6 
              #                     453  untrack temp_24_ele_of_*tape_0_49_0 
              #                     452  untrack temp_44_cmp_55_0 
              #                     451  untrack temp_15_ptr_of_*tape_0_57 
              #                     450  untrack temp_41_cmp_43_0 
              #                    occupy s1 with temp_41_cmp_43_0
              #                    release s1 with temp_41_cmp_43_0
              #                     449  untrack temp_32_value_from_ptr_41_0 
              #                     448  untrack temp_38__857_0 
              #                    occupy a6 with temp_38__857_0
              #                    release a6 with temp_38__857_0
              #                     447  untrack temp_43_cmp_51_0 
              #                     446  untrack temp_20_value_from_ptr_49_0 
              #                     445  untrack temp_42_cmp_47_0 
              #                     444  untrack temp_18_ptr_of_*tape_0_53 
              #                     443  untrack temp_37_ele_of_input_27_31_0 
              #                    occupy a4 with temp_37_ele_of_input_27_31_0
              #                    release a4 with temp_37_ele_of_input_27_31_0
              #                     442  untrack temp_17_value_from_ptr_53_0 
              #                     441  untrack temp_25_arithop_49_0 
              #                     440  untrack temp_16_ret_of_getch_57_0 
              #                     439  untrack temp_47_ptr_of_*tape_0_59 
              #                     438  untrack temp_46_value_from_ptr_59_0 
              #                     437  untrack temp_21_ptr_of_*tape_0_49 
              #                     436  untrack temp_39_cmp_35_0 
              #                    occupy a5 with temp_39_cmp_35_0
              #                    release a5 with temp_39_cmp_35_0
              #                     435  untrack temp_45_cmp_59_0 
              #                     434  untrack temp_36_ptr_of_input_27_31 
              #                    occupy a2 with temp_36_ptr_of_input_27_31
              #                    release a2 with temp_36_ptr_of_input_27_31
              #                     433  untrack loop_29_10 
              #                     432  untrack temp_49_i32_to_bool_59_0 
              #                     431  untrack temp_33_arithop_41_0 
              #                     430  untrack temp_40_cmp_39_0 
              #                    occupy a7 with temp_40_cmp_39_0
              #                    release a7 with temp_40_cmp_39_0
              #                     429  untrack i_29_8 
              #                     428  untrack temp_14_value_from_ptr_57_0 
              #                     427  untrack temp_34_value_from_ptr_37_0 
              #                     426  untrack i_29_10 
              #                     425  untrack temp_35_arithop_37_0 
              #                     424  untrack temp_48_ele_of_*tape_0_59_0 
              #                     423  untrack temp_19_ele_of_*tape_0_53_0 
              #                     422  untrack i_29_9 
              #                     421  untrack i_29_7 
              #                     127  temp_26_value_from_ptr_45_0 = load *ptr_0:ptr->i32 
              #                    occupy a2 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a2, ptr
              #                    occupy reg a2 with *ptr_0
              #                    occupy a3 with temp_26_value_from_ptr_45_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     128  mu ptr_0_2:127 
              #                     130  temp_27_ptr_of_*tape_0_45 = GEP *tape_0:ptr->i32 [Some(temp_26_value_from_ptr_45_0)] 
              #                    occupy a4 with temp_27_ptr_of_*tape_0_45
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_26_value_from_ptr_45_0
    mv      a5, a3
              #                    free a3
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *tape_0
              #                       load label tape as ptr to reg
    la      a6, tape
              #                    occupy reg a6 with *tape_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     456  untrack temp_26_value_from_ptr_45_0 
              #                    occupy a3 with temp_26_value_from_ptr_45_0
              #                    release a3 with temp_26_value_from_ptr_45_0
              #                     132  (nop) 
              #                     133  mu ptr_0_2:132 
              #                     135  (nop) 
              #                     137  temp_30_ele_of_*tape_0_45_0 = load temp_27_ptr_of_*tape_0_45:ptr->i32 
              #                    occupy a4 with temp_27_ptr_of_*tape_0_45
              #                    occupy a3 with temp_30_ele_of_*tape_0_45_0
    lw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                     138  mu tape_0_2:137 
              #                     140  temp_31_arithop_45_0 = Add i32 temp_30_ele_of_*tape_0_45_0, 1_0 
              #                    occupy a3 with temp_30_ele_of_*tape_0_45_0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_31_arithop_45_0
    ADDW    s1,a3,a7
              #                    free a3
              #                    free a7
              #                    free s1
              #                     455  untrack temp_30_ele_of_*tape_0_45_0 
              #                    occupy a3 with temp_30_ele_of_*tape_0_45_0
              #                    release a3 with temp_30_ele_of_*tape_0_45_0
              #                     141  store temp_31_arithop_45_0:i32 temp_27_ptr_of_*tape_0_45:ptr->i32 
              #                    occupy a4 with temp_27_ptr_of_*tape_0_45
              #                    occupy s1 with temp_31_arithop_45_0
    sw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                     458  untrack temp_31_arithop_45_0 
              #                    occupy s1 with temp_31_arithop_45_0
              #                    release s1 with temp_31_arithop_45_0
              #                     457  untrack temp_27_ptr_of_*tape_0_45 
              #                    occupy a4 with temp_27_ptr_of_*tape_0_45
              #                    release a4 with temp_27_ptr_of_*tape_0_45
              #                     142  tape_0_5 = chi tape_0_2:141 
              #                     317  i_29_5 = i32 i_29_1 
              #                    occupy a1 with i_29_1
              #                    occupy a3 with i_29_5
    mv      a3, a1
              #                    free a1
              #                    free a3
              #                          jump label: gather_35 
    j       .gather_35
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a3:Freed { symidx: i_29_5, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     220  label gather_35: 
.gather_35:
              #                     318  i_29_4 = i32 i_29_5 
              #                    occupy a3 with i_29_5
              #                    occupy a2 with i_29_4
    mv      a2, a3
              #                    free a3
              #                    free a2
              #                          jump label: gather_37 
              #                    occupy a2 with i_29_4
              #                    store to i_29_4 in mem offset legal
    sw      a2,212(sp)
              #                    release a2 with i_29_4
              #                    occupy a5 with i_29_4
              #                    load from i_29_4 in mem


    lw      a5,212(sp)
              #                    occupy a3 with i_29_5
              #                    store to i_29_5 in mem offset legal
    sw      a3,208(sp)
              #                    release a3 with i_29_5
    j       .gather_37
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a4:Freed { symidx: temp_37_ele_of_input_27_31_0, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |     a7:Freed { symidx: temp_40_cmp_39_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_43_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     182  label branch_false_44: 
.branch_false_44:
              #                     185  temp_42_cmp_47_0 = icmp i32 Eq temp_37_ele_of_input_27_31_0, 45_0 
              #                    occupy a4 with temp_37_ele_of_input_27_31_0
              #                    occupy a3 with 45_0
    li      a3, 45
              #                    occupy s2 with temp_42_cmp_47_0
    xor     s2,a4,a3
    seqz    s2, s2
              #                    free a4
              #                    occupy a4 with temp_37_ele_of_input_27_31_0
              #                    store to temp_37_ele_of_input_27_31_0 in mem offset legal
    sw      a4,28(sp)
              #                    release a4 with temp_37_ele_of_input_27_31_0
              #                    free a3
              #                    free s2
              #                     188  br i1 temp_42_cmp_47_0, label branch_true_48, label branch_false_48 
              #                    occupy s2 with temp_42_cmp_47_0
              #                    free s2
              #                    occupy s2 with temp_42_cmp_47_0
    bnez    s2, .branch_true_48
              #                    free s2
    j       .branch_false_48
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |     a7:Freed { symidx: temp_40_cmp_39_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_43_0, tracked: true } |     s2:Freed { symidx: temp_42_cmp_47_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     186  label branch_true_48: 
.branch_true_48:
              #                     494  untrack temp_48_ele_of_*tape_0_59_0 
              #                     493  untrack temp_45_cmp_59_0 
              #                     492  untrack temp_8_arithop_33_0 
              #                     491  untrack temp_18_ptr_of_*tape_0_53 
              #                     490  untrack temp_49_i32_to_bool_59_0 
              #                     489  untrack temp_42_cmp_47_0 
              #                    occupy s2 with temp_42_cmp_47_0
              #                    release s2 with temp_42_cmp_47_0
              #                     488  untrack temp_38__857_0 
              #                    occupy a6 with temp_38__857_0
              #                    release a6 with temp_38__857_0
              #                     487  untrack temp_31_arithop_45_0 
              #                     486  untrack temp_33_arithop_41_0 
              #                     485  untrack temp_30_ele_of_*tape_0_45_0 
              #                     484  untrack temp_43_cmp_51_0 
              #                     483  untrack temp_46_value_from_ptr_59_0 
              #                     482  untrack temp_36_ptr_of_input_27_31 
              #                    occupy a2 with temp_36_ptr_of_input_27_31
              #                    release a2 with temp_36_ptr_of_input_27_31
              #                     481  untrack temp_40_cmp_39_0 
              #                    occupy a7 with temp_40_cmp_39_0
              #                    release a7 with temp_40_cmp_39_0
              #                     480  untrack i_29_4 
              #                     479  untrack temp_37_ele_of_input_27_31_0 
              #                     478  untrack temp_47_ptr_of_*tape_0_59 
              #                     477  untrack temp_34_value_from_ptr_37_0 
              #                     476  untrack temp_39_cmp_35_0 
              #                    occupy a5 with temp_39_cmp_35_0
              #                    release a5 with temp_39_cmp_35_0
              #                     475  untrack loop_29_10 
              #                     474  untrack temp_35_arithop_37_0 
              #                     473  untrack temp_17_value_from_ptr_53_0 
              #                     472  untrack temp_32_value_from_ptr_41_0 
              #                     471  untrack temp_16_ret_of_getch_57_0 
              #                     470  untrack i_29_2 
              #                     469  untrack temp_14_value_from_ptr_57_0 
              #                     468  untrack i_29_8 
              #                     467  untrack i_29_10 
              #                     466  untrack i_29_9 
              #                     465  untrack i_29_7 
              #                     464  untrack temp_27_ptr_of_*tape_0_45 
              #                     463  untrack temp_41_cmp_43_0 
              #                    occupy s1 with temp_41_cmp_43_0
              #                    release s1 with temp_41_cmp_43_0
              #                     462  untrack temp_15_ptr_of_*tape_0_57 
              #                     461  untrack temp_19_ele_of_*tape_0_53_0 
              #                     460  untrack temp_26_value_from_ptr_45_0 
              #                     459  untrack temp_44_cmp_55_0 
              #                     110  temp_20_value_from_ptr_49_0 = load *ptr_0:ptr->i32 
              #                    occupy a2 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a2, ptr
              #                    occupy reg a2 with *ptr_0
              #                    occupy a3 with temp_20_value_from_ptr_49_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     111  mu ptr_0_2:110 
              #                     113  temp_21_ptr_of_*tape_0_49 = GEP *tape_0:ptr->i32 [Some(temp_20_value_from_ptr_49_0)] 
              #                    occupy a4 with temp_21_ptr_of_*tape_0_49
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_20_value_from_ptr_49_0
    mv      a5, a3
              #                    free a3
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *tape_0
              #                       load label tape as ptr to reg
    la      a6, tape
              #                    occupy reg a6 with *tape_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     498  untrack temp_20_value_from_ptr_49_0 
              #                    occupy a3 with temp_20_value_from_ptr_49_0
              #                    release a3 with temp_20_value_from_ptr_49_0
              #                     115  (nop) 
              #                     116  mu ptr_0_2:115 
              #                     118  (nop) 
              #                     120  temp_24_ele_of_*tape_0_49_0 = load temp_21_ptr_of_*tape_0_49:ptr->i32 
              #                    occupy a4 with temp_21_ptr_of_*tape_0_49
              #                    occupy a3 with temp_24_ele_of_*tape_0_49_0
    lw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                     121  mu tape_0_2:120 
              #                     123  temp_25_arithop_49_0 = Sub i32 temp_24_ele_of_*tape_0_49_0, 1_0 
              #                    occupy a3 with temp_24_ele_of_*tape_0_49_0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_25_arithop_49_0
              #                    regtab:    a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: *ptr_0, tracked: false } |     a3:Occupied { symidx: temp_24_ele_of_*tape_0_49_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_21_ptr_of_*tape_0_49, tracked: true } |     a5:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a6:Freed { symidx: *tape_0, tracked: false } |     a7:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Occupied { symidx: temp_25_arithop_49_0, tracked: true, occupy_count: 1 } |  released_gpr_count:4,released_fpr_count:24


    subw    s1,a3,a7
              #                    free a3
              #                    occupy a3 with temp_24_ele_of_*tape_0_49_0
              #                    store to temp_24_ele_of_*tape_0_49_0 in mem offset legal
    sw      a3,92(sp)
              #                    release a3 with temp_24_ele_of_*tape_0_49_0
              #                    free a7
              #                    free s1
              #                     495  untrack temp_24_ele_of_*tape_0_49_0 
              #                     124  store temp_25_arithop_49_0:i32 temp_21_ptr_of_*tape_0_49:ptr->i32 
              #                    occupy a4 with temp_21_ptr_of_*tape_0_49
              #                    occupy s1 with temp_25_arithop_49_0
    sw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                     497  untrack temp_21_ptr_of_*tape_0_49 
              #                    occupy a4 with temp_21_ptr_of_*tape_0_49
              #                    release a4 with temp_21_ptr_of_*tape_0_49
              #                     496  untrack temp_25_arithop_49_0 
              #                    occupy s1 with temp_25_arithop_49_0
              #                    release s1 with temp_25_arithop_49_0
              #                     125  tape_0_7 = chi tape_0_2:124 
              #                     319  i_29_6 = i32 i_29_1 
              #                    occupy a1 with i_29_1
              #                    occupy a3 with i_29_6
    mv      a3, a1
              #                    free a1
              #                    free a3
              #                          jump label: gather_33 
    j       .gather_33
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a3:Freed { symidx: i_29_6, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     219  label gather_33: 
.gather_33:
              #                     320  i_29_5 = i32 i_29_6 
              #                    occupy a3 with i_29_6
              #                    occupy a2 with i_29_5
    mv      a2, a3
              #                    free a3
              #                    free a2
              #                          jump label: gather_35 
              #                    occupy a3 with i_29_6
              #                    store to i_29_6 in mem offset legal
    sw      a3,204(sp)
              #                    release a3 with i_29_6
              #                    occupy a2 with i_29_5
              #                    store to i_29_5 in mem offset legal
    sw      a2,208(sp)
              #                    release a2 with i_29_5
              #                    occupy a3 with i_29_5
              #                    load from i_29_5 in mem


    lw      a3,208(sp)
    j       .gather_35
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |     a7:Freed { symidx: temp_40_cmp_39_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_43_0, tracked: true } |     s2:Freed { symidx: temp_42_cmp_47_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     187  label branch_false_48: 
.branch_false_48:
              #                     190  temp_43_cmp_51_0 = icmp i32 Eq temp_37_ele_of_input_27_31_0, 46_0 
              #                    occupy a3 with temp_37_ele_of_input_27_31_0
              #                    load from temp_37_ele_of_input_27_31_0 in mem


    lw      a3,28(sp)
              #                    occupy a4 with 46_0
    li      a4, 46
              #                    occupy s3 with temp_43_cmp_51_0
    xor     s3,a3,a4
    seqz    s3, s3
              #                    free a3
              #                    occupy a3 with temp_37_ele_of_input_27_31_0
              #                    store to temp_37_ele_of_input_27_31_0 in mem offset legal
    sw      a3,28(sp)
              #                    release a3 with temp_37_ele_of_input_27_31_0
              #                    free a4
              #                    free s3
              #                    occupy s3 with temp_43_cmp_51_0
              #                    store to temp_43_cmp_51_0 in mem offset legal
    sb      s3,22(sp)
              #                    release s3 with temp_43_cmp_51_0
              #                     193  br i1 temp_43_cmp_51_0, label branch_true_52, label branch_false_52 
              #                    occupy a3 with temp_43_cmp_51_0
              #                    load from temp_43_cmp_51_0 in mem


    lb      a3,22(sp)
              #                    free a3
              #                    occupy a3 with temp_43_cmp_51_0
              #                    store to temp_43_cmp_51_0 in mem offset legal
    sb      a3,22(sp)
              #                    release a3 with temp_43_cmp_51_0
              #                    occupy a3 with temp_43_cmp_51_0
              #                    load from temp_43_cmp_51_0 in mem


    lb      a3,22(sp)
    bnez    a3, .branch_true_52
              #                    free a3
              #                    occupy a3 with temp_43_cmp_51_0
              #                    store to temp_43_cmp_51_0 in mem offset legal
    sb      a3,22(sp)
              #                    release a3 with temp_43_cmp_51_0
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |     a7:Freed { symidx: temp_40_cmp_39_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_43_0, tracked: true } |     s2:Freed { symidx: temp_42_cmp_47_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     191  label branch_true_52: 
.branch_true_52:
              #                     534  untrack temp_24_ele_of_*tape_0_49_0 
              #                     533  untrack temp_47_ptr_of_*tape_0_59 
              #                     532  untrack loop_29_10 
              #                     531  untrack temp_34_value_from_ptr_37_0 
              #                     530  untrack temp_41_cmp_43_0 
              #                    occupy s1 with temp_41_cmp_43_0
              #                    release s1 with temp_41_cmp_43_0
              #                     529  untrack temp_32_value_from_ptr_41_0 
              #                     528  untrack temp_20_value_from_ptr_49_0 
              #                     527  untrack temp_14_value_from_ptr_57_0 
              #                     526  untrack temp_38__857_0 
              #                    occupy a6 with temp_38__857_0
              #                    release a6 with temp_38__857_0
              #                     525  untrack temp_35_arithop_37_0 
              #                     524  untrack temp_36_ptr_of_input_27_31 
              #                    occupy a2 with temp_36_ptr_of_input_27_31
              #                    release a2 with temp_36_ptr_of_input_27_31
              #                     523  untrack temp_37_ele_of_input_27_31_0 
              #                     522  untrack temp_46_value_from_ptr_59_0 
              #                     521  untrack temp_15_ptr_of_*tape_0_57 
              #                     520  untrack temp_49_i32_to_bool_59_0 
              #                     519  untrack temp_26_value_from_ptr_45_0 
              #                     518  untrack temp_42_cmp_47_0 
              #                    occupy s2 with temp_42_cmp_47_0
              #                    release s2 with temp_42_cmp_47_0
              #                     517  untrack temp_30_ele_of_*tape_0_45_0 
              #                     516  untrack temp_43_cmp_51_0 
              #                     515  untrack temp_21_ptr_of_*tape_0_49 
              #                     514  untrack temp_33_arithop_41_0 
              #                     513  untrack temp_44_cmp_55_0 
              #                     512  untrack temp_31_arithop_45_0 
              #                     511  untrack temp_8_arithop_33_0 
              #                     510  untrack temp_16_ret_of_getch_57_0 
              #                     509  untrack i_29_2 
              #                     508  untrack temp_40_cmp_39_0 
              #                    occupy a7 with temp_40_cmp_39_0
              #                    release a7 with temp_40_cmp_39_0
              #                     507  untrack i_29_8 
              #                     506  untrack temp_25_arithop_49_0 
              #                     505  untrack i_29_10 
              #                     504  untrack i_29_9 
              #                     503  untrack temp_39_cmp_35_0 
              #                    occupy a5 with temp_39_cmp_35_0
              #                    release a5 with temp_39_cmp_35_0
              #                     502  untrack i_29_4 
              #                     501  untrack temp_45_cmp_59_0 
              #                     500  untrack temp_27_ptr_of_*tape_0_45 
              #                     499  untrack temp_48_ele_of_*tape_0_59_0 
              #                     101  temp_17_value_from_ptr_53_0 = load *ptr_0:ptr->i32 
              #                    occupy a2 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a2, ptr
              #                    occupy reg a2 with *ptr_0
              #                    occupy a3 with temp_17_value_from_ptr_53_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     102  mu ptr_0_2:101 
              #                     104  temp_18_ptr_of_*tape_0_53 = GEP *tape_0:Array:i32:[None] [Some(temp_17_value_from_ptr_53_0)] 
              #                    occupy a4 with temp_18_ptr_of_*tape_0_53
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_17_value_from_ptr_53_0
    mv      a5, a3
              #                    free a3
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *tape_0
              #                       load label tape as ptr to reg
    la      a6, tape
              #                    occupy reg a6 with *tape_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     536  untrack temp_17_value_from_ptr_53_0 
              #                    occupy a3 with temp_17_value_from_ptr_53_0
              #                    release a3 with temp_17_value_from_ptr_53_0
              #                     106  temp_19_ele_of_*tape_0_53_0 = load temp_18_ptr_of_*tape_0_53:ptr->i32 
              #                    occupy a4 with temp_18_ptr_of_*tape_0_53
              #                    occupy a3 with temp_19_ele_of_*tape_0_53_0
    lw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                     537  untrack temp_18_ptr_of_*tape_0_53 
              #                    occupy a4 with temp_18_ptr_of_*tape_0_53
              #                    release a4 with temp_18_ptr_of_*tape_0_53
              #                     107  mu tape_0_2:106 
              #                     108   Call void putch_0(temp_19_ele_of_*tape_0_53_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with input_27
              #                    store to input_27 in mem offset legal
    sd      a0,312(sp)
              #                    release a0 with input_27
              #                    occupy a1 with i_29_1
              #                    store to i_29_1 in mem offset legal
    sw      a1,220(sp)
              #                    release a1 with i_29_1
              #                    occupy a3 with temp_19_ele_of_*tape_0_53_0
              #                    store to temp_19_ele_of_*tape_0_53_0 in mem offset legal
    sw      a3,116(sp)
              #                    release a3 with temp_19_ele_of_*tape_0_53_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_19_ele_of_*tape_0_53_0_0
              #                    load from temp_19_ele_of_*tape_0_53_0 in mem


    lw      a0,116(sp)
              #                    arg load ended


    call    putch
              #                     535  untrack temp_19_ele_of_*tape_0_53_0 
              #                     321  i_29_7 = i32 i_29_1 
              #                    occupy a0 with i_29_1
              #                    load from i_29_1 in mem


    lw      a0,220(sp)
              #                    occupy a1 with i_29_7
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: gather_31 
    j       .gather_31
              #                    regtab     a0:Freed { symidx: i_29_1, tracked: true } |     a1:Freed { symidx: i_29_7, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     218  label gather_31: 
.gather_31:
              #                     322  i_29_6 = i32 i_29_7 
              #                    occupy a1 with i_29_7
              #                    occupy a2 with i_29_6
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          jump label: gather_33 
              #                    occupy a1 with i_29_7
              #                    store to i_29_7 in mem offset legal
    sw      a1,200(sp)
              #                    release a1 with i_29_7
              #                    occupy a0 with i_29_1
              #                    store to i_29_1 in mem offset legal
    sw      a0,220(sp)
              #                    release a0 with i_29_1
              #                    occupy a1 with i_29_1
              #                    load from i_29_1 in mem


    lw      a1,220(sp)
              #                    occupy a2 with i_29_6
              #                    store to i_29_6 in mem offset legal
    sw      a2,204(sp)
              #                    release a2 with i_29_6
              #                    occupy a3 with i_29_6
              #                    load from i_29_6 in mem


    lw      a3,204(sp)
              #                    occupy a0 with input_27
              #                    load from input_27 in mem
    ld      a0,312(sp)
    j       .gather_33
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |     a7:Freed { symidx: temp_40_cmp_39_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_43_0, tracked: true } |     s2:Freed { symidx: temp_42_cmp_47_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     192  label branch_false_52: 
.branch_false_52:
              #                     195  temp_44_cmp_55_0 = icmp i32 Eq temp_37_ele_of_input_27_31_0, 44_0 
              #                    occupy a3 with temp_37_ele_of_input_27_31_0
              #                    load from temp_37_ele_of_input_27_31_0 in mem


    lw      a3,28(sp)
              #                    occupy a4 with 44_0
    li      a4, 44
              #                    occupy s3 with temp_44_cmp_55_0
    xor     s3,a3,a4
    seqz    s3, s3
              #                    free a3
              #                    occupy a3 with temp_37_ele_of_input_27_31_0
              #                    store to temp_37_ele_of_input_27_31_0 in mem offset legal
    sw      a3,28(sp)
              #                    release a3 with temp_37_ele_of_input_27_31_0
              #                    free a4
              #                    free s3
              #                    occupy s3 with temp_44_cmp_55_0
              #                    store to temp_44_cmp_55_0 in mem offset legal
    sb      s3,21(sp)
              #                    release s3 with temp_44_cmp_55_0
              #                     198  br i1 temp_44_cmp_55_0, label branch_true_56, label branch_false_56 
              #                    occupy a3 with temp_44_cmp_55_0
              #                    load from temp_44_cmp_55_0 in mem


    lb      a3,21(sp)
              #                    free a3
              #                    occupy a3 with temp_44_cmp_55_0
              #                    store to temp_44_cmp_55_0 in mem offset legal
    sb      a3,21(sp)
              #                    release a3 with temp_44_cmp_55_0
              #                    occupy a3 with temp_44_cmp_55_0
              #                    load from temp_44_cmp_55_0 in mem


    lb      a3,21(sp)
    bnez    a3, .branch_true_56
              #                    free a3
              #                    occupy a3 with temp_44_cmp_55_0
              #                    store to temp_44_cmp_55_0 in mem offset legal
    sb      a3,21(sp)
              #                    release a3 with temp_44_cmp_55_0
    j       .branch_false_56
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |     a7:Freed { symidx: temp_40_cmp_39_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_43_0, tracked: true } |     s2:Freed { symidx: temp_42_cmp_47_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     196  label branch_true_56: 
.branch_true_56:
              #                     574  untrack temp_44_cmp_55_0 
              #                     573  untrack temp_45_cmp_59_0 
              #                     572  untrack temp_18_ptr_of_*tape_0_53 
              #                     571  untrack temp_26_value_from_ptr_45_0 
              #                     570  untrack temp_39_cmp_35_0 
              #                    occupy a5 with temp_39_cmp_35_0
              #                    release a5 with temp_39_cmp_35_0
              #                     569  untrack temp_24_ele_of_*tape_0_49_0 
              #                     568  untrack temp_49_i32_to_bool_59_0 
              #                     567  untrack temp_32_value_from_ptr_41_0 
              #                     566  untrack temp_8_arithop_33_0 
              #                     565  untrack temp_48_ele_of_*tape_0_59_0 
              #                     564  untrack temp_38__857_0 
              #                    occupy a6 with temp_38__857_0
              #                    release a6 with temp_38__857_0
              #                     563  untrack temp_46_value_from_ptr_59_0 
              #                     562  untrack temp_20_value_from_ptr_49_0 
              #                     561  untrack temp_21_ptr_of_*tape_0_49 
              #                     560  untrack temp_30_ele_of_*tape_0_45_0 
              #                     559  untrack temp_37_ele_of_input_27_31_0 
              #                     558  untrack temp_35_arithop_37_0 
              #                     557  untrack temp_36_ptr_of_input_27_31 
              #                    occupy a2 with temp_36_ptr_of_input_27_31
              #                    release a2 with temp_36_ptr_of_input_27_31
              #                     556  untrack i_29_2 
              #                     555  untrack i_29_10 
              #                     554  untrack i_29_4 
              #                     553  untrack i_29_9 
              #                     552  untrack i_29_6 
              #                     551  untrack i_29_5 
              #                     550  untrack temp_25_arithop_49_0 
              #                     549  untrack temp_41_cmp_43_0 
              #                    occupy s1 with temp_41_cmp_43_0
              #                    release s1 with temp_41_cmp_43_0
              #                     548  untrack temp_19_ele_of_*tape_0_53_0 
              #                     547  untrack temp_33_arithop_41_0 
              #                     546  untrack temp_31_arithop_45_0 
              #                     545  untrack temp_40_cmp_39_0 
              #                    occupy a7 with temp_40_cmp_39_0
              #                    release a7 with temp_40_cmp_39_0
              #                     544  untrack temp_47_ptr_of_*tape_0_59 
              #                     543  untrack temp_34_value_from_ptr_37_0 
              #                     542  untrack temp_43_cmp_51_0 
              #                     541  untrack loop_29_10 
              #                     540  untrack temp_27_ptr_of_*tape_0_45 
              #                     539  untrack temp_17_value_from_ptr_53_0 
              #                     538  untrack temp_42_cmp_47_0 
              #                    occupy s2 with temp_42_cmp_47_0
              #                    release s2 with temp_42_cmp_47_0
              #                     92   temp_14_value_from_ptr_57_0 = load *ptr_0:ptr->i32 
              #                    occupy a2 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a2, ptr
              #                    occupy reg a2 with *ptr_0
              #                    occupy a3 with temp_14_value_from_ptr_57_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     93   mu ptr_0_2:92 
              #                     95   temp_15_ptr_of_*tape_0_57 = GEP *tape_0:ptr->i32 [Some(temp_14_value_from_ptr_57_0)] 
              #                    occupy a4 with temp_15_ptr_of_*tape_0_57
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_14_value_from_ptr_57_0
    mv      a5, a3
              #                    free a3
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *tape_0
              #                       load label tape as ptr to reg
    la      a6, tape
              #                    occupy reg a6 with *tape_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     575  untrack temp_14_value_from_ptr_57_0 
              #                    occupy a3 with temp_14_value_from_ptr_57_0
              #                    release a3 with temp_14_value_from_ptr_57_0
              #                     97   temp_16_ret_of_getch_57_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with input_27
              #                    store to input_27 in mem offset legal
    sd      a0,312(sp)
              #                    release a0 with input_27
              #                    occupy a1 with i_29_1
              #                    store to i_29_1 in mem offset legal
    sw      a1,220(sp)
              #                    release a1 with i_29_1
              #                    occupy a4 with temp_15_ptr_of_*tape_0_57
              #                    store to temp_15_ptr_of_*tape_0_57 in mem offset legal
    sd      a4,136(sp)
              #                    release a4 with temp_15_ptr_of_*tape_0_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     98   store temp_16_ret_of_getch_57_0:i32 temp_15_ptr_of_*tape_0_57:ptr->i32 
              #                    occupy a1 with temp_15_ptr_of_*tape_0_57
              #                    load from temp_15_ptr_of_*tape_0_57 in mem
    ld      a1,136(sp)
              #                    occupy a0 with temp_16_ret_of_getch_57_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     577  untrack temp_16_ret_of_getch_57_0 
              #                    occupy a0 with temp_16_ret_of_getch_57_0
              #                    release a0 with temp_16_ret_of_getch_57_0
              #                     576  untrack temp_15_ptr_of_*tape_0_57 
              #                    occupy a1 with temp_15_ptr_of_*tape_0_57
              #                    release a1 with temp_15_ptr_of_*tape_0_57
              #                     99   tape_0_10 = chi tape_0_2:98 
              #                     323  i_29_8 = i32 i_29_1 
              #                    occupy a0 with i_29_1
              #                    load from i_29_1 in mem


    lw      a0,220(sp)
              #                    occupy a1 with i_29_8
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: gather_29 
    j       .gather_29
              #                    regtab     a0:Freed { symidx: i_29_1, tracked: true } |     a1:Freed { symidx: i_29_8, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     217  label gather_29: 
.gather_29:
              #                     324  i_29_7 = i32 i_29_8 
              #                    occupy a1 with i_29_8
              #                    occupy a2 with i_29_7
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          jump label: gather_31 
              #                    occupy a1 with i_29_8
              #                    store to i_29_8 in mem offset legal
    sw      a1,196(sp)
              #                    release a1 with i_29_8
              #                    occupy a2 with i_29_7
              #                    store to i_29_7 in mem offset legal
    sw      a2,200(sp)
              #                    release a2 with i_29_7
              #                    occupy a1 with i_29_7
              #                    load from i_29_7 in mem


    lw      a1,200(sp)
    j       .gather_31
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |     a7:Freed { symidx: temp_40_cmp_39_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_43_0, tracked: true } |     s2:Freed { symidx: temp_42_cmp_47_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     197  label branch_false_56: 
.branch_false_56:
              #                     200  temp_45_cmp_59_0 = icmp i32 Eq temp_37_ele_of_input_27_31_0, 93_0 
              #                    occupy a3 with temp_37_ele_of_input_27_31_0
              #                    load from temp_37_ele_of_input_27_31_0 in mem


    lw      a3,28(sp)
              #                    occupy a4 with 93_0
    li      a4, 93
              #                    occupy s3 with temp_45_cmp_59_0
    xor     s3,a3,a4
    seqz    s3, s3
              #                    free a3
              #                    occupy a3 with temp_37_ele_of_input_27_31_0
              #                    store to temp_37_ele_of_input_27_31_0 in mem offset legal
    sw      a3,28(sp)
              #                    release a3 with temp_37_ele_of_input_27_31_0
              #                    free a4
              #                    free s3
              #                    occupy s3 with temp_45_cmp_59_0
              #                    store to temp_45_cmp_59_0 in mem offset legal
    sb      s3,20(sp)
              #                    release s3 with temp_45_cmp_59_0
              #                     216  br i1 temp_45_cmp_59_0, label branch_short_circuit_p_true_309, label UP_43_0 
              #                    occupy a3 with temp_45_cmp_59_0
              #                    load from temp_45_cmp_59_0 in mem


    lb      a3,20(sp)
              #                    free a3
              #                    occupy a3 with temp_45_cmp_59_0
              #                    store to temp_45_cmp_59_0 in mem offset legal
    sb      a3,20(sp)
              #                    release a3 with temp_45_cmp_59_0
              #                    occupy a3 with temp_45_cmp_59_0
              #                    load from temp_45_cmp_59_0 in mem


    lb      a3,20(sp)
    bnez    a3, .branch_short_circuit_p_true_309
              #                    free a3
              #                    occupy a3 with temp_45_cmp_59_0
              #                    store to temp_45_cmp_59_0 in mem offset legal
    sb      a3,20(sp)
              #                    release a3 with temp_45_cmp_59_0
    j       .UP_43_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |     a7:Freed { symidx: temp_40_cmp_39_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_43_0, tracked: true } |     s2:Freed { symidx: temp_42_cmp_47_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     213  label branch_short_circuit_p_true_309: 
.branch_short_circuit_p_true_309:
              #                     610  untrack temp_44_cmp_55_0 
              #                     609  untrack temp_16_ret_of_getch_57_0 
              #                     608  untrack temp_45_cmp_59_0 
              #                     607  untrack temp_8_arithop_33_0 
              #                     606  untrack temp_30_ele_of_*tape_0_45_0 
              #                     605  untrack temp_32_value_from_ptr_41_0 
              #                     604  untrack temp_18_ptr_of_*tape_0_53 
              #                     603  untrack temp_33_arithop_41_0 
              #                     602  untrack temp_20_value_from_ptr_49_0 
              #                     601  untrack temp_15_ptr_of_*tape_0_57 
              #                     600  untrack temp_31_arithop_45_0 
              #                     599  untrack temp_43_cmp_51_0 
              #                     598  untrack temp_37_ele_of_input_27_31_0 
              #                     597  untrack temp_35_arithop_37_0 
              #                     596  untrack temp_39_cmp_35_0 
              #                    occupy a5 with temp_39_cmp_35_0
              #                    release a5 with temp_39_cmp_35_0
              #                     595  untrack temp_21_ptr_of_*tape_0_49 
              #                     594  untrack temp_25_arithop_49_0 
              #                     593  untrack i_29_4 
              #                     592  untrack temp_38__857_0 
              #                    occupy a6 with temp_38__857_0
              #                    release a6 with temp_38__857_0
              #                     591  untrack temp_27_ptr_of_*tape_0_45 
              #                     590  untrack temp_34_value_from_ptr_37_0 
              #                     589  untrack i_29_6 
              #                     588  untrack i_29_5 
              #                     587  untrack temp_19_ele_of_*tape_0_53_0 
              #                     586  untrack temp_36_ptr_of_input_27_31 
              #                    occupy a2 with temp_36_ptr_of_input_27_31
              #                    release a2 with temp_36_ptr_of_input_27_31
              #                     585  untrack temp_17_value_from_ptr_53_0 
              #                     584  untrack temp_40_cmp_39_0 
              #                    occupy a7 with temp_40_cmp_39_0
              #                    release a7 with temp_40_cmp_39_0
              #                     583  untrack temp_14_value_from_ptr_57_0 
              #                     582  untrack temp_26_value_from_ptr_45_0 
              #                     581  untrack temp_24_ele_of_*tape_0_49_0 
              #                     580  untrack i_29_2 
              #                     579  untrack temp_41_cmp_43_0 
              #                    occupy s1 with temp_41_cmp_43_0
              #                    release s1 with temp_41_cmp_43_0
              #                     578  untrack temp_42_cmp_47_0 
              #                    occupy s2 with temp_42_cmp_47_0
              #                    release s2 with temp_42_cmp_47_0
              #                     202  temp_46_value_from_ptr_59_0 = load *ptr_0:ptr->i32 
              #                    occupy a2 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a2, ptr
              #                    occupy reg a2 with *ptr_0
              #                    occupy a3 with temp_46_value_from_ptr_59_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     203  mu ptr_0_2:202 
              #                     205  temp_47_ptr_of_*tape_0_59 = GEP *tape_0:Array:i32:[None] [Some(temp_46_value_from_ptr_59_0)] 
              #                    occupy a4 with temp_47_ptr_of_*tape_0_59
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_46_value_from_ptr_59_0
    mv      a5, a3
              #                    free a3
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *tape_0
              #                       load label tape as ptr to reg
    la      a6, tape
              #                    occupy reg a6 with *tape_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     612  untrack temp_46_value_from_ptr_59_0 
              #                    occupy a3 with temp_46_value_from_ptr_59_0
              #                    release a3 with temp_46_value_from_ptr_59_0
              #                     207  temp_48_ele_of_*tape_0_59_0 = load temp_47_ptr_of_*tape_0_59:ptr->i32 
              #                    occupy a4 with temp_47_ptr_of_*tape_0_59
              #                    occupy a3 with temp_48_ele_of_*tape_0_59_0
    lw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                     611  untrack temp_47_ptr_of_*tape_0_59 
              #                    occupy a4 with temp_47_ptr_of_*tape_0_59
              #                    release a4 with temp_47_ptr_of_*tape_0_59
              #                     208  mu tape_0_2:207 
              #                     210  temp_49_i32_to_bool_59_0 = icmp i32 Ne temp_48_ele_of_*tape_0_59_0, 0_0 
              #                    occupy a3 with temp_48_ele_of_*tape_0_59_0
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a7 with temp_49_i32_to_bool_59_0
    xor     a7,a3,a4
    snez    a7, a7
              #                    free a3
              #                    free a4
              #                    free a7
              #                     613  untrack temp_48_ele_of_*tape_0_59_0 
              #                    occupy a3 with temp_48_ele_of_*tape_0_59_0
              #                    release a3 with temp_48_ele_of_*tape_0_59_0
              #                     215  br i1 temp_49_i32_to_bool_59_0, label branch_short_circuit_c_true_309, label UP_46_0 
              #                    occupy a7 with temp_49_i32_to_bool_59_0
              #                    free a7
              #                    occupy a7 with temp_49_i32_to_bool_59_0
    bnez    a7, .branch_short_circuit_c_true_309
              #                    free a7
    j       .UP_46_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a7:Freed { symidx: temp_49_i32_to_bool_59_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     211  label branch_short_circuit_c_true_309: 
.branch_short_circuit_c_true_309:
              #                     614  untrack temp_49_i32_to_bool_59_0 
              #                    occupy a7 with temp_49_i32_to_bool_59_0
              #                    release a7 with temp_49_i32_to_bool_59_0
              #                     75   (nop) 
              #                     325  i_29_10 = i32 i_29_1 
              #                    occupy a1 with i_29_1
              #                    occupy a2 with i_29_10
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     326  loop_29_10 = i32 1_0 
              #                    occupy a3 with loop_29_10
    li      a3, 1
              #                    free a3
              #                          jump label: while.head_64 
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: i_29_10, tracked: true } |     a3:Freed { symidx: loop_29_10, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     225  label while.head_64: 
.while.head_64:
              #                     224  temp_50_cmp_63_0 = icmp i32 Sgt loop_29_10, 0_0 
              #                    occupy a3 with loop_29_10
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_50_cmp_63_0
    slt     a5,a4,a3
              #                    free a3
              #                    occupy a3 with loop_29_10
              #                    store to loop_29_10 in mem offset legal
    sw      a3,232(sp)
              #                    release a3 with loop_29_10
              #                    free a4
              #                    free a5
              #                     227  br i1 temp_50_cmp_63_0, label while.body_64, label UP_47_0 
              #                    occupy a5 with temp_50_cmp_63_0
              #                    free a5
              #                    occupy a5 with temp_50_cmp_63_0
    bnez    a5, .while.body_64
              #                    free a5
    j       .UP_47_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: i_29_10, tracked: true } |     a5:Freed { symidx: temp_50_cmp_63_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     226  label while.body_64: 
.while.body_64:
              #                     77   temp_9_arithop_65_0 = Sub i32 i_29_10, 1_0 
              #                    occupy a2 with i_29_10
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_9_arithop_65_0
              #                    regtab:    a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Occupied { symidx: i_29_10, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Occupied { symidx: temp_9_arithop_65_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_50_cmp_63_0, tracked: true } |  released_gpr_count:3,released_fpr_count:24


    subw    a4,a2,a3
              #                    free a2
              #                    occupy a2 with i_29_10
              #                    store to i_29_10 in mem offset legal
    sw      a2,188(sp)
              #                    release a2 with i_29_10
              #                    free a3
              #                    free a4
              #                     78   (nop) 
              #                     80   temp_10_ptr_of_input_27_65 = GEP input_27:Array:i32:[None] [Some(temp_9_arithop_65_0)] 
              #                    occupy a2 with temp_10_ptr_of_input_27_65
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_9_arithop_65_0
    mv      a3, a4
              #                    free a4
              #                    occupy a4 with temp_9_arithop_65_0
              #                    store to temp_9_arithop_65_0 in mem offset legal
    sw      a4,168(sp)
              #                    release a4 with temp_9_arithop_65_0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with input_27
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     82   temp_11_ele_of_input_27_65_0 = load temp_10_ptr_of_input_27_65:ptr->i32 
              #                    occupy a2 with temp_10_ptr_of_input_27_65
              #                    occupy a3 with temp_11_ele_of_input_27_65_0
    lw      a3,0(a2)
              #                    free a3
              #                    occupy a3 with temp_11_ele_of_input_27_65_0
              #                    store to temp_11_ele_of_input_27_65_0 in mem offset legal
    sw      a3,156(sp)
              #                    release a3 with temp_11_ele_of_input_27_65_0
              #                    free a2
              #                     83   mu input_27:82 
              #                     84   (nop) 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_10_ptr_of_input_27_65, tracked: true } |     a5:Freed { symidx: temp_50_cmp_63_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     229  temp_51_cmp_68_0 = icmp i32 Eq temp_11_ele_of_input_27_65_0, 91_0 
              #                    occupy a3 with temp_11_ele_of_input_27_65_0
              #                    load from temp_11_ele_of_input_27_65_0 in mem


    lw      a3,156(sp)
              #                    occupy a4 with 91_0
    li      a4, 91
              #                    occupy a6 with temp_51_cmp_68_0
    xor     a6,a3,a4
    seqz    a6, a6
              #                    free a3
              #                    occupy a3 with temp_11_ele_of_input_27_65_0
              #                    store to temp_11_ele_of_input_27_65_0 in mem offset legal
    sw      a3,156(sp)
              #                    release a3 with temp_11_ele_of_input_27_65_0
              #                    free a4
              #                    free a6
              #                    occupy a6 with temp_51_cmp_68_0
              #                    store to temp_51_cmp_68_0 in mem offset legal
    sb      a6,1(sp)
              #                    release a6 with temp_51_cmp_68_0
              #                     232  br i1 temp_51_cmp_68_0, label branch_true_69, label branch_false_69 
              #                    occupy a3 with temp_51_cmp_68_0
              #                    load from temp_51_cmp_68_0 in mem


    lb      a3,1(sp)
              #                    free a3
              #                    occupy a3 with temp_51_cmp_68_0
              #                    store to temp_51_cmp_68_0 in mem offset legal
    sb      a3,1(sp)
              #                    release a3 with temp_51_cmp_68_0
              #                    occupy a3 with temp_51_cmp_68_0
              #                    load from temp_51_cmp_68_0 in mem


    lb      a3,1(sp)
    bnez    a3, .branch_true_69
              #                    free a3
              #                    occupy a3 with temp_51_cmp_68_0
              #                    store to temp_51_cmp_68_0 in mem offset legal
    sb      a3,1(sp)
              #                    release a3 with temp_51_cmp_68_0
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_10_ptr_of_input_27_65, tracked: true } |     a5:Freed { symidx: temp_50_cmp_63_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     230  label branch_true_69: 
.branch_true_69:
              #                     89   temp_13_arithop_70_0 = Sub i32 loop_29_10, 1_0 
              #                    occupy a3 with loop_29_10
              #                    load from loop_29_10 in mem


    lw      a3,232(sp)
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with temp_13_arithop_70_0
              #                    regtab:    a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_10_ptr_of_input_27_65, tracked: true } |     a3:Occupied { symidx: loop_29_10, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_50_cmp_63_0, tracked: true } |     a6:Occupied { symidx: temp_13_arithop_70_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    a6,a3,a4
              #                    free a3
              #                    occupy a3 with loop_29_10
              #                    store to loop_29_10 in mem offset legal
    sw      a3,232(sp)
              #                    release a3 with loop_29_10
              #                    free a4
              #                    free a6
              #                    occupy a6 with temp_13_arithop_70_0
              #                    store to temp_13_arithop_70_0 in mem offset legal
    sw      a6,148(sp)
              #                    release a6 with temp_13_arithop_70_0
              #                     90   (nop) 
              #                     327  loop_29_12 = i32 temp_13_arithop_70_0 
              #                    occupy a3 with temp_13_arithop_70_0
              #                    load from temp_13_arithop_70_0 in mem


    lw      a3,148(sp)
              #                    occupy a4 with loop_29_12
    mv      a4, a3
              #                    free a3
              #                    occupy a3 with temp_13_arithop_70_0
              #                    store to temp_13_arithop_70_0 in mem offset legal
    sw      a3,148(sp)
              #                    release a3 with temp_13_arithop_70_0
              #                    free a4
              #                    occupy a4 with loop_29_12
              #                    store to loop_29_12 in mem offset legal
    sw      a4,228(sp)
              #                    release a4 with loop_29_12
              #                          jump label: gather_24 
    j       .gather_24
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_10_ptr_of_input_27_65, tracked: true } |     a5:Freed { symidx: temp_50_cmp_63_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     238  label gather_24: 
.gather_24:
              #                     328  i_29_10 = i32 temp_9_arithop_65_0 
              #                    occupy a3 with temp_9_arithop_65_0
              #                    load from temp_9_arithop_65_0 in mem


    lw      a3,168(sp)
              #                    occupy a4 with i_29_10
    mv      a4, a3
              #                    free a3
              #                    occupy a3 with temp_9_arithop_65_0
              #                    store to temp_9_arithop_65_0 in mem offset legal
    sw      a3,168(sp)
              #                    release a3 with temp_9_arithop_65_0
              #                    free a4
              #                    occupy a4 with i_29_10
              #                    store to i_29_10 in mem offset legal
    sw      a4,188(sp)
              #                    release a4 with i_29_10
              #                     329  loop_29_10 = i32 loop_29_12 
              #                    occupy a3 with loop_29_12
              #                    load from loop_29_12 in mem


    lw      a3,228(sp)
              #                    occupy a4 with loop_29_10
    mv      a4, a3
              #                    free a3
              #                    occupy a3 with loop_29_12
              #                    store to loop_29_12 in mem offset legal
    sw      a3,228(sp)
              #                    release a3 with loop_29_12
              #                    free a4
              #                    occupy a4 with loop_29_10
              #                    store to loop_29_10 in mem offset legal
    sw      a4,232(sp)
              #                    release a4 with loop_29_10
              #                          jump label: while.head_64 
              #                    occupy a5 with temp_50_cmp_63_0
              #                    store to temp_50_cmp_63_0 in mem offset legal
    sb      a5,2(sp)
              #                    release a5 with temp_50_cmp_63_0
              #                    occupy a3 with loop_29_10
              #                    load from loop_29_10 in mem


    lw      a3,232(sp)
              #                    occupy a2 with temp_10_ptr_of_input_27_65
              #                    store to temp_10_ptr_of_input_27_65 in mem offset legal
    sd      a2,160(sp)
              #                    release a2 with temp_10_ptr_of_input_27_65
              #                    occupy a2 with i_29_10
              #                    load from i_29_10 in mem


    lw      a2,188(sp)
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_10_ptr_of_input_27_65, tracked: true } |     a5:Freed { symidx: temp_50_cmp_63_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     231  label branch_false_69: 
.branch_false_69:
              #                     234  temp_52_cmp_72_0 = icmp i32 Eq temp_11_ele_of_input_27_65_0, 93_0 
              #                    occupy a3 with temp_11_ele_of_input_27_65_0
              #                    load from temp_11_ele_of_input_27_65_0 in mem


    lw      a3,156(sp)
              #                    occupy a4 with 93_0
    li      a4, 93
              #                    occupy a6 with temp_52_cmp_72_0
    xor     a6,a3,a4
    seqz    a6, a6
              #                    free a3
              #                    occupy a3 with temp_11_ele_of_input_27_65_0
              #                    store to temp_11_ele_of_input_27_65_0 in mem offset legal
    sw      a3,156(sp)
              #                    release a3 with temp_11_ele_of_input_27_65_0
              #                    free a4
              #                    free a6
              #                    occupy a6 with temp_52_cmp_72_0
              #                    store to temp_52_cmp_72_0 in mem offset legal
    sb      a6,0(sp)
              #                    release a6 with temp_52_cmp_72_0
              #                     237  br i1 temp_52_cmp_72_0, label branch_true_73, label UP_48_0 
              #                    occupy a3 with temp_52_cmp_72_0
              #                    load from temp_52_cmp_72_0 in mem


    lb      a3,0(sp)
              #                    free a3
              #                    occupy a3 with temp_52_cmp_72_0
              #                    store to temp_52_cmp_72_0 in mem offset legal
    sb      a3,0(sp)
              #                    release a3 with temp_52_cmp_72_0
              #                    occupy a3 with temp_52_cmp_72_0
              #                    load from temp_52_cmp_72_0 in mem


    lb      a3,0(sp)
    bnez    a3, .branch_true_73
              #                    free a3
              #                    occupy a3 with temp_52_cmp_72_0
              #                    store to temp_52_cmp_72_0 in mem offset legal
    sb      a3,0(sp)
              #                    release a3 with temp_52_cmp_72_0
    j       .UP_48_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_10_ptr_of_input_27_65, tracked: true } |     a5:Freed { symidx: temp_50_cmp_63_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     235  label branch_true_73: 
.branch_true_73:
              #                     86   temp_12_arithop_74_0 = Add i32 loop_29_10, 1_0 
              #                    occupy a3 with loop_29_10
              #                    load from loop_29_10 in mem


    lw      a3,232(sp)
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with temp_12_arithop_74_0
    ADDW    a6,a3,a4
              #                    free a3
              #                    occupy a3 with loop_29_10
              #                    store to loop_29_10 in mem offset legal
    sw      a3,232(sp)
              #                    release a3 with loop_29_10
              #                    free a4
              #                    free a6
              #                    occupy a6 with temp_12_arithop_74_0
              #                    store to temp_12_arithop_74_0 in mem offset legal
    sw      a6,152(sp)
              #                    release a6 with temp_12_arithop_74_0
              #                     87   (nop) 
              #                     330  loop_29_14 = i32 temp_12_arithop_74_0 
              #                    occupy a3 with temp_12_arithop_74_0
              #                    load from temp_12_arithop_74_0 in mem


    lw      a3,152(sp)
              #                    occupy a4 with loop_29_14
    mv      a4, a3
              #                    free a3
              #                    occupy a3 with temp_12_arithop_74_0
              #                    store to temp_12_arithop_74_0 in mem offset legal
    sw      a3,152(sp)
              #                    release a3 with temp_12_arithop_74_0
              #                    free a4
              #                    occupy a4 with loop_29_14
              #                    store to loop_29_14 in mem offset legal
    sw      a4,224(sp)
              #                    release a4 with loop_29_14
              #                          jump label: branch_false_73 
    j       .branch_false_73
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_10_ptr_of_input_27_65, tracked: true } |     a5:Freed { symidx: temp_50_cmp_63_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     236  label branch_false_73: 
.branch_false_73:
              #                     331  loop_29_12 = i32 loop_29_14 
              #                    occupy a3 with loop_29_14
              #                    load from loop_29_14 in mem


    lw      a3,224(sp)
              #                    occupy a4 with loop_29_12
    mv      a4, a3
              #                    free a3
              #                    occupy a3 with loop_29_14
              #                    store to loop_29_14 in mem offset legal
    sw      a3,224(sp)
              #                    release a3 with loop_29_14
              #                    free a4
              #                    occupy a4 with loop_29_12
              #                    store to loop_29_12 in mem offset legal
    sw      a4,228(sp)
              #                    release a4 with loop_29_12
              #                          jump label: gather_24 
    j       .gather_24
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_10_ptr_of_input_27_65, tracked: true } |     a5:Freed { symidx: temp_50_cmp_63_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     311  label UP_48_0: 
.UP_48_0:
              #                     332  loop_29_14 = i32 loop_29_10 
              #                    occupy a3 with loop_29_10
              #                    load from loop_29_10 in mem


    lw      a3,232(sp)
              #                    occupy a4 with loop_29_14
    mv      a4, a3
              #                    free a3
              #                    occupy a3 with loop_29_10
              #                    store to loop_29_10 in mem offset legal
    sw      a3,232(sp)
              #                    release a3 with loop_29_10
              #                    free a4
              #                    occupy a4 with loop_29_14
              #                    store to loop_29_14 in mem offset legal
    sw      a4,224(sp)
              #                    release a4 with loop_29_14
              #                          jump label: branch_false_73 
    j       .branch_false_73
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: i_29_10, tracked: true } |     a5:Freed { symidx: temp_50_cmp_63_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     310  label UP_47_0: 
.UP_47_0:
              #                     618  untrack loop_29_10 
              #                     333  i_29_9 = i32 i_29_10 
              #                    occupy a2 with i_29_10
              #                    occupy a3 with i_29_9
    mv      a3, a2
              #                    free a2
              #                    occupy a2 with i_29_10
              #                    store to i_29_10 in mem offset legal
    sw      a2,188(sp)
              #                    release a2 with i_29_10
              #                    free a3
              #                     619  untrack i_29_10 
              #                          jump label: branch_short_circuit_c_false_309 
    j       .branch_short_circuit_c_false_309
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a3:Freed { symidx: i_29_9, tracked: true } |     a5:Freed { symidx: temp_50_cmp_63_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     212  label branch_short_circuit_c_false_309: 
.branch_short_circuit_c_false_309:
              #                     334  i_29_8 = i32 i_29_9 
              #                    occupy a3 with i_29_9
              #                    occupy a2 with i_29_8
    mv      a2, a3
              #                    free a3
              #                    occupy a3 with i_29_9
              #                    store to i_29_9 in mem offset legal
    sw      a3,192(sp)
              #                    release a3 with i_29_9
              #                    free a2
              #                          jump label: gather_29 
              #                    occupy a1 with i_29_1
              #                    store to i_29_1 in mem offset legal
    sw      a1,220(sp)
              #                    release a1 with i_29_1
              #                    occupy a2 with i_29_8
              #                    store to i_29_8 in mem offset legal
    sw      a2,196(sp)
              #                    release a2 with i_29_8
              #                    occupy a1 with i_29_8
              #                    load from i_29_8 in mem


    lw      a1,196(sp)
              #                    occupy a5 with temp_50_cmp_63_0
              #                    store to temp_50_cmp_63_0 in mem offset legal
    sb      a5,2(sp)
              #                    release a5 with temp_50_cmp_63_0
              #                    occupy a0 with input_27
              #                    store to input_27 in mem offset legal
    sd      a0,312(sp)
              #                    release a0 with input_27
              #                    occupy a0 with i_29_1
              #                    load from i_29_1 in mem


    lw      a0,220(sp)
    j       .gather_29
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a7:Freed { symidx: temp_49_i32_to_bool_59_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     309  label UP_46_0: 
.UP_46_0:
              #                     617  untrack temp_49_i32_to_bool_59_0 
              #                    occupy a7 with temp_49_i32_to_bool_59_0
              #                    release a7 with temp_49_i32_to_bool_59_0
              #                     616  untrack i_29_10 
              #                     615  untrack loop_29_10 
              #                     335  i_29_9 = i32 i_29_1 
              #                    occupy a1 with i_29_1
              #                    occupy a2 with i_29_9
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          jump label: branch_short_circuit_c_false_309 
              #                    occupy a5 with temp_50_cmp_63_0
              #                    load from temp_50_cmp_63_0 in mem


    lb      a5,2(sp)
              #                    occupy a2 with i_29_9
              #                    store to i_29_9 in mem offset legal
    sw      a2,192(sp)
              #                    release a2 with i_29_9
              #                    occupy a3 with i_29_9
              #                    load from i_29_9 in mem


    lw      a3,192(sp)
    j       .branch_short_circuit_c_false_309
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a5:Freed { symidx: temp_39_cmp_35_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |     a7:Freed { symidx: temp_40_cmp_39_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_43_0, tracked: true } |     s2:Freed { symidx: temp_42_cmp_47_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     308  label UP_43_0: 
.UP_43_0:
              #                     336  i_29_9 = i32 i_29_1 
              #                    occupy a1 with i_29_1
              #                    occupy a3 with i_29_9
    mv      a3, a1
              #                    free a1
              #                    occupy a1 with i_29_1
              #                    store to i_29_1 in mem offset legal
    sw      a1,220(sp)
              #                    release a1 with i_29_1
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_309 
              #                    occupy a1 with i_29_1
              #                    load from i_29_1 in mem


    lw      a1,220(sp)
              #                    occupy a6 with temp_38__857_0
              #                    store to temp_38__857_0 in mem offset legal
    sb      a6,27(sp)
              #                    release a6 with temp_38__857_0
              #                    occupy a7 with temp_40_cmp_39_0
              #                    store to temp_40_cmp_39_0 in mem offset legal
    sb      a7,25(sp)
              #                    release a7 with temp_40_cmp_39_0
              #                    occupy a5 with temp_39_cmp_35_0
              #                    store to temp_39_cmp_35_0 in mem offset legal
    sb      a5,26(sp)
              #                    release a5 with temp_39_cmp_35_0
              #                    occupy a5 with temp_50_cmp_63_0
              #                    load from temp_50_cmp_63_0 in mem


    lb      a5,2(sp)
              #                    occupy a2 with temp_36_ptr_of_input_27_31
              #                    store to temp_36_ptr_of_input_27_31 in mem offset legal
    sd      a2,32(sp)
              #                    release a2 with temp_36_ptr_of_input_27_31
              #                    occupy s1 with temp_41_cmp_43_0
              #                    store to temp_41_cmp_43_0 in mem offset legal
    sb      s1,24(sp)
              #                    release s1 with temp_41_cmp_43_0
              #                    occupy s2 with temp_42_cmp_47_0
              #                    store to temp_42_cmp_47_0 in mem offset legal
    sb      s2,23(sp)
              #                    release s2 with temp_42_cmp_47_0
    j       .branch_short_circuit_c_false_309
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29_1, tracked: true } |     a2:Freed { symidx: temp_36_ptr_of_input_27_31, tracked: true } |     a4:Freed { symidx: temp_37_ele_of_input_27_31_0, tracked: true } |     a6:Freed { symidx: temp_38__857_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     166  label while.exit_32: 
.while.exit_32:
              #                     341  untrack i_29_1 
              #                    occupy a1 with i_29_1
              #                    release a1 with i_29_1
              #                     340  untrack input_27 
              #                    occupy a0 with input_27
              #                    release a0 with input_27
              #                     249  mu ptr_0_2:168 
              #                     250  mu tape_0_2:168 
              #                     168  ret 
              #                    load from ra_interpret_0 in mem
    ld      ra,336(sp)
              #                    load from s0_interpret_0 in mem
    ld      s0,328(sp)
    addi    sp,sp,344
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     32   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 8|s0_main:8 at 0
    addi    sp,sp,-16
              #                    store to ra_main_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                     251  tape_0_12 = chi tape_0_0:32 
              #                     252  program_0_5 = chi program_0_0:32 
              #                     253  ptr_0_7 = chi ptr_0_0:32 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     239   Call void read_program_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    read_program
              #                     254  mu program_0_5:239 
              #                     255  program_0_6 = chi program_0_5:239 
              #                     240   Call void interpret_0(*program_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*program_0_0
              #                       load label program as ptr to reg
    la      a0, program
              #                    arg load ended


    call    interpret
              #                     256  mu tape_0_12:240 
              #                     257  mu ptr_0_7:240 
              #                     258  mu program_0_6:240 
              #                     259  ptr_0_8 = chi ptr_0_7:240 
              #                     260  tape_0_13 = chi tape_0_12:240 
              #                     261  program_0_7 = chi program_0_6:240 
              #                     262  mu tape_0_13:242 
              #                     263  mu program_0_7:242 
              #                     264  mu ptr_0_8:242 
              #                     242  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,16
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl ptr
              #                     27   global i32 ptr_0 
    .type ptr,@object
ptr:
    .word 0
    .align 4
    .globl program
              #                     24   global Array:i32:[Some(32768_0)] program_0 
    .type program,@object
program:
    .zero 131072
    .align 4
    .globl tape
              #                     22   global Array:i32:[Some(65536_0)] tape_0 
    .type tape,@object
tape:
    .zero 262144
    .align 4
    .globl BUFFER_LEN
              #                     20   global i32 BUFFER_LEN_0 
    .type BUFFER_LEN,@object
BUFFER_LEN:
    .word 32768
    .align 4
    .globl TAPE_LEN
              #                     17   global i32 TAPE_LEN_0 
    .type TAPE_LEN,@object
TAPE_LEN:
    .word 65536
