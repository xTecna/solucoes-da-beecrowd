#include <stdio.h>

int main()
{
    int N, M, L, CM, CL, A;
    int cartasMarcos[101][101], cartasLeonardo[101][101];

    while (scanf("%d", &N) != EOF)
    {
        scanf("%d %d", &M, &L);

        for (int i = 1; i <= M; ++i)
        {
            for (int j = 1; j <= N; ++j)
            {
                scanf("%d", &cartasMarcos[i][j]);
            }
        }

        for (int i = 1; i <= L; ++i)
        {
            for (int j = 1; j <= N; ++j)
            {
                scanf("%d", &cartasLeonardo[i][j]);
            }
        }

        scanf("%d %d", &CM, &CL);
        scanf("%d", &A);

        if (cartasMarcos[CM][A] > cartasLeonardo[CL][A])
        {
            printf("Marcos\n");
        }
        else if (cartasLeonardo[CL][A] > cartasMarcos[CM][A])
        {
            printf("Leonardo\n");
        }
        else
        {
            printf("Empate\n");
        }
    }

    return 0;
}