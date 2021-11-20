#include <string.h>
#include <stdio.h>

int main(){
    char L;
    int N, M, pares;
    int sapatos[61][2];

    while(scanf("%d", &N) != EOF){
        memset(sapatos, 0, sizeof(sapatos));

        for(int i = 0; i < N; ++i){
            scanf("%d %c\n", &M, &L);

            ++sapatos[M][L == 'E'];
        }

        pares = 0;
        for(int i = 30; i < 61; ++i){
            pares += (sapatos[i][0] < sapatos[i][1]) ? sapatos[i][0] : sapatos[i][1];
        }

        printf("%d\n", pares);
    }

    return 0;
}
