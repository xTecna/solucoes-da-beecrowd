#include <stdio.h>

int main(){
    char nome[100];
    int media, pessoas, distancia;

    media = 0, pessoas = 0;
    while(scanf("%[^\n]", &nome) != EOF){
        scanf("%d\n", &distancia);

        media += distancia;
        ++pessoas;
    }

    printf("%.1lf\n", (double) media/pessoas);

    return 0;
}
