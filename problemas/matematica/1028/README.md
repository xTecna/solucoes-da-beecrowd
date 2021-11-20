# 1028 - Figurinhas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1028)

## Solução

Ambos os jogadores precisam dividir suas coleções em pilhas de tamanho igual e que tenham o mesmo número de figurinhas entre qualquer pilha, não importa de qual jogador a pilha seja. Vejamos que o que sempre podemos fazer é criar pilhas de tamanho 1, mas se os dois jogadores tiverem uma quantidade de cartas que possuem um divisor maior em comum, é possível fazer pilhas de figurinhas maiores. Neste problema, estamos interessados no maior tamanho da pilha que ambos os jogadores podem fazer, o que nos leva a resolver o problema do máximo divisor em comum entre as duas quantidades de carta.

Confira [Máximo Divisor Comum](../base-teorica/matematica/maior-divisor-comum.md) para entender como o algoritmo de Euclides para encontrar o MDC entre dois números funciona.

### C99
```c
#include <stdio.h>

int MDC(int a, int b)
{
    return (b == 0) ? a : MDC(b, a % b);
}

int main()
{
    int N, F1, F2;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &F1, &F2);
        printf("%d\n", MDC(F1, F2));
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

const MDC = (a, b) => (b === 0) ? a : MDC(b, a % b);

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let [F1, F2] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(MDC(F1, F2));
}
```

### Python 3.9
```python
def MDC(a, b):
    return a if b == 0 else MDC(b, a % b)


N = int(input())

for _ in range(N):
    F1, F2 = [int(x) for x in input().strip().split(' ')]
    print(MDC(F1, F2))
```