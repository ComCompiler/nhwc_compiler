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
              #                          Define set_a_0 [val_17] -> set_a_ret_0 
    .globl set_a
    .type set_a,@function
set_a:
              #                    mem layout:|ra_set_a:8 at 16|s0_set_a:8 at 8|val:4 at 4|temp_0_ptr2globl:4 at 0
    addi    sp,sp,-24
              #                    store to ra_set_a_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_set_a_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_0_ptr2globl_19 
              #                    regtab     a0:Freed { symidx: val_17, tracked: true } | 
              #                          label L23_0: 
.L23_0:
              #                          store val_17:i32 *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a0 with val_17
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_0_ptr2globl_19:i32 
              #                          temp_0_ptr2globl_19 = load *a_0:ptr->i32 
              #                    occupy a2 with *a_0
              #                       load label a as ptr to reg
    la      a2, a
              #                    occupy reg a2 with *a_0
              #                    occupy a3 with temp_0_ptr2globl_19
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          ret temp_0_ptr2globl_19 
              #                    load from ra_set_a_0 in mem
    ld      ra,16(sp)
              #                    load from s0_set_a_0 in mem
    ld      s0,8(sp)
              #                    store to temp_0_ptr2globl_19 in mem offset legal
    sw      a3,0(sp)
              #                    release a3 with temp_0_ptr2globl_19
              #                    store to val_17 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with val_17
              #                    occupy a0 with temp_0_ptr2globl_19
              #                    load from temp_0_ptr2globl_19 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
              #                    regtab 
              #                          Define set_b_0 [val_22] -> set_b_ret_0 
    .globl set_b
    .type set_b,@function
set_b:
              #                    mem layout:|ra_set_b:8 at 16|s0_set_b:8 at 8|val:4 at 4|temp_1_ptr2globl:4 at 0
    addi    sp,sp,-24
              #                    store to ra_set_b_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_set_b_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_1_ptr2globl_24 
              #                    regtab     a0:Freed { symidx: val_22, tracked: true } | 
              #                          label L22_0: 
.L22_0:
              #                          store val_22:i32 *b_0:ptr->i32 
              #                    occupy a1 with *b_0
              #                       load label b as ptr to reg
    la      a1, b
              #                    occupy reg a1 with *b_0
              #                    occupy a0 with val_22
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_1_ptr2globl_24:i32 
              #                          temp_1_ptr2globl_24 = load *b_0:ptr->i32 
              #                    occupy a2 with *b_0
              #                       load label b as ptr to reg
    la      a2, b
              #                    occupy reg a2 with *b_0
              #                    occupy a3 with temp_1_ptr2globl_24
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          ret temp_1_ptr2globl_24 
              #                    load from ra_set_b_0 in mem
    ld      ra,16(sp)
              #                    load from s0_set_b_0 in mem
    ld      s0,8(sp)
              #                    store to temp_1_ptr2globl_24 in mem offset legal
    sw      a3,0(sp)
              #                    release a3 with temp_1_ptr2globl_24
              #                    store to val_22 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with val_22
              #                    occupy a0 with temp_1_ptr2globl_24
              #                    load from temp_1_ptr2globl_24 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
              #                    regtab 
              #                          Define set_d_0 [val_27] -> set_d_ret_0 
    .globl set_d
    .type set_d,@function
set_d:
              #                    mem layout:|ra_set_d:8 at 16|s0_set_d:8 at 8|val:4 at 4|temp_2_ptr2globl:4 at 0
    addi    sp,sp,-24
              #                    store to ra_set_d_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_set_d_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_2_ptr2globl_29 
              #                    regtab     a0:Freed { symidx: val_27, tracked: true } | 
              #                          label L21_0: 
