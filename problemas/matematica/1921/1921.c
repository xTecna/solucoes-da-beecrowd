#include <stdio.h>

int main()
{
    int n;

    scanf("%d", &n);

    printf("%lld\n", ((long long int)n * (n - 3)) / 2);

    return 0;
}
