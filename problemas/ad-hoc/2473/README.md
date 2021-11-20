# 2473 - Loteria

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2473)

## Solução

A solução em vetor envolve marcar verdadeiro para cada dezena jogada pela pessoa e depois verificar quantas posições verdadeiras há em relação ao resultado real.

A solução em conjunto envolve colocar todas as dezenas jogadas em um conjunto e ir removendo as dezenas do resultado para depois verificar quantas dezenas permanecem no conjunto.

> Em Python, o programa dá erro se ele tenta remover um número que não existe no conjunto, por isso, é importante verificar primeiro se tal elemento existe antes de tentar removê-lo.

### C99
```c
#include <string.h>
#include <stdio.h>

int main()
{
    int x, resposta;
    int dezenas[100];

    memset(dezenas, 0, sizeof(dezenas));

    for (int i = 0; i < 6; ++i)
    {
        scanf("%d", &x);
        dezenas[x] = 1;
    }

    resposta = 0;
    for (int i = 0; i < 6; ++i)
    {
        scanf("%d", &x);
        if (dezenas[x] == 1)
            ++resposta;
    }

    switch (resposta)
    {
    case 3:
        printf("terno\n");
        break;
    case 4:
        printf("quadra\n");
        break;
    case 5:
        printf("quina\n");
        break;
    case 6:
        printf("sena\n");
        break;
    default:
        printf("azar\n");
        break;
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <set>

using namespace std;

int main()
{
    int x;
    set<int> dezenas;
    string retorno[] = {"sena", "quina", "quadra", "terno", "azar", "azar", "azar"};

    for (int i = 0; i < 6; ++i)
    {
        cin >> x;
        dezenas.insert(x);
    }

    for (int i = 0; i < 6; ++i)
    {
        cin >> x;
        dezenas.erase(x);
    }

    cout << retorno[dezenas.size()] << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const retorno = ["sena", "quina", "quadra", "terno", "azar", "azar", "azar"];

let aposta = lines.shift().trim().split(' ').map((x) => parseInt(x));
let resultado = lines.shift().trim().split(' ').map((x) => parseInt(x));

aposta = new Set(aposta);

for(let i = 0; i < 6; ++i){
    aposta.delete(resultado[i]);
}

console.log(retorno[aposta.size]);
```

### Python 3.9
```python
retorno = ["sena", "quina", "quadra", "terno", "azar", "azar", "azar"]

aposta = [int(x) for x in input().split(' ')]
resultado = [int(x) for x in input().split(' ')]

aposta = set(aposta)

for dezena in resultado:
    if dezena in aposta:
        aposta.remove(dezena)

print(retorno[len(aposta)])
```