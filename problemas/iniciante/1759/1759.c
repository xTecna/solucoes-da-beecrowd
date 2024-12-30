#include <stdio.h>

int main()
{
    int N;

    scanf("%d", &N);

    --N;
    for (int i = 0; i < N; ++i)
    {
        printf("Ho ");
    }
    printf("Ho!\n");

    return 0;
}