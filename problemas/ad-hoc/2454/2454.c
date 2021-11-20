#include <stdio.h>

int main(){
    int P, R;

    scanf("%d %d", &P, &R);

    printf("%c\n", P ? (R ? 'A' : 'B') : 'C');

    return 0;
}
