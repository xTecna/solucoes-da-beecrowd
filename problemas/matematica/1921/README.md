# 1921 - Guilherme e Suas Pipas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1921)

## Solução

A quantidade de barbantes necessário para ligar todos os pares de pontas não vizinhas em uma pipa de `N` lados é equivalente ao número de diagonais de um polígono de `N` lados. O número de diagonais de de tal polígono é

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;d&space;=&space;\frac{N&space;(N&space;-&space;3)}{2}" title="\bg_white d = \frac{N (N - 3)}{2}" />

que pode ser interpretado basicamente como cada ponta `N` precisar ser ligada a seus `N - 3` vizinhos (excluindo os dois vizinhos de cada lado e si mesmo), dividido por dois para não contar cada diagonal duas vezes.

### C99
```c
#include <stdio.h>

int main()
{
    int n;

    scanf("%d", &n);

    printf("%lld\n", ((long long int)n * (n - 3)) / 2);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main()
{
    int n;

    cin >> n;

    cout << ((long long int)n * (n - 3)) / 2 << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let n = parseInt(lines.shift());

console.log((n * (n - 3)) / 2);
```

### Python 3.9
```python
n = int(input())

print((n * (n - 3))//2)
```