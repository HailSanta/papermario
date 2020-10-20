.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024137C
/* 9B7CFC 8024137C 27BDFF88 */  addiu     $sp, $sp, -0x78
/* 9B7D00 80241380 AFB3004C */  sw        $s3, 0x4c($sp)
/* 9B7D04 80241384 0080982D */  daddu     $s3, $a0, $zero
/* 9B7D08 80241388 AFBF0054 */  sw        $ra, 0x54($sp)
/* 9B7D0C 8024138C AFB40050 */  sw        $s4, 0x50($sp)
/* 9B7D10 80241390 AFB20048 */  sw        $s2, 0x48($sp)
/* 9B7D14 80241394 AFB10044 */  sw        $s1, 0x44($sp)
/* 9B7D18 80241398 AFB00040 */  sw        $s0, 0x40($sp)
/* 9B7D1C 8024139C F7BA0070 */  sdc1      $f26, 0x70($sp)
/* 9B7D20 802413A0 F7B80068 */  sdc1      $f24, 0x68($sp)
/* 9B7D24 802413A4 F7B60060 */  sdc1      $f22, 0x60($sp)
/* 9B7D28 802413A8 F7B40058 */  sdc1      $f20, 0x58($sp)
/* 9B7D2C 802413AC 8E710148 */  lw        $s1, 0x148($s3)
/* 9B7D30 802413B0 00A0902D */  daddu     $s2, $a1, $zero
/* 9B7D34 802413B4 86240008 */  lh        $a0, 8($s1)
/* 9B7D38 802413B8 0C00EABB */  jal       get_npc_unsafe
/* 9B7D3C 802413BC 00C0A02D */   daddu    $s4, $a2, $zero
/* 9B7D40 802413C0 0040802D */  daddu     $s0, $v0, $zero
/* 9B7D44 802413C4 C6200078 */  lwc1      $f0, 0x78($s1)
/* 9B7D48 802413C8 46800020 */  cvt.s.w   $f0, $f0
/* 9B7D4C 802413CC 46000021 */  cvt.d.s   $f0, $f0
/* 9B7D50 802413D0 3C014059 */  lui       $at, 0x4059
/* 9B7D54 802413D4 44811800 */  mtc1      $at, $f3
/* 9B7D58 802413D8 44801000 */  mtc1      $zero, $f2
/* 9B7D5C 802413DC 8602008E */  lh        $v0, 0x8e($s0)
/* 9B7D60 802413E0 9603008E */  lhu       $v1, 0x8e($s0)
/* 9B7D64 802413E4 46220003 */  div.d     $f0, $f0, $f2
/* 9B7D68 802413E8 46200620 */  cvt.s.d   $f24, $f0
/* 9B7D6C 802413EC C6200088 */  lwc1      $f0, 0x88($s1)
/* 9B7D70 802413F0 46800020 */  cvt.s.w   $f0, $f0
/* 9B7D74 802413F4 46000021 */  cvt.d.s   $f0, $f0
/* 9B7D78 802413F8 46220003 */  div.d     $f0, $f0, $f2
/* 9B7D7C 802413FC 46200020 */  cvt.s.d   $f0, $f0
/* 9B7D80 80241400 18400003 */  blez      $v0, .L80241410
/* 9B7D84 80241404 4600C680 */   add.s    $f26, $f24, $f0
/* 9B7D88 80241408 2462FFFF */  addiu     $v0, $v1, -1
/* 9B7D8C 8024140C A602008E */  sh        $v0, 0x8e($s0)
.L80241410:
/* 9B7D90 80241410 8E220070 */  lw        $v0, 0x70($s1)
/* 9B7D94 80241414 18400034 */  blez      $v0, .L802414E8
/* 9B7D98 80241418 00000000 */   nop      
/* 9B7D9C 8024141C C62C0074 */  lwc1      $f12, 0x74($s1)
/* 9B7DA0 80241420 46806320 */  cvt.s.w   $f12, $f12
/* 9B7DA4 80241424 44820000 */  mtc1      $v0, $f0
/* 9B7DA8 80241428 00000000 */  nop       
/* 9B7DAC 8024142C 46800020 */  cvt.s.w   $f0, $f0
/* 9B7DB0 80241430 46000021 */  cvt.d.s   $f0, $f0
/* 9B7DB4 80241434 46220003 */  div.d     $f0, $f0, $f2
/* 9B7DB8 80241438 0C00A8BB */  jal       sin_deg
/* 9B7DBC 8024143C 462005A0 */   cvt.s.d  $f22, $f0
/* 9B7DC0 80241440 8E020000 */  lw        $v0, ($s0)
/* 9B7DC4 80241444 30420008 */  andi      $v0, $v0, 8
/* 9B7DC8 80241448 10400003 */  beqz      $v0, .L80241458
/* 9B7DCC 8024144C 46000506 */   mov.s    $f20, $f0
/* 9B7DD0 80241450 08090526 */  j         .L80241498
/* 9B7DD4 80241454 0000102D */   daddu    $v0, $zero, $zero
.L80241458:
/* 9B7DD8 80241458 27A50028 */  addiu     $a1, $sp, 0x28
/* 9B7DDC 8024145C 27A6002C */  addiu     $a2, $sp, 0x2c
/* 9B7DE0 80241460 C6000038 */  lwc1      $f0, 0x38($s0)
/* 9B7DE4 80241464 C602003C */  lwc1      $f2, 0x3c($s0)
/* 9B7DE8 80241468 C6040040 */  lwc1      $f4, 0x40($s0)
/* 9B7DEC 8024146C 3C01447A */  lui       $at, 0x447a
/* 9B7DF0 80241470 44813000 */  mtc1      $at, $f6
/* 9B7DF4 80241474 27A20034 */  addiu     $v0, $sp, 0x34
/* 9B7DF8 80241478 E7A00028 */  swc1      $f0, 0x28($sp)
/* 9B7DFC 8024147C E7A2002C */  swc1      $f2, 0x2c($sp)
/* 9B7E00 80241480 E7A40030 */  swc1      $f4, 0x30($sp)
/* 9B7E04 80241484 E7A60034 */  swc1      $f6, 0x34($sp)
/* 9B7E08 80241488 AFA20010 */  sw        $v0, 0x10($sp)
/* 9B7E0C 8024148C 8E040080 */  lw        $a0, 0x80($s0)
/* 9B7E10 80241490 0C0372DF */  jal       func_800DCB7C
/* 9B7E14 80241494 27A70030 */   addiu    $a3, $sp, 0x30
.L80241498:
/* 9B7E18 80241498 10400007 */  beqz      $v0, .L802414B8
/* 9B7E1C 8024149C 00000000 */   nop      
/* 9B7E20 802414A0 4616A082 */  mul.s     $f2, $f20, $f22
/* 9B7E24 802414A4 00000000 */  nop       
/* 9B7E28 802414A8 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 9B7E2C 802414AC 46180000 */  add.s     $f0, $f0, $f24
/* 9B7E30 802414B0 08090531 */  j         .L802414C4
/* 9B7E34 802414B4 46020000 */   add.s    $f0, $f0, $f2
.L802414B8:
/* 9B7E38 802414B8 4616A002 */  mul.s     $f0, $f20, $f22
/* 9B7E3C 802414BC 00000000 */  nop       
/* 9B7E40 802414C0 4600D000 */  add.s     $f0, $f26, $f0
.L802414C4:
/* 9B7E44 802414C4 E600003C */  swc1      $f0, 0x3c($s0)
/* 9B7E48 802414C8 8E220074 */  lw        $v0, 0x74($s1)
/* 9B7E4C 802414CC 2442000A */  addiu     $v0, $v0, 0xa
/* 9B7E50 802414D0 44826000 */  mtc1      $v0, $f12
/* 9B7E54 802414D4 00000000 */  nop       
/* 9B7E58 802414D8 0C00A6C9 */  jal       clamp_angle
/* 9B7E5C 802414DC 46806320 */   cvt.s.w  $f12, $f12
/* 9B7E60 802414E0 4600020D */  trunc.w.s $f8, $f0
/* 9B7E64 802414E4 E6280074 */  swc1      $f8, 0x74($s1)
.L802414E8:
/* 9B7E68 802414E8 8E220090 */  lw        $v0, 0x90($s1)
/* 9B7E6C 802414EC 1C400040 */  bgtz      $v0, .L802415F0
/* 9B7E70 802414F0 2442FFFF */   addiu    $v0, $v0, -1
/* 9B7E74 802414F4 860200A8 */  lh        $v0, 0xa8($s0)
/* 9B7E78 802414F8 C600003C */  lwc1      $f0, 0x3c($s0)
/* 9B7E7C 802414FC 44821000 */  mtc1      $v0, $f2
/* 9B7E80 80241500 00000000 */  nop       
/* 9B7E84 80241504 468010A0 */  cvt.s.w   $f2, $f2
/* 9B7E88 80241508 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 9B7E8C 8024150C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 9B7E90 80241510 46020000 */  add.s     $f0, $f0, $f2
/* 9B7E94 80241514 3C014024 */  lui       $at, 0x4024
/* 9B7E98 80241518 44812800 */  mtc1      $at, $f5
/* 9B7E9C 8024151C 44802000 */  mtc1      $zero, $f4
/* 9B7EA0 80241520 C442002C */  lwc1      $f2, 0x2c($v0)
/* 9B7EA4 80241524 46000021 */  cvt.d.s   $f0, $f0
/* 9B7EA8 80241528 46240000 */  add.d     $f0, $f0, $f4
/* 9B7EAC 8024152C 460010A1 */  cvt.d.s   $f2, $f2
/* 9B7EB0 80241530 4620103C */  c.lt.d    $f2, $f0
/* 9B7EB4 80241534 00000000 */  nop       
/* 9B7EB8 80241538 4500002E */  bc1f      .L802415F4
/* 9B7EBC 8024153C 0280202D */   daddu    $a0, $s4, $zero
/* 9B7EC0 80241540 24020001 */  addiu     $v0, $zero, 1
/* 9B7EC4 80241544 AFA20010 */  sw        $v0, 0x10($sp)
/* 9B7EC8 80241548 8E460024 */  lw        $a2, 0x24($s2)
/* 9B7ECC 8024154C 8E470028 */  lw        $a3, 0x28($s2)
/* 9B7ED0 80241550 0C01242D */  jal       func_800490B4
/* 9B7ED4 80241554 0220282D */   daddu    $a1, $s1, $zero
/* 9B7ED8 80241558 10400026 */  beqz      $v0, .L802415F4
/* 9B7EDC 8024155C 0000202D */   daddu    $a0, $zero, $zero
/* 9B7EE0 80241560 0200282D */  daddu     $a1, $s0, $zero
/* 9B7EE4 80241564 0000302D */  daddu     $a2, $zero, $zero
/* 9B7EE8 80241568 2412000C */  addiu     $s2, $zero, 0xc
/* 9B7EEC 8024156C 860300A8 */  lh        $v1, 0xa8($s0)
/* 9B7EF0 80241570 3C013F80 */  lui       $at, 0x3f80
/* 9B7EF4 80241574 44810000 */  mtc1      $at, $f0
/* 9B7EF8 80241578 3C014000 */  lui       $at, 0x4000
/* 9B7EFC 8024157C 44811000 */  mtc1      $at, $f2
/* 9B7F00 80241580 3C01C1A0 */  lui       $at, 0xc1a0
/* 9B7F04 80241584 44812000 */  mtc1      $at, $f4
/* 9B7F08 80241588 44834000 */  mtc1      $v1, $f8
/* 9B7F0C 8024158C 00000000 */  nop       
/* 9B7F10 80241590 46804220 */  cvt.s.w   $f8, $f8
/* 9B7F14 80241594 44074000 */  mfc1      $a3, $f8
/* 9B7F18 80241598 27A20038 */  addiu     $v0, $sp, 0x38
/* 9B7F1C 8024159C AFB2001C */  sw        $s2, 0x1c($sp)
/* 9B7F20 802415A0 AFA20020 */  sw        $v0, 0x20($sp)
/* 9B7F24 802415A4 E7A00010 */  swc1      $f0, 0x10($sp)
/* 9B7F28 802415A8 E7A20014 */  swc1      $f2, 0x14($sp)
/* 9B7F2C 802415AC 0C01BFA4 */  jal       fx_emote
/* 9B7F30 802415B0 E7A40018 */   swc1     $f4, 0x18($sp)
/* 9B7F34 802415B4 0200202D */  daddu     $a0, $s0, $zero
/* 9B7F38 802415B8 240502F4 */  addiu     $a1, $zero, 0x2f4
/* 9B7F3C 802415BC C480003C */  lwc1      $f0, 0x3c($a0)
/* 9B7F40 802415C0 3C060020 */  lui       $a2, 0x20
/* 9B7F44 802415C4 0C012530 */  jal       func_800494C0
/* 9B7F48 802415C8 E4800064 */   swc1     $f0, 0x64($a0)
/* 9B7F4C 802415CC 8E220018 */  lw        $v0, 0x18($s1)
/* 9B7F50 802415D0 9442002A */  lhu       $v0, 0x2a($v0)
/* 9B7F54 802415D4 30420001 */  andi      $v0, $v0, 1
/* 9B7F58 802415D8 10400003 */  beqz      $v0, .L802415E8
/* 9B7F5C 802415DC 2402000A */   addiu    $v0, $zero, 0xa
/* 9B7F60 802415E0 080905A4 */  j         .L80241690
/* 9B7F64 802415E4 AE620070 */   sw       $v0, 0x70($s3)
.L802415E8:
/* 9B7F68 802415E8 080905A4 */  j         .L80241690
/* 9B7F6C 802415EC AE720070 */   sw       $s2, 0x70($s3)
.L802415F0:
/* 9B7F70 802415F0 AE220090 */  sw        $v0, 0x90($s1)
.L802415F4:
/* 9B7F74 802415F4 8602008C */  lh        $v0, 0x8c($s0)
/* 9B7F78 802415F8 14400025 */  bnez      $v0, .L80241690
/* 9B7F7C 802415FC 00000000 */   nop      
/* 9B7F80 80241600 8602008E */  lh        $v0, 0x8e($s0)
/* 9B7F84 80241604 1C400022 */  bgtz      $v0, .L80241690
/* 9B7F88 80241608 00000000 */   nop      
/* 9B7F8C 8024160C 8E620074 */  lw        $v0, 0x74($s3)
/* 9B7F90 80241610 2442FFFF */  addiu     $v0, $v0, -1
/* 9B7F94 80241614 1840001D */  blez      $v0, .L8024168C
/* 9B7F98 80241618 AE620074 */   sw       $v0, 0x74($s3)
/* 9B7F9C 8024161C 8E220018 */  lw        $v0, 0x18($s1)
/* 9B7FA0 80241620 9442002A */  lhu       $v0, 0x2a($v0)
/* 9B7FA4 80241624 30420010 */  andi      $v0, $v0, 0x10
/* 9B7FA8 80241628 14400007 */  bnez      $v0, .L80241648
/* 9B7FAC 8024162C 00000000 */   nop      
/* 9B7FB0 80241630 C600000C */  lwc1      $f0, 0xc($s0)
/* 9B7FB4 80241634 3C014334 */  lui       $at, 0x4334
/* 9B7FB8 80241638 44816000 */  mtc1      $at, $f12
/* 9B7FBC 8024163C 0C00A6C9 */  jal       clamp_angle
/* 9B7FC0 80241640 460C0300 */   add.s    $f12, $f0, $f12
/* 9B7FC4 80241644 E600000C */  swc1      $f0, 0xc($s0)
.L80241648:
/* 9B7FC8 80241648 0C00A67F */  jal       rand_int
/* 9B7FCC 8024164C 240403E8 */   addiu    $a0, $zero, 0x3e8
/* 9B7FD0 80241650 3C032E8B */  lui       $v1, 0x2e8b
/* 9B7FD4 80241654 3463A2E9 */  ori       $v1, $v1, 0xa2e9
/* 9B7FD8 80241658 00430018 */  mult      $v0, $v1
/* 9B7FDC 8024165C 00021FC3 */  sra       $v1, $v0, 0x1f
/* 9B7FE0 80241660 00004010 */  mfhi      $t0
/* 9B7FE4 80241664 00082043 */  sra       $a0, $t0, 1
/* 9B7FE8 80241668 00832023 */  subu      $a0, $a0, $v1
/* 9B7FEC 8024166C 00041840 */  sll       $v1, $a0, 1
/* 9B7FF0 80241670 00641821 */  addu      $v1, $v1, $a0
/* 9B7FF4 80241674 00031880 */  sll       $v1, $v1, 2
/* 9B7FF8 80241678 00641823 */  subu      $v1, $v1, $a0
/* 9B7FFC 8024167C 00431023 */  subu      $v0, $v0, $v1
/* 9B8000 80241680 24420005 */  addiu     $v0, $v0, 5
/* 9B8004 80241684 080905A4 */  j         .L80241690
/* 9B8008 80241688 A602008E */   sh       $v0, 0x8e($s0)
.L8024168C:
/* 9B800C 8024168C AE600070 */  sw        $zero, 0x70($s3)
.L80241690:
/* 9B8010 80241690 8FBF0054 */  lw        $ra, 0x54($sp)
/* 9B8014 80241694 8FB40050 */  lw        $s4, 0x50($sp)
/* 9B8018 80241698 8FB3004C */  lw        $s3, 0x4c($sp)
/* 9B801C 8024169C 8FB20048 */  lw        $s2, 0x48($sp)
/* 9B8020 802416A0 8FB10044 */  lw        $s1, 0x44($sp)
/* 9B8024 802416A4 8FB00040 */  lw        $s0, 0x40($sp)
/* 9B8028 802416A8 D7BA0070 */  ldc1      $f26, 0x70($sp)
/* 9B802C 802416AC D7B80068 */  ldc1      $f24, 0x68($sp)
/* 9B8030 802416B0 D7B60060 */  ldc1      $f22, 0x60($sp)
/* 9B8034 802416B4 D7B40058 */  ldc1      $f20, 0x58($sp)
/* 9B8038 802416B8 03E00008 */  jr        $ra
/* 9B803C 802416BC 27BD0078 */   addiu    $sp, $sp, 0x78
