addi r1, r0, 4
xor r2, r2, r2
nop
nop
nop
sw 0(r2), r1
sw 4(r2), r1
sw 8(r2), r1
sw 12(r2), r1
nop
ciclo:
lw r3, 0(r2)
nop
nop
nop
addi r3, r3, 10
nop
nop
nop
sw 0(r2), r3
nop
nop
nop
subi r1, r1, 1
addi r2, r2, 4
bnez r1, ciclo
nop
addi r4, r0, 65535 
ori r5, r4, 100000
add r6, r4, r5
addi r9,r0,#154
nop
nop
nop
jr r9
nop
add r10,r0,#121
end:
j end
addi r7, r0, 65535 
addi r8, r0, 65535 
nop
nop
nop
jal coglione
nop
j end
nop
addi r10, r0, 65535 
coglione:
addi r11, r0, 65535 
addi r12, r0, 65535 
nop
nop
nop
jalr r31
