#include <string.h>
#include <stdio.h>

int main(){
    char frase[51];
    int n, negrito, italico;

    while(gets(frase) != NULL){
        negrito = 0;
        italico = 0;
        n = strlen(frase);
        for(int i = 0; i < n; ++i){
            if(frase[i] == '_'){
                printf("%s", italico ? "</i>" : "<i>");
                italico = 1 - italico;
            }else if(frase[i] == '*'){
                printf("%s", negrito ? "</b>" : "<b>");
                negrito = 1 - negrito;
            }else{
                printf("%c", frase[i]);
            }
        }
        printf("\n");
    }

    return 0;
}
