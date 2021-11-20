#include <string.h>
#include <stdio.h>

int main(){
    char expressao[1001];
    int N, tam, resposta, parenteses;

    scanf("%d\n", &N);
    
    for(int k = 0; k < N; ++k){
        scanf("%s\n", &expressao);

        resposta = 0;
        parenteses = 0;
        tam = strlen(expressao);
        for(int i = 0; i < tam; ++i){
            if(expressao[i] == '<'){
                ++parenteses;
            }else if(expressao[i] == '>' && parenteses > 0){
                --parenteses;
                ++resposta;
            }
        }

        printf("%d\n", resposta);
    }

    return 0;
}
