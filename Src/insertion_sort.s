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

@ -Look-up table of registers-

@ Initialization of insertion_sort:
@ R0 Memory Location of arr
@ R1 No. of numbers in the array


@ End of inseriton_sort:
@ R0 No. of swaps

@ write your program from here:
insertion_sort:
	PUSH {R14} @ Store the address of insertion_sort instruction in main.c

	BL SUBROUTINE

	POP {R15} @ Assign PC the instruction address to return to main.c

SUBROUTINE:

	BX LR
