# 3227 - Doorman

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3227)

## Solução

Para a escolha ótima, é preciso ter boa fé e sempre tentar colocar a primeira pessoa da fila na boate quando for possível. Quando não for possível, tentar colocar a segunda pessoa da fila. Quando nenhum desses casos for possível, aborta o algoritmo e retorna como resultado o número de pessoas que entraram até aquele dado momento.

Uma pessoa pode entrar na boate se a diferença absoluta entre homens e mulheres **depois que essa pessoa entrar** for menor ou igual ao limite estabelecido por Bruno. Com isso, uma coisa importante que podemos notar é que sempre que colocamos uma pessoa do grupo minoritário do momento na boate, a diferença absoluta sempre diminui. Com isso, se há menos homens na boate e o próximo na fila é um homem, então ele é sempre bem-vindo. Se uma pessoa do grupo majoritário deseja entrar, entretanto, precisamos ver se a diferença absoluta é **menor** que a imposta, pois no caso de ser igual, sabemos que irá estourar.

Na implementação, pode-se ver que eu decidi utilizar uma string em vez de uma fila porque precisaremos da informação da segunda pessoa na fila. Poderíamos usar uma `double queue`, estrutura de dados que permite enfileiramentos tanto ao final quanto ao começo da fila, mas aqui optei pelo caminho mais fácil. Remoções em `strings` e `vectors` normalmente são muito custosas, mas eu vi que o tamanho máximo da fila é 100, então decidi que vale a pena o risco. Também é possível resolver esse problema usando uma variável para apontar sempre para a próxima pessoa da fila, não precisando nem modificar a string, o que é uma solução bem legal também.

> A variável `genero` guarda informação sobre qual o gênero ao qual a pessoa pertence, sendo 0 equivalente ao gênero masculino e 1 ao gênero feminino, o que possibilitou uma facilidade de implementação na hora de guardar as quantidades, usando um vetor em vez de duas variáveis diferentes. Repare que `1 - genero` se refere ao gênero oposto porque 1 - 0 = 1 e 1 - 1 = 0.

### C99
```c
#include <stdio.h>

int main(){
    int qtd[2];
    char entrada[128];
    int X, p, abs, resposta;

    scanf("%d\n", &X);
    scanf("%s", entrada);

    qtd[0] = 0;
    qtd[1] = 0;
    p = 0;
    abs = 0;
    resposta = 0;
    while(entrada[p] != '\0'){
        if(entrada[p] == 'O'){
            ++p;
            continue;
        }

        int genero = (entrada[p] == 'W');

        if(qtd[genero] < qtd[1 - genero] || abs < X){
            if(qtd[genero] < qtd[1 - genero]){
                --abs;
            }else{
                ++abs;
            }

            ++resposta;
            ++qtd[genero];
            entrada[p] = 'O';
            continue;
        }

        if(entrada[p + 1] != '\0'){
            genero = (entrada[p + 1] == 'W');

            if(qtd[genero] < qtd[1 - genero] || abs < X){
                if(qtd[genero] < qtd[1 - genero]){
                    --abs;
                }else{
                    ++abs;
                }

                ++resposta;
                ++qtd[genero];
                entrada[p + 1] = 'O';
                continue;
            }else{
                break;
            }
        }
    }

    printf("%d\n", resposta);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int qtd[2];
    string entrada;
    int X, abs, resposta;

    cin >> X;
    cin >> entrada;

    qtd[0] = 0;
    qtd[1] = 0;
    abs = 0;
    resposta = 0;
    while(entrada.length()){
        int genero = (entrada[0] == 'W');

        if(qtd[genero] < qtd[1 - genero] || abs < X){
            if(qtd[genero] < qtd[1 - genero]){
                --abs;
            }else{
                ++abs;
            }

            ++resposta;
            ++qtd[genero];
            entrada.erase(0, 1);
            continue;
        }

        if(entrada.length() > 1){
            genero = (entrada[1] == 'W');

            if(qtd[genero] < qtd[1 - genero] || abs < X){
                if(qtd[genero] < qtd[1 - genero]){
                    --abs;
                }else{
                    ++abs;
                }

                ++resposta;
                ++qtd[genero];
                entrada.erase(1, 1);
                continue;
            }else{
                break;
            }
        }
    }

    cout << resposta << endl;

    return 0;
}
```

### Python 3.9
```python
X = int(input())
entrada = input()

qtd = [0, 0]
dif = 0
resposta = 0

while(len(entrada) > 0):
    genero = 1 if (entrada[0] == 'W') else 0

    if(qtd[genero] < qtd[1 - genero] or dif < X):
        if(qtd[genero] < qtd[1 - genero]):
            dif -= 1
        else:
            dif += 1
        resposta += 1
        qtd[genero] += 1
        entrada = entrada[1:]
        continue
    
    if(len(entrada) > 1):
        genero = 1 if (entrada[1] == 'W') else 0

        if(qtd[genero] < qtd[1 - genero] or dif < X):
            if(qtd[genero] < qtd[1 - genero]):
                dif -= 1
            else:
                dif += 1
            
            resposta += 1
            qtd[genero] += 1
            entrada = entrada[:1] + entrada[2:]
            continue
        else:
            break

print(resposta)
```