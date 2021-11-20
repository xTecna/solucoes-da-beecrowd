#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main(){
    char frase[1001];
    int N, diferentes, contagem[26];

    scanf("%d\n", &N);

    for(int k = 0; k < N; ++k){
        memset(contagem, 0, sizeof(contagem));

        scanf("%[^\n]\n", &frase);

        for(int i = 0; i < strlen(frase); ++i){
            if(isalpha(frase[i])){
                contagem[frase[i] - 'a'] = 1;
            }
        }

        diferentes = 0;
        for(int i = 0; i < 26; ++i){
            if(contagem[i]) ++diferentes;
        }

        if(diferentes == 26)        printf("frase completa\n");
        else if(diferentes > 12)    printf("frase quase completa\n");
        else                        printf("frase mal elaborada\n");
    }

    return 0;
}
