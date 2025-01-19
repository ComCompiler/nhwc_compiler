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
              #                     56   Define testParam8_0 "a0_56_0,a1_56_0,a2_56_0,a3_56_0,a4_56_0,a5_56_0,a6_56_0,a7_56_0," -> testParam8_ret_0 
    .globl testParam8
    .type testParam8,@function
testParam8:
              #                    mem layout:|ra_testParam8:8 at 72|s0_testParam8:8 at 64|a0 _s56 _i0:4 at 60|a1 _s56 _i0:4 at 56|a2 _s56 _i0:4 at 52|a3 _s56 _i0:4 at 48|a4 _s56 _i0:4 at 44|a5 _s56 _i0:4 at 40|a6 _s56 _i0:4 at 36|a7 _s56 _i0:4 at 32|temp_0_arithop _s58 _i0:4 at 28|temp_1_arithop _s58 _i0:4 at 24|temp_2_arithop _s58 _i0:4 at 20|temp_3_arithop _s58 _i0:4 at 16|temp_4_arithop _s58 _i0:4 at 12|temp_5_arithop _s58 _i0:4 at 8|temp_6_arithop _s58 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-80
              #                    store to ra_testParam8_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_testParam8_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                     61   alloc i32 [temp_0_arithop_58] 
              #                     63   alloc i32 [temp_1_arithop_58] 
              #                     65   alloc i32 [temp_2_arithop_58] 
              #                     67   alloc i32 [temp_3_arithop_58] 
              #                     69   alloc i32 [temp_4_arithop_58] 
              #                     71   alloc i32 [temp_5_arithop_58] 
              #                     73   alloc i32 [temp_6_arithop_58] 
              #                    regtab     a0:Freed { symidx: a0_56_0, tracked: true } |     a1:Freed { symidx: a1_56_0, tracked: true } |     a2:Freed { symidx: a2_56_0, tracked: true } |     a3:Freed { symidx: a3_56_0, tracked: true } |     a4:Freed { symidx: a4_56_0, tracked: true } |     a5:Freed { symidx: a5_56_0, tracked: true } |     a6:Freed { symidx: a6_56_0, tracked: true } |     a7:Freed { symidx: a7_56_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     62   temp_0_arithop_58_0 = Add i32 a0_56_0, a1_56_0 
              #                    occupy a0 with a0_56_0
              #                    occupy a1 with a1_56_0
              #                    occupy s1 with temp_0_arithop_58_0
    ADDW    s1,a0,a1
              #                    free a0
              #                    free a1
              #                    free s1
              #                     545  untrack a0_56_0 
              #                    occupy a0 with a0_56_0
              #                    release a0 with a0_56_0
              #                     540  untrack a1_56_0 
              #                    occupy a1 with a1_56_0
              #                    release a1 with a1_56_0
              #                     64   temp_1_arithop_58_0 = Add i32 temp_0_arithop_58_0, a2_56_0 
              #                    occupy s1 with temp_0_arithop_58_0
              #                    occupy a2 with a2_56_0
              #                    occupy a0 with temp_1_arithop_58_0
    ADDW    a0,s1,a2
              #                    free s1
              #                    free a2
              #                    free a0
              #                     539  untrack temp_0_arithop_58_0 
              #                    occupy s1 with temp_0_arithop_58_0
              #                    release s1 with temp_0_arithop_58_0
              #                     537  untrack a2_56_0 
              #                    occupy a2 with a2_56_0
              #                    release a2 with a2_56_0
              #                     66   temp_2_arithop_58_0 = Add i32 temp_1_arithop_58_0, a3_56_0 
              #                    occupy a0 with temp_1_arithop_58_0
              #                    occupy a3 with a3_56_0
              #                    occupy a1 with temp_2_arithop_58_0
    ADDW    a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                     547  untrack a3_56_0 
              #                    occupy a3 with a3_56_0
              #                    release a3 with a3_56_0
              #                     542  untrack temp_1_arithop_58_0 
              #                    occupy a0 with temp_1_arithop_58_0
              #                    release a0 with temp_1_arithop_58_0
              #                     68   temp_3_arithop_58_0 = Add i32 temp_2_arithop_58_0, a4_56_0 
              #                    occupy a1 with temp_2_arithop_58_0
              #                    occupy a4 with a4_56_0
              #                    occupy a0 with temp_3_arithop_58_0
    ADDW    a0,a1,a4
              #                    free a1
              #                    free a4
              #                    free a0
              #                     538  untrack temp_2_arithop_58_0 
              #                    occupy a1 with temp_2_arithop_58_0
              #                    release a1 with temp_2_arithop_58_0
              #                     536  untrack a4_56_0 
              #                    occupy a4 with a4_56_0
              #                    release a4 with a4_56_0
              #                     70   temp_4_arithop_58_0 = Add i32 temp_3_arithop_58_0, a5_56_0 
              #                    occupy a0 with temp_3_arithop_58_0
              #                    occupy a5 with a5_56_0
              #                    occupy a1 with temp_4_arithop_58_0
    ADDW    a1,a0,a5
              #                    free a0
              #                    free a5
              #                    free a1
              #                     543  untrack temp_3_arithop_58_0 
              #                    occupy a0 with temp_3_arithop_58_0
              #                    release a0 with temp_3_arithop_58_0
              #                     541  untrack a5_56_0 
              #                    occupy a5 with a5_56_0
              #                    release a5 with a5_56_0
              #                     72   temp_5_arithop_58_0 = Add i32 temp_4_arithop_58_0, a6_56_0 
              #                    occupy a1 with temp_4_arithop_58_0
              #                    occupy a6 with a6_56_0
              #                    occupy a0 with temp_5_arithop_58_0
    ADDW    a0,a1,a6
              #                    free a1
              #                    free a6
              #                    free a0
              #                     546  untrack temp_4_arithop_58_0 
              #                    occupy a1 with temp_4_arithop_58_0
              #                    release a1 with temp_4_arithop_58_0
              #                     535  untrack a6_56_0 
              #                    occupy a6 with a6_56_0
              #                    release a6 with a6_56_0
              #                     74   temp_6_arithop_58_0 = Add i32 temp_5_arithop_58_0, a7_56_0 
              #                    occupy a0 with temp_5_arithop_58_0
              #                    occupy a7 with a7_56_0
              #                    occupy a1 with temp_6_arithop_58_0
    ADDW    a1,a0,a7
              #                    free a0
              #                    free a7
              #                    free a1
              #                     544  untrack a7_56_0 
              #                    occupy a7 with a7_56_0
              #                    release a7 with a7_56_0
              #                     534  untrack temp_5_arithop_58_0 
              #                    occupy a0 with temp_5_arithop_58_0
              #                    release a0 with temp_5_arithop_58_0
              #                     75   ret temp_6_arithop_58_0 
              #                    load from ra_testParam8_0 in mem
    ld      ra,72(sp)
              #                    load from s0_testParam8_0 in mem
    ld      s0,64(sp)
              #                    occupy a1 with temp_6_arithop_58_0
              #                    store to temp_6_arithop_58_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_6_arithop_58_0
              #                    occupy a0 with temp_6_arithop_58_0
              #                    load from temp_6_arithop_58_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     57   Define testParam16_0 "a0_60_0,a1_60_0,a2_60_0,a3_60_0,a4_60_0,a5_60_0,a6_60_0,a7_60_0,a8_60_0,a9_60_0,a10_60_0,a11_60_0,a12_60_0,a13_60_0,a14_60_0,a15_60_0," -> testParam16_ret_0 
    .globl testParam16
    .type testParam16,@function
testParam16:
              #                    mem layout:|a8 _s60 _i0:4 at 140|a9 _s60 _i0:4 at 136|a10 _s60 _i0:4 at 132|a11 _s60 _i0:4 at 128|a12 _s60 _i0:4 at 124|a13 _s60 _i0:4 at 120|a14 _s60 _i0:4 at 116|a15 _s60 _i0:4 at 112|ra_testParam16:8 at 104|s0_testParam16:8 at 96|a0 _s60 _i0:4 at 92|a1 _s60 _i0:4 at 88|a2 _s60 _i0:4 at 84|a3 _s60 _i0:4 at 80|a4 _s60 _i0:4 at 76|a5 _s60 _i0:4 at 72|a6 _s60 _i0:4 at 68|a7 _s60 _i0:4 at 64|temp_7_arithop _s62 _i0:4 at 60|temp_8_arithop _s62 _i0:4 at 56|temp_9_arithop _s62 _i0:4 at 52|temp_10_arithop _s62 _i0:4 at 48|temp_11_arithop _s62 _i0:4 at 44|temp_12_arithop _s62 _i0:4 at 40|temp_13_arithop _s62 _i0:4 at 36|temp_14_arithop _s62 _i0:4 at 32|temp_15_arithop _s62 _i0:4 at 28|temp_16_arithop _s62 _i0:4 at 24|temp_17_arithop _s62 _i0:4 at 20|temp_18_arithop _s62 _i0:4 at 16|temp_19_arithop _s62 _i0:4 at 12|temp_20_arithop _s62 _i0:4 at 8|temp_21_arithop _s62 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-144
              #                    store to ra_testParam16_0 in mem offset legal
    sd      ra,104(sp)
              #                    store to s0_testParam16_0 in mem offset legal
    sd      s0,96(sp)
    addi    s0,sp,144
              #                     79   alloc i32 [temp_7_arithop_62] 
              #                     81   alloc i32 [temp_8_arithop_62] 
              #                     83   alloc i32 [temp_9_arithop_62] 
              #                     85   alloc i32 [temp_10_arithop_62] 
              #                     87   alloc i32 [temp_11_arithop_62] 
              #                     89   alloc i32 [temp_12_arithop_62] 
              #                     91   alloc i32 [temp_13_arithop_62] 
              #                     93   alloc i32 [temp_14_arithop_62] 
              #                     95   alloc i32 [temp_15_arithop_62] 
              #                     97   alloc i32 [temp_16_arithop_62] 
              #                     99   alloc i32 [temp_17_arithop_62] 
              #                     101  alloc i32 [temp_18_arithop_62] 
              #                     103  alloc i32 [temp_19_arithop_62] 
              #                     105  alloc i32 [temp_20_arithop_62] 
              #                     107  alloc i32 [temp_21_arithop_62] 
              #                    regtab     a0:Freed { symidx: a0_60_0, tracked: true } |     a1:Freed { symidx: a1_60_0, tracked: true } |     a2:Freed { symidx: a2_60_0, tracked: true } |     a3:Freed { symidx: a3_60_0, tracked: true } |     a4:Freed { symidx: a4_60_0, tracked: true } |     a5:Freed { symidx: a5_60_0, tracked: true } |     a6:Freed { symidx: a6_60_0, tracked: true } |     a7:Freed { symidx: a7_60_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     80   temp_7_arithop_62_0 = Add i32 a0_60_0, a1_60_0 
              #                    occupy a0 with a0_60_0
              #                    occupy a1 with a1_60_0
              #                    occupy s1 with temp_7_arithop_62_0
    ADDW    s1,a0,a1
              #                    free a0
              #                    free a1
              #                    free s1
              #                     566  untrack a0_60_0 
              #                    occupy a0 with a0_60_0
              #                    release a0 with a0_60_0
              #                     562  untrack a1_60_0 
              #                    occupy a1 with a1_60_0
              #                    release a1 with a1_60_0
              #                     82   temp_8_arithop_62_0 = Add i32 temp_7_arithop_62_0, a2_60_0 
              #                    occupy s1 with temp_7_arithop_62_0
              #                    occupy a2 with a2_60_0
              #                    occupy a0 with temp_8_arithop_62_0
    ADDW    a0,s1,a2
              #                    free s1
              #                    free a2
              #                    free a0
              #                     558  untrack a2_60_0 
              #                    occupy a2 with a2_60_0
              #                    release a2 with a2_60_0
              #                     557  untrack temp_7_arithop_62_0 
              #                    occupy s1 with temp_7_arithop_62_0
              #                    release s1 with temp_7_arithop_62_0
              #                     84   temp_9_arithop_62_0 = Sub i32 temp_8_arithop_62_0, a3_60_0 
              #                    occupy a0 with temp_8_arithop_62_0
              #                    occupy a3 with a3_60_0
              #                    occupy a1 with temp_9_arithop_62_0
              #                    regtab:    a0:Occupied { symidx: temp_8_arithop_62_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_9_arithop_62_0, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: a3_60_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: a4_60_0, tracked: true } |     a5:Freed { symidx: a5_60_0, tracked: true } |     a6:Freed { symidx: a6_60_0, tracked: true } |     a7:Freed { symidx: a7_60_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24


    subw    a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                     555  untrack a3_60_0 
              #                    occupy a3 with a3_60_0
              #                    release a3 with a3_60_0
              #                     549  untrack temp_8_arithop_62_0 
              #                    occupy a0 with temp_8_arithop_62_0
              #                    release a0 with temp_8_arithop_62_0
              #                     86   temp_10_arithop_62_0 = Sub i32 temp_9_arithop_62_0, a4_60_0 
              #                    occupy a1 with temp_9_arithop_62_0
              #                    occupy a4 with a4_60_0
              #                    occupy a0 with temp_10_arithop_62_0
              #                    regtab:    a0:Occupied { symidx: temp_10_arithop_62_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_9_arithop_62_0, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: a4_60_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: a5_60_0, tracked: true } |     a6:Freed { symidx: a6_60_0, tracked: true } |     a7:Freed { symidx: a7_60_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24


    subw    a0,a1,a4
              #                    free a1
              #                    free a4
              #                    free a0
              #                     568  untrack temp_9_arithop_62_0 
              #                    occupy a1 with temp_9_arithop_62_0
              #                    release a1 with temp_9_arithop_62_0
              #                     559  untrack a4_60_0 
              #                    occupy a4 with a4_60_0
              #                    release a4 with a4_60_0
              #                     88   temp_11_arithop_62_0 = Sub i32 temp_10_arithop_62_0, a5_60_0 
              #                    occupy a0 with temp_10_arithop_62_0
              #                    occupy a5 with a5_60_0
              #                    occupy a1 with temp_11_arithop_62_0
              #                    regtab:    a0:Occupied { symidx: temp_10_arithop_62_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_11_arithop_62_0, tracked: true, occupy_count: 1 } |     a5:Occupied { symidx: a5_60_0, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: a6_60_0, tracked: true } |     a7:Freed { symidx: a7_60_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a0,a5
              #                    free a0
              #                    free a5
              #                    free a1
              #                     576  untrack temp_10_arithop_62_0 
              #                    occupy a0 with temp_10_arithop_62_0
              #                    release a0 with temp_10_arithop_62_0
              #                     571  untrack a5_60_0 
              #                    occupy a5 with a5_60_0
              #                    release a5 with a5_60_0
              #                     90   temp_12_arithop_62_0 = Sub i32 temp_11_arithop_62_0, a6_60_0 
              #                    occupy a1 with temp_11_arithop_62_0
              #                    occupy a6 with a6_60_0
              #                    occupy a0 with temp_12_arithop_62_0
              #                    regtab:    a0:Occupied { symidx: temp_12_arithop_62_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_11_arithop_62_0, tracked: true, occupy_count: 1 } |     a6:Occupied { symidx: a6_60_0, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: a7_60_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24


    subw    a0,a1,a6
              #                    free a1
              #                    free a6
              #                    free a0
              #                     561  untrack a6_60_0 
              #                    occupy a6 with a6_60_0
              #                    release a6 with a6_60_0
              #                     552  untrack temp_11_arithop_62_0 
              #                    occupy a1 with temp_11_arithop_62_0
              #                    release a1 with temp_11_arithop_62_0
              #                     92   temp_13_arithop_62_0 = Sub i32 temp_12_arithop_62_0, a7_60_0 
              #                    occupy a0 with temp_12_arithop_62_0
              #                    occupy a7 with a7_60_0
              #                    occupy a1 with temp_13_arithop_62_0
              #                    regtab:    a0:Occupied { symidx: temp_12_arithop_62_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_13_arithop_62_0, tracked: true, occupy_count: 1 } |     a7:Occupied { symidx: a7_60_0, tracked: true, occupy_count: 1 } |  released_gpr_count:16,released_fpr_count:24


    subw    a1,a0,a7
              #                    free a0
              #                    free a7
              #                    free a1
              #                     575  untrack a7_60_0 
              #                    occupy a7 with a7_60_0
              #                    release a7 with a7_60_0
              #                     569  untrack temp_12_arithop_62_0 
              #                    occupy a0 with temp_12_arithop_62_0
              #                    release a0 with temp_12_arithop_62_0
              #                     94   temp_14_arithop_62_0 = Add i32 temp_13_arithop_62_0, a8_60_0 
              #                    occupy a1 with temp_13_arithop_62_0
              #                    occupy a0 with a8_60_0
              #                    load from a8_60_0 in mem


    lw      a0,140(sp)
              #                    occupy a2 with temp_14_arithop_62_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     573  untrack temp_13_arithop_62_0 
              #                    occupy a1 with temp_13_arithop_62_0
              #                    release a1 with temp_13_arithop_62_0
              #                     563  untrack a8_60_0 
              #                    occupy a0 with a8_60_0
              #                    release a0 with a8_60_0
              #                     96   temp_15_arithop_62_0 = Add i32 temp_14_arithop_62_0, a9_60_0 
              #                    occupy a2 with temp_14_arithop_62_0
              #                    occupy a0 with a9_60_0
              #                    load from a9_60_0 in mem


    lw      a0,136(sp)
              #                    occupy a1 with temp_15_arithop_62_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     574  untrack temp_14_arithop_62_0 
              #                    occupy a2 with temp_14_arithop_62_0
              #                    release a2 with temp_14_arithop_62_0
              #                     556  untrack a9_60_0 
              #                    occupy a0 with a9_60_0
              #                    release a0 with a9_60_0
              #                     98   temp_16_arithop_62_0 = Add i32 temp_15_arithop_62_0, a10_60_0 
              #                    occupy a1 with temp_15_arithop_62_0
              #                    occupy a0 with a10_60_0
              #                    load from a10_60_0 in mem


    lw      a0,132(sp)
              #                    occupy a2 with temp_16_arithop_62_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     553  untrack temp_15_arithop_62_0 
              #                    occupy a1 with temp_15_arithop_62_0
              #                    release a1 with temp_15_arithop_62_0
              #                     551  untrack a10_60_0 
              #                    occupy a0 with a10_60_0
              #                    release a0 with a10_60_0
              #                     100  temp_17_arithop_62_0 = Add i32 temp_16_arithop_62_0, a11_60_0 
              #                    occupy a2 with temp_16_arithop_62_0
              #                    occupy a0 with a11_60_0
              #                    load from a11_60_0 in mem


    lw      a0,128(sp)
              #                    occupy a1 with temp_17_arithop_62_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     570  untrack a11_60_0 
              #                    occupy a0 with a11_60_0
              #                    release a0 with a11_60_0
              #                     564  untrack temp_16_arithop_62_0 
              #                    occupy a2 with temp_16_arithop_62_0
              #                    release a2 with temp_16_arithop_62_0
              #                     102  temp_18_arithop_62_0 = Add i32 temp_17_arithop_62_0, a12_60_0 
              #                    occupy a1 with temp_17_arithop_62_0
              #                    occupy a0 with a12_60_0
              #                    load from a12_60_0 in mem


    lw      a0,124(sp)
              #                    occupy a2 with temp_18_arithop_62_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     572  untrack a12_60_0 
              #                    occupy a0 with a12_60_0
              #                    release a0 with a12_60_0
              #                     550  untrack temp_17_arithop_62_0 
              #                    occupy a1 with temp_17_arithop_62_0
              #                    release a1 with temp_17_arithop_62_0
              #                     104  temp_19_arithop_62_0 = Add i32 temp_18_arithop_62_0, a13_60_0 
              #                    occupy a2 with temp_18_arithop_62_0
              #                    occupy a0 with a13_60_0
              #                    load from a13_60_0 in mem


    lw      a0,120(sp)
              #                    occupy a1 with temp_19_arithop_62_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     577  untrack temp_18_arithop_62_0 
              #                    occupy a2 with temp_18_arithop_62_0
              #                    release a2 with temp_18_arithop_62_0
              #                     567  untrack a13_60_0 
              #                    occupy a0 with a13_60_0
              #                    release a0 with a13_60_0
              #                     106  temp_20_arithop_62_0 = Add i32 temp_19_arithop_62_0, a14_60_0 
              #                    occupy a1 with temp_19_arithop_62_0
              #                    occupy a0 with a14_60_0
              #                    load from a14_60_0 in mem


    lw      a0,116(sp)
              #                    occupy a2 with temp_20_arithop_62_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     560  untrack temp_19_arithop_62_0 
              #                    occupy a1 with temp_19_arithop_62_0
              #                    release a1 with temp_19_arithop_62_0
              #                     548  untrack a14_60_0 
              #                    occupy a0 with a14_60_0
              #                    release a0 with a14_60_0
              #                     108  temp_21_arithop_62_0 = Add i32 temp_20_arithop_62_0, a15_60_0 
              #                    occupy a2 with temp_20_arithop_62_0
              #                    occupy a0 with a15_60_0
              #                    load from a15_60_0 in mem


    lw      a0,112(sp)
              #                    occupy a1 with temp_21_arithop_62_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     565  untrack temp_20_arithop_62_0 
              #                    occupy a2 with temp_20_arithop_62_0
              #                    release a2 with temp_20_arithop_62_0
              #                     554  untrack a15_60_0 
              #                    occupy a0 with a15_60_0
              #                    release a0 with a15_60_0
              #                     109  ret temp_21_arithop_62_0 
              #                    load from ra_testParam16_0 in mem
    ld      ra,104(sp)
              #                    load from s0_testParam16_0 in mem
    ld      s0,96(sp)
              #                    occupy a1 with temp_21_arithop_62_0
              #                    store to temp_21_arithop_62_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_21_arithop_62_0
              #                    occupy a0 with temp_21_arithop_62_0
              #                    load from temp_21_arithop_62_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,144
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     58   Define testParam32_0 "a0_64_0,a1_64_0,a2_64_0,a3_64_0,a4_64_0,a5_64_0,a6_64_0,a7_64_0,a8_64_0,a9_64_0,a10_64_0,a11_64_0,a12_64_0,a13_64_0,a14_64_0,a15_64_0,a16_64_0,a17_64_0,a18_64_0,a19_64_0,a20_64_0,a21_64_0,a22_64_0,a23_64_0,a24_64_0,a25_64_0,a26_64_0,a27_64_0,a28_64_0,a29_64_0,a30_64_0,a31_64_0," -> testParam32_ret_0 
    .globl testParam32
    .type testParam32,@function
