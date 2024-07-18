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
              #                     16   Define myabs_0 "num_16," -> myabs_ret_0 
    .globl myabs
    .type myabs,@function
myabs:
              #                    mem layout:|ra_myabs:8 at 32|s0_myabs:8 at 24|num:4 at 20|temp_0_:4 at 16|temp_1_:4 at 12|temp_2_cmp:1 at 11|none:3 at 8|temp_3_:4 at 4|temp_4_cmp:1 at 3|none:3 at 0
    addi    sp,sp,-40
              #                    store to ra_myabs_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_myabs_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     19   alloc f32 temp_0__25 
              #                     25   alloc f32 temp_1__19 
              #                     28   alloc i1 temp_2_cmp_19 
              #                     34   alloc f32 temp_3__23 
              #                     37   alloc i1 temp_4_cmp_23 
              #                    regtab     fa0:Freed { symidx: num_16, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L1_0: 
.L1_0:
              #                     26   new_var temp_1__19:f32 
              #                     27   temp_1__19 = sitofp i32 0_0 to f32 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy fa1 with temp_1__19
    fcvt.s.w fa1,a0,rtz
              #                    free a0
              #                    free fa1
              #                     29   new_var temp_2_cmp_19:i1 
              #                     30   temp_2_cmp_19 = fcmp f32 Ogt num_16, temp_1__19 
              #                    occupy fa0 with num_16
              #                    occupy fa1 with temp_1__19
              #                    occupy a1 with temp_2_cmp_19
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     33   br i1 temp_2_cmp_19, label branch_true_20, label branch_false_20 
              #                    occupy a1 with temp_2_cmp_19
              #                    free a1
              #                    occupy a1 with temp_2_cmp_19
    bnez    a1, .branch_true_20
              #                    free a1
    j       .branch_false_20
              #                    regtab     a1:Freed { symidx: temp_2_cmp_19, tracked: true } |     fa0:Freed { symidx: num_16, tracked: true } |     fa1:Freed { symidx: temp_1__19, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     31   label branch_true_20: 
