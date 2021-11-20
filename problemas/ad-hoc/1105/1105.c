#include <stdio.h>

int main(){
    int saldos[21];
    int B, N, devedor, credor, valor, possivel;

    while(scanf("%d %d", &B, &N)){
        if(!B && !N)    break;

        for(int i = 1; i <= B; ++i){
            scanf("%d", &saldos[i]);
        }

        for(int i = 0; i < N; ++i){
            scanf("%d %d %d", &devedor, &credor, &valor);

            saldos[devedor] -= valor;
            saldos[credor] += valor;
        }

        possivel = 1;
        for(int i = 1; i <= B; ++i){
            if(saldos[i] < 0){
                possivel = 0;
                break;
            }
        }

        printf("%c\n", possivel ? 'S' : 'N');
    }
    
    return 0;
}
