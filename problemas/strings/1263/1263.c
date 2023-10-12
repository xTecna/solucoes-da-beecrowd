#include <ctype.h>
#include <stdio.h>
#include <string.h>

int main() {
    int i;
    char frase[5100];

    while(scanf("%[^\n]\n", &frase) != EOF){
        int aliteracoes = 0;
        
        int proximaPalavra = 0;
        int tamanhoAliteracao = 1;
        char letraAtual = tolower(frase[0]);
        for(i = 1; i < strlen(frase); ++i){
            frase[i] = tolower(frase[i]);
            if(frase[i] == ' '){
                proximaPalavra = 1;
            }else if(proximaPalavra){
                if(frase[i] == letraAtual){
                    tamanhoAliteracao += 1;
                }else{
                    if(tamanhoAliteracao > 1){
                        aliteracoes += 1;
                    }
                    tamanhoAliteracao = 1;
                    letraAtual = frase[i];
                }
                proximaPalavra = 0;
            }
        }
        if(tamanhoAliteracao > 1){
            aliteracoes += 1;
        }

        printf("%d\n", aliteracoes);
    }

    return 0;
}