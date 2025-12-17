

#include <stdarg.h> 
#include <stdint.h>
#include <elf.h>
#include "riscYstdio.h"

typedef struct Programheader{
    unsigned int startAddress;
    unsigned int endAddress;
} Programheader;

#define RAM_ADDRESS 0x80000000
#define RAM_SIZE 0x80000 // 8MB of RAM
#define FLASH_READY 0x8B000000
#define FLASH_REN 0x8B000001
#define FLASH_WEN 0x8B000002
#define FLASH_ADRESS 0x8B000004
#define FLASH_DATA_IN 0x8B000008
#define FLASH_DATA_OUT 0x8B00000C
#define USB 0x10000000

#define FILE_OFFSET 4 

#define USB_ENABLED 0


// Simple signed 32-bit division implementation
int __divsi3(int a, int b) {
    if (b == 0) {
        // You may want to handle division by zero differently
        return 0;
    }

    int sign = 0;
    if (a < 0) {
        a = -a;
        sign ^= 1;
    }
    if (b < 0) {
        b = -b;
        sign ^= 1;
    }

    unsigned int ua = (unsigned int)a;
    unsigned int ub = (unsigned int)b;

    unsigned int result = 0;
    while (ua >= ub) {
        unsigned int temp = ub, multiple = 1;
        while ((temp << 1) <= ua) {
            temp <<= 1;
            multiple <<= 1;
        }
        ua -= temp;
        result += multiple;
    }

    return sign ? -((int)result) : (int)result;
}

int __modsi3(int a, int b) {
    int div = __divsi3(a, b);
    return a - div * b;
}
int __mulsi3(int a, int b) {
    int result = 0;
    int negative = 0;

    if (a < 0) {
        a = -a;
        negative = !negative;
    }
    if (b < 0) {
        b = -b;
        negative = !negative;
    }

    while (b) {
        if (b & 1) {
            result += a;
        }
        a <<= 1;
        b >>= 1;
    }

    return negative ? -result : result;
}


int line_seg=0;
void check_value(uint32_t value, uint32_t desired, int test) {
    
    if( value!=desired ) {
        printf("expected:%x",desired);
        printf("Got: %x. %d\n",value,test);
        // while(1);
    }
    // printf("%x %d|| ",value,test);
    // line_seg++;
    // if(line_seg==3){
    //     line_seg = 0;
    //     printf("\n");
    // }
}
unsigned int readFlash(unsigned int adress){
    char *flashReady = (char *)FLASH_READY;
    char *flashRen = (char *)FLASH_REN;
    unsigned int *flashAdress = (unsigned int *)FLASH_ADRESS;
    unsigned int *flashData = (unsigned int *)FLASH_DATA_OUT;
    unsigned int data = 0;
    *flashAdress = adress;
    *flashRen = 1;
    // while(*flashReady == 0);
    for(volatile int j=0; j<200; j++);
    data = *flashData;
    *flashRen = 0;
    return data;
}

int getUSBint() {
    volatile int *usb = (volatile int *)USB;
    return usb[0];
}


