# 2479 - Ordenando a Lista de Crianças do Papai Noel

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2479)

## Solução

Este problema envolve apenas contar quantas crianças são bem ou mal-criadas e listar todas em ordem alfabética sem nenhum critério, ou seja, é possível guardar em duas variáveis as bem e mal-criadas e em um único vetor todas as crianças sem distinção por comportamento.

> Podemos assumir com segurança que o nome de nenhuma das crianças terá um espaço no meio.

### C99
```c
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int comp(const void* a, const void* b){
    return strcmp((char*)a, (char*)b);
}

int main(){
    int N, bemComportadas, malComportadas;
    char comportamento, criancas[100][100];

    scanf("%d\n", &N);

    bemComportadas = malComportadas = 0;
    for(int i = 0; i < N; ++i){
        scanf("%c %s\n", &comportamento, &criancas[i]);

        if(comportamento == '+')    ++bemComportadas;
        else                        ++malComportadas;
    }

    qsort(criancas, N, sizeof(char) * 100, comp);

    for(int i = 0; i < N; ++i){
        printf("%s\n", criancas[i]);
    }
    printf("Se comportaram: %d | Nao se comportaram: %d\n", bemComportadas, malComportadas);

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
    char comportamento;
    vector<string> criancas;
    int N, bemComportadas, malComportadas;

    cin >> N;

    criancas.assign(N, "");
    bemComportadas = malComportadas = 0;
    for(int i = 0; i < N; ++i){
        cin >> comportamento >> criancas[i];

        if(comportamento == '+')    ++bemComportadas;
        else                        ++malComportadas;
    }

    sort(criancas.begin(), criancas.end());

    for(int i = 0; i < N; ++i){
        cout << criancas[i] << endl;
    }
    cout << "Se comportaram: " << bemComportadas << " | ";
    cout << "Nao se comportaram: " << malComportadas << endl;

    return 0;
}
```

### JavaScript 12.19
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());

let criancas = Array(N);
let [bemComportadas, malComportadas] = [0, 0];
for(let i = 0; i < N; ++i){
    let [comportamento, crianca] = lines.shift().trim().split(' ');

    if(comportamento === '+')   ++bemComportadas;
    else                        ++malComportadas;

    criancas[i] = crianca;
}

criancas.sort();

for(let i = 0; i < N; ++i){
    console.log(criancas[i]);
}
console.log(`Se comportaram: ${bemComportadas} | Nao se comportaram: ${malComportadas}`);
```

### Python 3.9
```python
N = int(input())

criancas = ['' for _ in range(N)]
bemComportadas, malComportadas = 0, 0
for i in range(N):
    comportamento, criancas[i] = input().strip().split(' ')

    if(comportamento == '+'):
        bemComportadas += 1
    else:
        malComportadas += 1

criancas.sort()

for crianca in criancas:
    print(crianca)
print(f'Se comportaram: {bemComportadas} | Nao se comportaram: {malComportadas}')
```