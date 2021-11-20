# 2374 - Pneu

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2374)

## Solução

Vide [1007 - Diferença](../../iniciante/1007/README.md).

### C99
```c
#include <stdio.h>

int main(){
    int N, M;

    scanf("%d %d", &N, &M);

    printf("%d\n", N - M);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int N, M;

    cin >> N >> M;
    
    cout << N - M << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let N = parseInt(lines.shift());
let M = parseInt(lines.shift());

console.log(N - M);
```

### Python 3.9
```python
N = int(input())
M = int(input())

print(N - M)
```