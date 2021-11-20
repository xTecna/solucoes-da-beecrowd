# 1715 - Handebol

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1715)

## Solução

Exatamente o mesmo raciocínio que o problema [1267 - Biblioteca Pascal](../1267/README.md), exceto que qualquer quantidade positiva de gols conta como `1` e nenhum gol conta como `0`. No final, apenas lembrar que precisa retornar quantos jogadores fizeram gols em todas as partidas.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int N, M, gols, resposta, jogadores[101];

    scanf("%d %d", &N, &M);

    memset(jogadores, 0, sizeof(jogadores));

    for(int i = 0; i < N; ++i){
        for(int j = 0; j < M; ++j){
            scanf("%d", &gols);

            if(gols > 0) jogadores[i] += 1;
        }
    }

    resposta = 0;
    for(int i = 0; i < N; ++i){
        if(jogadores[i] == M) ++resposta;
    }

    printf("%d\n", resposta);

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <vector>

using namespace std;

int main(){
    vector<int> jogadores;
    int N, M, gols, resposta;

    cin >> N >> M;

    jogadores.assign(N, 0);
    for(int i = 0; i < N; ++i){
        for(int j = 0; j < M; ++j){
            cin >> gols;

            if(gols > 0) jogadores[i] += 1;
        }
    }

    resposta = 0;
    for(int i = 0; i < N; ++i){
        if(jogadores[i] == M) ++resposta;
    }

    cout << resposta << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [N, M] = lines.shift().trim().split(' ').map((x) => parseInt(x));

let jogadores = [];
for(let i = 0; i < N; ++i){
    let gols = lines.shift().trim().split(' ').map((x) => parseInt(x));

    jogadores.push(gols);
}

jogadores = jogadores.map((x) => x.reduce((acc, cur) => cur > 0 ? acc + 1 : acc, 0));
let resposta = jogadores.reduce((acc, cur) => cur === M ? acc + 1 : acc, 0);

console.log(resposta);
```

### Python 3.9
```python
N, M = [int(x) for x in input().strip().split(' ')]

jogadores = [0 for _ in range(N)]
for i in range(N):
    gols = [int(x) for x in input().strip().split(' ')]

    for j in range(M):
        if(gols[j] > 0):
            jogadores[i] += 1

resposta = 0
for i in range(N):
    if(jogadores[i] == M):
        resposta += 1

print(resposta)
```