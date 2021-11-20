# 1104 - Troca de Cartas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1104)

## Solução

O objetivo deste problema é descobrir qual é a maior quantidade de pares de cartas que as meninas podem trocar entre si, considerando que nenhuma das duas gostaria de receber uma carta repetida. Uma boa maneira de conseguir este resultado é executando os seguintes passos:

1. Tirar todas as cartas repetidas entre si do baralho das duas meninas;
2. Tirar todas as cartas que aparecem tanto num baralho quanto no outro;
3. Entre as cartas que sobrarem, selecionar a quantidade de cartas do menor baralho.

Se lidarmos com conjuntos, onde os conjuntos `A` e `B` representam as cartas de Alice e Beatriz, respectivamente, o primeiro passo já será resolvido automaticamente, já que conjuntos não aceitam elementos repetidos. Desta maneira, agora podemos fazer a diferença entre os dois conjuntos e ficar com a menor entre elas para nossa resposta.

Podemos calcular a diferença diretamente ou usar uma das duas equações abaixo para calcular a cardinalidade da diferença para gente (que no final das contas, é o que interessa).

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
|A&space;-&space;B|&space;=&space;|A&space;\cup&space;B|&space;-&space;|A|&space;\\
\text{ou}&space;\\
|A&space;-&space;B|&space;=&space;|A|&space;-&space;|A&space;\cap&space;B|" title="\bg_white 
|A - B| = |A \cup B| - |A| \\
\text{ou} \\
|A - B| = |A| - |A \cap B|" />

Em todas as implementações exibidas abaixo, usamos a primeira equação. O motivo de não calcular `A - B` e `B - A` direto é apenas a fim de economizar memória.

> A linguagem C não nos providencia uma implementação de conjuntos interessante. Neste caso, tivemos que usar vetores, mas continuo usando a segunda equação normalmente, o raciocínio é o mesmo.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int alice[100001], beatriz[100001];
    int A, B, carta, so_alice, so_beatriz, ambas;

    while(scanf("%d %d", &A, &B)){
        if(!A && !B)    break;

        memset(alice, 0, sizeof(alice));
        memset(beatriz, 0, sizeof(beatriz));

        so_alice = 0;
        for(int i = 0; i < A; ++i){
            scanf("%d", &carta);

            if(!alice[carta]){
                alice[carta] = 1;
                ++so_alice;
            }
        }

        ambas = 0;
        so_beatriz = 0;
        for(int i = 0; i < B; ++i){
            scanf("%d", &carta);

            if(!beatriz[carta]){
                beatriz[carta] = 1;
                ++so_beatriz;
                if(alice[carta])    ++ambas;
            }
        }

        so_alice -= ambas;
        so_beatriz -= ambas;

        printf("%d\n", so_alice < so_beatriz ? so_alice : so_beatriz);
    }

    return 0;
}
```

### C++17
```cpp
#include <algorithm>
#include <iostream>
#include <set>

using namespace std;

int main(){
    int A, B, carta;
    set<int> alice, beatriz, uniao;

    while(cin >> A >> B){
        if(!A && !B)    break;

        alice.clear();
        for(int i = 0; i < A; ++i){
            cin >> carta;
            alice.insert(carta);
        }

        beatriz.clear();
        for(int i = 0; i < B; ++i){
            cin >> carta;
            beatriz.insert(carta);
        }

        uniao.clear();
        set_union(alice.begin(), alice.end(), beatriz.begin(), beatriz.end(), inserter(uniao, uniao.end()));

        cout << min(uniao.size() - beatriz.size(), uniao.size() - alice.size()) << endl;
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
    let [A, B] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let alice = new Set(lines.shift().trim().split(' ').map((x) => parseInt(x)));
    let beatriz = new Set(lines.shift().trim().split(' ').map((x) => parseInt(x)));

    let uniao = new Set([...alice, ...beatriz]);

    console.log(Math.min(uniao.size - beatriz.size, uniao.size - alice.size));
}
```

### Python 3.9
```python
while True:
    try:
        A, B = [int(x) for x in input().strip().split(' ')]

        alice = set([int(x) for x in input().strip().split(' ')])
        beatriz = set([int(x) for x in input().strip().split(' ')])

        uniao = alice.union(beatriz)

        print(min(len(uniao) - len(beatriz), len(uniao) - len(alice)))
    except EOFError:
        break
```