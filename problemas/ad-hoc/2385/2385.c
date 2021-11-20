#include <stdio.h>

int main(){
    long long int resposta;
    int N, P, Q, R, S, X, Y, I, J;

    scanf("%d\n", &N);
    scanf("%d %d %d %d %d %d\n", &P, &Q, &R, &S, &X, &Y);
    scanf("%d %d", &I, &J);

    resposta = 0;
    for(int k = 1; k <= N; ++k){
        resposta += ((P * I + Q * k) % X) * ((R * k + S * J) % Y);
    }

    printf("%lld\n", resposta);

    return 0;
}
