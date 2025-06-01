.global _boot
.text

_boot:
   lui s0, 0x88000 /* screen address */
   li s1, 'a'
   li s2, 'z'
   move t0, s1
   li s3, 128       /* screen size */
   loop:
   beqz s3, exit    /* check if we have written the whole screen*/
   addi s3, s3, -1  /* decrement screen size */
   addi s0, s0, 1   /* increment screen address */
   sb t0, 0(s0)     /* write character to display */
   addi t0,t0,1     /* increment character */
   bne s2,t0, loop  /* check if current character is z, if so set it to a*/
   move t0, s1
   j loop           /* loop */
   exit:
  	nop
    j exit
          