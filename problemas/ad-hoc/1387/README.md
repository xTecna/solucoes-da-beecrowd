# 1387 - Og

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1387)

## Solução

Vide o problema [1003 - Soma Simples](../../iniciante/1003/README.md) e a página [Modelos de entrada e saída](../../../introducao/modelos-de-entrada-e-saida/README.md).

### C99
```c
#include <stdio.h>

int main(){
    int L, R;

    while(scanf("%d %d", &L, &R)){
        if(!L && !R)  break;

        printf("%d\n", L + R);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int L, R;

    while(cin >> L >> R){
        if(!L && !R)    break;

        cout << L + R << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
  let [L, R] = lines.shift().trim().split(" ").map((x) => parseInt(x));

  if(!L && !R)  break;

  console.log(L + R);
}
```

### Python 3.9
```python
while True:
    try:
        L, R = [int(x) for x in input().strip().split(' ')]

        if(not L and not R):
            break

        print(L + R)
    except EOFError:
        break
```