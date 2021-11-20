# 1170 - Blobs

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1170)

## Solução

### Alternativa 1 - Cálculo direto

Saber quantas vezes precisamos dividir um número até que o resultado seja 1 ou menos é basicamente calcular o teto do logaritmo deste número.

### C99
```c
#include <stdio.h>
#include <math.h>

int main()
{
    double C;
    int N, resposta;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%lf", &C);

        printf("%d dias\n", (int)ceil(log2(C)));
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    double C;
    int N, resposta;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> C;

        cout << ceil(log2(C)) << " dias" << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let C = parseFloat(lines.shift());

    console.log(`${Math.ceil(Math.log2(C))} dias`);
}
```

### Python 3.9
```python
import math

N = int(input())

for _ in range(N):
    C = float(input())

    print(f'{math.ceil(math.log2(C))} dias')
```

### Alternativa 2 - Simulação do processo

Tudo o que você precisa é simular cada dia e quantos suprimentos Blobs terá ao final do dia. Se a quantidade de suprimento for menor ou igual a 1, pode parar o processo e imprimir a resposta.

### C99
```c
#include <stdio.h>

int main()
{
    double C;
    int N, resposta;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%lf", &C);

        resposta = 0;
        while (C > 1.0)
        {
            ++resposta;
            C /= 2;
        }

        printf("%d dias\n", resposta);
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
    double C;
    int N, resposta;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> C;

        resposta = 0;
        while (C > 1.0)
        {
            ++resposta;
            C /= 2;
        }

        cout << resposta << " dias" << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let C = parseFloat(lines.shift());

    let resposta = 0;
    while (C > 1.0) {
        ++resposta;
        C /= 2;
    }

    console.log(`${resposta} dias`);
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    C = float(input())

    resposta = 0
    while (C > 1.0):
        resposta += 1
        C /= 2

    print(f'{resposta} dias')
```