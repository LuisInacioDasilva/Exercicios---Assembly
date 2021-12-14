#Fazer um algoritmo que peça ao usuário a temperatura em Celsius e exiba em Kelvin (Considere K = C + 273)Leitura Avançada
.data
	escreva00: .asciiz"Digite a temperatura em Celsius: \n"
	escreva01: .asciiz"A temperatura em Kelvin é:  \n"
.text
main:        
	
	li $v0,4
	la $a0,escreva00
	syscall
	li $v0,5
	syscall
	add $t0,$v0,0
	add $t1,$t0, 273
	
	

li $v0,4
la $a0,escreva01
syscall

li $v0,1
add $a0,$t1,0
syscall


