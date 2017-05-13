#Exercício 2: ifElse

.data
    bne $t0, t01, else
    add $t2, $t3, $t4
    j exit
else:
    sub $t2, $t3, $t4
exit: