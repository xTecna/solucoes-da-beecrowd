# 1197 - Volta à Faculdade de Física

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1197)

## Solução

> O problema menciona velocidade inicial e aceleração constante, dando a entender que se trata de um movimento uniformemente variado. Entretanto, na realidade, se trata de um movimento uniforme, sem aceleração.

Tecnicamente falando, o enunciado está de fato correto porque fala de aceleração constante, mas essa aceleração no caso é 0. Você acabou de conhecer Shariah Manzoor, prazer.

Podemos calcular a distância percorrida por uma partícula em movimento uniforme da seguinte forma

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
\Delta_s&space;=&space;vt" title="\bg_white 
\Delta_s = vt" />

&#x20;Então, para calcularmos o deslocamento em 2t, basta trocarmos t por 2t na equação acima.

### C99
```c
#include <stdio.h>

int main()
{
    int v, t;

    while (scanf("%d %d", &v, &t) != EOF)
    {
        printf("%d\n", v * 2 * t);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main()
{
    int v, t;

    while (cin >> v >> t)
    {
        cout << v * 2 * t << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let [v, t] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(v * 2 * t === -0 ? 0 : v * 2 * t);
}
```

### Python 3.9
```python
while True:
    try:
        v, t = [int(x) for x in input().strip().split(' ')]

        print(v * 2 * t)
    except EOFError:
        break
```