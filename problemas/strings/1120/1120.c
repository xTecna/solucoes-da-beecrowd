#include <string.h>
#include <stdio.h>

int main(){
    int n, p;
    char D, N[101], resposta[101];

    while(scanf("%c %s\n", &D, &N) != EOF){
        if(D == '0' && !strcmp(N, "0"))    break;

        p = 0;
        n = strlen(N);
        memset(resposta, '\0', sizeof(resposta));

        for(int i = 0; i < n; ++i){
            if(N[i] != D)   resposta[p++] = N[i];
        }

        p = 0;
        n = strlen(resposta);
        while(p < n){
            if(resposta[p] != '0')  break;
            ++p;
        }

        if(p == n){
            printf("0\n");
        }else{
            strcpy(resposta, resposta + p);
            printf("%s\n", resposta);
        }
    }

    return 0;
}
