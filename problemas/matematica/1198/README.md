# 1198 - O Bravo Guerreiro Hashmat

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1198)

## Solução

Basicamente calcular a diferença absoluta de soldados entre os dois exércitos.

> Este problema envolve números grandes, então tome as precauções necessárias para evitar overflow na sua linguagem de programação escolhida.

> Dito isso, não é necessário usar BigInt em JavaScript!

### C99
```c
#include <stdlib.h>
#include <stdio.h>

int main()
{
    long long int hashmat, oponente;

    while (scanf("%lld %lld", &hashmat, &oponente) != EOF)
    {
        printf("%lld\n", hashmat > oponente ? hashmat - oponente : oponente - hashmat);
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
    unsigned long long int a, b;

    while (cin >> a >> b)
    {
        cout << (a > b ? a - b : b - a) << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

lines.pop();

let p = 0;
while (p < lines.length) {
    let [hashmat, oponente] = lines[p++].trim().split(' ').map((x) => parseInt(x));

    console.log(`${hashmat > oponente ? hashmat - oponente : oponente - hashmat}`);
}
```

### Python 3.9
```python
while True:
    try:
        hashmat, oponente = [int(x) for x in input().strip().split(' ')]

        print(f'{hashmat - oponente if hashmat > oponente else oponente - hashmat}')
    except EOFError:
        break
```