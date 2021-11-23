# 1169 - Trigo no Tabuleiro

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1169)

## Solução

A quantidade de grãos de trigo em cada casa do tabuleiro configura uma [progressão geométrica](../../../base-teorica/matematica/progressoes/README.md#progressão-geométrica) com `a_1` = 1 e `q` = 2.

Para calcular potências rapidamente, use o truque de [potenciação rápida](../../../base-teorica/matematica/macetes/README.md#potenciação-rápida).

### C99
```c
#include <stdio.h>

unsigned long long int potencia(int base, int expoente)
{
    if (expoente == 1)
        return base;
    if (expoente % 2)
        return base * potencia(base, expoente - 1);

    unsigned long long int p = potencia(base, expoente / 2);
    return p * p;
}

unsigned long long int somaPG(int a0, int q, int n)
{
    return a0 * (potencia(q, n) - 1) / (q - 1);
}

int main()
{
    int N, X;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &X);

        printf("%llu kg\n", somaPG(1, 2, X) / 12000);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

unsigned long long int potencia(int base, int expoente)
{
    if (expoente == 1)
        return base;
    if (expoente % 2)
        return base * potencia(base, expoente - 1);

    unsigned long long int p = potencia(base, expoente / 2);
    return p * p;
}

unsigned long long int somaPG(int a0, int q, int n)
{
    return a0 * (potencia(q, n) - 1) / (q - 1);
}

int main()
{
    int N, X;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        cout << somaPG(1, 2, X) / 12000 << " kg" << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const potencia = (base, expoente) => {
    if (expoente === 1) return base;
    if (expoente % 2) return base * potencia(base, expoente - 1);

    let p = potencia(base, Math.floor(expoente / 2));
    return p * p;
};

const somaPG = (a0, q, n) => {
    return a0 * (potencia(q, n) - 1) / (q - 1);
};

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    console.log(`${Math.floor(somaPG(1, 2, X) / 12000)} kg`);
}
```

### Python 3.9
```python
def potencia(base, expoente):
    if(expoente == 1):
        return base
    if(expoente % 2):
        return base * potencia(base, expoente - 1)

    p = potencia(base, expoente//2)
    return p * p


def somaPG(a0, q, n):
    return a0 * (potencia(q, n) - 1)/(q - 1)


N = int(input())

for _ in range(N):
    X = int(input())

    print(f'{somaPG(1, 2, X)//12000:.0f} kg')
```