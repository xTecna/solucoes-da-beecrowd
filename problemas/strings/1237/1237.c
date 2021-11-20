#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int LCS(char* A, char* B){
    int** T;
    int n, m, resultado;
    
    n = strlen(A), m = strlen(B);
    
    T = (int**) malloc(sizeof(int*) * (n + 1));
    for(int i = 0; i <= n; ++i){
        T[i] = (int*) malloc(sizeof(int) * (m + 1));
        for(int j = 0; j <= m; ++j){
            T[i][j] = 0;
        }
    }
    
    resultado = 0;
    for(int i = 1; i <= n; ++i){
        for(int j = 1; j <= m; ++j){
            if(A[i - 1] == B[j - 1]){
                T[i][j] = T[i - 1][j - 1] + 1;
                resultado = resultado < T[i][j] ? T[i][j] : resultado;
            }
        }
    }
    
    return resultado;
}

int main(){
    char A[51], B[51];

    while(scanf("%[^\n]\n%[^\n]\n", &A, &B) != EOF){
        printf("%d\n", LCS(A, B));
    }

    return 0;
}
