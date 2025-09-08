#projeto 1
#Alunos: Zhou Ka Shen, Felipe Zhu Zhang

.data
vet: .word 4,3,9,5,2,1
tam: .word 6

.text
.globl main
main:
    la $s0, vet
    lw $s1, tam

loopUm:
    addi $t0, $zero, 0
    addi $t1, $s1, -1

loopDois:
    beq $t0, $t1, fimDois
    sll $t2, $t0, 2
    add $t3, $s0, $t2
    lw $t4, 0($t3)

    addi $t5, $t0, 1
    sll $t5, $t5, 2
    add $t6, $s0, $t5
    lw $t7, 0($t6)

    ble $t4, $t7, prox
    sw $t7, 0($t3)
    sw $t4, 0($t6)

prox:
    addi $t0, $t0, 1
    j loopDois

fimDois:
    addi $s1, $s1, -1
    bgtz $s1, loopUm

#print do coisa
    la $s0, vet
    li $s1, 6

printando:
    beqz $s1, fim
    lw $a0, 0($s0)
    li $v0, 1
    syscall

    li $v0, 11
    li $a0, ','
    syscall

    addi $s0, $s0, 4
    addi $s1, $s1, -1
    j printando

fim:
    li $v0, 10 #encerra defivamente
    syscall