void WriteSprite(int spriteNum,char *sprite){
    unsigned short *screenSprites = (unsigned short *) 0x88001000;
    for(int i=0; i<32; i++){
        screenSprites[i+spriteNum*32] = sprite[i];
    }
}
void elfLoader(int flash_start){
    clearScreen();
    printf("Loading Program...\n");
    // clear RAM
    uint32_t *write_ram = (uint32_t *)RAM_ADDRESS;
    for(int i = 0; i<RAM_SIZE; i+=4){
        write_ram[i/4]=0;
    }
    int elf_header[(sizeof(Elf32_Ehdr)>>2)]; 
    int buffer[(sizeof(Elf32_Phdr)>>2)]; 
    int buffer_section[(sizeof(Elf32_Shdr)>>2)]; 
    uart_printf("Size of header: %d\r\n",sizeof(Elf32_Ehdr));
    // char nl=0;
    for(int i =0; i<(sizeof(Elf32_Ehdr)>>2);i++){
        elf_header[i]=readFlash(flash_start+i*4);
        // uart_printf("%x ",elf_header[i]);
        // nl++;
        // if(nl==5){
        //     uart_printf("\n");
        //     nl=0;
        // }
    }
    uart_printf("\r\n");
    Elf32_Ehdr *header = (Elf32_Ehdr *) elf_header;
    Elf32_Phdr *header_buff = (Elf32_Phdr *) buffer;
    Elf32_Shdr *section_headers = (Elf32_Shdr *)buffer_section;
    check_value(header->e_ident[EI_MAG0], 0x7f,0);
    check_value(header->e_ident[EI_MAG1], 'E',1);
    check_value(header->e_ident[EI_MAG2], 'L',2);
    check_value(header->e_ident[EI_MAG3], 'F',3);
    check_value(header->e_ident[EI_CLASS], ELFCLASS32,4 );
    check_value(header->e_ehsize, sizeof(Elf32_Ehdr),5);
    check_value(header->e_ident[EI_DATA], ELFDATA2LSB,6);
    check_value(header->e_ident[EI_VERSION], EV_CURRENT,7);
    check_value(header->e_ident[EI_OSABI], ELFOSABI_NONE,8);
    check_value(header->e_ident[EI_ABIVERSION], 0 ,9);
    check_value(header->e_type, ET_EXEC,10);
    check_value(header->e_machine, EM_RISCV,11);
    check_value(header->e_version, EV_CURRENT,12);
    Elf32_Addr entry_point = header->e_entry;
    check_value(header->e_phentsize, sizeof(Elf32_Phdr),13);

    // initiate_read(flash_start+ header->e_phoff, sizeof(Elf32_Ehdr)*header.e_phnum);
    uart_printf("%d total headers. Entry: %x\r\n",header->e_phnum,header->e_entry);
    for(int i=0; i<header->e_phnum;i++){
        for(int j =0; j<(sizeof(Elf32_Phdr)>>2);j++){
            buffer[j]=readFlash(flash_start+header->e_phoff+(sizeof(Elf32_Phdr)*i)+j*4);
            // uart_printf("%d,%x ",j,buffer[j]);
        }
        // uart_printf("HType %x, Vaddr %x | ", header_buff->p_type,header_buff->p_vaddr);
        if(header_buff->p_type != PT_LOAD){
            uart_printf("Skipped\r\n");
            continue;
        }
        if(header_buff->p_filesz==0){
            uart_printf("size0\r\n");
            continue;
        }
        uint8_t *write_bytes = (uint8_t *)header_buff->p_vaddr;
        uart_printf("\r\n%d: writing Ram %x offset %x\r\n",i,write_bytes,header_buff->p_offset);
        for(int j = 0; j<header_buff->p_filesz;j++){

            write_bytes[j]=readFlash(header_buff->p_offset+j+flash_start);
            if(header_buff->p_filesz-j<20){
                uart_printf("%x ",write_bytes[j]);
            }
        }
        // SPI_FLASH::initiate_read(
            //     program_headers[i].p_offset + OS_FLASH_ADDRESS,
            //     program_headers[i].p_filesz,
            //     reinterpret_cast<void *>(program_headers[i].p_vaddr) );
        }
    uart_printf("\r\n%d total sec\r\n",header->e_shnum);
    for(int i = 0; i < header->e_shnum; i++){
        for(int j =0; j<(sizeof(Elf32_Shdr)>>2);j++){
            buffer_section[j]=readFlash(flash_start+header->e_shoff+(sizeof(Elf32_Shdr)*i)+j*4);
        }
        if(section_headers->sh_type != SHT_NOBITS) {
            uart_printf("S ");
            continue;
        }
        uart_printf("Clearing BSS @%x size: %dB \r\n",section_headers->sh_addr,section_headers->sh_size);
        char *bss = (char *) section_headers->sh_addr;
        for(int j = 0; j<section_headers->sh_size; j++){
            bss[j]=0;
        }
    }
    clearScreen();
    // while(1);
}

