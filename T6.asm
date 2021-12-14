#Fazer, em Assembly MIPS, um algoritmo que solicite uma entrada de valor que deve ser um número entre 0 e 10 (0 e 10, inclusive), e que apresente o fatorial do número, sabendo que:
#0! = 1
#1! = 1
#N! = 1 x 2 x 3 x 4 x ... x N
#Se a entrada de dados estiver fora do intervalo definido, pedir novamente o valor
.data
	escreva00: .asciiz"Digite um número entre 0 e 10: \n "
	escreva01: .asciiz"O fatorial é: \n "
.text
main:        
	add $t1,$t1,1
	add $t2,$t2,1
	
	volta:
	li $v0,4
	la $a0,escreva00
	syscall
	li $v0,5
	syscall
	add $t0,$v0,0
	
	bgt $t0,10,volta
	blt $t0,0,volta
	j continua
	
continua:
mul $t2,$t1,$t2

add $t1,$t1,1

ble $t1,$t0,continua
j fim

fim:
li $v0,4
la $a0,escreva01
syscall

li $v0,1
add $a0,$t2,0
syscall

