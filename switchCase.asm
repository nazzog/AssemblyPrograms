#Exercício 3: Switch-Case
#Supor que as variáveis de f, g e h estão carregadas nos
#registradores $12, $13 e $14 e a variável x no $8

	.text
	.globl main
main:
	#Carga de Constantes para comparação
	addi $9, $0, 1			#r9 == 1
	addi $10, $0, 2		#r10 == 2
	addi $11, $0, 3		#r11 == 3

case1:
	bne $8, 9, case2		#verifica se x != 1
	add $12, $13, $14
	j exit
case2:
	bne $8, 10, case3		#verifica se x != 2
	sub $12, $13, $14
	j exit
case3:
	bne $8, 11, default		#verifica se x != 3
	addi $12, $13, 0
	j exit
default:
	addi $12, $12, 1		#f++
exit:
