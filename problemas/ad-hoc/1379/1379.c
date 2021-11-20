#include <stdio.h>

int main(){
    int A, B;

    while(scanf("%d %d", &A, &B)){
        if(!A && !B)    break;
        
        printf("%d\n", 2 * A - B);
    }

    return 0;
}
