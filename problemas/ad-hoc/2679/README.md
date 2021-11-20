# 2679 - Sucessor Par

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2679)

## Solução

Se o número for par, somar 2. Se o número for ímpar, somar 1.

Tem como fazer isso com apenas uma fórmula, independente do número `X` ser par ou ímpar:

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
X&space;-&space;(X&space;\text{&space;mod&space;}&space;2)&space;+&space;2" title="\bg_white 
X - (X \text{ mod } 2) + 2" />

Mas dá para fazer com condicional também, tudo bem.

### C99
```c
#include <stdio.h>

int main(){
    int X;

    scanf("%d", &X);

    printf("%d\n", X - (X % 2) + 2);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int X;

    cin >> X;

    cout << X - (X % 2) + 2 << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let X = parseInt(lines.shift().trim());

console.log(X - (X % 2) + 2);
```

### Python 3.9
```python
X = int(input())

print(X - (X % 2) + 2)
```