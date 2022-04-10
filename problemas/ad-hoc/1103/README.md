# 1103 - Alarme Despertador

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1103)

## Solução

O [sistema de datas Era Unix](https://pt.wikipedia.org/wiki/Era\_Unix) é um sistema que mapeia cada data existente deste 1 de janeiro de 1970 a um número inteiro equivalente ao número de segundos passados desde aquela época até a data desejada. Com este sistema de datas,  podemos comparar de forma muito mais fácil datas e também calcular quanto tempo se passou de uma data até outra, bastando converter ambas as datas para o formato Era Unix e obter a resposta em um número inteiro.

Aqui neste exercício não vamos exatamente converter para a Era Unix, mas vamos seguir essa mesma lógica, convertendo os dois horários para o número de minutos desde meia-noite até o horário passado e subtraindo ambos os horários para conseguirmos o número de minutos que se passou do horário inicial até o horário final. Na tabela abaixo há alguns exemplos da conversão e da subtração em ação.

| Horário Inicial | Horário Final | Inicial Convertido | Final Convertido | Subtração    |
| --------------- | ------------- | ------------------ | ---------------- | ------------ |
| 01:05           | 03:05         | 65 minutos         | 185 minutos      | 120 minutos  |
| 00:34           | 23:59         | 34 minutos         | 1439 minutos     | 1405 minutos |
| 21:10           | 21:33         | 1270 minutos       | 1293 minutos     | 23 minutos   |

Se você for reparar, esses exemplos são os mesmos do problema, com a diferença que alguns dos horários foram invertidos para facilitar a compreensão. Podemos reparar que em algum desses casos o horário inicial parece ser mais tarde que o horário final, mas na verdade, o horário final corresponde ao horário do dia seguinte e, por isso, convém adicionar 24 horas ao horário final quando virmos que o horário final é menor que o inicial, numericamente falando.

A conversão para minutos transcorridos desde a meia-noite de qualquer horário pode ser feita multiplicando o número de horas por 60 (cada hora significa que passou 60 minutos) e somando com os minutos em si.

### C99
```c
#include <stdio.h>

int converte(int horas, int minutos){
    return 60 * horas + minutos;
}

int main(){
    int H1, M1, H2, M2, resposta;

    while(scanf("%d %d %d %d", &H1, &M1, &H2, &M2)){
        if(!H1 && !M1 && !H2 && !M2)    break;

        if(H2 < H1 || (H2 == H1 && M2 < M1))    H2 += 24;
        resposta = converte(H2, M2) - converte(H1, M1);

        printf("%d\n", resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int converte(int horas, int minutos){
    return 60 * horas + minutos;
}

int main(){
    int H1, M1, H2, M2, resposta;

    while(cin >> H1 >> M1 >> H2 >> M2){
        if(!H1 && !M1 && !H2 && !M2)    break;

        if(H2 < H1 || (H2 == H1 && M2 < M1))    H2 += 24;
        resposta = converte(H2, M2) - converte(H1, M1);

        cout << resposta << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const converte = (horas, minutos) => {
  return 60 * horas + minutos;
};

lines.pop();

while (lines.length) {
  let [H1, M1, H2, M2] = lines.shift().trim().split(" ").map((x) => parseInt(x));

  if (H2 < H1 || (H2 == H1 && M2 < M1)) H2 += 24;
  let resposta = converte(H2, M2) - converte(H1, M1);

  console.log(resposta);
}
```

### Python 3.9
```python
def converte(horas, minutos):
    return 60 * horas + minutos

while True:
    try:
        [H1, M1, H2, M2] = [int(x) for x in input().strip().split(' ')]

        if(not H1 and not M1 and not H2 and not M2):
            break

        if(H2 < H1 or (H2 == H1 and M2 < M1)):
            H2 += 24
        resposta = converte(H2, M2) - converte(H1, M1)

        print(resposta)
    except EOFError:
        break
```