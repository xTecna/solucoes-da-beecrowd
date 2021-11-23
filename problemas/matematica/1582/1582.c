#include <stdio.h>

int mdc(int a, int b)
{
    return (b == 0) ? a : mdc(b, a % b);
}

int pitagorica(int a, int b, int c)
{
    return a * a + b * b == c * c || a * a + c * c == b * b || b * b + c * c == a * a;
}

int primitiva(int a, int b, int c)
{
    return mdc(a, mdc(b, c)) == 1;
}

int main()
{
    int a, b, c;

    while (scanf("%d %d %d", &a, &b, &c) != EOF)
    {
        printf("tripla");
        if (pitagorica(a, b, c))
        {
            printf(" pitagorica");

            if (primitiva(a, b, c))
                printf(" primitiva");
        }
        printf("\n");
    }

    return 0;
}
