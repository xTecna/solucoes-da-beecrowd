# 1940 - Jogo da Estratégia

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1940)

## Solução

Para simular a passagem de jogador circularmente (depois que o último jogador jogar, volta para o primeiro), basta fazer a conta `x + 1 % n` para descobrir quem será o próximo jogador dado que o jogador atual é `x` numa roda de `n` jogadores (ver [Deslocar dentro de um intervalo [0, n]](../../../base-teorica/matematica/macetes/README.md#deslocar-dentro-de-um-intervalo-0-n-1) para entender como funciona).

Outro jeito de saber qual é o jogador atual fazendo um for com a variável `i` indo de `0` até `J * R` é fazer `i % J` , pois desse jeito toda vez que `i` ultrapassar `J`, ele vai rotacionar de volta para o primeiro jogador.

> O critério de desempate é decidido pelo jogador de maior número.

### C99
```c
#include <string.h>
#include <stdio.h>

int main()
{
    int PV[500];
    int J, R, pontos, maior, vencedor;

    memset(PV, 0, sizeof(PV));

    scanf("%d %d", &J, &R);

    R *= J;
    for (int i = 0; i < R; ++i)
    {
        scanf("%d", &pontos);
        PV[i % J] += pontos;
    }

    vencedor = 0;
    maior = PV[0];
    for (int i = 1; i < J; ++i)
    {
        if (PV[i] >= maior)
        {
            vencedor = i;
            maior = PV[i];
        }
    }

    printf("%d\n", vencedor + 1);

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
    vector<int> PV;
    int J, R, pontos, maior, vencedor;

    cin >> J >> R;

    R *= J;
    PV.assign(J, 0);
    for (int i = 0; i < R; ++i)
    {
        cin >> pontos;

        PV[i % J] += pontos;
    }

    vencedor = 0;
    maior = PV[0];
    for (int i = 1; i < J; ++i)
    {
        if (PV[i] >= maior)
        {
            vencedor = i;
            maior = PV[i];
        }
    }

    cout << vencedor + 1 << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [J, R] = lines.shift().trim().split(' ').map((x) => parseInt(x));
R *= J;

let jogadas = lines.shift().trim().split(' ').map((x) => parseInt(x));

let PV = Array(J);
PV.fill(0);
for(let i = 0; i < R; ++i){
    PV[i % J] += jogadas[i];
}

let [maior, vencedor] = [PV[0], 0];
for(let i = 1; i < J; ++i){
    if(PV[i] >= maior){
        vencedor = i;
        maior = PV[i];
    }
}

console.log(vencedor + 1);
```

### Python 3.9
```python
J, R = [int(x) for x in input().strip().split(' ')]
jogadas = [int(x) for x in input().strip().split(' ')]

PV = [sum(jogadas[i::J]) for i in range(J)]

vencedor = 0
maior = PV[0]
for i in range(1, J):
    if(PV[i] >= maior):
        vencedor = i
        maior = PV[i]

print(vencedor + 1)
```