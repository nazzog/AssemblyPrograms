#Exercício 5: do-while
#Supor que as variáveis de a, b e c estão carregadas nos
#registradores $8, $9 e $10

	.text
	.globl main
main:
	do:
    	add $10, $10, $11
    	addi $8, $8, -1
    	beq $8, $0, do
