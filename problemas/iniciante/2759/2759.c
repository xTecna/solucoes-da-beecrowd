#include <stdio.h>

int main()
{
    char A, B, C;

    scanf("%c %c %c", &A, &B, &C);

    printf("A = %c, B = %c, C = %c\n", A, B, C);
    printf("A = %c, B = %c, C = %c\n", B, C, A);
    printf("A = %c, B = %c, C = %c\n", C, A, B);

    return 0;
}