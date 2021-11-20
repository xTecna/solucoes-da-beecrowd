# 1533 - Detetive Watson

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1533)

## Solução

Vide [2381 - Lista de Chamada](../2381/README.md) para conferir o raciocínio usado para resolver esse problema. Único detalhe é que é importante guardar o índice original de cada elemento, então ordenar pares de números em vez de ordenar o vetor como está é o caminho. O problema é que você vai precisar usar funções customizadas de ordenação, mas é bom para treinar isso também.

> Na linguagem C, eu usei um artifício para guardar o número e o respectivo índice original no mesmo número de forma a não afetar a ordenação, baseado no princípio de que todos os números estão sendo multiplicados pelo mesmo valor e sendo somados sempre por valores menores que 1000. Essa tática pode ser utilizada em qualquer linguagem, mas as outras já possuem artifícios melhores e mais legíveis para se lidar com a ordenação.

### C99
```c
#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b){
    return *((int*)b) - *((int*)a);
}

int main(void) {
	int N;
	int suspeitos[1000];

    while(scanf("%d", &N)){
        if(!N)  break;

        for(int i = 0; i < N; ++i){
            scanf("%d", &suspeitos[i]);
            suspeitos[i] = (suspeitos[i] * 1000) + i;
        }

        qsort(suspeitos, N, sizeof(int), comp);

        printf("%d\n", (suspeitos[1] % 1000) + 1);
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

bool comp(pair<int, int> a, pair<int, int> b){
    return a.first > b.first;
}

int main(){
    int N;
    vector<pair<int, int> > suspeitos;

    while(cin >> N){
        if(!N)  break;

        suspeitos.assign(N, pair<int, int>());
        for(int i = 0; i < N; ++i){
            cin >> suspeitos[i].first;
            suspeitos[i].second = i + 1;
        }

        sort(suspeitos.begin(), suspeitos.end(), comp);

        cout << suspeitos[1].second << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
    let N = parseInt(lines.shift());

    let suspeitos = lines.shift().trim().split(' ').map((x, i) => [parseInt(x), i + 1]);

    suspeitos.sort((a, b) => b[0] - a[0]);

    console.log(suspeitos[1][1]);
}
```

### Python 3.9
```python
while True:
    try:
        N = int(input())

        if(not N):
            break

        suspeitos = [[int(x), i + 1]
                     for i, x in enumerate(input().strip().split(' '))]

        suspeitos.sort(key=lambda a: a[0], reverse=True)

        print(suspeitos[1][1])
    except EOFError:
        break
```