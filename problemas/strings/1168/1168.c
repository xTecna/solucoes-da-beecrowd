#include <string.h>
#include <stdio.h>

int main(){
    char V[101];
    int N, resposta;
    int leds[10] = {6, 2, 5, 5, 4, 5, 6, 3, 7, 6};

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        scanf("%s", &V);

        resposta = 0;
        for(int j = 0; j < strlen(V); ++j){
            resposta += leds[V[j] - '0'];
        }

        printf("%d leds\n", resposta);
    }

    return 0;
}
