#include <stdio.h>

int main()
{
    int T, cha, corretos;

    scanf("%d", &T);

    corretos = 0;
    for (int i = 0; i < 5; ++i)
    {
        scanf("%d", &cha);

        if (cha == T)
        {
            ++corretos;
        }
    }

    printf("%d\n", corretos);

    return 0;
}