.L21_0:
              #                          store val_27:i32 *d_0:ptr->i32 
              #                    occupy a1 with *d_0
              #                       load label d as ptr to reg
    la      a1, d
              #                    occupy reg a1 with *d_0
              #                    occupy a0 with val_27
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_2_ptr2globl_29:i32 
              #                          temp_2_ptr2globl_29 = load *d_0:ptr->i32 
              #                    occupy a2 with *d_0
              #                       load label d as ptr to reg
    la      a2, d
              #                    occupy reg a2 with *d_0
              #                    occupy a3 with temp_2_ptr2globl_29
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          ret temp_2_ptr2globl_29 
              #                    load from ra_set_d_0 in mem
    ld      ra,16(sp)
              #                    load from s0_set_d_0 in mem
    ld      s0,8(sp)
              #                    store to temp_2_ptr2globl_29 in mem offset legal
    sw      a3,0(sp)
              #                    release a3 with temp_2_ptr2globl_29
              #                    store to val_27 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with val_27
              #                    occupy a0 with temp_2_ptr2globl_29
              #                    load from temp_2_ptr2globl_29 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 160|s0_main:8 at 152|temp_3_ret_of_set_b:4 at 148|temp_4_ret_of_set_a:4 at 144|temp_5_:1 at 143|temp_6_:1 at 142|temp_7_logic:1 at 141|none:1 at 140|temp_8_ptr2globl:4 at 136|temp_9_ptr2globl:4 at 132|temp_10_ret_of_set_b:4 at 128|temp_11_ret_of_set_a:4 at 124|temp_12_:1 at 123|temp_13_:1 at 122|temp_14_logic:1 at 121|none:1 at 120|temp_15_ptr2globl:4 at 116|temp_16_ptr2globl:4 at 112|c:4 at 108|temp_17_ret_of_set_d:4 at 104|temp_18_:1 at 103|temp_19_logic:1 at 102|none:2 at 100|temp_20_ptr2globl:4 at 96|temp_21_ret_of_set_d:4 at 92|temp_22_:1 at 91|temp_23_logic:1 at 90|none:2 at 88|temp_24_ptr2globl:4 at 84|temp_25_cmp:1 at 83|temp_26_cmp:1 at 82|none:2 at 80|temp_27_:4 at 76|temp_28_cmp:1 at 75|none:3 at 72|temp_29_:4 at 68|temp_30_cmp:1 at 67|temp_31_cmp:1 at 66|none:2 at 64|temp_32_:4 at 60|temp_33_cmp:1 at 59|temp_34_cmp:1 at 58|none:2 at 56|i0:4 at 52|i1:4 at 48|i2:4 at 44|i3:4 at 40|i4:4 at 36|temp_35_:1 at 35|temp_36_:1 at 34|temp_37_logic:1 at 33|temp_38_:1 at 32|temp_39_:1 at 31|temp_40_logic:1 at 30|temp_41_cmp:1 at 29|temp_42_cmp:1 at 28|temp_43_logic:1 at 27|temp_44_cmp:1 at 26|temp_45_cmp:1 at 25|temp_46_logic:1 at 24|temp_47_cmp:1 at 23|temp_48_cmp:1 at 22|temp_49_booltrans:1 at 21|temp_50_logicnot:1 at 20|temp_51_:4 at 16|temp_52_cmp:1 at 15|temp_53_logic:1 at 14|temp_54_logic:1 at 13|temp_55_cmp:1 at 12|temp_56_cmp:1 at 11|temp_57_logic:1 at 10|temp_58_booltrans:1 at 9|temp_59_logicnot:1 at 8|temp_60_:4 at 4|temp_61_cmp:1 at 3|temp_62_logic:1 at 2|none:2 at 0
    addi    sp,sp,-168
              #                    store to ra_main_0 in mem offset legal
    sd      ra,160(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,152(sp)
    addi    s0,sp,168
              #                          alloc i32 temp_3_ret_of_set_b_36 
              #                          alloc i32 temp_4_ret_of_set_a_36 
              #                          alloc i1 temp_5__36 
              #                          alloc i1 temp_6__36 
              #                          alloc i1 temp_7_logic_36 
              #                          alloc i32 temp_8_ptr2globl_33 
              #                          alloc i32 temp_9_ptr2globl_33 
              #                          alloc i32 temp_10_ret_of_set_b_45 
              #                          alloc i32 temp_11_ret_of_set_a_45 
              #                          alloc i1 temp_12__45 
              #                          alloc i1 temp_13__45 
              #                          alloc i1 temp_14_logic_45 
              #                          alloc i32 temp_15_ptr2globl_33 
              #                          alloc i32 temp_16_ptr2globl_33 
              #                          alloc i32 c_33 
              #                          alloc i32 temp_17_ret_of_set_d_54 
              #                          alloc i1 temp_18__54 
              #                          alloc i1 temp_19_logic_54 
              #                          alloc i32 temp_20_ptr2globl_33 
              #                          alloc i32 temp_21_ret_of_set_d_59 
              #                          alloc i1 temp_22__59 
              #                          alloc i1 temp_23_logic_59 
              #                          alloc i32 temp_24_ptr2globl_33 
              #                          alloc i1 temp_25_cmp_64 
              #                          alloc i1 temp_26_cmp_68 
              #                          alloc i32 temp_27__71 
              #                          alloc i1 temp_28_cmp_71 
              #                          alloc i32 temp_29__75 
              #                          alloc i1 temp_30_cmp_75 
              #                          alloc i1 temp_31_cmp_79 
              #                          alloc i32 temp_32__79 
              #                          alloc i1 temp_33_cmp_79 
              #                          alloc i1 temp_34_cmp_82 
              #                          alloc i32 i0_33 
              #                          alloc i32 i1_33 
              #                          alloc i32 i2_33 
              #                          alloc i32 i3_33 
              #                          alloc i32 i4_33 
              #                          alloc i1 temp_35__87 
              #                          alloc i1 temp_36__87 
              #                          alloc i1 temp_37_logic_87 
              #                          alloc i1 temp_38__90 
              #                          alloc i1 temp_39__90 
              #                          alloc i1 temp_40_logic_90 
              #                          alloc i1 temp_41_cmp_93 
              #                          alloc i1 temp_42_cmp_93 
              #                          alloc i1 temp_43_logic_93 
              #                          alloc i1 temp_44_cmp_96 
              #                          alloc i1 temp_45_cmp_96 
              #                          alloc i1 temp_46_logic_96 
              #                          alloc i1 temp_47_cmp_100 
              #                          alloc i1 temp_48_cmp_100 
              #                          alloc i1 temp_49_booltrans_100 
              #                          alloc i1 temp_50_logicnot_100 
              #                          alloc i32 temp_51__100 
              #                          alloc i1 temp_52_cmp_100 
              #                          alloc i1 temp_53_logic_100 
              #                          alloc i1 temp_54_logic_100 
              #                          alloc i1 temp_55_cmp_104 
              #                          alloc i1 temp_56_cmp_104 
              #                          alloc i1 temp_57_logic_104 
              #                          alloc i1 temp_58_booltrans_104 
              #                          alloc i1 temp_59_logicnot_104 
              #                          alloc i32 temp_60__104 
              #                          alloc i1 temp_61_cmp_104 
              #                          alloc i1 temp_62_logic_104 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          store 2_0:i32 *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with 2_0
    li      a1, 2
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          store 3_0:i32 *b_0:ptr->i32 
              #                    occupy a2 with *b_0
              #                       load label b as ptr to reg
    la      a2, b
              #                    occupy reg a2 with *b_0
              #                    occupy a3 with 3_0
    li      a3, 3
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_3_ret_of_set_b_36:i32 
              #                          temp_3_ret_of_set_b_36 =  Call i32 set_b_0(1_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    set_b
              #                    store to temp_3_ret_of_set_b_36 in mem offset legal
    sw      a0,148(sp)
              #                          new_var temp_4_ret_of_set_a_36:i32 
              #                          temp_4_ret_of_set_a_36 =  Call i32 set_a_0(0_0) 
              #                    saved register dumping to mem
              #                    store to temp_3_ret_of_set_b_36 in mem offset legal
    sw      a0,148(sp)
              #                    release a0 with temp_3_ret_of_set_b_36
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    set_a
              #                    store to temp_4_ret_of_set_a_36 in mem offset legal
    sw      a0,144(sp)
              #                          new_var temp_5__36:i1 
              #                          temp_5__36 = icmp i32 Ne temp_4_ret_of_set_a_36, 0_0 
              #                    occupy a0 with temp_4_ret_of_set_a_36
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_5__36
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_6__36:i1 
              #                          temp_5__36 = icmp i32 Ne temp_3_ret_of_set_b_36, 0_0 
              #                    occupy a3 with temp_3_ret_of_set_b_36
              #                    load from temp_3_ret_of_set_b_36 in mem


    lw      a3,148(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_5__36
              #                    free a3
              #                    free a1
              #                    free a2
              #                          new_var temp_7_logic_36:i1 
              #                          temp_7_logic_36 = And i1 temp_5__36, temp_6__36 
              #                    occupy a2 with temp_5__36
              #                    occupy a4 with temp_6__36
              #                    load from temp_6__36 in mem
    lb      a4,142(sp)
              #                    occupy a5 with temp_7_logic_36
    and     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          jump label: branch_true_37 
    j       .branch_true_37
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_set_a_36, tracked: true } |     a2:Freed { symidx: temp_5__36, tracked: true } |     a3:Freed { symidx: temp_3_ret_of_set_b_36, tracked: true } |     a4:Freed { symidx: temp_6__36, tracked: true } |     a5:Freed { symidx: temp_7_logic_36, tracked: true } | 
              #                          label branch_true_37: 
.branch_true_37:
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_set_a_36, tracked: true } |     a2:Freed { symidx: temp_5__36, tracked: true } |     a3:Freed { symidx: temp_3_ret_of_set_b_36, tracked: true } |     a4:Freed { symidx: temp_6__36, tracked: true } |     a5:Freed { symidx: temp_7_logic_36, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_8_ptr2globl_33:i32 
              #                          temp_8_ptr2globl_33 = load *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a6 with temp_8_ptr2globl_33
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                           Call void putint_0(temp_8_ptr2globl_33) 
              #                    saved register dumping to mem
              #                    store to temp_4_ret_of_set_a_36 in mem offset legal
    sw      a0,144(sp)
              #                    release a0 with temp_4_ret_of_set_a_36
              #                    store to temp_5__36 in mem offset legal
    sb      a2,143(sp)
              #                    release a2 with temp_5__36
              #                    store to temp_3_ret_of_set_b_36 in mem offset legal
    sw      a3,148(sp)
              #                    release a3 with temp_3_ret_of_set_b_36
              #                    store to temp_6__36 in mem offset legal
    sb      a4,142(sp)
              #                    release a4 with temp_6__36
              #                    store to temp_7_logic_36 in mem offset legal
    sb      a5,141(sp)
              #                    release a5 with temp_7_logic_36
              #                    store to temp_8_ptr2globl_33 in mem offset legal
    sw      a6,136(sp)
              #                    release a6 with temp_8_ptr2globl_33
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_8_ptr2globl_33_0
              #                    load from temp_8_ptr2globl_33 in mem


    lw      a0,136(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          new_var temp_9_ptr2globl_33:i32 
              #                          temp_9_ptr2globl_33 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_9_ptr2globl_33
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                           Call void putint_0(temp_9_ptr2globl_33) 
              #                    saved register dumping to mem
              #                    store to temp_9_ptr2globl_33 in mem offset legal
    sw      a1,132(sp)
              #                    release a1 with temp_9_ptr2globl_33
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_9_ptr2globl_33_0
              #                    load from temp_9_ptr2globl_33 in mem


    lw      a0,132(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          store 2_0:i32 *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with 2_0
    li      a1, 2
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          store 3_0:i32 *b_0:ptr->i32 
              #                    occupy a2 with *b_0
              #                       load label b as ptr to reg
    la      a2, b
              #                    occupy reg a2 with *b_0
              #                    occupy a3 with 3_0
    li      a3, 3
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_10_ret_of_set_b_45:i32 
              #                          temp_10_ret_of_set_b_45 =  Call i32 set_b_0(1_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    set_b
              #                    store to temp_10_ret_of_set_b_45 in mem offset legal
    sw      a0,128(sp)
              #                          new_var temp_11_ret_of_set_a_45:i32 
              #                          temp_11_ret_of_set_a_45 =  Call i32 set_a_0(0_0) 
              #                    saved register dumping to mem
              #                    store to temp_10_ret_of_set_b_45 in mem offset legal
    sw      a0,128(sp)
              #                    release a0 with temp_10_ret_of_set_b_45
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    set_a
              #                    store to temp_11_ret_of_set_a_45 in mem offset legal
    sw      a0,124(sp)
              #                          new_var temp_12__45:i1 
              #                          temp_12__45 = icmp i32 Ne temp_11_ret_of_set_a_45, 0_0 
              #                    occupy a0 with temp_11_ret_of_set_a_45
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_12__45
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_13__45:i1 
              #                          temp_12__45 = icmp i32 Ne temp_10_ret_of_set_b_45, 0_0 
              #                    occupy a3 with temp_10_ret_of_set_b_45
              #                    load from temp_10_ret_of_set_b_45 in mem


    lw      a3,128(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_12__45
              #                    free a3
              #                    free a1
              #                    free a2
              #                          new_var temp_14_logic_45:i1 
              #                          temp_14_logic_45 = And i1 temp_12__45, temp_13__45 
              #                    occupy a2 with temp_12__45
              #                    occupy a4 with temp_13__45
              #                    load from temp_13__45 in mem
    lb      a4,122(sp)
              #                    occupy a5 with temp_14_logic_45
    and     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          br i1 temp_14_logic_45, label branch_true_46, label branch_false_46 
              #                    occupy a5 with temp_14_logic_45
              #                    free a5
              #                    occupy a5 with temp_14_logic_45
    bnez    a5, .branch_true_46
              #                    free a5
    j       .branch_false_46
              #                    regtab     a0:Freed { symidx: temp_11_ret_of_set_a_45, tracked: true } |     a2:Freed { symidx: temp_12__45, tracked: true } |     a3:Freed { symidx: temp_10_ret_of_set_b_45, tracked: true } |     a4:Freed { symidx: temp_13__45, tracked: true } |     a5:Freed { symidx: temp_14_logic_45, tracked: true } | 
              #                          label branch_true_46: 
.branch_true_46:
              #                          jump label: branch_false_46 
    j       .branch_false_46
              #                    regtab     a0:Freed { symidx: temp_11_ret_of_set_a_45, tracked: true } |     a2:Freed { symidx: temp_12__45, tracked: true } |     a3:Freed { symidx: temp_10_ret_of_set_b_45, tracked: true } |     a4:Freed { symidx: temp_13__45, tracked: true } |     a5:Freed { symidx: temp_14_logic_45, tracked: true } | 
              #                          label branch_false_46: 
.branch_false_46:
              #                    regtab     a0:Freed { symidx: temp_11_ret_of_set_a_45, tracked: true } |     a2:Freed { symidx: temp_12__45, tracked: true } |     a3:Freed { symidx: temp_10_ret_of_set_b_45, tracked: true } |     a4:Freed { symidx: temp_13__45, tracked: true } |     a5:Freed { symidx: temp_14_logic_45, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_15_ptr2globl_33:i32 
              #                          temp_15_ptr2globl_33 = load *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a6 with temp_15_ptr2globl_33
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                           Call void putint_0(temp_15_ptr2globl_33) 
              #                    saved register dumping to mem
              #                    store to temp_11_ret_of_set_a_45 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_11_ret_of_set_a_45
              #                    store to temp_12__45 in mem offset legal
    sb      a2,123(sp)
              #                    release a2 with temp_12__45
              #                    store to temp_10_ret_of_set_b_45 in mem offset legal
    sw      a3,128(sp)
              #                    release a3 with temp_10_ret_of_set_b_45
              #                    store to temp_13__45 in mem offset legal
    sb      a4,122(sp)
              #                    release a4 with temp_13__45
              #                    store to temp_14_logic_45 in mem offset legal
    sb      a5,121(sp)
              #                    release a5 with temp_14_logic_45
              #                    store to temp_15_ptr2globl_33 in mem offset legal
    sw      a6,116(sp)
              #                    release a6 with temp_15_ptr2globl_33
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_15_ptr2globl_33_0
              #                    load from temp_15_ptr2globl_33 in mem


    lw      a0,116(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          new_var temp_16_ptr2globl_33:i32 
              #                          temp_16_ptr2globl_33 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_16_ptr2globl_33
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                           Call void putint_0(temp_16_ptr2globl_33) 
              #                    saved register dumping to mem
              #                    store to temp_16_ptr2globl_33 in mem offset legal
    sw      a1,112(sp)
              #                    release a1 with temp_16_ptr2globl_33
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_16_ptr2globl_33_0
              #                    load from temp_16_ptr2globl_33 in mem


    lw      a0,112(sp)
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
              #                          c_33 = i32 1_0 
              #                    occupy a0 with c_33
    li      a0, 1
              #                    free a0
              #                          store 2_0:i32 *d_0:ptr->i32 
              #                    occupy a1 with *d_0
              #                       load label d as ptr to reg
    la      a1, d
              #                    occupy reg a1 with *d_0
              #                    occupy a2 with 2_0
    li      a2, 2
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: c_33, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_17_ret_of_set_d_54:i32 
              #                          temp_17_ret_of_set_d_54 =  Call i32 set_d_0(3_0) 
              #                    saved register dumping to mem
              #                    store to c_33 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with c_33
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    arg load ended


    call    set_d
              #                    store to temp_17_ret_of_set_d_54 in mem offset legal
    sw      a0,104(sp)
              #                          new_var temp_18__54:i1 
              #                          temp_18__54 = icmp i32 Ne temp_17_ret_of_set_d_54, 0_0 
              #                    occupy a0 with temp_17_ret_of_set_d_54
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_18__54
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_19_logic_54:i1 
              #                          temp_19_logic_54 = And i1 temp_18__54, true_0 
              #                    occupy a2 with temp_18__54
              #                    occupy a3 with true_0
    li      a3, 1
              #                    occupy a4 with temp_19_logic_54
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_19_logic_54, label branch_true_55, label branch_false_55 
              #                    occupy a4 with temp_19_logic_54
              #                    free a4
              #                    occupy a4 with temp_19_logic_54
    bnez    a4, .branch_true_55
              #                    free a4
    j       .branch_false_55
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_set_d_54, tracked: true } |     a2:Freed { symidx: temp_18__54, tracked: true } |     a4:Freed { symidx: temp_19_logic_54, tracked: true } | 
              #                          label branch_true_55: 
.branch_true_55:
              #                          jump label: branch_false_55 
    j       .branch_false_55
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_set_d_54, tracked: true } |     a2:Freed { symidx: temp_18__54, tracked: true } |     a4:Freed { symidx: temp_19_logic_54, tracked: true } | 
              #                          label branch_false_55: 
.branch_false_55:
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_set_d_54, tracked: true } |     a2:Freed { symidx: temp_18__54, tracked: true } |     a4:Freed { symidx: temp_19_logic_54, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_20_ptr2globl_33:i32 
              #                          temp_20_ptr2globl_33 = load *d_0:ptr->i32 
              #                    occupy a1 with *d_0
              #                       load label d as ptr to reg
    la      a1, d
              #                    occupy reg a1 with *d_0
              #                    occupy a3 with temp_20_ptr2globl_33
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                           Call void putint_0(temp_20_ptr2globl_33) 
              #                    saved register dumping to mem
              #                    store to temp_17_ret_of_set_d_54 in mem offset legal
    sw      a0,104(sp)
              #                    release a0 with temp_17_ret_of_set_d_54
              #                    store to temp_18__54 in mem offset legal
    sb      a2,103(sp)
              #                    release a2 with temp_18__54
              #                    store to temp_20_ptr2globl_33 in mem offset legal
    sw      a3,96(sp)
              #                    release a3 with temp_20_ptr2globl_33
              #                    store to temp_19_logic_54 in mem offset legal
    sb      a4,102(sp)
              #                    release a4 with temp_19_logic_54
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_20_ptr2globl_33_0
              #                    load from temp_20_ptr2globl_33 in mem


    lw      a0,96(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_21_ret_of_set_d_59:i32 
              #                          temp_21_ret_of_set_d_59 =  Call i32 set_d_0(4_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    arg load ended


    call    set_d
              #                    store to temp_21_ret_of_set_d_59 in mem offset legal
    sw      a0,92(sp)
              #                          new_var temp_22__59:i1 
              #                          temp_22__59 = icmp i32 Ne temp_21_ret_of_set_d_59, 0_0 
              #                    occupy a0 with temp_21_ret_of_set_d_59
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_22__59
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_23_logic_59:i1 
              #                          temp_23_logic_59 = Or i1 temp_22__59, true_0 
              #                    occupy a2 with temp_22__59
              #                    occupy a3 with true_0
    li      a3, 1
              #                    occupy a4 with true_0
    or      a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          jump label: branch_true_60 
    j       .branch_true_60
              #                    regtab     a0:Freed { symidx: temp_21_ret_of_set_d_59, tracked: true } |     a2:Freed { symidx: temp_22__59, tracked: true } | 
              #                          label branch_true_60: 
.branch_true_60:
              #                    regtab     a0:Freed { symidx: temp_21_ret_of_set_d_59, tracked: true } |     a2:Freed { symidx: temp_22__59, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_24_ptr2globl_33:i32 
              #                          temp_24_ptr2globl_33 = load *d_0:ptr->i32 
              #                    occupy a1 with *d_0
              #                       load label d as ptr to reg
    la      a1, d
              #                    occupy reg a1 with *d_0
              #                    occupy a3 with temp_24_ptr2globl_33
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                           Call void putint_0(temp_24_ptr2globl_33) 
              #                    saved register dumping to mem
              #                    store to temp_21_ret_of_set_d_59 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_21_ret_of_set_d_59
              #                    store to temp_22__59 in mem offset legal
    sb      a2,91(sp)
              #                    release a2 with temp_22__59
              #                    store to temp_24_ptr2globl_33 in mem offset legal
    sw      a3,84(sp)
              #                    release a3 with temp_24_ptr2globl_33
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_24_ptr2globl_33_0
              #                    load from temp_24_ptr2globl_33 in mem


    lw      a0,84(sp)
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
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_25_cmp_64:i1 
              #                          temp_25_cmp_64 = icmp i32 Sge 16_0, 0_0 
              #                    occupy a0 with 16_0
    li      a0, 16
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_25_cmp_64
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_25_cmp_64, label branch_true_65, label branch_false_65 
              #                    occupy a2 with temp_25_cmp_64
              #                    free a2
              #                    occupy a2 with temp_25_cmp_64
    bnez    a2, .branch_true_65
              #                    free a2
    j       .branch_false_65
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } | 
              #                          label branch_true_65: 
.branch_true_65:
              #                           Call void putch_0(65_0) 
              #                    saved register dumping to mem
              #                    store to temp_25_cmp_64 in mem offset legal
    sb      a2,83(sp)
              #                    release a2 with temp_25_cmp_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_65_0_0
    li      a0, 65
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_65 
              #                    occupy a2 with _anonymous_of_temp_25_cmp_64_0
              #                    load from temp_25_cmp_64 in mem
    lb      a2,83(sp)
    j       .branch_false_65
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } | 
              #                          label branch_false_65: 
.branch_false_65:
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_26_cmp_68:i1 
              #                          temp_26_cmp_68 = icmp i32 Ne 18_0, 18_0 
              #                    occupy a0 with 18_0
    li      a0, 18
              #                    occupy a1 with 18_0
    li      a1, 18
              #                    occupy a3 with temp_26_cmp_68
    xor     a3,a0,a1
    snez    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                          br i1 temp_26_cmp_68, label branch_true_69, label branch_false_69 
              #                    occupy a3 with temp_26_cmp_68
              #                    free a3
              #                    occupy a3 with temp_26_cmp_68
    bnez    a3, .branch_true_69
              #                    free a3
    j       .branch_false_69
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } | 
              #                          label branch_true_69: 
.branch_true_69:
              #                           Call void putch_0(66_0) 
              #                    saved register dumping to mem
              #                    store to temp_25_cmp_64 in mem offset legal
    sb      a2,83(sp)
              #                    release a2 with temp_25_cmp_64
              #                    store to temp_26_cmp_68 in mem offset legal
    sb      a3,82(sp)
              #                    release a3 with temp_26_cmp_68
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_66_0_0
    li      a0, 66
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_69 
              #                    occupy a2 with _anonymous_of_temp_25_cmp_64_0
              #                    load from temp_25_cmp_64 in mem
    lb      a2,83(sp)
              #                    occupy a3 with _anonymous_of_temp_26_cmp_68_0
              #                    load from temp_26_cmp_68 in mem
    lb      a3,82(sp)
    j       .branch_false_69
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } | 
              #                          label branch_false_69: 
