# 1553 - Perguntas mais Frequentes

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1553)

## Solução

É possível contar a frequência das perguntas utilizando um vetor e depois verificando quantos dos elementos do vetor tem um valor maior ou igual a `K`. Pode-se fazer a verificação enquanto se recebe a entrada, mas é necessário certificar-se de contar cada pergunta com frequência igual ou maior que `K` apenas uma vez.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int frequencias[101];
    int K, N, P, resposta;

    while(scanf("%d %d", &N, &K)){
        if(!N && !K)    break;

        resposta = 0;
        memset(frequencias, 0, sizeof(frequencias));

        for(int i = 0; i < N; ++i){
            scanf("%d", &P);

            frequencias[P]++;
            if(frequencias[P] == K) ++resposta;
        }

        printf("%d\n", resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <vector>

using namespace std;

int main(){
    int N, K, P, resposta;
    vector<int> frequencias;

    while(cin >> N >> K){
        if(!N && !K)    break;

        resposta = 0;
        frequencias.assign(N + 1, 0);

        for(int i = 0; i < N; ++i){
            cin >> P;

            frequencias[P]++;
            if (frequencias[P] == K) ++resposta;
        }

        cout << resposta << endl;
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
    let [N, K] = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let perguntas = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let resposta = 0;
    let frequencias = Array(N + 1);
    frequencias.fill(0);

    perguntas.map((x) => {
        frequencias[x]++;
        if(frequencias[x] === K) ++resposta;
    });

    console.log(resposta);
}
```

### Python 3.9
```python
while True:
    try:
        N, K = [int(x) for x in input().strip().split(' ')]
        perguntas = [int(x) for x in input().strip().split(' ')]

        resposta = 0
        frequencias = [0 for _ in range(N + 1)]

        for pergunta in perguntas:
            frequencias[pergunta] += 1
            if(frequencias[pergunta] == K):
                resposta += 1
        
        print(resposta)
    except EOFError:
        break
```