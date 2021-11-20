# 1410 - Ele Está Impedido!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1410)

## Solução

Existem duas regras do enunciado que indicam quando um jogador não está impedido. Elas são:

1. Quando o jogador atacante está na mesma linha do penúltimo jogador defensor;
2. Quando o jogador atacante está na mesma linha dos dois últimos jogadores defensores.

Ora, se o jogador atacante está na mesma linha que os dois últimos jogadores defensores, então ele está na mesma linha do penúltimo jogador defensor. Com isso, a regra 2 não é necessária.

Desta maneira, para verificarmos se algum jogador atacante está impedido, na verdade só nos interessa saber se o jogador mais perto do gol está impedido ou não. Se este jogador não estiver impedido, como os outros jogadores estão mais longe do gol, então eles também não estarão impedidos. Se ele estiver impedido, então algum jogador está impedido e podemos retornar `Y`.

Logo, precisamos apenas verificar se o atacante mais próximo do gol está na frente do penúltimo defensor mais perto do gol. Para isso, precisamos apenas ordenar os atacantes e defensores para descobrirmos quem é quem e fazermos nossa comparação.

### C99
```c
#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b)
{
    return (*(int *)a - *(int *)b);
}

int main()
{
    int A, D, atacantes[11], defensores[11];

    while (scanf("%d %d", &A, &D))
    {
        if (!A && !D)
            break;

        for (int i = 0; i < A; ++i)
        {
            scanf("%d", &atacantes[i]);
        }

        for (int i = 0; i < D; ++i)
        {
            scanf("%d", &defensores[i]);
        }

        qsort(atacantes, A, sizeof(int), comp);
        qsort(defensores, D, sizeof(int), comp);

        int atacante = atacantes[0];
        int penultimo = defensores[1];

        printf("%c\n", atacante < penultimo ? 'Y' : 'N');
    }

    return 0;
}
```

### C++17
```cpp
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main(){
    int A, D;
    vector<int> atacantes;
    vector<int> defensores;

    while(cin >> A >> D){
        if(!A && !D)    break;
        
        atacantes.assign(A, 0);
        defensores.assign(D, 0);

        for(int i = 0; i < A; ++i){
            cin >> atacantes[i];
        }
        for(int i = 0; i < D; ++i){
            cin >> defensores[i];
        }

        sort(atacantes.begin(), atacantes.end());
        sort(defensores.begin(), defensores.end());

        cout << (char) (atacantes[0] < defensores[1] ? 'Y' : 'N') << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const comp = (a, b) => a - b;

lines.pop();

while(lines.length){
    let [A, D] = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let atacantes = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let defensores = lines.shift().trim().split(' ').map((x) => parseInt(x));

    atacantes.sort(comp);
    defensores.sort(comp);

    console.log(atacantes[0] < defensores[1] ? 'Y' : 'N');
}
```

### Python 3.9
```python
while True:
    try:
        A, D = [int(x) for x in input().strip().split(' ')]

        if(not A and not D):
            break

        atacantes = [int(x) for x in input().strip().split(' ')]
        defensores = [int(x) for x in input().strip().split(' ')]

        atacantes.sort()
        defensores.sort()

        print('Y' if atacantes[0] < defensores[1] else 'N')
    except EOFError:
        break
```