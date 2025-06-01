/* Define the memory regions */
MEMORY
{
    RAM (wx) : ORIGIN = 0x00800000, LENGTH = 8K
}

/* Define stack size */
_stack_size = 0x200; /* 0.5KB stack size */

/* Place sections into memory */
SECTIONS
{
    . = ORIGIN(RAM);

    /* .text section (code) and .rodata (read-only data) */
    .text : {
        *(.text)           /* Include all .text sections */
        *(.rodata)         /* Include all .rodata sections */
        _etext = .;        /* Mark end of .text and .rodata section */
    } > RAM

    /* Align to 4 bytes to ensure proper alignment for the .data section */
    . = ALIGN(4);

    /* .data section (initialized data) */
    .data : {
        _sdata = .;        /* Start of .data section */
        *(.data)           /* Include all .data sections */
        _edata = .;        /* End of .data section */
    } > RAM AT> RAM

    /* Align to 4 bytes for .bss */
    . = ALIGN(4);

    /* .bss section (uninitialized data) */
    .bss : {
        _sbss = .;         /* Start of .bss section */
        *(.bss COMMON)     /* Include .bss and COMMON sections */
        _ebss = .;         /* End of .bss section */
    } > RAM

    /* Place the stack at the top of RAM */
    _stack_end = ORIGIN(RAM) + LENGTH(RAM);     /* Top of RAM */
    _stack_top = _stack_end;                   /* Start of stack */
    _stack_bottom = _stack_top - _stack_size;  /* Bottom of stack */
}

/* Define the entry point */
ENTRY(_start)
