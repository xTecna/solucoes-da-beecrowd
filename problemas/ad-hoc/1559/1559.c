#include <string.h>
#include <stdio.h>

int first;
int jogo[6][6];

int abaixo(int i, int j){
    return jogo[i + 1][j] == jogo[i][j] || jogo[i + 1][j] == 0;
}

int esquerda(int i, int j){
    return jogo[i][j - 1] == jogo[i][j] || jogo[i][j - 1] == 0;
}

int direita(int i, int j){
    return jogo[i][j + 1] == jogo[i][j] || jogo[i][j + 1] == 0;
}

int acima(int i, int j){
    return jogo[i - 1][j] == jogo[i][j] || jogo[i - 1][j] == 0;
}

void imprime(int direcao, char* texto){
    if(direcao){
        if(first)   first = 0;
        else        printf(" ");
        printf("%s", texto);
    }
}

int main(){
    int n, numero2048, down, left, right, up;

    for(int i = 0; i < 6; ++i){
        for(int j = 0; j < 6; ++j){
            jogo[i][j] = 2048;
        }
    }

    scanf("%d", &n);
    for(int k = 0; k < n; ++k){
        first = 1;
        numero2048 = 0;
        down = 0, left = 0, right = 0, up = 0;

        for(int i = 1; i <= 4; ++i){
            for(int j = 1; j <= 4; ++j){
                scanf("%d", &jogo[i][j]);
                if(jogo[i][j] == 2048)  numero2048 = 1;
            }
        }

        if(numero2048){
            printf("NONE\n");
            continue;
        }

        for(int i = 1; i <= 4; ++i){
            for(int j = 1; j <= 4; ++j){
                if(jogo[i][j] != 0){
                    down |= abaixo(i, j);
                    left |= esquerda(i, j);
                    right |= direita(i, j);
                    up |= acima(i, j);
                }
            }
        }

        imprime(down, "DOWN");
        imprime(left, "LEFT");
        imprime(right, "RIGHT");
        imprime(up, "UP");

        if(first)   printf("NONE\n");
        else        printf("\n");
    }
}
