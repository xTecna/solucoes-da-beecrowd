# 2758 - Entrada e Saída de Números Reais

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2758)

## Solução

Algumas linguagens não fazem distinção entre valores de ponto flutuante de precisão única e precisão simples, o que torna esse exercício muito mais difícil de ser resolvido nessas linguagens, por isso, aqui só consegui resolver em C e C++.

### C99

```c
#include <stdio.h>

int main()
{
    float A, B;
    double C, D;

    scanf("%f %f", &A, &B);
    scanf("%lf %lf", &C, &D);

    printf("A = %f, B = %f\n", A, B);
    printf("C = %lf, D = %lf\n", C, D);
    printf("A = %.1f, B = %.1f\n", A, B);
    printf("C = %.1lf, D = %.1lf\n", C, D);
    printf("A = %.2f, B = %.2f\n", A, B);
    printf("C = %.2lf, D = %.2lf\n", C, D);
    printf("A = %.3f, B = %.3f\n", A, B);
    printf("C = %.3lf, D = %.3lf\n", C, D);
    printf("A = %.3E, B = %.3E\n", A, B);
    printf("C = %.3E, D = %.3E\n", C, D);
    printf("A = %.0f, B = %.0f\n", A, B);
    printf("C = %.0lf, D = %.0lf\n", C, D);

    return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    float A, B;
    double C, D;

    cin >> A >> B;
    cin >> C >> D;

    cout << "A = " << setprecision(6) << fixed << A << ", B = " << setprecision(6) << fixed << B << endl;
    cout << "C = " << setprecision(6) << fixed << C << ", D = " << setprecision(6) << fixed << D << endl;
    cout << "A = " << setprecision(1) << fixed << A << ", B = " << setprecision(1) << fixed << B << endl;
    cout << "C = " << setprecision(1) << fixed << C << ", D = " << setprecision(1) << fixed << D << endl;
    cout << "A = " << setprecision(2) << fixed << A << ", B = " << setprecision(2) << fixed << B << endl;
    cout << "C = " << setprecision(2) << fixed << C << ", D = " << setprecision(2) << fixed << D << endl;
    cout << "A = " << setprecision(3) << fixed << A << ", B = " << setprecision(3) << fixed << B << endl;
    cout << "C = " << setprecision(3) << fixed << C << ", D = " << setprecision(3) << fixed << D << endl;
    cout << "A = " << scientific << uppercase << setprecision(3) << A << ", B = " << scientific << uppercase << setprecision(3) << B << endl;
    cout << "C = " << scientific << uppercase << setprecision(3) << C << ", D = " << scientific << uppercase << setprecision(3) << D << endl;
    cout << "A = " << setprecision(0) << fixed << A << ", B = " << setprecision(0) << fixed << B << endl;
    cout << "C = " << setprecision(0) << fixed << C << ", D = " << setprecision(0) << fixed << D << endl;

    return 0;
}
```