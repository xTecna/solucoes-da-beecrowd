# 1329 - Cara ou Coroa

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1329)

## Solução

Para resolver esse problema, basta acumular os resultados de Maria e João para cada jogo, lembrando de zerar o placar a cada caso de teste. Outra alternativa é contar apenas quantas partidas João ganhou e inferir o número de vitórias de Maria.

### C99
```c
#include <stdio.h>

int main()
{
    int N, R, maria, joao;

    while (scanf("%d", &N))
    {
        if (!N)
            break;

        joao = 0;

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &R);

            joao += R;
        }

        maria = N - joao;

        printf("Mary won %d times and John won %d times\n", maria, joao);
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
    int N, R, maria, joao;

    while (cin >> N)
    {
        if (!N)
            break;

        joao = 0;

        for (int i = 0; i < N; ++i)
        {
            cin >> R;

            joao += R;
        }

        maria = N - joao;

        cout << "Mary won " << maria << " times and John won " << joao << " times" << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
  let N = parseInt(lines.shift());

  let joao = lines.shift().trim().split(" ").map((x) => parseInt(x)).reduce((acc, cur) => acc + cur, 0);

  let maria = N - joao;

  console.log(`Mary won ${maria} times and John won ${joao} times`);
}
```

### Python 3.9
```python
while True:
    try:
        N = int(input())

        R = [int(x) for x in input().strip().split(' ')]

        joao = sum(R)
        maria = N - joao

        print(f"Mary won {maria} times and John won {joao} times")
    except EOFError:
        break
```