.branch_false_69:
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_27__71:i32 
              #                          temp_27__71 = zext i1 true_0 to i32 
              #                    occupy a0 with true_0
    li      a0, 1
              #                    occupy a1 with true_0
    andi    a1,a0,1
              #                    free a0
              #                    free a1
              #                          new_var temp_28_cmp_71:i1 
              #                          temp_28_cmp_71 = icmp i32 Ne temp_27__71, 1_0 
              #                    occupy a4 with temp_27__71
              #                    load from temp_27__71 in mem


    lw      a4,76(sp)
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_28_cmp_71
    xor     a6,a4,a5
    snez    a6, a6
              #                    free a4
              #                    free a5
              #                    free a6
              #                          br i1 temp_28_cmp_71, label branch_true_72, label branch_false_72 
              #                    occupy a6 with temp_28_cmp_71
              #                    free a6
              #                    occupy a6 with temp_28_cmp_71
    bnez    a6, .branch_true_72
              #                    free a6
    j       .branch_false_72
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } |     a4:Freed { symidx: temp_27__71, tracked: true } |     a6:Freed { symidx: temp_28_cmp_71, tracked: true } | 
              #                          label branch_true_72: 
.branch_true_72:
              #                           Call void putch_0(67_0) 
              #                    saved register dumping to mem
              #                    store to temp_25_cmp_64 in mem offset legal
    sb      a2,83(sp)
              #                    release a2 with temp_25_cmp_64
              #                    store to temp_26_cmp_68 in mem offset legal
    sb      a3,82(sp)
              #                    release a3 with temp_26_cmp_68
              #                    store to temp_27__71 in mem offset legal
    sw      a4,76(sp)
              #                    release a4 with temp_27__71
              #                    store to temp_28_cmp_71 in mem offset legal
    sb      a6,75(sp)
              #                    release a6 with temp_28_cmp_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_67_0_0
    li      a0, 67
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_72 
              #                    occupy a2 with _anonymous_of_temp_25_cmp_64_0
              #                    load from temp_25_cmp_64 in mem
    lb      a2,83(sp)
              #                    occupy a6 with _anonymous_of_temp_28_cmp_71_0
              #                    load from temp_28_cmp_71 in mem
    lb      a6,75(sp)
              #                    occupy a3 with _anonymous_of_temp_26_cmp_68_0
              #                    load from temp_26_cmp_68 in mem
    lb      a3,82(sp)
              #                    occupy a4 with _anonymous_of_temp_27__71_0
              #                    load from temp_27__71 in mem


    lw      a4,76(sp)
    j       .branch_false_72
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } |     a4:Freed { symidx: temp_27__71, tracked: true } |     a6:Freed { symidx: temp_28_cmp_71, tracked: true } | 
              #                          label branch_false_72: 
.branch_false_72:
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } |     a4:Freed { symidx: temp_27__71, tracked: true } |     a6:Freed { symidx: temp_28_cmp_71, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_29__75:i32 
              #                          temp_29__75 = zext i1 false_0 to i32 
              #                    occupy a0 with false_0
    li      a0, 0
              #                    occupy a1 with false_0
    andi    a1,a0,1
              #                    free a0
              #                    free a1
              #                          new_var temp_30_cmp_75:i1 
              #                          temp_30_cmp_75 = icmp i32 Eq 0_0, temp_29__75 
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a7 with temp_29__75
              #                    load from temp_29__75 in mem


    lw      a7,68(sp)
              #                    occupy s1 with temp_30_cmp_75
    xor     s1,a5,a7
    seqz    s1, s1
              #                    free a5
              #                    free a7
              #                    free s1
              #                          br i1 temp_30_cmp_75, label branch_true_76, label branch_false_76 
              #                    occupy s1 with temp_30_cmp_75
              #                    free s1
              #                    occupy s1 with temp_30_cmp_75
    bnez    s1, .branch_true_76
              #                    free s1
    j       .branch_false_76
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } |     a4:Freed { symidx: temp_27__71, tracked: true } |     a6:Freed { symidx: temp_28_cmp_71, tracked: true } |     a7:Freed { symidx: temp_29__75, tracked: true } |     s1:Freed { symidx: temp_30_cmp_75, tracked: true } | 
              #                          label branch_true_76: 
.branch_true_76:
              #                           Call void putch_0(68_0) 
              #                    saved register dumping to mem
              #                    store to temp_30_cmp_75 in mem offset legal
    sb      s1,67(sp)
              #                    release s1 with temp_30_cmp_75
              #                    store to temp_25_cmp_64 in mem offset legal
    sb      a2,83(sp)
              #                    release a2 with temp_25_cmp_64
              #                    store to temp_26_cmp_68 in mem offset legal
    sb      a3,82(sp)
              #                    release a3 with temp_26_cmp_68
              #                    store to temp_27__71 in mem offset legal
    sw      a4,76(sp)
              #                    release a4 with temp_27__71
              #                    store to temp_28_cmp_71 in mem offset legal
    sb      a6,75(sp)
              #                    release a6 with temp_28_cmp_71
              #                    store to temp_29__75 in mem offset legal
    sw      a7,68(sp)
              #                    release a7 with temp_29__75
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_68_0_0
    li      a0, 68
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_76 
              #                    occupy a7 with _anonymous_of_temp_29__75_0
              #                    load from temp_29__75 in mem


    lw      a7,68(sp)
              #                    occupy a2 with _anonymous_of_temp_25_cmp_64_0
              #                    load from temp_25_cmp_64 in mem
    lb      a2,83(sp)
              #                    occupy a6 with _anonymous_of_temp_28_cmp_71_0
              #                    load from temp_28_cmp_71 in mem
    lb      a6,75(sp)
              #                    occupy s1 with _anonymous_of_temp_30_cmp_75_0
              #                    load from temp_30_cmp_75 in mem
    lb      s1,67(sp)
              #                    occupy a3 with _anonymous_of_temp_26_cmp_68_0
              #                    load from temp_26_cmp_68 in mem
    lb      a3,82(sp)
              #                    occupy a4 with _anonymous_of_temp_27__71_0
              #                    load from temp_27__71 in mem


    lw      a4,76(sp)
    j       .branch_false_76
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } |     a4:Freed { symidx: temp_27__71, tracked: true } |     a6:Freed { symidx: temp_28_cmp_71, tracked: true } |     a7:Freed { symidx: temp_29__75, tracked: true } |     s1:Freed { symidx: temp_30_cmp_75, tracked: true } | 
              #                          label branch_false_76: 
.branch_false_76:
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } |     a4:Freed { symidx: temp_27__71, tracked: true } |     a6:Freed { symidx: temp_28_cmp_71, tracked: true } |     a7:Freed { symidx: temp_29__75, tracked: true } |     s1:Freed { symidx: temp_30_cmp_75, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                          new_var temp_31_cmp_79:i1 
              #                          temp_31_cmp_79 = icmp i32 Sle 0x66_0, 077_0 
              #                    occupy a0 with 0x66_0
    li      a0, 0x66
              #                    occupy a1 with 077_0
    li      a1, 077
              #                    occupy a5 with temp_31_cmp_79
    slt     a5,a1,a0
    xori    a5,a5,1
              #                    free a0
              #                    free a1
              #                    free a5
              #                          new_var temp_32__79:i32 
              #                          temp_32__79 = zext i1 temp_31_cmp_79 to i32 
              #                    occupy a5 with temp_31_cmp_79
              #                    occupy a5 with temp_31_cmp_79
              #                    free a5
              #                    free a5
              #                          new_var temp_33_cmp_79:i1 
              #                          temp_33_cmp_79 = icmp i32 Eq 1_0, temp_32__79 
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_32__79
              #                    load from temp_32__79 in mem


    lw      s3,60(sp)
              #                    occupy s4 with temp_33_cmp_79
    xor     s4,s2,s3
    seqz    s4, s4
              #                    free s2
              #                    free s3
              #                    free s4
              #                          br i1 temp_33_cmp_79, label branch_true_80, label branch_false_80 
              #                    occupy s4 with temp_33_cmp_79
              #                    free s4
              #                    occupy s4 with temp_33_cmp_79
    bnez    s4, .branch_true_80
              #                    free s4
    j       .branch_false_80
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } |     a4:Freed { symidx: temp_27__71, tracked: true } |     a5:Freed { symidx: temp_31_cmp_79, tracked: true } |     a6:Freed { symidx: temp_28_cmp_71, tracked: true } |     a7:Freed { symidx: temp_29__75, tracked: true } |     s1:Freed { symidx: temp_30_cmp_75, tracked: true } |     s3:Freed { symidx: temp_32__79, tracked: true } |     s4:Freed { symidx: temp_33_cmp_79, tracked: true } | 
              #                          label branch_true_80: 
