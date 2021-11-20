#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main(){
    int N;
    char frase[201];
    int maior, frequencias[26];

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        memset(frequencias, 0, sizeof(frequencias));

        scanf("%[^\n]\n", &frase);

        for(int j = 0; j < strlen(frase); ++j){
            if(isalpha(frase[j]))   frequencias[tolower(frase[j]) - 'a']++;
        }

        maior = 0;
        for(int j = 0; j < 26; ++j){
            if(maior < frequencias[j])  maior = frequencias[j];
        }

        for(int j = 0; j < 26; ++j){
            if(frequencias[j] == maior) printf("%c", j + 'a');
        }
        printf("\n");
    }

    return 0;
}
