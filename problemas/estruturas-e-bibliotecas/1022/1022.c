#include <stdio.h>

struct Fracao
{
    int num, den;
};

struct Fracao soma(struct Fracao f1, struct Fracao f2)
{
    struct Fracao retorno;

    retorno.num = f1.num * f2.den + f2.num * f1.den;
    retorno.den = f1.den * f2.den;

    return retorno;
}

struct Fracao subtracao(struct Fracao f1, struct Fracao f2)
{
    struct Fracao retorno;

    retorno.num = f1.num * f2.den - f2.num * f1.den;
    retorno.den = f1.den * f2.den;

    return retorno;
}

struct Fracao multiplicacao(struct Fracao f1, struct Fracao f2)
{
    struct Fracao retorno;

    retorno.num = f1.num * f2.num;
    retorno.den = f1.den * f2.den;

    return retorno;
}

struct Fracao divisao(struct Fracao f1, struct Fracao f2)
{
    struct Fracao retorno;

    retorno.num = f1.num * f2.den;
    retorno.den = f2.num * f1.den;

    return retorno;
}

int MDC(int a, int b)
{
    return (b == 0) ? a : MDC(b, a % b);
}

struct Fracao irredutivel(struct Fracao f)
{
    int mdc = (f.num < 0) ? MDC(-f.num, f.den) : MDC(f.num, f.den);

    f.num /= mdc;
    f.den /= mdc;

    return f;
}

int main()
{
    int N;
    char operador;
    struct Fracao f1, f2, resultado;

    scanf("%d\n", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d / %d %c %d / %d\n", &f1.num, &f1.den, &operador, &f2.num, &f2.den);

        switch (operador)
        {
        case '+':
            resultado = soma(f1, f2);
            break;
        case '-':
            resultado = subtracao(f1, f2);
            break;
        case '*':
            resultado = multiplicacao(f1, f2);
            break;
        case '/':
            resultado = divisao(f1, f2);
            break;
        }

        printf("%d/%d = ", resultado.num, resultado.den);
        resultado = irredutivel(resultado);
        printf("%d/%d\n", resultado.num, resultado.den);
    }

    return 0;
}
