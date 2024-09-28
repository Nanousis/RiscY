#define SCREEN_LOACTION 1024
#define SCREEN_SIZE 64
#define BUTTONS 2048
#define WaitTime 200000

void clearScreen();
char getButtonDown();
char getButtonUp();
char getButtonLeft();
char getButtonRight();
void printHex(int i);

void putch(char location, char c);
int main() {
    startAgain:
    int i=0;
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
        for(i=WaitTime; i>0; i-=1);
    }
    gameOver:
    
    putch(enemy_pos, 'X');
    for(i=0; i<WaitTime*25; i++);
    clearScreen();
    putch(3+0, 'Y');
    putch(3+1, 'O');
    putch(3+2, 'U');
    putch(3+3, ' ');
    putch(3+4, 'L');
    putch(3+5, 'O');
    putch(3+6, 'S');
    putch(3+7, 'E');
    putch(34+0, 'S');
    putch(34+1, 'T');
    putch(34+2, 'A');
    putch(34+3, 'R');
    putch(34+4, 'T');
    putch(34+5, ' ');
    putch(34+6, 'A');
    putch(34+7, 'G');
    putch(34+8, 'A');
    putch(34+9, 'I');
    putch(34+10, 'N');
    putch(34+11, '?');
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
void clearScreen(){
    int i = 0;
    for(i = 0; i < SCREEN_SIZE; i++)
    {
        putch(i, ' ');
    }
}