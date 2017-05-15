#Exercício 4: while (a != 0) { c = c + b; a--; }
#Supor que as variáveis de a, b e c estão carregadas nos
#registradores $8, $9 e $10

	.text
	.globl main
main:
while:
	beq $8, $0, exit
    	add $10, $10, $9
    	addi $8, $8, -1
    	j while
exit:
