# 1573 - Fábrica de Chocolate

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1573)

## Solução

Para descobrirmos o volume de um paralelepípedo, tudo o que temos que fazer é multiplicar suas dimensões. Para descobrirmos o volume de um cubo, precisamos multiplicar seu lado três vezes (literalmente um paralelepípedo com três dimensões iguais).

Como ambos precisam ter o mesmo volume, então basta encontrarmos o volume e fazermos a operação inversa de multiplicar um mesmo número três vezes, ou seja, precisamos tirar a raiz cúbica do volume. Lembrando que os resultados precisam ser arredondados para baixo. Confira na sua linguagem de programação como tirar a raiz cúbica de um número.

### C99
```c
#include <stdio.h>
#include <math.h>

int main()
{
    int A, B, C;

    while (scanf("%d %d %d", &A, &B, &C))
    {
        if (!A && !B && !C)
            break;

        printf("%.0lf\n", floor(cbrt(A * B * C)));
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
    int A, B, C;

    while (cin >> A >> B >> C)
    {
        if (!A && !B && !C)
            break;

        cout << floor(cbrt(A * B * C)) << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while(lines.length){
    let [A, B, C] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(Math.floor(Math.cbrt(A * B * C)));
}
```

### Python 3.9
```python
import math

while True:
    try:
        A, B, C = [int(x) for x in input().strip().split(' ')]

        if(not A and not B and not C):
            break

        print(math.floor((A * B * C)**(1.0/3.0)))
    except EOFError:
        break
```