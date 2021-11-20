# 1514 - Competição

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1514)

## Solução

A descrição nos diz quatro condições que devem ser estabelecidas para se ter uma boa maratona. Junto com as condições, coloco as traduções do que elas querem dizer na prática:

| Condição em extenso                                   | Condição computacional                                                                     |
| ----------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| Ninguém resolveu todos os problemas                   | Para todo participante `i`, seu número de problemas resolvidos deve ser menor do que `M`   |
| Todo problema foi resolvido por pelo menos uma pessoa | Para todo problema `i`, o número de participantes que o resolveu deve ser maior do que `0` |
| Não há nenhum problema resolvido por todos            | Para todo problema `i`, o número de participantes que o resolveu deve ser menor do que `N` |
| Todos resolveram ao menos um problema                 | Para todo participante `i`, seu número de problemas resolvidos deve ser maior do que `0`   |

Ou seja, nosso problema se torna muito mais fácil se para cada participante tivermos o número de problemas resolvidos e para cada problema tivermos o número de participantes que o resolveu.

Para checar as condições, usei duas formas diferentes, uma para linguagens de baixo nível e outra para linguagens de alto nível, confira qual das duas formas se encaixa melhor com sua lógica de programação. Se preferir, você pode usar a lógica de baixo nível nas linguagens de alto nível.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int participantes[100], problemas[100];
    int N, M, x, condicao1, condicao2, condicao3, condicao4;

    while(scanf("%d %d", &N, &M) != EOF){
        if(!N && !M)    break;

        memset(problemas, 0, sizeof(problemas));
        memset(participantes, 0, sizeof(participantes));

        for(int i = 0; i < N; ++i){
            for(int j = 0; j < M; ++j){
                scanf("%d", &x);

                participantes[i] += x;
                problemas[j] += x;
            }
        }

        condicao1 = condicao2 = condicao3 = condicao4 = 1;
        
        for(int i = 0; i < N; ++i){
            if(participantes[i] == M)   condicao1 = 0;
            if(participantes[i] == 0)   condicao4 = 0;
        }
        
        for(int i = 0; i < M; ++i){
            if(problemas[i] == 0)   condicao2 = 0;
            if(problemas[i] == N)   condicao3 = 0;
        }
        
        printf("%d\n", condicao1 + condicao2 + condicao3 + condicao4);
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
    int N, M, x;
    vector<int> participantes, problemas;
    bool condicao1, condicao2, condicao3, condicao4;

    while(cin >> N >> M){
        if(!N && !M)    break;

        problemas.assign(M, 0);
        participantes.assign(N, 0);

        for(int i = 0; i < N; ++i){
            for(int j = 0; j < M; ++j){
                cin >> x;

                participantes[i] += x;
                problemas[j] += x;
            }
        }

        condicao1 = condicao2 = condicao3 = condicao4 = true;
        
        for(int i = 0; i < N; ++i){
            if(participantes[i] == M)   condicao1 = false;
            if(participantes[i] == 0)   condicao4 = false;
        }
        
        for(int i = 0; i < M; ++i){
            if(problemas[i] == 0)   condicao2 = false;
            if(problemas[i] == N)   condicao3 = false;
        }

        cout << condicao1 + condicao2 + condicao3 + condicao4 << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const soma = (array) => {
    return array.reduce((acc, cur) => acc + cur, 0);
};

while(lines.length){
    let [N, M] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if(!N && !M)    break;

    participantes = [];
    for(let i = 0; i < N; ++i){
        participantes.push(lines.shift().trim().split(' ').map((x) => parseInt(x)));
    }

    problemas = [];
    for(let i = 0; i < M; ++i){
        problemas.push(soma(participantes.map((x) => x[i])));
    }
    participantes = participantes.map((x) => soma(x));

    let condicao1 = participantes.every((x) => x < M);
    let condicao2 = problemas.every((x) => x > 0);
    let condicao3 = problemas.every((x) => x < N);
    let condicao4 = participantes.every((x) => x > 0);

    console.log(condicao1 + condicao2 + condicao3 + condicao4);
}
```

### Python 3.9
```python
while True:
    try:
        N, M = [int(x) for x in input().strip().split(' ')]

        if(not N and not M):
            break

        participantes = []
        for _ in range(N):
            participantes.append([int(x) for x in input().strip().split(' ')])

        problemas = [sum([x[i] for x in participantes]) for i in range(M)]
        participantes = [sum(x) for x in participantes]

        condicao1 = all([x < M for x in participantes])
        condicao2 = all([x > 0 for x in problemas])
        condicao3 = all([x < N for x in problemas])
        condicao4 = all([x > 0 for x in participantes])

        print(condicao1 + condicao2 + condicao3 + condicao4)
    except EOFError:
        break
```