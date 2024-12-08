

#include "riscYstdio.h"


unsigned int getClock1M(){
    volatile unsigned int *clock = (volatile unsigned int *)0x8A000000;
    return *clock;
}

typedef struct{
    char shape[4][4];
    char numOfRotations;
    char currentRotation;
} Block;


typedef struct{
    signed char x;
    signed char y;
    Block block;
    Block *original;
} BlockObj;

void PrintBoundaries();
void PrintBlock(BlockObj blockObj);
void PreviewBlock(Block block);
void SaveBlock(BlockObj blockObj);
void SaveBlock(BlockObj blockObj);
void ClearBlock(BlockObj blockObj);
Block RotateBlock(Block blockObj);
void CheckLines();
char CheckCollisions(BlockObj blockObj, char newX, char newY);

unsigned int lfsr = 0xACE1u;  // Seed value
unsigned int lfsr_rand();

volatile char allBlocks[19][10];
char currentRotation=0;

int score=0;

int main() {

    startAgain:
    lfsr = getClock1M();
    Block blocks[7];
    blocks[0] = (Block) {{{BG_CYAN, 0, 0, 0},
                          {BG_CYAN, 0, 0, 0},   // I
                          {BG_CYAN, 0, 0, 0},
                          {BG_CYAN, 0, 0, 0}},1,0};

    blocks[1] = (Block) {{{0, 0, 0, 0},
                          {0, BG_BLUE, 0, 0},   // J
                          {0, BG_BLUE, 0, 0},
                          {BG_BLUE, BG_BLUE, 0, 0}},3,0};

    blocks[2] = (Block) {{{0, 0, 0, 0},
                          {BG_WHITE, 0, 0, 0},  // L
                          {BG_WHITE, 0, 0, 0},
                          {BG_WHITE, BG_WHITE, 0, 0}},3,0};

    blocks[3] = (Block) {{{0, 0, 0, 0},
                          {0, 0, 0, 0},         // Square
                          {BG_YELLOW, BG_YELLOW, 0, 0},     
                          {BG_YELLOW, BG_YELLOW, 0, 0}},0,0};

    blocks[4] = (Block) {{{0, 0, 0, 0},
                          {0, 0, 0, 0},         // Z
                          {BG_GREEN, BG_GREEN, 0, 0},
                          {0, BG_GREEN, BG_GREEN, 0}},1,0};

    blocks[5] = (Block) {{{0, 0, 0, 0},
                          {0, 0, 0, 0},         // S
                          {0, BG_MAGENTA, BG_MAGENTA, 0},
                          {BG_MAGENTA, BG_MAGENTA, 0, 0}},1,0};

    blocks[6] = (Block) {{{0, 0, 0, 0},
                          {0, 0, 0, 0},         // T
                          {BG_RED, BG_RED, BG_RED, 0},
                          {0, BG_RED, 0, 0}},3,0};


    BlockObj blockObj;
    BlockObj tempBlock;
    blockObj.x=5;
    blockObj.y=0;
    blockObj.block=blocks[0];
    blockObj.original=&blocks[0];
    volatile int startTimer;
    char currentButton = 0;
    char nextObject = 0;
    nextObject = lfsr_rand()&7;
    PreviewBlock(blocks[nextObject]);
    char newX = 0;
    char newY = 0;
    int counter = 0;
    char rotate = 0;
    char collision =0;
    for(int i=0;i<19;i++){
        for(int j=0;j<10;j++){
            allBlocks[i][j]=0;
        }
    }
    // Main Game Routine
    while(1){
        counter++;
        PrintBoundaries();
        newX=blockObj.x;
        newY=blockObj.y;
        collision = 0;
        // Main Game Logic
        switch (currentButton)
        {
        case 1:
            newX--;
            break;
        case 2:
            newX++;
            break;
        case 3:
            newY++;
            break;
        case 4:
            rotate=1;
            break;
        }
        if(counter>=3){
            newY++;
            counter=0;
        }

        // check collision. If collision = 2, ignore x input
        // If collision = 1, save the block and get a new one
        // If collision = 0, check if the block should be rotated
        collision = CheckCollisions(blockObj, newX, newY);
        if(collision==2){
            newX=blockObj.x;
        }
        else if(collision==1){
            if(blockObj.y==0){
                goto gameOver;
            }
            SaveBlock(blockObj);
            newY=0;
            newX=5;
            if(nextObject>6){
                nextObject=0;
            }
            blockObj.block=blocks[nextObject];
            blockObj.original=&blocks[nextObject];

            CheckLines();
            nextObject = lfsr_rand()&7;
            PreviewBlock(blocks[nextObject]);
        }
        else{
            if(rotate){
                rotate=0;
                if(blockObj.block.currentRotation==blockObj.block.numOfRotations){
                    blockObj.block = *(blockObj.original);
                }
                else{
                    tempBlock = blockObj;
                    // this needs to go above
                    tempBlock.block = RotateBlock(blockObj.block);
                    if(!CheckCollisions(tempBlock, tempBlock.x, tempBlock.y)){
                        blockObj.block = RotateBlock(blockObj.block);
                    }
                }
            }
        }
        blockObj.x=newX;
        blockObj.y=newY;
        // Prints all blocks. For some reason this does not work as a function
        for (int i = 0; i < 19; i++) {
            for (int j = 0; j < 10; j++) {
            putch(SCREEN_WIDTH * i + (j << 1) + 22, ' ', allBlocks[i][j]);
            putch(SCREEN_WIDTH * i + (j << 1) + 23, ' ', allBlocks[i][j]);
            }
        }    
        PrintBlock(blockObj);
        printfSCR(SCREEN_WIDTH*18+43,15,"x %d, y: %d",blockObj.x,blockObj.y);
        printfSCR(5 , 15, "Score: %d",score);
        // Debug print all blocks
        // for (int i = 0; i < 19; i++) {
        //     for(int j=0;j<10;j++){
        //         char temp = allBlocks[i][j];
        //         if(temp==0){
        //             temp = '.';
        //         }
        //         else{
        //             temp = (temp>>4) +'0';
        //         }
        //         putch(SCREEN_WIDTH*i +j,temp, 15);
        //     }
        // }

        // button Handler
        currentButton = 0;
        for(volatile int i=0;i<WaitTime*10;i++){
            if(getButtonDown()){
                break;
            }
        }
        for(volatile int i=0;i<WaitTime*5;i++){
            if(getButtonLeft()){
                currentButton=1;
            }
            else if(getButtonRight()){
                currentButton=2;
            }
            else if(getButtonUp()){
                currentButton=4;
            }
            else if(getButtonDown()){
                i++;
            }
        }
    }

    gameOver:
    printfSCR(SCREEN_WIDTH*9+27,15,"Game Over");
    printfSCR(SCREEN_WIDTH*10+25,15,"Final Score: %d",score);
    printfSCR(SCREEN_WIDTH*11+22,15,"Press Up/Down to exit");
    printfSCR(SCREEN_WIDTH*12+22,15,"Press Left/Right to play again");
    for(volatile int i=0;i<WaitTime*50;i++);
    while(1){
        if(getButtonLeft()||getButtonRight()){
            goto startAgain;
        }
        else{
            if(getButtonUp()||getButtonDown()){
                return 0;
            }
        }
        for(int i=0;i<WaitTime;i++);
    }

}

