# 1017 - Gasto de Combustível

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1017)

## Solução

A resolução desse problema envolve duas etapas:

1. Calcular a distância percorrida pelo carro, que pode ser calculada multiplicando a velocidade (em km/h) pelo tempo (em horas);
2. Como o carro faz 12 km/L, pegar a distância percorrida (em km) e dividir por 12 (km/L) para descobrir quantos litros precisa para percorrer a viagem no tempo e velocidade passados.

### C99

```c
#include <stdio.h>

int main(){
    int tempo, velocidade, distancia;
    double litros;

    scanf("%d\n%d", &tempo, &velocidade);

    distancia = velocidade * tempo;
    litros = distancia/12.0;

    printf("%.3lf\n", litros);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    int tempo, velocidade, distancia;
    double litros;

    cin >> tempo >> velocidade;

    distancia = velocidade * tempo;
    litros = distancia/12.0;

    cout << setprecision(3) << fixed << litros << endl;

    return 0;
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let tempo = parseInt(lines.shift());
let velocidade = parseInt(lines.shift());

let distancia = tempo * velocidade;
let litros = distancia / 12;

console.log(litros.toFixed(3));
```

### Python 3.9

```python
tempo = int(input())
velocidade = int(input())

distancia = tempo * velocidade
litros = distancia/12

print(f"{litros:.3f}")
```