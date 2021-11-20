#include <string.h>
#include <stdio.h>

int main(){
    int N, p, primeiraLetra;
    char frase[51], resposta[51];

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        gets(frase);

        p = 0;
        primeiraLetra = 1;
        memset(resposta, '\0', sizeof(resposta));

        for(int j = 0; j < strlen(frase); ++j){
            if(primeiraLetra && frase[j] != ' '){
                resposta[p++] = frase[j];
                primeiraLetra = 0;
            }else if(!primeiraLetra && frase[j] == ' '){
                primeiraLetra = 1;
            }
        }

        printf("%s\n", resposta);
    }

    return 0;
}
