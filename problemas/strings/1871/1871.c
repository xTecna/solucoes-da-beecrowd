#include <string.h>
#include <stdio.h>

int main(){
    int M, N, n, soma;
    char aux, resposta[11];

    while(scanf("%d %d", &M, &N)){
        if(!M && !N)    break;

        memset(resposta, '\0', sizeof(resposta));

        n = 0;
        soma = M + N;
        while(soma){
            if(soma % 10)   resposta[n++] = (soma % 10) + '0';
            soma /= 10;
        }

        for(int i = 0; i < n/2; ++i){
            aux = resposta[i];
            resposta[i] = resposta[n - i - 1];
            resposta[n - i - 1] = aux;
        }

        printf("%s\n", resposta);
    }

    return 0;
}