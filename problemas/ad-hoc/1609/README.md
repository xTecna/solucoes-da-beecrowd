# 1609 - Contando Carneirinhos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1609)

## Solução

Você pode fazer a contagem dos carneirinhos distintos colocando todos os carneirinhos que você for lendo em um conjunto e depois vendo o tamanho do conjunto; ou usando um vetor de booleanos e contabilizar toda vez que um carneirinho passa de `falso` para `verdadeiro`.

Outra forma de resolver este problema para linguagens que não têm o recurso de conjuntos é ordenar todos os carneirinhos e usar a ordenação para distinguir e contar os carneirinhos diferentes.

### C99
```c
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int comp(const void* a, const void* b){
    return *(int*)a - *(int*)b;
}

int main(){
    int T, N, resposta;
    int carneirinhos[10000];

    scanf("%d", &T);

    for(int i = 0; i < T; ++i){
        scanf("%d", &N);

        resposta = 1;
        memset(carneirinhos, 0, sizeof(carneirinhos));

        for(int j = 0; j < N; ++j){
            scanf("%d", &carneirinhos[j]);
        }

        qsort(carneirinhos, N, sizeof(int), comp);

        for(int j = 1; j < N; ++j){
            if(carneirinhos[j - 1] != carneirinhos[j]){
                ++resposta;
            }
        }

        printf("%d\n", resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <set>

using namespace std;

int main(){
    set<int> distintos;
    int T, N, carneirinho;

    cin >> T;

    for(int i = 0; i < T; ++i){
        cin >> N;

        distintos.clear();

        for(int j = 0; j < N; ++j){
            cin >> carneirinho;
            distintos.insert(carneirinho);
        }

        cout << distintos.size() << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift());

for(let i = 0; i < T; ++i){
    let N = parseInt(lines.shift());

    let resposta = (new Set(lines.shift().trim().split(' '))).size;

    console.log(resposta);
}
```

### Python 3.9
```python
T = int(input())

for _ in range(T):
    N = int(input())

    resposta = len(set(input().strip().split(' ')))

    print(resposta)
```