# Compute: $t1 = DM[6072]
lw $t1, 6072($t1)       # $t1 = M[$t1 + 6072] = M[6072]
# Compute: DM[5016] = $t0
sw $t0, 16($t1)         # M[$t1 + 16] = M[5016] = $t0

# Compute: $t1 = $t2 + DM[5088]
lw $t1, 88($t0)         # $t1 = M[$t0 + 88] = M[5088]
add $t1, $t2, $t1       # $t1 = $t2 + $t1

# Compute: DM[6072] = $t2 + DM[6040]
lw $t1, 40($t0)         # $t1 = M[$t0 + 40] = M[6040]
add $t1, $t1, $t2       # $t1 = $t1 + $t2
sw $t1, 72($t0)         # M[$t0 + 72] = M[6072] = $t1

# Compute: DM[6080] = $t2 + DM[6048]
lw $t1, 48($t0)         # $t1 = M[$t0 + 48] = M[6048]
add $t1, $t1, $t2       # $t1 = $t1 + $t2
sw $t1, 80($t0)         # M[$t0 + 80] = M[6080] = $t1

addi $sp, $sp, -4       # $sp = $sp + -4 = 8184
sw $t5, 0($sp)          # M[$sp + 0] = M[8184] = $t5