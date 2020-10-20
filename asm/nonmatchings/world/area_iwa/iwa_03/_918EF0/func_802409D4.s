.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802409D4
/* 919584 802409D4 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 919588 802409D8 AFB30024 */  sw        $s3, 0x24($sp)
/* 91958C 802409DC 0080982D */  daddu     $s3, $a0, $zero
/* 919590 802409E0 AFBF002C */  sw        $ra, 0x2c($sp)
/* 919594 802409E4 AFB40028 */  sw        $s4, 0x28($sp)
/* 919598 802409E8 AFB20020 */  sw        $s2, 0x20($sp)
/* 91959C 802409EC AFB1001C */  sw        $s1, 0x1c($sp)
/* 9195A0 802409F0 AFB00018 */  sw        $s0, 0x18($sp)
/* 9195A4 802409F4 8E710148 */  lw        $s1, 0x148($s3)
/* 9195A8 802409F8 86240008 */  lh        $a0, 8($s1)
/* 9195AC 802409FC 0C00EABB */  jal       get_npc_unsafe
/* 9195B0 80240A00 00A0A02D */   daddu    $s4, $a1, $zero
/* 9195B4 80240A04 0040802D */  daddu     $s0, $v0, $zero
/* 9195B8 80240A08 3C12800F */  lui       $s2, %hi(gPlayerStatusPtr)
/* 9195BC 80240A0C 26527B30 */  addiu     $s2, $s2, %lo(gPlayerStatusPtr)
/* 9195C0 80240A10 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 9195C4 80240A14 8E420000 */  lw        $v0, ($s2)
/* 9195C8 80240A18 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 9195CC 80240A1C 8C460028 */  lw        $a2, 0x28($v0)
/* 9195D0 80240A20 0C00A720 */  jal       atan2
/* 9195D4 80240A24 8C470030 */   lw       $a3, 0x30($v0)
/* 9195D8 80240A28 3C025555 */  lui       $v0, 0x5555
/* 9195DC 80240A2C 9603008E */  lhu       $v1, 0x8e($s0)
/* 9195E0 80240A30 34425556 */  ori       $v0, $v0, 0x5556
/* 9195E4 80240A34 00031C00 */  sll       $v1, $v1, 0x10
/* 9195E8 80240A38 00032403 */  sra       $a0, $v1, 0x10
/* 9195EC 80240A3C 00820018 */  mult      $a0, $v0
/* 9195F0 80240A40 00031FC3 */  sra       $v1, $v1, 0x1f
/* 9195F4 80240A44 00004010 */  mfhi      $t0
/* 9195F8 80240A48 01031823 */  subu      $v1, $t0, $v1
/* 9195FC 80240A4C 00031040 */  sll       $v0, $v1, 1
/* 919600 80240A50 00431021 */  addu      $v0, $v0, $v1
/* 919604 80240A54 00822023 */  subu      $a0, $a0, $v0
/* 919608 80240A58 00042400 */  sll       $a0, $a0, 0x10
/* 91960C 80240A5C 1480000C */  bnez      $a0, .L80240A90
/* 919610 80240A60 E600000C */   swc1     $f0, 0xc($s0)
/* 919614 80240A64 C6020040 */  lwc1      $f2, 0x40($s0)
/* 919618 80240A68 3C014000 */  lui       $at, 0x4000
/* 91961C 80240A6C 44810000 */  mtc1      $at, $f0
/* 919620 80240A70 AFA00010 */  sw        $zero, 0x10($sp)
/* 919624 80240A74 AFA00014 */  sw        $zero, 0x14($sp)
/* 919628 80240A78 46001080 */  add.s     $f2, $f2, $f0
/* 91962C 80240A7C 8E06003C */  lw        $a2, 0x3c($s0)
/* 919630 80240A80 8E050038 */  lw        $a1, 0x38($s0)
/* 919634 80240A84 44071000 */  mfc1      $a3, $f2
/* 919638 80240A88 0C01BECC */  jal       fx_walk_normal
/* 91963C 80240A8C 24040002 */   addiu    $a0, $zero, 2
.L80240A90:
/* 919640 80240A90 9602008E */  lhu       $v0, 0x8e($s0)
/* 919644 80240A94 2442FFFF */  addiu     $v0, $v0, -1
/* 919648 80240A98 A602008E */  sh        $v0, 0x8e($s0)
/* 91964C 80240A9C 00021400 */  sll       $v0, $v0, 0x10
/* 919650 80240AA0 1C40002C */  bgtz      $v0, .L80240B54
/* 919654 80240AA4 00000000 */   nop      
/* 919658 80240AA8 C6000038 */  lwc1      $f0, 0x38($s0)
/* 91965C 80240AAC 4600010D */  trunc.w.s $f4, $f0
/* 919660 80240AB0 44022000 */  mfc1      $v0, $f4
/* 919664 80240AB4 00000000 */  nop       
/* 919668 80240AB8 A6220010 */  sh        $v0, 0x10($s1)
/* 91966C 80240ABC C600003C */  lwc1      $f0, 0x3c($s0)
/* 919670 80240AC0 4600010D */  trunc.w.s $f4, $f0
/* 919674 80240AC4 44022000 */  mfc1      $v0, $f4
/* 919678 80240AC8 00000000 */  nop       
/* 91967C 80240ACC A6220012 */  sh        $v0, 0x12($s1)
/* 919680 80240AD0 C6000040 */  lwc1      $f0, 0x40($s0)
/* 919684 80240AD4 24020001 */  addiu     $v0, $zero, 1
/* 919688 80240AD8 A2220007 */  sb        $v0, 7($s1)
/* 91968C 80240ADC 4600010D */  trunc.w.s $f4, $f0
/* 919690 80240AE0 44022000 */  mfc1      $v0, $f4
/* 919694 80240AE4 00000000 */  nop       
/* 919698 80240AE8 A6220014 */  sh        $v0, 0x14($s1)
/* 91969C 80240AEC C6800018 */  lwc1      $f0, 0x18($s4)
/* 9196A0 80240AF0 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 9196A4 80240AF4 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 9196A8 80240AF8 8E420000 */  lw        $v0, ($s2)
/* 9196AC 80240AFC E6000018 */  swc1      $f0, 0x18($s0)
/* 9196B0 80240B00 8C460028 */  lw        $a2, 0x28($v0)
/* 9196B4 80240B04 0C00A7B5 */  jal       dist2D
/* 9196B8 80240B08 8C470030 */   lw       $a3, 0x30($v0)
/* 9196BC 80240B0C C6020018 */  lwc1      $f2, 0x18($s0)
/* 9196C0 80240B10 46020003 */  div.s     $f0, $f0, $f2
/* 9196C4 80240B14 3C018024 */  lui       $at, 0x8024
/* 9196C8 80240B18 D4222C48 */  ldc1      $f2, 0x2c48($at)
/* 9196CC 80240B1C 46000021 */  cvt.d.s   $f0, $f0
/* 9196D0 80240B20 46220000 */  add.d     $f0, $f0, $f2
/* 9196D4 80240B24 4620010D */  trunc.w.d $f4, $f0
/* 9196D8 80240B28 44022000 */  mfc1      $v0, $f4
/* 9196DC 80240B2C 00000000 */  nop       
/* 9196E0 80240B30 A602008E */  sh        $v0, 0x8e($s0)
/* 9196E4 80240B34 00021400 */  sll       $v0, $v0, 0x10
/* 9196E8 80240B38 00021403 */  sra       $v0, $v0, 0x10
/* 9196EC 80240B3C 2842000F */  slti      $v0, $v0, 0xf
/* 9196F0 80240B40 10400002 */  beqz      $v0, .L80240B4C
/* 9196F4 80240B44 2402000F */   addiu    $v0, $zero, 0xf
/* 9196F8 80240B48 A602008E */  sh        $v0, 0x8e($s0)
.L80240B4C:
/* 9196FC 80240B4C 24020016 */  addiu     $v0, $zero, 0x16
/* 919700 80240B50 AE620070 */  sw        $v0, 0x70($s3)
.L80240B54:
/* 919704 80240B54 8FBF002C */  lw        $ra, 0x2c($sp)
/* 919708 80240B58 8FB40028 */  lw        $s4, 0x28($sp)
/* 91970C 80240B5C 8FB30024 */  lw        $s3, 0x24($sp)
/* 919710 80240B60 8FB20020 */  lw        $s2, 0x20($sp)
/* 919714 80240B64 8FB1001C */  lw        $s1, 0x1c($sp)
/* 919718 80240B68 8FB00018 */  lw        $s0, 0x18($sp)
/* 91971C 80240B6C 03E00008 */  jr        $ra
/* 919720 80240B70 27BD0030 */   addiu    $sp, $sp, 0x30
