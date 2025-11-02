#include <stdarg.h> 
#include <stdint.h>
#include <limits.h>
#include <stdlib.h>
#include "riscYstdio.h"
#define USB 0x10000000
#define MTIME_ADDR     0x0200BFF8  // Address of mtime (platform-specific)
#define MTIMECMP_ADDR  0x02004000  // Address of mtimecmp (platform-specific)
#define ONESECOND 50000000 //50.000.000 cycles for 50MHz clock
#include <stdint.h>
enum mode_t { ECB, CTR, CBC, CFB, OFB };

static const uint8_t block_sizes[] = {32, 48, 48, 64, 64, 96, 96, 128, 128, 128};

static const uint16_t key_sizes[] = {64, 72, 96, 96, 128, 96, 144, 128, 192, 256};

enum cipher_config_t {
    cfg_64_32,
    cfg_72_48,
    cfg_96_48,
    cfg_96_64,
    cfg_128_64,
    cfg_96_96,
    cfg_144_96,
    cfg_128_128,
    cfg_192_128,
    cfg_256_128
} ;

typedef struct {
    enum cipher_config_t cipher_cfg;
    void (*encryptPtr)(const uint8_t, const uint8_t *, const uint8_t *, uint8_t *);
    void (*decryptPtr)(const uint8_t, const uint8_t *, const uint8_t *, uint8_t *);
    uint16_t key_size;
    uint8_t block_size;
    uint8_t round_limit;
    uint8_t init_vector[16];
    uint8_t counter[16];
    uint8_t key_schedule[576];
    uint8_t alpha;
    uint8_t beta;
    uint8_t z_seq;
} SimSpk_Cipher;
typedef struct _bitword24_t{
  uint32_t data: 24;
} bitword24_t;

typedef struct _bytes3_t{
        uint8_t data[3];
} bytes3_t;


typedef struct _bytes6_t{
        uint8_t data[6];
} bytes6_t;


uint8_t Speck_Init(SimSpk_Cipher *cipher_object, enum cipher_config_t cipher_cfg, enum mode_t c_mode, void *key, uint8_t *iv, uint8_t *counter);

uint8_t Speck_Encrypt(SimSpk_Cipher cipher_object, const void *plaintext, void *ciphertext);

void Speck_Encrypt_32(const uint8_t round_limit, const uint8_t *key_schedule, const uint8_t *plaintext,
                      uint8_t *ciphertext);

uint8_t Speck_Decrypt(SimSpk_Cipher cipher_object, const void *ciphertext, void *plaintext);
void Speck_Decrypt_32(const uint8_t round_limit, const uint8_t *key_schedule, const uint8_t *ciphertext,
                      uint8_t *plaintext);

#define rotate_left(x,n) (((x) >> (word_size - (n))) | ((x) << (n)))
#define rotate_right(x,n) (((x) << (word_size - (n))) | ((x) >> (n)))

const uint8_t speck_rounds[] = {22, 22, 23, 26, 27, 28, 29, 32, 33, 34};

uint8_t Speck_Init(SimSpk_Cipher *cipher_object, enum cipher_config_t cipher_cfg, enum mode_t c_mode, void *key, uint8_t *iv, uint8_t *counter) {

    if (cipher_cfg > cfg_256_128 || cipher_cfg < cfg_64_32) {
        return 1;
    }
    
    cipher_object->block_size = block_sizes[cipher_cfg];
    cipher_object->key_size = key_sizes[cipher_cfg];
    cipher_object->round_limit = speck_rounds[cipher_cfg];
    cipher_object->cipher_cfg = cipher_cfg;
    
    uint8_t word_size = block_sizes[cipher_cfg] >> 1;
    uint8_t word_bytes = word_size >> 3;
    uint16_t key_words =  key_sizes[cipher_cfg] / 4;
    uint32_t sub_keys[4] = {};
    uint32_t mod_mask = UINT32_MAX >> (32 - word_size);
    
    if (cipher_cfg == cfg_64_32) {
        cipher_object->alpha = 7;
        cipher_object->beta = 2;
    }
    else {
        cipher_object->alpha = 8;
        cipher_object->beta = 3;
    }

    // Setup
    for(int i = 0; i < key_words; i++) {
        memcpy(&sub_keys[i], key + (word_bytes * i), word_bytes);
    }
     
    // Store First Key Schedule Entry
    memcpy(cipher_object->key_schedule, &sub_keys[0], word_bytes);

    uint32_t tmp,tmp2;
    for (uint32_t i = 0; i < speck_rounds[cipher_cfg] - 1; i++) {

        // Run Speck Cipher Round Function
        tmp = (rotate_right(sub_keys[1],cipher_object->alpha)) & mod_mask;
        tmp = (tmp + sub_keys[0]) & mod_mask;
        tmp= tmp ^ i;
        tmp2 = (rotate_left(sub_keys[0],cipher_object->beta)) & mod_mask;
        tmp2 = tmp2 ^ tmp;
        sub_keys[0] = tmp2;

        // Shift Key Schedule Subword
        if (key_words != 2) {
            // Shift Sub Words
            for(int j = 1; j < (key_words - 1); j++){
                sub_keys[j] = sub_keys[j+1];
            }
        }
        sub_keys[key_words - 1] = tmp;

        // Append sub key to key schedule
        memcpy(cipher_object->key_schedule + (word_bytes * (i+1)), &sub_keys[0], word_bytes);   
    }

    if (cipher_cfg == cfg_64_32){
        cipher_object->encryptPtr = &Speck_Encrypt_32;
        cipher_object->decryptPtr = &Speck_Decrypt_32;
    }
    else return 1;

    return 0;
}

