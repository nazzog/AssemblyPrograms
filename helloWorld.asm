#Primeiro programa em Assemby

.data
msg:	.asciiz "Hello World"
.text
li $v0, 4
la $a0, msg
syscall
li $v0, 10
syscall