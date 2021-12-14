#Fazer, em Assembly MIPS, um algoritmo que solicite diversas entradas de valores que devem estar em um intervalo entre 0 e 100 (0 e 100, inclusive).
#Se a entrada de dados estiver fora do intervalo definido, pedir novamente o valor e desconsiderar a entrada.
#Quando o usuário digitar um número negativo, o algoritmo deve finalizar e apresentar quantos números foram digitados e estão no intervalo [0 - 33] ; [34 - 66] ; [67 - 100]
.data
	escreva00: .asciiz"Digite um número entre 0 e 100: \n "
	escreva01: .asciiz"Os números digitados estão no intervalo entre: "
	escreva02: .asciiz" e "
	escreva03: .asciiz"\nA quantidade de números digitados é: "
	
.text
main:        
	add $t4,$t4,0
	add $t3,$t3,0
	add $t2,$t2,0
	
	
	volta:
	add $t1,$t1,1
	li $v0,4
	la $a0,escreva00
	syscall
	li $v0,5
	syscall
	add $t0,$v0,0
	
	
	
	bgt $t0,100,nulo
	blt $t0,0,fim
	j maior
	

nulo:
sub $t1,$t1,1
j volta

maior:
ble $t0,33,pcondicao
ble $t0,34,scondicao
bgt $t0,66,tcondicao
j volta

pcondicao: 
add $t4,$t2,33
j volta

scondicao: 
add $t3,$t3,34
add $t4,$t2,66
j volta

tcondicao: 
add $t3,$t2,67
add $t4,$t2,100
j volta


fim:
sub $t1,$t1,1
li $v0,4
la $a0,escreva01
syscall

li $v0,1
add $a0,$t3,0
syscall

li $v0,4
la $a0,escreva02
syscall

li $v0,1
add $a0,$t4,0
syscall

li $v0,4
la $a0,escreva03
syscall

li $v0,1
add $a0,$t1,0
syscall


	
