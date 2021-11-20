# 2375 - Sedex

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2375)

## Solução

![Uma representação gráfica de uma bola de boliche dentro de uma caixa. (Fonte: Wolfram)](https://reference.wolfram.com/language/howto/Files/Create3DGraphics.en/O\_1.png)

Para que uma esfera caiba dentro de uma caixa, deve-se verificar se o diâmetro da esfera é menor ou igual a cada uma das três dimensões da caixa.

### C99
```c
#include <stdio.h>

int main(){
    int N, A, L, P;

    scanf("%d %d %d %d", &N, &A, &L, &P);

    printf("%c\n", N <= A && N <= L && N <= P ? 'S' : 'N');

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int N, A, L, P;

    cin >> N >> A >> L >> P;

    cout << (char) (N <= A && N <= L && N <= P ? 'S' : 'N') << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());
let [A, L, P] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(N <= A && N <= L && N <= P ? 'S' : 'N');
```

### Python 3.9
```python
N = int(input().strip())
A, L, P = [int(x) for x in input().strip().split(' ')]

print('S' if N <= A and N <= L and N <= P else 'N')
```