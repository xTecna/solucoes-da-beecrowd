#include <string.h>
#include <stdio.h>

int main(){
    char palavra[10];
    int instrucoes[101];
    int T, n, posicao, instrucao;

    scanf("%d", &T);

    for(int k = 0; k < T; ++k){
        scanf("%d", &n);

        posicao = 0;
        for(int i = 1; i <= n; ++i){
            scanf("%s", &palavra);

            if(!strcmp(palavra, "LEFT")){
                instrucoes[i] = -1;
            }else if(!strcmp(palavra, "RIGHT")){
                instrucoes[i] = 1;
            }else{
                scanf("%s %d", &palavra, &instrucao);
                instrucoes[i] = instrucoes[instrucao];
            }

            posicao += instrucoes[i];

            scanf("\n");
        }

        printf("%d\n", posicao);
    }

    return 0;
}
