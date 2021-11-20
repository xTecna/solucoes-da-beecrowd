#include <stdio.h>

int main(){
    int P1, C1, P2, C2, diferenca;

    scanf("%d %d %d %d", &P1, &C1, &P2, &C2);

    diferenca = P2 * C2 - P1 * C1;

    if(diferenca < 0){
        printf("-1\n");
    }else if(diferenca > 0){
        printf("1\n");
    }else{
        printf("0\n");
    }

    return 0;
}
