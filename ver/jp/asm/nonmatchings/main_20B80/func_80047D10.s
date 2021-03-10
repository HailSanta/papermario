.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80047D10
/* 23110 80047D10 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 23114 80047D14 00041040 */  sll       $v0, $a0, 1
/* 23118 80047D18 00441021 */  addu      $v0, $v0, $a0
/* 2311C 80047D1C 00021080 */  sll       $v0, $v0, 2
/* 23120 80047D20 00441023 */  subu      $v0, $v0, $a0
/* 23124 80047D24 3C03800A */  lui       $v1, %hi(D_8009ED54)
/* 23128 80047D28 8C63ED54 */  lw        $v1, %lo(D_8009ED54)($v1)
/* 2312C 80047D2C 00021100 */  sll       $v0, $v0, 4
/* 23130 80047D30 AFBF0018 */  sw        $ra, 0x18($sp)
/* 23134 80047D34 AFB10014 */  sw        $s1, 0x14($sp)
/* 23138 80047D38 AFB00010 */  sw        $s0, 0x10($sp)
/* 2313C 80047D3C 00628821 */  addu      $s1, $v1, $v0
/* 23140 80047D40 2403FBFF */  addiu     $v1, $zero, -0x401
/* 23144 80047D44 8E220000 */  lw        $v0, ($s1)
/* 23148 80047D48 822400A0 */  lb        $a0, 0xa0($s1)
/* 2314C 80047D4C 00431024 */  and       $v0, $v0, $v1
/* 23150 80047D50 1480000E */  bnez      $a0, .L80047D8C
/* 23154 80047D54 AE220000 */   sw       $v0, ($s1)
/* 23158 80047D58 3C048011 */  lui       $a0, %hi(D_80108B54)
/* 2315C 80047D5C 24848B54 */  addiu     $a0, $a0, %lo(D_80108B54)
/* 23160 80047D60 24020001 */  addiu     $v0, $zero, 1
/* 23164 80047D64 0C051955 */  jal       func_80146554
/* 23168 80047D68 A22200A0 */   sb       $v0, 0xa0($s1)
/* 2316C 80047D6C 0040802D */  daddu     $s0, $v0, $zero
/* 23170 80047D70 0200202D */  daddu     $a0, $s0, $zero
/* 23174 80047D74 0C0526AC */  jal       func_80149AB0
/* 23178 80047D78 24050002 */   addiu    $a1, $zero, 2
/* 2317C 80047D7C 0200202D */  daddu     $a0, $s0, $zero
/* 23180 80047D80 0C0526AC */  jal       func_80149AB0
/* 23184 80047D84 24050080 */   addiu    $a1, $zero, 0x80
/* 23188 80047D88 AE3000A4 */  sw        $s0, 0xa4($s1)
.L80047D8C:
/* 2318C 80047D8C 8FBF0018 */  lw        $ra, 0x18($sp)
/* 23190 80047D90 8FB10014 */  lw        $s1, 0x14($sp)
/* 23194 80047D94 8FB00010 */  lw        $s0, 0x10($sp)
/* 23198 80047D98 03E00008 */  jr        $ra
/* 2319C 80047D9C 27BD0020 */   addiu    $sp, $sp, 0x20