#include <stdio.h>

int main(){
    int L, D, K, P;

    scanf("%d %d\n", &L, &D);
    scanf("%d %d\n", &K, &P);

    printf("%d\n", K * L + P * (L / D));

    return 0;
}