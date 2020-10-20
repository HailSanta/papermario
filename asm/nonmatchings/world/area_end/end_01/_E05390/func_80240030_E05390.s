.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240030_E05390
/* E05390 80240030 27BDFF38 */  addiu     $sp, $sp, -0xc8
/* E05394 80240034 AFB00088 */  sw        $s0, 0x88($sp)
/* E05398 80240038 00A0802D */  daddu     $s0, $a1, $zero
/* E0539C 8024003C AFBF00A0 */  sw        $ra, 0xa0($sp)
/* E053A0 80240040 AFB5009C */  sw        $s5, 0x9c($sp)
/* E053A4 80240044 AFB40098 */  sw        $s4, 0x98($sp)
/* E053A8 80240048 AFB30094 */  sw        $s3, 0x94($sp)
/* E053AC 8024004C AFB20090 */  sw        $s2, 0x90($sp)
/* E053B0 80240050 AFB1008C */  sw        $s1, 0x8c($sp)
/* E053B4 80240054 F7BA00C0 */  sdc1      $f26, 0xc0($sp)
/* E053B8 80240058 F7B800B8 */  sdc1      $f24, 0xb8($sp)
/* E053BC 8024005C F7B600B0 */  sdc1      $f22, 0xb0($sp)
/* E053C0 80240060 F7B400A8 */  sdc1      $f20, 0xa8($sp)
/* E053C4 80240064 C6160010 */  lwc1      $f22, 0x10($s0)
/* E053C8 80240068 4680B5A0 */  cvt.s.w   $f22, $f22
/* E053CC 8024006C 4480D000 */  mtc1      $zero, $f26
/* E053D0 80240070 3C01437F */  lui       $at, 0x437f
/* E053D4 80240074 4481A000 */  mtc1      $at, $f20
/* E053D8 80240078 8C82001C */  lw        $v0, 0x1c($a0)
/* E053DC 8024007C 4405D000 */  mfc1      $a1, $f26
/* E053E0 80240080 4406A000 */  mfc1      $a2, $f20
/* E053E4 80240084 C6180014 */  lwc1      $f24, 0x14($s0)
/* E053E8 80240088 4680C620 */  cvt.s.w   $f24, $f24
/* E053EC 8024008C AFA20010 */  sw        $v0, 0x10($sp)
/* E053F0 80240090 8E070018 */  lw        $a3, 0x18($s0)
/* E053F4 80240094 0C00A8ED */  jal       update_lerp
/* E053F8 80240098 0000202D */   daddu    $a0, $zero, $zero
/* E053FC 8024009C 4600A03C */  c.lt.s    $f20, $f0
/* E05400 802400A0 00000000 */  nop       
/* E05404 802400A4 45000002 */  bc1f      .L802400B0
/* E05408 802400A8 27B10038 */   addiu    $s1, $sp, 0x38
/* E0540C 802400AC 4600A006 */  mov.s     $f0, $f20
.L802400B0:
/* E05410 802400B0 4600010D */  trunc.w.s $f4, $f0
/* E05414 802400B4 E7A40014 */  swc1      $f4, 0x14($sp)
/* E05418 802400B8 0000202D */  daddu     $a0, $zero, $zero
/* E0541C 802400BC 24050007 */  addiu     $a1, $zero, 7
/* E05420 802400C0 240600FF */  addiu     $a2, $zero, 0xff
/* E05424 802400C4 00C0382D */  daddu     $a3, $a2, $zero
/* E05428 802400C8 00C0A82D */  daddu     $s5, $a2, $zero
/* E0542C 802400CC AFB50010 */  sw        $s5, 0x10($sp)
/* E05430 802400D0 0C04EAA7 */  jal       func_8013AA9C
/* E05434 802400D4 AFA00018 */   sw       $zero, 0x18($sp)
/* E05438 802400D8 AFB10010 */  sw        $s1, 0x10($sp)
/* E0543C 802400DC 8E040004 */  lw        $a0, 4($s0)
/* E05440 802400E0 8E050008 */  lw        $a1, 8($s0)
/* E05444 802400E4 8E060000 */  lw        $a2, ($s0)
/* E05448 802400E8 8E07000C */  lw        $a3, 0xc($s0)
/* E0544C 802400EC 0C04BA38 */  jal       func_8012E8E0
/* E05450 802400F0 3C140001 */   lui      $s4, 1
/* E05454 802400F4 93A20042 */  lbu       $v0, 0x42($sp)
/* E05458 802400F8 3C013FE0 */  lui       $at, 0x3fe0
/* E0545C 802400FC 4481A800 */  mtc1      $at, $f21
/* E05460 80240100 4480A000 */  mtc1      $zero, $f20
/* E05464 80240104 44820000 */  mtc1      $v0, $f0
/* E05468 80240108 00000000 */  nop       
/* E0546C 8024010C 46800021 */  cvt.d.w   $f0, $f0
/* E05470 80240110 46340002 */  mul.d     $f0, $f0, $f20
/* E05474 80240114 00000000 */  nop       
/* E05478 80240118 36941630 */  ori       $s4, $s4, 0x1630
/* E0547C 8024011C 4600B0A1 */  cvt.d.s   $f2, $f22
/* E05480 80240120 27B00048 */  addiu     $s0, $sp, 0x48
/* E05484 80240124 4600C607 */  neg.s     $f24, $f24
/* E05488 80240128 46201080 */  add.d     $f2, $f2, $f0
/* E0548C 8024012C 4406C000 */  mfc1      $a2, $f24
/* E05490 80240130 4407D000 */  mfc1      $a3, $f26
/* E05494 80240134 462010A0 */  cvt.s.d   $f2, $f2
/* E05498 80240138 44051000 */  mfc1      $a1, $f2
/* E0549C 8024013C 0C019E40 */  jal       guTranslateF
/* E054A0 80240140 0200202D */   daddu    $a0, $s0, $zero
/* E054A4 80240144 0200202D */  daddu     $a0, $s0, $zero
/* E054A8 80240148 3C128007 */  lui       $s2, 0x8007
/* E054AC 8024014C 265241F0 */  addiu     $s2, $s2, 0x41f0
/* E054B0 80240150 3C13800A */  lui       $s3, 0x800a
/* E054B4 80240154 2673A674 */  addiu     $s3, $s3, -0x598c
/* E054B8 80240158 96450000 */  lhu       $a1, ($s2)
/* E054BC 8024015C 8E620000 */  lw        $v0, ($s3)
/* E054C0 80240160 00052980 */  sll       $a1, $a1, 6
/* E054C4 80240164 00B42821 */  addu      $a1, $a1, $s4
/* E054C8 80240168 0C019D40 */  jal       guMtxF2L
/* E054CC 8024016C 00452821 */   addu     $a1, $v0, $a1
/* E054D0 80240170 3C03DA38 */  lui       $v1, 0xda38
/* E054D4 80240174 34630002 */  ori       $v1, $v1, 2
/* E054D8 80240178 0000202D */  daddu     $a0, $zero, $zero
/* E054DC 8024017C 27A50020 */  addiu     $a1, $sp, 0x20
/* E054E0 80240180 3C060005 */  lui       $a2, 5
/* E054E4 80240184 34C60040 */  ori       $a2, $a2, 0x40
/* E054E8 80240188 3C11800A */  lui       $s1, 0x800a
/* E054EC 8024018C 2631A66C */  addiu     $s1, $s1, -0x5994
/* E054F0 80240190 0200382D */  daddu     $a3, $s0, $zero
/* E054F4 80240194 8E220000 */  lw        $v0, ($s1)
/* E054F8 80240198 96480000 */  lhu       $t0, ($s2)
/* E054FC 8024019C 0040482D */  daddu     $t1, $v0, $zero
/* E05500 802401A0 24420008 */  addiu     $v0, $v0, 8
/* E05504 802401A4 AE220000 */  sw        $v0, ($s1)
/* E05508 802401A8 3102FFFF */  andi      $v0, $t0, 0xffff
/* E0550C 802401AC 00021180 */  sll       $v0, $v0, 6
/* E05510 802401B0 00541021 */  addu      $v0, $v0, $s4
/* E05514 802401B4 AD230000 */  sw        $v1, ($t1)
/* E05518 802401B8 8E630000 */  lw        $v1, ($s3)
/* E0551C 802401BC 25080001 */  addiu     $t0, $t0, 1
/* E05520 802401C0 00621821 */  addu      $v1, $v1, $v0
/* E05524 802401C4 3C028000 */  lui       $v0, 0x8000
/* E05528 802401C8 00621821 */  addu      $v1, $v1, $v0
/* E0552C 802401CC AD230004 */  sw        $v1, 4($t1)
/* E05530 802401D0 93A20042 */  lbu       $v0, 0x42($sp)
/* E05534 802401D4 8FA3003C */  lw        $v1, 0x3c($sp)
/* E05538 802401D8 93A90040 */  lbu       $t1, 0x40($sp)
/* E0553C 802401DC 93AA0041 */  lbu       $t2, 0x41($sp)
/* E05540 802401E0 44820000 */  mtc1      $v0, $f0
/* E05544 802401E4 00000000 */  nop       
/* E05548 802401E8 46800021 */  cvt.d.w   $f0, $f0
/* E0554C 802401EC 8FA20038 */  lw        $v0, 0x38($sp)
/* E05550 802401F0 46340002 */  mul.d     $f0, $f0, $f20
/* E05554 802401F4 00000000 */  nop       
/* E05558 802401F8 A6480000 */  sh        $t0, ($s2)
/* E0555C 802401FC A7A0002E */  sh        $zero, 0x2e($sp)
/* E05560 80240200 A3B50030 */  sb        $s5, 0x30($sp)
/* E05564 80240204 AFA30024 */  sw        $v1, 0x24($sp)
/* E05568 80240208 A7A90028 */  sh        $t1, 0x28($sp)
/* E0556C 8024020C A7AA002A */  sh        $t2, 0x2a($sp)
/* E05570 80240210 AFA20020 */  sw        $v0, 0x20($sp)
/* E05574 80240214 46200007 */  neg.d     $f0, $f0
/* E05578 80240218 4620010D */  trunc.w.d $f4, $f0
/* E0557C 8024021C 44022000 */  mfc1      $v0, $f4
/* E05580 80240220 0C04EBDC */  jal       func_8013AF70
/* E05584 80240224 A7A2002C */   sh       $v0, 0x2c($sp)
/* E05588 80240228 3C04D838 */  lui       $a0, 0xd838
/* E0558C 8024022C 8E220000 */  lw        $v0, ($s1)
/* E05590 80240230 34840002 */  ori       $a0, $a0, 2
/* E05594 80240234 0040182D */  daddu     $v1, $v0, $zero
/* E05598 80240238 24420008 */  addiu     $v0, $v0, 8
/* E0559C 8024023C AE220000 */  sw        $v0, ($s1)
/* E055A0 80240240 24020040 */  addiu     $v0, $zero, 0x40
/* E055A4 80240244 AC640000 */  sw        $a0, ($v1)
/* E055A8 80240248 AC620004 */  sw        $v0, 4($v1)
/* E055AC 8024024C 8FBF00A0 */  lw        $ra, 0xa0($sp)
/* E055B0 80240250 8FB5009C */  lw        $s5, 0x9c($sp)
/* E055B4 80240254 8FB40098 */  lw        $s4, 0x98($sp)
/* E055B8 80240258 8FB30094 */  lw        $s3, 0x94($sp)
/* E055BC 8024025C 8FB20090 */  lw        $s2, 0x90($sp)
/* E055C0 80240260 8FB1008C */  lw        $s1, 0x8c($sp)
/* E055C4 80240264 8FB00088 */  lw        $s0, 0x88($sp)
/* E055C8 80240268 D7BA00C0 */  ldc1      $f26, 0xc0($sp)
/* E055CC 8024026C D7B800B8 */  ldc1      $f24, 0xb8($sp)
/* E055D0 80240270 D7B600B0 */  ldc1      $f22, 0xb0($sp)
/* E055D4 80240274 D7B400A8 */  ldc1      $f20, 0xa8($sp)
/* E055D8 80240278 03E00008 */  jr        $ra
/* E055DC 8024027C 27BD00C8 */   addiu    $sp, $sp, 0xc8
