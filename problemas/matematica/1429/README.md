# 1429 - Fatorial de Novo!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1429)

## Solução

Pode-se simular a conversão de base mais ou menos como faríamos a conversão de _binário para decimal_ no problema [1199 - Conversão entre Bases](../1199/README.md), com a diferença de que não é sempre multiplicado por 2, mas sim pelo próximo fatorial, que pode ser calculado a cada iteração.

### C99
```c
#include <stdio.h>

int converte(int numero)
{
    int potencia = 1, p = 2, resposta = 0;

    while (numero)
    {
        resposta += potencia * (numero % 10);

        numero /= 10;
        potencia *= p++;
    }

    return resposta;
}

int main()
{
    int numero;

    while (scanf("%d", &numero))
    {
        if (!numero)
            break;

        printf("%d\n", converte(numero));
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int acmToDec(string numero)
{
    int potencia = 1, resposta = 0, n = numero.length();

    for (int i = n - 1; i > -1; --i)
    {
        resposta += (numero[i] - '0') * potencia;
        potencia *= (n - i + 1);
    }

    return resposta;
}

int main()
{
    string acm;

    while (cin >> acm)
    {
        if (acm == "0")
            break;

        cout << acmToDec(acm) << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const acmToDec = (acm) => {
    let potencia = 1, p = 2;
    return acm.split('').reverse().reduce((acc, cur) => {
        let resposta = acc + parseInt(cur) * potencia;
        potencia *= p++;

        return resposta;
    }, 0);
}

lines.pop();

let p = 0;
while (p < lines.length) {
    let acm = lines[p++].trim();

    console.log(acmToDec(acm));
}
```

### Python 3.9
```python
def acmToDec(acm):
    resposta, potencia, p = 0, 1, 2

    for digit in acm[::-1]:
        resposta += int(digit) * potencia
        potencia *= p
        p += 1

    return resposta


while True:
    try:
        acm = input()

        if(acm == '0'):
            break

        print(acmToDec(acm))
    except EOFError:
        break
```