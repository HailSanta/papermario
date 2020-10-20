.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_992730
/* 992730 80240000 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 992734 80240004 AFB00030 */  sw        $s0, 0x30($sp)
/* 992738 80240008 0080802D */  daddu     $s0, $a0, $zero
/* 99273C 8024000C AFBF0040 */  sw        $ra, 0x40($sp)
/* 992740 80240010 AFB3003C */  sw        $s3, 0x3c($sp)
/* 992744 80240014 AFB20038 */  sw        $s2, 0x38($sp)
/* 992748 80240018 AFB10034 */  sw        $s1, 0x34($sp)
/* 99274C 8024001C F7B60050 */  sdc1      $f22, 0x50($sp)
/* 992750 80240020 F7B40048 */  sdc1      $f20, 0x48($sp)
/* 992754 80240024 8E130148 */  lw        $s3, 0x148($s0)
/* 992758 80240028 00A0882D */  daddu     $s1, $a1, $zero
/* 99275C 8024002C 86640008 */  lh        $a0, 8($s3)
/* 992760 80240030 0C00EABB */  jal       get_npc_unsafe
/* 992764 80240034 00C0902D */   daddu    $s2, $a2, $zero
/* 992768 80240038 0200202D */  daddu     $a0, $s0, $zero
/* 99276C 8024003C 0220282D */  daddu     $a1, $s1, $zero
/* 992770 80240040 0240302D */  daddu     $a2, $s2, $zero
/* 992774 80240044 0C012568 */  jal       func_800495A0
/* 992778 80240048 0040802D */   daddu    $s0, $v0, $zero
/* 99277C 8024004C 8E020000 */  lw        $v0, ($s0)
/* 992780 80240050 2404002D */  addiu     $a0, $zero, 0x2d
/* 992784 80240054 34420800 */  ori       $v0, $v0, 0x800
/* 992788 80240058 0C00A67F */  jal       rand_int
/* 99278C 8024005C AE020000 */   sw       $v0, ($s0)
/* 992790 80240060 0200202D */  daddu     $a0, $s0, $zero
/* 992794 80240064 3C05B000 */  lui       $a1, 0xb000
/* 992798 80240068 34A50017 */  ori       $a1, $a1, 0x17
/* 99279C 8024006C 44820000 */  mtc1      $v0, $f0
/* 9927A0 80240070 00000000 */  nop       
/* 9927A4 80240074 46800021 */  cvt.d.w   $f0, $f0
/* 9927A8 80240078 3C014024 */  lui       $at, 0x4024
/* 9927AC 8024007C 44811800 */  mtc1      $at, $f3
/* 9927B0 80240080 44801000 */  mtc1      $zero, $f2
/* 9927B4 80240084 3C014020 */  lui       $at, 0x4020
/* 9927B8 80240088 44812800 */  mtc1      $at, $f5
/* 9927BC 8024008C 44802000 */  mtc1      $zero, $f4
/* 9927C0 80240090 46220003 */  div.d     $f0, $f0, $f2
/* 9927C4 80240094 46240000 */  add.d     $f0, $f0, $f4
/* 9927C8 80240098 3C013FC0 */  lui       $at, 0x3fc0
/* 9927CC 8024009C 44811000 */  mtc1      $at, $f2
/* 9927D0 802400A0 0000302D */  daddu     $a2, $zero, $zero
/* 9927D4 802400A4 E6020014 */  swc1      $f2, 0x14($s0)
/* 9927D8 802400A8 46200020 */  cvt.s.d   $f0, $f0
/* 9927DC 802400AC 0C012530 */  jal       func_800494C0
/* 9927E0 802400B0 E600001C */   swc1     $f0, 0x1c($s0)
/* 9927E4 802400B4 8E6300D0 */  lw        $v1, 0xd0($s3)
/* 9927E8 802400B8 C6000040 */  lwc1      $f0, 0x40($s0)
/* 9927EC 802400BC C4620000 */  lwc1      $f2, ($v1)
/* 9927F0 802400C0 468010A0 */  cvt.s.w   $f2, $f2
/* 9927F4 802400C4 C4640008 */  lwc1      $f4, 8($v1)
/* 9927F8 802400C8 46802120 */  cvt.s.w   $f4, $f4
/* 9927FC 802400CC E7A00010 */  swc1      $f0, 0x10($sp)
/* 992800 802400D0 8E6200D0 */  lw        $v0, 0xd0($s3)
/* 992804 802400D4 44051000 */  mfc1      $a1, $f2
/* 992808 802400D8 C440000C */  lwc1      $f0, 0xc($v0)
/* 99280C 802400DC 46800020 */  cvt.s.w   $f0, $f0
/* 992810 802400E0 E7A00014 */  swc1      $f0, 0x14($sp)
/* 992814 802400E4 8E6200D0 */  lw        $v0, 0xd0($s3)
/* 992818 802400E8 44062000 */  mfc1      $a2, $f4
/* 99281C 802400EC C4400010 */  lwc1      $f0, 0x10($v0)
/* 992820 802400F0 46800020 */  cvt.s.w   $f0, $f0
/* 992824 802400F4 E7A00018 */  swc1      $f0, 0x18($sp)
/* 992828 802400F8 8C640018 */  lw        $a0, 0x18($v1)
/* 99282C 802400FC 0C0123F5 */  jal       is_point_within_region
/* 992830 80240100 8E070038 */   lw       $a3, 0x38($s0)
/* 992834 80240104 10400035 */  beqz      $v0, .L802401DC
/* 992838 80240108 00000000 */   nop      
/* 99283C 8024010C C60C0038 */  lwc1      $f12, 0x38($s0)
/* 992840 80240110 3C0141C8 */  lui       $at, 0x41c8
/* 992844 80240114 4481B000 */  mtc1      $at, $f22
/* 992848 80240118 8E6200D0 */  lw        $v0, 0xd0($s3)
/* 99284C 8024011C C60E0040 */  lwc1      $f14, 0x40($s0)
/* 992850 80240120 C4480000 */  lwc1      $f8, ($v0)
/* 992854 80240124 46804220 */  cvt.s.w   $f8, $f8
/* 992858 80240128 44064000 */  mfc1      $a2, $f8
/* 99285C 8024012C C4480008 */  lwc1      $f8, 8($v0)
/* 992860 80240130 46804220 */  cvt.s.w   $f8, $f8
/* 992864 80240134 44074000 */  mfc1      $a3, $f8
/* 992868 80240138 3C01403E */  lui       $at, 0x403e
/* 99286C 8024013C 4481A800 */  mtc1      $at, $f21
/* 992870 80240140 4480A000 */  mtc1      $zero, $f20
/* 992874 80240144 0C00A720 */  jal       atan2
/* 992878 80240148 0000882D */   daddu    $s1, $zero, $zero
/* 99287C 8024014C C6020038 */  lwc1      $f2, 0x38($s0)
/* 992880 80240150 C604003C */  lwc1      $f4, 0x3c($s0)
/* 992884 80240154 C6060040 */  lwc1      $f6, 0x40($s0)
/* 992888 80240158 E600000C */  swc1      $f0, 0xc($s0)
/* 99288C 8024015C E7A20020 */  swc1      $f2, 0x20($sp)
/* 992890 80240160 E7A40024 */  swc1      $f4, 0x24($sp)
/* 992894 80240164 E7A60028 */  swc1      $f6, 0x28($sp)
.L80240168:
/* 992898 80240168 E7B60010 */  swc1      $f22, 0x10($sp)
/* 99289C 8024016C C600000C */  lwc1      $f0, 0xc($s0)
/* 9928A0 80240170 E7A00014 */  swc1      $f0, 0x14($sp)
/* 9928A4 80240174 860200A8 */  lh        $v0, 0xa8($s0)
/* 9928A8 80240178 27A50020 */  addiu     $a1, $sp, 0x20
/* 9928AC 8024017C 44820000 */  mtc1      $v0, $f0
/* 9928B0 80240180 00000000 */  nop       
/* 9928B4 80240184 46800020 */  cvt.s.w   $f0, $f0
/* 9928B8 80240188 E7A00018 */  swc1      $f0, 0x18($sp)
/* 9928BC 8024018C 860200A6 */  lh        $v0, 0xa6($s0)
/* 9928C0 80240190 27A60024 */  addiu     $a2, $sp, 0x24
/* 9928C4 80240194 44820000 */  mtc1      $v0, $f0
/* 9928C8 80240198 00000000 */  nop       
/* 9928CC 8024019C 46800020 */  cvt.s.w   $f0, $f0
/* 9928D0 802401A0 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 9928D4 802401A4 8E040080 */  lw        $a0, 0x80($s0)
/* 9928D8 802401A8 0C037711 */  jal       func_800DDC44
/* 9928DC 802401AC 27A70028 */   addiu    $a3, $sp, 0x28
/* 9928E0 802401B0 10400016 */  beqz      $v0, .L8024020C
/* 9928E4 802401B4 26310001 */   addiu    $s1, $s1, 1
/* 9928E8 802401B8 C600000C */  lwc1      $f0, 0xc($s0)
/* 9928EC 802401BC 46000021 */  cvt.d.s   $f0, $f0
/* 9928F0 802401C0 46340000 */  add.d     $f0, $f0, $f20
/* 9928F4 802401C4 2A220006 */  slti      $v0, $s1, 6
/* 9928F8 802401C8 46200020 */  cvt.s.d   $f0, $f0
/* 9928FC 802401CC 1440FFE6 */  bnez      $v0, .L80240168
/* 992900 802401D0 E600000C */   swc1     $f0, 0xc($s0)
/* 992904 802401D4 08090083 */  j         .L8024020C
/* 992908 802401D8 00000000 */   nop      
.L802401DC:
/* 99290C 802401DC 0C00A67F */  jal       rand_int
/* 992910 802401E0 2404003C */   addiu    $a0, $zero, 0x3c
/* 992914 802401E4 C60C000C */  lwc1      $f12, 0xc($s0)
/* 992918 802401E8 44820000 */  mtc1      $v0, $f0
/* 99291C 802401EC 00000000 */  nop       
/* 992920 802401F0 46800020 */  cvt.s.w   $f0, $f0
/* 992924 802401F4 46006300 */  add.s     $f12, $f12, $f0
/* 992928 802401F8 3C0141F0 */  lui       $at, 0x41f0
/* 99292C 802401FC 44810000 */  mtc1      $at, $f0
/* 992930 80240200 0C00A6C9 */  jal       clamp_angle
/* 992934 80240204 46006301 */   sub.s    $f12, $f12, $f0
/* 992938 80240208 E600000C */  swc1      $f0, 0xc($s0)
.L8024020C:
/* 99293C 8024020C 8FBF0040 */  lw        $ra, 0x40($sp)
/* 992940 80240210 8FB3003C */  lw        $s3, 0x3c($sp)
/* 992944 80240214 8FB20038 */  lw        $s2, 0x38($sp)
/* 992948 80240218 8FB10034 */  lw        $s1, 0x34($sp)
/* 99294C 8024021C 8FB00030 */  lw        $s0, 0x30($sp)
/* 992950 80240220 D7B60050 */  ldc1      $f22, 0x50($sp)
/* 992954 80240224 D7B40048 */  ldc1      $f20, 0x48($sp)
/* 992958 80240228 03E00008 */  jr        $ra
/* 99295C 8024022C 27BD0058 */   addiu    $sp, $sp, 0x58
