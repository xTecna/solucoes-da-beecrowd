# 1004 - Produto Simples

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1004)

## Solução

Vide problemas [1001 - Extremamente Básico](../1001/README.md) e [1003 - Soma Simples](../1003/README.md).

### C99

```c
#include <stdio.h>

int main(){
    int A, B;

    scanf("%d\n%d", &A, &B);
    
    printf("PROD = %d\n", A * B);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    int A, B;

    cin >> A >> B;
    
    cout << "PROD = " << A * B << endl;

    return 0;
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let A = parseInt(lines.shift());
let B = parseInt(lines.shift());

console.log(`PROD = ${A * B}`);
```

### Python 3.9

```python
A = int(input())
B = int(input())

print(f"PROD = {A * B}")
```