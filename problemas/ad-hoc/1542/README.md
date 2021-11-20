# 1542 - Lendo Livros

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1542)

## Solução

Para qualquer valor de páginas do livro e qualquer velocidade, podemos calcular nosso tempo de leitura da seguinte maneira:

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
\text{Tempo&space;de&space;leitura}&space;=&space;\frac{\text{Paginas&space;do&space;livro}}{\text{Velocidade&space;de&space;leitura}}" title="\bg_white 
\text{Tempo de leitura} = \frac{\text{Paginas do livro}}{\text{Velocidade de leitura}}" />

No enunciado, temos duas velocidades distintas onde, na velocidade mais rápida, economizamos uma quantidade de dias estabelecida pela entrada. Em outras palavras, podemos formar uma equação tal qual

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
\frac{\text{Paginas&space;do&space;livro}}{\text{Velocidade&space;lenta}}&space;=&space;\frac{\text{Paginas&space;do&space;livro}}{\text{Velocidade&space;rapida}}&space;+&space;\text{Tempo&space;economizado}" title="\bg_white 
\frac{\text{Paginas do livro}}{\text{Velocidade lenta}} = \frac{\text{Paginas do livro}}{\text{Velocidade rapida}} + \text{Tempo economizado}" />

Considerando velocidade lenta como `Q`, tempo economizado como `D` e velocidade rápida como `P`, podemos descobrir nossa variável de interesse que são as páginas do livro (que podemos chamar de `L`). Logo

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
\frac{L}{Q}&space;=&space;\frac{L}{P}&space;+&space;D\\
LP&space;=&space;LQ&space;+&space;DPQ\\
LP&space;-&space;LQ&space;=&space;DPQ\\
L(P&space;-&space;Q)&space;=&space;DPQ\\
L&space;=&space;\frac{DPQ}{P&space;-&space;Q}" title="\bg_white 
\frac{L}{Q} = \frac{L}{P} + D\\
LP = LQ + DPQ\\
LP - LQ = DPQ\\
L(P - Q) = DPQ\\
L = \frac{DPQ}{P - Q}" />

> Na linguagem Python, mudei a exceção a ser capturada para `ValueError` pois o programa deve parar de executar quando não conseguirmos mais receber os três valores.

### C99
```c
#include <stdio.h>

int main(){
    int Q, D, P, L;

    while(scanf("%d", &Q)){
        if(!Q)  break;

        scanf("%d %d", &D, &P);

        L = (Q * D * P)/(P - Q);
        
        printf("%d pagina", L);
        if(L > 1)   printf("s");
        printf("\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int Q, D, P, L;

    while(cin >> Q){
        if(!Q)  break;

        cin >> D >> P;

        L = (Q * D * P)/(P - Q);

        cout << L << " pagina";
        if(L > 1)   cout << "s";
        cout << endl;
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
    let [Q, D, P] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    L = Math.floor((Q * D * P) / (P - Q));

    console.log(`${L.toFixed(0)} pagina${L > 1 ? 's' : ''}`);
}
```

### Python 3.9
```python
while True:
    try:
        Q, D, P = [int(x) for x in input().strip().split(' ')]

        L = (Q * D * P)//(P - Q)

        print(f"{L} pagina{'s' if L > 1 else ''}")        
    except ValueError:
        break
```