.branch_true_20:
              #                     24   ret num_16 
              #                    load from ra_myabs_0 in mem
    ld      ra,32(sp)
              #                    load from s0_myabs_0 in mem
    ld      s0,24(sp)
              #                    occupy fa0 with num_16
              #                    store to num_16 in mem offset legal
    fsw     fa0,20(sp)
              #                    release fa0 with num_16
              #                    occupy fa0 with num_16
              #                    load from num_16 in mem


    flw     fa0,20(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_2_cmp_19, tracked: true } |     fa0:Freed { symidx: num_16, tracked: true } |     fa1:Freed { symidx: temp_1__19, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     32   label branch_false_20: 
.branch_false_20:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a1:Freed { symidx: temp_2_cmp_19, tracked: true } |     fa0:Freed { symidx: num_16, tracked: true } |     fa1:Freed { symidx: temp_1__19, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                          label L2_0: 
.L2_0:
              #                     35   new_var temp_3__23:f32 
              #                     36   temp_3__23 = sitofp i32 0_0 to f32 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy fa2 with temp_3__23
    fcvt.s.w fa2,a0,rtz
              #                    free a0
              #                    free fa2
              #                     38   new_var temp_4_cmp_23:i1 
              #                     39   temp_4_cmp_23 = fcmp f32 Olt num_16, temp_3__23 
              #                    occupy fa0 with num_16
              #                    occupy fa2 with temp_3__23
              #                    occupy a2 with temp_4_cmp_23
    flt.s   a2,fa0,fa2
              #                    free fa0
              #                    free fa2
              #                    free a2
              #                     42   br i1 temp_4_cmp_23, label branch_true_24, label branch_false_24 
              #                    occupy a2 with temp_4_cmp_23
              #                    free a2
              #                    occupy a2 with temp_4_cmp_23
    bnez    a2, .branch_true_24
              #                    free a2
    j       .branch_false_24
              #                    regtab     a1:Freed { symidx: temp_2_cmp_19, tracked: true } |     a2:Freed { symidx: temp_4_cmp_23, tracked: true } |     fa0:Freed { symidx: num_16, tracked: true } |     fa1:Freed { symidx: temp_1__19, tracked: true } |     fa2:Freed { symidx: temp_3__23, tracked: true } |  released_gpr_count:15,released_fpr_count:21
              #                     40   label branch_true_24: 
.branch_true_24:
              #                     20   new_var temp_0__25:f32 
              #                     21   temp_0__25 = Sub f32 0.0_0, num_16 
              #                    occupy fa3 with 0.0_0
              #                    occupy a0 with _anonymous_of_0.0_0_0
    li      a0, 0
    fmv.w.x fa3, a0
              #                    free a0
              #                    occupy fa0 with num_16
              #                    occupy fa4 with temp_0__25
    fsub.s  fa4,fa3,fa0
              #                    free fa3
              #                    free fa0
              #                    free fa4
              #                     22   ret temp_0__25 
              #                    load from ra_myabs_0 in mem
    ld      ra,32(sp)
              #                    load from s0_myabs_0 in mem
    ld      s0,24(sp)
              #                    occupy fa4 with temp_0__25
              #                    store to temp_0__25 in mem offset legal
    fsw     fa4,16(sp)
              #                    release fa4 with temp_0__25
              #                    occupy fa0 with num_16
              #                    store to num_16 in mem offset legal
    fsw     fa0,20(sp)
              #                    release fa0 with num_16
              #                    occupy fa0 with temp_0__25
              #                    load from temp_0__25 in mem


    flw     fa0,16(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_2_cmp_19, tracked: true } |     a2:Freed { symidx: temp_4_cmp_23, tracked: true } |     fa0:Freed { symidx: num_16, tracked: true } |     fa1:Freed { symidx: temp_1__19, tracked: true } |     fa2:Freed { symidx: temp_3__23, tracked: true } |  released_gpr_count:15,released_fpr_count:21
              #                     41   label branch_false_24: 
.branch_false_24:
              #                          jump label: exit_2 
    j       .exit_2
              #                    regtab     a1:Freed { symidx: temp_2_cmp_19, tracked: true } |     a2:Freed { symidx: temp_4_cmp_23, tracked: true } |     fa0:Freed { symidx: num_16, tracked: true } |     fa1:Freed { symidx: temp_1__19, tracked: true } |     fa2:Freed { symidx: temp_3__23, tracked: true } |  released_gpr_count:15,released_fpr_count:21
              #                     43   label exit_2: 
.exit_2:
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 24|s0_main:8 at 16|temp_5_:4 at 12|temp_6_ret_of_myabs:4 at 8|temp_7_:4 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_main_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     45   alloc f32 temp_5__28 
              #                     48   alloc f32 temp_6_ret_of_myabs_28 
              #                     51   alloc i32 temp_7__29 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     46   new_var temp_5__28:f32 
              #                     47   temp_5__28 = sitofp i32 33_0 to f32 
              #                    occupy a0 with 33_0
    li      a0, 33
              #                    occupy fa0 with temp_5__28
    fcvt.s.w fa0,a0,rtz
              #                    free a0
              #                    free fa0
              #                     49   new_var temp_6_ret_of_myabs_28:f32 
              #                     50   temp_6_ret_of_myabs_28 =  Call f32 myabs_0(temp_5__28) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_5__28
              #                    store to temp_5__28 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with temp_5__28
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_5__28_0
              #                    load from temp_5__28 in mem


    flw     fa0,12(sp)
              #                    arg load ended


    call    myabs
              #                     52   new_var temp_7__29:i32 
              #                     53   temp_7__29 = fptosi f32 temp_6_ret_of_myabs_28 to i32 
              #                    occupy fa0 with temp_6_ret_of_myabs_28
              #                    occupy a0 with temp_7__29
    fcvt.w.s a0,fa0,rtz
              #                    free fa0
              #                    free a0
              #                     54   ret temp_7__29 
              #                    load from ra_main_0 in mem
    ld      ra,24(sp)
              #                    load from s0_main_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with temp_7__29
              #                    store to temp_7__29 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_7__29
              #                    occupy a0 with temp_7__29
              #                    load from temp_7__29 in mem


    lw      a0,4(sp)
    addi    sp,sp,32
              #                    free a0
    ret
