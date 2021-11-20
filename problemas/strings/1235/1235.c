#include <string.h>
#include <stdio.h>

int main(){
    int N, n;
    char aux, frase[101];

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        scanf("%[^\n]\n", &frase);

        n = strlen(frase);
        for(int j = 0; j < n/4; ++j){
            aux = frase[j];
            frase[j] = frase[n/2 - j - 1];
            frase[n/2 - j - 1] = aux;

            aux = frase[j + n/2];
            frase[j + n/2] = frase[n - j - 1];
            frase[n - j - 1] = aux;
        }

        printf("%s\n", frase);
    }

    return 0;
}
