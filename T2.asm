# Fazer um algortimo que pe�a ao usu�rio que digite um n�mero de cal�ado e exiba:
# Se o n�mero do cal�ado � inferior a 33 ==> Setor infantil
# Se o n�mero do cal�ado � maior ou igual a 33 ==> Setor adulto
.data
	escreva00: .asciiz"Digite o seu n�mero de sapato: \n"
	escreva01: .asciiz"Seu setor � INFANTIL \n"
	escreva02: .asciiz"Seu setor � ADULTO \n"
.text
main:        
	
	li $v0,4
	la $a0,escreva00
	syscall
	li $v0,5
	syscall
	add $t0,$v0,0
	
	blt $t0,33,infantil
	bge $t0,33,adulto
	
infantil:

li $v0,4
la $a0,escreva01
syscall
j fim


adulto:
li $v0,4
la $a0,escreva02
syscall
j fim

fim:


