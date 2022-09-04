#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

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

    cin >> n;
    cout << setprecision(1) << fixed << Fibonacci(n) << endl;

    return 0;
}