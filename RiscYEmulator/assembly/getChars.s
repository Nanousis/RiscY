    li s0,1024
    addi s1,s0,64
    li t0,0
    loop1:
    addi t1, s0, 0
    loop2:
    addi t0,t0,1
    sb t0,0(t1)
    addi t1,t1,1
    blt t1,s1,loop2
    j loop1
	