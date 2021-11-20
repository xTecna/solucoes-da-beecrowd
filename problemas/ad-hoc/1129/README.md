# 1129 - Leitura Ótica

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1129)

## Solução

Aqui precisamos verificar dentre as cores qual delas são pretas, e descartar casos onde nenhuma ou mais de uma cor preta foi encontrada. Em linguagens funcionais, é perfeitamente plausível usar `filter` para esse objetivo. Entender o [código ASCII](../../../base-teorica/strings/ascii/README.md) também vai te dar uma maneira muito mais fácil de imprimir a saída (no nosso código, por exemplo, o número `65` se refere ao caractere `'A'`).

### C99
```c
#include <stdio.h>

int main(){
    int N, cor, opcao, corretos;

    while(scanf("%d", &N)){
        if(!N)  break;

        for(int i = 0; i < N; ++i){
            opcao = -1, corretos = 0;

            for(int k = 0; k < 5; ++k){
                scanf("%d", &cor);

                if(cor <= 127){
                    opcao = k;
                    ++corretos;
                }
            }

            if(corretos == 1)   printf("%c\n", 'A' + opcao);
            else                printf("*\n");
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int N, cor, opcao, corretos;

    while(cin >> N){
        if(!N)  break;

        for(int i = 0; i < N; ++i){
            opcao = -1, corretos = 0;

            for(int k = 0; k < 5; ++k){
                cin >> cor;

                if(cor <= 127){
                    opcao = k;
                    ++corretos;
                }
            }

            if(corretos == 1)   cout << (char) ('A' + opcao) << endl;
            else                cout << '*' << endl;
        }
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
  let N = parseInt(lines.shift());

  if(!N)  break;

  for (let i = 0; i < N; ++i) {
    corretos = lines.shift().trim().split(" ").map((x, i) => [parseInt(x), i]).filter((x) => x[0] <= 127);

    if (corretos.length === 1)  console.log(String.fromCharCode(65 + corretos[0][1]));
    else                        console.log("*");
  }
}
```

### Python 3.9
```python
while True:
    try:
        N = int(input())

        for _ in range(N):
            cores = [(i, int(x)) for i, x in enumerate(input().strip().split(' '))]
            opcoes = list(filter(lambda x: x[1] <= 127, cores))

            if(len(opcoes) == 1):
                print(chr(65 + opcoes[0][0]))
            else:
                print('*')
    except EOFError:
        break
```