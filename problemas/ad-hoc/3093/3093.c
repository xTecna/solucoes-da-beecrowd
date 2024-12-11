#include <stdio.h>
#include <string.h>

int main(){
    int N;
    char cartas[2000];

    scanf("%d\n", &N);
    for(int i = 0; i < N; ++i) {
        scanf("%s\n", &cartas);

        if (strstr(cartas, "A") != NULL && strstr(cartas, "K") != NULL && strstr(cartas, "Q") != NULL && strstr(cartas, "J") != NULL) {
            printf("Aaah muleke\n");
        } else {
            printf("Ooo raca viu\n");
        }
    }

    return 0;
}