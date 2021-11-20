# 2454 - Flíper

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2454)

## Solução

Por questão de simplicidade, usei ternários em todos os códigos apresentados abaixo.

### C99
```c
#include <stdio.h>

int main(){
    int P, R;

    scanf("%d %d", &P, &R);

    printf("%c\n", P ? (R ? 'A' : 'B') : 'C');

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int P, R;

    cin >> P >> R;

    cout << (P ? (R ? 'A' : 'B') : 'C') << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [P, R] = lines.shift().trim().split(" ").map((x) => parseInt(x));

console.log(`${P ? (R ? "A" : "B") : "C"}`);
```

### Python 3.9
```python
[P, R] = [int(x) for x in input().strip().split(' ')]

print(f"{('A' if R else 'B') if P else 'C'}")
```