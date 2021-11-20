#include <stdio.h>

int main(){
    int Q, D, P, L;

    while(scanf("%d", &Q)){
        if(!Q)  break;

        scanf("%d %d", &D, &P);

        L = (Q * D * P)/(P - Q);
        
        printf("%d pagina", L);
        if(L > 1)   printf("s");
        printf("\n");
    }

    return 0;
}
