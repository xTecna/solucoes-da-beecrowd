# 2424 - Tira-teima

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2424)

## Solução

Considere um ponto `(Px, Py)` e um retângulo caracterizado pelos seus dois pontos opostos `(R1x, R1y)` e `(R2x, R2y)` onde o ponto `R1` representa o ponto no canto inferior esquerdo e o ponto `R2` representa o ponto no canto superior direito. Para sabermos se o ponto `P` está dentro do retângulo delimitado por `R1` e `R2`, devemos testar se

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
R1_{x}&space;\leq&space;P_{x}&space;\leq&space;R2_{x}&space;\text{&space;e&space;}&space;R1_{y}&space;\leq&space;P_{y}&space;\leq&space;R2_{y}" title="\bg_white 
R1_{x} \leq P_{x} \leq R2_{x} \text{ e } R1_{y} \leq P_{y} \leq R2_{y}" />

### C99
```c
#include <stdio.h>

int main()
{
    int X, Y;

    scanf("%d %d", &X, &Y);

    printf("%s\n", (0 <= X && X <= 432 && 0 <= Y && Y <= 468) ? "dentro" : "fora");

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main()
{
    int X, Y;

    cin >> X >> Y;

    cout << (string)((0 <= X && X <= 432 && 0 <= Y && Y <= 468) ? "dentro" : "fora") << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [X, Y] = lines.shift().split(' ').map((x) => parseInt(x));

console.log((0 <= X && X <= 432 && 0 <= Y && Y <= 468) ? "dentro" : "fora");
```

### Python 3.9
```python
X, Y = [int(x) for x in input().split(' ')]

print("dentro" if 0 <= X <= 432 and 0 <= Y <= 468 else "fora")
```