#include <iostream>
#include <cmath>

using namespace std;

bool testaLado(int a, int b, int c)
{
    return abs(b - c) < a && a < b + c;
}

bool triangulo(int a, int b, int c)
{
    return testaLado(a, b, c) && testaLado(b, a, c) && testaLado(c, a, b);
}

string classificacao(int a, int b, int c)
{
    if (a == b && b == c)
    {
        return "Equilatero";
    }
    if (a == b || a == c || b == c)
    {
        return "Isoceles";
    }
    return "Escaleno";
}

bool retangulo(int a, int b, int c)
{
    return a % 3 == 0 && b % 4 == 0 && c % 5 == 0;
}

int main()
{
    int A, B, C;

    cin >> A >> B >> C;

    if (A > B)
    {
        swap(A, B);
    }
    if (B > C)
    {
        swap(B, C);
        if (A > B)
        {
            swap(A, B);
        }
    }

    if (triangulo(A, B, C))
    {
        cout << "Valido-" << classificacao(A, B, C) << endl;
        cout << "Retangulo: " << ((char)retangulo(A, B, C) ? 'S' : 'N') << endl;
    }
    else
    {
        cout << "Invalido" << endl;
    }

    return 0;
}