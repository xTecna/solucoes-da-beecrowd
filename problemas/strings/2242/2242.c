#include <string.h>
#include <stdio.h>

int vogal(char letra){
    switch(letra){
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':   return 1;
        default:    return 0;
    }
}

int main(){
    int i, f;
    int engracada;
    char risada[51];

    scanf("%s", &risada);

    i = 0;
    f = strlen(risada) - 1;
    engracada = 1;
    while(i < f){
        if(vogal(risada[i]) && vogal(risada[f])){
            if(risada[i] != risada[f]){
                engracada = 0;
                break;
            }
            ++i;
            --f;
        }else{
            if(!vogal(risada[i]))   ++i;
            if(!vogal(risada[f]))   --f;
        }
    }

    printf("%c\n", engracada ? 'S' : 'N');

    return 0;
}
