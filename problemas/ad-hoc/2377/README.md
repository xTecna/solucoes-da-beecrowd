# 2377 - Pedágio

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2377)

## Solução

O custo da viagem depende tanto do custo da viagem em si quanto do preço pago nos pedágios encontrados. Para calcular apenas o custo da viagem, basta multiplicar o comprimento da estrada pelo custo por quilômetro percorrido. Para calcular o custo dos pedágios, basta multiplicar o custo de cada pedágio pelo número de pedágios existentes na estrada, que pode ser calculado pelo quociente da divisão inteira entre o comprimento da estrada e a distância entre dois pedágios consecutivos.

Considerando então `L` como o comprimento da estrada, `D` como a distância entre dois pedágios consecutivos, `K` o custo por quilômetro percorrido e `P` como o valor de cada pedágio, temos que o custo total da viagem é de

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
LK&space;+&space;P\Bigl\lfloor\frac{L}{D}\Bigr\rfloor" title="\bg_white 
LK + P\Bigl\lfloor\frac{L}{D}\Bigr\rfloor" />

> A representação do piso da divisão ali nos indica que essa operação deve ser feita antes da multiplicação por `P`.

### C99
```c
#include <stdio.h>

int main(){
    int L, D, K, P;

    scanf("%d %d %d %d", &L, &D, &K, &P);

    printf("%d\n", L * K + P * (L/D));

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int L, D, K, P;

    cin >> L >> D >> K >> P;

    cout << L * K + P * (L/D) << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [L, D] = lines.shift().trim().split(' ').map((x) => parseInt(x));
let [K, P] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(L * K + P * Math.floor(L/D));
```

### Python 3.9
```python
L, D = [int(x) for x in input().strip().split(' ')]
K, P = [int(x) for x in input().strip().split(' ')]

print(L * K + P * (L//D))
```