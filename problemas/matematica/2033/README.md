# 2033 - Juros Sobre o Empréstimo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2033)

## Solução

Aplicação diretona da fórmula do cálculo de juros simples e compostos que você aprendeu na escola. Seguem as fórmulas, primeiramente para os juros simples:

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
juros&space;=&space;capital&space;\times&space;meses&space;\times&space;taxas" title="\bg_white 
juros = capital \times meses \times taxas" />

E agora para os juros compostos:

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
juros&space;=&space;capital&space;\times&space;(1&space;+&space;taxa)^{meses}&space;-&space;capital\\
juros&space;=&space;capital&space;\times&space;((1&space;+&space;taxa)^{meses}&space;-&space;1)" title="\bg_white 
juros = capital \times (1 + taxa)^{meses} - capital\\
juros = capital \times ((1 + taxa)^{meses} - 1)" />

Com isso, basta aplicar as fórmulas nos valores passados pelo programa.

> Eu utilizo um método rápido para o cálculo da potência envolvida nesse exercício, mas acredito que o método `pow` também dá Accepted sem problemas.

### C99
```c
#include <stdio.h>

double potencia(double base, int expoente){
    if(expoente == 1)   return base;
    if(expoente % 2)    return base * potencia(base, expoente - 1);
    double pot = potencia(base, expoente/2);
    return pot * pot;
}

double jurosSimples(double capital, int meses, double taxa){
    return meses * taxa * capital;
}

double jurosCompostos(double capital, int meses, double taxa){
    return capital * (potencia(1 + taxa, meses) - 1);
}

int main(){
    int meses;
    double taxa, capital, simples, compostos;

    while(scanf("%lf %lf %d", &capital, &taxa, &meses) != EOF){
        simples = jurosSimples(capital, meses, taxa);
        compostos = jurosCompostos(capital, meses, taxa);

        printf("DIFERENCA DE VALOR = %.2lf\n", compostos - simples);
        printf("JUROS SIMPLES = %.2lf\n", simples);
        printf("JUROS COMPOSTO = %.2f\n", compostos);
    }
}
```

### C++17
```cpp
#include <iostream>
#include <iomanip>

using namespace std;

double potencia(double base, int expoente){
    if(expoente == 1)   return base;
    if(expoente % 2)    return base * potencia(base, expoente - 1);
    double pot = potencia(base, expoente/2);
    return pot * pot;
}

double jurosSimples(double capital, int meses, double taxa){
    return meses * taxa * capital;
}

double jurosCompostos(double capital, int meses, double taxa){
    return capital * (potencia(1 + taxa, meses) - 1);
}

int main(){
    int meses;
    double taxa, capital, simples, compostos;

    cout << setprecision(2) << fixed;
    while(cin >> capital >> taxa >> meses){
        simples = jurosSimples(capital, meses, taxa);
        compostos = jurosCompostos(capital, meses, taxa);

        cout << "DIFERENCA DE VALOR = " << compostos - simples << endl;
        cout << "JUROS SIMPLES = " << simples << endl;
        cout << "JUROS COMPOSTO = " << compostos << endl;
    }

    return 0;
}
```