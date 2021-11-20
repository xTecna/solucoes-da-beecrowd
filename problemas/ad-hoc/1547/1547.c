#include <stdlib.h>
#include <stdio.h>

int main(){
    int N, QT, S, palpite, menor_diferenca, melhor_palpite;

    scanf("%d", &N);

    for(int i = 0; i < N; ++i){
        scanf("%d %d", &QT, &S);

        scanf("%d", &palpite);
        melhor_palpite = 0;
        menor_diferenca = abs(S - palpite);

        for(int j = 1; j < QT; ++j){
            scanf("%d", &palpite);

            if(menor_diferenca > abs(S - palpite)){
                melhor_palpite = j;
                menor_diferenca = abs(S - palpite);
            }
        }

        printf("%d\n", melhor_palpite + 1);
    }

    return 0;
}
