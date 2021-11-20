# 1136 - Bingo!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1136)

## Solução

Como temos no máximo 91 bolas diferentes, então podemos analisar todas as, no máximo, 8281 possibilidades entre os valores absolutos, um número perfeitamente possível de ser computado. É possível guardar as possibilidades em vetores ou conjuntos.

> Aqui tomei a liberdade de assumir que a diferença absoluta `0` é sempre possível, já que sempre há a possibilidade de se sortear dois números iguais (já que há reposição).

### C99
```c
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int main()
{
    int N, B, resposta, bolas[90], possibilidades[91];

    while (scanf("%d %d", &N, &B))
    {
        if (!N && !B)
            break;

        memset(possibilidades, 0, sizeof(possibilidades));
        possibilidades[0] = 1;
        resposta = 1;

        for (int i = 0; i < B; ++i)
        {
            scanf("%d", &bolas[i]);
        }

        for (int i = 0; i < B; ++i)
        {
            for (int j = i + 1; j < B; ++j)
            {
                int absoluto = abs(bolas[i] - bolas[j]);

                if (!possibilidades[absoluto])
                {
                    ++resposta;
                    possibilidades[absoluto] = 1;
                }
            }
        }

        printf("%c\n", resposta == N + 1 ? 'Y' : 'N');
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cstdlib>
#include <vector>
#include <set>

using namespace std;

int main()
{
    int N, B;
    vector<int> bolas;
    set<int> possibilidades;

    while (cin >> N >> B)
    {
        if (!N && !B)
            break;

        possibilidades.clear();
        possibilidades.insert(0);

        bolas.assign(B, 0);
        for (int i = 0; i < B; ++i)
        {
            cin >> bolas[i];
        }

        for (int i = 0; i < B; ++i)
        {
            for (int j = i + 1; j < B; ++j)
            {
                possibilidades.insert(abs(bolas[i] - bolas[j]));
            }
        }

        cout << (char)(possibilidades.size() == N + 1 ? 'Y' : 'N') << endl;
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
    let [N, B] = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let bolas = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let possibilidades = new Set();
    possibilidades.add(0);

    for(let i = 0; i < B; ++i){
        for(let j = i + 1; j < B; ++j){
            possibilidades.add(Math.abs(bolas[i] - bolas[j]));
        }
    }

    console.log(possibilidades.size === N + 1 ? 'Y' : 'N');
}
```

### Python 3.9
```python
while True:
    try:
        N, B = [int(x) for x in input().strip().split(' ')]
        bolas = [int(x) for x in input().strip().split(' ')]

        possibilidades = set()
        possibilidades.add(0)

        for i in range(B):
            for j in range(i + 1, B):
                possibilidades.add(abs(bolas[i] - bolas[j]))
        
        print('Y' if len(possibilidades) == N + 1 else 'N')
    except EOFError:
        break
```