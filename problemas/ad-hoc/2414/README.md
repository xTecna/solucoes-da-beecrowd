# 2414 - Desafio do Maior Número

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2414)

## Solução

Você pode resolver esse problema como você jogaria esse jogo na vida real: a cada número falado em voz alta, basta checar se o número falado é maior do que o número que você está mentalizando como maior. Caso seja, você descarta seu número e esse passa a ser o novo maior número; caso contrário, você simplesmente ignora o número falado.

### C99
```c
#include <stdio.h>

int main()
{
    int numero, maior;

    maior = 0;
    while (scanf("%d", &numero))
    {
        if (!numero)
            break;

        if (numero > maior)
            maior = numero;
    }

    printf("%d\n", maior);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main()
{
    int numero, maior;

    maior = 0;
    while (cin >> numero)
    {
        if (!numero)
            break;

        if (numero > maior)
            maior = numero;
    }

    cout << maior << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
let input = require('fs').readFileSync('/dev/stdin', 'utf8');
let lines = input.split('\n');

let numeros = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(numeros.reduce((acc, cur) => cur > acc ? cur : acc, 0));
```

### Python 3.9
```python
numeros = [int(x) for x in input().strip().split(' ')]

print(max(numeros))
```