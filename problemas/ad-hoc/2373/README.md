# 2373 - Garçom

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2373)

## Solução

Basta ler cada par de números e avaliar o número de copos e de latas. Caso haja mais latas do que copos, adicionar a quantidade de copos na quantidade de copos quebrados.

### C99
```c
#include <stdio.h>

int main()
{
    int N, L, C, resposta;

    scanf("%d", &N);

    resposta = 0;
    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &L, &C);

        if (L > C)
            resposta += C;
    }

    printf("%d\n", resposta);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main()
{
    int N, L, C, resposta;

    resposta = 0;
    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> L >> C;

        if (L > C)
        {
            resposta += C;
        }
    }
    cout << resposta << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let N = parseInt(lines.shift());

let resposta = 0;
for (let i = 0; i < N; ++i) {
    let [L, C] = lines.shift().split(' ').map((x) => parseInt(x));

    if (L > C) resposta += C;
}

console.log(resposta);
```

### Python 3.9
```python
N = int(input())

resposta = 0
for _ in range(N):
    L, C = [int(x) for x in input().split(' ')]

    if(L > C):
        resposta += C

print(resposta)
```