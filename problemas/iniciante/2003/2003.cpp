#include <iostream>
#include <cstdio>

using namespace std;

int main()
{
    int hora, minuto;

    while (scanf("%d:%d\n", &hora, &minuto) != EOF)
    {
        int total = hora * 60 + minuto;
        printf("Atraso maximo: %d\n", max(0, total + 60 - 8 * 60));
    }

    return 0;
}