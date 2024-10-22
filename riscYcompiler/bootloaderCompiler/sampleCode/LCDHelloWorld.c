#define SCREEN_LOACTION 0x88000000
#define SCREEN_SIZE 64
#define BUTTONS 0x89000000
#define WaitTime 50000


void clearScreen();
void printHex(int location, int value);
void putch(char location, char c, char color);
void printString(int location, char *string);
int main() {
    
    char string[] = "O Panagiotis einai teleios. -Iordana 2024";
    putch(0, 'O',1);
    putch(1, ' ',2);
    putch(2, 'P',3);
    putch(3, 'a',4);
    putch(4, 'n',5);
    putch(5, 'a',6);
    putch(6, 'g',7);
    putch(7, 'i',8);
    putch(8, 'o',9);
    putch(9, 't',10);
    putch(10, 'i',11);
    putch(11, 's',12);
    putch(12, ' ',13);
    putch(13, 'e',14);
    putch(14, 'i',15);
    putch(15, 'n',1);
    putch(16, 'a',2);
    putch(17, 'i',3);
    putch(18, ' ',4);
    putch(19, 't',5);
    putch(20, 'e',6);
    putch(21, 'l',7);
    putch(22, 'e',8);
    putch(23, 'i',9);
    putch(24, 'o',10);
    putch(25, 's',11);
    putch(26, '.',12);
    putch(27, ' ',13);
    putch(28, '-',14);
    putch(29, 'I',15);
    putch(30, 'o',1);
    putch(31, 'r',2);
    putch(32, 'd',3);
    putch(33, 'a',4);
    putch(34, 'n',5);
    putch(35, 'a',6);
    putch(36, ' ',7);
    putch(37, '2',9);
    putch(38, '0',9);
    putch(39, '2',10);
    putch(40, '4',11);
    while(1);
}

void putch(char location, char c, char color) {
    unsigned short *screen = (unsigned short *)SCREEN_LOACTION;
    unsigned short buffer = (color << 8) | c;
    screen[location] = buffer;
}
void printString(int location, char *string){
    int i = 0;
    unsigned char color=1;
    while(string[i] != '\0'){
        putch(location + i, string[i],color);
        i++;
        color++;
    }
}
void clearScreen(){
    int i = 0;
    for(i = 0; i < SCREEN_SIZE; i++)
    {
        putch(i, ' ',(char) 1);
    }
}
void printHex(int location, int value) {
    char hexChars[] = "0123456789ABCDEF";
    char buffer[9] ="        "; // Enough to hold 8 hex digits + null terminator
    buffer[8] = '\0'; // Null-terminate the string
    
    for(int i = 7; i >= 0; i--) {
        buffer[i] = hexChars[value & 0xF]; // Get the lowest 4 bits (a hex digit)
        value >>= 4; // Shift right by 4 bits to get the next hex digit
    }
    printString(location, buffer); // Print the hex string at the specified location
}