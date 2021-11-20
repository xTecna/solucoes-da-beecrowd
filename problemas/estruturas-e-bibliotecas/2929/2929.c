#include <stdio.h>

int minimos[1000000];

int main(){
    char operacao[4];
    int N, V, minimo, p;

    p = -1;
    scanf("%d\n", &N);
    for(int i = 0; i < N; ++i){
    	scanf("%s", &operacao);

        if(!memcmp(operacao, "PUSH", 4)){
        	scanf("%d\n", &V);

            if(p == -1){
                minimo = V;
            }else{
                minimo = (minimos[p] < V ? minimos[p] : V);
            }

            minimos[++p] = minimo;
        }else if(!memcmp(operacao, "POP", 3)){
            if(p == -1){
            	printf("EMPTY\n");
            }else{
                --p;
            }
        }else{
            if(p == -1){
            	printf("EMPTY\n");
            }else{
            	printf("%d\n", minimos[p]);
            }
        }
    }

    return 0;
}
