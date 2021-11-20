# 1171 - Frequência de Números

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1171)

## Solução

Como os números que estão vindo na entrada pertencem a um intervalo bem específico e definido (números de 1 a 2000), temos como opção montarmos um vetor que guarda a frequência de cada um desses números. Começando o vetor inteiro com zero, vamos usar a posição i do vetor para determinar quantas vezes o número i apareceu na entrada (numa lógica bem parecida com o algoritmo [Counting Sort](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md#counting-sort)). Logo, para cada número, contamos +1 no elemento correspondente e na hora de imprimir percorremos todos os 2000 números, imprimindo apenas para as posições maiores que zero.

> Para o código em C++, eu consegui implementar usando a estrutura de dados map, que já ordena todos os índices automaticamente. Com isso, podemos usar `map` em C++ para limites que não são tão definidos assim, mas essa não é a norma e é algo específico dessa estrutura de dados para essa linguagem específica.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int n, x, frequencias[2001];

    memset(frequencias, 0, sizeof(frequencias));
    
    scanf("%d", &n);

    for(int i = 0; i < n; ++i){
        scanf("%d", &x);

        ++frequencias[x];
    }

    for(int i = 1; i < 2001; ++i){
        if(frequencias[i] > 0)  printf("%d aparece %d vez(es)\n", i, frequencias[i]);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <map>

using namespace std;

int main(){
    int n, x;
    map<int, int> frequencias;

    cin >> n;

    for(int i = 0; i < n; ++i){
        cin >> x;

        if(frequencias.count(x))    ++frequencias[x];
        else                        frequencias[x] = 1;
    }

    for(map<int, int>::iterator it = frequencias.begin(); it != frequencias.end(); ++it){
        cout << it->first << " aparece " << it->second << " vez(es)" << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let n = parseInt(lines.shift());

let frequencias = Array(2001);
frequencias.fill(0);

for (let i = 0; i < n; ++i) {
  let x = parseInt(lines.shift());

  frequencias[x] += 1;
}

for (let i = 1; i < 2001; ++i) {
  if (frequencias[i] > 0) console.log(`${i} aparece ${frequencias[i]} vez(es)`);
}
```

### Python 3.9
```python
n = int(input())

frequencias = [0 for _ in range(2001)]

for _ in range(n):
    x = int(input())
    
    frequencias[x] += 1

for i in range(1, 2001):
    if(frequencias[i] > 0):
        print(f"{i} aparece {frequencias[i]} vez(es)")
```