# 1708 - Volta

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1708)

## Solução

Para que o líder ultrapasse o retardatário, é necessário que o tempo entre eles dois seja maior que o tempo que o retardatário demora para completar uma volta. Pelo ponto de visto do retardatário, o tempo relativo do líder é de `Y - X` segundos a cada volta. Logo, para sabermos quantas voltas precisamos até que o líder tenha esta vantagem, basta calcularmos

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
\Bigl\lceil&space;\frac{Y}{Y&space;-&space;X}&space;\Bigr\rceil" title="\bg_white 
\Bigl\lceil \frac{Y}{Y - X} \Bigr\rceil" />

onde estamos interessados no teto porque a vantagem precisa ser estritamente maior do que o tempo que o retardatário leva para completar uma volta.

### C99
```c
#include <stdio.h>

int main(){
    int X, Y;

    scanf("%d %d", &X, &Y);

    printf("%d\n", Y/(Y - X) + (Y % (Y - X) > 0));

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cmath>

using namespace std;

int main(){
    int X, Y;

    cin >> X >> Y;

    cout << ceil((double)Y/(Y - X)) << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(`${Math.ceil(Y/(Y - X))}`);
```

### Python 3.9
```python
import math

X, Y = [int(x) for x in input().strip().split(' ')]

print(math.ceil(Y/(Y - X)))
```