# 1247 - Guarda Costeira

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1247)

## Solução

O caminho que o ladrão precisa fazer é uma reta até um ponto a 12 milhas náuticas de distância com velocidade constante de `VF` nós (unidade de velocidade correspondente a uma milha náutica por hora).

Já o caminho do guarda é um caminho inclinado, onde a distância a ser percorrida é equivalente à hipotenusa de um triângulo envolvendo as 12 milhas do ladrão e a distância de `D` milhas náuticas entre o guarda e o ladrão como catetos. Logo, a distância a ser percorrida pelo guarda é

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;d&space;=&space;\sqrt{144&space;&plus;&space;D^2}" title="\bg_white d = \sqrt{144 + D^2}" />

com velocidade constante de `VG` nós.

Com isso, o que precisamos fazer é apenas comparar o tempo que cada um leva para percorrer suas respectivas distâncias: se o ladrão chega em menos tempo, ele escapa; caso contrário, o guarda consegue prendê-lo. Logo, o que queremos checar é se a expressão abaixo é verdadeira

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;\frac{12}{VF}&space;<&space;\frac{\sqrt{144&space;&plus;&space;D^2}}{VG}" title="\bg_white \frac{12}{VF} < \frac{\sqrt{144 + D^2}}{VG}" />

então o ladrão consegue escapar.

### C99
```c
#include <stdio.h>
#include <math.h>

int main()
{
    int D, VF, VG;
    double distanciaGuarda, tempoFugitivo, tempoGuarda;

    while (scanf("%d %d %d", &D, &VF, &VG) != EOF)
    {
        tempoFugitivo = 12.0 / VF;
        distanciaGuarda = sqrt(144 + D * D);
        tempoGuarda = distanciaGuarda / VG;

        printf("%c\n", tempoFugitivo < tempoGuarda ? 'N' : 'S');
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int D, VF, VG;
    double distanciaGuarda, tempoFugitivo, tempoGuarda;

    while (cin >> D >> VF >> VG)
    {
        tempoFugitivo = 12.0 / VF;
        distanciaGuarda = sqrt(144 + (D * D));
        tempoGuarda = distanciaGuarda / VG;

        cout << (char)(tempoFugitivo < tempoGuarda ? 'N' : 'S') << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let [D, VF, VG] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let tempoFugitivo = 12 / VF;
    let distanciaGuarda = Math.sqrt(144 + D * D);
    let tempoGuarda = distanciaGuarda / VG;

    console.log(`${tempoFugitivo < tempoGuarda ? 'N' : 'S'}`);
}
```

### Python 3.9
```python
import math

while True:
    try:
        D, VF, VG = [int(x) for x in input().strip().split(' ')]

        tempoFugitivo = 12/VF
        distanciaGuarda = math.sqrt(144 + D * D)
        tempoGuarda = distanciaGuarda/VG

        print('N' if tempoFugitivo < tempoGuarda else 'S')
    except EOFError:
        break
```