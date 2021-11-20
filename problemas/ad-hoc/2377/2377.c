#include <stdio.h>

int main(){
    int L, D, K, P;

    scanf("%d %d %d %d", &L, &D, &K, &P);

    printf("%d\n", L * K + P * (L/D));

    return 0;
}
