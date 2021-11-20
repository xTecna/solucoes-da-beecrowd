#include <stdio.h>

int main(){
    int N, A, L, P;

    scanf("%d %d %d %d", &N, &A, &L, &P);

    printf("%c\n", N <= A && N <= L && N <= P ? 'S' : 'N');

    return 0;
}
