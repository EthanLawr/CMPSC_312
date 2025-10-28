# Push $t5 to the stack. Update $sp appropriately.
addi $sp, $sp, -4       # $sp = $sp - 4
sw $t5, 0($sp)          # M[$sp] = $t5

# Pop from stack to $t2. Update $sp appropriately.
lw $t2, 0($sp)          # $t2 = M[$sp + 0] = M[8184]
addi $sp, $sp, 4        # $sp = $sp + 4 = 8188

# Push argument $t6 to the stack, then make space for a return value.
# Update $sp appropriately.
addi $sp, $sp, -4       # $sp = $sp + -4 = 8184
sw $t6, 0($sp)          # M[$sp + 0] = M[8184] = $t6
addi $sp, $sp, -4       # $sp = $sp + -4 = 8180


# Pop the return value to $t1, then remove space for argument on stack.
# Update $sp appropriately.

lw $t1, 0($sp)          # $t1 = M[$sp + 0] = M[8180]
addi $sp, $sp, 4        # $sp = $sp + 4 = 8184
addi $sp, $sp, 4        # $sp = $sp + 4 = 8188


# Load argument from stack to $t0. Then, copy return value $t1 to stack.
lw $t0, 4($sp)          # $t0 = M[$sp + 4] = M[8184]
addi $t1, $zero, 172    # $t1 = 172
mul $t1, $t0, $t1       # $t1 = $t0 * $t1
sw $t1, 0($sp)          # M[$sp + 0] = M[8180] = $t1
jr $ra                  # jump to $ra

