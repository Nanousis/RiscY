SECTIONS
{
    . = 0x0;                   /* Start address */
    .text : { *(.text) }       /* Code section */
    .rodata : { *(.rodata) }   /* Read-only data */
    .data : { *(.data) }       /* Initialized data */
    .bss : { *(.bss COMMON) }  /* Uninitialized data */
}
ENTRY(_start)                  /* Entry point */