.branch_true_80:
              #                           Call void putch_0(69_0) 
              #                    saved register dumping to mem
              #                    store to temp_30_cmp_75 in mem offset legal
    sb      s1,67(sp)
              #                    release s1 with temp_30_cmp_75
              #                    store to temp_32__79 in mem offset legal
    sw      s3,60(sp)
              #                    release s3 with temp_32__79
              #                    store to temp_33_cmp_79 in mem offset legal
    sb      s4,59(sp)
              #                    release s4 with temp_33_cmp_79
              #                    store to temp_25_cmp_64 in mem offset legal
    sb      a2,83(sp)
              #                    release a2 with temp_25_cmp_64
              #                    store to temp_26_cmp_68 in mem offset legal
    sb      a3,82(sp)
              #                    release a3 with temp_26_cmp_68
              #                    store to temp_27__71 in mem offset legal
    sw      a4,76(sp)
              #                    release a4 with temp_27__71
              #                    store to temp_31_cmp_79 in mem offset legal
    sb      a5,66(sp)
              #                    release a5 with temp_31_cmp_79
              #                    store to temp_28_cmp_71 in mem offset legal
    sb      a6,75(sp)
              #                    release a6 with temp_28_cmp_71
              #                    store to temp_29__75 in mem offset legal
    sw      a7,68(sp)
              #                    release a7 with temp_29__75
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_69_0_0
    li      a0, 69
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_80 
              #                    occupy a5 with _anonymous_of_temp_31_cmp_79_0
              #                    load from temp_31_cmp_79 in mem
    lb      a5,66(sp)
              #                    occupy s3 with _anonymous_of_temp_32__79_0
              #                    load from temp_32__79 in mem


    lw      s3,60(sp)
              #                    occupy a7 with _anonymous_of_temp_29__75_0
              #                    load from temp_29__75 in mem


    lw      a7,68(sp)
              #                    occupy a2 with _anonymous_of_temp_25_cmp_64_0
              #                    load from temp_25_cmp_64 in mem
    lb      a2,83(sp)
              #                    occupy s4 with _anonymous_of_temp_33_cmp_79_0
              #                    load from temp_33_cmp_79 in mem
    lb      s4,59(sp)
              #                    occupy a6 with _anonymous_of_temp_28_cmp_71_0
              #                    load from temp_28_cmp_71 in mem
    lb      a6,75(sp)
              #                    occupy s1 with _anonymous_of_temp_30_cmp_75_0
              #                    load from temp_30_cmp_75 in mem
    lb      s1,67(sp)
              #                    occupy a3 with _anonymous_of_temp_26_cmp_68_0
              #                    load from temp_26_cmp_68 in mem
    lb      a3,82(sp)
              #                    occupy a4 with _anonymous_of_temp_27__71_0
              #                    load from temp_27__71 in mem


    lw      a4,76(sp)
    j       .branch_false_80
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } |     a4:Freed { symidx: temp_27__71, tracked: true } |     a5:Freed { symidx: temp_31_cmp_79, tracked: true } |     a6:Freed { symidx: temp_28_cmp_71, tracked: true } |     a7:Freed { symidx: temp_29__75, tracked: true } |     s1:Freed { symidx: temp_30_cmp_75, tracked: true } |     s3:Freed { symidx: temp_32__79, tracked: true } |     s4:Freed { symidx: temp_33_cmp_79, tracked: true } | 
              #                          label branch_false_80: 
.branch_false_80:
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } |     a4:Freed { symidx: temp_27__71, tracked: true } |     a5:Freed { symidx: temp_31_cmp_79, tracked: true } |     a6:Freed { symidx: temp_28_cmp_71, tracked: true } |     a7:Freed { symidx: temp_29__75, tracked: true } |     s1:Freed { symidx: temp_30_cmp_75, tracked: true } |     s3:Freed { symidx: temp_32__79, tracked: true } |     s4:Freed { symidx: temp_33_cmp_79, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          new_var temp_34_cmp_82:i1 
              #                          temp_34_cmp_82 = icmp i32 Eq -1_0, 1_0 
              #                    occupy a0 with -1_0
    li      a0, -1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s2 with temp_34_cmp_82
    xor     s2,a0,a1
    seqz    s2, s2
              #                    free a0
              #                    free a1
              #                    free s2
              #                          br i1 temp_34_cmp_82, label branch_true_83, label branch_false_83 
              #                    occupy s2 with temp_34_cmp_82
              #                    free s2
              #                    occupy s2 with temp_34_cmp_82
    bnez    s2, .branch_true_83
              #                    free s2
    j       .branch_false_83
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } |     a4:Freed { symidx: temp_27__71, tracked: true } |     a5:Freed { symidx: temp_31_cmp_79, tracked: true } |     a6:Freed { symidx: temp_28_cmp_71, tracked: true } |     a7:Freed { symidx: temp_29__75, tracked: true } |     s1:Freed { symidx: temp_30_cmp_75, tracked: true } |     s2:Freed { symidx: temp_34_cmp_82, tracked: true } |     s3:Freed { symidx: temp_32__79, tracked: true } |     s4:Freed { symidx: temp_33_cmp_79, tracked: true } | 
              #                          label branch_true_83: 
.branch_true_83:
              #                           Call void putch_0(70_0) 
              #                    saved register dumping to mem
              #                    store to temp_30_cmp_75 in mem offset legal
    sb      s1,67(sp)
              #                    release s1 with temp_30_cmp_75
              #                    store to temp_34_cmp_82 in mem offset legal
    sb      s2,58(sp)
              #                    release s2 with temp_34_cmp_82
              #                    store to temp_32__79 in mem offset legal
    sw      s3,60(sp)
              #                    release s3 with temp_32__79
              #                    store to temp_33_cmp_79 in mem offset legal
    sb      s4,59(sp)
              #                    release s4 with temp_33_cmp_79
              #                    store to temp_25_cmp_64 in mem offset legal
    sb      a2,83(sp)
              #                    release a2 with temp_25_cmp_64
              #                    store to temp_26_cmp_68 in mem offset legal
    sb      a3,82(sp)
              #                    release a3 with temp_26_cmp_68
              #                    store to temp_27__71 in mem offset legal
    sw      a4,76(sp)
              #                    release a4 with temp_27__71
              #                    store to temp_31_cmp_79 in mem offset legal
    sb      a5,66(sp)
              #                    release a5 with temp_31_cmp_79
              #                    store to temp_28_cmp_71 in mem offset legal
    sb      a6,75(sp)
              #                    release a6 with temp_28_cmp_71
              #                    store to temp_29__75 in mem offset legal
    sw      a7,68(sp)
              #                    release a7 with temp_29__75
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_70_0_0
    li      a0, 70
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_83 
              #                    occupy a5 with _anonymous_of_temp_31_cmp_79_0
              #                    load from temp_31_cmp_79 in mem
    lb      a5,66(sp)
              #                    occupy s3 with _anonymous_of_temp_32__79_0
              #                    load from temp_32__79 in mem


    lw      s3,60(sp)
              #                    occupy a7 with _anonymous_of_temp_29__75_0
              #                    load from temp_29__75 in mem


    lw      a7,68(sp)
              #                    occupy s2 with _anonymous_of_temp_34_cmp_82_0
              #                    load from temp_34_cmp_82 in mem
    lb      s2,58(sp)
              #                    occupy a2 with _anonymous_of_temp_25_cmp_64_0
              #                    load from temp_25_cmp_64 in mem
    lb      a2,83(sp)
              #                    occupy s4 with _anonymous_of_temp_33_cmp_79_0
              #                    load from temp_33_cmp_79 in mem
    lb      s4,59(sp)
              #                    occupy a6 with _anonymous_of_temp_28_cmp_71_0
              #                    load from temp_28_cmp_71 in mem
    lb      a6,75(sp)
              #                    occupy s1 with _anonymous_of_temp_30_cmp_75_0
              #                    load from temp_30_cmp_75 in mem
    lb      s1,67(sp)
              #                    occupy a3 with _anonymous_of_temp_26_cmp_68_0
              #                    load from temp_26_cmp_68 in mem
    lb      a3,82(sp)
              #                    occupy a4 with _anonymous_of_temp_27__71_0
              #                    load from temp_27__71 in mem


    lw      a4,76(sp)
    j       .branch_false_83
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } |     a4:Freed { symidx: temp_27__71, tracked: true } |     a5:Freed { symidx: temp_31_cmp_79, tracked: true } |     a6:Freed { symidx: temp_28_cmp_71, tracked: true } |     a7:Freed { symidx: temp_29__75, tracked: true } |     s1:Freed { symidx: temp_30_cmp_75, tracked: true } |     s2:Freed { symidx: temp_34_cmp_82, tracked: true } |     s3:Freed { symidx: temp_32__79, tracked: true } |     s4:Freed { symidx: temp_33_cmp_79, tracked: true } | 
              #                          label branch_false_83: 
.branch_false_83:
              #                    regtab     a2:Freed { symidx: temp_25_cmp_64, tracked: true } |     a3:Freed { symidx: temp_26_cmp_68, tracked: true } |     a4:Freed { symidx: temp_27__71, tracked: true } |     a5:Freed { symidx: temp_31_cmp_79, tracked: true } |     a6:Freed { symidx: temp_28_cmp_71, tracked: true } |     a7:Freed { symidx: temp_29__75, tracked: true } |     s1:Freed { symidx: temp_30_cmp_75, tracked: true } |     s2:Freed { symidx: temp_34_cmp_82, tracked: true } |     s3:Freed { symidx: temp_32__79, tracked: true } |     s4:Freed { symidx: temp_33_cmp_79, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    store to temp_30_cmp_75 in mem offset legal
    sb      s1,67(sp)
              #                    release s1 with temp_30_cmp_75
              #                    store to temp_34_cmp_82 in mem offset legal
    sb      s2,58(sp)
              #                    release s2 with temp_34_cmp_82
              #                    store to temp_32__79 in mem offset legal
    sw      s3,60(sp)
              #                    release s3 with temp_32__79
              #                    store to temp_33_cmp_79 in mem offset legal
    sb      s4,59(sp)
              #                    release s4 with temp_33_cmp_79
              #                    store to temp_25_cmp_64 in mem offset legal
    sb      a2,83(sp)
              #                    release a2 with temp_25_cmp_64
              #                    store to temp_26_cmp_68 in mem offset legal
    sb      a3,82(sp)
              #                    release a3 with temp_26_cmp_68
              #                    store to temp_27__71 in mem offset legal
    sw      a4,76(sp)
              #                    release a4 with temp_27__71
              #                    store to temp_31_cmp_79 in mem offset legal
    sb      a5,66(sp)
              #                    release a5 with temp_31_cmp_79
              #                    store to temp_28_cmp_71 in mem offset legal
    sb      a6,75(sp)
              #                    release a6 with temp_28_cmp_71
              #                    store to temp_29__75 in mem offset legal
    sw      a7,68(sp)
              #                    release a7 with temp_29__75
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          i0_33 = i32 0_0 
              #                    occupy a0 with i0_33
    li      a0, 0
              #                    free a0
              #                          i1_33 = i32 1_0 
              #                    occupy a1 with i1_33
    li      a1, 1
              #                    free a1
              #                          i2_33 = i32 2_0 
              #                    occupy a2 with i2_33
    li      a2, 2
              #                    free a2
              #                          i3_33 = i32 3_0 
              #                    occupy a3 with i3_33
    li      a3, 3
              #                    free a3
              #                          i4_33 = i32 4_0 
              #                    occupy a4 with i4_33
    li      a4, 4
              #                    free a4
              #                          jump label: while.head_88 
    j       .while.head_88
              #                    regtab     a0:Freed { symidx: i0_33, tracked: true } |     a1:Freed { symidx: i1_33, tracked: true } |     a2:Freed { symidx: i2_33, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } | 
              #                          label while.head_88: 
