#define SCREEN_LOACTION 0x88000000
#define SCREEN_SIZE 1216
#define BUTTONS 0x89000000
#define WaitTime 50000


void clearScreen();
void printHex(int location, int value);
void putch(int location, char c, char color);
void printString(int location, char *string);
char getButtonDown();
char getButtonUp();
char getButtonLeft();
char getButtonRight();
int main() {
    int i=0;
    for(i=0;i<WaitTime;i++);
    putch(0,'T',1);
    putch(1,'e',2);
    putch(2,'s',3);
    putch(3,'t',4);
    i=0;
    char color=1;
    char currentChar=1;
    unsigned short location=0;
    while(1){
        if(getButtonUp()){
            i++;
            currentChar++;
            color++;
            if(currentChar>126){
                currentChar=0;
            }
            if(color>15){
                color=1;
            }
            putch(location,currentChar,color);
            location++;
        }
        if(getButtonDown()){
            i++;
            if(location>=0){
                currentChar--;
                color--;
                if(currentChar<1){
                    currentChar=126;
                }
                if(color<1){
                    color=15;
                }
                putch(location,' ',color);
                location--;
            }
        }
    for(i=0;i<WaitTime;i++);

    }
}
char getButtonDown(){
    char *buttons = (char *)BUTTONS;
    return buttons[1];
}
char getButtonUp(){
    char *buttons = (char *)BUTTONS;
    return buttons[0];
}
char getButtonLeft(){
    char *buttons = (char *)BUTTONS;
    return buttons[2];
}
char getButtonRight(){
    char *buttons = (char *)BUTTONS;
    return buttons[3];
}
void putch(int location, char c, char color) {
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