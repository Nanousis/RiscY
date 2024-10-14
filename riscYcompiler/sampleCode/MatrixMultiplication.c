

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

int main() {
    int tableA [3][3] = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9},
    };
    int tableB [3][3] = {
        {1,2,3},
        {4,5,6},
        {7,8,9},
    };
    int result[2][2] = {0};

    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            for (int k = 0; k < 3; k++) {
                result[i][j] += multiply(tableA[i][k], tableB[k][j]);
            }
        }
    }

    printf(0, 15, "Result: %d %d %d %d %d %d %d %d %d", result[0][0], result[0][1], result[0][2], result[1][0], result[1][1], result[1][2], result[2][0], result[2][1], result[2][2]);
    while(1);
}