uint8_t Speck_Decrypt(SimSpk_Cipher cipher_object, const void *ciphertext, void *plaintext) {
    (*cipher_object.decryptPtr)(cipher_object.round_limit, cipher_object.key_schedule, ciphertext, plaintext);
    return 0;
}

void Speck_Decrypt_32(const uint8_t round_limit, const uint8_t *key_schedule, const uint8_t *ciphertext, uint8_t *plaintext) {

    const uint8_t word_size = 16;
    uint16_t *y_word = (uint16_t *)plaintext;
    uint16_t *x_word = ((uint16_t *)plaintext) + 1;
    uint16_t *round_key_ptr = (uint16_t *)key_schedule;

    *y_word = *(uint16_t *)ciphertext;
    *x_word = *(((uint16_t *)ciphertext) + 1);

    for(int8_t i = round_limit - 1; i >=0; i--) {
        *y_word = rotate_right((*y_word ^ *x_word), 2);
        *x_word = rotate_left((uint16_t)((*x_word ^ *(round_key_ptr + i)) - *y_word), 7);
    }
}


uint8_t Speck_Encrypt(SimSpk_Cipher cipher_object, const void *plaintext, void *ciphertext) {
    (*cipher_object.encryptPtr)(cipher_object.round_limit, cipher_object.key_schedule, plaintext, ciphertext);
    return 0;
}

void Speck_Encrypt_32(const uint8_t round_limit, const uint8_t *key_schedule, const uint8_t *plaintext, uint8_t *ciphertext) {

    const uint8_t word_size = 16;
    uint16_t *y_word = (uint16_t *)ciphertext;
    uint16_t *x_word = ((uint16_t *)ciphertext) + 1;
    uint16_t *round_key_ptr = (uint16_t *)key_schedule;

    *y_word = *(uint16_t *)plaintext;
    *x_word = *(((uint16_t *)plaintext) + 1);

    for(uint8_t i = 0; i < round_limit; i++) {
        *x_word = ((rotate_right(*x_word, 7)) + *y_word) ^ *(round_key_ptr + i);
        *y_word = (rotate_left(*y_word, 2)) ^ *x_word;
    }
}
unsigned int getUSBint() {
    volatile unsigned int *usb = (volatile unsigned int *)USB;
    return usb[0];
}

char USBParser(char usbout) {
    // (USBParser implementation remains the same)
    if (usbout >= 0x04 && usbout <= 0x1D) {
        // Lowercase letters 'a' to 'z'
        return usbout - 4 + 'a';
    } else if (usbout >= 0x1E && usbout <= 0x27) {
        // Digits '0' to '9'
        return usbout - 0x1E + '1';
    } else if (usbout == 0x28) {
        return '\n'; // Enter key
    } else if (usbout == 0x29) {
        return '\x1B'; // Escape key
    } else if (usbout == 0x2A) {
        return '\b'; // Backspace key
    } else if (usbout == 0x2B) {
        return '\t'; // Tab key
    } else if (usbout == 0x2C) {
        return ' '; // Space key
    } else if (usbout == 0x2D) {
        return '-'; // Minus key
    } else if (usbout == 0x2E) {
        return '='; // Equals key
    } else if (usbout == 0x2F) {
        return '['; // Left bracket key
    } else if (usbout == 0x30) {
        return ']'; // Right bracket key
    } else if (usbout == 0x31) {
        return '\\'; // Backslash key
    } else if (usbout == 0x33) {
        return ';'; // Semicolon key
    } else if (usbout == 0x34) {
        return '\''; // Apostrophe key
    } else if (usbout == 0x35) {
        return '`'; // Grave accent key
    } else if (usbout == 0x36) {
        return ','; // Comma key
    } else if (usbout == 0x37) {
        return '.'; // Period key
    } else if (usbout == 0x38) {
        return '/'; // Forward slash key
    } else if (usbout >= 0x3A && usbout <= 0x45) {
        // Function keys F1 to F12
        return 'F'; // Placeholder for function key handling
    } else if (usbout == 0x4F) {
        return 'R'; // Right arrow
    } else if (usbout == 0x50) {
        return 'L'; // Left arrow
    } else if (usbout == 0x51) {
        return 'D'; // Down arrow
    } else if (usbout == 0x52) {
        return 'U'; // Up arrow
    }

    // Return 0 if the input doesn't match any known key
    return 0;
}
int fail_count=0;
int test_count=0;

