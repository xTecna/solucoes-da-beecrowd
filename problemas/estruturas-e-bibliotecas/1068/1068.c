#include <string.h>
#include <stdio.h>

int main(){
    char expressao[1001];
    int i, tam, parenteses;

    while(scanf("%s\n", &expressao) != EOF){
        parenteses = 0;
        tam = strlen(expressao);

        for(i = 0; i < tam; ++i){
            if(expressao[i] == '('){
                ++parenteses;
            }else if(expressao[i] == ')'){
                if(parenteses > 0)  --parenteses;
                else                break;
            }
        }

        if(i == tam && parenteses == 0) printf("correct\n");
        else                            printf("incorrect\n");
    }

    return 0;
}
