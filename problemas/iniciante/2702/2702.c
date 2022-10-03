#include <stdio.h>

int main()
{
    int Ca, Ba, Pa, Cr, Br, Pr;

    scanf("%d %d %d", &Ca, &Ba, &Pa);
    scanf("%d %d %d", &Cr, &Br, &Pr);

    int resposta = 0;
    resposta += (Cr > Ca) ? (Cr - Ca) : 0;
    resposta += (Br > Ba) ? (Br - Ba) : 0;
    resposta += (Pr > Pa) ? (Pr - Pa) : 0;

    printf("%d\n", resposta);

    return 0;
}