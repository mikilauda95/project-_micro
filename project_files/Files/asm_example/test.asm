addi r2,r0,#5
add r3,r2,r5
nop
nop
nop
add r3,r2,r3
nop
nop
nop
sub r4,r2,r1
sub r5,r1,r2
nop
nop
nop
or r6,r3,r4
slli r3,r3,#2 
addi r1,r2,#5
nop
nop
nop
sw 21(r2),r3
nop
nop
nop
lw r10,r0(26)
nop
nop
nop
xor r10, r10, r2
srli r3,r3,#1
nop
nop
nop
and r3,r3,r1
srl r2,r2,r2
beqz 32

