#include <cstring>
#include <cstdio>

using namespace std;

int main()
{
    bool first;
    int NC, N, altura, alturas[231];

    scanf("%d", &NC);

    for (int k = 0; k < NC; ++k)
    {
        scanf("%d", &N);

        memset(alturas, 0, sizeof(alturas));

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &altura);
            alturas[altura]++;
        }

        first = true;
        for (int i = 20; i < 231; ++i)
        {
            for (int j = 0; j < alturas[i]; ++j)
            {
                if (first)
                    first = false;
                else
                    printf(" ");

                printf("%d", i);
            }
        }
        printf("\n");
    }

    return 0;
}
