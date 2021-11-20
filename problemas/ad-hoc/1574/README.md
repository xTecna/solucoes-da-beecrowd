# 1574 - Instruções do Robô

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1574)

## Solução

É importante guardar as instruções em um vetor porque existem instruções que apontam para instruções passadas. Para evitar chamar uma instrução que chama outra que chama outra e assim por diante, é bom salvar cada instrução realizada com a ação do robô em vez de uma referência. Ou seja, se uma instrução apontar para outra que faz o robô andar para esquerda, salvamos que ele foi para a esquerda.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char palavra[10];
    int instrucoes[101];
    int T, n, posicao, instrucao;

    scanf("%d", &T);

    for(int k = 0; k < T; ++k){
        scanf("%d", &n);

        posicao = 0;
        for(int i = 1; i <= n; ++i){
            scanf("%s", &palavra);

            if(!strcmp(palavra, "LEFT")){
                instrucoes[i] = -1;
            }else if(!strcmp(palavra, "RIGHT")){
                instrucoes[i] = 1;
            }else{
                scanf("%s %d", &palavra, &instrucao);
                instrucoes[i] = instrucoes[instrucao];
            }

            posicao += instrucoes[i];

            scanf("\n");
        }

        printf("%d\n", posicao);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <vector>

using namespace std;

int main(){
    string palavra;
    vector<int> instrucoes;
    int T, n, posicao, instrucao;

    cin >> T;

    for(int k = 0; k < T; ++k){
        cin >> n;

        posicao = 0;
        instrucoes.assign(n + 1, 0);
        for(int i = 1; i <= n; ++i){
            cin >> palavra;

            if(palavra == "LEFT"){
                instrucoes[i] = -1;
            }else if(palavra == "RIGHT"){
                instrucoes[i] = 1;
            }else{
                cin >> palavra >> instrucao;

                instrucoes[i] = instrucoes[instrucao];
            }

            posicao += instrucoes[i];
        }

        cout << posicao << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift().trim());

for(let k = 0; k < T; ++k){
    let n = parseInt(lines.shift().trim());

    let posicao = 0;
    let instrucoes = Array(n + 1);
    for(let i = 1; i <= n; ++i){
        let instrucao = lines.shift().trim();

        if(instrucao === "LEFT"){
            instrucoes[i] = -1;
        }else if(instrucao === "RIGHT"){
            instrucoes[i] = 1;
        }else{
            instrucao = parseInt(instrucao.split(' ')[2]);
            instrucoes[i] = instrucoes[instrucao];
        }

        posicao += instrucoes[i];
    }

    console.log(posicao);
}
```

### Python 3.9
```python
T = int(input())

for _ in range(T):
    N = int(input())

    posicao = 0
    instrucoes = [0 for i in range(N + 1)]
    for i in range(1, N + 1):
        instrucao = input().strip()

        if(instrucao == "LEFT"):
            instrucoes[i] = -1
        elif(instrucao == "RIGHT"):
            instrucoes[i] = 1
        else:
            instrucao = int(instrucao.split(' ')[2])
            instrucoes[i] = instrucoes[instrucao]
        
        posicao += instrucoes[i]
    
    print(posicao)
```