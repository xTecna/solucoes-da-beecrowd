#include <stdio.h>

int main()
{
    int cv, ce, cs, fv, fe, fs;

    scanf("%d %d %d %d %d %d\n", &cv, &ce, &cs, &fv, &fe, &fs);

    int cp = 10000 * (3 * cv + ce) + cs;
    int fp = 10000 * (3 * fv + fe) + fs;

    if (cp > fp)
    {
        printf("C\n");
    }
    else if (fp > cp)
    {
        printf("F\n");
    }
    else
    {
        printf("=\n");
    }

    return 0;
}