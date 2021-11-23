# 1805 - Soma Natural

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1805)

## Solução

Os números naturais são uma [progressão aritmética](../../../base-teorica/matematica/progressoes/README.md#progressão-aritmética) com `a_1` = 1 e `q = 1`. Logo, podemos usar a fórmula de soma de termos para calcular a soma dos números naturais de `A` até `B` sem a necessidade de um looping.

### C99
```c
#include <stdio.h>

long long int somaPA(int a0, int an, int n)
{
    return ((long long int)(a0 + an) * n) / 2;
}

int main()
{
    int A, B;

    scanf("%d %d", &A, &B);

    printf("%lld\n", somaPA(A, B, B - A + 1));

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

long long int somaPA(int a0, int an, int n)
{
    return ((long long int)(a0 + an) * n) / 2;
}

int main()
{
    int A, B;

    cin >> A >> B;

    cout << somaPA(A, B, B - A + 1) << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const somaPA = (a0, an, n) => Math.floor(((a0 + an) * n) / 2);

let [A, B] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(somaPA(A, B, B - A + 1));
```

### Python 3.9
```python
def somaPA(a0, an, n):
    return ((a0 + an) * n) // 2


A, B = [int(x) for x in input().strip().split(' ')]

print(somaPA(A, B, B - A + 1))
```