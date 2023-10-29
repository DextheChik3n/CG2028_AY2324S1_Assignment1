/*
 * insertion_sort.s
 *
 *  Created on: 10/08/2023
 *      Author: Ni Qingqing
 */
   .syntax unified
	.cpu cortex-m4
	.fpu softvfp
	.thumb

		.global insertion_sort

@ Start of executable code
.section .text

@ EE2028 Assignment 1, Sem 1, AY 2023/24
@ (c) ECE NUS, 2023
@ Insertion sort arr in ascending order

@ Write Student 1’s Name here: Dexter Hoon
@ Write Student 2’s Name here: Chua Zhong Heng

@ You could create a look-up table of registers here:

@ R0 ...
@ R1 ...
@ R14	Link Register

@ write your program from here:
insertion_sort:
	PUSH {R14}

	BL SUBROUTINE

	POP {R14}

SUBROUTINE:

	BX LR
