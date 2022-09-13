#include <string.h>
#include <stdio.h>

int main()
{
    char P[21];

    while (scanf("%s\n", &P) != EOF)
    {
        if (strcmp(P, "-1") == 0)
        {
            break;
        }

        if (strcmp(P, "0") != 0)
        {
            int n = strlen(P) - 1;
            while (P[n] == '0')
            {
                P[n--] = '9';
            }
            --P[n];
        }

        int n = 0;
        if (strlen(P) > 1 && P[0] == '0')
        {
            n = 1;
        }

        printf("%s\n", P + n);
    }

    return 0;
}