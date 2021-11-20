#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int comp(const void* a, const void* b){
    return strcmp((char*)a, (char*)b);
}

int main(){
    int N, bemComportadas, malComportadas;
    char comportamento, criancas[100][100];

    scanf("%d\n", &N);

    bemComportadas = malComportadas = 0;
    for(int i = 0; i < N; ++i){
        scanf("%c %s\n", &comportamento, &criancas[i]);

        if(comportamento == '+')    ++bemComportadas;
        else                        ++malComportadas;
    }

    qsort(criancas, N, sizeof(char) * 100, comp);

    for(int i = 0; i < N; ++i){
        printf("%s\n", criancas[i]);
    }
    printf("Se comportaram: %d | Nao se comportaram: %d\n", bemComportadas, malComportadas);

    return 0;
}
