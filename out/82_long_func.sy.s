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


.section        .text
    .align 4
    .globl long_func
    .type long_func,@function
long_func:
    addi    sp,sp,-801
    sd      ra,793(sp)
    sd      s0,777(sp)
    addi    s0,sp,801
.L1_0:
    li      a0, 2
    mv      a1, a0
    li      a2, 0
    mv      a3, a2
    li      a4, 1
    mv      a5, a4
    j       .while.head_23
.while.head_23:
    slt     a6,a2,a3
    bnez    a6, .while.body_23
    j       .while.exit_23
.while.body_23:
    mv      a7, a2
    mv      s1, a2
    mv      s2, a3
    mv      s3, a4
    j       .while.head_30
.while.head_30:
    li      s4, 16
    slt     s5,s1,s4
    bnez    s5, .while.body_30
    j       .while.exit_30
.while.body_30:
    mv      s6, s6
    rem     s6,s3,a0
    mv      s7, s7
    rem     s7,s2,a0
    xor     s8,s7,a2
    sltiu   s8,s8,1
    xori    s8,s8,1
    mv      s9, s9
    and     s10,s8,s9
    bnez    s10, .branch_true_33
    j       .branch_false_33
.branch_true_33:
    la      s11, SHIFT_TABLE
    lw      a0,0(s11)
    li      a0, 0
    mul     a2,a4,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      s4, s4
    mul     s11,a4,s4
    add     a4,a7,s11
    j       .branch_false_33
.branch_false_33:
.L2_0:
    sd      a0,617(sp)
    li      a0, 2
    sw      a1,729(sp)
    div     a1,s2,a0
    sw      a1,585(sp)
    div     a1,s3,a0
    li      a0, 1
    sw      a1,577(sp)
    add     a1,s1,a0
    j       .while.head_30
.while.exit_30:
    li      a0, 0
    sw      a1,569(sp)
    xor     a1,a7,a0
    sltiu   a1,a1,1
    xori    a1,a1,1
    bnez    a1, .branch_true_40
    j       .branch_false_40
.branch_true_40:
    mv      a0, a5
    sw      a0,564(sp)
    mv      a0, a0
    sb      a1,568(sp)
    mv      a1, a0
    sw      a0,729(sp)
    li      a0, 0
    sw      a1,557(sp)
    mv      a1, a0
    j       .while.head_45
