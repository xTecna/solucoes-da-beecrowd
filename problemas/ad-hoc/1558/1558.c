#include <string.h>
#include <stdio.h>

int resposta[20001];

void preProcessa(){
    memset(resposta, 0, sizeof(resposta));

    for(int i = 0; i < 101; ++i){
        resposta[i * i] = 1;
    }

    for(int i = 1; i < 101; ++i){
        for(int j = i; j < 101; ++j){
            resposta[i * i + j * j] = 1;
        }
    }
}

int main(){
    int numero;

    preProcessa();

    while(scanf("%d", &numero) != EOF){
        if(numero < 0)  printf("NO\n");
        else            printf("%s\n", resposta[numero] ? "YES" : "NO");
    }

    return 0;
}
