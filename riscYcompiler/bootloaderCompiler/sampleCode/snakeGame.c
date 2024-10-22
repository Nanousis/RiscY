#define SCREEN_LOACTION 0x88000000
#define SCREEN_SIZE 1216
#define BUTTONS 0x89000000
#define WaitTime 100000
#define MAX_SNAKE_LENGTH 75


void clearScreen();
void printHex(int location, int value);
void putch(int location, char c, char color);
void printString(int location, char *string);
char getButtonDown();
char getButtonUp();
char getButtonLeft();
char getButtonRight();
void printSnake(unsigned int snakeLength);
void printApple(int appleID);
int checkForCollision(unsigned short snakeLength);
void printScore(int score);
void printOct(int location, int value);

char current_x=4;
char current_y=4;
unsigned short positions[MAX_SNAKE_LENGTH];
unsigned short apple_positions[10]={88,100,200,300,800,562,122,456,782,654};
int main() {
    startAgain:
    int i=0;
    for(i=0;i<WaitTime;i++);
    clearScreen();
    char name[]="Welcome";
    char name2[]="Pres any key";
    char tempChar=0;
    printString(27+64*2, name);
    printString(25+64*9, name2);
    current_x=1;
    current_y=0;
    char state=0;
    unsigned char currentColor=1;
    while(1){
        if(getButtonUp()||getButtonDown()||getButtonLeft()||getButtonRight()){
            goto startGame;
        }
        tempChar++;
        if(state==0){
            current_x++;
            if(current_x==63){
                state=1;
            }
        }
        if(state==1){
            current_y++;
            if(current_y==18){
                state=2;
            }
        }
        if(state==2){
            current_x--;
            if(current_x==0){
                state=3;
            }
        }
        if(state==3){
            current_y--;
            if(current_y==0){
                state=0;
                currentColor++;
                current_x=1;
                if(currentColor>15){
                    currentColor=1;
                }
            }
        }
        putch(current_x+current_y*64, ' ',currentColor<<4);
        for(i=0;i<WaitTime;i++);
    }
    startGame:
    clearScreen();
    short direction=0;
    unsigned short location=5+64*5;
    int snakeLength=4;
    current_x=4;
    current_y=4;
    positions[0]=0;
    positions[1]=0;
    positions[2]=0;
    positions[3]=0;
    positions[4]=0;
    int test=0;
    int appleID=0;
    char btnUpClicked=0;
    char btnDownClicked=0;
    char btnDebounce=1;
    int j=0;
    unsigned short appleLocation=356;
    unsigned int seed=123456789;
    unsigned int counter=0;
    while(1){
        counter++;
        for(i=0;i<WaitTime*10;i++){
        }
        if(btnDebounce==0){
            if(getButtonDown()){
                btnUpClicked=1;
                btnDebounce=1;
            }
            else if(getButtonUp()){
                btnDownClicked=1;
                btnDebounce=1;
            }
        }
        else{
            btnUpClicked=0;
            btnDownClicked=0;
            if(getButtonUp()==0&&getButtonDown()==0){
                btnDebounce=0;
            }

        }
        
        if(btnUpClicked){
            direction++;
            if(direction>3){
                direction=0;
            }
        }
        if(btnDownClicked){
            direction--;
            if(direction<0){
                direction=3;
            }
        }
        if(direction == 0){
            current_x++;
            current_x++;
        }
        if(direction == 1){
            current_y-=1;
        }
        if(direction == 2){
            current_x--;
            current_x--;
        }
        if(direction == 3){
            current_y+=1;
        }
        location = current_x+current_y*64;
        if(location==appleLocation){
            do{
                appleLocation=((counter^seed)&511)<<1;
                counter++;
            }while(appleLocation<=25&&appleLocation<1216);
                snakeLength++;
        }
        putch(appleLocation+1,16,1);
        // if(current_x>63){
        //     current_x=0;
        // }
        // if(current_x<0){
        //     current_x=62;
        // }
        // if(current_y>19){
        //     current_y=0;
        // }
        // if(current_y<0){
        //     current_y=19;
        // }
        if(checkForCollision(snakeLength)){
            goto youLoose;
        }
        if(current_x>63||current_x<0||current_y>18||current_y<0){
            goto youLoose;
        }
        btnDownClicked=0;
        btnUpClicked=0;
        printSnake(snakeLength);
        printScore(snakeLength);
        putch(appleLocation,17,1);
    }
    youLoose:
    putch(positions[snakeLength-1],'x',1);
    putch(positions[snakeLength-1]+1,'x',1);
    for(i=0;i<WaitTime*50;i++);
    clearScreen();
    char loose[]="You lost!";
    printString(25, loose);
    char playAgain[]="Play again?";
    printString(25+64*5, playAgain);
    printScore(snakeLength);
    while(1){
        if(getButtonUp()||getButtonDown()||getButtonLeft()||getButtonRight()){
            goto startAgain;
        }
        for(i=0;i<WaitTime;i++);
    }
}
void printScore(int score){
    char scoreString[]="Score: ";
    printString(0,scoreString);
    printOct(7,score);
}
void printSnake(unsigned int snakeLength){
        int i=0;
        putch(positions[0],' ',0);
        putch(positions[0]+1,' ',0);
        for( i=0;i<MAX_SNAKE_LENGTH-1;i++){
            positions[i]=positions[i+1];
        }
        unsigned short location = current_x+current_y*64;
        positions[snakeLength-1]=location;
        // clearScreen();
        for(i=0;i<snakeLength;i++){
            putch(positions[i],' ',17);
            putch(positions[i]+1,' ',17);
        }
        
}
int checkForCollision(unsigned short snakeLength){
    int i=0;
    for(i=0;i<snakeLength;i++){
        if(positions[i]==current_x+current_y*64){
            return 1;
        }
    }
    return 0;
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
// YOU CANNOT USE A STRING BIGGER THAN 13 CHARACTERS!
void printString(int location, char *string){
    int i = 0;
    unsigned char color=1;
    while(string[i] != '\0'){
        putch(location + i, string[i],color);
        i++;
        color++;
        if(color>15){
            color=1;
        }
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
void printOct(int location, int value) {
    char octChars[] = "01234567";
    char buffer[12]; // Enough to hold 11 octal digits + null terminator
    buffer[11] = '\0'; // Null-terminate the string
    
    for(int i = 10; i >= 0; i--) {
        buffer[i] = octChars[value & 0x7]; // Get the lowest 3 bits (an octal digit)
        value >>= 3; // Shift right by 3 bits to get the next octal digit
    }
    
    printString(location, buffer); // Print the octal string at the specified location
}