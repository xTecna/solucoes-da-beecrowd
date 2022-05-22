#include <iostream>

using namespace std;

int MDC(int a, int b)
{
    return (b == 0) ? a : MDC(b, a % b);
}

class Fracao
{
public:
    int num;
    int den;

    Fracao()
    {
        num = 0;
        den = 1;
    }

    Fracao(int x, int y)
    {
        num = x;
        den = y;
    }

    const Fracao operator+(const Fracao &outra)
    {
        return Fracao(this->num * outra.den + this->den * outra.num, this->den * outra.den);
    }

    const Fracao operator-(const Fracao &outra)
    {
        return Fracao(this->num * outra.den - this->den * outra.num, this->den * outra.den);
    }

    const Fracao operator*(const Fracao &outra)
    {
        return Fracao(this->num * outra.num, this->den * outra.den);
    }

    const Fracao operator/(const Fracao &outra)
    {
        return Fracao(this->num * outra.den, this->den * outra.num);
    }

    const Fracao irredutivel()
    {
        int mdc = MDC(abs(this->num), this->den);

        return Fracao(this->num / mdc, this->den / mdc);
    }
};

int main()
{
    int N;
    char operador, barra;
    Fracao f1, f2, resultado;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> f1.num >> barra >> f1.den >> operador >> f2.num >> barra >> f2.den;

        switch (operador)
        {
        case '+':
            resultado = f1 + f2;
            break;
        case '-':
            resultado = f1 - f2;
            break;
        case '*':
            resultado = f1 * f2;
            break;
        case '/':
            resultado = f1 / f2;
            break;
        }

        cout << resultado.num << "/" << resultado.den << " = ";
        resultado = resultado.irredutivel();
        cout << resultado.num << "/" << resultado.den << endl;
    }

    return 0;
}