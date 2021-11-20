# 1245 - Botas Perdidas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1245)

## Solução

Como o intervalo de tamanhos de sapato é claramente definido no intervalo `[30, 60]`, é perfeitamente possível contar todos os sapatos usando um vetor de 60 posições (de repente até um de 30, se você se importar de normalizar os tamanhos), num raciocínio muito parecido com o problema [1171 - Frequência de Números](../1171/README.md).

### Alternativa 1 - Contar quantos sapatos existem de cada par

Neste caso, você vai precisar de uma matriz que guarda as duas quantidades de cada tamanho de sapato e ir adicionando de acordo com o pé que você for encontrando. Ao final, para conseguirmos a quantidade total de pares de sapato, basta irmos somando com o mínimo entre os dois pés. Por exemplo, se no final da contagem tivermos 3 sapatos direitos de tamanho 40 e 2 sapatos esquerdos de tamanho 40, então no final das contas, só podemos fazer 2 pares de sapatos de tamanho 40.

#### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char L;
    int N, M, pares;
    int sapatos[61][2];

    while(scanf("%d", &N) != EOF){
        memset(sapatos, 0, sizeof(sapatos));

        for(int i = 0; i < N; ++i){
            scanf("%d %c\n", &M, &L);

            ++sapatos[M][L == 'E'];
        }

        pares = 0;
        for(int i = 30; i < 61; ++i){
            pares += (sapatos[i][0] < sapatos[i][1]) ? sapatos[i][0] : sapatos[i][1];
        }

        printf("%d\n", pares);
    }

    return 0;
}
```

#### C++17
```cpp
#include <iostream>
#include <cstring>
#include <cmath>

using namespace std;

int main(){
    char L;
    int N, M, pares;
    int sapatos[61][2];

    while(cin >> N){
        memset(sapatos, 0, sizeof(sapatos));

        for(int i = 0; i < N; ++i){
            cin >> M >> L;

            ++sapatos[M][L == 'E'];
        }

        pares = 0;
        for(int i = 30; i < 61; ++i){
            pares += min(sapatos[i][0], sapatos[i][1]);
        }

        cout << pares << endl;
    }

    return 0;
}
```

#### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while(lines.length){
  let N = parseInt(lines.shift());

  let sapatos = Array(61);
  for (let i = 0; i < 61; ++i) {
    sapatos[i] = [0, 0];
  }

  for (let i = 0; i < N; ++i) {
    let [M, L] = lines.shift().trim().split(" ");
    M = parseInt(M);

    if (L === "D")  sapatos[M][0] += 1;
    else            sapatos[M][1] += 1;
  }

  let pares = sapatos.reduce((acc, cur) => (acc += Math.min(cur[0], cur[1])), 0);

  console.log(pares);
}
```

#### Python 3.9
```python
while True:
    try:
        N = int(input())

        pares = 0
        sapatos = [[0, 0] for _ in range(61)]

        for _ in range(N):
            M, L = input().strip().split(' ')
            M = int(M)

            if(L == 'D'):
                sapatos[M][0] += 1
            else:
                sapatos[M][1] += 1

        pares = sum([min(x[0], x[1]) for x in sapatos])
        print(pares)
    except EOFError:
        break
```

### Alternativa 2 - Tratar a quantidade de sapatos como um acumulado

Aqui você usa apenas um vetor para contar a quantidade de sapatos direitos e esquerdos num único elemento. A lógica aqui é diferente: sempre que virmos um sapato direito, adicionamos 1; sempre que virmos um sapato esquerdo, subtraímos 1. Daí, vamos saber que é possível formar um par em dois casos:

* Se adicionarmos 1 a um número negativo (o que significa que pegamos um sapato da pilha de sapatos esquerdos e fizemos um par);
* Se subtrairmos 1 a um número positivo (o que, novamente, significa que pegamos um sapato da pilha de sapatos direitos e fizemos um par).

Se adicionarmos 1 a um número positivo ou subtrairmos 1 a um número negativo, não fazemos nada, apenas estamos acrescentando à pilha existente mais um sapato repetido.

#### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char L;
    int sapatos[61];
    int N, M, pares;

    while(scanf("%d", &N) != EOF){
        pares = 0;
        memset(sapatos, 0, sizeof(sapatos));

        for(int i = 0; i < N; ++i){
            scanf("%d %c\n", &M, &L);

            if(L == 'D'){
                if(sapatos[M] < 0)  ++pares;
                ++sapatos[M];
            }else{
                if(sapatos[M] > 0)  ++pares;
                --sapatos[M];
            }
        }

        printf("%d\n", pares);
    }

    return 0;
}
```

#### C++17
```cpp
#include <iostream>
#include <cstring>

using namespace std;

int main(){
    char L;
    int N, M, pares;
    int sapatos[61];

    while(cin >> N){
        pares = 0;
        memset(sapatos, 0, sizeof(sapatos));

        for(int i = 0; i < N; ++i){
            cin >> M >> L;

            if(L == 'D'){
                if(sapatos[M] < 0)  ++pares;
                ++sapatos[M];
            }else{
                if(sapatos[M] > 0)  ++pares;
                --sapatos[M];
            }
        }

        cout << pares << endl;
    }

    return 0;
}
```

#### Python 3.9
```python
while True:
    try:
        N = int(input())

        pares = 0
        sapatos = [0 for _ in range(61)]

        for _ in range(N):
            M, L = input().strip().split(' ')
            M = int(M)

            if(L == 'D'):
                if(sapatos[M] < 0):
                    pares += 1
                sapatos[M] += 1
            else:
                if(sapatos[M] > 0):
                    pares += 1
                sapatos[M] -= 1
            
        print(pares)
    except EOFError:
        break
```