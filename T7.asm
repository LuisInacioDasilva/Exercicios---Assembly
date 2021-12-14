#criar um algoritmo que leia um numero(num) da entrada e imprima os múltiplos de 3 e 5 ao mesmo tempo no intervalo de 1 a num.
.data
escreva00: .asciiz"Digite um número: \n "
escreva01: .asciiz"\nNumero múltiplo: "

.text
main:


add $t1,$t1,1
li $v0,4
la $a0,escreva00
syscall
li $v0,5
syscall
add $t0,$v0,0


repeticao:
blt $t1,$t0,menor
j fim




menor:

rem $t2,$t1,3
rem $t3,$t1,5




beq $t2,0,outromult
add $t1,$t1,1
j repeticao



outromult:
beq $t3,0,multiplo
add $t1,$t1,1
j repeticao



multiplo:

li $v0,4
la $a0,escreva01
syscall



li $v0,1
add $a0,$t1,0
syscall

add $t1,$t1,1

j repeticao



fim:



