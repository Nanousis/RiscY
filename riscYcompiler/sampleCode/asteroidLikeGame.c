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
    clearScreen();
    char name[]="My BAD GAME";
    printString(3, name);
    for(i=0; i<WaitTime*50; i++);
    clearScreen();
    char *buttons = (char *)BUTTONS;
    char current_x=0;
    char current_y=0;
    int score=0;
    char enemy_x=15;
    char enemy_y=3;
    char counter=0;
    char current_pos=0;
    char enemy_pos=0;
    char nextEnemyPos=0;
    char buttonsPressed=2;
    putch(current_x, '>');
    int renderTime=WaitTime;
    while(1){
        score++;
        if(getButtonRight()&&current_x<15){
            current_x++;
            buttonsPressed++;
        }
        if(getButtonLeft()&&current_x>0){
            current_x--;
            buttonsPressed++;
        }
        counter++;
        if(counter==4){
        if(getButtonUp()&&current_y>0){
            current_y--;
            buttonsPressed++;
        }
        if(getButtonDown()&&current_y<3){
            current_y++;
            buttonsPressed++;
        }
            counter=0;
            if(enemy_x==0){
                enemy_y= (buttonsPressed+score>>2)& 0x03;
                enemy_x=15;
            }
            enemy_x--;
        }
        if(enemy_pos<0||enemy_pos>63){
            enemy_x=15;
            enemy_y=3;

        }
        clearScreen();
        current_pos=current_x+current_y*16;
        enemy_pos=enemy_x+enemy_y*16;

        if(current_pos==enemy_pos){
            goto gameOver;
        }
        putch(enemy_pos, 'E');
        putch(current_pos, '>');
        renderTime-=10;
        for(i=0; i<renderTime; i++);
    }
    gameOver:
    putch(enemy_pos, 'X');
    for(i=0; i<WaitTime*25; i++);
    clearScreen();
    char gameOverString[]="GAME OVER";
    printString(3, gameOverString); 
    char tryAgain[]="Try Again";
    printString(3+32, tryAgain);
    char scoreString[]="Score: ";
    printString(48,scoreString );
    printHex(56, score);

    while(1){
        if(getButtonRight()||getButtonLeft()||getButtonUp()||getButtonDown()){
            goto startAgain;
        }
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