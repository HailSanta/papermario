.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8021AB50_6266F0
/* 6266F0 8021AB50 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 6266F4 8021AB54 AFB60038 */  sw        $s6, 0x38($sp)
/* 6266F8 8021AB58 0080B02D */  daddu     $s6, $a0, $zero
/* 6266FC 8021AB5C 27A50010 */  addiu     $a1, $sp, 0x10
/* 626700 8021AB60 27A60014 */  addiu     $a2, $sp, 0x14
/* 626704 8021AB64 27A70018 */  addiu     $a3, $sp, 0x18
/* 626708 8021AB68 AFBF003C */  sw        $ra, 0x3c($sp)
/* 62670C 8021AB6C AFB50034 */  sw        $s5, 0x34($sp)
/* 626710 8021AB70 AFB40030 */  sw        $s4, 0x30($sp)
/* 626714 8021AB74 AFB3002C */  sw        $s3, 0x2c($sp)
/* 626718 8021AB78 AFB20028 */  sw        $s2, 0x28($sp)
/* 62671C 8021AB7C AFB10024 */  sw        $s1, 0x24($sp)
/* 626720 8021AB80 0C0470AC */  jal       func_8011C2B0
/* 626724 8021AB84 AFB00020 */   sw       $s0, 0x20($sp)
/* 626728 8021AB88 8FA20018 */  lw        $v0, 0x18($sp)
/* 62672C 8021AB8C 18400052 */  blez      $v0, .L8021ACD8
/* 626730 8021AB90 0000802D */   daddu    $s0, $zero, $zero
/* 626734 8021AB94 3C038023 */  lui       $v1, %hi(D_80230260)
/* 626738 8021AB98 24630260 */  addiu     $v1, $v1, %lo(D_80230260)
/* 62673C 8021AB9C 00161040 */  sll       $v0, $s6, 1
/* 626740 8021ABA0 0043A021 */  addu      $s4, $v0, $v1
/* 626744 8021ABA4 3C135555 */  lui       $s3, 0x5555
/* 626748 8021ABA8 36735556 */  ori       $s3, $s3, 0x5556
/* 62674C 8021ABAC 34158000 */  ori       $s5, $zero, 0x8000
/* 626750 8021ABB0 02130018 */  mult      $s0, $s3
.L8021ABB4:
/* 626754 8021ABB4 001097C3 */  sra       $s2, $s0, 0x1f
/* 626758 8021ABB8 00001810 */  mfhi      $v1
/* 62675C 8021ABBC 00721823 */  subu      $v1, $v1, $s2
/* 626760 8021ABC0 00031040 */  sll       $v0, $v1, 1
/* 626764 8021ABC4 00431021 */  addu      $v0, $v0, $v1
/* 626768 8021ABC8 02021023 */  subu      $v0, $s0, $v0
/* 62676C 8021ABCC 96830000 */  lhu       $v1, ($s4)
/* 626770 8021ABD0 24420001 */  addiu     $v0, $v0, 1
/* 626774 8021ABD4 00620018 */  mult      $v1, $v0
/* 626778 8021ABD8 00101100 */  sll       $v0, $s0, 4
/* 62677C 8021ABDC 00001812 */  mflo      $v1
/* 626780 8021ABE0 00702021 */  addu      $a0, $v1, $s0
/* 626784 8021ABE4 8FA30014 */  lw        $v1, 0x14($sp)
/* 626788 8021ABE8 3084FFFF */  andi      $a0, $a0, 0xffff
/* 62678C 8021ABEC 0C01917C */  jal       sins
/* 626790 8021ABF0 00628821 */   addu     $s1, $v1, $v0
/* 626794 8021ABF4 00021400 */  sll       $v0, $v0, 0x10
/* 626798 8021ABF8 00021403 */  sra       $v0, $v0, 0x10
/* 62679C 8021ABFC 00551021 */  addu      $v0, $v0, $s5
/* 6267A0 8021AC00 00021FC2 */  srl       $v1, $v0, 0x1f
/* 6267A4 8021AC04 00431021 */  addu      $v0, $v0, $v1
/* 6267A8 8021AC08 000213C0 */  sll       $v0, $v0, 0xf
/* 6267AC 8021AC0C 00021403 */  sra       $v0, $v0, 0x10
/* 6267B0 8021AC10 00021880 */  sll       $v1, $v0, 2
/* 6267B4 8021AC14 00621821 */  addu      $v1, $v1, $v0
/* 6267B8 8021AC18 00031140 */  sll       $v0, $v1, 5
/* 6267BC 8021AC1C 00431823 */  subu      $v1, $v0, $v1
/* 6267C0 8021AC20 04610002 */  bgez      $v1, .L8021AC2C
/* 6267C4 8021AC24 0060102D */   daddu    $v0, $v1, $zero
/* 6267C8 8021AC28 24627FFF */  addiu     $v0, $v1, 0x7fff
.L8021AC2C:
/* 6267CC 8021AC2C 000223C3 */  sra       $a0, $v0, 0xf
/* 6267D0 8021AC30 24820064 */  addiu     $v0, $a0, 0x64
/* 6267D4 8021AC34 A222000E */  sb        $v0, 0xe($s1)
/* 6267D8 8021AC38 24820032 */  addiu     $v0, $a0, 0x32
/* 6267DC 8021AC3C 02121823 */  subu      $v1, $s0, $s2
/* 6267E0 8021AC40 00032843 */  sra       $a1, $v1, 1
/* 6267E4 8021AC44 00B30018 */  mult      $a1, $s3
/* 6267E8 8021AC48 A222000D */  sb        $v0, 0xd($s1)
/* 6267EC 8021AC4C 96840000 */  lhu       $a0, ($s4)
/* 6267F0 8021AC50 00031FC3 */  sra       $v1, $v1, 0x1f
/* 6267F4 8021AC54 000433C2 */  srl       $a2, $a0, 0xf
/* 6267F8 8021AC58 00004810 */  mfhi      $t1
/* 6267FC 8021AC5C 01231823 */  subu      $v1, $t1, $v1
/* 626800 8021AC60 00031040 */  sll       $v0, $v1, 1
/* 626804 8021AC64 00431021 */  addu      $v0, $v0, $v1
/* 626808 8021AC68 00A22823 */  subu      $a1, $a1, $v0
/* 62680C 8021AC6C 24A50001 */  addiu     $a1, $a1, 1
/* 626810 8021AC70 00052BC0 */  sll       $a1, $a1, 0xf
/* 626814 8021AC74 00C50018 */  mult      $a2, $a1
/* 626818 8021AC78 00042382 */  srl       $a0, $a0, 0xe
/* 62681C 8021AC7C 000423C0 */  sll       $a0, $a0, 0xf
/* 626820 8021AC80 00001812 */  mflo      $v1
/* 626824 8021AC84 00642021 */  addu      $a0, $v1, $a0
/* 626828 8021AC88 00902021 */  addu      $a0, $a0, $s0
/* 62682C 8021AC8C 0C01917C */  jal       sins
/* 626830 8021AC90 3084FFFF */   andi     $a0, $a0, 0xffff
/* 626834 8021AC94 00021400 */  sll       $v0, $v0, 0x10
/* 626838 8021AC98 00021403 */  sra       $v0, $v0, 0x10
/* 62683C 8021AC9C 9223000C */  lbu       $v1, 0xc($s1)
/* 626840 8021ACA0 00551021 */  addu      $v0, $v0, $s5
/* 626844 8021ACA4 00620018 */  mult      $v1, $v0
/* 626848 8021ACA8 00001812 */  mflo      $v1
/* 62684C 8021ACAC 04610004 */  bgez      $v1, .L8021ACC0
/* 626850 8021ACB0 00031403 */   sra      $v0, $v1, 0x10
/* 626854 8021ACB4 3402FFFF */  ori       $v0, $zero, 0xffff
/* 626858 8021ACB8 00621821 */  addu      $v1, $v1, $v0
/* 62685C 8021ACBC 00031403 */  sra       $v0, $v1, 0x10
.L8021ACC0:
/* 626860 8021ACC0 A222000C */  sb        $v0, 0xc($s1)
/* 626864 8021ACC4 8FA20018 */  lw        $v0, 0x18($sp)
/* 626868 8021ACC8 26100001 */  addiu     $s0, $s0, 1
/* 62686C 8021ACCC 0202102A */  slt       $v0, $s0, $v0
/* 626870 8021ACD0 1440FFB8 */  bnez      $v0, .L8021ABB4
/* 626874 8021ACD4 02130018 */   mult     $s0, $s3
.L8021ACD8:
/* 626878 8021ACD8 3C03800A */  lui       $v1, %hi(D_8009A66C)
/* 62687C 8021ACDC 2463A66C */  addiu     $v1, $v1, %lo(D_8009A66C)
/* 626880 8021ACE0 8C620000 */  lw        $v0, ($v1)
/* 626884 8021ACE4 02C0202D */  daddu     $a0, $s6, $zero
/* 626888 8021ACE8 0040802D */  daddu     $s0, $v0, $zero
/* 62688C 8021ACEC 24420008 */  addiu     $v0, $v0, 8
/* 626890 8021ACF0 AC620000 */  sw        $v0, ($v1)
/* 626894 8021ACF4 3C02DE00 */  lui       $v0, 0xde00
/* 626898 8021ACF8 0C0470BB */  jal       func_8011C2EC
/* 62689C 8021ACFC AE020000 */   sw       $v0, ($s0)
/* 6268A0 8021AD00 AE020004 */  sw        $v0, 4($s0)
/* 6268A4 8021AD04 3C028023 */  lui       $v0, %hi(D_80230260)
/* 6268A8 8021AD08 24420260 */  addiu     $v0, $v0, %lo(D_80230260)
/* 6268AC 8021AD0C 00161840 */  sll       $v1, $s6, 1
/* 6268B0 8021AD10 00621821 */  addu      $v1, $v1, $v0
/* 6268B4 8021AD14 94620000 */  lhu       $v0, ($v1)
/* 6268B8 8021AD18 24420253 */  addiu     $v0, $v0, 0x253
/* 6268BC 8021AD1C A4620000 */  sh        $v0, ($v1)
/* 6268C0 8021AD20 8FBF003C */  lw        $ra, 0x3c($sp)
/* 6268C4 8021AD24 8FB60038 */  lw        $s6, 0x38($sp)
/* 6268C8 8021AD28 8FB50034 */  lw        $s5, 0x34($sp)
/* 6268CC 8021AD2C 8FB40030 */  lw        $s4, 0x30($sp)
/* 6268D0 8021AD30 8FB3002C */  lw        $s3, 0x2c($sp)
/* 6268D4 8021AD34 8FB20028 */  lw        $s2, 0x28($sp)
/* 6268D8 8021AD38 8FB10024 */  lw        $s1, 0x24($sp)
/* 6268DC 8021AD3C 8FB00020 */  lw        $s0, 0x20($sp)
/* 6268E0 8021AD40 03E00008 */  jr        $ra
/* 6268E4 8021AD44 27BD0040 */   addiu    $sp, $sp, 0x40
