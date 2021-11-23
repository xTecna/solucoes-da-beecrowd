# 1795 - Triângulo Trinomial

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1795)

## Solução

Pode-se verificar que a soma dos elementos de uma linha `x` é igual a `3^x`. Você pode usar [potenciação rápida](../../../base-teorica/matematica/macetes/README.md#potenciação-rápida) para calcular rapidamente este resultado.

### C99
```c
#include <stdio.h>

long long int potencia(int base, int expoente)
{
    if (expoente == 0)
        return 1;
    if (expoente % 2)
        return base * potencia(base, expoente - 1);

    long long int p = potencia(base, expoente / 2);
    return p * p;
}

int main()
{
    int R;

    scanf("%d", &R);
    printf("%lld\n", potencia(3, R));

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

long long int potencia(int base, int expoente)
{
    if (expoente == 0)
        return 1;
    if (expoente % 2)
        return base * potencia(base, expoente - 1);

    long long int p = potencia(base, expoente / 2);
    return p * p;
}

int main()
{
    int R;

    cin >> R;
    cout << potencia(3, R) << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const potencia = (base, expoente) => {
    if (expoente === 0) return 1;
    if (expoente % 2) return base * potencia(base, expoente - 1);

    let p = potencia(base, Math.floor(expoente / 2));
    return p * p;
};

let R = parseInt(lines.shift());
console.log(potencia(3, R));
```

### Python 3.9
```python
def potencia(base, expoente):
    if(expoente == 0):
        return 1
    if(expoente % 2 == 1):
        return base * potencia(base, expoente - 1)

    p = potencia(base, expoente//2)
    return p * p


R = int(input())
print(potencia(3, R))
```