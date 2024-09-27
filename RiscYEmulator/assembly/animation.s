	li s1,1024
    addi s2,s1,64
    li a0, 'A'
    li t0,0
    li t1,16
    li t2, 0
    li t3, 4
    loopXPlus:
    add t5,s1,t0
    sb a0,0(t5)
    addi t0,t0,1
    blt t0,t1,loopXPlus
    loopYminus:
    addi t0,t0,16
    sb a0,0(t5)
    add t2,t2,1
    blt t2,t3, loopYminus