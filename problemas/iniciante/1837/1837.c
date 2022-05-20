#include <stdio.h>
#include <math.h>

void calcula(int x, int y)
{
    int quociente;

    if (x > 0)
        if (y > 0)
            quociente = x / y;
        else
            quociente = ceil((double)x / y);
    else if (y > 0)
        quociente = floor((double)x / y);
    else
        quociente = ceil((double)x / y);

    printf("%d %d\n", quociente, x - (y * quociente));
}

int main()
{
    int a, b;

    scanf("%d %d", &a, &b);

    calcula(a, b);

    return 0;
}