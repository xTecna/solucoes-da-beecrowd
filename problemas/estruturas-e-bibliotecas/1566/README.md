# 1566 - Altura

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1566)

## Solução

Note uma temos que lidar com uma quantidade muito grande de casos de teste e de alturas diferentes a serem ordenadas, que pode chegar à ordem de 300 milhões de elementos no total. Como sabemos que todas as alturas sempre estarão no intervalo entre 20 e 230 cm, o [Counting sort](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md#counting-sort)  vem como uma excelente alternativa para ordenar tantos dados rapidamente.

### C99
```c
#include <string.h>
#include <stdio.h>

int main()
{
    int NC, N, altura, first, alturas[231];

    scanf("%d", &NC);

    for (int k = 0; k < NC; ++k)
    {
        memset(alturas, 0, sizeof(alturas));

        scanf("%d", &N);

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &altura);
            alturas[altura]++;
        }

        first = 1;
        for (int i = 20; i < 231; ++i)
        {
            for (int j = 0; j < alturas[i]; ++j)
            {
                if (first)
                    first = 0;
                else
                    printf(" ");
                printf("%d", i);
            }
        }
        printf("\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <cstring>
#include <cstdio>

using namespace std;

int main()
{
    bool first;
    int NC, N, altura, alturas[231];

    scanf("%d", &NC);

    for (int k = 0; k < NC; ++k)
    {
        scanf("%d", &N);

        memset(alturas, 0, sizeof(alturas));

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &altura);
            alturas[altura]++;
        }

        first = true;
        for (int i = 20; i < 231; ++i)
        {
            for (int j = 0; j < alturas[i]; ++j)
            {
                if (first)
                    first = false;
                else
                    printf(" ");

                printf("%d", i);
            }
        }
        printf("\n");
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let p = 0;
let NC = parseInt(lines[p++]);

let alturas = Array(231);
for(let k = 0; k < NC; ++k){
    let N = parseInt(lines[p++]);

    alturas.fill(0);
    lines[p++].split(' ').map((x) => alturas[parseInt(x)] += 1);

    let resposta = [];
    for(let i = 20; i < 231; ++i){
        for(let j = 0; j < alturas[i]; ++j){
            resposta.push(i);
        }
    }

    console.log(resposta.join(' '));
}
```