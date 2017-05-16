#Exercício 8: divisão por subtrações sucessivas
# q ← a / d (parte inteira)
# r ← a % d
# void main() {
# int a = 10, d = 3;
# int q = 0, r;
# r = a;
# while (r >= d ) {
# r = r - d;
# q++;
#  }
#}

#Declarando variáveis
.data
	a: .word 10
	d: .word 3
	q: .word 0
	 r: .word 0

#Carga das variáveis nos registradores:
.text
	la $t0, a
	lw $t0, 0($t0)

	la $t1, d
	lw $t1, 0($t1)

	la $t2, q
	lw $t3, 0($t2)

	la $t4, r
	lw $t5, 0($t4)

#Manipulação das variáveis:
	add	$t5, $t5, $t0
while:
	slt $t8, $t5, $t1
	beq $t8, 1, end
	sub $t5, $t5, $t1
	addi $t3, $t3, 1
	j while
end:
#Atualização das variáveis na memória:
	sw $t3, 0($t2)
	sw $t5, 0($t4)