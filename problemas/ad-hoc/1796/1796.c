#include <stdio.h>

int main(){
    int Q, V, satisfatorio;

    satisfatorio = 0;
    scanf("%d", &Q);
    for(int i = 0; i < Q; ++i){
        scanf("%d", &V);
        if(!V)  ++satisfatorio;
    }

    printf("%c\n", satisfatorio > Q/2 ? 'Y' : 'N');

    return 0;
}
