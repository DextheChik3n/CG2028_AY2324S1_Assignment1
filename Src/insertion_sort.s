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
@ R0: Memory Location of arr
@ R1: No. of numbers in the array
@ R3: i index (holds memory address)
@ R4: key value
@ R5: j index (holds memory address)
@ R6: j value
@ R7: swap counter

@ End of inseriton_sort:
@ R0 No. of swaps

@ write your program from here:
insertion_sort:
	PUSH {R4-R11, R14} 	@ Store the address of insertion_sort instruction in main.c
	MOV R7, #0
	LSL R1, #2			@Set N integer to *4
	MOV R3, #0			@Bit-shift left by 2, *4
	ADD R3, #4	 		@Set i to index 1

outer_for_loop:
	LDR R4, [R0, R3]    @Load key with arr[i]
	SUB R5, R3, #4	    @Set j to index i - 1

inner_while_loop:
	CMP R5, #0 			 @ Check if beginning of array is reached
	BLT inner_while_done

	LDR R6, [R0, R5]     @ Load j value into R6
	CMP R4, R6			 @ Compare key value and j value
	BGE inner_while_done @ if the key >= j value, exit inner loop

	ADD R5, #4
	STR R6, [R0, R5] 	 @ Shift j value one position to the right in array
	ADD R7, #1		     @ Increment swap counter
	SUB R5, #8			 @ Update j index (memory address pointer)
	B inner_while_loop

inner_while_done:
	ADD R5, #4			@Set j to j + 1
	STR R4, [R0, R5]	@Store key into arr[j + 1]
	ADD R3, #4			@i++
	CMP R3, R1			@if(i < n)
	BLT outer_for_loop 	@Loop if true


done:
	MOV R0, R7
	POP {R4-R11, R15} 			@ Assign PC the instruction address to return to main.c

