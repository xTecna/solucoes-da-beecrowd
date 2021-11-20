# 2456 - Cartas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2456)

## Solução

Uma sequência está ordenada em ordem crescente quando, para uma sequência <img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;S&space;=&space;s_{0}s_{1}&space;\ldots&space;s_{n" title="\bg_white S = s_{0}s_{1} \ldots s_{n" /> temos que <img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;s_{0}&space;<&space;s_{1}&space;<&space;s_{2}&space;<&space;\cdots&space;<&space;s_{n" title="\bg_white s_{0} < s_{1} < s_{2} < \cdots < s_{n" /> .

Uma sequência está ordenada em ordem decrescente quando, para uma sequência <img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;S&space;=&space;s_{0}s_{1}&space;\ldots&space;s_{n" title="\bg_white S = s_{0}s_{1} \ldots s_{n" /> temos que <img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;s_{0}&space;>&space;s_{1}&space;>&space;s_{2}&space;>&space;\cdots&space;>&space;s_{n" title="\bg_white s_{0} > s_{1} > s_{2} > \cdots > s_{n" /> .

É possível testar ambas as condições ao mesmo tempo, sem necessidade de dois loopings.

### C99
```c
#include <stdio.h>

int main()
{
    int cartas[5], crescente, decrescente;

    for (int i = 0; i < 5; ++i)
    {
        scanf("%d", &cartas[i]);
    }

    crescente = decrescente = 1;
    for (int i = 0; i < 4; ++i)
    {
        if (cartas[i] < cartas[i + 1])
            decrescente = 0;
        if (cartas[i] > cartas[i + 1])
            crescente = 0;
    }

    if (crescente == 1)
        printf("C\n");
    else if (decrescente == 1)
        printf("D\n");
    else
        printf("N\n");

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    vector<int> cartas;
    bool crescente, decrescente;

    cartas.assign(5, 0);
    for (int i = 0; i < 5; ++i)
    {
        cin >> cartas[i];
    }

    crescente = decrescente = true;
    for (int i = 0; i < 4; ++i)
    {
        if (cartas[i] <= cartas[i + 1])
            decrescente = false;
        if (cartas[i] >= cartas[i + 1])
            crescente = false;
    }

    if (crescente)
        cout << 'C' << endl;
    else if (decrescente)
        cout << 'D' << endl;
    else
    {
        cout << 'N' << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let cartas = lines.shift().trim().split(' ').map((x) => parseInt(x));

let [crescente, decrescente] = [true, true];

for(let i = 0; i < 4; ++i){
    if(cartas[i] <= cartas[i + 1])  decrescente = false;
    if(cartas[i] >= cartas[i + 1])  crescente = false;
}

if(crescente)           console.log('C');
else if(decrescente)    console.log('D');
else                    console.log('N');
```

### Python 3.9
```python
cartas = [int(x) for x in input().strip().split(' ')]

crescente, decrescente = True, True
for i in range(4):
    if cartas[i] <= cartas[i + 1]:
        decrescente = False
    elif cartas[i] >= cartas[i + 1]:
        crescente = False

print('C' if crescente else 'D' if decrescente else 'N')
```