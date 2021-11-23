# 1221 - Encaixa ou Não I

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1240)

## Solução

### Maneira númerica

Basta ir conferindo os restos da divisão dos números `A` e `B` por 10 respectivamente e ir dividindo ambos por 10 até que um dos valores chegue a zero. Se todas as verificações forem verdadeiras, então o número `B` encaixa em `A`. Caso contrário, o número `B` não se encaixa em `A`.

### Solução com strings

Ver se a substring resultante dos últimos `|B|` dígitos em `A` é igual a `A` ou simplesmente verificar se `A` termina com `B`, o que é possível em certas linguagens de programação.

### C99
```c
#include <stdio.h>

int main()
{
    int N, A, B, encaixa;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &A, &B);

        encaixa = 1;
        while (A && B)
        {
            if (A % 10 != B % 10)
            {
                encaixa = 0;
                break;
            }

            A /= 10;
            B /= 10;
        }

        if (B)
            encaixa = 0;

        printf("%s\n", encaixa ? "encaixa" : "nao encaixa");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main()
{
    int N, A, B;
    bool encaixa;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> A >> B;

        encaixa = true;
        while (A && B)
        {
            if (A % 10 != B % 10)
            {
                encaixa = false;
                break;
            }

            A /= 10;
            B /= 10;
        }

        if (B)
            encaixa = false;

        cout << (string)(encaixa ? "encaixa" : "nao encaixa") << endl;
    }

    return 0;
}
```

### JavaScript
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines[0]);

for (let i = 0; i < N; ++i) {
    let [A, B] = lines[i + 1].trim().split(' ');

    A = A.slice(-B.length);

    console.log(`${A === B ? "encaixa" : "nao encaixa"}`);
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    A, B = input().strip().split(' ')

    print('encaixa' if A.endswith(B) else 'nao encaixa')
```