.while.head_88:
              #                          new_var temp_35__87:i1 
              #                          temp_35__87 = icmp i32 Ne i0_33, 0_0 
              #                    occupy a0 with i0_33
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_35__87
    xor     a6,a0,a5
    snez    a6, a6
              #                    free a0
              #                    free a5
              #                    free a6
              #                          new_var temp_36__87:i1 
              #                          temp_35__87 = icmp i32 Ne i1_33, 0_0 
              #                    occupy a1 with i1_33
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy a6 with temp_35__87
              #                    free a1
              #                    free a5
              #                    free a6
              #                          new_var temp_37_logic_87:i1 
              #                          temp_37_logic_87 = And i1 temp_35__87, temp_36__87 
              #                    occupy a6 with temp_35__87
              #                    occupy a7 with temp_36__87
              #                    load from temp_36__87 in mem
    lb      a7,34(sp)
              #                    occupy s1 with temp_37_logic_87
    and     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          br i1 temp_37_logic_87, label while.body_88, label while.exit_88 
              #                    occupy s1 with temp_37_logic_87
              #                    free s1
              #                    occupy s1 with temp_37_logic_87
    bnez    s1, .while.body_88
              #                    free s1
    j       .while.exit_88
              #                    regtab     a0:Freed { symidx: i0_33, tracked: true } |     a1:Freed { symidx: i1_33, tracked: true } |     a2:Freed { symidx: i2_33, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } | 
              #                          label while.body_88: 
.while.body_88:
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    store to temp_37_logic_87 in mem offset legal
    sb      s1,33(sp)
              #                    release s1 with temp_37_logic_87
              #                    store to i0_33 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with i0_33
              #                    store to i1_33 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with i1_33
              #                    store to i2_33 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with i2_33
              #                    store to i3_33 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with i3_33
              #                    store to i4_33 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with i4_33
              #                    store to temp_35__87 in mem offset legal
    sb      a6,35(sp)
              #                    release a6 with temp_35__87
              #                    store to temp_36__87 in mem offset legal
    sb      a7,34(sp)
              #                    release a7 with temp_36__87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          jump label: while.head_88 
              #                    occupy a1 with _anonymous_of_i1_33_0
              #                    load from i1_33 in mem


    lw      a1,48(sp)
              #                    occupy a0 with _anonymous_of_i0_33_0
              #                    load from i0_33 in mem


    lw      a0,52(sp)
              #                    occupy a2 with _anonymous_of_i2_33_0
              #                    load from i2_33 in mem


    lw      a2,44(sp)
              #                    occupy a3 with _anonymous_of_i3_33_0
              #                    load from i3_33 in mem


    lw      a3,40(sp)
              #                    occupy a4 with _anonymous_of_i4_33_0
              #                    load from i4_33 in mem


    lw      a4,36(sp)
    j       .while.head_88
              #                    regtab     a0:Freed { symidx: i0_33, tracked: true } |     a1:Freed { symidx: i1_33, tracked: true } |     a2:Freed { symidx: i2_33, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } | 
              #                          label while.exit_88: 
.while.exit_88:
              #                          new_var temp_38__90:i1 
              #                          temp_38__90 = icmp i32 Ne i0_33, 0_0 
              #                    occupy a0 with i0_33
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy s2 with temp_38__90
    xor     s2,a0,a5
    snez    s2, s2
              #                    free a0
              #                    free a5
              #                    free s2
              #                          new_var temp_39__90:i1 
              #                          temp_38__90 = icmp i32 Ne i1_33, 0_0 
              #                    occupy a1 with i1_33
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy s2 with temp_38__90
              #                    free a1
              #                    free a5
              #                    free s2
              #                          new_var temp_40_logic_90:i1 
              #                          temp_40_logic_90 = Or i1 temp_38__90, temp_39__90 
              #                    occupy s2 with temp_38__90
              #                    occupy s3 with temp_39__90
              #                    load from temp_39__90 in mem
    lb      s3,31(sp)
              #                    occupy s3 with temp_39__90
              #                    free s2
              #                    free s3
              #                    free s3
              #                          br i1 temp_40_logic_90, label branch_true_91, label branch_false_91 
              #                    occupy s4 with temp_40_logic_90
              #                    load from temp_40_logic_90 in mem
    lb      s4,30(sp)
              #                    free s4
              #                    occupy s4 with temp_40_logic_90
    bnez    s4, .branch_true_91
              #                    free s4
    j       .branch_false_91
              #                    regtab     a0:Freed { symidx: i0_33, tracked: true } |     a1:Freed { symidx: i1_33, tracked: true } |     a2:Freed { symidx: i2_33, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } | 
              #                          label branch_true_91: 
.branch_true_91:
              #                           Call void putch_0(67_0) 
              #                    saved register dumping to mem
              #                    store to temp_37_logic_87 in mem offset legal
    sb      s1,33(sp)
              #                    release s1 with temp_37_logic_87
              #                    store to temp_38__90 in mem offset legal
    sb      s2,32(sp)
              #                    release s2 with temp_38__90
              #                    store to temp_39__90 in mem offset legal
    sb      s3,31(sp)
              #                    release s3 with temp_39__90
              #                    store to temp_40_logic_90 in mem offset legal
    sb      s4,30(sp)
              #                    release s4 with temp_40_logic_90
              #                    store to i0_33 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with i0_33
              #                    store to i1_33 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with i1_33
              #                    store to i2_33 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with i2_33
              #                    store to i3_33 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with i3_33
              #                    store to i4_33 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with i4_33
              #                    store to temp_35__87 in mem offset legal
    sb      a6,35(sp)
              #                    release a6 with temp_35__87
              #                    store to temp_36__87 in mem offset legal
    sb      a7,34(sp)
              #                    release a7 with temp_36__87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_67_0_0
    li      a0, 67
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_91 
              #                    occupy s3 with _anonymous_of_temp_39__90_0
              #                    load from temp_39__90 in mem
    lb      s3,31(sp)
              #                    occupy a7 with _anonymous_of_temp_36__87_0
              #                    load from temp_36__87 in mem
    lb      a7,34(sp)
              #                    occupy a1 with _anonymous_of_i1_33_0
              #                    load from i1_33 in mem


    lw      a1,48(sp)
              #                    occupy a0 with _anonymous_of_i0_33_0
              #                    load from i0_33 in mem


    lw      a0,52(sp)
              #                    occupy s2 with _anonymous_of_temp_38__90_0
              #                    load from temp_38__90 in mem
    lb      s2,32(sp)
              #                    occupy a2 with _anonymous_of_i2_33_0
              #                    load from i2_33 in mem


    lw      a2,44(sp)
              #                    occupy s4 with _anonymous_of_temp_40_logic_90_0
              #                    load from temp_40_logic_90 in mem
    lb      s4,30(sp)
              #                    occupy a6 with _anonymous_of_temp_35__87_0
              #                    load from temp_35__87 in mem
    lb      a6,35(sp)
              #                    occupy s1 with _anonymous_of_temp_37_logic_87_0
              #                    load from temp_37_logic_87 in mem
    lb      s1,33(sp)
              #                    occupy a3 with _anonymous_of_i3_33_0
              #                    load from i3_33 in mem


    lw      a3,40(sp)
              #                    occupy a4 with _anonymous_of_i4_33_0
              #                    load from i4_33 in mem


    lw      a4,36(sp)
    j       .branch_false_91
              #                    regtab     a0:Freed { symidx: i0_33, tracked: true } |     a1:Freed { symidx: i1_33, tracked: true } |     a2:Freed { symidx: i2_33, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } | 
              #                          label branch_false_91: 
.branch_false_91:
              #                    regtab     a0:Freed { symidx: i0_33, tracked: true } |     a1:Freed { symidx: i1_33, tracked: true } |     a2:Freed { symidx: i2_33, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } | 
              #                          label L16_0: 
.L16_0:
              #                          new_var temp_41_cmp_93:i1 
              #                          temp_41_cmp_93 = icmp i32 Sle i1_33, i0_33 
              #                    occupy a1 with i1_33
              #                    occupy a0 with i0_33
              #                    occupy a5 with temp_41_cmp_93
    slt     a5,a0,a1
    xori    a5,a5,1
              #                    free a1
              #                    free a0
              #                    free a5
              #                          new_var temp_42_cmp_93:i1 
              #                          temp_42_cmp_93 = icmp i32 Sge i0_33, i1_33 
              #                    occupy a0 with i0_33
              #                    occupy a1 with i1_33
              #                    occupy s5 with temp_42_cmp_93
    slt     s5,a0,a1
    xori    s5,s5,1
              #                    free a0
              #                    free a1
              #                    free s5
              #                          new_var temp_43_logic_93:i1 
              #                          temp_43_logic_93 = Or i1 temp_42_cmp_93, temp_41_cmp_93 
              #                    occupy s5 with temp_42_cmp_93
              #                    occupy a5 with temp_41_cmp_93
              #                    occupy a5 with temp_41_cmp_93
              #                    free s5
              #                    free a5
              #                    free a5
              #                          br i1 temp_43_logic_93, label branch_true_94, label branch_false_94 
              #                    occupy s6 with temp_43_logic_93
              #                    load from temp_43_logic_93 in mem
    lb      s6,27(sp)
              #                    free s6
              #                    occupy s6 with temp_43_logic_93
    bnez    s6, .branch_true_94
              #                    free s6
    j       .branch_false_94
              #                    regtab     a0:Freed { symidx: i0_33, tracked: true } |     a1:Freed { symidx: i1_33, tracked: true } |     a2:Freed { symidx: i2_33, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a5:Freed { symidx: temp_41_cmp_93, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } |     s5:Freed { symidx: temp_42_cmp_93, tracked: true } |     s6:Freed { symidx: temp_43_logic_93, tracked: true } | 
              #                          label branch_true_94: 
