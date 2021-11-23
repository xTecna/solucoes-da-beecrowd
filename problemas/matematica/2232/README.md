# 2232 - Triângulo de Pascal

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2232)

## Solução

A soma das linhas do triângulo de Pascal formam uma [progressão geométrica](../../../base-teorica/matematica/progressoes/README.md#progressão-geométrica) com `a_1` = 1 e `q` = 2. Se formos aplicar a fórmula de soma dos termos, temos

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;S&space;=&space;\frac{1&space;(1&space;-&space;2^n)}{1&space;-&space;2}&space;=&space;\frac{1&space;-&space;2^n}{-1}&space;=&space;2^n&space;-&space;1" title="\bg_white S = \frac{1 (1 - 2^n)}{1 - 2} = \frac{1 - 2^n}{-1} = 2^n - 1" />

Abaixo mostrarei uma forma muito rápida de calcular este valor usando o operador shift (`<<`), que desloca para a esquerda a representação binária de um número uma quantidade arbitrária de vezes a fim de multiplicar um número por 2 repetidas vezes.

> Em JavaScript, a abordagem com o operador shift deu overflow.

### C99
```c
#include <stdio.h>

int main()
{
    int T, N;

    scanf("%d", &T);

    for (int i = 0; i < T; ++i)
    {
        scanf("%d", &N);

        printf("%d\n", (1 << N) - 1);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main()
{
    int T, N;

    cin >> T;
    for (int i = 0; i < T; ++i)
    {
        cin >> N;
        cout << (1 << N) - 1 << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift());

for (let i = 0; i < T; ++i) {
    let N = parseInt(lines.shift());

    console.log(Math.pow(2, N) - 1);
}
```

### Python 3.9
```python
T = int(input())

for _ in range(T):
    N = int(input())

    print((1 << N) - 1)
```