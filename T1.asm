# Fazer um algoritmo que pe�a ao usu�rio que ingresse com n�mero inteiros, o algoritmo deve somar, separadamente, os n�meros pares e os n�meros �mpares digitados. Quando o usu�rio digitar 0(zero) ou um n�mero negativo, o algoritmo deve finalizar e mostrar a soma dos n�meros pares e a dos n�meros �mpares.
.data
	escreva00: .asciiz"Digite um n�mero: \n"
	escreva01: .asciiz"A soma dos n�meros impares �: "
	escreva02: .asciiz"A soma dos n�meros pares �: "
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






