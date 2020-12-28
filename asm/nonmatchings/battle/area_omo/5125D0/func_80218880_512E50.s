.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218880_512E50
/* 512E50 80218880 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 512E54 80218884 AFB20018 */  sw        $s2, 0x18($sp)
/* 512E58 80218888 0080902D */  daddu     $s2, $a0, $zero
/* 512E5C 8021888C AFBF001C */  sw        $ra, 0x1c($sp)
/* 512E60 80218890 AFB10014 */  sw        $s1, 0x14($sp)
/* 512E64 80218894 AFB00010 */  sw        $s0, 0x10($sp)
/* 512E68 80218898 F7B40020 */  sdc1      $f20, 0x20($sp)
/* 512E6C 8021889C 10A00044 */  beqz      $a1, .L802189B0
/* 512E70 802188A0 8E50000C */   lw       $s0, 0xc($s2)
/* 512E74 802188A4 0C00AB39 */  jal       heap_malloc
/* 512E78 802188A8 24040024 */   addiu    $a0, $zero, 0x24
/* 512E7C 802188AC 0040882D */  daddu     $s1, $v0, $zero
/* 512E80 802188B0 AE510070 */  sw        $s1, 0x70($s2)
/* 512E84 802188B4 8E050000 */  lw        $a1, ($s0)
/* 512E88 802188B8 26100004 */  addiu     $s0, $s0, 4
/* 512E8C 802188BC 0C0B1EAF */  jal       get_variable
/* 512E90 802188C0 0240202D */   daddu    $a0, $s2, $zero
/* 512E94 802188C4 AE220020 */  sw        $v0, 0x20($s1)
/* 512E98 802188C8 8E050000 */  lw        $a1, ($s0)
/* 512E9C 802188CC 26100004 */  addiu     $s0, $s0, 4
/* 512EA0 802188D0 0C0B210B */  jal       get_float_variable
/* 512EA4 802188D4 0240202D */   daddu    $a0, $s2, $zero
/* 512EA8 802188D8 E6200000 */  swc1      $f0, ($s1)
/* 512EAC 802188DC 8E050000 */  lw        $a1, ($s0)
/* 512EB0 802188E0 26100004 */  addiu     $s0, $s0, 4
/* 512EB4 802188E4 0C0B210B */  jal       get_float_variable
/* 512EB8 802188E8 0240202D */   daddu    $a0, $s2, $zero
/* 512EBC 802188EC E6200004 */  swc1      $f0, 4($s1)
/* 512EC0 802188F0 8E050000 */  lw        $a1, ($s0)
/* 512EC4 802188F4 26100004 */  addiu     $s0, $s0, 4
/* 512EC8 802188F8 0C0B210B */  jal       get_float_variable
/* 512ECC 802188FC 0240202D */   daddu    $a0, $s2, $zero
/* 512ED0 80218900 E6200008 */  swc1      $f0, 8($s1)
/* 512ED4 80218904 8E050000 */  lw        $a1, ($s0)
/* 512ED8 80218908 26100004 */  addiu     $s0, $s0, 4
/* 512EDC 8021890C 0C0B1EAF */  jal       get_variable
/* 512EE0 80218910 0240202D */   daddu    $a0, $s2, $zero
/* 512EE4 80218914 AE22001C */  sw        $v0, 0x1c($s1)
/* 512EE8 80218918 8E050000 */  lw        $a1, ($s0)
/* 512EEC 8021891C 0C0B210B */  jal       get_float_variable
/* 512EF0 80218920 0240202D */   daddu    $a0, $s2, $zero
/* 512EF4 80218924 8E240020 */  lw        $a0, 0x20($s1)
/* 512EF8 80218928 0C04C3D6 */  jal       get_item_entity
/* 512EFC 8021892C E6200010 */   swc1     $f0, 0x10($s1)
/* 512F00 80218930 0040802D */  daddu     $s0, $v0, $zero
/* 512F04 80218934 C60C0008 */  lwc1      $f12, 8($s0)
/* 512F08 80218938 C60E0010 */  lwc1      $f14, 0x10($s0)
/* 512F0C 8021893C 8E260000 */  lw        $a2, ($s1)
/* 512F10 80218940 0C00A7B5 */  jal       dist2D
/* 512F14 80218944 8E270008 */   lw       $a3, 8($s1)
/* 512F18 80218948 C60C0008 */  lwc1      $f12, 8($s0)
/* 512F1C 8021894C C60E0010 */  lwc1      $f14, 0x10($s0)
/* 512F20 80218950 8E260000 */  lw        $a2, ($s1)
/* 512F24 80218954 8E270008 */  lw        $a3, 8($s1)
/* 512F28 80218958 0C00A720 */  jal       atan2
/* 512F2C 8021895C 46000506 */   mov.s    $f20, $f0
/* 512F30 80218960 C6240010 */  lwc1      $f4, 0x10($s1)
/* 512F34 80218964 C626001C */  lwc1      $f6, 0x1c($s1)
/* 512F38 80218968 468031A0 */  cvt.s.w   $f6, $f6
/* 512F3C 8021896C 46062102 */  mul.s     $f4, $f4, $f6
/* 512F40 80218970 00000000 */  nop       
/* 512F44 80218974 3C013F00 */  lui       $at, 0x3f00
/* 512F48 80218978 44811000 */  mtc1      $at, $f2
/* 512F4C 8021897C 00000000 */  nop       
/* 512F50 80218980 46022102 */  mul.s     $f4, $f4, $f2
/* 512F54 80218984 00000000 */  nop       
/* 512F58 80218988 E620000C */  swc1      $f0, 0xc($s1)
/* 512F5C 8021898C C6200004 */  lwc1      $f0, 4($s1)
/* 512F60 80218990 C602000C */  lwc1      $f2, 0xc($s0)
/* 512F64 80218994 46020001 */  sub.s     $f0, $f0, $f2
/* 512F68 80218998 46003086 */  mov.s     $f2, $f6
/* 512F6C 8021899C 46060003 */  div.s     $f0, $f0, $f6
/* 512F70 802189A0 46002100 */  add.s     $f4, $f4, $f0
/* 512F74 802189A4 4602A503 */  div.s     $f20, $f20, $f2
/* 512F78 802189A8 E6340014 */  swc1      $f20, 0x14($s1)
/* 512F7C 802189AC E6240018 */  swc1      $f4, 0x18($s1)
.L802189B0:
/* 512F80 802189B0 8E510070 */  lw        $s1, 0x70($s2)
/* 512F84 802189B4 0C04C3D6 */  jal       get_item_entity
/* 512F88 802189B8 8E240020 */   lw       $a0, 0x20($s1)
/* 512F8C 802189BC 0040802D */  daddu     $s0, $v0, $zero
/* 512F90 802189C0 16000005 */  bnez      $s0, .L802189D8
/* 512F94 802189C4 00000000 */   nop      
/* 512F98 802189C8 0C00AB4B */  jal       heap_free
/* 512F9C 802189CC 8E440070 */   lw       $a0, 0x70($s2)
/* 512FA0 802189D0 0808629F */  j         .L80218A7C
/* 512FA4 802189D4 24020002 */   addiu    $v0, $zero, 2
.L802189D8:
/* 512FA8 802189D8 C62C000C */  lwc1      $f12, 0xc($s1)
/* 512FAC 802189DC 0C00A8BB */  jal       sin_deg
/* 512FB0 802189E0 00000000 */   nop      
/* 512FB4 802189E4 C6220014 */  lwc1      $f2, 0x14($s1)
/* 512FB8 802189E8 46001082 */  mul.s     $f2, $f2, $f0
/* 512FBC 802189EC 00000000 */  nop       
/* 512FC0 802189F0 C6000008 */  lwc1      $f0, 8($s0)
/* 512FC4 802189F4 46020000 */  add.s     $f0, $f0, $f2
/* 512FC8 802189F8 E6000008 */  swc1      $f0, 8($s0)
/* 512FCC 802189FC 0C00A8D4 */  jal       cos_deg
/* 512FD0 80218A00 C62C000C */   lwc1     $f12, 0xc($s1)
/* 512FD4 80218A04 C6220014 */  lwc1      $f2, 0x14($s1)
/* 512FD8 80218A08 46001082 */  mul.s     $f2, $f2, $f0
/* 512FDC 80218A0C 00000000 */  nop       
/* 512FE0 80218A10 C6000010 */  lwc1      $f0, 0x10($s0)
/* 512FE4 80218A14 46020001 */  sub.s     $f0, $f0, $f2
/* 512FE8 80218A18 E6000010 */  swc1      $f0, 0x10($s0)
/* 512FEC 80218A1C C600000C */  lwc1      $f0, 0xc($s0)
/* 512FF0 80218A20 C6220018 */  lwc1      $f2, 0x18($s1)
/* 512FF4 80218A24 46020000 */  add.s     $f0, $f0, $f2
/* 512FF8 80218A28 E600000C */  swc1      $f0, 0xc($s0)
/* 512FFC 80218A2C C6200018 */  lwc1      $f0, 0x18($s1)
/* 513000 80218A30 C6220010 */  lwc1      $f2, 0x10($s1)
/* 513004 80218A34 8E22001C */  lw        $v0, 0x1c($s1)
/* 513008 80218A38 46020001 */  sub.s     $f0, $f0, $f2
/* 51300C 80218A3C 2442FFFF */  addiu     $v0, $v0, -1
/* 513010 80218A40 AE22001C */  sw        $v0, 0x1c($s1)
/* 513014 80218A44 04400003 */  bltz      $v0, .L80218A54
/* 513018 80218A48 E6200018 */   swc1     $f0, 0x18($s1)
/* 51301C 80218A4C 0808629F */  j         .L80218A7C
/* 513020 80218A50 0000102D */   daddu    $v0, $zero, $zero
.L80218A54:
/* 513024 80218A54 C6200000 */  lwc1      $f0, ($s1)
/* 513028 80218A58 E6000008 */  swc1      $f0, 8($s0)
/* 51302C 80218A5C C6200004 */  lwc1      $f0, 4($s1)
/* 513030 80218A60 E600000C */  swc1      $f0, 0xc($s0)
/* 513034 80218A64 C6200008 */  lwc1      $f0, 8($s1)
/* 513038 80218A68 E6000010 */  swc1      $f0, 0x10($s0)
/* 51303C 80218A6C AE200018 */  sw        $zero, 0x18($s1)
/* 513040 80218A70 0C00AB4B */  jal       heap_free
/* 513044 80218A74 8E440070 */   lw       $a0, 0x70($s2)
/* 513048 80218A78 24020001 */  addiu     $v0, $zero, 1
.L80218A7C:
/* 51304C 80218A7C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 513050 80218A80 8FB20018 */  lw        $s2, 0x18($sp)
/* 513054 80218A84 8FB10014 */  lw        $s1, 0x14($sp)
/* 513058 80218A88 8FB00010 */  lw        $s0, 0x10($sp)
/* 51305C 80218A8C D7B40020 */  ldc1      $f20, 0x20($sp)
/* 513060 80218A90 03E00008 */  jr        $ra
/* 513064 80218A94 27BD0028 */   addiu    $sp, $sp, 0x28
