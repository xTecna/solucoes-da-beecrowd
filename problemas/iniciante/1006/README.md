# 1006 - Média 2

## [Descrição](https://www.urionlinejudge.com.br/judge/pt/problems/view/1006)

## Solução

Parecido com o problema [1005 - Média 1](../1005/README.md), só que com os pesos somando 10 dessa vez.

### C99

```c
#include <stdio.h>

int main(){
    double A, B, C, media;

    scanf("%lf\n%lf\n%lf", &A, &B, &C);

    media = (2 * A + 3 * B + 5 * C)/10.0;

    printf("MEDIA = %.1lf\n", media);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    double A, B, C, media;

    cin >> A >> B >> C;

    media = (2 * A + 3 * B + 5 * C)/10.0;

    cout << "MEDIA = " << setprecision(1) << fixed << media << endl;

    return 0;
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let A = parseFloat(lines.shift());
let B = parseFloat(lines.shift());
let C = parseFloat(lines.shift());

let media = (2 * A + 3 * B + 5 * C) / 10;

console.log(`MEDIA = ${media.toFixed(1)}`);
```

### Python 3.9

```python
A = float(input())
B = float(input())
C = float(input())

media = (2 * A + 3 * B + 5 * C) / 10

print(f"MEDIA = {media:.1f}")
```