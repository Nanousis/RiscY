

#include <stdarg.h> 
#include <stdint.h>
#include <elf.h>
#include "riscYstdio.h"


typedef struct Programheader{
    unsigned int startAddress;
    unsigned int endAddress;
} Programheader;

#define PROGRAM_MEMORY 0x80000000
#define RAM_SIZE 0x8000

#define FLASH_READY 0x8B000000
#define FLASH_REN 0x8B000001
#define FLASH_WEN 0x8B000002
#define FLASH_ADRESS 0x8B000004
#define FLASH_DATA_IN 0x8B000008
#define FLASH_DATA_OUT 0x8B00000C
#define USB 0x10000000

#define FILE_OFFSET 4 

#define USB_ENABLED 0


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
// void elfLoader(int flash_start){
//     clearScreen();
//     int elf_header[(sizeof(Elf32_Ehdr)>>2)]; 
//     int buffer[(sizeof(Elf32_Phdr)>>2)]; 
//     int buffer_section[(sizeof(Elf32_Shdr)>>2)]; 
//     printf("Size of header: %d\n",sizeof(Elf32_Ehdr));
//     // char nl=0;
//     for(int i =0; i<(sizeof(Elf32_Ehdr)>>2);i++){
//         elf_header[i]=readFlash(flash_start+i*4);
//         // printf("%x ",elf_header[i]);
//         // nl++;
//         // if(nl==5){
//         //     printf("\n");
//         //     nl=0;
//         // }
//     }
//     printf("\n");
//     Elf32_Ehdr *header = (Elf32_Ehdr *) elf_header;
//     Elf32_Phdr *header_buff = (Elf32_Phdr *) buffer;
//     Elf32_Shdr *section_headers = (Elf32_Shdr *)buffer_section;
//     check_value(header->e_ident[EI_MAG0], 0x7f,0);
//     check_value(header->e_ident[EI_MAG1], 'E',1);
//     check_value(header->e_ident[EI_MAG2], 'L',2);
//     check_value(header->e_ident[EI_MAG3], 'F',3);
//     check_value(header->e_ident[EI_CLASS], ELFCLASS32,4 );
//     check_value(header->e_ehsize, sizeof(Elf32_Ehdr),5);
//     check_value(header->e_ident[EI_DATA], ELFDATA2LSB,6);
//     check_value(header->e_ident[EI_VERSION], EV_CURRENT,7);
//     check_value(header->e_ident[EI_OSABI], ELFOSABI_NONE,8);
//     check_value(header->e_ident[EI_ABIVERSION], 0 ,9);
//     check_value(header->e_type, ET_EXEC,10);
//     check_value(header->e_machine, EM_RISCV,11);
//     check_value(header->e_version, EV_CURRENT,12);
//     Elf32_Addr entry_point = header->e_entry;
//     check_value(header->e_phentsize, sizeof(Elf32_Phdr),13);

//     // initiate_read(flash_start+ header->e_phoff, sizeof(Elf32_Ehdr)*header.e_phnum);
//     printf("%d total headers. Entry: %x\n",header->e_phnum,header->e_entry);
//     for(int i=0; i<header->e_phnum;i++){
//         for(int j =0; j<(sizeof(Elf32_Phdr)>>2);j++){
//             buffer[j]=readFlash(flash_start+header->e_phoff+(sizeof(Elf32_Phdr)*i)+j*4);
//             // printf("%d,%x ",j,buffer[j]);
//         }
//         // printf("HType %x, Vaddr %x | ", header_buff->p_type,header_buff->p_vaddr);
//         if(header_buff->p_type != PT_LOAD){
//             printf("Skipped\n");
//             continue;
//         }
//         if(header_buff->p_filesz==0){
//             printf("size0\n");
//             continue;
//         }
//         printf("%d: Reading  @0x%x total of %dB\n",i,header_buff->p_offset,header_buff->p_filesz);
//         // SPI_FLASH::initiate_read(
//             //     program_headers[i].p_offset + OS_FLASH_ADDRESS,
//             //     program_headers[i].p_filesz,
//             //     reinterpret_cast<void *>(program_headers[i].p_vaddr) );
//         }
//     printf("%d total sec\n",header->e_shnum);
//     for(int i = 0; i < header->e_shnum; i++){
//         for(int j =0; j<(sizeof(Elf32_Shdr)>>2);j++){
//             buffer_section[j]=readFlash(flash_start+header->e_shoff+(sizeof(Elf32_Shdr)*i)+j*4);
//         }
//         if(section_headers->sh_type != SHT_NOBITS) {
//             printf("S ");
//             continue;
//         }
//         printf("Clearing BSS @%x size: %dB ",section_headers->sh_addr,section_headers->sh_size);
//         char *bss = (char *) section_headers->sh_addr;
//         // for(int j = 0; j<section_headers->sh_size; j++){
//         //     bss[j]=0;
//         // }
//     }
//     while(1);   
// }
// this function reads the program from the flash and loads it into the program memory
int main() {
    Programheader headers[10];
    unsigned int readData=0;
    unsigned int *programMemory = (unsigned int *)PROGRAM_MEMORY;
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
        printf("TEST BOOT: %d\n",programNum);
        btnPressed=0;
        btnStart=0;
        selectNum=0;
        printf("\nSelect program: \n");
        startinAddress = tempAddress;
        while(1){
            tempAddress = startinAddress;
            for(i=0; i<programNum; i++){
                textPos = FILE_OFFSET+64*5+5+i*192;
                do{
                    readData = readFlash(tempAddress);
                    readChar = readData & 0xFF;
                    tempAddress += 1;
                    textPos++;
                    if(readChar==0){
                        break;
                    }
                    putch(textPos, readChar, (i==selectNum)?BG_MAGENTA:15);
                }while(1);
                readAddress:
                headers[i].startAddress = readFlash(tempAddress);
                tempAddress += 4;
                headers[i].endAddress = readFlash(tempAddress);
                tempAddress += 4;
                for(int k=0;k<8;k++){
                    for(int j=0;j<32;j++){
                            readData = readFlash(tempAddress);
                            tempAddress += 1;
                            sprite[j] = readData & 0xFF;
                    }
                WriteSprite(i*8+k,sprite);
                }
                printfSCR(textPos,15," S: 0x%x, E: 0x%x",headers[i].startAddress,headers[i].endAddress);
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
            #if USB==1
                usbKey = (getUSBint()>>24)&0xFF;

                printfSCR(SCREEN_WIDTH*18,15,"%x",usbKey);
                newKey = usbKey|boardBtns;
                #else
                    if(getButtonDown()){
                        boardBtns = 0x51;
                    }
                    else if(getButtonUp()){
                        boardBtns = 0x52;
                    }
                    else if(getButtonRight()){
                        boardBtns = 0x28;
                    }
                    else if(getButtonLeft()){
                        boardBtns = 0x28;
                    }
                    else{
                        boardBtns = 0;
                    }
                    newKey = boardBtns;
                    #endif
            printfSCR(64*14,15,"New key %x",newKey);
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
                    break;
                }
            }
            oldKey = newKey;
            // for(int k=0; k<WaitTime>4; k++);
        }
        printf("Testing RAM\n");
        int *test=(int *)PROGRAM_MEMORY;
        for(int j=0; j<(1<<15)>>2; j++){
            test[j]=j<<2;
            printfSCR(64*14,15, "%x/%x",j<<2,1<<15);
        }
        for(int j=0; j<(1<<15)>>2; j++){
            if(test[j]!=j<<2){
                printf("ERROR AT %x",j);
                while(1);
            }
            printfSCR(64*14,15, "%x/%x %x",j<<2,1<<15,test[j]);
        }
        printf("All good");
        // elfLoader(headers[selectNum].startAddress);
        // int programSize=(headers[selectNum].endAddress-headers[selectNum].startAddress)>>2;
        // printf("Reading from flash %x\n",programSize);
        // for(j = 0; j < programSize; j++) {
        //     readData = readFlash((j << 2) + headers[selectNum].startAddress);
        //     programMemory[j] = readData;
        //     printfSCR(64*14,15, "%x/%x",j,programSize);
        // }
        // printf("Checking for corruption");
        // for(j = 0; j < programSize; j++) {
        //     readData = readFlash((j << 2) + headers[selectNum].startAddress);
        //     if(programMemory[j] != readData){
        //         printf("ERROR on %x",j);
        //         while(1);
        //     }
        //     printfSCR(64*14,15, "%x/%x",j,programSize);
        // }
        while(1);
        clearScreen();
        // printf("Jumping to program\n");
        // Define a function pointer to jump to the loaded program
        void (*jump_to_program)() = (void (*)())(PROGRAM_MEMORY);
        // Call the function pointer to jump to the loaded program
        jump_to_program();
        clearScreen();
    }
}


