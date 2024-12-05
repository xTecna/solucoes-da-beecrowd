#include <stdio.h>

int somaPA(int a1, int an, int n){
    return (n * (a1 + an)) / 2;
}

int main(){
    int t, n;

    scanf("%d\n", &t);

    for(int i = 0; i < t; ++i){
        scanf("%d\n", &n);
        printf("%d\n", somaPA(1, n, n) + 1);
    }

    return 0;
}