#include <stdio.h>

int main(){
    int C, P, F;

    scanf("%d %d %d", &C, &P, &F);

    printf("%c\n", P >= C * F ? 'S' : 'N');

    return 0;
}
