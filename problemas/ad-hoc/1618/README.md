# 1618 - Colisão

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1618)

## Solução

O problem setter deste problema fez um excelente trabalho em nos trazer uma ilustração que nos explica o problema a ser resolvido e nos dá uma luz em como resolvê-lo. Pelo desenho, podemos perceber as seguintes coordenadas dos pontos apresentados:

| Pontos | Coordenadas |
| ------ | ----------- |
| A      | (4, 4)      |
| B      | (9, 4)      |
| C      | (9, 8)      |
| D      | (4, 8)      |
| Robô   | (6, 5)      |

Com isso, para o robô estar dentro do espaço delimitado por esses pontos, vamos pensar separadamente: primeiro na coordenada x do robô e depois na coordenada y.

Pela coordenada x do robô, podemos ver que tal coordenada precisa estar entre a coordenada x de A e D e a coordenada x de B e C. Se essa coordenada for menor que a de A ou a de D, o robô sempre está do lado de fora. Pelo mesmo raciocínio, se essa coordenada for maior que a de B ou a de C, o robô também está do lado de fora.

Pela coordenada y do robô, o raciocínio é semelhante, onde tal coordenada precisa estar entre a coordenada y de A e B e a coordenada y de D e C.

Em termos matemáticos, vamos testar

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
A_{x}&space;\leq&space;R_{x},&space;D_{x}&space;\leq&space;R_{x},&space;R_{x}&space;\leq&space;B_{x},&space;R_{x}&space;\leq&space;C_{x}&space;\\
\text{e}&space;\\
A_{y}&space;\leq&space;R_{y},&space;B_{y}&space;\leq&space;R_{y},&space;R_{y}&space;\leq&space;C_{y},&space;R_{y}&space;\leq&space;D_{y}" title="\bg_white 
A_{x} \leq R_{x}, D_{x} \leq R_{x}, R_{x} \leq B_{x}, R_{x} \leq C_{x} \\
\text{e} \\
A_{y} \leq R_{y}, B_{y} \leq R_{y}, R_{y} \leq C_{y}, R_{y} \leq D_{y}" />

> Os pontos A, B, C e D nem sempre formam um retângulo certinho, é nosso papel avaliar se é possível que o robô esteja dentro seguindo todas as regras acima. Dessa maneira, também podemos avaliar ao mesmo tempo se os pontos formam um retângulo ou não.

### C99
```c
#include <stdio.h>

int main()
{
    int N, Ax, Ay, Bx, By, Cx, Cy, Dx, Dy, Rx, Ry;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d %d %d %d %d %d %d %d %d", &Ax, &Ay, &Bx, &By, &Cx, &Cy, &Dx, &Dy, &Rx, &Ry);

        printf("%d\n", Ax <= Rx && Dx <= Rx &&
                           Rx <= Bx && Rx <= Cx &&
                           Ay <= Ry && By <= Ry &&
                           Ry <= Cy && Ry <= Dy);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main()
{
    int N, Ax, Ay, Bx, By, Cx, Cy, Dx, Dy, Rx, Ry;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> Ax >> Ay >> Bx >> By >> Cx >> Cy >> Dx >> Dy >> Rx >> Ry;

        cout << (int)(Ax <= Rx && Dx <= Rx &&
                      Rx <= Bx && Rx <= Cx &&
                      Ay <= Ry && By <= Ry &&
                      Ry <= Cy && Ry <= Dy)
             << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());

for(let i = 0; i < N; ++i){
    let [Ax, Ay, Bx, By, Cx, Cy, Dx, Dy, Rx, Ry] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(Ax <= Rx && Dx <= Rx &&
                Rx <= Bx && Rx <= Cx &&
                Ay <= Ry && By <= Ry &&
                Ry <= Cy && Ry <= Dy ? 1 : 0);
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    Ax, Ay, Bx, By, Cx, Cy, Dx, Dy, Rx, Ry = [
        int(x) for x in input().strip().split(' ')]

    print(1 if Ax <= Rx <= Bx and Dx <= Rx <=
          Cx and Ay <= Ry <= Dy and By <= Ry <= Cy else 0)
```