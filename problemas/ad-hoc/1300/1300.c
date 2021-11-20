#include <stdio.h>

int main(){
    int A;

    while(scanf("%d", &A) != EOF){
        printf("%c\n", A % 6 ? 'N' : 'Y');
    }

    return 0;
}
