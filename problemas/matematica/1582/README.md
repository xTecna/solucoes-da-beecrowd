# 1582 - O Teorema de Pitágoras

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1582)

## Solução

A verificação se um tripla é pitagórica precisa ser feita considerando quaisquer combinações de catetos e hipotenusa, caso contrário seu programa resultará em Wrong Answer.

Além disso, uma tripla só pode ser primitiva se ela também for pitagórica.

Consulte a página [MDC](../../../base-teorica/matematica/gcd/README.md) para ver o porquê da função MDC apresentada nos códigos funciona.

### C99
```c
#include <stdio.h>

int mdc(int a, int b)
{
    return (b == 0) ? a : mdc(b, a % b);
}

int pitagorica(int a, int b, int c)
{
    return a * a + b * b == c * c || a * a + c * c == b * b || b * b + c * c == a * a;
}

int primitiva(int a, int b, int c)
{
    return mdc(a, mdc(b, c)) == 1;
}

int main()
{
    int a, b, c;

    while (scanf("%d %d %d", &a, &b, &c) != EOF)
    {
        printf("tripla");
        if (pitagorica(a, b, c))
        {
            printf(" pitagorica");

            if (primitiva(a, b, c))
                printf(" primitiva");
        }
        printf("\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int mdc(int a, int b)
{
    return (b == 0) ? a : mdc(b, a % b);
}

bool pitagorica(int a, int b, int c)
{
    return a * a + b * b == c * c || a * a + c * c == b * b || b * b + c * c == a * a;
}

bool primitiva(int a, int b, int c)
{
    return mdc(a, mdc(b, c)) == 1;
}

int main()
{
    int x, y, z;

    while (cin >> x >> y >> z)
    {
        cout << "tripla";
        if (pitagorica(x, y, z))
        {
            cout << " pitagorica";

            if (primitiva(x, y, z))
                cout << " primitiva";
        }
        cout << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const mdc = (a, b) => (b === 0) ? a : mdc(b, a % b);

const pitagorica = (a, b, c) => a * a + b * b === c * c || a * a + c * c === b * b || b * b + c * c === a * a;

const primitiva = (a, b, c) => mdc(a, mdc(b, c)) === 1;

while (lines.length) {
    let [x, y, z] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(`tripla${pitagorica(x, y, z) ? ` pitagorica${(primitiva(x, y, z) ? ' primitiva' : '')}` : ''}`);
}
```

### Python 3.9
```python
def mdc(a, b):
    return a if (b == 0) else mdc(b, a % b)


def pitagorica(a, b, c):
    return a * a + b * b == c * c or a * a + c * c == b * b or b * b + c * c == a * a


def primitiva(a, b, c):
    return mdc(a, mdc(b, c)) == 1


while True:
    try:
        x, y, z = [int(x) for x in input().strip().split(' ')]

        print(f'tripla{" pitagorica" if pitagorica(x, y, z) else ""}{" primitiva" if pitagorica(x, y, z) and primitiva(x, y, z) else ""}')
    except EOFError:
        break
```