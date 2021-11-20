# 1250 - KiloMan

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1250)

## Solução

Simular cada tiro e cada ação do jogador é o suficiente para resolver este problema. Você só precisa guardar num vetor a sequência de tiros, as ações do jogador podem ser coletadas uma de cada vez.

### C99
```c
#include <stdio.h>

int main(){
    char pulo;
    int N, T, atingido, tiros[50];

    scanf("%d", &N);

    for(int k = 0; k < N; ++k){
        scanf("%d", &T);

        for(int i = 0; i < T; ++i){
            scanf("%d", &tiros[i]);
        }
        scanf("\n", &pulo);

        atingido = 0;
        for(int i = 0; i < T; ++i){
            scanf("%c", &pulo);

            if((pulo == 'S' && tiros[i] < 3) || (pulo == 'J' && tiros[i] > 2)){
                ++atingido;
            }
        }

        printf("%d\n", atingido);
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
    char pulo;
    vector<int> tiros;
    int N, T, atingido;

    cin >> N;

    for(int k = 0; k < N; ++k){
        cin >> T;

        tiros.assign(T, 0);
        for(int i = 0; i < T; ++i){
            cin >> tiros[i];
        }

        atingido = 0;
        for(int i = 0; i < T; ++i){
            cin >> pulo;

            if((pulo == 'S' && tiros[i] < 3) || (pulo == 'J' && tiros[i] > 2)){
                ++atingido;
            }
        }

        cout << atingido << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());

for(let k = 0; k < N; ++k){
    let T = parseInt(lines.shift().trim());

    let tiros = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let pulos = lines.shift().trim().split('');

    let resposta = pulos.reduce((acc, cur, i) => acc + ((cur === 'S' && tiros[i] < 3) || (cur === 'J' && tiros[i] > 2)), 0);

    console.log(resposta);
}
```

### Python 3.9
```python
while True:
    try:
        N = int(input())

        for _ in range(N):
            K = int(input())

            tiros = [int(x) for x in input().strip().split(' ')]
            pulos = input().strip()

            atingido = 0
            for i in range(K):
                if((pulos[i] == 'S' and tiros[i] < 3) or (pulos[i] == 'J' and tiros[i] > 2)):
                    atingido += 1
            
            print(atingido)
    except EOFError:
        break
```