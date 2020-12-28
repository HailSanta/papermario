.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80219E10_60A8C0
/* 60A8C0 80219E10 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 60A8C4 80219E14 AFB00010 */  sw        $s0, 0x10($sp)
/* 60A8C8 80219E18 0080802D */  daddu     $s0, $a0, $zero
/* 60A8CC 80219E1C AFBF0014 */  sw        $ra, 0x14($sp)
/* 60A8D0 80219E20 8E0300A8 */  lw        $v1, 0xa8($s0)
/* 60A8D4 80219E24 8E020088 */  lw        $v0, 0x88($s0)
/* 60A8D8 80219E28 00621821 */  addu      $v1, $v1, $v0
/* 60A8DC 80219E2C 04610004 */  bgez      $v1, .L80219E40
/* 60A8E0 80219E30 AE0300A8 */   sw       $v1, 0xa8($s0)
/* 60A8E4 80219E34 3C020002 */  lui       $v0, 2
/* 60A8E8 80219E38 08086794 */  j         .L80219E50
/* 60A8EC 80219E3C 00621021 */   addu     $v0, $v1, $v0
.L80219E40:
/* 60A8F0 80219E40 3C040002 */  lui       $a0, 2
/* 60A8F4 80219E44 0083102A */  slt       $v0, $a0, $v1
/* 60A8F8 80219E48 10400002 */  beqz      $v0, .L80219E54
/* 60A8FC 80219E4C 00641023 */   subu     $v0, $v1, $a0
.L80219E50:
/* 60A900 80219E50 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80219E54:
/* 60A904 80219E54 8E0300AC */  lw        $v1, 0xac($s0)
/* 60A908 80219E58 8E02008C */  lw        $v0, 0x8c($s0)
/* 60A90C 80219E5C 00621821 */  addu      $v1, $v1, $v0
/* 60A910 80219E60 04610004 */  bgez      $v1, .L80219E74
/* 60A914 80219E64 AE0300AC */   sw       $v1, 0xac($s0)
/* 60A918 80219E68 3C020002 */  lui       $v0, 2
/* 60A91C 80219E6C 080867A1 */  j         .L80219E84
/* 60A920 80219E70 00621021 */   addu     $v0, $v1, $v0
.L80219E74:
/* 60A924 80219E74 3C040002 */  lui       $a0, 2
/* 60A928 80219E78 0083102A */  slt       $v0, $a0, $v1
/* 60A92C 80219E7C 10400002 */  beqz      $v0, .L80219E88
/* 60A930 80219E80 00641023 */   subu     $v0, $v1, $a0
.L80219E84:
/* 60A934 80219E84 AE0200AC */  sw        $v0, 0xac($s0)
.L80219E88:
/* 60A938 80219E88 8E0300B0 */  lw        $v1, 0xb0($s0)
/* 60A93C 80219E8C 8E020090 */  lw        $v0, 0x90($s0)
/* 60A940 80219E90 00621821 */  addu      $v1, $v1, $v0
/* 60A944 80219E94 04610004 */  bgez      $v1, .L80219EA8
/* 60A948 80219E98 AE0300B0 */   sw       $v1, 0xb0($s0)
/* 60A94C 80219E9C 3C020002 */  lui       $v0, 2
/* 60A950 80219EA0 080867AE */  j         .L80219EB8
/* 60A954 80219EA4 00621021 */   addu     $v0, $v1, $v0
.L80219EA8:
/* 60A958 80219EA8 3C040002 */  lui       $a0, 2
/* 60A95C 80219EAC 0083102A */  slt       $v0, $a0, $v1
/* 60A960 80219EB0 10400002 */  beqz      $v0, .L80219EBC
/* 60A964 80219EB4 00641023 */   subu     $v0, $v1, $a0
.L80219EB8:
/* 60A968 80219EB8 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80219EBC:
/* 60A96C 80219EBC 8E0300B4 */  lw        $v1, 0xb4($s0)
/* 60A970 80219EC0 8E020094 */  lw        $v0, 0x94($s0)
/* 60A974 80219EC4 00621821 */  addu      $v1, $v1, $v0
/* 60A978 80219EC8 04610004 */  bgez      $v1, .L80219EDC
/* 60A97C 80219ECC AE0300B4 */   sw       $v1, 0xb4($s0)
/* 60A980 80219ED0 3C020002 */  lui       $v0, 2
/* 60A984 80219ED4 080867BB */  j         .L80219EEC
/* 60A988 80219ED8 00621021 */   addu     $v0, $v1, $v0
.L80219EDC:
/* 60A98C 80219EDC 3C040002 */  lui       $a0, 2
/* 60A990 80219EE0 0083102A */  slt       $v0, $a0, $v1
/* 60A994 80219EE4 10400002 */  beqz      $v0, .L80219EF0
/* 60A998 80219EE8 00641023 */   subu     $v0, $v1, $a0
.L80219EEC:
/* 60A99C 80219EEC AE0200B4 */  sw        $v0, 0xb4($s0)
.L80219EF0:
/* 60A9A0 80219EF0 8E040084 */  lw        $a0, 0x84($s0)
/* 60A9A4 80219EF4 0C046F07 */  jal       set_main_pan_u
/* 60A9A8 80219EF8 8E0500A8 */   lw       $a1, 0xa8($s0)
/* 60A9AC 80219EFC 8E040084 */  lw        $a0, 0x84($s0)
/* 60A9B0 80219F00 0C046F0D */  jal       set_main_pan_v
/* 60A9B4 80219F04 8E0500AC */   lw       $a1, 0xac($s0)
/* 60A9B8 80219F08 8E040084 */  lw        $a0, 0x84($s0)
/* 60A9BC 80219F0C 0C046F13 */  jal       set_aux_pan_u
/* 60A9C0 80219F10 8E0500B0 */   lw       $a1, 0xb0($s0)
/* 60A9C4 80219F14 8E040084 */  lw        $a0, 0x84($s0)
/* 60A9C8 80219F18 0C046F19 */  jal       set_aux_pan_v
/* 60A9CC 80219F1C 8E0500B4 */   lw       $a1, 0xb4($s0)
/* 60A9D0 80219F20 8FBF0014 */  lw        $ra, 0x14($sp)
/* 60A9D4 80219F24 8FB00010 */  lw        $s0, 0x10($sp)
/* 60A9D8 80219F28 0000102D */  daddu     $v0, $zero, $zero
/* 60A9DC 80219F2C 03E00008 */  jr        $ra
/* 60A9E0 80219F30 27BD0018 */   addiu    $sp, $sp, 0x18
