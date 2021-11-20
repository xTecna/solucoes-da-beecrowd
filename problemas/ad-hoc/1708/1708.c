#include <stdio.h>

int main(){
    int X, Y;

    scanf("%d %d", &X, &Y);

    printf("%d\n", Y/(Y - X) + (Y % (Y - X) > 0));

    return 0;
}