testParam32:
              #                    mem layout:|a8 _s64 _i0:4 at 268|a9 _s64 _i0:4 at 264|a10 _s64 _i0:4 at 260|a11 _s64 _i0:4 at 256|a12 _s64 _i0:4 at 252|a13 _s64 _i0:4 at 248|a14 _s64 _i0:4 at 244|a15 _s64 _i0:4 at 240|a16 _s64 _i0:4 at 236|a17 _s64 _i0:4 at 232|a18 _s64 _i0:4 at 228|a19 _s64 _i0:4 at 224|a20 _s64 _i0:4 at 220|a21 _s64 _i0:4 at 216|a22 _s64 _i0:4 at 212|a23 _s64 _i0:4 at 208|a24 _s64 _i0:4 at 204|a25 _s64 _i0:4 at 200|a26 _s64 _i0:4 at 196|a27 _s64 _i0:4 at 192|a28 _s64 _i0:4 at 188|a29 _s64 _i0:4 at 184|a30 _s64 _i0:4 at 180|a31 _s64 _i0:4 at 176|ra_testParam32:8 at 168|s0_testParam32:8 at 160|a0 _s64 _i0:4 at 156|a1 _s64 _i0:4 at 152|a2 _s64 _i0:4 at 148|a3 _s64 _i0:4 at 144|a4 _s64 _i0:4 at 140|a5 _s64 _i0:4 at 136|a6 _s64 _i0:4 at 132|a7 _s64 _i0:4 at 128|temp_22_arithop _s66 _i0:4 at 124|temp_23_arithop _s66 _i0:4 at 120|temp_24_arithop _s66 _i0:4 at 116|temp_25_arithop _s66 _i0:4 at 112|temp_26_arithop _s66 _i0:4 at 108|temp_27_arithop _s66 _i0:4 at 104|temp_28_arithop _s66 _i0:4 at 100|temp_29_arithop _s66 _i0:4 at 96|temp_30_arithop _s66 _i0:4 at 92|temp_31_arithop _s66 _i0:4 at 88|temp_32_arithop _s66 _i0:4 at 84|temp_33_arithop _s66 _i0:4 at 80|temp_34_arithop _s66 _i0:4 at 76|temp_35_arithop _s66 _i0:4 at 72|temp_36_arithop _s66 _i0:4 at 68|temp_37_arithop _s66 _i0:4 at 64|temp_38_arithop _s66 _i0:4 at 60|temp_39_arithop _s66 _i0:4 at 56|temp_40_arithop _s66 _i0:4 at 52|temp_41_arithop _s66 _i0:4 at 48|temp_42_arithop _s66 _i0:4 at 44|temp_43_arithop _s66 _i0:4 at 40|temp_44_arithop _s66 _i0:4 at 36|temp_45_arithop _s66 _i0:4 at 32|temp_46_arithop _s66 _i0:4 at 28|temp_47_arithop _s66 _i0:4 at 24|temp_48_arithop _s66 _i0:4 at 20|temp_49_arithop _s66 _i0:4 at 16|temp_50_arithop _s66 _i0:4 at 12|temp_51_arithop _s66 _i0:4 at 8|temp_52_arithop _s66 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-272
              #                    store to ra_testParam32_0 in mem offset legal
    sd      ra,168(sp)
              #                    store to s0_testParam32_0 in mem offset legal
    sd      s0,160(sp)
    addi    s0,sp,272
              #                     113  alloc i32 [temp_22_arithop_66] 
              #                     115  alloc i32 [temp_23_arithop_66] 
              #                     117  alloc i32 [temp_24_arithop_66] 
              #                     119  alloc i32 [temp_25_arithop_66] 
              #                     121  alloc i32 [temp_26_arithop_66] 
              #                     123  alloc i32 [temp_27_arithop_66] 
              #                     125  alloc i32 [temp_28_arithop_66] 
              #                     127  alloc i32 [temp_29_arithop_66] 
              #                     129  alloc i32 [temp_30_arithop_66] 
              #                     131  alloc i32 [temp_31_arithop_66] 
              #                     133  alloc i32 [temp_32_arithop_66] 
              #                     135  alloc i32 [temp_33_arithop_66] 
              #                     137  alloc i32 [temp_34_arithop_66] 
              #                     139  alloc i32 [temp_35_arithop_66] 
              #                     141  alloc i32 [temp_36_arithop_66] 
              #                     143  alloc i32 [temp_37_arithop_66] 
              #                     145  alloc i32 [temp_38_arithop_66] 
              #                     147  alloc i32 [temp_39_arithop_66] 
              #                     149  alloc i32 [temp_40_arithop_66] 
              #                     151  alloc i32 [temp_41_arithop_66] 
              #                     153  alloc i32 [temp_42_arithop_66] 
              #                     155  alloc i32 [temp_43_arithop_66] 
              #                     157  alloc i32 [temp_44_arithop_66] 
              #                     159  alloc i32 [temp_45_arithop_66] 
              #                     161  alloc i32 [temp_46_arithop_66] 
              #                     163  alloc i32 [temp_47_arithop_66] 
              #                     165  alloc i32 [temp_48_arithop_66] 
              #                     167  alloc i32 [temp_49_arithop_66] 
              #                     169  alloc i32 [temp_50_arithop_66] 
              #                     171  alloc i32 [temp_51_arithop_66] 
              #                     173  alloc i32 [temp_52_arithop_66] 
              #                    regtab     a0:Freed { symidx: a0_64_0, tracked: true } |     a1:Freed { symidx: a1_64_0, tracked: true } |     a2:Freed { symidx: a2_64_0, tracked: true } |     a3:Freed { symidx: a3_64_0, tracked: true } |     a4:Freed { symidx: a4_64_0, tracked: true } |     a5:Freed { symidx: a5_64_0, tracked: true } |     a6:Freed { symidx: a6_64_0, tracked: true } |     a7:Freed { symidx: a7_64_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     114  temp_22_arithop_66_0 = Add i32 a0_64_0, a1_64_0 
              #                    occupy a0 with a0_64_0
              #                    occupy a1 with a1_64_0
              #                    occupy s1 with temp_22_arithop_66_0
    ADDW    s1,a0,a1
              #                    free a0
              #                    free a1
              #                    free s1
              #                     616  untrack a1_64_0 
              #                    occupy a1 with a1_64_0
              #                    release a1 with a1_64_0
              #                     615  untrack a0_64_0 
              #                    occupy a0 with a0_64_0
              #                    release a0 with a0_64_0
              #                     116  temp_23_arithop_66_0 = Add i32 temp_22_arithop_66_0, a2_64_0 
              #                    occupy s1 with temp_22_arithop_66_0
              #                    occupy a2 with a2_64_0
              #                    occupy a0 with temp_23_arithop_66_0
    ADDW    a0,s1,a2
              #                    free s1
              #                    free a2
              #                    free a0
              #                     593  untrack temp_22_arithop_66_0 
              #                    occupy s1 with temp_22_arithop_66_0
              #                    release s1 with temp_22_arithop_66_0
              #                     587  untrack a2_64_0 
              #                    occupy a2 with a2_64_0
              #                    release a2 with a2_64_0
              #                     118  temp_24_arithop_66_0 = Add i32 temp_23_arithop_66_0, a3_64_0 
              #                    occupy a0 with temp_23_arithop_66_0
              #                    occupy a3 with a3_64_0
              #                    occupy a1 with temp_24_arithop_66_0
    ADDW    a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                     632  untrack temp_23_arithop_66_0 
              #                    occupy a0 with temp_23_arithop_66_0
              #                    release a0 with temp_23_arithop_66_0
              #                     596  untrack a3_64_0 
              #                    occupy a3 with a3_64_0
              #                    release a3 with a3_64_0
              #                     120  temp_25_arithop_66_0 = Add i32 temp_24_arithop_66_0, a4_64_0 
              #                    occupy a1 with temp_24_arithop_66_0
              #                    occupy a4 with a4_64_0
              #                    occupy a0 with temp_25_arithop_66_0
    ADDW    a0,a1,a4
              #                    free a1
              #                    free a4
              #                    free a0
              #                     634  untrack temp_24_arithop_66_0 
              #                    occupy a1 with temp_24_arithop_66_0
              #                    release a1 with temp_24_arithop_66_0
              #                     619  untrack a4_64_0 
              #                    occupy a4 with a4_64_0
              #                    release a4 with a4_64_0
              #                     122  temp_26_arithop_66_0 = Add i32 temp_25_arithop_66_0, a5_64_0 
              #                    occupy a0 with temp_25_arithop_66_0
              #                    occupy a5 with a5_64_0
              #                    occupy a1 with temp_26_arithop_66_0
    ADDW    a1,a0,a5
              #                    free a0
              #                    free a5
              #                    free a1
              #                     594  untrack temp_25_arithop_66_0 
              #                    occupy a0 with temp_25_arithop_66_0
              #                    release a0 with temp_25_arithop_66_0
              #                     581  untrack a5_64_0 
              #                    occupy a5 with a5_64_0
              #                    release a5 with a5_64_0
              #                     124  temp_27_arithop_66_0 = Add i32 temp_26_arithop_66_0, a6_64_0 
              #                    occupy a1 with temp_26_arithop_66_0
              #                    occupy a6 with a6_64_0
              #                    occupy a0 with temp_27_arithop_66_0
    ADDW    a0,a1,a6
              #                    free a1
              #                    free a6
              #                    free a0
              #                     626  untrack a6_64_0 
              #                    occupy a6 with a6_64_0
              #                    release a6 with a6_64_0
              #                     625  untrack temp_26_arithop_66_0 
              #                    occupy a1 with temp_26_arithop_66_0
              #                    release a1 with temp_26_arithop_66_0
              #                     126  temp_28_arithop_66_0 = Add i32 temp_27_arithop_66_0, a7_64_0 
              #                    occupy a0 with temp_27_arithop_66_0
              #                    occupy a7 with a7_64_0
              #                    occupy a1 with temp_28_arithop_66_0
    ADDW    a1,a0,a7
              #                    free a0
              #                    free a7
              #                    free a1
              #                     614  untrack a7_64_0 
              #                    occupy a7 with a7_64_0
              #                    release a7 with a7_64_0
              #                     605  untrack temp_27_arithop_66_0 
              #                    occupy a0 with temp_27_arithop_66_0
              #                    release a0 with temp_27_arithop_66_0
              #                     128  temp_29_arithop_66_0 = Add i32 temp_28_arithop_66_0, a8_64_0 
              #                    occupy a1 with temp_28_arithop_66_0
              #                    occupy a0 with a8_64_0
              #                    load from a8_64_0 in mem


    lw      a0,268(sp)
              #                    occupy a2 with temp_29_arithop_66_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     628  untrack temp_28_arithop_66_0 
              #                    occupy a1 with temp_28_arithop_66_0
              #                    release a1 with temp_28_arithop_66_0
              #                     613  untrack a8_64_0 
              #                    occupy a0 with a8_64_0
              #                    release a0 with a8_64_0
              #                     130  temp_30_arithop_66_0 = Add i32 temp_29_arithop_66_0, a9_64_0 
              #                    occupy a2 with temp_29_arithop_66_0
              #                    occupy a0 with a9_64_0
              #                    load from a9_64_0 in mem


    lw      a0,264(sp)
              #                    occupy a1 with temp_30_arithop_66_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     617  untrack temp_29_arithop_66_0 
              #                    occupy a2 with temp_29_arithop_66_0
              #                    release a2 with temp_29_arithop_66_0
              #                     578  untrack a9_64_0 
              #                    occupy a0 with a9_64_0
              #                    release a0 with a9_64_0
              #                     132  temp_31_arithop_66_0 = Add i32 temp_30_arithop_66_0, a10_64_0 
              #                    occupy a1 with temp_30_arithop_66_0
              #                    occupy a0 with a10_64_0
              #                    load from a10_64_0 in mem


    lw      a0,260(sp)
              #                    occupy a2 with temp_31_arithop_66_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     638  untrack temp_30_arithop_66_0 
              #                    occupy a1 with temp_30_arithop_66_0
              #                    release a1 with temp_30_arithop_66_0
              #                     633  untrack a10_64_0 
              #                    occupy a0 with a10_64_0
              #                    release a0 with a10_64_0
              #                     134  temp_32_arithop_66_0 = Add i32 temp_31_arithop_66_0, a11_64_0 
              #                    occupy a2 with temp_31_arithop_66_0
              #                    occupy a0 with a11_64_0
              #                    load from a11_64_0 in mem


    lw      a0,256(sp)
              #                    occupy a1 with temp_32_arithop_66_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     592  untrack temp_31_arithop_66_0 
              #                    occupy a2 with temp_31_arithop_66_0
              #                    release a2 with temp_31_arithop_66_0
              #                     582  untrack a11_64_0 
              #                    occupy a0 with a11_64_0
              #                    release a0 with a11_64_0
              #                     136  temp_33_arithop_66_0 = Add i32 temp_32_arithop_66_0, a12_64_0 
              #                    occupy a1 with temp_32_arithop_66_0
              #                    occupy a0 with a12_64_0
              #                    load from a12_64_0 in mem


    lw      a0,252(sp)
              #                    occupy a2 with temp_33_arithop_66_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     621  untrack a12_64_0 
              #                    occupy a0 with a12_64_0
              #                    release a0 with a12_64_0
              #                     600  untrack temp_32_arithop_66_0 
              #                    occupy a1 with temp_32_arithop_66_0
              #                    release a1 with temp_32_arithop_66_0
              #                     138  temp_34_arithop_66_0 = Add i32 temp_33_arithop_66_0, a13_64_0 
              #                    occupy a2 with temp_33_arithop_66_0
              #                    occupy a0 with a13_64_0
              #                    load from a13_64_0 in mem


    lw      a0,248(sp)
              #                    occupy a1 with temp_34_arithop_66_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     627  untrack a13_64_0 
              #                    occupy a0 with a13_64_0
              #                    release a0 with a13_64_0
              #                     608  untrack temp_33_arithop_66_0 
              #                    occupy a2 with temp_33_arithop_66_0
              #                    release a2 with temp_33_arithop_66_0
              #                     140  temp_35_arithop_66_0 = Add i32 temp_34_arithop_66_0, a14_64_0 
              #                    occupy a1 with temp_34_arithop_66_0
              #                    occupy a0 with a14_64_0
              #                    load from a14_64_0 in mem


    lw      a0,244(sp)
              #                    occupy a2 with temp_35_arithop_66_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     629  untrack temp_34_arithop_66_0 
              #                    occupy a1 with temp_34_arithop_66_0
              #                    release a1 with temp_34_arithop_66_0
              #                     604  untrack a14_64_0 
              #                    occupy a0 with a14_64_0
              #                    release a0 with a14_64_0
              #                     142  temp_36_arithop_66_0 = Add i32 temp_35_arithop_66_0, a15_64_0 
              #                    occupy a2 with temp_35_arithop_66_0
              #                    occupy a0 with a15_64_0
              #                    load from a15_64_0 in mem


    lw      a0,240(sp)
              #                    occupy a1 with temp_36_arithop_66_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     606  untrack temp_35_arithop_66_0 
              #                    occupy a2 with temp_35_arithop_66_0
              #                    release a2 with temp_35_arithop_66_0
              #                     585  untrack a15_64_0 
              #                    occupy a0 with a15_64_0
              #                    release a0 with a15_64_0
              #                     144  temp_37_arithop_66_0 = Add i32 temp_36_arithop_66_0, a16_64_0 
              #                    occupy a1 with temp_36_arithop_66_0
              #                    occupy a0 with a16_64_0
              #                    load from a16_64_0 in mem


    lw      a0,236(sp)
              #                    occupy a2 with temp_37_arithop_66_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     611  untrack temp_36_arithop_66_0 
              #                    occupy a1 with temp_36_arithop_66_0
              #                    release a1 with temp_36_arithop_66_0
              #                     583  untrack a16_64_0 
              #                    occupy a0 with a16_64_0
              #                    release a0 with a16_64_0
              #                     146  temp_38_arithop_66_0 = Add i32 temp_37_arithop_66_0, a17_64_0 
              #                    occupy a2 with temp_37_arithop_66_0
              #                    occupy a0 with a17_64_0
              #                    load from a17_64_0 in mem


    lw      a0,232(sp)
              #                    occupy a1 with temp_38_arithop_66_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     589  untrack temp_37_arithop_66_0 
              #                    occupy a2 with temp_37_arithop_66_0
              #                    release a2 with temp_37_arithop_66_0
              #                     584  untrack a17_64_0 
              #                    occupy a0 with a17_64_0
              #                    release a0 with a17_64_0
              #                     148  temp_39_arithop_66_0 = Sub i32 temp_38_arithop_66_0, a18_64_0 
              #                    occupy a1 with temp_38_arithop_66_0
              #                    occupy a0 with a18_64_0
              #                    load from a18_64_0 in mem


    lw      a0,228(sp)
              #                    occupy a2 with temp_39_arithop_66_0
              #                    regtab:    a0:Occupied { symidx: a18_64_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_38_arithop_66_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_39_arithop_66_0, tracked: true, occupy_count: 1 } |  released_gpr_count:16,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     639  untrack temp_38_arithop_66_0 
              #                    occupy a1 with temp_38_arithop_66_0
              #                    release a1 with temp_38_arithop_66_0
              #                     602  untrack a18_64_0 
              #                    occupy a0 with a18_64_0
              #                    release a0 with a18_64_0
              #                     150  temp_40_arithop_66_0 = Sub i32 temp_39_arithop_66_0, a19_64_0 
              #                    occupy a2 with temp_39_arithop_66_0
              #                    occupy a0 with a19_64_0
              #                    load from a19_64_0 in mem


    lw      a0,224(sp)
              #                    occupy a1 with temp_40_arithop_66_0
              #                    regtab:    a0:Occupied { symidx: a19_64_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_40_arithop_66_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_39_arithop_66_0, tracked: true, occupy_count: 1 } |  released_gpr_count:16,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     586  untrack a19_64_0 
              #                    occupy a0 with a19_64_0
              #                    release a0 with a19_64_0
              #                     580  untrack temp_39_arithop_66_0 
              #                    occupy a2 with temp_39_arithop_66_0
              #                    release a2 with temp_39_arithop_66_0
              #                     152  temp_41_arithop_66_0 = Sub i32 temp_40_arithop_66_0, a20_64_0 
              #                    occupy a1 with temp_40_arithop_66_0
              #                    occupy a0 with a20_64_0
              #                    load from a20_64_0 in mem


    lw      a0,220(sp)
              #                    occupy a2 with temp_41_arithop_66_0
              #                    regtab:    a0:Occupied { symidx: a20_64_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_40_arithop_66_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_41_arithop_66_0, tracked: true, occupy_count: 1 } |  released_gpr_count:16,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     610  untrack temp_40_arithop_66_0 
              #                    occupy a1 with temp_40_arithop_66_0
              #                    release a1 with temp_40_arithop_66_0
              #                     590  untrack a20_64_0 
              #                    occupy a0 with a20_64_0
              #                    release a0 with a20_64_0
              #                     154  temp_42_arithop_66_0 = Sub i32 temp_41_arithop_66_0, a21_64_0 
              #                    occupy a2 with temp_41_arithop_66_0
              #                    occupy a0 with a21_64_0
              #                    load from a21_64_0 in mem


    lw      a0,216(sp)
              #                    occupy a1 with temp_42_arithop_66_0
              #                    regtab:    a0:Occupied { symidx: a21_64_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_42_arithop_66_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_41_arithop_66_0, tracked: true, occupy_count: 1 } |  released_gpr_count:16,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     607  untrack temp_41_arithop_66_0 
              #                    occupy a2 with temp_41_arithop_66_0
              #                    release a2 with temp_41_arithop_66_0
              #                     595  untrack a21_64_0 
              #                    occupy a0 with a21_64_0
              #                    release a0 with a21_64_0
              #                     156  temp_43_arithop_66_0 = Sub i32 temp_42_arithop_66_0, a22_64_0 
              #                    occupy a1 with temp_42_arithop_66_0
              #                    occupy a0 with a22_64_0
              #                    load from a22_64_0 in mem


    lw      a0,212(sp)
              #                    occupy a2 with temp_43_arithop_66_0
              #                    regtab:    a0:Occupied { symidx: a22_64_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_42_arithop_66_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_43_arithop_66_0, tracked: true, occupy_count: 1 } |  released_gpr_count:16,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     623  untrack a22_64_0 
              #                    occupy a0 with a22_64_0
              #                    release a0 with a22_64_0
              #                     618  untrack temp_42_arithop_66_0 
              #                    occupy a1 with temp_42_arithop_66_0
              #                    release a1 with temp_42_arithop_66_0
              #                     158  temp_44_arithop_66_0 = Add i32 temp_43_arithop_66_0, a23_64_0 
              #                    occupy a2 with temp_43_arithop_66_0
              #                    occupy a0 with a23_64_0
              #                    load from a23_64_0 in mem


    lw      a0,208(sp)
              #                    occupy a1 with temp_44_arithop_66_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     637  untrack temp_43_arithop_66_0 
              #                    occupy a2 with temp_43_arithop_66_0
              #                    release a2 with temp_43_arithop_66_0
              #                     588  untrack a23_64_0 
              #                    occupy a0 with a23_64_0
              #                    release a0 with a23_64_0
              #                     160  temp_45_arithop_66_0 = Add i32 temp_44_arithop_66_0, a24_64_0 
              #                    occupy a1 with temp_44_arithop_66_0
              #                    occupy a0 with a24_64_0
              #                    load from a24_64_0 in mem


    lw      a0,204(sp)
              #                    occupy a2 with temp_45_arithop_66_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     631  untrack a24_64_0 
              #                    occupy a0 with a24_64_0
              #                    release a0 with a24_64_0
              #                     622  untrack temp_44_arithop_66_0 
              #                    occupy a1 with temp_44_arithop_66_0
              #                    release a1 with temp_44_arithop_66_0
              #                     162  temp_46_arithop_66_0 = Add i32 temp_45_arithop_66_0, a25_64_0 
              #                    occupy a2 with temp_45_arithop_66_0
              #                    occupy a0 with a25_64_0
              #                    load from a25_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a1 with temp_46_arithop_66_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     598  untrack a25_64_0 
              #                    occupy a0 with a25_64_0
              #                    release a0 with a25_64_0
              #                     597  untrack temp_45_arithop_66_0 
              #                    occupy a2 with temp_45_arithop_66_0
              #                    release a2 with temp_45_arithop_66_0
              #                     164  temp_47_arithop_66_0 = Add i32 temp_46_arithop_66_0, a26_64_0 
              #                    occupy a1 with temp_46_arithop_66_0
              #                    occupy a0 with a26_64_0
              #                    load from a26_64_0 in mem


    lw      a0,196(sp)
              #                    occupy a2 with temp_47_arithop_66_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     636  untrack temp_46_arithop_66_0 
              #                    occupy a1 with temp_46_arithop_66_0
              #                    release a1 with temp_46_arithop_66_0
              #                     630  untrack a26_64_0 
              #                    occupy a0 with a26_64_0
              #                    release a0 with a26_64_0
              #                     166  temp_48_arithop_66_0 = Add i32 temp_47_arithop_66_0, a27_64_0 
              #                    occupy a2 with temp_47_arithop_66_0
              #                    occupy a0 with a27_64_0
              #                    load from a27_64_0 in mem


    lw      a0,192(sp)
              #                    occupy a1 with temp_48_arithop_66_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     601  untrack a27_64_0 
              #                    occupy a0 with a27_64_0
              #                    release a0 with a27_64_0
              #                     579  untrack temp_47_arithop_66_0 
              #                    occupy a2 with temp_47_arithop_66_0
              #                    release a2 with temp_47_arithop_66_0
              #                     168  temp_49_arithop_66_0 = Add i32 temp_48_arithop_66_0, a28_64_0 
              #                    occupy a1 with temp_48_arithop_66_0
              #                    occupy a0 with a28_64_0
              #                    load from a28_64_0 in mem


    lw      a0,188(sp)
              #                    occupy a2 with temp_49_arithop_66_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     609  untrack temp_48_arithop_66_0 
              #                    occupy a1 with temp_48_arithop_66_0
              #                    release a1 with temp_48_arithop_66_0
              #                     591  untrack a28_64_0 
              #                    occupy a0 with a28_64_0
              #                    release a0 with a28_64_0
              #                     170  temp_50_arithop_66_0 = Add i32 temp_49_arithop_66_0, a29_64_0 
              #                    occupy a2 with temp_49_arithop_66_0
              #                    occupy a0 with a29_64_0
              #                    load from a29_64_0 in mem


    lw      a0,184(sp)
              #                    occupy a1 with temp_50_arithop_66_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     612  untrack a29_64_0 
              #                    occupy a0 with a29_64_0
              #                    release a0 with a29_64_0
              #                     599  untrack temp_49_arithop_66_0 
              #                    occupy a2 with temp_49_arithop_66_0
              #                    release a2 with temp_49_arithop_66_0
              #                     172  temp_51_arithop_66_0 = Add i32 temp_50_arithop_66_0, a30_64_0 
              #                    occupy a1 with temp_50_arithop_66_0
              #                    occupy a0 with a30_64_0
              #                    load from a30_64_0 in mem


    lw      a0,180(sp)
              #                    occupy a2 with temp_51_arithop_66_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     624  untrack temp_50_arithop_66_0 
              #                    occupy a1 with temp_50_arithop_66_0
              #                    release a1 with temp_50_arithop_66_0
              #                     603  untrack a30_64_0 
              #                    occupy a0 with a30_64_0
              #                    release a0 with a30_64_0
              #                     174  temp_52_arithop_66_0 = Add i32 temp_51_arithop_66_0, a31_64_0 
              #                    occupy a2 with temp_51_arithop_66_0
              #                    occupy a0 with a31_64_0
              #                    load from a31_64_0 in mem


    lw      a0,176(sp)
              #                    occupy a1 with temp_52_arithop_66_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     635  untrack temp_51_arithop_66_0 
              #                    occupy a2 with temp_51_arithop_66_0
              #                    release a2 with temp_51_arithop_66_0
              #                     620  untrack a31_64_0 
              #                    occupy a0 with a31_64_0
              #                    release a0 with a31_64_0
              #                     175  ret temp_52_arithop_66_0 
              #                    load from ra_testParam32_0 in mem
    ld      ra,168(sp)
              #                    load from s0_testParam32_0 in mem
    ld      s0,160(sp)
              #                    occupy a1 with temp_52_arithop_66_0
              #                    store to temp_52_arithop_66_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_52_arithop_66_0
              #                    occupy a0 with temp_52_arithop_66_0
              #                    load from temp_52_arithop_66_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,272
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     59   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 192|s0_main:8 at 184|temp_53_value_from_ptr _s69 _i0:4 at 180|temp_54_value_from_ptr _s69 _i0:4 at 176|temp_55_value_from_ptr _s69 _i0:4 at 172|temp_56_value_from_ptr _s69 _i0:4 at 168|temp_57_value_from_ptr _s69 _i0:4 at 164|temp_58_value_from_ptr _s69 _i0:4 at 160|temp_59_value_from_ptr _s69 _i0:4 at 156|temp_60_value_from_ptr _s69 _i0:4 at 152|temp_61_ret_of_testParam8 _s69 _i0:4 at 148|temp_62_value_from_ptr _s69 _i0:4 at 144|temp_63_value_from_ptr _s69 _i0:4 at 140|temp_64_value_from_ptr _s69 _i0:4 at 136|temp_65_value_from_ptr _s69 _i0:4 at 132|temp_66_value_from_ptr _s69 _i0:4 at 128|temp_67_value_from_ptr _s69 _i0:4 at 124|temp_68_value_from_ptr _s69 _i0:4 at 120|temp_69_value_from_ptr _s69 _i0:4 at 116|temp_70_value_from_ptr _s69 _i0:4 at 112|temp_71_value_from_ptr _s69 _i0:4 at 108|temp_72_value_from_ptr _s69 _i0:4 at 104|temp_73_value_from_ptr _s69 _i0:4 at 100|temp_74_value_from_ptr _s69 _i0:4 at 96|temp_75_value_from_ptr _s69 _i0:4 at 92|temp_76_value_from_ptr _s69 _i0:4 at 88|temp_77_value_from_ptr _s69 _i0:4 at 84|temp_78_value_from_ptr _s69 _i0:4 at 80|temp_79_ret_of_testParam16 _s69 _i0:4 at 76|temp_80_value_from_ptr _s69 _i0:4 at 72|temp_97_value_from_ptr _s69 _i0:4 at 68|temp_98_value_from_ptr _s69 _i0:4 at 64|temp_99_value_from_ptr _s69 _i0:4 at 60|temp_100_value_from_ptr _s69 _i0:4 at 56|temp_101_value_from_ptr _s69 _i0:4 at 52|temp_102_value_from_ptr _s69 _i0:4 at 48|temp_103_value_from_ptr _s69 _i0:4 at 44|temp_104_value_from_ptr _s69 _i0:4 at 40|temp_105_value_from_ptr _s69 _i0:4 at 36|temp_106_value_from_ptr _s69 _i0:4 at 32|temp_107_value_from_ptr _s69 _i0:4 at 28|temp_108_value_from_ptr _s69 _i0:4 at 24|temp_109_value_from_ptr _s69 _i0:4 at 20|temp_110_value_from_ptr _s69 _i0:4 at 16|temp_111_value_from_ptr _s69 _i0:4 at 12|temp_112_value_from_ptr _s69 _i0:4 at 8|temp_113_ret_of_testParam32 _s69 _i0:4 at 4|temp_114_value_from_ptr _s69 _i0:4 at 0
    addi    sp,sp,-200
              #                    store to ra_main_0 in mem offset legal
    sd      ra,192(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,184(sp)
    addi    s0,sp,200
              #                     454  a3_0_1 = chi a3_0_0:59 
              #                     455  a1_0_1 = chi a1_0_0:59 
              #                     456  a22_0_1 = chi a22_0_0:59 
              #                     457  a13_0_1 = chi a13_0_0:59 
              #                     458  a24_0_1 = chi a24_0_0:59 
              #                     459  a26_0_1 = chi a26_0_0:59 
              #                     460  a39_0_1 = chi a39_0_0:59 
              #                     461  a4_0_1 = chi a4_0_0:59 
              #                     462  a29_0_1 = chi a29_0_0:59 
              #                     463  a10_0_1 = chi a10_0_0:59 
              #                     464  a23_0_1 = chi a23_0_0:59 
              #                     465  a37_0_1 = chi a37_0_0:59 
              #                     466  a15_0_1 = chi a15_0_0:59 
              #                     467  a18_0_1 = chi a18_0_0:59 
              #                     468  a20_0_1 = chi a20_0_0:59 
              #                     469  a33_0_1 = chi a33_0_0:59 
              #                     470  a27_0_1 = chi a27_0_0:59 
              #                     471  a36_0_1 = chi a36_0_0:59 
              #                     472  a12_0_1 = chi a12_0_0:59 
              #                     473  a0_0_1 = chi a0_0_0:59 
              #                     474  a7_0_1 = chi a7_0_0:59 
              #                     475  a8_0_1 = chi a8_0_0:59 
              #                     476  a28_0_1 = chi a28_0_0:59 
              #                     477  a9_0_1 = chi a9_0_0:59 
              #                     478  a31_0_1 = chi a31_0_0:59 
              #                     479  a2_0_1 = chi a2_0_0:59 
              #                     480  a25_0_1 = chi a25_0_0:59 
              #                     481  a30_0_1 = chi a30_0_0:59 
              #                     482  a19_0_1 = chi a19_0_0:59 
              #                     483  a16_0_1 = chi a16_0_0:59 
              #                     484  a34_0_1 = chi a34_0_0:59 
              #                     485  a14_0_1 = chi a14_0_0:59 
              #                     486  a38_0_1 = chi a38_0_0:59 
              #                     487  a11_0_1 = chi a11_0_0:59 
              #                     488  a32_0_1 = chi a32_0_0:59 
              #                     489  a5_0_1 = chi a5_0_0:59 
              #                     490  a35_0_1 = chi a35_0_0:59 
              #                     491  a17_0_1 = chi a17_0_0:59 
              #                     492  a6_0_1 = chi a6_0_0:59 
              #                     493  a21_0_1 = chi a21_0_0:59 
              #                     258  alloc i32 [temp_53_value_from_ptr_69] 
              #                     261  alloc i32 [temp_54_value_from_ptr_69] 
              #                     264  alloc i32 [temp_55_value_from_ptr_69] 
              #                     267  alloc i32 [temp_56_value_from_ptr_69] 
              #                     270  alloc i32 [temp_57_value_from_ptr_69] 
              #                     273  alloc i32 [temp_58_value_from_ptr_69] 
              #                     276  alloc i32 [temp_59_value_from_ptr_69] 
              #                     279  alloc i32 [temp_60_value_from_ptr_69] 
              #                     282  alloc i32 [temp_61_ret_of_testParam8_69] 
              #                     286  alloc i32 [temp_62_value_from_ptr_69] 
              #                     290  alloc i32 [temp_63_value_from_ptr_69] 
              #                     293  alloc i32 [temp_64_value_from_ptr_69] 
              #                     296  alloc i32 [temp_65_value_from_ptr_69] 
              #                     299  alloc i32 [temp_66_value_from_ptr_69] 
              #                     302  alloc i32 [temp_67_value_from_ptr_69] 
              #                     305  alloc i32 [temp_68_value_from_ptr_69] 
              #                     308  alloc i32 [temp_69_value_from_ptr_69] 
              #                     311  alloc i32 [temp_70_value_from_ptr_69] 
              #                     314  alloc i32 [temp_71_value_from_ptr_69] 
              #                     317  alloc i32 [temp_72_value_from_ptr_69] 
              #                     320  alloc i32 [temp_73_value_from_ptr_69] 
              #                     323  alloc i32 [temp_74_value_from_ptr_69] 
              #                     326  alloc i32 [temp_75_value_from_ptr_69] 
              #                     329  alloc i32 [temp_76_value_from_ptr_69] 
              #                     332  alloc i32 [temp_77_value_from_ptr_69] 
              #                     335  alloc i32 [temp_78_value_from_ptr_69] 
              #                     338  alloc i32 [temp_79_ret_of_testParam16_69] 
              #                     342  alloc i32 [temp_80_value_from_ptr_69] 
              #                     346  alloc i32 [temp_81_value_from_ptr_69] 
              #                     349  alloc i32 [temp_82_value_from_ptr_69] 
              #                     352  alloc i32 [temp_83_value_from_ptr_69] 
              #                     355  alloc i32 [temp_84_value_from_ptr_69] 
              #                     358  alloc i32 [temp_85_value_from_ptr_69] 
              #                     361  alloc i32 [temp_86_value_from_ptr_69] 
              #                     364  alloc i32 [temp_87_value_from_ptr_69] 
              #                     367  alloc i32 [temp_88_value_from_ptr_69] 
              #                     370  alloc i32 [temp_89_value_from_ptr_69] 
              #                     373  alloc i32 [temp_90_value_from_ptr_69] 
              #                     376  alloc i32 [temp_91_value_from_ptr_69] 
              #                     379  alloc i32 [temp_92_value_from_ptr_69] 
              #                     382  alloc i32 [temp_93_value_from_ptr_69] 
              #                     385  alloc i32 [temp_94_value_from_ptr_69] 
              #                     388  alloc i32 [temp_95_value_from_ptr_69] 
              #                     391  alloc i32 [temp_96_value_from_ptr_69] 
              #                     394  alloc i32 [temp_97_value_from_ptr_69] 
              #                     397  alloc i32 [temp_98_value_from_ptr_69] 
              #                     400  alloc i32 [temp_99_value_from_ptr_69] 
              #                     403  alloc i32 [temp_100_value_from_ptr_69] 
              #                     406  alloc i32 [temp_101_value_from_ptr_69] 
              #                     409  alloc i32 [temp_102_value_from_ptr_69] 
              #                     412  alloc i32 [temp_103_value_from_ptr_69] 
              #                     415  alloc i32 [temp_104_value_from_ptr_69] 
              #                     418  alloc i32 [temp_105_value_from_ptr_69] 
              #                     421  alloc i32 [temp_106_value_from_ptr_69] 
              #                     424  alloc i32 [temp_107_value_from_ptr_69] 
              #                     427  alloc i32 [temp_108_value_from_ptr_69] 
              #                     430  alloc i32 [temp_109_value_from_ptr_69] 
              #                     433  alloc i32 [temp_110_value_from_ptr_69] 
              #                     436  alloc i32 [temp_111_value_from_ptr_69] 
              #                     439  alloc i32 [temp_112_value_from_ptr_69] 
              #                     442  alloc i32 [temp_113_ret_of_testParam32_69] 
              #                     446  alloc i32 [temp_114_value_from_ptr_69] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     178  store 0_0:i32 *a0_0:ptr->i32 
              #                    occupy a0 with *a0_0
              #                       load label a0 as ptr to reg
    la      a0, a0
              #                    occupy reg a0 with *a0_0
              #                    occupy a1 with 0_0
    li      a1, 0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     179  a0_0_2 = chi a0_0_1:178 
              #                     180  store 1_0:i32 *a1_0:ptr->i32 
              #                    occupy a2 with *a1_0
              #                       load label a1 as ptr to reg
    la      a2, a1
              #                    occupy reg a2 with *a1_0
              #                    occupy a3 with 1_0
    li      a3, 1
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     181  a1_0_2 = chi a1_0_1:180 
              #                     182  store 2_0:i32 *a2_0:ptr->i32 
              #                    occupy a4 with *a2_0
              #                       load label a2 as ptr to reg
    la      a4, a2
              #                    occupy reg a4 with *a2_0
              #                    occupy a5 with 2_0
    li      a5, 2
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     183  a2_0_2 = chi a2_0_1:182 
              #                     184  store 3_0:i32 *a3_0:ptr->i32 
              #                    occupy a6 with *a3_0
              #                       load label a3 as ptr to reg
    la      a6, a3
              #                    occupy reg a6 with *a3_0
              #                    occupy a7 with 3_0
    li      a7, 3
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                     185  a3_0_2 = chi a3_0_1:184 
              #                     186  store 4_0:i32 *a4_0:ptr->i32 
              #                    occupy s1 with *a4_0
              #                       load label a4 as ptr to reg
    la      s1, a4
              #                    occupy reg s1 with *a4_0
              #                    occupy s2 with 4_0
    li      s2, 4
    sw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                     187  a4_0_2 = chi a4_0_1:186 
              #                     188  store 5_0:i32 *a5_0:ptr->i32 
              #                    occupy s3 with *a5_0
              #                       load label a5 as ptr to reg
    la      s3, a5
              #                    occupy reg s3 with *a5_0
              #                    occupy s4 with 5_0
    li      s4, 5
    sw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                     189  a5_0_2 = chi a5_0_1:188 
              #                     190  store 6_0:i32 *a6_0:ptr->i32 
              #                    occupy s5 with *a6_0
              #                       load label a6 as ptr to reg
    la      s5, a6
              #                    occupy reg s5 with *a6_0
              #                    occupy s6 with 6_0
    li      s6, 6
    sw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                     191  a6_0_2 = chi a6_0_1:190 
              #                     192  store 7_0:i32 *a7_0:ptr->i32 
              #                    occupy s7 with *a7_0
              #                       load label a7 as ptr to reg
    la      s7, a7
              #                    occupy reg s7 with *a7_0
              #                    occupy s8 with 7_0
    li      s8, 7
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                     193  a7_0_2 = chi a7_0_1:192 
              #                     194  store 8_0:i32 *a8_0:ptr->i32 
              #                    occupy s7 with *a8_0
              #                       load label a8 as ptr to reg
    la      s7, a8
              #                    occupy reg s7 with *a8_0
              #                    occupy s8 with 8_0
    li      s8, 8
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                     195  a8_0_2 = chi a8_0_1:194 
              #                     196  store 9_0:i32 *a9_0:ptr->i32 
              #                    occupy s7 with *a9_0
              #                       load label a9 as ptr to reg
    la      s7, a9
              #                    occupy reg s7 with *a9_0
              #                    occupy s8 with 9_0
    li      s8, 9
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                     197  a9_0_2 = chi a9_0_1:196 
              #                     198  store 0_0:i32 *a10_0:ptr->i32 
              #                    occupy s7 with *a10_0
              #                       load label a10 as ptr to reg
    la      s7, a10
              #                    occupy reg s7 with *a10_0
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
    sw      a1,0(s7)
              #                    free a1
              #                    free s7
              #                     199  a10_0_2 = chi a10_0_1:198 
              #                     200  store 1_0:i32 *a11_0:ptr->i32 
              #                    occupy a1 with *a11_0
              #                       load label a11 as ptr to reg
    la      a1, a11
              #                    occupy reg a1 with *a11_0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     201  a11_0_2 = chi a11_0_1:200 
              #                     202  store 2_0:i32 *a12_0:ptr->i32 
              #                    occupy a3 with *a12_0
              #                       load label a12 as ptr to reg
    la      a3, a12
              #                    occupy reg a3 with *a12_0
              #                    found literal reg Some(a5) already exist with 2_0
              #                    occupy a5 with 2_0
    sw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     203  a12_0_2 = chi a12_0_1:202 
              #                     204  store 3_0:i32 *a13_0:ptr->i32 
              #                    occupy a5 with *a13_0
              #                       load label a13 as ptr to reg
    la      a5, a13
              #                    occupy reg a5 with *a13_0
              #                    found literal reg Some(a7) already exist with 3_0
              #                    occupy a7 with 3_0
    sw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                     205  a13_0_2 = chi a13_0_1:204 
              #                     206  store 4_0:i32 *a14_0:ptr->i32 
              #                    occupy a7 with *a14_0
              #                       load label a14 as ptr to reg
    la      a7, a14
              #                    occupy reg a7 with *a14_0
              #                    found literal reg Some(s2) already exist with 4_0
              #                    occupy s2 with 4_0
    sw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                     207  a14_0_2 = chi a14_0_1:206 
              #                     208  store 5_0:i32 *a15_0:ptr->i32 
              #                    occupy s2 with *a15_0
              #                       load label a15 as ptr to reg
    la      s2, a15
              #                    occupy reg s2 with *a15_0
              #                    found literal reg Some(s4) already exist with 5_0
              #                    occupy s4 with 5_0
    sw      s4,0(s2)
              #                    free s4
              #                    free s2
              #                     209  a15_0_2 = chi a15_0_1:208 
              #                     210  store 6_0:i32 *a16_0:ptr->i32 
              #                    occupy s4 with *a16_0
              #                       load label a16 as ptr to reg
    la      s4, a16
              #                    occupy reg s4 with *a16_0
              #                    found literal reg Some(s6) already exist with 6_0
              #                    occupy s6 with 6_0
    sw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                     211  a16_0_2 = chi a16_0_1:210 
              #                     212  store 7_0:i32 *a17_0:ptr->i32 
              #                    occupy s6 with *a17_0
              #                       load label a17 as ptr to reg
    la      s6, a17
              #                    occupy reg s6 with *a17_0
              #                    occupy s8 with 7_0
    li      s8, 7
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     213  a17_0_2 = chi a17_0_1:212 
              #                     214  store 8_0:i32 *a18_0:ptr->i32 
              #                    occupy s6 with *a18_0
              #                       load label a18 as ptr to reg
    la      s6, a18
              #                    occupy reg s6 with *a18_0
              #                    occupy s8 with 8_0
    li      s8, 8
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     215  a18_0_2 = chi a18_0_1:214 
              #                     216  store 9_0:i32 *a19_0:ptr->i32 
              #                    occupy s6 with *a19_0
              #                       load label a19 as ptr to reg
    la      s6, a19
              #                    occupy reg s6 with *a19_0
              #                    occupy s8 with 9_0
    li      s8, 9
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     217  a19_0_2 = chi a19_0_1:216 
              #                     218  store 0_0:i32 *a20_0:ptr->i32 
              #                    occupy s6 with *a20_0
              #                       load label a20 as ptr to reg
    la      s6, a20
              #                    occupy reg s6 with *a20_0
              #                    occupy s8 with 0_0
    li      s8, 0
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     219  a20_0_2 = chi a20_0_1:218 
              #                     220  store 1_0:i32 *a21_0:ptr->i32 
              #                    occupy s6 with *a21_0
              #                       load label a21 as ptr to reg
    la      s6, a21
              #                    occupy reg s6 with *a21_0
              #                    occupy s8 with 1_0
    li      s8, 1
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     221  a21_0_2 = chi a21_0_1:220 
              #                     222  store 2_0:i32 *a22_0:ptr->i32 
              #                    occupy s6 with *a22_0
              #                       load label a22 as ptr to reg
    la      s6, a22
              #                    occupy reg s6 with *a22_0
              #                    occupy s8 with 2_0
    li      s8, 2
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     223  a22_0_2 = chi a22_0_1:222 
              #                     224  store 3_0:i32 *a23_0:ptr->i32 
              #                    occupy s6 with *a23_0
              #                       load label a23 as ptr to reg
    la      s6, a23
              #                    occupy reg s6 with *a23_0
              #                    occupy s8 with 3_0
    li      s8, 3
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     225  a23_0_2 = chi a23_0_1:224 
              #                     226  store 4_0:i32 *a24_0:ptr->i32 
              #                    occupy s6 with *a24_0
              #                       load label a24 as ptr to reg
    la      s6, a24
              #                    occupy reg s6 with *a24_0
              #                    occupy s8 with 4_0
    li      s8, 4
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     227  a24_0_2 = chi a24_0_1:226 
              #                     228  store 5_0:i32 *a25_0:ptr->i32 
              #                    occupy s6 with *a25_0
              #                       load label a25 as ptr to reg
    la      s6, a25
              #                    occupy reg s6 with *a25_0
              #                    occupy s8 with 5_0
    li      s8, 5
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     229  a25_0_2 = chi a25_0_1:228 
              #                     230  store 6_0:i32 *a26_0:ptr->i32 
              #                    occupy s6 with *a26_0
              #                       load label a26 as ptr to reg
    la      s6, a26
              #                    occupy reg s6 with *a26_0
              #                    occupy s8 with 6_0
    li      s8, 6
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     231  a26_0_2 = chi a26_0_1:230 
              #                     232  store 7_0:i32 *a27_0:ptr->i32 
              #                    occupy s6 with *a27_0
              #                       load label a27 as ptr to reg
    la      s6, a27
              #                    occupy reg s6 with *a27_0
              #                    occupy s8 with 7_0
    li      s8, 7
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     233  a27_0_2 = chi a27_0_1:232 
              #                     234  store 8_0:i32 *a28_0:ptr->i32 
              #                    occupy s6 with *a28_0
              #                       load label a28 as ptr to reg
    la      s6, a28
              #                    occupy reg s6 with *a28_0
              #                    occupy s8 with 8_0
    li      s8, 8
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     235  a28_0_2 = chi a28_0_1:234 
              #                     236  store 9_0:i32 *a29_0:ptr->i32 
              #                    occupy s6 with *a29_0
              #                       load label a29 as ptr to reg
    la      s6, a29
              #                    occupy reg s6 with *a29_0
              #                    occupy s8 with 9_0
    li      s8, 9
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     237  a29_0_2 = chi a29_0_1:236 
              #                     238  store 0_0:i32 *a30_0:ptr->i32 
              #                    occupy s6 with *a30_0
              #                       load label a30 as ptr to reg
    la      s6, a30
              #                    occupy reg s6 with *a30_0
              #                    occupy s8 with 0_0
    li      s8, 0
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     239  a30_0_2 = chi a30_0_1:238 
              #                     240  store 1_0:i32 *a31_0:ptr->i32 
              #                    occupy s6 with *a31_0
              #                       load label a31 as ptr to reg
    la      s6, a31
              #                    occupy reg s6 with *a31_0
              #                    occupy s8 with 1_0
    li      s8, 1
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     241  a31_0_2 = chi a31_0_1:240 
              #                     242  store 4_0:i32 *a32_0:ptr->i32 
              #                    occupy s6 with *a32_0
              #                       load label a32 as ptr to reg
    la      s6, a32
              #                    occupy reg s6 with *a32_0
              #                    occupy s8 with 4_0
    li      s8, 4
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     243  a32_0_2 = chi a32_0_1:242 
              #                     244  store 5_0:i32 *a33_0:ptr->i32 
              #                    occupy s6 with *a33_0
              #                       load label a33 as ptr to reg
    la      s6, a33
              #                    occupy reg s6 with *a33_0
              #                    occupy s8 with 5_0
    li      s8, 5
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     245  a33_0_2 = chi a33_0_1:244 
              #                     246  store 6_0:i32 *a34_0:ptr->i32 
              #                    occupy s6 with *a34_0
              #                       load label a34 as ptr to reg
    la      s6, a34
              #                    occupy reg s6 with *a34_0
              #                    occupy s8 with 6_0
    li      s8, 6
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     247  a34_0_2 = chi a34_0_1:246 
              #                     248  store 7_0:i32 *a35_0:ptr->i32 
              #                    occupy s6 with *a35_0
              #                       load label a35 as ptr to reg
    la      s6, a35
              #                    occupy reg s6 with *a35_0
              #                    occupy s8 with 7_0
    li      s8, 7
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     249  a35_0_2 = chi a35_0_1:248 
              #                     250  store 8_0:i32 *a36_0:ptr->i32 
              #                    occupy s6 with *a36_0
              #                       load label a36 as ptr to reg
    la      s6, a36
              #                    occupy reg s6 with *a36_0
              #                    occupy s8 with 8_0
    li      s8, 8
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     251  a36_0_2 = chi a36_0_1:250 
              #                     252  store 9_0:i32 *a37_0:ptr->i32 
              #                    occupy s6 with *a37_0
              #                       load label a37 as ptr to reg
    la      s6, a37
              #                    occupy reg s6 with *a37_0
              #                    occupy s8 with 9_0
    li      s8, 9
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     253  a37_0_2 = chi a37_0_1:252 
              #                     254  store 0_0:i32 *a38_0:ptr->i32 
              #                    occupy s6 with *a38_0
              #                       load label a38 as ptr to reg
    la      s6, a38
              #                    occupy reg s6 with *a38_0
              #                    occupy s8 with 0_0
    li      s8, 0
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     255  a38_0_2 = chi a38_0_1:254 
              #                     256  store 1_0:i32 *a39_0:ptr->i32 
              #                    occupy s6 with *a39_0
              #                       load label a39 as ptr to reg
    la      s6, a39
              #                    occupy reg s6 with *a39_0
              #                    occupy s8 with 1_0
    li      s8, 1
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                     257  a39_0_2 = chi a39_0_1:256 
              #                     259  temp_53_value_from_ptr_69_0 = load *a0_0:ptr->i32 
              #                    occupy s6 with *a0_0
              #                       load label a0 as ptr to reg
    la      s6, a0
              #                    occupy reg s6 with *a0_0
              #                    occupy s8 with temp_53_value_from_ptr_69_0
    lw      s8,0(s6)
              #                    free s8
              #                    occupy s8 with temp_53_value_from_ptr_69_0
              #                    store to temp_53_value_from_ptr_69_0 in mem offset legal
    sw      s8,180(sp)
              #                    release s8 with temp_53_value_from_ptr_69_0
              #                    free s6
              #                     260  mu a0_0_2:259 
              #                     262  temp_54_value_from_ptr_69_0 = load *a1_0:ptr->i32 
              #                    occupy s6 with *a1_0
              #                       load label a1 as ptr to reg
    la      s6, a1
              #                    occupy reg s6 with *a1_0
              #                    occupy s8 with temp_54_value_from_ptr_69_0
    lw      s8,0(s6)
              #                    free s8
              #                    occupy s8 with temp_54_value_from_ptr_69_0
              #                    store to temp_54_value_from_ptr_69_0 in mem offset legal
    sw      s8,176(sp)
              #                    release s8 with temp_54_value_from_ptr_69_0
              #                    free s6
              #                     263  mu a1_0_2:262 
              #                     265  temp_55_value_from_ptr_69_0 = load *a2_0:ptr->i32 
              #                    occupy s6 with *a2_0
              #                       load label a2 as ptr to reg
    la      s6, a2
              #                    occupy reg s6 with *a2_0
              #                    occupy s8 with temp_55_value_from_ptr_69_0
    lw      s8,0(s6)
              #                    free s8
              #                    occupy s8 with temp_55_value_from_ptr_69_0
              #                    store to temp_55_value_from_ptr_69_0 in mem offset legal
    sw      s8,172(sp)
              #                    release s8 with temp_55_value_from_ptr_69_0
              #                    free s6
              #                     266  mu a2_0_2:265 
              #                     268  temp_56_value_from_ptr_69_0 = load *a3_0:ptr->i32 
              #                    occupy s6 with *a3_0
              #                       load label a3 as ptr to reg
    la      s6, a3
              #                    occupy reg s6 with *a3_0
              #                    occupy s8 with temp_56_value_from_ptr_69_0
    lw      s8,0(s6)
              #                    free s8
              #                    occupy s8 with temp_56_value_from_ptr_69_0
              #                    store to temp_56_value_from_ptr_69_0 in mem offset legal
    sw      s8,168(sp)
              #                    release s8 with temp_56_value_from_ptr_69_0
              #                    free s6
              #                     269  mu a3_0_2:268 
              #                     271  temp_57_value_from_ptr_69_0 = load *a4_0:ptr->i32 
              #                    occupy s6 with *a4_0
              #                       load label a4 as ptr to reg
    la      s6, a4
              #                    occupy reg s6 with *a4_0
              #                    occupy s8 with temp_57_value_from_ptr_69_0
    lw      s8,0(s6)
              #                    free s8
              #                    occupy s8 with temp_57_value_from_ptr_69_0
              #                    store to temp_57_value_from_ptr_69_0 in mem offset legal
    sw      s8,164(sp)
              #                    release s8 with temp_57_value_from_ptr_69_0
              #                    free s6
              #                     272  mu a4_0_2:271 
              #                     274  temp_58_value_from_ptr_69_0 = load *a5_0:ptr->i32 
              #                    occupy s6 with *a5_0
              #                       load label a5 as ptr to reg
    la      s6, a5
              #                    occupy reg s6 with *a5_0
              #                    occupy s8 with temp_58_value_from_ptr_69_0
    lw      s8,0(s6)
              #                    free s8
              #                    occupy s8 with temp_58_value_from_ptr_69_0
              #                    store to temp_58_value_from_ptr_69_0 in mem offset legal
    sw      s8,160(sp)
              #                    release s8 with temp_58_value_from_ptr_69_0
              #                    free s6
              #                     275  mu a5_0_2:274 
              #                     277  temp_59_value_from_ptr_69_0 = load *a6_0:ptr->i32 
              #                    occupy s6 with *a6_0
              #                       load label a6 as ptr to reg
    la      s6, a6
              #                    occupy reg s6 with *a6_0
              #                    occupy s8 with temp_59_value_from_ptr_69_0
    lw      s8,0(s6)
              #                    free s8
              #                    occupy s8 with temp_59_value_from_ptr_69_0
              #                    store to temp_59_value_from_ptr_69_0 in mem offset legal
    sw      s8,156(sp)
              #                    release s8 with temp_59_value_from_ptr_69_0
              #                    free s6
              #                     278  mu a6_0_2:277 
              #                     280  temp_60_value_from_ptr_69_0 = load *a7_0:ptr->i32 
              #                    occupy s6 with *a7_0
              #                       load label a7 as ptr to reg
    la      s6, a7
              #                    occupy reg s6 with *a7_0
              #                    occupy s8 with temp_60_value_from_ptr_69_0
    lw      s8,0(s6)
              #                    free s8
              #                    occupy s8 with temp_60_value_from_ptr_69_0
              #                    store to temp_60_value_from_ptr_69_0 in mem offset legal
    sw      s8,152(sp)
              #                    release s8 with temp_60_value_from_ptr_69_0
              #                    free s6
              #                     281  mu a7_0_2:280 
              #                     283  temp_61_ret_of_testParam8_69_0 =  Call i32 testParam8_0(temp_53_value_from_ptr_69_0, temp_54_value_from_ptr_69_0, temp_55_value_from_ptr_69_0, temp_56_value_from_ptr_69_0, temp_57_value_from_ptr_69_0, temp_58_value_from_ptr_69_0, temp_59_value_from_ptr_69_0, temp_60_value_from_ptr_69_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_53_value_from_ptr_69_0_0
              #                    load from temp_53_value_from_ptr_69_0 in mem


    lw      a0,180(sp)
              #                    occupy a1 with _anonymous_of_temp_54_value_from_ptr_69_0_0
              #                    load from temp_54_value_from_ptr_69_0 in mem


    lw      a1,176(sp)
              #                    occupy a2 with _anonymous_of_temp_55_value_from_ptr_69_0_0
              #                    load from temp_55_value_from_ptr_69_0 in mem


    lw      a2,172(sp)
              #                    occupy a3 with _anonymous_of_temp_56_value_from_ptr_69_0_0
              #                    load from temp_56_value_from_ptr_69_0 in mem


    lw      a3,168(sp)
              #                    occupy a4 with _anonymous_of_temp_57_value_from_ptr_69_0_0
              #                    load from temp_57_value_from_ptr_69_0 in mem


    lw      a4,164(sp)
              #                    occupy a5 with _anonymous_of_temp_58_value_from_ptr_69_0_0
              #                    load from temp_58_value_from_ptr_69_0 in mem


    lw      a5,160(sp)
              #                    occupy a6 with _anonymous_of_temp_59_value_from_ptr_69_0_0
              #                    load from temp_59_value_from_ptr_69_0 in mem


    lw      a6,156(sp)
              #                    occupy a7 with _anonymous_of_temp_60_value_from_ptr_69_0_0
              #                    load from temp_60_value_from_ptr_69_0 in mem


    lw      a7,152(sp)
              #                    arg load ended


    call    testParam8
              #                     673  untrack temp_53_value_from_ptr_69_0 
              #                     284  store temp_61_ret_of_testParam8_69_0:i32 *a0_0:ptr->i32 
              #                    occupy a1 with *a0_0
              #                       load label a0 as ptr to reg
    la      a1, a0
              #                    occupy reg a1 with *a0_0
              #                    occupy a0 with temp_61_ret_of_testParam8_69_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     660  untrack temp_61_ret_of_testParam8_69_0 
              #                    occupy a0 with temp_61_ret_of_testParam8_69_0
              #                    release a0 with temp_61_ret_of_testParam8_69_0
              #                     285  a0_0_3 = chi a0_0_2:284 
              #                     287  temp_62_value_from_ptr_69_0 = load *a0_0:ptr->i32 
              #                    occupy a0 with *a0_0
              #                       load label a0 as ptr to reg
    la      a0, a0
              #                    occupy reg a0 with *a0_0
              #                    occupy a2 with temp_62_value_from_ptr_69_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     288  mu a0_0_3:287 
              #                     289   Call void putint_0(temp_62_value_from_ptr_69_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_62_value_from_ptr_69_0
              #                    store to temp_62_value_from_ptr_69_0 in mem offset legal
    sw      a2,144(sp)
              #                    release a2 with temp_62_value_from_ptr_69_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_62_value_from_ptr_69_0_0
              #                    load from temp_62_value_from_ptr_69_0 in mem


    lw      a0,144(sp)
              #                    arg load ended


    call    putint
              #                     658  untrack temp_62_value_from_ptr_69_0 
              #                     291  temp_63_value_from_ptr_69_0 = load *a32_0:ptr->i32 
              #                    occupy a0 with *a32_0
              #                       load label a32 as ptr to reg
    la      a0, a32
              #                    occupy reg a0 with *a32_0
              #                    occupy a1 with temp_63_value_from_ptr_69_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     292  mu a32_0_2:291 
              #                     294  temp_64_value_from_ptr_69_0 = load *a33_0:ptr->i32 
              #                    occupy a2 with *a33_0
              #                       load label a33 as ptr to reg
    la      a2, a33
              #                    occupy reg a2 with *a33_0
              #                    occupy a3 with temp_64_value_from_ptr_69_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     295  mu a33_0_2:294 
              #                     297  temp_65_value_from_ptr_69_0 = load *a34_0:ptr->i32 
              #                    occupy a4 with *a34_0
              #                       load label a34 as ptr to reg
    la      a4, a34
              #                    occupy reg a4 with *a34_0
              #                    occupy a5 with temp_65_value_from_ptr_69_0
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     298  mu a34_0_2:297 
              #                     300  temp_66_value_from_ptr_69_0 = load *a35_0:ptr->i32 
              #                    occupy a6 with *a35_0
              #                       load label a35 as ptr to reg
    la      a6, a35
              #                    occupy reg a6 with *a35_0
              #                    occupy a7 with temp_66_value_from_ptr_69_0
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                     301  mu a35_0_2:300 
              #                     303  temp_67_value_from_ptr_69_0 = load *a36_0:ptr->i32 
              #                    occupy s1 with *a36_0
              #                       load label a36 as ptr to reg
    la      s1, a36
              #                    occupy reg s1 with *a36_0
              #                    occupy s2 with temp_67_value_from_ptr_69_0
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                     304  mu a36_0_2:303 
              #                     306  temp_68_value_from_ptr_69_0 = load *a37_0:ptr->i32 
              #                    occupy s3 with *a37_0
              #                       load label a37 as ptr to reg
    la      s3, a37
              #                    occupy reg s3 with *a37_0
              #                    occupy s4 with temp_68_value_from_ptr_69_0
    lw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                     307  mu a37_0_2:306 
              #                     309  temp_69_value_from_ptr_69_0 = load *a38_0:ptr->i32 
              #                    occupy s5 with *a38_0
              #                       load label a38 as ptr to reg
    la      s5, a38
              #                    occupy reg s5 with *a38_0
              #                    occupy s6 with temp_69_value_from_ptr_69_0
    lw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                     310  mu a38_0_2:309 
              #                     312  temp_70_value_from_ptr_69_0 = load *a39_0:ptr->i32 
              #                    occupy s7 with *a39_0
              #                       load label a39 as ptr to reg
    la      s7, a39
              #                    occupy reg s7 with *a39_0
              #                    occupy s8 with temp_70_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_70_value_from_ptr_69_0
              #                    store to temp_70_value_from_ptr_69_0 in mem offset legal
    sw      s8,112(sp)
              #                    release s8 with temp_70_value_from_ptr_69_0
              #                    free s7
              #                     313  mu a39_0_2:312 
              #                     315  temp_71_value_from_ptr_69_0 = load *a8_0:ptr->i32 
              #                    occupy s7 with *a8_0
              #                       load label a8 as ptr to reg
    la      s7, a8
              #                    occupy reg s7 with *a8_0
              #                    occupy s8 with temp_71_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_71_value_from_ptr_69_0
              #                    store to temp_71_value_from_ptr_69_0 in mem offset legal
    sw      s8,108(sp)
              #                    release s8 with temp_71_value_from_ptr_69_0
              #                    free s7
              #                     316  mu a8_0_2:315 
              #                     318  temp_72_value_from_ptr_69_0 = load *a9_0:ptr->i32 
              #                    occupy s7 with *a9_0
              #                       load label a9 as ptr to reg
    la      s7, a9
              #                    occupy reg s7 with *a9_0
              #                    occupy s8 with temp_72_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_72_value_from_ptr_69_0
              #                    store to temp_72_value_from_ptr_69_0 in mem offset legal
    sw      s8,104(sp)
              #                    release s8 with temp_72_value_from_ptr_69_0
              #                    free s7
              #                     319  mu a9_0_2:318 
              #                     321  temp_73_value_from_ptr_69_0 = load *a10_0:ptr->i32 
              #                    occupy s7 with *a10_0
              #                       load label a10 as ptr to reg
    la      s7, a10
              #                    occupy reg s7 with *a10_0
              #                    occupy s8 with temp_73_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_73_value_from_ptr_69_0
              #                    store to temp_73_value_from_ptr_69_0 in mem offset legal
    sw      s8,100(sp)
              #                    release s8 with temp_73_value_from_ptr_69_0
              #                    free s7
              #                     322  mu a10_0_2:321 
              #                     324  temp_74_value_from_ptr_69_0 = load *a11_0:ptr->i32 
              #                    occupy s7 with *a11_0
              #                       load label a11 as ptr to reg
    la      s7, a11
              #                    occupy reg s7 with *a11_0
              #                    occupy s8 with temp_74_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_74_value_from_ptr_69_0
              #                    store to temp_74_value_from_ptr_69_0 in mem offset legal
    sw      s8,96(sp)
              #                    release s8 with temp_74_value_from_ptr_69_0
              #                    free s7
              #                     325  mu a11_0_2:324 
              #                     327  temp_75_value_from_ptr_69_0 = load *a12_0:ptr->i32 
              #                    occupy s7 with *a12_0
              #                       load label a12 as ptr to reg
    la      s7, a12
              #                    occupy reg s7 with *a12_0
              #                    occupy s8 with temp_75_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_75_value_from_ptr_69_0
              #                    store to temp_75_value_from_ptr_69_0 in mem offset legal
    sw      s8,92(sp)
              #                    release s8 with temp_75_value_from_ptr_69_0
              #                    free s7
              #                     328  mu a12_0_2:327 
              #                     330  temp_76_value_from_ptr_69_0 = load *a13_0:ptr->i32 
              #                    occupy s7 with *a13_0
              #                       load label a13 as ptr to reg
    la      s7, a13
              #                    occupy reg s7 with *a13_0
              #                    occupy s8 with temp_76_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_76_value_from_ptr_69_0
              #                    store to temp_76_value_from_ptr_69_0 in mem offset legal
    sw      s8,88(sp)
              #                    release s8 with temp_76_value_from_ptr_69_0
              #                    free s7
              #                     331  mu a13_0_2:330 
              #                     333  temp_77_value_from_ptr_69_0 = load *a14_0:ptr->i32 
              #                    occupy s7 with *a14_0
              #                       load label a14 as ptr to reg
    la      s7, a14
              #                    occupy reg s7 with *a14_0
              #                    occupy s8 with temp_77_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_77_value_from_ptr_69_0
              #                    store to temp_77_value_from_ptr_69_0 in mem offset legal
    sw      s8,84(sp)
              #                    release s8 with temp_77_value_from_ptr_69_0
              #                    free s7
              #                     334  mu a14_0_2:333 
              #                     336  temp_78_value_from_ptr_69_0 = load *a15_0:ptr->i32 
              #                    occupy s7 with *a15_0
              #                       load label a15 as ptr to reg
    la      s7, a15
              #                    occupy reg s7 with *a15_0
              #                    occupy s8 with temp_78_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_78_value_from_ptr_69_0
              #                    store to temp_78_value_from_ptr_69_0 in mem offset legal
    sw      s8,80(sp)
              #                    release s8 with temp_78_value_from_ptr_69_0
              #                    free s7
              #                     337  mu a15_0_2:336 
              #                     339  temp_79_ret_of_testParam16_69_0 =  Call i32 testParam16_0(temp_63_value_from_ptr_69_0, temp_64_value_from_ptr_69_0, temp_65_value_from_ptr_69_0, temp_66_value_from_ptr_69_0, temp_67_value_from_ptr_69_0, temp_68_value_from_ptr_69_0, temp_69_value_from_ptr_69_0, temp_70_value_from_ptr_69_0, temp_71_value_from_ptr_69_0, temp_72_value_from_ptr_69_0, temp_73_value_from_ptr_69_0, temp_74_value_from_ptr_69_0, temp_75_value_from_ptr_69_0, temp_76_value_from_ptr_69_0, temp_77_value_from_ptr_69_0, temp_78_value_from_ptr_69_0) 
              #                    saved register dumping to mem
              #                    occupy s7 with temp_71_value_from_ptr_69_0
              #                    load from temp_71_value_from_ptr_69_0 in mem


    lw      s7,108(sp)
              #                    store to a8_60_0 in mem offset legal
    sw      s7,-4(sp)
              #                    free s7
              #                    occupy s7 with temp_71_value_from_ptr_69_0
              #                    store to temp_71_value_from_ptr_69_0 in mem offset legal
    sw      s7,108(sp)
              #                    release s7 with temp_71_value_from_ptr_69_0
              #                    occupy s7 with temp_72_value_from_ptr_69_0
              #                    load from temp_72_value_from_ptr_69_0 in mem


    lw      s7,104(sp)
              #                    store to a9_60_0 in mem offset legal
    sw      s7,-8(sp)
              #                    free s7
              #                    occupy s7 with temp_72_value_from_ptr_69_0
              #                    store to temp_72_value_from_ptr_69_0 in mem offset legal
    sw      s7,104(sp)
              #                    release s7 with temp_72_value_from_ptr_69_0
              #                    occupy s7 with temp_73_value_from_ptr_69_0
              #                    load from temp_73_value_from_ptr_69_0 in mem


    lw      s7,100(sp)
              #                    store to a10_60_0 in mem offset legal
    sw      s7,-12(sp)
              #                    free s7
              #                    occupy s7 with temp_73_value_from_ptr_69_0
              #                    store to temp_73_value_from_ptr_69_0 in mem offset legal
    sw      s7,100(sp)
              #                    release s7 with temp_73_value_from_ptr_69_0
              #                    occupy s7 with temp_74_value_from_ptr_69_0
              #                    load from temp_74_value_from_ptr_69_0 in mem


    lw      s7,96(sp)
              #                    store to a11_60_0 in mem offset legal
    sw      s7,-16(sp)
              #                    free s7
              #                    occupy s7 with temp_74_value_from_ptr_69_0
              #                    store to temp_74_value_from_ptr_69_0 in mem offset legal
    sw      s7,96(sp)
              #                    release s7 with temp_74_value_from_ptr_69_0
              #                    occupy s7 with temp_75_value_from_ptr_69_0
              #                    load from temp_75_value_from_ptr_69_0 in mem


    lw      s7,92(sp)
              #                    store to a12_60_0 in mem offset legal
    sw      s7,-20(sp)
              #                    free s7
              #                    occupy s7 with temp_75_value_from_ptr_69_0
              #                    store to temp_75_value_from_ptr_69_0 in mem offset legal
    sw      s7,92(sp)
              #                    release s7 with temp_75_value_from_ptr_69_0
              #                    occupy s7 with temp_76_value_from_ptr_69_0
              #                    load from temp_76_value_from_ptr_69_0 in mem


    lw      s7,88(sp)
              #                    store to a13_60_0 in mem offset legal
    sw      s7,-24(sp)
              #                    free s7
              #                    occupy s7 with temp_76_value_from_ptr_69_0
              #                    store to temp_76_value_from_ptr_69_0 in mem offset legal
    sw      s7,88(sp)
              #                    release s7 with temp_76_value_from_ptr_69_0
              #                    occupy s7 with temp_77_value_from_ptr_69_0
              #                    load from temp_77_value_from_ptr_69_0 in mem


    lw      s7,84(sp)
              #                    store to a14_60_0 in mem offset legal
    sw      s7,-28(sp)
              #                    free s7
              #                    occupy s7 with temp_77_value_from_ptr_69_0
              #                    store to temp_77_value_from_ptr_69_0 in mem offset legal
    sw      s7,84(sp)
              #                    release s7 with temp_77_value_from_ptr_69_0
              #                    occupy s7 with temp_78_value_from_ptr_69_0
              #                    load from temp_78_value_from_ptr_69_0 in mem


    lw      s7,80(sp)
              #                    store to a15_60_0 in mem offset legal
    sw      s7,-32(sp)
              #                    free s7
              #                    occupy s7 with temp_78_value_from_ptr_69_0
              #                    store to temp_78_value_from_ptr_69_0 in mem offset legal
    sw      s7,80(sp)
              #                    release s7 with temp_78_value_from_ptr_69_0
              #                    occupy s2 with temp_67_value_from_ptr_69_0
              #                    store to temp_67_value_from_ptr_69_0 in mem offset legal
    sw      s2,124(sp)
              #                    release s2 with temp_67_value_from_ptr_69_0
              #                    occupy s4 with temp_68_value_from_ptr_69_0
              #                    store to temp_68_value_from_ptr_69_0 in mem offset legal
    sw      s4,120(sp)
              #                    release s4 with temp_68_value_from_ptr_69_0
              #                    occupy s6 with temp_69_value_from_ptr_69_0
              #                    store to temp_69_value_from_ptr_69_0 in mem offset legal
    sw      s6,116(sp)
              #                    release s6 with temp_69_value_from_ptr_69_0
              #                    occupy a1 with temp_63_value_from_ptr_69_0
              #                    store to temp_63_value_from_ptr_69_0 in mem offset legal
    sw      a1,140(sp)
              #                    release a1 with temp_63_value_from_ptr_69_0
              #                    occupy a3 with temp_64_value_from_ptr_69_0
              #                    store to temp_64_value_from_ptr_69_0 in mem offset legal
    sw      a3,136(sp)
              #                    release a3 with temp_64_value_from_ptr_69_0
              #                    occupy a5 with temp_65_value_from_ptr_69_0
              #                    store to temp_65_value_from_ptr_69_0 in mem offset legal
    sw      a5,132(sp)
              #                    release a5 with temp_65_value_from_ptr_69_0
              #                    occupy a7 with temp_66_value_from_ptr_69_0
              #                    store to temp_66_value_from_ptr_69_0 in mem offset legal
    sw      a7,128(sp)
              #                    release a7 with temp_66_value_from_ptr_69_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_63_value_from_ptr_69_0_0
              #                    load from temp_63_value_from_ptr_69_0 in mem


    lw      a0,140(sp)
              #                    occupy a1 with _anonymous_of_temp_64_value_from_ptr_69_0_0
              #                    load from temp_64_value_from_ptr_69_0 in mem


    lw      a1,136(sp)
              #                    occupy a2 with _anonymous_of_temp_65_value_from_ptr_69_0_0
              #                    load from temp_65_value_from_ptr_69_0 in mem


    lw      a2,132(sp)
              #                    occupy a3 with _anonymous_of_temp_66_value_from_ptr_69_0_0
              #                    load from temp_66_value_from_ptr_69_0 in mem


    lw      a3,128(sp)
              #                    occupy a4 with _anonymous_of_temp_67_value_from_ptr_69_0_0
              #                    load from temp_67_value_from_ptr_69_0 in mem


    lw      a4,124(sp)
              #                    occupy a5 with _anonymous_of_temp_68_value_from_ptr_69_0_0
              #                    load from temp_68_value_from_ptr_69_0 in mem


    lw      a5,120(sp)
              #                    occupy a6 with _anonymous_of_temp_69_value_from_ptr_69_0_0
              #                    load from temp_69_value_from_ptr_69_0 in mem


    lw      a6,116(sp)
              #                    occupy a7 with _anonymous_of_temp_70_value_from_ptr_69_0_0
              #                    load from temp_70_value_from_ptr_69_0 in mem


    lw      a7,112(sp)
              #                    arg load ended


    call    testParam16
              #                     685  untrack temp_68_value_from_ptr_69_0 
              #                     679  untrack temp_70_value_from_ptr_69_0 
              #                     676  untrack temp_63_value_from_ptr_69_0 
              #                     668  untrack temp_64_value_from_ptr_69_0 
              #                     659  untrack temp_69_value_from_ptr_69_0 
              #                     652  untrack temp_67_value_from_ptr_69_0 
              #                     649  untrack temp_65_value_from_ptr_69_0 
              #                     648  untrack temp_66_value_from_ptr_69_0 
              #                     340  store temp_79_ret_of_testParam16_69_0:i32 *a0_0:ptr->i32 
              #                    occupy a1 with *a0_0
              #                       load label a0 as ptr to reg
    la      a1, a0
              #                    occupy reg a1 with *a0_0
              #                    occupy a0 with temp_79_ret_of_testParam16_69_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     665  untrack temp_79_ret_of_testParam16_69_0 
              #                    occupy a0 with temp_79_ret_of_testParam16_69_0
              #                    release a0 with temp_79_ret_of_testParam16_69_0
              #                     341  a0_0_4 = chi a0_0_3:340 
              #                     343  temp_80_value_from_ptr_69_0 = load *a0_0:ptr->i32 
              #                    occupy a0 with *a0_0
              #                       load label a0 as ptr to reg
    la      a0, a0
              #                    occupy reg a0 with *a0_0
              #                    occupy a2 with temp_80_value_from_ptr_69_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     344  mu a0_0_4:343 
              #                     345   Call void putint_0(temp_80_value_from_ptr_69_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_80_value_from_ptr_69_0
              #                    store to temp_80_value_from_ptr_69_0 in mem offset legal
    sw      a2,72(sp)
              #                    release a2 with temp_80_value_from_ptr_69_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_80_value_from_ptr_69_0_0
              #                    load from temp_80_value_from_ptr_69_0 in mem


    lw      a0,72(sp)
              #                    arg load ended


    call    putint
              #                     347  (nop) 
              #                     348  mu a0_0_4:347 
              #                     350  (nop) 
              #                     351  mu a1_0_2:350 
              #                     353  (nop) 
              #                     354  mu a2_0_2:353 
              #                     356  (nop) 
              #                     357  mu a3_0_2:356 
              #                     359  (nop) 
              #                     360  mu a4_0_2:359 
              #                     362  (nop) 
              #                     363  mu a5_0_2:362 
              #                     365  (nop) 
              #                     366  mu a6_0_2:365 
              #                     368  (nop) 
              #                     369  mu a7_0_2:368 
              #                     371  (nop) 
              #                     372  mu a8_0_2:371 
              #                     374  (nop) 
              #                     375  mu a9_0_2:374 
              #                     377  (nop) 
              #                     378  mu a10_0_2:377 
              #                     380  (nop) 
              #                     381  mu a11_0_2:380 
              #                     383  (nop) 
              #                     384  mu a12_0_2:383 
              #                     386  (nop) 
              #                     387  mu a13_0_2:386 
              #                     389  (nop) 
              #                     390  mu a14_0_2:389 
              #                     392  (nop) 
              #                     393  mu a15_0_2:392 
              #                     395  temp_97_value_from_ptr_69_0 = load *a16_0:ptr->i32 
              #                    occupy a0 with *a16_0
              #                       load label a16 as ptr to reg
    la      a0, a16
              #                    occupy reg a0 with *a16_0
              #                    occupy a1 with temp_97_value_from_ptr_69_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     396  mu a16_0_2:395 
              #                     398  temp_98_value_from_ptr_69_0 = load *a17_0:ptr->i32 
              #                    occupy a2 with *a17_0
              #                       load label a17 as ptr to reg
    la      a2, a17
              #                    occupy reg a2 with *a17_0
              #                    occupy a3 with temp_98_value_from_ptr_69_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     399  mu a17_0_2:398 
              #                     401  temp_99_value_from_ptr_69_0 = load *a18_0:ptr->i32 
              #                    occupy a4 with *a18_0
              #                       load label a18 as ptr to reg
    la      a4, a18
              #                    occupy reg a4 with *a18_0
              #                    occupy a5 with temp_99_value_from_ptr_69_0
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     402  mu a18_0_2:401 
              #                     404  temp_100_value_from_ptr_69_0 = load *a19_0:ptr->i32 
              #                    occupy a6 with *a19_0
              #                       load label a19 as ptr to reg
    la      a6, a19
              #                    occupy reg a6 with *a19_0
              #                    occupy a7 with temp_100_value_from_ptr_69_0
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                     405  mu a19_0_2:404 
              #                     407  temp_101_value_from_ptr_69_0 = load *a20_0:ptr->i32 
              #                    occupy s1 with *a20_0
              #                       load label a20 as ptr to reg
    la      s1, a20
              #                    occupy reg s1 with *a20_0
              #                    occupy s2 with temp_101_value_from_ptr_69_0
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                     408  mu a20_0_2:407 
              #                     410  temp_102_value_from_ptr_69_0 = load *a21_0:ptr->i32 
              #                    occupy s3 with *a21_0
              #                       load label a21 as ptr to reg
    la      s3, a21
              #                    occupy reg s3 with *a21_0
              #                    occupy s4 with temp_102_value_from_ptr_69_0
    lw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                     411  mu a21_0_2:410 
              #                     413  temp_103_value_from_ptr_69_0 = load *a22_0:ptr->i32 
              #                    occupy s5 with *a22_0
              #                       load label a22 as ptr to reg
    la      s5, a22
              #                    occupy reg s5 with *a22_0
              #                    occupy s6 with temp_103_value_from_ptr_69_0
    lw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                     414  mu a22_0_2:413 
              #                     416  temp_104_value_from_ptr_69_0 = load *a23_0:ptr->i32 
              #                    occupy s7 with *a23_0
              #                       load label a23 as ptr to reg
    la      s7, a23
              #                    occupy reg s7 with *a23_0
              #                    occupy s8 with temp_104_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_104_value_from_ptr_69_0
              #                    store to temp_104_value_from_ptr_69_0 in mem offset legal
    sw      s8,40(sp)
              #                    release s8 with temp_104_value_from_ptr_69_0
              #                    free s7
              #                     417  mu a23_0_2:416 
              #                     419  temp_105_value_from_ptr_69_0 = load *a24_0:ptr->i32 
              #                    occupy s7 with *a24_0
              #                       load label a24 as ptr to reg
    la      s7, a24
              #                    occupy reg s7 with *a24_0
              #                    occupy s8 with temp_105_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_105_value_from_ptr_69_0
              #                    store to temp_105_value_from_ptr_69_0 in mem offset legal
    sw      s8,36(sp)
              #                    release s8 with temp_105_value_from_ptr_69_0
              #                    free s7
              #                     420  mu a24_0_2:419 
              #                     422  temp_106_value_from_ptr_69_0 = load *a25_0:ptr->i32 
              #                    occupy s7 with *a25_0
              #                       load label a25 as ptr to reg
    la      s7, a25
              #                    occupy reg s7 with *a25_0
              #                    occupy s8 with temp_106_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_106_value_from_ptr_69_0
              #                    store to temp_106_value_from_ptr_69_0 in mem offset legal
    sw      s8,32(sp)
              #                    release s8 with temp_106_value_from_ptr_69_0
              #                    free s7
              #                     423  mu a25_0_2:422 
              #                     425  temp_107_value_from_ptr_69_0 = load *a26_0:ptr->i32 
              #                    occupy s7 with *a26_0
              #                       load label a26 as ptr to reg
    la      s7, a26
              #                    occupy reg s7 with *a26_0
              #                    occupy s8 with temp_107_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_107_value_from_ptr_69_0
              #                    store to temp_107_value_from_ptr_69_0 in mem offset legal
    sw      s8,28(sp)
              #                    release s8 with temp_107_value_from_ptr_69_0
              #                    free s7
              #                     426  mu a26_0_2:425 
              #                     428  temp_108_value_from_ptr_69_0 = load *a27_0:ptr->i32 
              #                    occupy s7 with *a27_0
              #                       load label a27 as ptr to reg
    la      s7, a27
              #                    occupy reg s7 with *a27_0
              #                    occupy s8 with temp_108_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_108_value_from_ptr_69_0
              #                    store to temp_108_value_from_ptr_69_0 in mem offset legal
    sw      s8,24(sp)
              #                    release s8 with temp_108_value_from_ptr_69_0
              #                    free s7
              #                     429  mu a27_0_2:428 
              #                     431  temp_109_value_from_ptr_69_0 = load *a28_0:ptr->i32 
              #                    occupy s7 with *a28_0
              #                       load label a28 as ptr to reg
    la      s7, a28
              #                    occupy reg s7 with *a28_0
              #                    occupy s8 with temp_109_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_109_value_from_ptr_69_0
              #                    store to temp_109_value_from_ptr_69_0 in mem offset legal
    sw      s8,20(sp)
              #                    release s8 with temp_109_value_from_ptr_69_0
              #                    free s7
              #                     432  mu a28_0_2:431 
              #                     434  temp_110_value_from_ptr_69_0 = load *a29_0:ptr->i32 
              #                    occupy s7 with *a29_0
              #                       load label a29 as ptr to reg
    la      s7, a29
              #                    occupy reg s7 with *a29_0
              #                    occupy s8 with temp_110_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_110_value_from_ptr_69_0
              #                    store to temp_110_value_from_ptr_69_0 in mem offset legal
    sw      s8,16(sp)
              #                    release s8 with temp_110_value_from_ptr_69_0
              #                    free s7
              #                     435  mu a29_0_2:434 
              #                     437  temp_111_value_from_ptr_69_0 = load *a30_0:ptr->i32 
              #                    occupy s7 with *a30_0
              #                       load label a30 as ptr to reg
    la      s7, a30
              #                    occupy reg s7 with *a30_0
              #                    occupy s8 with temp_111_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_111_value_from_ptr_69_0
              #                    store to temp_111_value_from_ptr_69_0 in mem offset legal
    sw      s8,12(sp)
              #                    release s8 with temp_111_value_from_ptr_69_0
              #                    free s7
              #                     438  mu a30_0_2:437 
              #                     440  temp_112_value_from_ptr_69_0 = load *a31_0:ptr->i32 
              #                    occupy s7 with *a31_0
              #                       load label a31 as ptr to reg
    la      s7, a31
              #                    occupy reg s7 with *a31_0
              #                    occupy s8 with temp_112_value_from_ptr_69_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_112_value_from_ptr_69_0
              #                    store to temp_112_value_from_ptr_69_0 in mem offset legal
    sw      s8,8(sp)
              #                    release s8 with temp_112_value_from_ptr_69_0
              #                    free s7
              #                     441  mu a31_0_2:440 
              #                     443  temp_113_ret_of_testParam32_69_0 =  Call i32 testParam32_0(temp_80_value_from_ptr_69_0, temp_54_value_from_ptr_69_0, temp_55_value_from_ptr_69_0, temp_56_value_from_ptr_69_0, temp_57_value_from_ptr_69_0, temp_58_value_from_ptr_69_0, temp_59_value_from_ptr_69_0, temp_60_value_from_ptr_69_0, temp_71_value_from_ptr_69_0, temp_72_value_from_ptr_69_0, temp_73_value_from_ptr_69_0, temp_74_value_from_ptr_69_0, temp_75_value_from_ptr_69_0, temp_76_value_from_ptr_69_0, temp_77_value_from_ptr_69_0, temp_78_value_from_ptr_69_0, temp_97_value_from_ptr_69_0, temp_98_value_from_ptr_69_0, temp_99_value_from_ptr_69_0, temp_100_value_from_ptr_69_0, temp_101_value_from_ptr_69_0, temp_102_value_from_ptr_69_0, temp_103_value_from_ptr_69_0, temp_104_value_from_ptr_69_0, temp_105_value_from_ptr_69_0, temp_106_value_from_ptr_69_0, temp_107_value_from_ptr_69_0, temp_108_value_from_ptr_69_0, temp_109_value_from_ptr_69_0, temp_110_value_from_ptr_69_0, temp_111_value_from_ptr_69_0, temp_112_value_from_ptr_69_0) 
              #                    saved register dumping to mem
              #                    occupy s7 with temp_71_value_from_ptr_69_0
              #                    load from temp_71_value_from_ptr_69_0 in mem


    lw      s7,108(sp)
              #                    store to a8_64_0 in mem offset legal
    sw      s7,-4(sp)
              #                    free s7
              #                    occupy s7 with temp_71_value_from_ptr_69_0
              #                    store to temp_71_value_from_ptr_69_0 in mem offset legal
    sw      s7,108(sp)
              #                    release s7 with temp_71_value_from_ptr_69_0
              #                    occupy s7 with temp_72_value_from_ptr_69_0
              #                    load from temp_72_value_from_ptr_69_0 in mem


    lw      s7,104(sp)
              #                    store to a9_64_0 in mem offset legal
    sw      s7,-8(sp)
              #                    free s7
              #                    occupy s7 with temp_72_value_from_ptr_69_0
              #                    store to temp_72_value_from_ptr_69_0 in mem offset legal
    sw      s7,104(sp)
              #                    release s7 with temp_72_value_from_ptr_69_0
              #                    occupy s7 with temp_73_value_from_ptr_69_0
              #                    load from temp_73_value_from_ptr_69_0 in mem


    lw      s7,100(sp)
              #                    store to a10_64_0 in mem offset legal
    sw      s7,-12(sp)
              #                    free s7
              #                    occupy s7 with temp_73_value_from_ptr_69_0
              #                    store to temp_73_value_from_ptr_69_0 in mem offset legal
    sw      s7,100(sp)
              #                    release s7 with temp_73_value_from_ptr_69_0
              #                    occupy s7 with temp_74_value_from_ptr_69_0
              #                    load from temp_74_value_from_ptr_69_0 in mem


    lw      s7,96(sp)
              #                    store to a11_64_0 in mem offset legal
    sw      s7,-16(sp)
              #                    free s7
              #                    occupy s7 with temp_74_value_from_ptr_69_0
              #                    store to temp_74_value_from_ptr_69_0 in mem offset legal
    sw      s7,96(sp)
              #                    release s7 with temp_74_value_from_ptr_69_0
              #                    occupy s7 with temp_75_value_from_ptr_69_0
              #                    load from temp_75_value_from_ptr_69_0 in mem


    lw      s7,92(sp)
              #                    store to a12_64_0 in mem offset legal
    sw      s7,-20(sp)
              #                    free s7
              #                    occupy s7 with temp_75_value_from_ptr_69_0
              #                    store to temp_75_value_from_ptr_69_0 in mem offset legal
    sw      s7,92(sp)
              #                    release s7 with temp_75_value_from_ptr_69_0
              #                    occupy s7 with temp_76_value_from_ptr_69_0
              #                    load from temp_76_value_from_ptr_69_0 in mem


    lw      s7,88(sp)
              #                    store to a13_64_0 in mem offset legal
    sw      s7,-24(sp)
              #                    free s7
              #                    occupy s7 with temp_76_value_from_ptr_69_0
              #                    store to temp_76_value_from_ptr_69_0 in mem offset legal
    sw      s7,88(sp)
              #                    release s7 with temp_76_value_from_ptr_69_0
              #                    occupy s7 with temp_77_value_from_ptr_69_0
              #                    load from temp_77_value_from_ptr_69_0 in mem


    lw      s7,84(sp)
              #                    store to a14_64_0 in mem offset legal
    sw      s7,-28(sp)
              #                    free s7
              #                    occupy s7 with temp_77_value_from_ptr_69_0
              #                    store to temp_77_value_from_ptr_69_0 in mem offset legal
    sw      s7,84(sp)
              #                    release s7 with temp_77_value_from_ptr_69_0
              #                    occupy s7 with temp_78_value_from_ptr_69_0
              #                    load from temp_78_value_from_ptr_69_0 in mem


    lw      s7,80(sp)
              #                    store to a15_64_0 in mem offset legal
    sw      s7,-32(sp)
              #                    free s7
              #                    occupy s7 with temp_78_value_from_ptr_69_0
              #                    store to temp_78_value_from_ptr_69_0 in mem offset legal
    sw      s7,80(sp)
              #                    release s7 with temp_78_value_from_ptr_69_0
              #                    occupy a1 with temp_97_value_from_ptr_69_0
              #                    store to a16_64_0 in mem offset legal
    sw      a1,-36(sp)
              #                    free a1
              #                    occupy a3 with temp_98_value_from_ptr_69_0
              #                    store to a17_64_0 in mem offset legal
    sw      a3,-40(sp)
              #                    free a3
              #                    occupy a5 with temp_99_value_from_ptr_69_0
              #                    store to a18_64_0 in mem offset legal
    sw      a5,-44(sp)
              #                    free a5
              #                    occupy a7 with temp_100_value_from_ptr_69_0
              #                    store to a19_64_0 in mem offset legal
    sw      a7,-48(sp)
              #                    free a7
              #                    occupy s2 with temp_101_value_from_ptr_69_0
              #                    store to a20_64_0 in mem offset legal
    sw      s2,-52(sp)
              #                    free s2
              #                    occupy s4 with temp_102_value_from_ptr_69_0
              #                    store to a21_64_0 in mem offset legal
    sw      s4,-56(sp)
              #                    free s4
              #                    occupy s6 with temp_103_value_from_ptr_69_0
              #                    store to a22_64_0 in mem offset legal
    sw      s6,-60(sp)
              #                    free s6
              #                    occupy s7 with temp_104_value_from_ptr_69_0
              #                    load from temp_104_value_from_ptr_69_0 in mem


    lw      s7,40(sp)
              #                    store to a23_64_0 in mem offset legal
    sw      s7,-64(sp)
              #                    free s7
              #                    occupy s7 with temp_104_value_from_ptr_69_0
              #                    store to temp_104_value_from_ptr_69_0 in mem offset legal
    sw      s7,40(sp)
              #                    release s7 with temp_104_value_from_ptr_69_0
              #                    occupy s7 with temp_105_value_from_ptr_69_0
              #                    load from temp_105_value_from_ptr_69_0 in mem


    lw      s7,36(sp)
              #                    store to a24_64_0 in mem offset legal
    sw      s7,-68(sp)
              #                    free s7
              #                    occupy s7 with temp_105_value_from_ptr_69_0
              #                    store to temp_105_value_from_ptr_69_0 in mem offset legal
    sw      s7,36(sp)
              #                    release s7 with temp_105_value_from_ptr_69_0
              #                    occupy s7 with temp_106_value_from_ptr_69_0
              #                    load from temp_106_value_from_ptr_69_0 in mem


    lw      s7,32(sp)
              #                    store to a25_64_0 in mem offset legal
    sw      s7,-72(sp)
              #                    free s7
              #                    occupy s7 with temp_106_value_from_ptr_69_0
              #                    store to temp_106_value_from_ptr_69_0 in mem offset legal
    sw      s7,32(sp)
              #                    release s7 with temp_106_value_from_ptr_69_0
              #                    occupy s7 with temp_107_value_from_ptr_69_0
              #                    load from temp_107_value_from_ptr_69_0 in mem


    lw      s7,28(sp)
              #                    store to a26_64_0 in mem offset legal
    sw      s7,-76(sp)
              #                    free s7
              #                    occupy s7 with temp_107_value_from_ptr_69_0
              #                    store to temp_107_value_from_ptr_69_0 in mem offset legal
    sw      s7,28(sp)
              #                    release s7 with temp_107_value_from_ptr_69_0
              #                    occupy s7 with temp_108_value_from_ptr_69_0
              #                    load from temp_108_value_from_ptr_69_0 in mem


    lw      s7,24(sp)
              #                    store to a27_64_0 in mem offset legal
    sw      s7,-80(sp)
              #                    free s7
              #                    occupy s7 with temp_108_value_from_ptr_69_0
              #                    store to temp_108_value_from_ptr_69_0 in mem offset legal
    sw      s7,24(sp)
              #                    release s7 with temp_108_value_from_ptr_69_0
              #                    occupy s7 with temp_109_value_from_ptr_69_0
              #                    load from temp_109_value_from_ptr_69_0 in mem


    lw      s7,20(sp)
              #                    store to a28_64_0 in mem offset legal
    sw      s7,-84(sp)
              #                    free s7
              #                    occupy s7 with temp_109_value_from_ptr_69_0
              #                    store to temp_109_value_from_ptr_69_0 in mem offset legal
    sw      s7,20(sp)
              #                    release s7 with temp_109_value_from_ptr_69_0
              #                    occupy s7 with temp_110_value_from_ptr_69_0
              #                    load from temp_110_value_from_ptr_69_0 in mem


    lw      s7,16(sp)
              #                    store to a29_64_0 in mem offset legal
    sw      s7,-88(sp)
              #                    free s7
              #                    occupy s7 with temp_110_value_from_ptr_69_0
              #                    store to temp_110_value_from_ptr_69_0 in mem offset legal
    sw      s7,16(sp)
              #                    release s7 with temp_110_value_from_ptr_69_0
              #                    occupy s7 with temp_111_value_from_ptr_69_0
              #                    load from temp_111_value_from_ptr_69_0 in mem


    lw      s7,12(sp)
              #                    store to a30_64_0 in mem offset legal
    sw      s7,-92(sp)
              #                    free s7
              #                    occupy s7 with temp_111_value_from_ptr_69_0
              #                    store to temp_111_value_from_ptr_69_0 in mem offset legal
    sw      s7,12(sp)
              #                    release s7 with temp_111_value_from_ptr_69_0
              #                    occupy s7 with temp_112_value_from_ptr_69_0
              #                    load from temp_112_value_from_ptr_69_0 in mem


    lw      s7,8(sp)
              #                    store to a31_64_0 in mem offset legal
    sw      s7,-96(sp)
              #                    free s7
              #                    occupy s7 with temp_112_value_from_ptr_69_0
              #                    store to temp_112_value_from_ptr_69_0 in mem offset legal
    sw      s7,8(sp)
              #                    release s7 with temp_112_value_from_ptr_69_0
              #                    occupy s2 with temp_101_value_from_ptr_69_0
              #                    store to temp_101_value_from_ptr_69_0 in mem offset legal
    sw      s2,52(sp)
              #                    release s2 with temp_101_value_from_ptr_69_0
              #                    occupy s4 with temp_102_value_from_ptr_69_0
              #                    store to temp_102_value_from_ptr_69_0 in mem offset legal
    sw      s4,48(sp)
              #                    release s4 with temp_102_value_from_ptr_69_0
              #                    occupy s6 with temp_103_value_from_ptr_69_0
              #                    store to temp_103_value_from_ptr_69_0 in mem offset legal
    sw      s6,44(sp)
              #                    release s6 with temp_103_value_from_ptr_69_0
              #                    occupy a1 with temp_97_value_from_ptr_69_0
              #                    store to temp_97_value_from_ptr_69_0 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with temp_97_value_from_ptr_69_0
              #                    occupy a3 with temp_98_value_from_ptr_69_0
              #                    store to temp_98_value_from_ptr_69_0 in mem offset legal
    sw      a3,64(sp)
              #                    release a3 with temp_98_value_from_ptr_69_0
              #                    occupy a5 with temp_99_value_from_ptr_69_0
              #                    store to temp_99_value_from_ptr_69_0 in mem offset legal
    sw      a5,60(sp)
              #                    release a5 with temp_99_value_from_ptr_69_0
              #                    occupy a7 with temp_100_value_from_ptr_69_0
              #                    store to temp_100_value_from_ptr_69_0 in mem offset legal
    sw      a7,56(sp)
              #                    release a7 with temp_100_value_from_ptr_69_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_80_value_from_ptr_69_0_0
              #                    load from temp_80_value_from_ptr_69_0 in mem


    lw      a0,72(sp)
              #                    occupy a1 with _anonymous_of_temp_54_value_from_ptr_69_0_0
              #                    load from temp_54_value_from_ptr_69_0 in mem


    lw      a1,176(sp)
              #                    occupy a2 with _anonymous_of_temp_55_value_from_ptr_69_0_0
              #                    load from temp_55_value_from_ptr_69_0 in mem


    lw      a2,172(sp)
              #                    occupy a3 with _anonymous_of_temp_56_value_from_ptr_69_0_0
              #                    load from temp_56_value_from_ptr_69_0 in mem


    lw      a3,168(sp)
              #                    occupy a4 with _anonymous_of_temp_57_value_from_ptr_69_0_0
              #                    load from temp_57_value_from_ptr_69_0 in mem


    lw      a4,164(sp)
              #                    occupy a5 with _anonymous_of_temp_58_value_from_ptr_69_0_0
              #                    load from temp_58_value_from_ptr_69_0 in mem


    lw      a5,160(sp)
              #                    occupy a6 with _anonymous_of_temp_59_value_from_ptr_69_0_0
              #                    load from temp_59_value_from_ptr_69_0 in mem


    lw      a6,156(sp)
              #                    occupy a7 with _anonymous_of_temp_60_value_from_ptr_69_0_0
              #                    load from temp_60_value_from_ptr_69_0 in mem


    lw      a7,152(sp)
              #                    arg load ended


    call    testParam32
              #                     684  untrack temp_78_value_from_ptr_69_0 
              #                     683  untrack temp_109_value_from_ptr_69_0 
              #                     682  untrack temp_98_value_from_ptr_69_0 
              #                     681  untrack temp_56_value_from_ptr_69_0 
              #                     680  untrack temp_59_value_from_ptr_69_0 
              #                     678  untrack temp_72_value_from_ptr_69_0 
              #                     675  untrack temp_110_value_from_ptr_69_0 
              #                     674  untrack temp_76_value_from_ptr_69_0 
              #                     672  untrack temp_108_value_from_ptr_69_0 
              #                     671  untrack temp_99_value_from_ptr_69_0 
              #                     670  untrack temp_77_value_from_ptr_69_0 
              #                     669  untrack temp_60_value_from_ptr_69_0 
              #                     667  untrack temp_97_value_from_ptr_69_0 
              #                     666  untrack temp_105_value_from_ptr_69_0 
              #                     664  untrack temp_106_value_from_ptr_69_0 
              #                     663  untrack temp_55_value_from_ptr_69_0 
              #                     662  untrack temp_80_value_from_ptr_69_0 
              #                     661  untrack temp_57_value_from_ptr_69_0 
              #                     657  untrack temp_103_value_from_ptr_69_0 
              #                     656  untrack temp_73_value_from_ptr_69_0 
              #                     655  untrack temp_112_value_from_ptr_69_0 
              #                     654  untrack temp_74_value_from_ptr_69_0 
              #                     653  untrack temp_104_value_from_ptr_69_0 
              #                     651  untrack temp_101_value_from_ptr_69_0 
              #                     650  untrack temp_107_value_from_ptr_69_0 
              #                     647  untrack temp_75_value_from_ptr_69_0 
              #                     646  untrack temp_102_value_from_ptr_69_0 
              #                     645  untrack temp_100_value_from_ptr_69_0 
              #                     644  untrack temp_58_value_from_ptr_69_0 
              #                     643  untrack temp_71_value_from_ptr_69_0 
              #                     642  untrack temp_54_value_from_ptr_69_0 
              #                     641  untrack temp_111_value_from_ptr_69_0 
              #                     444  store temp_113_ret_of_testParam32_69_0:i32 *a0_0:ptr->i32 
              #                    occupy a1 with *a0_0
              #                       load label a0 as ptr to reg
    la      a1, a0
              #                    occupy reg a1 with *a0_0
              #                    occupy a0 with temp_113_ret_of_testParam32_69_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     640  untrack temp_113_ret_of_testParam32_69_0 
              #                    occupy a0 with temp_113_ret_of_testParam32_69_0
              #                    release a0 with temp_113_ret_of_testParam32_69_0
              #                     445  a0_0_5 = chi a0_0_4:444 
              #                     447  temp_114_value_from_ptr_69_0 = load *a0_0:ptr->i32 
              #                    occupy a0 with *a0_0
              #                       load label a0 as ptr to reg
    la      a0, a0
              #                    occupy reg a0 with *a0_0
              #                    occupy a2 with temp_114_value_from_ptr_69_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     448  mu a0_0_5:447 
              #                     449   Call void putint_0(temp_114_value_from_ptr_69_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_114_value_from_ptr_69_0
              #                    store to temp_114_value_from_ptr_69_0 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_114_value_from_ptr_69_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_114_value_from_ptr_69_0_0
              #                    load from temp_114_value_from_ptr_69_0 in mem


    lw      a0,0(sp)
              #                    arg load ended


    call    putint
              #                     677  untrack temp_114_value_from_ptr_69_0 
              #                     494  mu a3_0_2:451 
              #                     495  mu a1_0_2:451 
              #                     496  mu a22_0_2:451 
              #                     497  mu a13_0_2:451 
              #                     498  mu a24_0_2:451 
              #                     499  mu a26_0_2:451 
              #                     500  mu a39_0_2:451 
              #                     501  mu a4_0_2:451 
              #                     502  mu a29_0_2:451 
              #                     503  mu a10_0_2:451 
              #                     504  mu a23_0_2:451 
              #                     505  mu a37_0_2:451 
              #                     506  mu a15_0_2:451 
              #                     507  mu a18_0_2:451 
              #                     508  mu a20_0_2:451 
              #                     509  mu a33_0_2:451 
              #                     510  mu a27_0_2:451 
              #                     511  mu a36_0_2:451 
              #                     512  mu a12_0_2:451 
              #                     513  mu a0_0_5:451 
              #                     514  mu a7_0_2:451 
              #                     515  mu a8_0_2:451 
              #                     516  mu a28_0_2:451 
              #                     517  mu a9_0_2:451 
              #                     518  mu a31_0_2:451 
              #                     519  mu a2_0_2:451 
              #                     520  mu a25_0_2:451 
              #                     521  mu a30_0_2:451 
              #                     522  mu a19_0_2:451 
              #                     523  mu a16_0_2:451 
              #                     524  mu a34_0_2:451 
              #                     525  mu a14_0_2:451 
              #                     526  mu a38_0_2:451 
              #                     527  mu a11_0_2:451 
              #                     528  mu a32_0_2:451 
              #                     529  mu a5_0_2:451 
              #                     530  mu a35_0_2:451 
              #                     531  mu a17_0_2:451 
              #                     532  mu a6_0_2:451 
              #                     533  mu a21_0_2:451 
              #                     451  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,192(sp)
              #                    load from s0_main_0 in mem
    ld      s0,184(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,200
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl a39
              #                     54   global i32 a39_0 
    .type a39,@object
a39:
    .word 0
    .align 4
    .globl a38
              #                     53   global i32 a38_0 
    .type a38,@object
a38:
    .word 0
    .align 4
    .globl a37
              #                     52   global i32 a37_0 
    .type a37,@object
a37:
    .word 0
    .align 4
    .globl a36
              #                     51   global i32 a36_0 
    .type a36,@object
a36:
    .word 0
    .align 4
    .globl a35
              #                     50   global i32 a35_0 
    .type a35,@object
a35:
    .word 0
    .align 4
    .globl a34
              #                     49   global i32 a34_0 
    .type a34,@object
a34:
    .word 0
    .align 4
    .globl a33
              #                     48   global i32 a33_0 
    .type a33,@object
a33:
    .word 0
    .align 4
    .globl a32
              #                     47   global i32 a32_0 
    .type a32,@object
a32:
    .word 0
    .align 4
    .globl a31
              #                     46   global i32 a31_0 
    .type a31,@object
a31:
    .word 0
    .align 4
    .globl a30
              #                     45   global i32 a30_0 
    .type a30,@object
a30:
    .word 0
    .align 4
    .globl a29
              #                     44   global i32 a29_0 
    .type a29,@object
a29:
    .word 0
    .align 4
    .globl a28
              #                     43   global i32 a28_0 
    .type a28,@object
a28:
    .word 0
    .align 4
    .globl a27
              #                     42   global i32 a27_0 
    .type a27,@object
a27:
    .word 0
    .align 4
    .globl a26
              #                     41   global i32 a26_0 
    .type a26,@object
a26:
    .word 0
    .align 4
    .globl a25
              #                     40   global i32 a25_0 
    .type a25,@object
a25:
    .word 0
    .align 4
    .globl a24
              #                     39   global i32 a24_0 
    .type a24,@object
a24:
    .word 0
    .align 4
    .globl a23
              #                     38   global i32 a23_0 
    .type a23,@object
a23:
    .word 0
    .align 4
    .globl a22
              #                     37   global i32 a22_0 
    .type a22,@object
a22:
    .word 0
    .align 4
    .globl a21
              #                     36   global i32 a21_0 
    .type a21,@object
a21:
    .word 0
    .align 4
    .globl a20
              #                     35   global i32 a20_0 
    .type a20,@object
a20:
    .word 0
    .align 4
    .globl a19
              #                     34   global i32 a19_0 
    .type a19,@object
a19:
    .word 0
    .align 4
    .globl a18
              #                     33   global i32 a18_0 
    .type a18,@object
a18:
    .word 0
    .align 4
    .globl a17
              #                     32   global i32 a17_0 
    .type a17,@object
a17:
    .word 0
    .align 4
    .globl a16
              #                     31   global i32 a16_0 
    .type a16,@object
a16:
    .word 0
    .align 4
    .globl a15
              #                     30   global i32 a15_0 
    .type a15,@object
a15:
    .word 0
    .align 4
    .globl a14
              #                     29   global i32 a14_0 
    .type a14,@object
a14:
    .word 0
    .align 4
    .globl a13
              #                     28   global i32 a13_0 
    .type a13,@object
a13:
    .word 0
    .align 4
    .globl a12
              #                     27   global i32 a12_0 
    .type a12,@object
a12:
    .word 0
    .align 4
    .globl a11
              #                     26   global i32 a11_0 
    .type a11,@object
a11:
    .word 0
    .align 4
    .globl a10
              #                     25   global i32 a10_0 
    .type a10,@object
a10:
    .word 0
    .align 4
    .globl a9
              #                     24   global i32 a9_0 
    .type a9,@object
a9:
    .word 0
    .align 4
    .globl a8
              #                     23   global i32 a8_0 
    .type a8,@object
a8:
    .word 0
    .align 4
    .globl a7
              #                     22   global i32 a7_0 
    .type a7,@object
a7:
    .word 0
    .align 4
    .globl a6
              #                     21   global i32 a6_0 
    .type a6,@object
a6:
    .word 0
    .align 4
    .globl a5
              #                     20   global i32 a5_0 
    .type a5,@object
a5:
    .word 0
    .align 4
    .globl a4
              #                     19   global i32 a4_0 
    .type a4,@object
a4:
    .word 0
    .align 4
    .globl a3
              #                     18   global i32 a3_0 
    .type a3,@object
a3:
    .word 0
    .align 4
    .globl a2
              #                     17   global i32 a2_0 
    .type a2,@object
a2:
    .word 0
    .align 4
    .globl a1
              #                     16   global i32 a1_0 
    .type a1,@object
a1:
    .word 0
    .align 4
    .globl a0
              #                     15   global i32 a0_0 
    .type a0,@object
a0:
    .word 0
