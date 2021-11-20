# 1936 - Fatorial

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1936)

## Solução

Aqui estamos interessados em saber o mínimo de fatoriais necessários para somar um determinado número, o que pode ser feito de maneira gulosa, ou seja, considerando todas as parcelas do maior fatorial possível dentro do número e assim sucessivamente até que alcance o número passado.

Por exemplo, para o número `10`, o maior fatorial menor que `10` é `3!` e é possível encaixar apenas uma dessa parcela, sobrando `4`. Para o número `4`, o maior fatorial menor que `4` é `2!` e é possível encaixar duas parcelas de `2!`, sobrando `0`. Logo, o número total de parcelas mínimo necessário é `3` (`3!` + `2!` + `2!`).

> Pré-calcular os fatoriais até 100.000 vai simplificar bastante nosso código.

### C99
```c
#include <stdio.h>

int main()
{
    int N, resultado;
    int fatoriais[] = {40320, 5040, 720, 120, 24, 6, 2, 1};

    scanf("%d", &N);

    resultado = 0;
    for (int i = 0; i < 8; ++i)
    {
        resultado += N / fatoriais[i];
        N %= fatoriais[i];
    }

    printf("%d\n", resultado);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main()
{
    int N, resultado;
    int fatoriais[] = {40320, 5040, 720, 120, 24, 6, 2, 1};

    cin >> N;

    resultado = 0;
    for (int i = 0; i < 8; ++i)
    {
        resultado += N / fatoriais[i];
        N %= fatoriais[i];
    }

    cout << resultado << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const fatorial = [40320, 5040, 720, 120, 24, 6, 2, 1];

let N = parseInt(lines.shift());

let resultado = 0;
for(let i = 0; i < fatorial.length; ++i){
    resultado += Math.floor(N/fatorial[i]);
    N %= fatorial[i];
}

console.log(resultado);
```

### Python 3.9
```python
fatorial = [40320, 5040, 720, 120, 24, 6, 2, 1]

N = int(input())

resultado = 0
for f in fatorial:
    resultado += N//f
    N %= f

print(resultado)
```