.while.head_45:
    mv      a0, a0
    sw      a1,549(sp)
    li      a1, 0
    sw      a2,690(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    xori    a2,a2,1
    bnez    a2, .while.body_45
    j       .while.exit_45
.while.body_45:
    li      a1, 1
    j       .while.head_52
.while.head_52:
    li      a1, 16
    sw      a0,557(sp)
    slt     a0,s1,a1
    bnez    a0, .while.body_52
    j       .while.exit_52
.while.body_52:
    li      a1, 2
    sb      a0,547(sp)
    mv      a0, a0
    rem     a0,s3,a1
    sw      a0,541(sp)
    mv      a0, a0
    rem     a0,s2,a1
    li      a1, 0
    sb      a2,548(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    xori    a2,a2,1
    mv      a1, a1
    sw      a0,533(sp)
    li      a0, 0
    mv      a0, a0
    sw      a1,541(sp)
    and     a1,a2,a0
    bnez    a1, .branch_true_55
    j       .branch_false_55
.branch_true_55:
    sb      a0,531(sp)
    la      a0, SHIFT_TABLE
    sb      a1,530(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,532(sp)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,449(sp)
    mv      a0, a0
    sw      a2,525(sp)
    mul     a2,a1,a0
    add     a1,a7,a2
    j       .branch_false_55
.branch_false_55:
.L3_0:
    sw      a0,441(sp)
    li      a0, 2
    sw      a1,429(sp)
    div     a1,s2,a0
    sw      a1,421(sp)
    div     a1,s3,a0
    li      a0, 1
    sw      a1,413(sp)
    add     a1,s1,a0
    j       .while.head_52
.while.exit_52:
    li      a0, 0
    sw      a1,405(sp)
    xor     a1,a7,a0
    sltiu   a1,a1,1
    xori    a1,a1,1
    bnez    a1, .branch_true_62
    j       .branch_false_62
.branch_true_62:
    mv      a0, a0
    sb      a1,404(sp)
    mv      a1, a0
    sw      a0,549(sp)
    mv      a0, a0
    sw      a1,397(sp)
    mv      a1, a0
    j       .while.head_67
.while.head_67:
    sw      a0,564(sp)
    li      a0, 0
    sw      a2,437(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    xori    a2,a2,1
    bnez    a2, .while.body_67
    j       .while.exit_67
.while.body_67:
    mv      a0, a0
    j       .while.head_74
.while.head_74:
    sw      a0,397(sp)
    li      a0, 16
    sw      a1,393(sp)
    slt     a1,s1,a0
    bnez    a1, .while.body_74
    j       .while.exit_74
.while.body_74:
    li      a0, 2
    sb      a1,383(sp)
    mv      a1, a1
    rem     a1,s2,a0
    li      a0, 0
    sb      a2,384(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    xori    a2,a2,1
    bnez    a2, .branch_true_77
    j       .branch_false_77
.branch_true_77:
    li      a0, 2
    sw      a1,377(sp)
    mv      a1, a1
    rem     a1,s3,a0
    li      a0, 0
    sb      a2,376(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    bnez    a2, .branch_true_80
    j       .branch_false_80
.branch_true_80:
    la      a0, SHIFT_TABLE
    sw      a1,372(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,371(sp)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,297(sp)
    mv      a0, a0
    sw      a2,365(sp)
    mul     a2,a1,a0
    add     a1,a7,a2
    j       .branch_false_80
.branch_false_80:
.branch_false_77:
    sw      a0,289(sp)
    li      a0, 2
    sw      a1,273(sp)
    mv      a1, a1
    rem     a1,s3,a0
    li      a0, 0
    sw      a2,281(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    xori    a2,a2,1
    bnez    a2, .branch_true_84
    j       .branch_false_84
.branch_true_84:
    la      a0, SHIFT_TABLE
    sw      a1,241(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,240(sp)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,161(sp)
    mv      a0, a0
    sw      a2,236(sp)
    mul     a2,a1,a0
    add     a1,a7,a2
    j       .branch_false_84
.branch_false_84:
.L4_0:
.L5_0:
    sw      a0,153(sp)
    li      a0, 2
    sw      a1,137(sp)
    div     a1,s2,a0
    sw      a1,265(sp)
    div     a1,s3,a0
    li      a0, 1
    sw      a1,257(sp)
    add     a1,s1,a0
    j       .while.head_74
.while.exit_74:
    mv      a0, a7
    sw      a0,385(sp)
    li      a0, 0
    mv      a0, a0
    sw      a0,397(sp)
    mv      a0, a0
    j       .while.head_96
.while.head_96:
    sw      a0,393(sp)
    li      a0, 16
    sw      a1,249(sp)
    slt     a1,s1,a0
    bnez    a1, .while.body_96
    j       .while.exit_96
.while.body_96:
    li      a0, 2
    sb      a1,136(sp)
    mv      a1, a1
    rem     a1,s3,a0
    sw      a1,129(sp)
    mv      a1, a1
    rem     a1,s2,a0
    li      a0, 0
    sw      a2,145(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    xori    a2,a2,1
    mv      a0, a0
    sw      a1,125(sp)
    li      a1, 0
    mv      a1, a1
    sw      a0,129(sp)
    and     a0,a2,a1
    bnez    a0, .branch_true_99
    j       .branch_false_99
.branch_true_99:
    sb      a0,122(sp)
    la      a0, SHIFT_TABLE
    sb      a1,123(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,124(sp)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,49(sp)
    mv      a0, a0
    sw      a2,118(sp)
    mul     a2,a1,a0
    add     a1,a7,a2
    j       .branch_false_99
.branch_false_99:
.L6_0:
    sw      a0,41(sp)
    li      a0, 2
    sw      a1,25(sp)
    div     a1,s2,a0
    sw      a1,17(sp)
    div     a1,s3,a0
    li      a0, 1
    sw      a1,9(sp)
    add     a1,s1,a0
    j       .while.head_96
.while.exit_96:
    mv      a0, a7
    j       .L7_0
.L7_0:
    sw      a0,393(sp)
    li      a0, 1
    sw      a1,1(sp)
    li      a1, 15
    sw      a2,33(sp)
    slt     a2,a1,a0
    bnez    a2, .branch_true_107
    j       .branch_false_107
.branch_true_107:
    li      a0, 0
    j       .L13_0
.branch_false_107:
    j       .L8_0
.L8_0:
.L9_0:
.L10_0:
    j       .L11_0
.L11_0:
.L12_0:
    j       .L8_0
.L13_0:
.L14_0:
    mv      a0, a7
    mv      a1, a1
    sw      a0,393(sp)
    mv      a0, a1
    j       .while.head_67
.while.exit_67:
    j       .branch_false_62
.branch_false_62:
.L15_0:
    j       .L16_0
.L16_0:
.L17_0:
    j       .L18_0
.L18_0:
.L19_0:
.L20_0:
.L21_0:
    j       .L22_0
.L22_0:
.L23_0:
.L24_0:
    j       .L25_0
.L25_0:
.L26_0:
.L27_0:
    j       .L18_0
.L28_0:
    j       .L29_0
.L29_0:
.L30_0:
.L31_0:
    j       .L32_0
.L32_0:
.L33_0:
    j       .L29_0
.L34_0:
    j       .L35_0
.L35_0:
.L36_0:
    j       .L43_0
.L37_0:
    j       .L38_0
.L38_0:
.L39_0:
.L40_0:
    j       .L41_0
.L41_0:
.L42_0:
    j       .L38_0
.L43_0:
.L44_0:
    j       .L16_0
.L45_0:
    j       .L46_0
.L46_0:
.L47_0:
.L48_0:
    j       .L50_0
.L49_0:
    j       .L50_0
.L50_0:
.L51_0:
.L52_0:
.L53_0:
    j       .L55_0
.L54_0:
    j       .L55_0
.L55_0:
.L56_0:
    j       .L57_0
.L57_0:
.L58_0:
.L59_0:
    j       .while.head_45
.while.exit_45:
    j       .branch_false_40
.branch_false_40:
.L60_0:
    j       .L61_0
.L61_0:
.L62_0:
    j       .L63_0
.L63_0:
.L64_0:
.L65_0:
    j       .L66_0
.L66_0:
.L67_0:
    j       .L63_0
.L68_0:
.L69_0:
    j       .L70_0
.L70_0:
.L71_0:
    j       .L72_0
.L72_0:
.L73_0:
.L74_0:
.L75_0:
    j       .L76_0
.L76_0:
.L77_0:
.L78_0:
    j       .L79_0
.L79_0:
.L80_0:
.L81_0:
    j       .L72_0
.L82_0:
    j       .L83_0
.L83_0:
.L84_0:
.L85_0:
    j       .L86_0
.L86_0:
.L87_0:
    j       .L83_0
.L88_0:
    j       .L89_0
.L89_0:
.L90_0:
    j       .L97_0
.L91_0:
    j       .L92_0
.L92_0:
.L93_0:
.L94_0:
    j       .L95_0
.L95_0:
.L96_0:
    j       .L92_0
.L97_0:
.L98_0:
    j       .L70_0
.L99_0:
    j       .L100_0
.L100_0:
.L101_0:
    j       .L102_0
.L102_0:
.L103_0:
    j       .L104_0
.L104_0:
.L105_0:
.L106_0:
.L107_0:
    j       .L108_0
.L108_0:
.L109_0:
.L110_0:
    j       .L111_0
.L111_0:
.L112_0:
.L113_0:
    j       .L104_0
.L114_0:
    j       .L115_0
.L115_0:
.L116_0:
.L117_0:
    j       .L118_0
.L118_0:
.L119_0:
    j       .L115_0
.L120_0:
    j       .L121_0
.L121_0:
.L122_0:
    j       .L129_0
.L123_0:
    j       .L124_0
.L124_0:
.L125_0:
.L126_0:
    j       .L127_0
.L127_0:
.L128_0:
    j       .L124_0
.L129_0:
.L130_0:
    j       .L102_0
.L131_0:
    j       .L132_0
.L132_0:
.L133_0:
.L134_0:
    j       .L136_0
.L135_0:
    j       .L136_0
.L136_0:
.L137_0:
.L138_0:
.L139_0:
    j       .L141_0
.L140_0:
    j       .L141_0
.L141_0:
.L142_0:
    j       .L143_0
.L143_0:
.L144_0:
.L145_0:
    j       .L61_0
.L146_0:
    j       .L147_0
.L147_0:
.L148_0:
.L149_0:
    j       .L151_0
.L150_0:
    j       .L151_0
.L151_0:
.L152_0:
.L153_0:
.L154_0:
    j       .L156_0
.L155_0:
    j       .L156_0
.L156_0:
.L157_0:
    j       .L158_0
.L158_0:
.L159_0:
.L160_0:
    j       .while.head_23
.while.exit_23:
    j       .L161_0
.L161_0:
.L162_0:
    j       .L163_0
.L163_0:
.L164_0:
.L165_0:
    j       .L166_0
.L166_0:
.L167_0:
    j       .L163_0
.L168_0:
.L169_0:
    j       .L170_0
.L170_0:
.L171_0:
    j       .L172_0
.L172_0:
.L173_0:
.L174_0:
    j       .L175_0
.L175_0:
.L176_0:
    j       .L172_0
.L177_0:
.L178_0:
    j       .L179_0
.L179_0:
.L180_0:
    j       .L181_0
.L181_0:
.L182_0:
.L183_0:
.L184_0:
    j       .L185_0
.L185_0:
.L186_0:
.L187_0:
    j       .L188_0
.L188_0:
.L189_0:
.L190_0:
    j       .L181_0
.L191_0:
    j       .L192_0
.L192_0:
.L193_0:
.L194_0:
    j       .L195_0
.L195_0:
.L196_0:
    j       .L192_0
.L197_0:
    j       .L198_0
.L198_0:
.L199_0:
    j       .L206_0
.L200_0:
    j       .L201_0
.L201_0:
.L202_0:
.L203_0:
    j       .L204_0
.L204_0:
.L205_0:
    j       .L201_0
.L206_0:
.L207_0:
    j       .L179_0
.L208_0:
    j       .L209_0
.L209_0:
.L210_0:
    j       .L211_0
.L211_0:
.L212_0:
    j       .L213_0
.L213_0:
.L214_0:
.L215_0:
.L216_0:
    j       .L217_0
.L217_0:
.L218_0:
.L219_0:
    j       .L220_0
.L220_0:
.L221_0:
.L222_0:
    j       .L213_0
.L223_0:
    j       .L224_0
.L224_0:
.L225_0:
.L226_0:
    j       .L227_0
.L227_0:
.L228_0:
    j       .L224_0
.L229_0:
    j       .L230_0
.L230_0:
.L231_0:
    j       .L238_0
.L232_0:
    j       .L233_0
.L233_0:
.L234_0:
.L235_0:
    j       .L236_0
.L236_0:
.L237_0:
    j       .L233_0
.L238_0:
.L239_0:
    j       .L211_0
.L240_0:
    j       .L241_0
.L241_0:
.L242_0:
.L243_0:
    j       .L245_0
.L244_0:
    j       .L245_0
.L245_0:
.L246_0:
.L247_0:
.L248_0:
    j       .L250_0
.L249_0:
    j       .L250_0
.L250_0:
.L251_0:
    j       .L252_0
.L252_0:
.L253_0:
.L254_0:
    j       .L170_0
.L255_0:
    j       .L256_0
.L256_0:
.L257_0:
    j       .L258_0
.L258_0:
.L259_0:
    j       .L260_0
.L260_0:
.L261_0:
.L262_0:
    j       .L263_0
.L263_0:
.L264_0:
    j       .L260_0
.L265_0:
.L266_0:
    j       .L267_0
.L267_0:
.L268_0:
    j       .L269_0
.L269_0:
.L270_0:
.L271_0:
.L272_0:
    j       .L273_0
.L273_0:
.L274_0:
.L275_0:
    j       .L276_0
.L276_0:
.L277_0:
.L278_0:
    j       .L269_0
.L279_0:
    j       .L280_0
.L280_0:
.L281_0:
.L282_0:
    j       .L283_0
.L283_0:
.L284_0:
    j       .L280_0
.L285_0:
    j       .L286_0
.L286_0:
.L287_0:
    j       .L294_0
.L288_0:
    j       .L289_0
.L289_0:
.L290_0:
.L291_0:
    j       .L292_0
.L292_0:
.L293_0:
    j       .L289_0
.L294_0:
.L295_0:
    j       .L267_0
.L296_0:
    j       .L297_0
.L297_0:
.L298_0:
    j       .L299_0
.L299_0:
.L300_0:
    j       .L301_0
.L301_0:
.L302_0:
.L303_0:
.L304_0:
    j       .L305_0
.L305_0:
.L306_0:
.L307_0:
    j       .L308_0
.L308_0:
.L309_0:
.L310_0:
    j       .L301_0
.L311_0:
    j       .L312_0
.L312_0:
.L313_0:
.L314_0:
    j       .L315_0
.L315_0:
.L316_0:
    j       .L312_0
.L317_0:
    j       .L318_0
.L318_0:
.L319_0:
    j       .L326_0
.L320_0:
    j       .L321_0
.L321_0:
.L322_0:
.L323_0:
    j       .L324_0
.L324_0:
.L325_0:
    j       .L321_0
.L326_0:
.L327_0:
    j       .L299_0
.L328_0:
    j       .L329_0
.L329_0:
.L330_0:
.L331_0:
    j       .L333_0
.L332_0:
    j       .L333_0
.L333_0:
.L334_0:
.L335_0:
.L336_0:
    j       .L338_0
.L337_0:
    j       .L338_0
.L338_0:
.L339_0:
    j       .L340_0
.L340_0:
.L341_0:
.L342_0:
    j       .L258_0
.L343_0:
    j       .L344_0
.L344_0:
.L345_0:
.L346_0:
    j       .L348_0
.L347_0:
    j       .L348_0
.L348_0:
.L349_0:
.L350_0:
.L351_0:
    j       .L353_0
.L352_0:
    j       .L353_0
.L353_0:
.L354_0:
    j       .L355_0
.L355_0:
.L356_0:
.L357_0:
    j       .L161_0
.L358_0:
    j       .L359_0
.L359_0:
.L360_0:
    j       .L361_0
.L361_0:
.L362_0:
    j       .L363_0
.L363_0:
.L364_0:
.L365_0:
    j       .L366_0
.L366_0:
.L367_0:
    j       .L363_0
.L368_0:
.L369_0:
    j       .L370_0
.L370_0:
.L371_0:
    j       .L372_0
.L372_0:
.L373_0:
.L374_0:
    j       .L375_0
.L375_0:
.L376_0:
    j       .L372_0
.L377_0:
.L378_0:
    j       .L379_0
.L379_0:
.L380_0:
    j       .L381_0
.L381_0:
.L382_0:
.L383_0:
.L384_0:
    j       .L385_0
.L385_0:
.L386_0:
.L387_0:
    j       .L388_0
.L388_0:
.L389_0:
.L390_0:
    j       .L381_0
.L391_0:
    j       .L392_0
.L392_0:
.L393_0:
.L394_0:
    j       .L395_0
.L395_0:
.L396_0:
    j       .L392_0
.L397_0:
    j       .L398_0
.L398_0:
.L399_0:
    j       .L406_0
.L400_0:
    j       .L401_0
.L401_0:
.L402_0:
.L403_0:
    j       .L404_0
.L404_0:
.L405_0:
    j       .L401_0
.L406_0:
.L407_0:
    j       .L379_0
.L408_0:
    j       .L409_0
.L409_0:
.L410_0:
    j       .L411_0
.L411_0:
.L412_0:
    j       .L413_0
.L413_0:
.L414_0:
.L415_0:
.L416_0:
    j       .L417_0
.L417_0:
.L418_0:
.L419_0:
    j       .L420_0
.L420_0:
.L421_0:
.L422_0:
    j       .L413_0
.L423_0:
    j       .L424_0
.L424_0:
.L425_0:
.L426_0:
    j       .L427_0
.L427_0:
.L428_0:
    j       .L424_0
.L429_0:
    j       .L430_0
.L430_0:
.L431_0:
    j       .L438_0
.L432_0:
    j       .L433_0
.L433_0:
.L434_0:
.L435_0:
    j       .L436_0
.L436_0:
.L437_0:
    j       .L433_0
.L438_0:
.L439_0:
    j       .L411_0
.L440_0:
    j       .L441_0
.L441_0:
.L442_0:
.L443_0:
    j       .L445_0
.L444_0:
    j       .L445_0
.L445_0:
.L446_0:
.L447_0:
.L448_0:
    j       .L450_0
.L449_0:
    j       .L450_0
.L450_0:
.L451_0:
    j       .L452_0
.L452_0:
.L453_0:
.L454_0:
    j       .L370_0
.L455_0:
    j       .L456_0
.L456_0:
.L457_0:
    j       .L458_0
.L458_0:
.L459_0:
    j       .L460_0
.L460_0:
.L461_0:
.L462_0:
    j       .L463_0
.L463_0:
.L464_0:
    j       .L460_0
.L465_0:
.L466_0:
    j       .L467_0
.L467_0:
.L468_0:
    j       .L469_0
.L469_0:
.L470_0:
.L471_0:
.L472_0:
    j       .L473_0
.L473_0:
.L474_0:
.L475_0:
    j       .L476_0
.L476_0:
.L477_0:
.L478_0:
    j       .L469_0
.L479_0:
    j       .L480_0
.L480_0:
.L481_0:
.L482_0:
    j       .L483_0
.L483_0:
.L484_0:
    j       .L480_0
.L485_0:
    j       .L486_0
.L486_0:
.L487_0:
    j       .L494_0
.L488_0:
    j       .L489_0
.L489_0:
.L490_0:
.L491_0:
    j       .L492_0
.L492_0:
.L493_0:
    j       .L489_0
.L494_0:
.L495_0:
    j       .L467_0
.L496_0:
    j       .L497_0
.L497_0:
.L498_0:
    j       .L499_0
.L499_0:
.L500_0:
    j       .L501_0
.L501_0:
.L502_0:
.L503_0:
.L504_0:
    j       .L505_0
.L505_0:
.L506_0:
.L507_0:
    j       .L508_0
.L508_0:
.L509_0:
.L510_0:
    j       .L501_0
.L511_0:
    j       .L512_0
.L512_0:
.L513_0:
.L514_0:
    j       .L515_0
.L515_0:
.L516_0:
    j       .L512_0
.L517_0:
    j       .L518_0
.L518_0:
.L519_0:
    j       .L526_0
.L520_0:
    j       .L521_0
.L521_0:
.L522_0:
.L523_0:
    j       .L524_0
.L524_0:
.L525_0:
    j       .L521_0
.L526_0:
.L527_0:
    j       .L499_0
.L528_0:
    j       .L529_0
.L529_0:
.L530_0:
.L531_0:
    j       .L533_0
.L532_0:
    j       .L533_0
.L533_0:
.L534_0:
.L535_0:
.L536_0:
    j       .L538_0
.L537_0:
    j       .L538_0
.L538_0:
.L539_0:
    j       .L540_0
.L540_0:
.L541_0:
.L542_0:
    j       .L458_0
.L543_0:
    j       .L544_0
.L544_0:
.L545_0:
.L546_0:
    j       .L548_0
.L547_0:
    j       .L548_0
.L548_0:
.L549_0:
.L550_0:
.L551_0:
    j       .L553_0
.L552_0:
    j       .L553_0
.L553_0:
.L554_0:
    j       .L555_0
.L555_0:
.L556_0:
.L557_0:
    j       .L361_0
.L558_0:
    j       .L359_0
.L559_0:
    j       .L560_0
.L560_0:
.L561_0:
    j       .L562_0
.L562_0:
.L563_0:
    j       .L564_0
.L564_0:
.L565_0:
.L566_0:
    j       .L567_0
.L567_0:
.L568_0:
    j       .L564_0
.L569_0:
.L570_0:
    j       .L571_0
.L571_0:
.L572_0:
    j       .L573_0
.L573_0:
.L574_0:
.L575_0:
    j       .L576_0
.L576_0:
.L577_0:
    j       .L573_0
.L578_0:
.L579_0:
    j       .L580_0
.L580_0:
.L581_0:
    j       .L582_0
.L582_0:
.L583_0:
.L584_0:
.L585_0:
    j       .L586_0
.L586_0:
.L587_0:
.L588_0:
    j       .L589_0
.L589_0:
.L590_0:
.L591_0:
    j       .L582_0
.L592_0:
    j       .L593_0
.L593_0:
.L594_0:
.L595_0:
    j       .L596_0
.L596_0:
.L597_0:
    j       .L593_0
.L598_0:
    j       .L599_0
.L599_0:
.L600_0:
    j       .L607_0
.L601_0:
    j       .L602_0
.L602_0:
.L603_0:
.L604_0:
    j       .L605_0
.L605_0:
.L606_0:
    j       .L602_0
.L607_0:
.L608_0:
    j       .L580_0
.L609_0:
    j       .L610_0
.L610_0:
.L611_0:
    j       .L612_0
.L612_0:
.L613_0:
    j       .L614_0
.L614_0:
.L615_0:
.L616_0:
.L617_0:
    j       .L618_0
.L618_0:
.L619_0:
.L620_0:
    j       .L621_0
.L621_0:
.L622_0:
.L623_0:
    j       .L614_0
.L624_0:
    j       .L625_0
.L625_0:
.L626_0:
.L627_0:
    j       .L628_0
.L628_0:
.L629_0:
    j       .L625_0
.L630_0:
    j       .L631_0
.L631_0:
.L632_0:
    j       .L639_0
.L633_0:
    j       .L634_0
.L634_0:
.L635_0:
.L636_0:
    j       .L637_0
.L637_0:
.L638_0:
    j       .L634_0
.L639_0:
.L640_0:
    j       .L612_0
.L641_0:
    j       .L642_0
.L642_0:
.L643_0:
.L644_0:
    j       .L646_0
.L645_0:
    j       .L646_0
.L646_0:
.L647_0:
.L648_0:
.L649_0:
    j       .L651_0
.L650_0:
    j       .L651_0
.L651_0:
.L652_0:
    j       .L653_0
.L653_0:
.L654_0:
.L655_0:
    j       .L571_0
.L656_0:
    j       .L657_0
.L657_0:
.L658_0:
    j       .L659_0
.L659_0:
.L660_0:
    j       .L661_0
.L661_0:
.L662_0:
.L663_0:
    j       .L664_0
.L664_0:
.L665_0:
    j       .L661_0
.L666_0:
.L667_0:
    j       .L668_0
.L668_0:
.L669_0:
    j       .L670_0
.L670_0:
.L671_0:
.L672_0:
.L673_0:
    j       .L674_0
.L674_0:
.L675_0:
.L676_0:
    j       .L677_0
.L677_0:
.L678_0:
.L679_0:
    j       .L670_0
.L680_0:
    j       .L681_0
.L681_0:
.L682_0:
.L683_0:
    j       .L684_0
.L684_0:
.L685_0:
    j       .L681_0
.L686_0:
    j       .L687_0
.L687_0:
.L688_0:
    j       .L695_0
.L689_0:
    j       .L690_0
.L690_0:
.L691_0:
.L692_0:
    j       .L693_0
.L693_0:
.L694_0:
    j       .L690_0
.L695_0:
.L696_0:
    j       .L668_0
.L697_0:
    j       .L698_0
.L698_0:
.L699_0:
    j       .L700_0
.L700_0:
.L701_0:
    j       .L702_0
.L702_0:
.L703_0:
.L704_0:
.L705_0:
    j       .L706_0
.L706_0:
.L707_0:
.L708_0:
    j       .L709_0
.L709_0:
.L710_0:
.L711_0:
    j       .L702_0
.L712_0:
    j       .L713_0
.L713_0:
.L714_0:
.L715_0:
    j       .L716_0
.L716_0:
.L717_0:
    j       .L713_0
.L718_0:
    j       .L719_0
.L719_0:
.L720_0:
    j       .L727_0
.L721_0:
    j       .L722_0
.L722_0:
.L723_0:
.L724_0:
    j       .L725_0
.L725_0:
.L726_0:
    j       .L722_0
.L727_0:
.L728_0:
    j       .L700_0
.L729_0:
    j       .L730_0
.L730_0:
.L731_0:
.L732_0:
    j       .L734_0
.L733_0:
    j       .L734_0
.L734_0:
.L735_0:
.L736_0:
.L737_0:
    j       .L739_0
.L738_0:
    j       .L739_0
.L739_0:
.L740_0:
    j       .L741_0
.L741_0:
.L742_0:
.L743_0:
    j       .L659_0
.L744_0:
    j       .L745_0
.L745_0:
.L746_0:
.L747_0:
    j       .L749_0
.L748_0:
    j       .L749_0
.L749_0:
.L750_0:
.L751_0:
.L752_0:
    j       .L754_0
.L753_0:
    j       .L754_0
.L754_0:
.L755_0:
    j       .L756_0
.L756_0:
.L757_0:
.L758_0:
    j       .L562_0
.L759_0:
    j       .L760_0
.L760_0:
.L761_0:
    j       .L762_0
.L762_0:
.L763_0:
    j       .L560_0
.L764_0:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,8(sp)
    addi    s0,sp,32
.L0_0:
.section        .data
    .align 4
    .globl SHIFT_TABLE
    .type SHIFT_TABLE,@object
SHIFT_TABLE:
    .word 1
    .word 2
    .word 4
    .word 8
    .word 16
    .word 32
    .word 64
    .word 128
    .word 256
    .word 512
    .word 1024
    .word 2048
    .word 4096
    .word 8192
    .word 16384
    .word 32768
    .zero 49