void cipher_compare(const void *source, void *target, size_t n) {
    test_count++;
    for(size_t i=0; i < n; i++) {
        uint8_t * src_bytes = (uint8_t *)source;
        uint8_t * trg_bytes = (uint8_t *)target;
        printf("Byte %02zu: %02x - %02x",i, src_bytes[i], trg_bytes[i]);
        if (src_bytes[i] != trg_bytes[i]) {
            printf("  FAIL\n");
            fail_count++;
        }
        else printf("\n");
    }
}
int main() {
    volatile uint64_t *mtime = (uint64_t *)MTIME_ADDR;
    volatile uint64_t *mtimecmp = (uint64_t *)MTIMECMP_ADDR;

        // Create reusable cipher objects for each algorithm type
    SimSpk_Cipher my_simon_cipher;
    SimSpk_Cipher my_speck_cipher;
    // Create generic tmp variables
    uint8_t ciphertext_buffer[16];
    uint32_t result;

    // Initialize IV and Counter Values for Use with Block Modes
    uint8_t my_IV[] = {0x32,0x14,0x76,0x58};
    uint8_t my_counter[] = {0x2F,0x3D,0x5C,0x7B};

    
    printf("**** Test Speck 64/32 ****\n");
    uint8_t speck64_32_key[] = {0x00, 0x01, 0x08, 0x09, 0x10, 0x11, 0x18, 0x19};
    uint8_t speck64_32_plain[] = {0x4c, 0x69, 0x74, 0x65};
    uint8_t speck64_32_cipher[] = {0xf2, 0x42, 0x68, 0xa8};
    uint64_t starting_time,initialize_time, encrypt_time, decrypt_time, total_time;
    starting_time= *mtime;
    result = Speck_Init(&my_speck_cipher, cfg_64_32, ECB, speck64_32_key, my_IV, my_counter);
    printf("Encryption Test:\n");
    initialize_time = *mtime;
    // if (clock_gettime(CLOCK_REALTIME, &ts) == 0) {
    //     starting_time =ts.tv_nsec;
    // } else {
    //     perror("clock_gettime failed");
    // }
    Speck_Encrypt(my_speck_cipher, &speck64_32_plain, &ciphertext_buffer);
    encrypt_time = *mtime;
    // if (clock_gettime(CLOCK_REALTIME, &ts) == 0) {
    //     encrypt_time =ts.tv_nsec;
    // } else {
    //     perror("clock_gettime failed");
    // }
    // cipher_compare(&ciphertext_buffer, &speck64_32_cipher, sizeof(speck64_32_cipher));

    // printf("Decryption Test:\n");
    Speck_Decrypt(my_speck_cipher, &speck64_32_cipher, &ciphertext_buffer);
    decrypt_time = *mtime;
    // if (clock_gettime(CLOCK_REALTIME, &ts) == 0) {
    //     decrypt_time =ts.tv_nsec;
    // } else {
    //     perror("clock_gettime failed");
    // }
    cipher_compare(&ciphertext_buffer, &speck64_32_plain, sizeof(speck64_32_plain));
    total_time = decrypt_time - starting_time;
    printf("Starting Time: 0x%x%x\n", (unsigned int)(starting_time>>32),(unsigned int)(starting_time));
    printf("Initialize Time: %d\n", (unsigned int)(initialize_time - starting_time));
    printf("Encryption Time: %d\n", (unsigned int)(encrypt_time - initialize_time));
    printf("Decryption Time: %d\n", (unsigned int)(decrypt_time - encrypt_time));
    printf("Total Time in ns: %d\n", (unsigned int)(total_time));
    printf("\n");
    while(1);
}
