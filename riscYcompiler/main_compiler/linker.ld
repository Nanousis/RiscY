/* Define the memory regions */
MEMORY
{
  RAM (wx) : ORIGIN = 0x80000000, LENGTH = 0x00400000  /* 4 MiB */
}

/* Define stack size */
_stack_size = 0x00008000; /* 32 KiB */

/* Place sections into memory */
SECTIONS
{
  . = ORIGIN(RAM);

  /* Code + rodata */
  .text : {
    *(.text .text.*)
    *(.rodata .rodata.*)
    _etext = .;
  } > RAM

  . = ALIGN(4);

  /* Initialized data */
  .data : {
    _sdata = .;
    *(.data .data.*)
    _edata = .;
  } > RAM AT> RAM

  . = ALIGN(4);

  /* Uninitialized data */
  .bss : {
    _sbss = .;
    *(.bss .bss.*)
    *(COMMON)
    _ebss = .;
  } > RAM

  /* -------- Fixed 3 MiB heap -------- */
  . = ALIGN(16);
  .heap (NOLOAD) : {
    _heap_start = .;
    . = . + 0x00300000;   /* 3 MiB */
    _heap_end = .;
  } > RAM

  /* -------- Stack at top of RAM -------- */
  _stack_end    = ORIGIN(RAM) + LENGTH(RAM);
  _stack_top    = _stack_end;
  _stack_bottom = _stack_top - _stack_size;

}

/* Entry point */
ENTRY(_start)
