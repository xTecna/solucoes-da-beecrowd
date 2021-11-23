# 1393 - Lajotas Hexagonais

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1393)

## Solução

No caso de apenas uma lajota, há apenas um caminho possível: pisar na lajota 1.

No caso de duas lajotas, há dois caminhos possíveis: pisar na lajota 1 e depois na 2 ou ir direto pra 2.

Para casos com mais de duas lajotas, por exemplo, no caso de `N` lajotas, com `N` > 2, temos que tal lajota sempre possui dois vizinhos: `N - 2` e `N - 1`. Com isso, o número de caminhos possíveis para chegar até a lajota `N` é a soma do número de caminhos possíveis até a lajota `N - 2` (e daí o próximo passo seria ir para lajota `N`, pulando a lajota `N - 1`) com o número de caminhos possíveis até a lajota `N - 1` (cujo próximo passo seria ir para a lajota `N`).

Essa sequência de caminhos possíveis para números maiores de lajota então constitui a sequência de Fibonacci.

### C99
```c
#include <stdio.h>

int F[41];

int Fibonacci(int n)
{
    if (F[n] == -1)
        F[n] = Fibonacci(n - 1) + Fibonacci(n - 2);
    return F[n];
}

int main()
{
    int N;

    F[0] = 1;
    F[1] = 1;
    for (int i = 2; i <= 40; ++i)
    {
        F[i] = -1;
    }

    while (scanf("%d", &N))
    {
        if (!N)
            break;

        printf("%d\n", Fibonacci(N));
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int F[41];

int Fibonacci(int n)
{
    if (F[n] == -1)
        F[n] = Fibonacci(n - 1) + Fibonacci(n - 2);
    return F[n];
}

int main()
{
    int n;

    F[0] = 1;
    F[1] = 1;
    for (int i = 2; i <= 40; ++i)
    {
        F[i] = -1;
    }

    while (cin >> n)
    {
        if (!n)
            break;

        cout << Fibonacci(n) << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let F = Array(41);
F.fill(-1);
F[0] = 1;
F[1] = 1;

const Fibonacci = (n) => {
    if (F[n] == -1) F[n] = Fibonacci(n - 1) + Fibonacci(n - 2);
    return F[n];
};

lines.pop();

while (lines.length) {
    let N = parseInt(lines.shift());

    console.log(Fibonacci(N));
}
```

### Python 3.9
```python
F = [-1 for _ in range(41)]
F[0] = 1
F[1] = 1


def Fibonacci(n):
    if(F[n] == -1):
        F[n] = Fibonacci(n - 1) + Fibonacci(n - 2)
    return F[n]


while True:
    try:
        N = int(input())

        if(N == 0):
            break

        print(Fibonacci(N))
    except EOFError:
        break
```