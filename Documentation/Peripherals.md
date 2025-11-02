# Memory mapped registers and addresses

- Bootloader is at 0x0000000
- Second stage bootloader at 0x00800000
- Clint 
    - Start         0x02000000
    - End           0x02f00000
    - MSIP_ADDR     0x02000000;
    - MTIME_ADDR    0x0200BFF8;
    - MTIMECMP_ADDR 0x02004000;
- VGA Textmode:
    - Start               0x88000000
    - End                 0x80FFFFFF
    - Framebuffer enable  0x88002800, Used to switch between TextMode and Framebuffer
    - Framebuffer address 0x88002804, Tells the display the location of the framebuffer
- UART NS16550
    - Start 0x10000000
    - End   0x1000000f
    - Uart ier 0x10000001
    - Uart Ready (lsr) 0x10000005
    - Uart Data I/O 0x10000000
        - some other stuff as well. See uartController.v
- Buttons
  - Start 0x89000000
    - order goes RD -> RU -> RL -> RR -> LD -> LU -> LL -> LR
  - End 0x89000007
## Flash Addresses
- Second Stage bootloader 0x75000
- Read Only filesystem 0x50000