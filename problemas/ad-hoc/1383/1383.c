#include <stdio.h>

int sudoku[9][9];

int verificaLinha(int x){
    int numeros[10];

    for(int i = 0; i < 10; ++i){
        numeros[i] = 0;
    }

    for(int i = 0; i < 9; ++i){
        if(numeros[sudoku[x][i]])   return 0;
        numeros[sudoku[x][i]] += 1;
    }

    return 1;
}

int verificaColuna(int x){
    int numeros[10];

    for(int i = 0; i < 10; ++i){
        numeros[i] = 0;
    }

    for(int i = 0; i < 9; ++i){
        if(numeros[sudoku[i][x]])   return 0;
        numeros[sudoku[i][x]] += 1;
    }

    return 1;
}

int verificaQuadrado(int x){
    int numeros[10];
    int linha = 3*(x/3), coluna = 3*(x%3);

    for(int i = 0; i < 10; ++i){
        numeros[i] = 0;
    }

    for(int i = 0; i < 3; ++i){
        for(int j = 0; j < 3; ++j){
            if(numeros[sudoku[linha + i][coluna + j]])  return 0;
            numeros[sudoku[linha + i][coluna + j]] += 1;
        }
    }

    return 1;
}

int main(){
    int n;
    char* resposta;

    scanf("%d", &n);

    for(int k = 1; k <= n; ++k){
        for(int i = 0; i < 9; ++i){
            for(int j = 0; j < 9; ++j){
                scanf("%d", &sudoku[i][j]);
            }
        }

        printf("Instancia %d\n", k);

        resposta = "SIM";
        for(int i = 0; i < 9; ++i){
            if(!verificaLinha(i) || !verificaColuna(i) || !verificaQuadrado(i)){
                resposta = "NAO";
                break;
            }
        }

        printf("%s\n\n", resposta);
    }

    return 0;
}
