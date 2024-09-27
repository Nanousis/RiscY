#define SCREEN_LOACTION 1024
#define SCREEN_SIZE 64
#define WaitTime 2000000

void clearScreen();
void putch(int location, char c);
int main() {
    int i=0;
        for(i = 0; i < SCREEN_SIZE; i++)
    {
        putch(i, ' ');
    }
    putch(0, 'a');
    for(i=0; i<WaitTime; i++);
    putch(1, 'b');
    for(i=0; i<WaitTime; i++);
    putch(2, 'c');
    for(i=0; i<WaitTime; i++);
    putch(3, 'd');
    for(i=0; i<WaitTime; i++);
    putch(4, 'e');
    for(i=0; i<WaitTime; i++);
    putch(5, 'f');
    for(i=0; i<WaitTime; i++);
    putch(6, 'g');
    for(i=0; i<WaitTime; i++);
    putch(7, 'h');
    for(i=0; i<WaitTime; i++);
    putch(8, 'i');
    for(i=0; i<WaitTime; i++);
    putch(9, 'j');
    for(i=0; i<WaitTime; i++);
    // clearScreen();
    while(1);
}
void putch(int location, char c) {
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