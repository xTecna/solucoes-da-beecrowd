# 1379 - Problema com Mediana e Média

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1379)

## Solução

Temos dois valores `A` e `B`, onde `A < B`, e queremos descobrir qual o menor valor de `C` possível que podemos usar para garantir que tanto a média quanto a mediana dos três valores resultem no mesmo valor.

Como estamos interessados no menor valor de `C` possível e considerando que queremos que a média e a mediana sejam o mesmo valor, então devemos considerar que a mediana será `A` e que, com isso, gostaríamos que a média também fosse `A`. Neste caso, o valor de C então seria

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
\frac{A&space;+&space;B&space;+&space;C}{3}&space;=&space;A&space;\\
A&space;+&space;B&space;+&space;C&space;=&space;3A&space;\\
C&space;=&space;2A&space;-&space;B" title=" 
\frac{A + B + C}{3} = A \\
A + B + C = 3A \\
C = 2A - B" />

### C99
```c
#include <stdio.h>

int main(){
    int A, B;

    while(scanf("%d %d", &A, &B)){
        if(!A && !B)    break;
        
        printf("%d\n", 2 * A - B);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int A, B;

    while(cin >> A >> B){
        if(!A && !B)    break;

        cout << 2 * A - B << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while(lines.length){
    let [A, B] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(2 * A - B);
}
```

### Python 3.9
```python
while True:
    try:
        A, B = [int(x) for x in input().strip().split(' ')]

        if(not A and not B):
            break

        print(2 * A - B)
    except EOFError:
        break
```