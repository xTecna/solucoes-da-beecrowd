#include <stdio.h>

void escreve(int digito, char um, char cinco, char dez)
{
    if (digito == 9)
    {
        printf("%c%c", um, dez);
        return;
    }
    else if (digito == 4)
    {
        printf("%c%c", um, cinco);
        return;
    }

    if (digito > 4)
    {
        printf("%c", cinco);
        digito -= 5;
    }
    for (int i = 0; i < digito; ++i)
    {
        printf("%c", um);
    }
}

int main()
{
    int N;

    scanf("%d", &N);

    escreve(N / 100, 'C', 'D', 'M');
    N %= 100;
    escreve(N / 10, 'X', 'L', 'C');
    N %= 10;
    escreve(N, 'I', 'V', 'X');
    printf("\n");

    return 0;
}