# 1212 - Aritmética Primária

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1212)

## Solução

É possível simular o processo de soma inteiro, verificando se vai-um manualmente em cada processo de cada soma.

> Preste atenção no fato de que quando há 1 operação de vai-um, a resposta é "operation" no singular.

### C99
```c
#include <stdio.h>

int main()
{
    int a, b, carry, resposta;

    while (scanf("%d %d", &a, &b))
    {
        if (!a && !b)
            break;

        carry = 0;
        resposta = 0;
        while (a && b)
        {
            if (a % 10 + b % 10 + carry > 9)
            {
                carry = 1;
                ++resposta;
            }
            else
            {
                carry = 0;
            }

            a /= 10;
            b /= 10;
        }

        while (a)
        {
            if (a % 10 + carry > 9)
            {
                carry = 1;
                ++resposta;
            }
            else
            {
                carry = 0;
            }

            a /= 10;
        }

        while (b)
        {
            if (b % 10 + carry > 9)
            {
                carry = 1;
                ++resposta;
            }
            else
            {
                carry = 0;
            }

            b /= 10;
        }

        if (resposta == 0)
            printf("No carry operation.\n");
        else if (resposta == 1)
            printf("%d carry operation.\n", resposta);
        else
            printf("%d carry operations.\n", resposta);
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
    int a, b, carry, resposta;

    while (cin >> a >> b)
    {
        if (!a && !b)
            break;

        carry = 0;
        resposta = 0;
        while (a && b)
        {
            if (a % 10 + b % 10 + carry > 9)
            {
                carry = 1;
                ++resposta;
            }
            else
            {
                carry = 0;
            }

            a /= 10;
            b /= 10;
        }

        while (a)
        {
            if (a % 10 + carry > 9)
            {
                carry = 1;
                ++resposta;
            }
            else
            {
                carry = 0;
            }

            a /= 10;
        }

        while (b)
        {
            if (b % 10 + carry > 9)
            {
                carry = 1;
                ++resposta;
            }
            else
            {
                carry = 0;
            }

            b /= 10;
        }

        if (resposta == 0)
        {
            cout << "No carry operation." << endl;
        }
        else if (resposta == 1)
        {
            cout << "1 carry operation." << endl;
        }
        else
        {
            cout << resposta << " carry operations." << endl;
        }
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
    let [a, b] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let carry = 0;
    let resposta = 0;
    while (a > 0 && b > 0) {
        if (a % 10 + b % 10 + carry > 9) {
            carry = 1;
            ++resposta;
        } else {
            carry = 0;
        }

        a = Math.floor(a / 10);
        b = Math.floor(b / 10);
    }

    while (a > 0) {
        if (a % 10 + carry > 9) {
            carry = 1;
            ++resposta;
        } else {
            carry = 0;
        }

        a = Math.floor(a / 10);
    }

    while (b > 0) {
        if (b % 10 + carry > 9) {
            carry = 1;
            ++resposta;
        } else {
            carry = 0;
        }

        b = Math.floor(b / 10);
    }

    if (resposta === 0) console.log('No carry operation.');
    else if (resposta === 1) console.log('1 carry operation.');
    else console.log(`${resposta} carry operations.`);
}
```

### Python 3.9
```python
while True:
    try:
        a, b = [int(x) for x in input().strip().split(' ')]

        if(a == 0 and b == 0):
            break

        carry = 0
        resposta = 0
        while(a > 0 and b > 0):
            if(a % 10 + b % 10 + carry > 9):
                carry = 1
                resposta += 1
            else:
                carry = 0

            a //= 10
            b //= 10

        while(a > 0):
            if(a % 10 + carry > 9):
                carry = 1
                resposta += 1
            else:
                carry = 0

            a //= 10

        while(b > 0):
            if(b % 10 + carry > 9):
                carry = 1
                resposta += 1
            else:
                carry = 0

            b //= 10

        if(resposta == 0):
            print('No carry operation.')
        elif(resposta == 1):
            print('1 carry operation.')
        else:
            print(f'{resposta} carry operations.')
    except EOFError:
        break
```