void TestRAM(){
    uint32_t *RAM = (uint32_t *)RAM_ADDRESS;
    uart_printf("Read/Write Test\r\n");
    for(int i =0; i< RAM_SIZE/4 ; i++){
        RAM[i]=i;
    }
    for(int i =0; i< RAM_SIZE/4 ; i++){
        if(RAM[i]!=i){
            uart_printf("Write error at %x\r\n",i);
            uart_printf("Read %x expecting %x\r\n",RAM[i],i);
            printf("Write error at %x\r\n",i);
            printf("Read %x expecting %x\r\n",RAM[i],i);
            while(1);
        }
    }
    uart_printf("Test Successfull. Total size %d Bytes\r\n",RAM_SIZE);
}
// this function reads the program from the flash and loads it into the program memory
int main() {
    TestRAM();
    Programheader Selected_Header;
    Programheader temp_Header;
    unsigned int readData=0;
    unsigned int *programMemory = (unsigned int *)RAM_ADDRESS;
    unsigned int tempAddress=0;
    unsigned int startinAddress=0;  

    char programNum=0;
    // printf("\n\nList of programs\n");
    int selectNum=0;
    short btnPressed=0;
    char btnStart=0;
    int btnDebounce=0;
    char magicNum[]="RISCY.FS";
    char readChar;
    short textPos=0;
    int i=0,j=0;
    char sprite[32]={255};
    clearScreen();
    char usbKey=0;
    char oldKey=0;
    char boardBtns=0;
    char newKey=0;
    while(1){
        char magicNumRead[9]={0};
        magicNumRead[9]='\0';
        // this should be changed to take the offset value and not the absolute address to jump to
        // printf("Bootloader RiscY\n");
        // printf("--------------\n");
        programNum = 0;
        tempAddress = 0;
        readData = readFlash(tempAddress);
        magicNumRead[0] = readData & 0xFF;
        magicNumRead[1] = (readData >> 8) & 0xFF;
        magicNumRead[2] = (readData >> 16) & 0xFF;
        magicNumRead[3] = (readData >> 24) & 0xFF;
        tempAddress += 4;
        readData = readFlash(tempAddress);
        magicNumRead[4] = readData & 0xFF;
        magicNumRead[5] = (readData >> 8) & 0xFF;
        magicNumRead[6] = (readData >> 16) & 0xFF;
        magicNumRead[7] = (readData >> 24) & 0xFF;
        tempAddress += 4;
        for(i=0; i<8; i++){
            if(magicNum[i]!=magicNumRead[i]){
                // printf("Error: Magic number not found\n");
                printf("Error MN: %s\n",magicNumRead);
                return 0;
            }
        }

        programNum = readFlash(tempAddress);
        tempAddress += 1;
        btnPressed=0;
        btnStart=0;
        selectNum=0;
        startinAddress = tempAddress;
        uint8_t previous_region=1;
        while(1){
            uart_printf("Programs found: %d\r\n",programNum);
            if(selectNum/3!=previous_region){
                clearScreen();
                printf("Second Stage: %d v1.0\n",programNum);
                printf("\nSelect program: \n");
            }
            printfSCR(64*14,15,"LOADING");
            tempAddress = startinAddress;
            uint8_t cur_region=0;
            previous_region = selectNum/3; 
            for(i=0; i/3<=previous_region; i++){
                cur_region = 0;
                if(i/3==previous_region){
                    cur_region=1;
                }
                // i here is the place of the program, can truncate it to i%3
                textPos = FILE_OFFSET+ 64*5 + 5 + (i%3)*192;
                if(cur_region){
                    textPos += printfSCR(textPos,15,"%d: ",i);
                }
                do{
                    readData = readFlash(tempAddress);
                    readChar = readData & 0xFF;
                    tempAddress += 1;
                    textPos++;
                    if(readChar==0){
                        break;
                    }
                    if(cur_region){
                        putch(textPos, readChar, (i==selectNum)?BG_MAGENTA:15);
                    }
                }while(1);
                readAddress:
                temp_Header.startAddress = readFlash(tempAddress);
                tempAddress += 4;
                temp_Header.endAddress = readFlash(tempAddress);
                tempAddress += 4;
                for(int k=0;k<8;k++){
                    for(int j=0;j<32;j++){
                            readData = readFlash(tempAddress);
                            tempAddress += 1;
                            sprite[j] = readData & 0xFF;
                    }
                if(cur_region){
                    WriteSprite(i*8+k,sprite);
                }
                }
                if(cur_region){
                    if(i==selectNum){
                        Selected_Header=temp_Header;
                    }
                }
                textPos = FILE_OFFSET + 64*5+i*192;
                putch(textPos,                  i*8 + 128, 0);
                putch(textPos+1,                i*8 + 128+1, 0);
                putch(textPos+2,                i*8 + 128+2, 0);
                putch(textPos+3,                i*8 + 128+3, 0);
                putch(textPos+SCREEN_WIDTH,     i*8 + 128+4, 0);
                putch(textPos+SCREEN_WIDTH+1,   i*8 + 128+5, 0);
                putch(textPos+SCREEN_WIDTH+2,   i*8 + 128+6, 0);
                putch(textPos+SCREEN_WIDTH+3,   i*8 + 128+7, 0);
            }
            while(1){
                printfSCR(64*14,15,"       ");
                #if USB==1
                    usbKey = (getUSBint()>>24)&0xFF;
    
                    printfSCR(SCREEN_WIDTH*18,15,"%x",usbKey);
                    newKey = usbKey|boardBtns;
                #else
                    if(getButton(BUTTON_DOWN_RIGHT)||getButton(BUTTON_DOWN_LEFT)){
                        boardBtns = 0x51;
                    }
                    else if(getButton(BUTTON_UP_RIGHT)||getButton(BUTTON_UP_LEFT)){
                        boardBtns = 0x52;
                    }
                    else if(getButton(BUTTON_RIGHT_RIGHT)||getButton(BUTTON_RIGHT_LEFT)){
                        boardBtns = 0x28;
                    }
                    else if(getButton(BUTTON_LEFT_RIGHT)||getButton(BUTTON_LEFT_LEFT)){
                        boardBtns = 0x28;
                    }
                    else{
                        boardBtns = 0;
                    }
                    newKey = boardBtns;
                #endif
                for(volatile int k=0; k<WaitTime*10; k++);
                // printfSCR(64*14,15,"New key %x",newKey);
                if(newKey!=oldKey){
                    if(newKey == 0x51){//down arrow
                        selectNum++;
                        if(selectNum>=programNum){
                            selectNum=0;
                        }
                    }
                    else if(newKey == 0x52){//up arrow
                        selectNum--;
                        if(selectNum<0){
                            selectNum=programNum-1;
                        }
                    }
                    else if(newKey == 0x28){//enter key
                        goto get_out;
                    }
                    break;
                }
                oldKey = newKey;
            }
        }
        get_out:
        elfLoader(Selected_Header.startAddress);
        // int programSize=(headers[selectNum].endAddress-headers[selectNum].startAddress)>>2;
        for(int i = 0; i<WaitTime; i++);
        uart_printf("\r\n---DONE---\r\n");
        // printf("Jumping to program\n");
        // Define a function pointer to jump to the loaded program
        void (*jump_to_program)() = (void (*)())(RAM_ADDRESS);
        // Call the function pointer to jump to the loaded program
        jump_to_program();
        clearScreen();
    }
}


