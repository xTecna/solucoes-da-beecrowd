#include <stdio.h>
#include <math.h>

double potencia(double base, int expoente)
{
    if (expoente == 1)
    {
        return base;
    }
    else if (expoente % 2)
    {
        return base * potencia(base, expoente - 1);
    }
    else
    {
        double p = potencia(base, expoente / 2);
        return p * p;
    }
}

double Fibonacci(int n)
{
    return (potencia((1 + sqrt(5)) / 2, n) - potencia((1 - sqrt(5)) / 2, n)) / sqrt(5);
}

int main()
{
    int n;

    scanf("%d\n", &n);
    printf("%.1lf\n", Fibonacci(n));

    return 0;
}