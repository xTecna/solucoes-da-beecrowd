# 1161 - Soma de Fatoriais

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1161)

## Solução

Os números fatoriais são grandes demais para caber em variáveis inteiras de 32 bits, que só conseguem representar até o número 2^32 - 1 = 4.294.967.295 (que, não se preocupe, não vou escrever em extenso aqui). Com isso, precisamos estender a representação do número com um long long, acrescentando mais 32 bits para a representação para 2^64 - 1 = 18.446.744.073.709.551.615, que é um número maior que 20!, o que cabe no nosso rol de resultados (com o maior resultado dentro 20! vezes 2). Para JavaScript, use `BigInt()` em vez dos números normais.

Você pode calcular cada fatorial usando o método recursivo normalmente, mas memorizar o resultado de valores previamente calculados vai te economizar bastante tempo de execução, podendo inclusive optar por implementar a função e colocar o comando `Fatorial(20)` para calcular previamente todos os casos possíveis antes de receber qualquer entrada.

### C99
```c
#include <string.h>
#include <stdio.h>

long long int F[21];

long long int Fatorial(int n)
{
    if (F[n] == 0)
        F[n] = n * Fatorial(n - 1);
    return F[n];
}

int main()
{
    int M, N;

    memset(F, 0, sizeof(F));
    F[0] = 1;

    while (scanf("%d %d", &M, &N) != EOF)
    {
        printf("%lld\n", Fatorial(M) + Fatorial(N));
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <vector>

using namespace std;

vector<long long int> F;

long long int Fatorial(int n)
{
    if (F[n] == 0)
        F[n] = n * Fatorial(n - 1);
    return F[n];
}

int main()
{
    int M, N;

    F.assign(21, 0);
    F[0] = 1;

    while (cin >> M >> N)
    {
        cout << Fatorial(M) + Fatorial(N) << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.trim().split("\n");

let F = Array(21);
F.fill(null);
F[0] = BigInt(1);

const Fatorial = (n) => {
    if (!F[n]) F[n] = BigInt(n) * Fatorial(n - 1);
    return F[n];
};

while (lines.length) {
    let [M, N] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log((Fatorial(M) + Fatorial(N)).toString());
}
```

### Python 3.9
```python
F = [0 for _ in range(21)]
F[0] = 1


def Fatorial(n):
    if(F[n] == 0):
        F[n] = n * Fatorial(n - 1)
    return F[n]


while True:
    try:
        M, N = [int(x) for x in input().strip().split(' ')]

        print(Fatorial(M) + Fatorial(N))
    except EOFError:
        break
```