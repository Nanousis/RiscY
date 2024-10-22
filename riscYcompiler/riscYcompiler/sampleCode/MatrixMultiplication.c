

#include <stdarg.h> 
#include "riscYstdio.h"


int multiply(int a, int b) {
    int result = 0;
    while (b != 0) {
        if (b & 1) {
            result += a;
        }
        a <<= 1;
        b >>= 1;
    }
    return result;
}
#define M1 3
#define N1 3
#define M2 3
#define N2 3

unsigned int getClock1M(){
    unsigned int *clock = (unsigned int *)0x8A000000;
    return *clock;
}
unsigned int getClock27M(){
    unsigned int *clock = (unsigned int *)0x8A000004;
    return *clock;
}
int main() {
    
    unsigned int clockStart=getClock1M();


    clearScreen();
    // printf("Matrix Multiplication\n");
    int tableA [M1][N1] = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9},
    };
    int tableB [M2][N2] = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9},
    };
    int result [M1][N2] = {0};

    for(int i = 0; i < M1; i++) {
        for(int j = 0; j < N2; j++) {
            for(int k = 0; k < N1; k++) {
                result[i][j] += multiply(tableA[i][k], tableB[k][j]);
            }
        }
    }
    
    printf("Result \n");
    for(int i = 0; i < M1; i++) {
        for(int j = 0; j < N2; j++) {
            printf("%d ", result[i][j]);
        }
        printf("\n");
    }
        unsigned int clockEnd=getClock27M();

    printf("Time taken: %x\n", clockEnd-clockStart);
    printf("Press any button to exit\n");
    while(getButtonDown()==0&&getButtonUp()==0);   
}