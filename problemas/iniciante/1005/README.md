# 1005 - Média 1

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1005)

## Solução

Uma coisa engraçada desse exercício que os pesos não somam 10 e, por isso, as médias de notas de 0 a 10 na verdade vão de 0 a 11.

### C99

```c
#include <stdio.h>

int main(){
    double A, B, media;

    scanf("%lf\n%lf", &A, &B);

    media = (3.5 * A + 7.5 * B)/11.0;

    printf("MEDIA = %.5lf\n", media);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    double A, B, media;

    cin >> A >> B;

    media = (3.5 * A + 7.5 * B)/11.0;

    cout << "MEDIA = " << setprecision(5) << fixed << media << endl;

    return 0;
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let A = parseFloat(lines.shift());
let B = parseFloat(lines.shift());

let media = (3.5 * A + 7.5 * B) / 11;

console.log(`MEDIA = ${media.toFixed(5)}`);
```

### Python 3.9

```python
A = float(input())
B = float(input())

media = (3.5 * A + 7.5 * B)/11

print(f"MEDIA = {media:.5f}")
```