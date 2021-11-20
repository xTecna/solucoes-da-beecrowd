#include <string.h>
#include <stdio.h>

int main(){
    int palavras, semelhancas;
    char palavra[11], *um = "one";

    scanf("%d\n", &palavras);

    for(int i = 0; i < palavras; ++i){
        scanf("%s\n", &palavra);

        if(strlen(palavra) == 5)    printf("3\n");
        else{
            semelhancas = 0;
            for(int j = 0; j < 3; ++j){
                if(palavra[j] == um[j]) ++semelhancas;
            }

            if(semelhancas > 1) printf("1\n");
            else                printf("2\n");
        }
    }

    return 0;
}