unsigned int lfsr_rand(void) {
    unsigned int lsb = lfsr & 1;  // Get least significant bit (LSB)
    lfsr >>= 1;                   // Shift register
    if (lsb) {                    // If LSB is 1, apply tap mask
        lfsr ^= 0xB400u;
    }
    return lfsr;
}


Block RotateBlock(Block block){
    char temp[4][4];
    block.currentRotation++;

    // Copy the current shape to a temporary array
    for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
            temp[i][j] = block.shape[i][j];
        }
    }

    // Rotate the block 90 degrees clockwise
    for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
            block.shape[i][j] = temp[3 - j][i];
        }
    }

    // **Shift the block down to remove empty rows at the bottom**
    // Find the bottom-most non-empty row
    int bottomRow = -1;
    for(int i = 3; i >= 0; i--){
        char isEmptyRow = 1;
        for(int j = 0; j < 4; j++){
            if(block.shape[i][j] != 0){
                isEmptyRow = 0;
                break;
            }
        }
        if(!isEmptyRow){
            bottomRow = i;
            break;
        }
    }

    // If the block is not empty, shift it down
    if(bottomRow != -1){
        int shiftAmount = 3 - bottomRow; // Calculate how many rows to shift down
        char shiftedShape[4][4] = {0}; // Initialize a new shape with zeros

        // Shift the block down by shiftAmount rows
        for(int i = 0; i <= bottomRow; i++){
            for(int j = 0; j < 4; j++){
                shiftedShape[i + shiftAmount][j] = block.shape[i][j];
            }
        }

        // Copy the shifted shape back to the block
        for(int i = 0; i < 4; i++){
            for(int j = 0; j < 4; j++){
                block.shape[i][j] = shiftedShape[i][j];
            }
        }
    }

    // **Shift the block left to remove empty columns on the left**
    // Find the leftmost non-empty column
    int leftCol = -1;
    for(int j = 0; j < 4; j++){
        char isEmptyCol = 1;
        for(int i = 0; i < 4; i++){
            if(block.shape[i][j] != 0){
                isEmptyCol = 0;
                break;
            }
        }
        if(!isEmptyCol){
            leftCol = j;
            break;
        }
    }

    // If there are empty columns on the left, shift the block left
    if(leftCol != -1 && leftCol > 0){
        int shiftAmount = leftCol; // Number of empty columns on the left
        char shiftedShape[4][4] = {0}; // Initialize a new shape with zeros

        // Shift the block left by shiftAmount columns
        for(int i = 0; i < 4; i++){
            for(int j = leftCol; j < 4; j++){
                shiftedShape[i][j - shiftAmount] = block.shape[i][j];
            }
        }

        // Copy the shifted shape back to the block
        for(int i = 0; i < 4; i++){
            for(int j = 0; j < 4; j++){
                block.shape[i][j] = shiftedShape[i][j];
            }
        }
    }

    return block;
}

