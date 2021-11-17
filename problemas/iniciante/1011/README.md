# 1011 - Esfera

## [Descrição](https://www.urionlinejudge.com.br/judge/pt/problems/view/1011)

## Solução

Vide problema [1002 - Área do Círculo](../1002/README.md).

### C99

```c
#include <stdio.h>

int main(){
    int R;
    double volume;
    const double PI = 3.14159;

    scanf("%d", &R);

    volume = 4.0/3.0 * PI * R * R * R;

    printf("VOLUME = %.3lf\n", volume);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    int R;
    double volume;
    const double PI = 3.14159;

    cin >> R;

    volume = 4.0/3.0 * PI * R * R * R;

    cout << "VOLUME = " << setprecision(3) << fixed << volume << endl;

    return 0;
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let R = parseInt(lines.shift());
const PI = 3.14159;

let volume = (4/3) * PI * R * R * R;

console.log(`VOLUME = ${volume.toFixed(3)}`);
```

### Python 3.9

```python
PI = 3.14159
R = int(input())

volume = 4/3 * PI * R * R * R

print(f"VOLUME = {volume:.3f}")
```