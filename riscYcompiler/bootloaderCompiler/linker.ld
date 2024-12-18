/* Define the memory regions */
MEMORY
{
    RAM (wx) : ORIGIN = 0x00000000, LENGTH = 4K
}

/* Define stack size */
_stack_size = 0x200; /* 1KB stack size */

/* Place sections into memory */
SECTIONS
{
    . = ORIGIN(RAM);

    /* .text section (code) and .rodata (read-only data) */
    .text : {
        *(.text)
        *(.rodata)         /* Include read-only data */
        _etext = .;        /* Mark end of text and rodata section */
    } > RAM

    /* Align to 4 bytes to ensure proper alignment for the .data section */
    . = ALIGN(4);

    /* .data section (initialized data) */
    .data : AT(_etext) {
        _sdata = .;        /* Start of data section */
        *(.data)
        _edata = .;        /* End of data section */
    } > RAM

    /* Align to 4 bytes for .bss */
    . = ALIGN(4);

    /* .bss section (uninitialized data) */
    .bss : {
        _sbss = .;         /* Start of bss section */
        *(.bss COMMON)
        _ebss = .;         /* End of bss section */
    } > RAM

    /* Align to 4 bytes for stack placement */
    . = ALIGN(4);

    /* Stack placement at the top of RAM */
    _stack_end = ORIGIN(RAM) + LENGTH(RAM);     /* Top of RAM */
    _stack_top = _stack_end - _stack_size;      /* Start of stack */
    _stack_bottom = _stack_top - _stack_size;   /* Bottom of stack */
}

/* Define the entry point */
ENTRY(_start)
