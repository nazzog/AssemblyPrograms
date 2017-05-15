#Exercício 7: Multiplicação por somas sucessivas
# c ← a * d
# while (a > 0) {
#c = c + d;
#a--; }

#Declaração das variáveis:
.data
	a: .word 3
	d: .word 5
	c: .word 0
.text
#Carga das variáveis nos registradores:
	la $t0, a		#t0 recebe endereço de a (&a)
	lw $t1, 0($t0)

	la $t2, d		#t2 recebe endereço de d (&d)
	lw $t2, 0($t2)

	la $t3, c		#t0 recebe endereço de c (&c)
	lw $t4, 0($t3)

#Manipulação das variáveis em registradores:
while:
	slt $t8, $0, $t1		#t8 recebe 1 se 0 < a
	beq $t8, $0, exit	#sai do laço while quando t8 for igual a 0 (a < 0)
	add $t4, $t4, $t2	#c = c + d
	addi $t1, $t1, -1	#a--
	j while
exit:
#Atualização das variáveis na em memória:
	sw $t1, 0($t0)
	sw $t4, 0($t3)








