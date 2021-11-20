# 2455 - Gangorra

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2455)

## Solução

Pelo enunciado, podemos ver que o equilíbrio é obtido quando `P1 * C1 = P2 * C2`. Com isso, se `P1 * C1 > P2 * C2`, então a pessoa 1 é a mais pesada; e se `P2 * C2 > P1 * C1`, então a pessoa 2 é a mais pesada. Aqui eu decidi armazenar em uma variável a diferença entre os dois pesos e usar a resposta para saber qual é a pessoa mais pesada para imprimir de maneira apropriada. Outra maneira de resolver este problema é verificar cada uma destas três condições e responder apropriadamente.

### C99
```c
#include <stdio.h>

int main(){
    int P1, C1, P2, C2, diferenca;

    scanf("%d %d %d %d", &P1, &C1, &P2, &C2);

    diferenca = P2 * C2 - P1 * C1;

    if(diferenca < 0){
        printf("-1\n");
    }else if(diferenca > 0){
        printf("1\n");
    }else{
        printf("0\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int P1, C1, P2, C2, diferenca;

    cin >> P1 >> C1 >> P2 >> C2;

    diferenca = P2 * C2 - P1 * C1;

    if(diferenca < 0){
        cout << -1 << endl;
    }else if(diferenca > 0){
        cout << 1 << endl;
    }else{
        cout << 0 << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [P1, C1, P2, C2] = lines.shift().trim().split(' ').map((x) => parseInt(x));

let diferenca = P2 * C2 - P1 * C1;

if(diferenca < 0){
    console.log(-1);
}else if(diferenca > 0){
    console.log(1);
}else{
    console.log(0);
}
```

### Python 3.9
```python
P1, C1, P2, C2 = [int(x) for x in input().strip().split(' ')]

diferenca = P2 * C2 - P1 * C1

if(diferenca < 0):
    print(-1)
elif(diferenca > 0):
    print(1)
else:
    print(0)
```