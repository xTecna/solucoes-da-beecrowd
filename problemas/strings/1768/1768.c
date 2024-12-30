#include <stdio.h>

void imprimeTriangulo(int tamanho, int deslocamento){
    int asteriscos = 1;
    int espacos = tamanho / 2 + deslocamento;
    while(asteriscos <= tamanho){
        for(int i = 0; i < espacos; ++i){
            printf(" ");
        }
        for(int i = 0; i < asteriscos; ++i){
            printf("*");
        }
        printf("\n");

        asteriscos += 2;
        espacos -= 1;
    }
}

int main(){
    int N;

    while(scanf("%d\n", &N) != EOF){
        imprimeTriangulo(N, 0);
        imprimeTriangulo(3, N / 2 - 1);
        printf("\n");
    }

    return 0;
}