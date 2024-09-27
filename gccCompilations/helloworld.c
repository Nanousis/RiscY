#define SCREEN_LOACTION 1024
#define SCREEN_SIZE 64


void clearScreen();
void putch(int location, char c);
int main() {
    clearScreen();
    putch(0, 'a');
    putch(1, 'b');
    putch(2, 'c');
    putch(3, 'd');
    putch(4, 'e');
    putch(5, 'f');
    putch(6, 'g');
    putch(7, 'h');
    putch(8, 'i');
    putch(9, 'j');
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