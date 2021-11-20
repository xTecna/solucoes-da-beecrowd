# 1437 - Esquerda, Volver!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1437)

## Solução

Algo que pode nos ajudar muito a calcular a direção resultante do recruta é mapear cada direção a um número específico. A tabela abaixo mostra o mapeamento que vamos usar, mas você pode usar qualquer um, desde que facilite seu cálculo com os comandos `E` e `D`:

| Direção   | Número |
| --------- | ------ |
| Norte (N) | 0      |
| Leste (L) | 1      |
| Sul (S)   | 2      |
| Oeste (O) | 3      |

Desta maneira, cada comando equivale a uma operação no número da direção.

* Comando `D`: `(numero + 1) % 4`
* Comando `E`: `((numero - 1) + 4) % 4`

Dê uma olhada na página [Deslocar dentro de um intervalo \[0, N - 1\]](../../../base-teorica/matematica/macetes/README.md#deslocar-dentro-de-um-intervalo-0-n-1) para entender porque os comandos `D` e `E` funcionam. A tabela abaixo mostra o resultado para cada direção após as operações para ter uma prova real de que sempre dá o resultado apropriado.

| Direção antes do comando | Número antes do comando | Comando | Número após o comando | Direção após o comando |
| ------------------------ | ----------------------- | ------- | --------------------- | ---------------------- |
| Norte (N)                | 0                       | D       | (0 + 1) % 4 = 1       | Leste (L)              |
| Norte (N)                | 0                       | E       | ((0 - 1) + 4) % 4 = 3 | Oeste (O)              |
| Leste (L)                | 1                       | D       | (1 + 1) % 4 = 2       | Sul (S)                |
| Leste (L)                | 1                       | E       | ((1 - 1) + 4) % 4 = 0 | Norte (N)              |
| Sul (S)                  | 2                       | D       | (2 + 1) % 4 = 3       | Oeste (O)              |
| Sul (S)                  | 2                       | E       | ((2 - 1) + 4) % 4 = 1 | Leste (L)              |
| Oeste (O)                | 3                       | D       | (3 + 1) % 4 = 0       | Norte (N)              |
| Oeste (O)                | 3                       | E       | ((3 - 1) + 4) % 4 = 2 | Sul (S)                |

A cada comando, simular a posição que o recruta fica após o mesmo. Por exemplo, se o recruta está virado ao norte e recebe o comando `E`, o recruta agora está virado para o oeste. Ao final, ver em qual posição ele ficou depois de todos os comandos.

### C99
```c
#include <stdio.h>

int main(){
    char comando;
    int N, direcao;
    char direcoes[4] = {'N', 'L', 'S', 'O'};

    while(scanf("%d\n", &N)){
        if(!N)  break;

        direcao = 0;
        for(int i = 0; i < N; ++i){
            scanf("%c", &comando);

            direcao += (comando == 'D') ? 1 : -1;
            direcao = (direcao + 4) % 4;
        }

        printf("%c\n", direcoes[direcao]);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    char comando;
    int N, direcao;
    char direcoes[4] = {'N', 'L', 'S', 'O'};

    while(cin >> N){
        if(!N)  break;

        direcao = 0;
        for(int i = 0; i < N; ++i){
            cin >> comando;

            direcao += (comando == 'D') ? 1 : -1;
            direcao = (direcao + 4) % 4;
        }

        cout << direcoes[direcao] << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const direcoes = ["N", "L", "S", "O"];

while (lines.length) {
  let N = parseInt(lines.shift());

  if(!N)  break;

  let comandos = lines.shift().trim().split("");

  let direcao = comandos.reduce((acc, cur) => {
    acc += cur === "D" ? 1 : -1;
    return (acc + 4) % 4;
  }, 0);

  console.log(direcoes[direcao]);
}
```

### Python 3.9
```python
direcoes = ['N', 'L', 'S', 'O']

while True:
    try:
        N = int(input())

        if(not N):
            break

        comandos = input()

        direcao = 0
        for comando in comandos:
            direcao += 1 if comando == 'D' else -1
            direcao = (direcao + 4) % 4
        
        print(direcoes[direcao])
    except EOFError:
        break
```