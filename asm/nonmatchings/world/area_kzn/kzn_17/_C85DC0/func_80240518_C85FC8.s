.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240518_C85FC8
/* C85FC8 80240518 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* C85FCC 8024051C AFBF0024 */  sw        $ra, 0x24($sp)
/* C85FD0 80240520 AFB40020 */  sw        $s4, 0x20($sp)
/* C85FD4 80240524 AFB3001C */  sw        $s3, 0x1c($sp)
/* C85FD8 80240528 AFB20018 */  sw        $s2, 0x18($sp)
/* C85FDC 8024052C AFB10014 */  sw        $s1, 0x14($sp)
/* C85FE0 80240530 AFB00010 */  sw        $s0, 0x10($sp)
/* C85FE4 80240534 F7B40028 */  sdc1      $f20, 0x28($sp)
/* C85FE8 80240538 8C900148 */  lw        $s0, 0x148($a0)
/* C85FEC 8024053C 86040008 */  lh        $a0, 8($s0)
/* C85FF0 80240540 0C00EABB */  jal       get_npc_unsafe
/* C85FF4 80240544 24110001 */   addiu    $s1, $zero, 1
/* C85FF8 80240548 86040008 */  lh        $a0, 8($s0)
/* C85FFC 8024054C 0040802D */  daddu     $s0, $v0, $zero
/* C86000 80240550 3C05800B */  lui       $a1, %hi(gCameras)
/* C86004 80240554 24A51D80 */  addiu     $a1, $a1, %lo(gCameras)
/* C86008 80240558 3C03800A */  lui       $v1, 0x800a
/* C8600C 8024055C 8463A634 */  lh        $v1, -0x59cc($v1)
/* C86010 80240560 00912021 */  addu      $a0, $a0, $s1
/* C86014 80240564 00031080 */  sll       $v0, $v1, 2
/* C86018 80240568 00431021 */  addu      $v0, $v0, $v1
/* C8601C 8024056C 00021080 */  sll       $v0, $v0, 2
/* C86020 80240570 00431023 */  subu      $v0, $v0, $v1
/* C86024 80240574 000218C0 */  sll       $v1, $v0, 3
/* C86028 80240578 00431021 */  addu      $v0, $v0, $v1
/* C8602C 8024057C 000210C0 */  sll       $v0, $v0, 3
/* C86030 80240580 0C00FB3A */  jal       get_enemy
/* C86034 80240584 00459021 */   addu     $s2, $v0, $a1
/* C86038 80240588 3C14800F */  lui       $s4, %hi(gPlayerStatusPtr)
/* C8603C 8024058C 26947B30 */  addiu     $s4, $s4, %lo(gPlayerStatusPtr)
/* C86040 80240590 C60C0038 */  lwc1      $f12, 0x38($s0)
/* C86044 80240594 8E830000 */  lw        $v1, ($s4)
/* C86048 80240598 C60E0040 */  lwc1      $f14, 0x40($s0)
/* C8604C 8024059C 8C660028 */  lw        $a2, 0x28($v1)
/* C86050 802405A0 8C670030 */  lw        $a3, 0x30($v1)
/* C86054 802405A4 0C00A7B5 */  jal       dist2D
/* C86058 802405A8 0040982D */   daddu    $s3, $v0, $zero
/* C8605C 802405AC C6620074 */  lwc1      $f2, 0x74($s3)
/* C86060 802405B0 468010A0 */  cvt.s.w   $f2, $f2
/* C86064 802405B4 4600103C */  c.lt.s    $f2, $f0
/* C86068 802405B8 00000000 */  nop       
/* C8606C 802405BC 45030001 */  bc1tl     .L802405C4
/* C86070 802405C0 0000882D */   daddu    $s1, $zero, $zero
.L802405C4:
/* C86074 802405C4 C64C006C */  lwc1      $f12, 0x6c($s2)
/* C86078 802405C8 C60E000C */  lwc1      $f14, 0xc($s0)
/* C8607C 802405CC 3C014387 */  lui       $at, 0x4387
/* C86080 802405D0 4481A000 */  mtc1      $at, $f20
/* C86084 802405D4 0C00A70A */  jal       get_clamped_angle_diff
/* C86088 802405D8 00000000 */   nop      
/* C8608C 802405DC 0C00A6C9 */  jal       clamp_angle
/* C86090 802405E0 46000306 */   mov.s    $f12, $f0
/* C86094 802405E4 3C018024 */  lui       $at, 0x8024
/* C86098 802405E8 D42263A0 */  ldc1      $f2, 0x63a0($at)
/* C8609C 802405EC 46000021 */  cvt.d.s   $f0, $f0
/* C860A0 802405F0 4622003C */  c.lt.d    $f0, $f2
/* C860A4 802405F4 00000000 */  nop       
/* C860A8 802405F8 45000003 */  bc1f      .L80240608
/* C860AC 802405FC 00000000 */   nop      
/* C860B0 80240600 3C0142B4 */  lui       $at, 0x42b4
/* C860B4 80240604 4481A000 */  mtc1      $at, $f20
.L80240608:
/* C860B8 80240608 C60C0038 */  lwc1      $f12, 0x38($s0)
/* C860BC 8024060C 8E820000 */  lw        $v0, ($s4)
/* C860C0 80240610 C60E0040 */  lwc1      $f14, 0x40($s0)
/* C860C4 80240614 8C460028 */  lw        $a2, 0x28($v0)
/* C860C8 80240618 0C00A720 */  jal       atan2
/* C860CC 8024061C 8C470030 */   lw       $a3, 0x30($v0)
/* C860D0 80240620 4600A306 */  mov.s     $f12, $f20
/* C860D4 80240624 0C00A70A */  jal       get_clamped_angle_diff
/* C860D8 80240628 46000386 */   mov.s    $f14, $f0
/* C860DC 8024062C C6620078 */  lwc1      $f2, 0x78($s3)
/* C860E0 80240630 468010A0 */  cvt.s.w   $f2, $f2
/* C860E4 80240634 46000005 */  abs.s     $f0, $f0
/* C860E8 80240638 4600103C */  c.lt.s    $f2, $f0
/* C860EC 8024063C 00000000 */  nop       
/* C860F0 80240640 45030001 */  bc1tl     .L80240648
/* C860F4 80240644 0000882D */   daddu    $s1, $zero, $zero
.L80240648:
/* C860F8 80240648 8E820000 */  lw        $v0, ($s4)
/* C860FC 8024064C C600003C */  lwc1      $f0, 0x3c($s0)
/* C86100 80240650 C442002C */  lwc1      $f2, 0x2c($v0)
/* C86104 80240654 860200A8 */  lh        $v0, 0xa8($s0)
/* C86108 80240658 46020001 */  sub.s     $f0, $f0, $f2
/* C8610C 8024065C 44821000 */  mtc1      $v0, $f2
/* C86110 80240660 00000000 */  nop       
/* C86114 80240664 468010A1 */  cvt.d.w   $f2, $f2
/* C86118 80240668 46221080 */  add.d     $f2, $f2, $f2
/* C8611C 8024066C 46000005 */  abs.s     $f0, $f0
/* C86120 80240670 46000021 */  cvt.d.s   $f0, $f0
/* C86124 80240674 4620103E */  c.le.d    $f2, $f0
/* C86128 80240678 00000000 */  nop       
/* C8612C 8024067C 45030001 */  bc1tl     .L80240684
/* C86130 80240680 0000882D */   daddu    $s1, $zero, $zero
.L80240684:
/* C86134 80240684 3C038011 */  lui       $v1, 0x8011
/* C86138 80240688 8063EBB3 */  lb        $v1, -0x144d($v1)
/* C8613C 8024068C 24020009 */  addiu     $v0, $zero, 9
/* C86140 80240690 50620001 */  beql      $v1, $v0, .L80240698
/* C86144 80240694 0000882D */   daddu    $s1, $zero, $zero
.L80240698:
/* C86148 80240698 24020007 */  addiu     $v0, $zero, 7
/* C8614C 8024069C 50620001 */  beql      $v1, $v0, .L802406A4
/* C86150 802406A0 0000882D */   daddu    $s1, $zero, $zero
.L802406A4:
/* C86154 802406A4 0220102D */  daddu     $v0, $s1, $zero
/* C86158 802406A8 8FBF0024 */  lw        $ra, 0x24($sp)
/* C8615C 802406AC 8FB40020 */  lw        $s4, 0x20($sp)
/* C86160 802406B0 8FB3001C */  lw        $s3, 0x1c($sp)
/* C86164 802406B4 8FB20018 */  lw        $s2, 0x18($sp)
/* C86168 802406B8 8FB10014 */  lw        $s1, 0x14($sp)
/* C8616C 802406BC 8FB00010 */  lw        $s0, 0x10($sp)
/* C86170 802406C0 D7B40028 */  ldc1      $f20, 0x28($sp)
/* C86174 802406C4 03E00008 */  jr        $ra
/* C86178 802406C8 27BD0030 */   addiu    $sp, $sp, 0x30
