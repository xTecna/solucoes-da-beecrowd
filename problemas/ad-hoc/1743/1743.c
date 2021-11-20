#include <stdio.h>

int main(){
    int X[5], Y[5];
    int compativel;

    for(int i = 0; i < 5; ++i){
        scanf("%d", &X[i]);
    }
    for(int i = 0; i < 5; ++i){
        scanf("%d", &Y[i]);
    }

    compativel = 1;
    for(int i = 0; i < 5; ++i){
        if(X[i] == Y[i]){
            compativel = 0;
            break;
        }
    }

    printf("%c\n", compativel ? 'Y' : 'N');

    return 0;
}
