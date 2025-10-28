# Complete 2 tasks as directed by ZyBooks Challenges
# Task 1: Create Pass DM[$t3] to the YearlySalary subroutine, and store the return value to DM[$t4].
lw   $t1, 0($t3)         # Load argument from DM[$t3] into $t1
jal  YearlySalary        # Call the subroutine
sw   $t2, 0($t4)         # Store return value from $t2 into DM[$t4]
j    Done                # Return 

# Task 2: Create a YearlySalary Function
mul $t4, $t3, $t3       # $t4 = $t3 * $t3
addi $t4, $t4, 5        # $t4 = $t4 + 5
j    Done               # jump to Done