.branch_true_94:
              #                           Call void putch_0(72_0) 
              #                    saved register dumping to mem
              #                    store to temp_37_logic_87 in mem offset legal
    sb      s1,33(sp)
              #                    release s1 with temp_37_logic_87
              #                    store to temp_38__90 in mem offset legal
    sb      s2,32(sp)
              #                    release s2 with temp_38__90
              #                    store to temp_39__90 in mem offset legal
    sb      s3,31(sp)
              #                    release s3 with temp_39__90
              #                    store to temp_40_logic_90 in mem offset legal
    sb      s4,30(sp)
              #                    release s4 with temp_40_logic_90
              #                    store to temp_42_cmp_93 in mem offset legal
    sb      s5,28(sp)
              #                    release s5 with temp_42_cmp_93
              #                    store to temp_43_logic_93 in mem offset legal
    sb      s6,27(sp)
              #                    release s6 with temp_43_logic_93
              #                    store to i0_33 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with i0_33
              #                    store to i1_33 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with i1_33
              #                    store to i2_33 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with i2_33
              #                    store to i3_33 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with i3_33
              #                    store to i4_33 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with i4_33
              #                    store to temp_41_cmp_93 in mem offset legal
    sb      a5,29(sp)
              #                    release a5 with temp_41_cmp_93
              #                    store to temp_35__87 in mem offset legal
    sb      a6,35(sp)
              #                    release a6 with temp_35__87
              #                    store to temp_36__87 in mem offset legal
    sb      a7,34(sp)
              #                    release a7 with temp_36__87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_72_0_0
    li      a0, 72
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_94 
              #                    occupy a5 with _anonymous_of_temp_41_cmp_93_0
              #                    load from temp_41_cmp_93 in mem
    lb      a5,29(sp)
              #                    occupy s3 with _anonymous_of_temp_39__90_0
              #                    load from temp_39__90 in mem
    lb      s3,31(sp)
              #                    occupy a7 with _anonymous_of_temp_36__87_0
              #                    load from temp_36__87 in mem
    lb      a7,34(sp)
              #                    occupy s5 with _anonymous_of_temp_42_cmp_93_0
              #                    load from temp_42_cmp_93 in mem
    lb      s5,28(sp)
              #                    occupy a1 with _anonymous_of_i1_33_0
              #                    load from i1_33 in mem


    lw      a1,48(sp)
              #                    occupy a0 with _anonymous_of_i0_33_0
              #                    load from i0_33 in mem


    lw      a0,52(sp)
              #                    occupy s2 with _anonymous_of_temp_38__90_0
              #                    load from temp_38__90 in mem
    lb      s2,32(sp)
              #                    occupy a2 with _anonymous_of_i2_33_0
              #                    load from i2_33 in mem


    lw      a2,44(sp)
              #                    occupy s4 with _anonymous_of_temp_40_logic_90_0
              #                    load from temp_40_logic_90 in mem
    lb      s4,30(sp)
              #                    occupy a6 with _anonymous_of_temp_35__87_0
              #                    load from temp_35__87 in mem
    lb      a6,35(sp)
              #                    occupy s1 with _anonymous_of_temp_37_logic_87_0
              #                    load from temp_37_logic_87 in mem
    lb      s1,33(sp)
              #                    occupy a3 with _anonymous_of_i3_33_0
              #                    load from i3_33 in mem


    lw      a3,40(sp)
              #                    occupy s6 with _anonymous_of_temp_43_logic_93_0
              #                    load from temp_43_logic_93 in mem
    lb      s6,27(sp)
              #                    occupy a4 with _anonymous_of_i4_33_0
              #                    load from i4_33 in mem


    lw      a4,36(sp)
    j       .branch_false_94
              #                    regtab     a0:Freed { symidx: i0_33, tracked: true } |     a1:Freed { symidx: i1_33, tracked: true } |     a2:Freed { symidx: i2_33, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a5:Freed { symidx: temp_41_cmp_93, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } |     s5:Freed { symidx: temp_42_cmp_93, tracked: true } |     s6:Freed { symidx: temp_43_logic_93, tracked: true } | 
              #                          label branch_false_94: 
.branch_false_94:
              #                    regtab     a0:Freed { symidx: i0_33, tracked: true } |     a1:Freed { symidx: i1_33, tracked: true } |     a2:Freed { symidx: i2_33, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a5:Freed { symidx: temp_41_cmp_93, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } |     s5:Freed { symidx: temp_42_cmp_93, tracked: true } |     s6:Freed { symidx: temp_43_logic_93, tracked: true } | 
              #                          label L17_0: 
.L17_0:
              #                          new_var temp_44_cmp_96:i1 
              #                          temp_44_cmp_96 = icmp i32 Ne i4_33, i3_33 
              #                    occupy a4 with i4_33
              #                    occupy a3 with i3_33
              #                    occupy s7 with temp_44_cmp_96
    xor     s7,a4,a3
    snez    s7, s7
              #                    free a4
              #                    free a3
              #                    free s7
              #                          new_var temp_45_cmp_96:i1 
              #                          temp_45_cmp_96 = icmp i32 Sge i2_33, i1_33 
              #                    occupy a2 with i2_33
              #                    occupy a1 with i1_33
              #                    occupy s8 with temp_45_cmp_96
    slt     s8,a2,a1
    xori    s8,s8,1
              #                    free a2
              #                    free a1
              #                    free s8
              #                          new_var temp_46_logic_96:i1 
              #                          temp_46_logic_96 = And i1 temp_45_cmp_96, temp_44_cmp_96 
              #                    occupy s8 with temp_45_cmp_96
              #                    occupy s7 with temp_44_cmp_96
              #                    occupy s9 with temp_46_logic_96
    and     s9,s8,s7
              #                    free s8
              #                    free s7
              #                    free s9
              #                          br i1 temp_46_logic_96, label branch_true_97, label branch_false_97 
              #                    occupy s9 with temp_46_logic_96
              #                    free s9
              #                    occupy s9 with temp_46_logic_96
    bnez    s9, .branch_true_97
              #                    free s9
    j       .branch_false_97
              #                    regtab     a0:Freed { symidx: i0_33, tracked: true } |     a1:Freed { symidx: i1_33, tracked: true } |     a2:Freed { symidx: i2_33, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a5:Freed { symidx: temp_41_cmp_93, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } |     s5:Freed { symidx: temp_42_cmp_93, tracked: true } |     s6:Freed { symidx: temp_43_logic_93, tracked: true } |     s7:Freed { symidx: temp_44_cmp_96, tracked: true } |     s8:Freed { symidx: temp_45_cmp_96, tracked: true } |     s9:Freed { symidx: temp_46_logic_96, tracked: true } | 
              #                          label branch_true_97: 
.branch_true_97:
              #                           Call void putch_0(73_0) 
              #                    saved register dumping to mem
              #                    store to temp_37_logic_87 in mem offset legal
    sb      s1,33(sp)
              #                    release s1 with temp_37_logic_87
              #                    store to temp_38__90 in mem offset legal
    sb      s2,32(sp)
              #                    release s2 with temp_38__90
              #                    store to temp_39__90 in mem offset legal
    sb      s3,31(sp)
              #                    release s3 with temp_39__90
              #                    store to temp_40_logic_90 in mem offset legal
    sb      s4,30(sp)
              #                    release s4 with temp_40_logic_90
              #                    store to temp_42_cmp_93 in mem offset legal
    sb      s5,28(sp)
              #                    release s5 with temp_42_cmp_93
              #                    store to temp_43_logic_93 in mem offset legal
    sb      s6,27(sp)
              #                    release s6 with temp_43_logic_93
              #                    store to temp_44_cmp_96 in mem offset legal
    sb      s7,26(sp)
              #                    release s7 with temp_44_cmp_96
              #                    store to temp_45_cmp_96 in mem offset legal
    sb      s8,25(sp)
              #                    release s8 with temp_45_cmp_96
              #                    store to temp_46_logic_96 in mem offset legal
    sb      s9,24(sp)
              #                    release s9 with temp_46_logic_96
              #                    store to i0_33 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with i0_33
              #                    store to i1_33 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with i1_33
              #                    store to i2_33 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with i2_33
              #                    store to i3_33 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with i3_33
              #                    store to i4_33 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with i4_33
              #                    store to temp_41_cmp_93 in mem offset legal
    sb      a5,29(sp)
              #                    release a5 with temp_41_cmp_93
              #                    store to temp_35__87 in mem offset legal
    sb      a6,35(sp)
              #                    release a6 with temp_35__87
              #                    store to temp_36__87 in mem offset legal
    sb      a7,34(sp)
              #                    release a7 with temp_36__87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_73_0_0
    li      a0, 73
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_97 
              #                    occupy a5 with _anonymous_of_temp_41_cmp_93_0
              #                    load from temp_41_cmp_93 in mem
    lb      a5,29(sp)
              #                    occupy s3 with _anonymous_of_temp_39__90_0
              #                    load from temp_39__90 in mem
    lb      s3,31(sp)
              #                    occupy s7 with _anonymous_of_temp_44_cmp_96_0
              #                    load from temp_44_cmp_96 in mem
    lb      s7,26(sp)
              #                    occupy a7 with _anonymous_of_temp_36__87_0
              #                    load from temp_36__87 in mem
    lb      a7,34(sp)
              #                    occupy s5 with _anonymous_of_temp_42_cmp_93_0
              #                    load from temp_42_cmp_93 in mem
    lb      s5,28(sp)
              #                    occupy a1 with _anonymous_of_i1_33_0
              #                    load from i1_33 in mem


    lw      a1,48(sp)
              #                    occupy s8 with _anonymous_of_temp_45_cmp_96_0
              #                    load from temp_45_cmp_96 in mem
    lb      s8,25(sp)
              #                    occupy a0 with _anonymous_of_i0_33_0
              #                    load from i0_33 in mem


    lw      a0,52(sp)
              #                    occupy s2 with _anonymous_of_temp_38__90_0
              #                    load from temp_38__90 in mem
    lb      s2,32(sp)
              #                    occupy a2 with _anonymous_of_i2_33_0
              #                    load from i2_33 in mem


    lw      a2,44(sp)
              #                    occupy s4 with _anonymous_of_temp_40_logic_90_0
              #                    load from temp_40_logic_90 in mem
    lb      s4,30(sp)
              #                    occupy a6 with _anonymous_of_temp_35__87_0
              #                    load from temp_35__87 in mem
    lb      a6,35(sp)
              #                    occupy s1 with _anonymous_of_temp_37_logic_87_0
              #                    load from temp_37_logic_87 in mem
    lb      s1,33(sp)
              #                    occupy a3 with _anonymous_of_i3_33_0
              #                    load from i3_33 in mem


    lw      a3,40(sp)
              #                    occupy s6 with _anonymous_of_temp_43_logic_93_0
              #                    load from temp_43_logic_93 in mem
    lb      s6,27(sp)
              #                    occupy s9 with _anonymous_of_temp_46_logic_96_0
              #                    load from temp_46_logic_96 in mem
    lb      s9,24(sp)
              #                    occupy a4 with _anonymous_of_i4_33_0
              #                    load from i4_33 in mem


    lw      a4,36(sp)
    j       .branch_false_97
              #                    regtab     a0:Freed { symidx: i0_33, tracked: true } |     a1:Freed { symidx: i1_33, tracked: true } |     a2:Freed { symidx: i2_33, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a5:Freed { symidx: temp_41_cmp_93, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } |     s5:Freed { symidx: temp_42_cmp_93, tracked: true } |     s6:Freed { symidx: temp_43_logic_93, tracked: true } |     s7:Freed { symidx: temp_44_cmp_96, tracked: true } |     s8:Freed { symidx: temp_45_cmp_96, tracked: true } |     s9:Freed { symidx: temp_46_logic_96, tracked: true } | 
              #                          label branch_false_97: 
.branch_false_97:
              #                    regtab     a0:Freed { symidx: i0_33, tracked: true } |     a1:Freed { symidx: i1_33, tracked: true } |     a2:Freed { symidx: i2_33, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a5:Freed { symidx: temp_41_cmp_93, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } |     s5:Freed { symidx: temp_42_cmp_93, tracked: true } |     s6:Freed { symidx: temp_43_logic_93, tracked: true } |     s7:Freed { symidx: temp_44_cmp_96, tracked: true } |     s8:Freed { symidx: temp_45_cmp_96, tracked: true } |     s9:Freed { symidx: temp_46_logic_96, tracked: true } | 
              #                          label L18_0: 
