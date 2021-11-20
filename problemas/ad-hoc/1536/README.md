# 1536 - Libertadores

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1536)

## Solução

Para este problema, é mais fácil conseguirmos resolver se nós separarmos a quantidade de gols em casa e fora de casa de cada time. A partir daí, se considerarmos `M1` e `M2` como os resultados do primeiro time e do segundo time dentro de casa respectivamente, e `V1` e `V2` como os resultados do primeiro e do segundo time fora de casa respectivamente, temos que

* Primeira condição de vitória:
  * Time 1 ganha se `M1 + V1 > M2 + V2`;
  * Time 2 ganha se `M2 + V2 > M1 + V1`;
  * Empata se `M1 + V1 = M2 + V2`.
* Segunda condição de vitória:
  * Time 1 ganha se `V1 > V2`;
  * Time 2 ganha se `V2 > V1`;
  * Empata novamente se `V1 = V2`.

### C99
```c
#include <stdio.h>

int main(){
    int N, M1, M2, V1, V2;

    scanf("%d", &N);

    for(int i = 0; i < N; ++i){
        scanf("%d x %d", &M1, &V2);
        scanf("%d x %d", &M2, &V1);

        if(M1 + V1 == M2 + V2){
            if(V1 == V2)            printf("Penaltis\n");
            else if(V1 > V2)        printf("Time 1\n");
            else                    printf("Time 2\n");
        }else if(M1 + V1 > M2 + V2) printf("Time 1\n");
        else                        printf("Time 2\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    char x;
    int N, M1, M2, V1, V2;

    cin >> N;
    for(int i = 0; i < N; ++i){
        cin >> M1 >> x >> V2;
        cin >> M2 >> x >> V1;

        if(M1 + V1 == M2 + V2){
            if(V1 == V2)            cout << "Penaltis" << endl;
            else if(V1 > V2)        cout << "Time 1" << endl;
            else                    cout << "Time 2" << endl;
        }else if(M1 + V1 > M2 + V2) cout << "Time 1" << endl;
        else                        cout << "Time 2" << endl;
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
    let [M1, x, V2] = lines.shift().trim().split(' ');
    M1 = parseInt(M1);
    V2 = parseInt(V2);

    let [M2, x2, V1] = lines.shift().trim().split(' ');
    M2 = parseInt(M2);
    V1 = parseInt(V1);

    if(M1 + V1 === M2 + V2){
        if(V1 === V2)           console.log("Penaltis");
        else if(V1 > V2)        console.log("Time 1");
        else                    console.log("Time 2");
    }else if(M1 + V1 > M2 + V2) console.log("Time 1");
    else                        console.log("Time 2");
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    M1, x, V2 = input().strip().split(' ')
    M1 = int(M1)
    V2 = int(V2)

    M2, x, V1 = input().strip().split(' ')
    M2 = int(M2)
    V1 = int(V1)

    if(M1 + V1 == M2 + V2):
        if(V1 == V2):
            print("Penaltis")
        elif(V1 > V2):
            print("Time 1")
        else:
            print("Time 2")
    elif(M1 + V1 > M2 + V2):
        print("Time 1")
    else:
        print("Time 2")
```