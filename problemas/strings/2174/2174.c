#include <string.h>
#include <stdio.h>

char pomekons[1001][101];

int busca(char* pomekon, int n){
    for(int i = 0; i < n; ++i){
        if(!strcmp(pomekons[i], pomekon))   return i;
    }

    return -1;
}

int main(){
    int N, p;
    char S[1001];

    memset(pomekons, '\0', sizeof(pomekons));

    scanf("%d\n", &N);
    
    p = 0;
    for(int i = 0; i < N; ++i){
        scanf("%s\n", &S);

        if(busca(S, N) == -1)   strcpy(pomekons[p++], S);
    }

    printf("Falta(m) %d pomekon(s).\n", 151 - p);

    return 0;
}