.L18_0:
              #                          new_var temp_47_cmp_100:i1 
              #                          temp_47_cmp_100 = icmp i32 Sge i4_33, i4_33 
              #                    occupy a4 with i4_33
              #                    occupy a4 with i4_33
              #                    occupy s10 with temp_47_cmp_100
    slt     s10,a4,a4
    xori    s10,s10,1
              #                    free a4
              #                    free a4
              #                    free s10
              #                          new_var temp_48_cmp_100:i1 
              #                          temp_48_cmp_100 = icmp i32 Slt i3_33, i3_33 
              #                    occupy a3 with i3_33
              #                    occupy a3 with i3_33
              #                    occupy s11 with temp_48_cmp_100
    slt     s11,a3,a3
              #                    free a3
              #                    free a3
              #                    free s11
              #                          new_var temp_49_booltrans_100:i1 
              #                          temp_49_booltrans_100 = icmp i1 Ne i1_33, 0_0 
              #                    occupy a1 with i1_33
              #                    store to i0_33 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with i0_33
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    store to i2_33 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with i2_33
              #                    occupy a2 with temp_49_booltrans_100
    xor     a2,a1,a0
    snez    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_50_logicnot_100:i1 
              #                          temp_50_logicnot_100 = xor i1 temp_49_booltrans_100, true 
              #                    occupy a2 with temp_49_booltrans_100
              #                    occupy a0 with temp_50_logicnot_100
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                          new_var temp_51__100:i32 
              #                          temp_51__100 = zext i1 temp_50_logicnot_100 to i32 
              #                    occupy a0 with temp_50_logicnot_100
              #                    occupy a0 with temp_50_logicnot_100
              #                    free a0
              #                    free a0
              #                          new_var temp_52_cmp_100:i1 
              #                          temp_52_cmp_100 = icmp i32 Eq i0_33, temp_51__100 
              #                    store to temp_50_logicnot_100 in mem offset legal
    sb      a0,20(sp)
              #                    release a0 with temp_50_logicnot_100
              #                    occupy a0 with i0_33
              #                    load from i0_33 in mem


    lw      a0,52(sp)
              #                    store to i1_33 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with i1_33
              #                    occupy a1 with temp_51__100
              #                    load from temp_51__100 in mem


    lw      a1,16(sp)
              #                    store to temp_49_booltrans_100 in mem offset legal
    sb      a2,21(sp)
              #                    release a2 with temp_49_booltrans_100
              #                    occupy a2 with temp_52_cmp_100
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_53_logic_100:i1 
              #                          temp_53_logic_100 = And i1 temp_52_cmp_100, temp_48_cmp_100 
              #                    occupy a2 with temp_52_cmp_100
              #                    occupy s11 with temp_48_cmp_100
              #                    store to i0_33 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with i0_33
              #                    occupy a0 with temp_53_logic_100
    and     a0,a2,s11
              #                    free a2
              #                    free s11
              #                    free a0
              #                          new_var temp_54_logic_100:i1 
              #                          temp_54_logic_100 = Or i1 temp_53_logic_100, temp_47_cmp_100 
              #                    occupy a0 with temp_53_logic_100
              #                    occupy s10 with temp_47_cmp_100
              #                    occupy s10 with temp_47_cmp_100
              #                    free a0
              #                    free s10
              #                    free s10
              #                          br i1 temp_54_logic_100, label branch_true_101, label branch_false_101 
              #                    store to temp_53_logic_100 in mem offset legal
    sb      a0,14(sp)
              #                    release a0 with temp_53_logic_100
              #                    occupy a0 with temp_54_logic_100
              #                    load from temp_54_logic_100 in mem
    lb      a0,13(sp)
              #                    free a0
              #                    store to temp_41_cmp_93 in mem offset legal
    sb      a5,29(sp)
              #                    release a5 with temp_41_cmp_93
              #                    occupy a0 with temp_54_logic_100
    bnez    a0, .branch_true_101
              #                    free a0
    j       .branch_false_101
              #                    regtab     a0:Freed { symidx: temp_54_logic_100, tracked: true } |     a1:Freed { symidx: temp_51__100, tracked: true } |     a2:Freed { symidx: temp_52_cmp_100, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s10:Freed { symidx: temp_47_cmp_100, tracked: true } |     s11:Freed { symidx: temp_48_cmp_100, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } |     s5:Freed { symidx: temp_42_cmp_93, tracked: true } |     s6:Freed { symidx: temp_43_logic_93, tracked: true } |     s7:Freed { symidx: temp_44_cmp_96, tracked: true } |     s8:Freed { symidx: temp_45_cmp_96, tracked: true } |     s9:Freed { symidx: temp_46_logic_96, tracked: true } | 
              #                          label branch_true_101: 
.branch_true_101:
              #                           Call void putch_0(74_0) 
              #                    saved register dumping to mem
              #                    store to temp_37_logic_87 in mem offset legal
    sb      s1,33(sp)
              #                    release s1 with temp_37_logic_87
              #                    store to temp_38__90 in mem offset legal
    sb      s2,32(sp)
              #                    release s2 with temp_38__90
              #                    store to temp_39__90 in mem offset legal
    sb      s3,31(sp)
              #                    release s3 with temp_39__90
              #                    store to temp_40_logic_90 in mem offset legal
    sb      s4,30(sp)
              #                    release s4 with temp_40_logic_90
              #                    store to temp_42_cmp_93 in mem offset legal
    sb      s5,28(sp)
              #                    release s5 with temp_42_cmp_93
              #                    store to temp_43_logic_93 in mem offset legal
    sb      s6,27(sp)
              #                    release s6 with temp_43_logic_93
              #                    store to temp_44_cmp_96 in mem offset legal
    sb      s7,26(sp)
              #                    release s7 with temp_44_cmp_96
              #                    store to temp_45_cmp_96 in mem offset legal
    sb      s8,25(sp)
              #                    release s8 with temp_45_cmp_96
              #                    store to temp_46_logic_96 in mem offset legal
    sb      s9,24(sp)
              #                    release s9 with temp_46_logic_96
              #                    store to temp_47_cmp_100 in mem offset legal
    sb      s10,23(sp)
              #                    release s10 with temp_47_cmp_100
              #                    store to temp_48_cmp_100 in mem offset legal
    sb      s11,22(sp)
              #                    release s11 with temp_48_cmp_100
              #                    store to temp_54_logic_100 in mem offset legal
    sb      a0,13(sp)
              #                    release a0 with temp_54_logic_100
              #                    store to temp_51__100 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_51__100
              #                    store to temp_52_cmp_100 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_52_cmp_100
              #                    store to i3_33 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with i3_33
              #                    store to i4_33 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with i4_33
              #                    store to temp_35__87 in mem offset legal
    sb      a6,35(sp)
              #                    release a6 with temp_35__87
              #                    store to temp_36__87 in mem offset legal
    sb      a7,34(sp)
              #                    release a7 with temp_36__87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_74_0_0
    li      a0, 74
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_101 
              #                    occupy s11 with _anonymous_of_temp_48_cmp_100_0
              #                    load from temp_48_cmp_100 in mem
    lb      s11,22(sp)
              #                    occupy s3 with _anonymous_of_temp_39__90_0
              #                    load from temp_39__90 in mem
    lb      s3,31(sp)
              #                    occupy s10 with _anonymous_of_temp_47_cmp_100_0
              #                    load from temp_47_cmp_100 in mem
    lb      s10,23(sp)
              #                    occupy s7 with _anonymous_of_temp_44_cmp_96_0
              #                    load from temp_44_cmp_96 in mem
    lb      s7,26(sp)
              #                    occupy a7 with _anonymous_of_temp_36__87_0
              #                    load from temp_36__87 in mem
    lb      a7,34(sp)
              #                    occupy s5 with _anonymous_of_temp_42_cmp_93_0
              #                    load from temp_42_cmp_93 in mem
    lb      s5,28(sp)
              #                    occupy a1 with _anonymous_of_temp_51__100_0
              #                    load from temp_51__100 in mem


    lw      a1,16(sp)
              #                    occupy s8 with _anonymous_of_temp_45_cmp_96_0
              #                    load from temp_45_cmp_96 in mem
    lb      s8,25(sp)
              #                    occupy a0 with _anonymous_of_temp_54_logic_100_0
              #                    load from temp_54_logic_100 in mem
    lb      a0,13(sp)
              #                    occupy s2 with _anonymous_of_temp_38__90_0
              #                    load from temp_38__90 in mem
    lb      s2,32(sp)
              #                    occupy a2 with _anonymous_of_temp_52_cmp_100_0
              #                    load from temp_52_cmp_100 in mem
    lb      a2,15(sp)
              #                    occupy s4 with _anonymous_of_temp_40_logic_90_0
              #                    load from temp_40_logic_90 in mem
    lb      s4,30(sp)
              #                    occupy a6 with _anonymous_of_temp_35__87_0
              #                    load from temp_35__87 in mem
    lb      a6,35(sp)
              #                    occupy s1 with _anonymous_of_temp_37_logic_87_0
              #                    load from temp_37_logic_87 in mem
    lb      s1,33(sp)
              #                    occupy a3 with _anonymous_of_i3_33_0
              #                    load from i3_33 in mem


    lw      a3,40(sp)
              #                    occupy s6 with _anonymous_of_temp_43_logic_93_0
              #                    load from temp_43_logic_93 in mem
    lb      s6,27(sp)
              #                    occupy s9 with _anonymous_of_temp_46_logic_96_0
              #                    load from temp_46_logic_96 in mem
    lb      s9,24(sp)
              #                    occupy a4 with _anonymous_of_i4_33_0
              #                    load from i4_33 in mem


    lw      a4,36(sp)
    j       .branch_false_101
              #                    regtab     a0:Freed { symidx: temp_54_logic_100, tracked: true } |     a1:Freed { symidx: temp_51__100, tracked: true } |     a2:Freed { symidx: temp_52_cmp_100, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s10:Freed { symidx: temp_47_cmp_100, tracked: true } |     s11:Freed { symidx: temp_48_cmp_100, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } |     s5:Freed { symidx: temp_42_cmp_93, tracked: true } |     s6:Freed { symidx: temp_43_logic_93, tracked: true } |     s7:Freed { symidx: temp_44_cmp_96, tracked: true } |     s8:Freed { symidx: temp_45_cmp_96, tracked: true } |     s9:Freed { symidx: temp_46_logic_96, tracked: true } | 
              #                          label branch_false_101: 
.branch_false_101:
              #                    regtab     a0:Freed { symidx: temp_54_logic_100, tracked: true } |     a1:Freed { symidx: temp_51__100, tracked: true } |     a2:Freed { symidx: temp_52_cmp_100, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s10:Freed { symidx: temp_47_cmp_100, tracked: true } |     s11:Freed { symidx: temp_48_cmp_100, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } |     s5:Freed { symidx: temp_42_cmp_93, tracked: true } |     s6:Freed { symidx: temp_43_logic_93, tracked: true } |     s7:Freed { symidx: temp_44_cmp_96, tracked: true } |     s8:Freed { symidx: temp_45_cmp_96, tracked: true } |     s9:Freed { symidx: temp_46_logic_96, tracked: true } | 
              #                          label L19_0: 
