#Fazer um algoritmo que pe�a ao usu�rio que digite quantas pessoas est�o presentes e o usu�rio receber� o n�mero de pizzas que devem ser compradas, considerando que cada pessoa
# com 2 peda�os de pizza e uma pizza tem 8 fatias. Considerar n�meros inteiros, mesmo que sobre uns peda�os.
.data
	escreva00: .asciiz"Digite a quantidade de pessoas: \n"
	escreva01: .asciiz"A quantidade de pizzas �: \n"
.text
main:        
	
	li $v0,4
	la $a0,escreva00
	syscall
	li $v0,5
	syscall
	add $t0,$v0,0
	
	rem $t1,$t0,4
	div $t2,$t0,4
	bgt $t1,0, soma
	j fim1
soma:
add $t3,$t2,1
j fim2

fim2:
li $v0,4
la $a0,escreva01
syscall

li $v0,1
add $a0,$t3,0
syscall
j fim

fim1:
li $v0,4
la $a0,escreva01
syscall

li $v0,1
add $a0,$t2,0
syscall
fim:

