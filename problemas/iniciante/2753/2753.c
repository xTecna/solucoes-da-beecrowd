#include <stdio.h>

int main()
{
    for (int letra = 'a'; letra <= 'z'; ++letra)
    {
        printf("%d e %c\n", letra, letra);
    }

    return 0;
}