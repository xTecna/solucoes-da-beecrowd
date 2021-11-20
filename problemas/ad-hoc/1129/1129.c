#include <stdio.h>

int main(){
    int N, cor, opcao, corretos;

    while(scanf("%d", &N)){
        if(!N)  break;

        for(int i = 0; i < N; ++i){
            opcao = -1, corretos = 0;

            for(int k = 0; k < 5; ++k){
                scanf("%d", &cor);

                if(cor <= 127){
                    opcao = k;
                    ++corretos;
                }
            }

            if(corretos == 1)   printf("%c\n", 'A' + opcao);
            else                printf("*\n");
        }
    }

    return 0;
}
