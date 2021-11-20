# 1558 - Soma de Dois Quadrados

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1558)

## Solução

Como nosso número terá sempre um módulo menor ou igual a 10000 e sabemos que 100² = 10000, então é bem possível apenas guardar primeiramente todas as possibilidades de somars de quadrado entre os números 1 e 100 e depois apenas perguntar se o número pedido apareceu em alguma dessas possibilidades ou não.

Para representar as somas, basta fazermos primeiro um looping para guardar todos os números entre 1 e 100 elevados ao quadrado e depois dois looping aninhados para guardar todas as somas possíveis entre os números elevados ao quadrado. Se não pudermos usar um conjunto, podemos usar um vetor, apenas tomando cuidado para a somar não ultrapassar 10000 (ou colocar um limite maior de 20000).

### C99
```c
#include <string.h>
#include <stdio.h>

int resposta[20001];

void preProcessa(){
    memset(resposta, 0, sizeof(resposta));

    for(int i = 0; i < 101; ++i){
        resposta[i * i] = 1;
    }

    for(int i = 1; i < 101; ++i){
        for(int j = i; j < 101; ++j){
            resposta[i * i + j * j] = 1;
        }
    }
}

int main(){
    int numero;

    preProcessa();

    while(scanf("%d", &numero) != EOF){
        if(numero < 0)  printf("NO\n");
        else            printf("%s\n", resposta[numero] ? "YES" : "NO");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <set>

using namespace std;

set<int> respostas;

void preProcessa(){
    for(int i = 0; i < 101; ++i){
        respostas.insert(i * i);
    }

    for(int i = 1; i < 101; ++i){
        for(int j = i; j < 101; ++j){
            respostas.insert(i * i + j * j);
        }
    }
}

int main(){
    int numero;

    preProcessa();

    while(cin >> numero){
        cout << (string) (respostas.count(numero) ? "YES" : "NO") << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let respostas = new Set();

const preProcessa = () => {
    for(let i = 0; i < 101; ++i){
        respostas.add(i * i);
    }

    for(let i = 1; i < 101; ++i){
        for(let j = i; j < 101; ++j){
            respostas.add(i * i + j * j);
        }
    }
};

preProcessa();

while(lines.length){
    let numero = parseInt(lines.shift().trim());

    console.log(respostas.has(numero) ? "YES" : "NO");
}
```

### Python 3.9
```python
respostas = set()

def preProcessa():
    for i in range(101):
        respostas.add(i * i)
    
    for i in range(1, 101):
        for j in range(i, 101):
            respostas.add(i * i + j * j)

preProcessa()

while True:
    try:
        numero = int(input().strip())

        print("YES" if numero in respostas else "NO")
    except EOFError:
        break
```