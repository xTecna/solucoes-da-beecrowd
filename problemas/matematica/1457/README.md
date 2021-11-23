# 1457 - Oráculo de Alexandria

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1457)

## Solução

Podemos ir calculando os valores usando uma recorrência como o cálculo do fatorial normalmente, mas em vez de mandar para `F(N - 1)`, mandamos para `F(N - K, K)`, passando dois parâmetros para sempre lembrarmos quando precisamos diminuir.

Graças ao limites pequenos, podemos fazer uma tabela de memorização que evita que precisemos recalcular os resultados toda vez, o que aumenta bastante a eficiência do algoritmo.

### C99
```c
#include <string.h>
#include <stdio.h>

long long int F[101][21];

long long int fatorial(int n, int k)
{
    if (n < 1)
        return 1;
    if (F[n][k] == -1)
        F[n][k] = n * fatorial(n - k, k);
    return F[n][k];
}

int main()
{
    int i, T, N, K;
    char entrada[100], numero[100];

    for (int i = 1; i <= 100; ++i)
    {
        for (int j = 1; j <= 20; ++j)
        {
            F[i][j] = -1;
        }
    }

    scanf("%d\n", &T);

    for (int k = 0; k < T; ++k)
    {
        scanf("%s", &entrada);

        for (i = 0; i < strlen(entrada); ++i)
        {
            if (entrada[i] == '!')
                break;
        }
        strncpy(numero, entrada, i);
        numero[i] = '\0';
        sscanf(numero, "%d", &N);
        K = strlen(entrada) - i;

        printf("%lld\n", fatorial(N, K));
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <string>

using namespace std;

long long int F[101][21];

long long int fatorial(int n, int k)
{
    if (n < 1)
        return 1;
    if (F[n][k] == -1)
        F[n][k] = n * fatorial(n - k, k);
    return F[n][k];
}

int main()
{
    int T, N, K;
    string entrada;

    for (int i = 1; i <= 100; ++i)
    {
        for (int j = 1; j <= 20; ++j)
        {
            F[i][j] = -1;
        }
    }

    cin >> T;

    for (int k = 0; k < T; ++k)
    {
        cin >> entrada;

        N = stoi(entrada.substr(0, entrada.find('!')));
        K = entrada.length() - entrada.find('!');

        cout << fatorial(N, K) << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let F = [];

for (let i = 0; i <= 100; ++i) {
    F.push([]);
    for (let j = 0; j <= 20; ++j) {
        F[i].push(-1n);
    }
}

const fatorial = (n, k) => {
    if (n < 1) return 1n;
    if (F[n][k] === -1n) F[n][k] = BigInt(n) * fatorial(n - k, k);
    return F[n][k];
};

let T = parseInt(lines.shift());

for (let k = 0; k < T; ++k) {
    let entrada = lines.shift().trim();

    let N = parseInt(entrada.substr(0, entrada.indexOf('!')));
    let K = entrada.length - entrada.indexOf('!');

    console.log(fatorial(N, K).toString());
}
```

### Python 3.9
```python
F = [[-1 for _ in range(21)] for _ in range(101)]


def fatorial(n, k):
    if(n < 1):
        return 1
    if(F[n][k] == -1):
        F[n][k] = n * fatorial(n - k, k)
    return F[n][k]


T = int(input())

for _ in range(T):
    entrada = input().strip()

    exclamacao = entrada.find('!')
    N = int(entrada[:exclamacao])
    K = len(entrada) - exclamacao

    print(fatorial(N, K))
```