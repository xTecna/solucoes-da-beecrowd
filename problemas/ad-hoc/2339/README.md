# 2339 - Aviões de Papel

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2339)

## Solução

Se temos `C` competidores e cada um precisa receber `F` folhas de papel especial, então para o número `P` de folhas compradas pela diretora ser o suficiente, precisamos que

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
P&space;\geq&space;C&space;\cdot&space;F" title="\bg_white 
P \geq C \cdot F" />

### C99
```c
#include <stdio.h>

int main(){
    int C, P, F;

    scanf("%d %d %d", &C, &P, &F);

    printf("%c\n", P >= C * F ? 'S' : 'N');

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int C, P, F;

    cin >> C >> P >> F;

    cout << (char) (P >= C * F ? 'S' : 'N') << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [C, P, F] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(P >= C * F ? 'S' : 'N');
```

### Python 3.9
```python
C, P, F = [int(x) for x in input().strip().split(' ')]

print('S' if P >= C * F else 'N')
```