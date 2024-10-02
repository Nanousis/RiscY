#define SCREEN_LOACTION 0x88000000
#define SCREEN_SIZE 64
#define BUTTONS 0x89000000
#define WaitTime 50000


void clearScreen();
char getButtonDown();
char getButtonUp();
char getButtonLeft();
char getButtonRight();
void printHex(int location, int value);
void putch(char location, char c);
void printString(int location, char *string);
int main() {
    
    startAgain:
    int i=0;
    for(i=0;i<WaitTime;i++);
    clearScreen();
    char name[]="Hello world!";
    printString(3, name);
    while(1){
    
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
void putch(char location, char c) {
    char *screen = (char *)SCREEN_LOACTION;
    screen[location] = c;
}
void printString(int location, char *string){
    int i = 0;
    while(string[i] != '\0'){
        putch(location + i, string[i]);
        i++;
    }
}
void clearScreen(){
    int i = 0;
    for(i = 0; i < SCREEN_SIZE; i++)
    {
        putch(i, ' ');
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