.L19_0:
              #                          new_var temp_55_cmp_104:i1 
              #                          temp_55_cmp_104 = icmp i32 Sge i4_33, i4_33 
              #                    occupy a4 with i4_33
              #                    occupy a4 with i4_33
              #                    occupy a5 with temp_55_cmp_104
    slt     a5,a4,a4
    xori    a5,a5,1
              #                    free a4
              #                    free a4
              #                    free a5
              #                          new_var temp_56_cmp_104:i1 
              #                          temp_56_cmp_104 = icmp i32 Slt i3_33, i3_33 
              #                    occupy a3 with i3_33
              #                    occupy a3 with i3_33
              #                    store to temp_54_logic_100 in mem offset legal
    sb      a0,13(sp)
              #                    release a0 with temp_54_logic_100
              #                    occupy a0 with temp_56_cmp_104
    slt     a0,a3,a3
              #                    free a3
              #                    free a3
              #                    free a0
              #                          new_var temp_57_logic_104:i1 
              #                          temp_57_logic_104 = And i1 temp_56_cmp_104, temp_55_cmp_104 
              #                    occupy a0 with temp_56_cmp_104
              #                    occupy a5 with temp_55_cmp_104
              #                    store to temp_51__100 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_51__100
              #                    occupy a1 with temp_57_logic_104
    and     a1,a0,a5
              #                    free a0
              #                    free a5
              #                    free a1
              #                          new_var temp_58_booltrans_104:i1 
              #                          temp_58_booltrans_104 = icmp i1 Ne i1_33, 0_0 
              #                    store to temp_56_cmp_104 in mem offset legal
    sb      a0,11(sp)
              #                    release a0 with temp_56_cmp_104
              #                    occupy a0 with i1_33
              #                    load from i1_33 in mem


    lw      a0,48(sp)
              #                    store to temp_57_logic_104 in mem offset legal
    sb      a1,10(sp)
              #                    release a1 with temp_57_logic_104
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    store to temp_52_cmp_100 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_52_cmp_100
              #                    occupy a2 with temp_58_booltrans_104
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_59_logicnot_104:i1 
              #                          temp_59_logicnot_104 = xor i1 temp_58_booltrans_104, true 
              #                    occupy a2 with temp_58_booltrans_104
              #                    occupy a1 with temp_59_logicnot_104
    seqz    a1, a2
              #                    free a2
              #                    free a1
              #                          new_var temp_60__104:i32 
              #                          temp_60__104 = zext i1 temp_59_logicnot_104 to i32 
              #                    occupy a1 with temp_59_logicnot_104
              #                    occupy a1 with temp_59_logicnot_104
              #                    free a1
              #                    free a1
              #                          new_var temp_61_cmp_104:i1 
              #                          temp_61_cmp_104 = icmp i32 Eq i0_33, temp_60__104 
              #                    store to i1_33 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with i1_33
              #                    occupy a0 with i0_33
              #                    load from i0_33 in mem


    lw      a0,52(sp)
              #                    store to temp_59_logicnot_104 in mem offset legal
    sb      a1,8(sp)
              #                    release a1 with temp_59_logicnot_104
              #                    occupy a1 with temp_60__104
              #                    load from temp_60__104 in mem


    lw      a1,4(sp)
              #                    store to temp_58_booltrans_104 in mem offset legal
    sb      a2,9(sp)
              #                    release a2 with temp_58_booltrans_104
              #                    occupy a2 with temp_61_cmp_104
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_62_logic_104:i1 
              #                          temp_62_logic_104 = Or i1 temp_61_cmp_104, temp_57_logic_104 
              #                    occupy a2 with temp_61_cmp_104
              #                    store to i0_33 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with i0_33
              #                    occupy a0 with temp_57_logic_104
              #                    load from temp_57_logic_104 in mem
    lb      a0,10(sp)
              #                    occupy a0 with temp_57_logic_104
              #                    free a2
              #                    free a0
              #                    free a0
              #                          br i1 temp_62_logic_104, label branch_true_105, label branch_false_105 
              #                    store to temp_57_logic_104 in mem offset legal
    sb      a0,10(sp)
              #                    release a0 with temp_57_logic_104
              #                    occupy a0 with temp_62_logic_104
              #                    load from temp_62_logic_104 in mem
    lb      a0,2(sp)
              #                    free a0
              #                    store to temp_55_cmp_104 in mem offset legal
    sb      a5,12(sp)
              #                    release a5 with temp_55_cmp_104
              #                    occupy a0 with temp_62_logic_104
    bnez    a0, .branch_true_105
              #                    free a0
    j       .branch_false_105
              #                    regtab     a0:Freed { symidx: temp_62_logic_104, tracked: true } |     a1:Freed { symidx: temp_60__104, tracked: true } |     a2:Freed { symidx: temp_61_cmp_104, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s10:Freed { symidx: temp_47_cmp_100, tracked: true } |     s11:Freed { symidx: temp_48_cmp_100, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } |     s5:Freed { symidx: temp_42_cmp_93, tracked: true } |     s6:Freed { symidx: temp_43_logic_93, tracked: true } |     s7:Freed { symidx: temp_44_cmp_96, tracked: true } |     s8:Freed { symidx: temp_45_cmp_96, tracked: true } |     s9:Freed { symidx: temp_46_logic_96, tracked: true } | 
              #                          label branch_true_105: 
.branch_true_105:
              #                           Call void putch_0(75_0) 
              #                    saved register dumping to mem
              #                    store to temp_37_logic_87 in mem offset legal
    sb      s1,33(sp)
              #                    release s1 with temp_37_logic_87
              #                    store to temp_38__90 in mem offset legal
    sb      s2,32(sp)
              #                    release s2 with temp_38__90
              #                    store to temp_39__90 in mem offset legal
    sb      s3,31(sp)
              #                    release s3 with temp_39__90
              #                    store to temp_40_logic_90 in mem offset legal
    sb      s4,30(sp)
              #                    release s4 with temp_40_logic_90
              #                    store to temp_42_cmp_93 in mem offset legal
    sb      s5,28(sp)
              #                    release s5 with temp_42_cmp_93
              #                    store to temp_43_logic_93 in mem offset legal
    sb      s6,27(sp)
              #                    release s6 with temp_43_logic_93
              #                    store to temp_44_cmp_96 in mem offset legal
    sb      s7,26(sp)
              #                    release s7 with temp_44_cmp_96
              #                    store to temp_45_cmp_96 in mem offset legal
    sb      s8,25(sp)
              #                    release s8 with temp_45_cmp_96
              #                    store to temp_46_logic_96 in mem offset legal
    sb      s9,24(sp)
              #                    release s9 with temp_46_logic_96
              #                    store to temp_47_cmp_100 in mem offset legal
    sb      s10,23(sp)
              #                    release s10 with temp_47_cmp_100
              #                    store to temp_48_cmp_100 in mem offset legal
    sb      s11,22(sp)
              #                    release s11 with temp_48_cmp_100
              #                    store to temp_62_logic_104 in mem offset legal
    sb      a0,2(sp)
              #                    release a0 with temp_62_logic_104
              #                    store to temp_60__104 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_60__104
              #                    store to temp_61_cmp_104 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_61_cmp_104
              #                    store to i3_33 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with i3_33
              #                    store to i4_33 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with i4_33
              #                    store to temp_35__87 in mem offset legal
    sb      a6,35(sp)
              #                    release a6 with temp_35__87
              #                    store to temp_36__87 in mem offset legal
    sb      a7,34(sp)
              #                    release a7 with temp_36__87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_75_0_0
    li      a0, 75
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_105 
              #                    occupy s11 with _anonymous_of_temp_48_cmp_100_0
              #                    load from temp_48_cmp_100 in mem
    lb      s11,22(sp)
              #                    occupy s3 with _anonymous_of_temp_39__90_0
              #                    load from temp_39__90 in mem
    lb      s3,31(sp)
              #                    occupy s10 with _anonymous_of_temp_47_cmp_100_0
              #                    load from temp_47_cmp_100 in mem
    lb      s10,23(sp)
              #                    occupy s7 with _anonymous_of_temp_44_cmp_96_0
              #                    load from temp_44_cmp_96 in mem
    lb      s7,26(sp)
              #                    occupy a7 with _anonymous_of_temp_36__87_0
              #                    load from temp_36__87 in mem
    lb      a7,34(sp)
              #                    occupy s5 with _anonymous_of_temp_42_cmp_93_0
              #                    load from temp_42_cmp_93 in mem
    lb      s5,28(sp)
              #                    occupy a1 with _anonymous_of_temp_60__104_0
              #                    load from temp_60__104 in mem


    lw      a1,4(sp)
              #                    occupy s8 with _anonymous_of_temp_45_cmp_96_0
              #                    load from temp_45_cmp_96 in mem
    lb      s8,25(sp)
              #                    occupy a0 with _anonymous_of_temp_62_logic_104_0
              #                    load from temp_62_logic_104 in mem
    lb      a0,2(sp)
              #                    occupy s2 with _anonymous_of_temp_38__90_0
              #                    load from temp_38__90 in mem
    lb      s2,32(sp)
              #                    occupy a2 with _anonymous_of_temp_61_cmp_104_0
              #                    load from temp_61_cmp_104 in mem
    lb      a2,3(sp)
              #                    occupy s4 with _anonymous_of_temp_40_logic_90_0
              #                    load from temp_40_logic_90 in mem
    lb      s4,30(sp)
              #                    occupy a6 with _anonymous_of_temp_35__87_0
              #                    load from temp_35__87 in mem
    lb      a6,35(sp)
              #                    occupy s1 with _anonymous_of_temp_37_logic_87_0
              #                    load from temp_37_logic_87 in mem
    lb      s1,33(sp)
              #                    occupy a3 with _anonymous_of_i3_33_0
              #                    load from i3_33 in mem


    lw      a3,40(sp)
              #                    occupy s6 with _anonymous_of_temp_43_logic_93_0
              #                    load from temp_43_logic_93 in mem
    lb      s6,27(sp)
              #                    occupy s9 with _anonymous_of_temp_46_logic_96_0
              #                    load from temp_46_logic_96 in mem
    lb      s9,24(sp)
              #                    occupy a4 with _anonymous_of_i4_33_0
              #                    load from i4_33 in mem


    lw      a4,36(sp)
    j       .branch_false_105
              #                    regtab     a0:Freed { symidx: temp_62_logic_104, tracked: true } |     a1:Freed { symidx: temp_60__104, tracked: true } |     a2:Freed { symidx: temp_61_cmp_104, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s10:Freed { symidx: temp_47_cmp_100, tracked: true } |     s11:Freed { symidx: temp_48_cmp_100, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } |     s5:Freed { symidx: temp_42_cmp_93, tracked: true } |     s6:Freed { symidx: temp_43_logic_93, tracked: true } |     s7:Freed { symidx: temp_44_cmp_96, tracked: true } |     s8:Freed { symidx: temp_45_cmp_96, tracked: true } |     s9:Freed { symidx: temp_46_logic_96, tracked: true } | 
              #                          label branch_false_105: 
.branch_false_105:
              #                    regtab     a0:Freed { symidx: temp_62_logic_104, tracked: true } |     a1:Freed { symidx: temp_60__104, tracked: true } |     a2:Freed { symidx: temp_61_cmp_104, tracked: true } |     a3:Freed { symidx: i3_33, tracked: true } |     a4:Freed { symidx: i4_33, tracked: true } |     a6:Freed { symidx: temp_35__87, tracked: true } |     a7:Freed { symidx: temp_36__87, tracked: true } |     s10:Freed { symidx: temp_47_cmp_100, tracked: true } |     s11:Freed { symidx: temp_48_cmp_100, tracked: true } |     s1:Freed { symidx: temp_37_logic_87, tracked: true } |     s2:Freed { symidx: temp_38__90, tracked: true } |     s3:Freed { symidx: temp_39__90, tracked: true } |     s4:Freed { symidx: temp_40_logic_90, tracked: true } |     s5:Freed { symidx: temp_42_cmp_93, tracked: true } |     s6:Freed { symidx: temp_43_logic_93, tracked: true } |     s7:Freed { symidx: temp_44_cmp_96, tracked: true } |     s8:Freed { symidx: temp_45_cmp_96, tracked: true } |     s9:Freed { symidx: temp_46_logic_96, tracked: true } | 
              #                          label L20_0: 
.L20_0:
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    store to temp_37_logic_87 in mem offset legal
    sb      s1,33(sp)
              #                    release s1 with temp_37_logic_87
              #                    store to temp_38__90 in mem offset legal
    sb      s2,32(sp)
              #                    release s2 with temp_38__90
              #                    store to temp_39__90 in mem offset legal
    sb      s3,31(sp)
              #                    release s3 with temp_39__90
              #                    store to temp_40_logic_90 in mem offset legal
    sb      s4,30(sp)
              #                    release s4 with temp_40_logic_90
              #                    store to temp_42_cmp_93 in mem offset legal
    sb      s5,28(sp)
              #                    release s5 with temp_42_cmp_93
              #                    store to temp_43_logic_93 in mem offset legal
    sb      s6,27(sp)
              #                    release s6 with temp_43_logic_93
              #                    store to temp_44_cmp_96 in mem offset legal
    sb      s7,26(sp)
              #                    release s7 with temp_44_cmp_96
              #                    store to temp_45_cmp_96 in mem offset legal
    sb      s8,25(sp)
              #                    release s8 with temp_45_cmp_96
              #                    store to temp_46_logic_96 in mem offset legal
    sb      s9,24(sp)
              #                    release s9 with temp_46_logic_96
              #                    store to temp_47_cmp_100 in mem offset legal
    sb      s10,23(sp)
              #                    release s10 with temp_47_cmp_100
              #                    store to temp_48_cmp_100 in mem offset legal
    sb      s11,22(sp)
              #                    release s11 with temp_48_cmp_100
              #                    store to temp_62_logic_104 in mem offset legal
    sb      a0,2(sp)
              #                    release a0 with temp_62_logic_104
              #                    store to temp_60__104 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_60__104
              #                    store to temp_61_cmp_104 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_61_cmp_104
              #                    store to i3_33 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with i3_33
              #                    store to i4_33 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with i4_33
              #                    store to temp_35__87 in mem offset legal
    sb      a6,35(sp)
              #                    release a6 with temp_35__87
              #                    store to temp_36__87 in mem offset legal
    sb      a7,34(sp)
              #                    release a7 with temp_36__87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,160(sp)
              #                    load from s0_main_0 in mem
    ld      s0,152(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,168
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl d
              #                          global i32 d_0 
    .type d,@object
d:
    .word 0
    .align 4
    .globl b
              #                          global i32 b_0 
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
              #                          global i32 a_0 
    .type a,@object
a:
    .word 0
