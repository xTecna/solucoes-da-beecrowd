#include <stdio.h>

int main(){
    int filhos, filhas;

    while(scanf("%d %d", &filhos, &filhas)){
        if(!filhos && !filhas)  break;

        printf("%d\n", filhos + filhas);
    }

    return 0;
}