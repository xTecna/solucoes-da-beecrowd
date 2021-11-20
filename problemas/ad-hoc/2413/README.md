# 2413 - Busca na Internet

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2413)

## Solução

Vamos considerar que o número de pessoas que clicam no terceiro link é `X`.

De acordo com o que João leu anteriormente, o número de pessoas que clicam no segundo link listado é o dobro do número de pessoas que clicam no terceiro link. Logo, o número de pessoas que clicam no segundo link é `2 * X`.

Já o número de pessoas que clicam no segundo link é a metade do número de pessoas que clicam no primeiro link. Se `2 * X` é a metade, então o total de número de pessoas que clicam no primeiro link é `2 * 2 * X`. Desta maneira, para calcular o número de pessoas que clicam no primeiro link a partir do número de pessoas que clicam no terceiro link, basta calcularmos `4 * X`.

### C99
```c
#include <stdio.h>

int main(){
    int t;

    scanf("%d", &t);

    printf("%d\n", 4 * t);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int t;

    cin >> t;
    
    cout << 4 * t << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
let input = require('fs').readFileSync('/dev/stdin', 'utf8');
let lines = input.split('\n');

let t = parseInt(lines.shift());

console.log(4 * t);
```

### Python 3.9
```python
t = int(input())

print(4 * t)
```