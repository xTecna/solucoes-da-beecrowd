#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main(){
    char letra, frase[1001];
    int n, tautograma, primeiro;

    while(scanf("%[^\n]\n", &frase)){
        if(frase[0] == '*') break;

        primeiro = 1;
        tautograma = 1;
        n = strlen(frase);
        letra = tolower(frase[0]);
        for(int i = 0; i < n; ++i){
            if(primeiro){
                if(tolower(frase[i]) != letra){
                    tautograma = 0;
                    break;
                }
                primeiro = 0;
            }else if(frase[i] == ' '){
                primeiro = 1;
            }
        }

        printf("%c\n", tautograma ? 'Y' : 'N');
    }

    return 0;
}
