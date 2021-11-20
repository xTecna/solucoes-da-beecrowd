# 1300 - Horas e Minutos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1300)

## Solução

Já sabemos que os ângulos que virão são ângulos entre 0 e 180º, pois estas medidas indicam os limites do ângulo mínimo entre dois ponteiros. Considerando que o relógio é um círculo, podemos compreender cada marca de minutos como partes iguais do círculo que fazem parte do todo. Logo, como temos 360º ao total e 60 marcas de minutos, logo, temos que cada marca representa um ângulo de 6º. Desta maneira, sabemos que os únicos ângulos possíveis são os divisíveis por 6, ou seja, os que são compostos por uma distância correta entre duas marcas.

### C99
```c
#include <stdio.h>

int main(){
    int A;

    while(scanf("%d", &A) != EOF){
        printf("%c\n", A % 6 ? 'N' : 'Y');
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int A;

    while(cin >> A){
        cout << (char) (A % 6 ? 'N' : 'Y') << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while(lines.length){
    let A = parseInt(lines.shift().trim());

    console.log(A % 6 ? 'N' : 'Y');
}
```

### Python 3.9
```python
while True:
    try:
        A = int(input())

        print('N' if A % 6 else 'Y')
    except EOFError:
        break
```