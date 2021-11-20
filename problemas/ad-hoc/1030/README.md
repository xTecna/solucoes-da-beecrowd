# 1030 - A Lenda de Flavious Josephus

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1030)

## Solução

O problema de Josephus é um problema conhecido na Matemática onde o objetivo é encontrar o sobrevivente num grupo de soldados que vão se matando de pulos em pulos. Tal problema pode ser descrito como: num grupo de n soldados que se matam de k em k, qual deles será o sobrevivente?

Vamos primeiro considerar o primeiro passo dessa matança. Considere que temos `n` soldados numerados de `0` a `n - 1`:

| 0 | 1 | 2 | 3 | ... | n - 3 | n - 2 | n - 1 |
| - | - | - | - | --- | ----- | ----- | ----- |

Se estamos removendo de `k` em `k`, então o primeiro soldado a ser excluído é o soldado `k - 1`. Aqui em baixo represento o soldado a ser removido e como que ficam os soldados após sua remoção:

| 0 | 1 | 2 | 3 | ... | ~~k - 1~~ | k | k + 1 | ... | n - 3 | n - 2 | n - 1 |
| - | - | - | - | --- | --------- | - | ----- | --- | ----- | ----- | ----- |

| 0 | 1 | 2 | 3 | ... | k - 1 (antes k) | k (antes k + 1) | ... | n - 3 (antes n - 2) | n - 2 (antes n- 1) |
| - | - | - | - | --- | --------------- | --------------- | --- | ------------------- | ------------------ |

Veja que os elementos depois de `k - 1` mudaram suas posições para compensar a falta do elemento `k - 1` e que agora temos `n - 1` soldados. Parece que nosso problema de achar o sobrevivente para `n` soldados pulando de `k` em `k` agora se transformou no problema de achar o sobrevivente para `n - 1` soldados pulando de `k` em `k`, com a diferença de que antes começávamos em `0` e agora vamos começar na posição `k` (veja ali em cima que o soldado `k` assumiu o lugar do soldado `k - 1` quando ele morreu). Logo, podemos montar a seguinte recorrência:

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
T(n,&space;k)&space;=&space;(T(n&space;-&space;1,&space;k)&space;+&space;k)&space;\text{&space;mod&space;}&space;n" title="\bg_white 
T(n, k) = (T(n - 1, k) + k) \text{ mod } n" />

Onde é necessário aplicar o resto da divisão porque pode ser que esse `+ k` resulte em um valor fora do intervalo `[0, n - 1]`. O nosso caso base então seria:

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
T(1,&space;k)&space;=&space;0" title="\bg_white 
T(1, k) = 0" />

Ou seja, quando tem apenas um soldado, ele sobrevive, não importa o tamanho do pulo.

> Na linguagem Python, decidi pela versão iterativa da recorrência, já que com os limites estabelecidos no enunciado a pilha de recursão do Python pode estourar.

### C99
```c
#include <stdio.h>

int sobrevivente(int n, int k){
    if(n == 1)  return 0;
    return (sobrevivente(n - 1, k) + k) % n;
}

int main(){
    int NC, n, k;

    scanf("%d", &NC);

    for(int i = 1; i <= NC; ++i){
        scanf("%d %d", &n, &k);

        printf("Case %d: %d\n", i, sobrevivente(n, k) + 1);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int sobrevivente(int n, int k){
    if(n == 1)  return 0;
    return (sobrevivente(n - 1, k) + k) % n;
}

int main(){
    int NC, n, k;

    cin >> NC;

    for(int i = 1; i <= NC; ++i){
        cin >> n >> k;

        cout << "Case " << i << ": " << sobrevivente(n, k) + 1 << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const sobrevivente = (n, k) => {
    if(n == 1)  return 0;
    return (sobrevivente(n - 1, k) + k) % n;
};

let NC = parseInt(lines.shift());

for(let i = 1; i <= NC; ++i){
    let [n, k] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(`Case ${i}: ${sobrevivente(n, k) + 1}`);
}
```

### Python 3.9
```python
NC = int(input())

for i in range(1, NC + 1):
    n, k = [int(x) for x in input().strip().split(' ')]

    sobrevivente = 0
    for j in range(1, n + 1):
        sobrevivente = (sobrevivente + k) % j

    print(f"Case {i}: {sobrevivente + 1}")
```