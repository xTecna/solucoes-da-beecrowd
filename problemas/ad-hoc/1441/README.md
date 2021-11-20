# 1441 - Sequências de Granizo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1441)

## Solução

Como os limites desse problema são bem baixos (números entre 1 e 500), é perfeitamente possível resolver este problema com pura simulação. Outra alternativa seria usar memorização para não precisar fazer várias vezes a recorrência com o mesmo número e pegar atalhos quando alguns números caírem em outros números já memorizados, mas para essa solução, seria necessário usar um dicionário para armazenar as respostas, já que não sabemos qual o maior número possível em uma sequência.

### Alternativa 1 - Sem memorização

#### C99
```c
#include <stdio.h>

int main()
{
    int n, resposta;

    while (scanf("%d", &n))
    {
        if (!n)
            break;

        resposta = n;
        while (n > 1)
        {
            if (n % 2)
                n = 3 * n + 1;
            else
                n /= 2;
            resposta = n > resposta ? n : resposta;
        }

        printf("%d\n", resposta);
    }

    return 0;
}
```

#### C++17
```cpp
#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int n, resposta;

    while (cin >> n)
    {
        if (!n)
            break;

        resposta = n;
        while (n > 1)
        {
            if (n % 2)
                n = 3 * n + 1;
            else
                n /= 2;
            resposta = max(resposta, n);
        }

        cout << resposta << endl;
    }

    return 0;
}
```

#### JavaScript 12.19
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

lines.pop();

while(lines.length){
    let n = parseInt(lines.shift().trim());

    let resposta = n;
    while(n > 1){
        if(n % 2)   n = 3 * n + 1;
        else        n /= 2;
        resposta = Math.max(resposta, n);
    }

    console.log(resposta);
}
```

#### Python 3.9
```python
while True:
    try:
        n = int(input())

        if(not n):
            break
        
        resposta = n
        while(n > 1):
            if(n % 2):
                n = 3 * n + 1
            else:
                n //= 2
            resposta = max(resposta, n)
        
        print(resposta)
    except EOFError:
        break
```

### Alternativa 2 - Com memorização

> Fazer uma solução recursiva como essa estoura o limite de recursão em Python.

#### C99
```c
#include <stdio.h>

int respostas[100001];

int max(int a, int b)
{
    return a > b ? a : b;
}

int H(int n)
{
    if (respostas[n] == -1)
    {
        if (n % 2)
            respostas[n] = max(n, H(3 * n + 1));
        else
            respostas[n] = max(n, H(n / 2));
    }

    return respostas[n];
}

int main()
{
    int n;

    respostas[0] = 1;
    respostas[1] = 1;
    for (int i = 2; i < 100001; ++i)
    {
        respostas[i] = -1;
    }

    while (scanf("%d", &n))
    {
        if (!n)
            break;

        printf("%d\n", H(n));
    }

    return 0;
}
```

#### C++17
```cpp
#include <iostream>
#include <cmath>
#include <map>

using namespace std;

map<int, int> respostas;

int H(int n)
{
    if (!respostas.count(n))
    {
        if (n % 2)
            respostas[n] = max(n, H(3 * n + 1));
        else
            respostas[n] = max(n, H(n / 2));
    }

    return respostas[n];
}

int main()
{
    int n;

    respostas[0] = 1;
    respostas[1] = 1;

    while (cin >> n)
    {
        if (!n)
            break;

        cout << H(n) << endl;
    }

    return 0;
}
```

#### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

respostas = {};
respostas[0] = 1;
respostas[1] = 1;

const H = (n) => {
    if(!(n in respostas)){
        if(n % 2)   respostas[n] = Math.max(n, H(3 * n + 1));
        else        respostas[n] = Math.max(n, H(n/2));
    }

    return respostas[n];
};

while(lines.length){
    let n = parseInt(lines.shift().trim());

    console.log(H(n));
}
```