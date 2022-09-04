#include <string.h>
#include <stdio.h>

int main()
{
    int pares = 0;
    char bits[101];

    scanf("%s\n", &bits);
    for (int i = 0; i < strlen(bits); ++i)
    {
        pares += bits[i] - '0';
    }

    printf("%s%d\n", bits, pares % 2);

    return 0;
}