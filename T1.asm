# Fazer um algoritmo que peça ao usuário que ingresse com número inteiros, o algoritmo deve somar, separadamente, os números pares e os números ímpares digitados. Quando o usuário digitar 0(zero) ou um número negativo, o algoritmo deve finalizar e mostrar a soma dos números pares e a dos números ímpares.
.data
	escreva00: .asciiz"Digite um número: \n"
	escreva01: .asciiz"A soma dos números impares é: "
	escreva02: .asciiz"A soma dos números pares é: "
	escreva03: .asciiz"\n "
	
	
.text
main:        
	
	li $v0,4
	la $a0,escreva00
	syscall
	li $v0,5
	syscall
	add $t0,$v0,0
	
	rem $t1,$t0,2
	
	beq $t1,0,par
	bgt $t1,0,impar
	j fim
	
par:
add $t3,$t3,$t0
j main 


impar:
add $t4,$t4,$t0
j main

fim:

li $v0,4
la $a0,escreva01
syscall

li $v0,1
add $a0,$t4,0
syscall

li $v0,4
la $a0,escreva03
syscall

li $v0,4
la $a0,escreva02
syscall

li $v0,1
add $a0,$t3,0
syscall






