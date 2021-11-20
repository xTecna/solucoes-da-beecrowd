#include <string.h>
#include <stdio.h>

int resposta[5001];

int repetido(int n){
    int digitos[10];

    memset(digitos, 0, sizeof(digitos));

    while(n){
        if(digitos[n%10])   return 1;
        digitos[n%10] += 1;
        n /= 10;
    }

    return 0;
}

void preCalcula(){
    memset(resposta, 0, sizeof(resposta));

    for(int i = 1; i < 5001; ++i){
        resposta[i] = resposta[i - 1];
        if(!repetido(i)) resposta[i] += 1;
    }
}

int digitosDiferentes(int a, int b){
    return resposta[b] - resposta[a - 1];
}

int main(){
    int N, M;

    preCalcula();

    while(scanf("%d %d", &N, &M) != EOF){
        printf("%d\n", digitosDiferentes(N, M));
    }

    return 0;
}
