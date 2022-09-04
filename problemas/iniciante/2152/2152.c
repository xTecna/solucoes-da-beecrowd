#include <stdio.h>

int main()
{
    int T, H, M, O;

    scanf("%d", &T);
    for (int i = 0; i < T; ++i)
    {
        scanf("%d %d %d", &H, &M, &O);
        printf("%02d:%02d - A porta %s!\n", H, M, O ? "abriu" : "fechou");
    }

    return 0;
}