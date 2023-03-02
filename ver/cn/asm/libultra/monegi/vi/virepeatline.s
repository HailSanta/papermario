.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel osViRepeatLine
/* 40DA0 800659A0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 40DA4 800659A4 AFB00010 */  sw        $s0, 0x10($sp)
/* 40DA8 800659A8 AFBF0014 */  sw        $ra, 0x14($sp)
/* 40DAC 800659AC 0C019B40 */  jal       __osDisableInt
/* 40DB0 800659B0 309000FF */   andi     $s0, $a0, 0xFF
/* 40DB4 800659B4 12000006 */  beqz      $s0, .LIQUE_800659D0
/* 40DB8 800659B8 00402021 */   addu     $a0, $v0, $zero
/* 40DBC 800659BC 3C038009 */  lui       $v1, %hi(__osViNext)
/* 40DC0 800659C0 8C634654 */  lw        $v1, %lo(__osViNext)($v1)
/* 40DC4 800659C4 94620000 */  lhu       $v0, 0x0($v1)
/* 40DC8 800659C8 08019678 */  j         .LIQUE_800659E0
/* 40DCC 800659CC 34420040 */   ori      $v0, $v0, 0x40
.LIQUE_800659D0:
/* 40DD0 800659D0 3C038009 */  lui       $v1, %hi(__osViNext)
/* 40DD4 800659D4 8C634654 */  lw        $v1, %lo(__osViNext)($v1)
/* 40DD8 800659D8 94620000 */  lhu       $v0, 0x0($v1)
/* 40DDC 800659DC 3042FFBF */  andi      $v0, $v0, 0xFFBF
.LIQUE_800659E0:
/* 40DE0 800659E0 0C019B5C */  jal       __osRestoreInt
/* 40DE4 800659E4 A4620000 */   sh       $v0, 0x0($v1)
/* 40DE8 800659E8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 40DEC 800659EC 8FB00010 */  lw        $s0, 0x10($sp)
/* 40DF0 800659F0 03E00008 */  jr        $ra
/* 40DF4 800659F4 27BD0018 */   addiu    $sp, $sp, 0x18
/* 40DF8 800659F8 00000000 */  nop
/* 40DFC 800659FC 00000000 */  nop