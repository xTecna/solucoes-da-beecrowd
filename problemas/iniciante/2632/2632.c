#include <string.h>
#include <stdio.h>

int dano(char *magia)
{
    if (strcmp(magia, "fire") == 0)
        return 200;
    if (strcmp(magia, "water") == 0)
        return 300;
    if (strcmp(magia, "earth") == 0)
        return 400;
    if (strcmp(magia, "air") == 0)
        return 100;
}

int raio(char *magia, int nivel)
{
    if (strcmp(magia, "fire") == 0)
    {
        switch (nivel)
        {
        case 1:
            return 20;
        case 2:
            return 30;
        case 3:
            return 50;
        }
    }
    else if (strcmp(magia, "water") == 0)
    {
        switch (nivel)
        {
        case 1:
            return 10;
        case 2:
            return 25;
        case 3:
            return 40;
        }
    }
    else if (strcmp(magia, "earth") == 0)
    {
        switch (nivel)
        {
        case 1:
            return 25;
        case 2:
            return 55;
        case 3:
            return 70;
        }
    }
    else if (strcmp(magia, "air") == 0)
    {
        switch (nivel)
        {
        case 1:
            return 18;
        case 2:
            return 38;
        case 3:
            return 60;
        }
    }
}

int dentro(int x1, int y1, int x2, int y2, int xc, int yc, int r)
{
    int xm = xc < x2 ? xc : x2;
    int ym = yc < y2 ? yc : y2;

    xm = x1 > xm ? x1 : xm;
    ym = y1 > ym ? y1 : ym;

    return ((xm - xc) * (xm - xc) + (ym - yc) * (ym - yc)) <= r * r;
}

int resolve(char *magia, int nivel, int x1, int y1, int x2, int y2, int xc, int yc)
{
    if (dentro(x1, y1, x2, y2, xc, yc, raio(magia, nivel)))
        return dano(magia);

    return 0;
}

int main()
{
    char magia[10];
    int T, w, h, x0, y0, N, cx, cy;

    scanf("%d", &T);

    for (int i = 0; i < T; ++i)
    {
        scanf("%d %d %d %d\n", &w, &h, &x0, &y0);
        scanf("%s %d %d %d\n", &magia, &N, &cx, &cy);

        printf("%d\n", resolve(magia, N, x0, y0, x0 + w, y0 + h, cx, cy));
    }

    return 0;
}