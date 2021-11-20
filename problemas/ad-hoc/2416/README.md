# 2416 - Corrida

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2416)

## Solução

Basta fazermos `C mod N`, pois a pista é circular, então se `C` for maior que `N`, não importa o número de voltas, importa apenas a distância percorrida na última volta.

### C99
```c
#include <stdio.h>

int main(){
    int C, N;

    scanf("%d %d", &C, &N);

    printf("%d\n", C % N);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int C, N;

    cin >> C >> N;

    cout << C % N << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [C, N] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(C % N);
```

### Python 3.9
```python
C, N = [int(x) for x in input().strip().split(' ')]

print(C % N)
```