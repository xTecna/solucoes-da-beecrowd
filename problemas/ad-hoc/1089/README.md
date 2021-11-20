# 1089 - Loop Musical

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1089)

## Solução

Para cada magnitude de uma amostra, para considerarmos elas um pico, basta que ela cumpra uma dessas duas condições:

* A magnitude seja menor que seus dois vizinhos;
* A magnitude seja maior que seus dois vizinhos.

Como se trata de um vetor circular, o vizinho à esquerda da primeira magnitude é a última e o vizinho à direita da última magnitude é a primeira. Confira a página [Deslocar dentro de um intervalo \[0, N - 1\]](../../../base-teorica/matematica/macetes/README.md#deslocar-dentro-de-um-intervalo-0-n-1) para entender melhor porque as operações `(i + 1) % N` e `((i - 1) + N) % N` funcionam para acessarmos os vizinhos da direita e da esquerda respectivamente.

### C99
```c
#include <stdio.h>

int main(){
    int amostras[10001];
    int N, anterior, proximo, picos;

    while(scanf("%d", &N)){
        if(!N)  break;

        for(int i = 0; i < N; ++i){
            scanf("%d", &amostras[i]);
        }

        picos = 0;
        for(int i = 0; i < N; ++i){
            anterior = amostras[((i - 1) + N) % N];
            proximo = amostras[(i + 1) % N];

            if((amostras[i] < anterior && amostras[i] < proximo) || (amostras[i] > anterior && amostras[i] > proximo))  ++picos;
        }

        printf("%d\n", picos);
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
    vector<int> amostras;
    int N, anterior, proximo, picos;

    while(cin >> N){
        if(!N)  break;

        amostras.assign(N, 0);
        for(int i = 0; i < N; ++i){
            cin >> amostras[i];
        }

        picos = 0;
        for(int i = 0; i < N; ++i){
            anterior = amostras[((i - 1) + N) % N];
            proximo = amostras[(i + 1) % N];

            if((amostras[i] < anterior && amostras[i] < proximo) || (amostras[i] > anterior && amostras[i] > proximo))  ++picos;
        }

        cout << picos << endl;
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

  let amostras = lines.shift().trim().split(" ").map((x) => parseInt(x));

  let picos = amostras.filter((atual, i) => {
    let anterior = amostras[(i - 1 + N) % N];
    let proximo = amostras[(i + 1) % N];

    return (atual < anterior && atual < proximo) || (atual > anterior && atual > proximo);
  });

  console.log(picos.length);
}
```

### Python 3.9
```python
while True:
    try:
        N = int(input())

        if(not N):
            break
        
        amostras = [int(x) for x in input().strip().split(' ')]

        picos = 0
        for i in range(len(amostras)):
            anterior = amostras[((i - 1) + N) % N]
            proximo = amostras[(i + 1) % N]

            if((amostras[i] < anterior and amostras[i] < proximo) or (amostras[i] > anterior and amostras[i] > proximo)):
                picos += 1
        
        print(picos)
    except EOFError:
        break
```