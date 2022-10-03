#include <stdio.h>

int main()
{
    for (char letra = 'a'; letra <= 'z'; ++letra)
    {
        printf("%d e %c\n", letra, letra);
    }

    return 0;
}