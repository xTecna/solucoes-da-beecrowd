#include <stdio.h>

int main()
{
    int N;
    char frase[101];

    while (scanf("%d\n", &N) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            scanf("%[^\n]\n", &frase);
            printf("I am Toorg!\n");
        }
    }

    return 0;
}