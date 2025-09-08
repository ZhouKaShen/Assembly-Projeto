#projeto 2
#Alunos: Zhou Ka Shen, Felipe Zhu Zhang

.data
anoAlunoUm: .word 2002
anoAlunoDois: .word 2005
anoExtra: .word 2025
msg: .asciiz "Soma do resultados inteiro:"

.text
.globl main
main:
    lw $t0, anoAlunoUm
    lw $t1, anoAlunoDois
    lw $t3, anoExtra
    add $t2, $t0, $t1
    add $t2, $t2, $t3

    li $v0, 4
    la $a0, msg
    syscall

    move $a0, $t2
    li $v0, 1
    syscall


    li $v0, 10
    syscall #fim do projeto
