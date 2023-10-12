#include <stdio.h>

int main()
{
    char A[101], B[101], C[101];

    scanf("%[^\n]\n", &A);
    scanf("%[^\n]\n", &B);
    scanf("%[^\n]\n", &C);

    printf("%s%s%s\n", A, B, C);
    printf("%s%s%s\n", B, C, A);
    printf("%s%s%s\n", C, A, B);
    printf("%.10s%.10s%.10s\n", A, B, C);

    return 0;
}