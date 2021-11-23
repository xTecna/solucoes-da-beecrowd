# 1585 - Fazendo Pandorgas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1585)

## Solução

A pipa é formada por dois bambus que são amarrados em formato de cruz, como diz a observação do enunciado. Com isso, para calcular a área do losango com base em suas diagonais, podemos pensar no losango como dois triângulos de mesma base, mas altura diferente. Se tivermos por exemplo dimensões de diagonais `X` e `Y`, podemos considerar a base de ambos os triângulos como `X` e as alturas dos dois triângulos `W` e `Z` tal que `Y = W + Z`. Com isso, a soma das áreas dos dois triângulos será

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;A&space;=&space;\frac{XW}{2}&space;&plus;&space;\frac{XZ}{2}&space;=&space;\frac{XW&space;&plus;&space;XZ}{2}&space;=&space;\frac{X(W&space;&plus;&space;Z)}{2}&space;=&space;\frac{XY}{2}" title="\bg_white A = \frac{XW}{2} + \frac{XZ}{2} = \frac{XW + XZ}{2} = \frac{X(W + Z)}{2} = \frac{XY}{2}" />

### C99
```c
#include <stdio.h>

int main()
{
    int N, x, y;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &x, &y);

        printf("%d cm2\n", (x * y) / 2);
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
    int N, x, y;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> x >> y;

        cout << (x * y) / 2 << " cm2" << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let [x, y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(`${Math.floor((x * y) / 2)} cm2`);
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    x, y = [int(x) for x in input().strip().split(' ')]

    print(f'{(x * y)//2} cm2')
```