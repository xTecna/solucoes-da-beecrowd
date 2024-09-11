#include <stdio.h>

int main(){
    int X;
    double Y;

    scanf("%d\n%lf", &X, &Y);

    printf("%.3lf km/l\n", X/Y);

    return 0;
}