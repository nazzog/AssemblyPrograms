#Exercício 2: ifElse
#if ( i == j )
#f = g + h;
#else
#f = g – h;

	.text
	.globl main
main:
	bne $11, $12, else
    	add $8, $9, $10
    	j exit
else:
    	sub $8, $9, $10
exit:
