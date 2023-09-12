#include <stdio.h>

int main(){
    char comando;
    int N, direcao;

    while(scanf("%d\n", &N)){
        if(!N)  break;

        direcao = 0;
        for(int i = 0; i < N; ++i){
            scanf("%c", &comando);

            if(comando == 'D'){
                direcao = (direcao + 1) % 4;
            }else{
                direcao = ((direcao - 1) + 4) % 4;
            }
        }

        switch(direcao){
            case 0: printf("N\n");
                    break;
            case 1: printf("L\n");
                    break;
            case 2: printf("S\n");
                    break;
            case 3: printf("O\n");
                    break;
        }
    }

    return 0;
}