char CheckCollisions(BlockObj blockObj, char newX, char newY){
    char returnVal = 0;
    for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
            if(blockObj.block.shape[i][j]){
                int x = newX + j;
                int y = newY + i - 3; // Adjust for the block's position
                // Check boundaries
                if (x < 0 || x >= 10 || y >= SCREEN_HEIGHT){
                    returnVal = 2; // Collision detected
                }
                // Check collision with existing blocks
                if (y >= 0 && allBlocks[y][x]){
                    returnVal = 2;
                }
            }
        }
    }
    // check if X is causing the problem and if so ignore that input
    for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
            if(blockObj.block.shape[i][j]){
                int x = blockObj.x + j;
                int y = newY + i - 3; // Adjust for the block's position
                // Check boundaries
                if (x < 0 || x >= 10 || y >= SCREEN_HEIGHT){
                    returnVal = 1; // Collision detected
                }
                // Check collision with existing blocks
                if (y >= 0 && allBlocks[y][x]){
                    returnVal = 1;
                }
            }
        }
    }
    return returnVal;
}

void CheckLines(){
    int increaseScore=1;
    for(int i=0;i<19;i++){
        char isFull = 1;
        for(int j=0;j<10;j++){
            if(allBlocks[i][j]==0){
                isFull = 0;
                break;
            }
        }
        if(isFull){
            for(int j=0;j<10;j++){
                allBlocks[i][j]=0;
            }
            for(int k=i;k>0;k--){
                for(int j=0;j<10;j++){
                    allBlocks[k][j]=allBlocks[k-1][j];
                }
            }
            increaseScore = increaseScore<<1;
        }
    }
    score+=increaseScore-1;
}

void PrintBoundaries(){
    for(int i=0;i<19;i++){
        putch(SCREEN_WIDTH*i +21,'#',BG_MAGENTA);
    }
    for(int i=0;i<19;i++){
        putch(SCREEN_WIDTH*i +42,'#',BG_MAGENTA);
    }
    for(int i=0;i<10;i++){
    }

}

void PrintBlock(BlockObj blockObj){
    for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
            if(blockObj.block.shape[i][j]){
                if(blockObj.y+i-3<0){
                    continue;
                }
                // allBlocks[blockObj.y+i-3][blockObj.x+j]=blockObj.block.shape[i][j];
                
                putch(SCREEN_WIDTH*(blockObj.y+i-3)+(blockObj.x<<1) +(j<<1)+22,' ',blockObj.block.shape[i][j]);
                putch(SCREEN_WIDTH*(blockObj.y+i-3)+(blockObj.x<<1) +(j<<1)+23,' ',blockObj.block.shape[i][j]);
            }
        }
    }
}
void PreviewBlock(Block block){
    char offset = 49+SCREEN_WIDTH*2;
    printfSCR(SCREEN_WIDTH*(-1)+offset-2,15,"Next Block:");
    for(int i=0;i<6;i++){
        if(i==0||i==5){
            for(int j=0;j<6;j++){
                putch(SCREEN_WIDTH*(i)+((j-1)<<1)+offset,'-',15);
                putch(SCREEN_WIDTH*(i)+((j-1)<<1)+1+offset,'-',15);
            }
            continue;
        }
        else{
            for(int j=0;j<6;j++){
                if(j==0)
                {
                    putch(SCREEN_WIDTH*(i)+((j-1)<<1)+offset,'|',15);
                    continue;
                }
                else if(j==5)
                {
                    putch(SCREEN_WIDTH*(i)+((j-1)<<1)+1+offset,'|',15);
                    continue;
                }
                else if(block.shape[i-1][j-1]){
                    putch(SCREEN_WIDTH*(i)+((j)<<1)+offset,' ',block.shape[i-1][j-1]);
                    putch(SCREEN_WIDTH*(i)+((j)<<1)+1+offset,' ',block.shape[i-1][j-1]);
                }
                else{
                    putch(SCREEN_WIDTH*(i)+((j)<<1)+offset,' ',BG_BLACK);
                    putch(SCREEN_WIDTH*(i)+((j)<<1)+1+offset,' ',BG_BLACK);
                }
            }
        }
    }
}
void SaveBlock(BlockObj blockObj){
    for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
            if(blockObj.block.shape[i][j]){
                if(blockObj.y+i-3<0){
                    continue;
                }
                allBlocks[blockObj.y+i-3][blockObj.x+j]=blockObj.block.shape[i][j];
            }
        }
    }
}
void ClearBlock(BlockObj blockObj){
    for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
            if(blockObj.block.shape[i][j]){
                if(blockObj.y+i-3<0){
                    continue;
                }
                allBlocks[blockObj.y+i-3][blockObj.x+j]=0;
                // putch(SCREEN_WIDTH*(blockObj.y+i-3)+(blockObj.x<<1) +(j<<1)+22,' ',BG_BLACK);
                // putch(SCREEN_WIDTH*(blockObj.y+i-3)+(blockObj.x<<1) +(j<<1)+23,' ',BG_BLACK);
            }
        }
    }
}