#Exercício 6: for (i=0; i<j; i++){ k = k + i}
#Supor que as variáveis de i, j e k estão carregadas nos
#registradores $8, $9 e $10

	.text
	.globl main
main:
	for:
    	slt $13, $8, $9			#Se i < j, $13=1 se não $13=0
    	beq $13, $0, exit		#Desvia para exit se $13 == 0 (i >= j)
    	add $10, $10, $8
    	addi $8, $8, 1
    	j for
exit:
