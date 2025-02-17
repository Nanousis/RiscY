

#include <stdarg.h> 
#include <stdint.h>
#include "riscYstdio.h"

#define MTIME_ADDR     0x0200BFF8  // Address of mtime (platform-specific)
#define MTIMECMP_ADDR  0x02004000  // Address of mtimecmp (platform-specific)
#define CPU_FREQ       50000000    // CPU frequency (platform-specific)
#define ENCRYPTOR_ADDR 0x8D000000  // Address of the encryptor (platform-specific)
int main() {

    int test = 0xdeadbeef;
    int key1 = 0x12345678;
    int key2 = 0x12345678;
    volatile int *encryptor = (volatile int *)ENCRYPTOR_ADDR;
    encryptor[0]=key1;
    encryptor[1]=key2;
    encryptor[2]=test;
    printf("Encrypting %x with key 0x%x_%x\n",test,key1,key2);
    for(volatile int i=0;i<64;i++);
    int encrypted = encryptor[4];
    printf("Encrypted value: %x\n",encrypted);
    encryptor[3]=encrypted;
    for(volatile int i=0;i<64;i++);
    int decrypted = encryptor[5];
    printf("Decrypted value: %x\n",decrypted);
    key2++;
    encryptor[1]=key2;
    encryptor[3]=encrypted;
    for(volatile int i=0;i<64;i++);
    decrypted = encryptor[5];
    printf("With wrong key: 0x%x_%x\n",key1,key2);
    printf("Decrypted value: %x\n",decrypted);
    
    while(1);
}