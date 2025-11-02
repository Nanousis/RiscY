.global _boot
.text

_boot:                    /* x0  = 0    0x000 */
    /* REMINDER LB needs a  to not crash*/

    li t5,0
    findProgram:
    li a0, 1023
    addi a1, a0, 1025
	jal ra,clearScreen
     
    li t0, 'P'
    addi a0,a0,1
    sb t0,0(a0)
    
    li t0, 'r'
    addi a0,a0,1
    sb t0,0(a0)
    
    li t0, 'o'
    addi a0,a0,1
    sb t0,0(a0)
    
    li t0, 'g'
    addi a0,a0,1
    sb t0,0(a0)
    
    addi t0,t5,'1'
    addi a0,a0,1
    sb t0,0(a0)
    
    li t0, ':'
    addi a0,a0,1
    sb t0,0(a0)
    
    li t0, ' '
    addi a0,a0,1
    sb t0,0(a0)
	li t1,0
    li t2,1
    li t3,2
	if1:bne t5,t1,if2
        li t0, 'H'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'e'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'l'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'l'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'o'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, ' '
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'w'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'o'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'r'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'l'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'd'
        addi a0,a0,1
        sb t0,0(a0)
        j exitif
        
    if2:bne t5,t2,if3
        li t0, 'F'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'i'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'b'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'o'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'n'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'a'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'c'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'c'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'i'
        addi a0,a0,1
        sb t0,0(a0)
        j exitif
         
    if3:bne t5,t3,exitif
    	li t0, 'B'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 't'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'n'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, ' '
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 't'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 'e'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 's'
        addi a0,a0,1
        sb t0,0(a0)
        li t0, 't'
        addi a0,a0,1
        sb t0,0(a0)   
         
    exitif:
    ifbtn1:
    	li t1,0
        li t2,0
		lb t2, 1(a1)
        
        lb t1, 0(a1)
        bnez t2, btn2pressed
		bnez t1,btn1pressed
  		j ifbtn1
         
         
         
    btn1pressed:
    		 
             
             
    	    li t1,3
            addi t5,t5,1
            ble t5,t3,findProgram
			 
             
            li t5,0
            increment:
            j findProgram
             
             
             
	btn2pressed:
     
     
	li t1,0
    li t2,1
    li t3,2
   	beq t5,t1,helloworld

   	beq t5,t2,fibonacci
     
     
   	beq t5,t3,btnpressed
     
     
    li t5,0
    j helloworld

   	helloworld:
   	 
   	jal ra,clearScreen
    hell:
	li a0, 1024
    li t0,'H'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'e'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'l'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'l'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'o'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,' '
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'w'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'o'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'r'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'l'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'d'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'!'
    sb t0,0(a0)
    addi a0,a0,1
    
    j hell
     
     
    
    fibonacci:
     
   	jal ra,clearScreen
     
    fib2:
	li a0, 1024
    li t0,'F'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'i'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'b'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,' '
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'5'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,':'
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,' '
    sb t0,0(a0)
    addi a0,a0,1
    
    li t0,'8'
    sb t0,0(a0)
    addi a0,a0,1
    
    j fib2
     
     
    
    btnpressed:
     
    li t0,1024 /* screen adress*/
    addi t1,t0,32 /* screen adress end */
    addi t3,t0, 1024
    loopCS1:
    lb t2,2(t3)
    
    addi t2,t2,'0'
    sb t2,0(t0)
    addi t0,t0,1
    blt t0,t1,loopCS1
    addi t1,t0,32 /* screen adress end */
    loopCS2:
    lb t2,3(t3)
    
    addi t2,t2,'0'
    sb t2,0(t0)
    addi t0,t0,1
    blt t0,t1,loopCS2
	j btnpressed
     
     
    
    infloop:
     
     
     
    j infloop
    
    
    clearScreen:
    li t0,1024 /* screen adress*/
    addi t1,t0,64 /* screen adress end */
	loopCS:
    li t2, ' '
    sb t2,0(t0)
     
    addi t0,t0,1
    blt t0,t1,loopCS
    ret

.data
variable:                    