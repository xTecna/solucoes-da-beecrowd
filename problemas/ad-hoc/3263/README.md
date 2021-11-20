# 3263 - Apague Com Segurança

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3263)

## Solução

Não é necessário ligar e desligar os bits o número de vezes indicado pelo enunciado para obter uma resposta correta. Repare que se temos um número par de varreduras, vamos trocar 0 por 1 e depois 1 por 0 de novo, então número par acarreta sempre na string ser a mesma de antes. Já se tivermos um número ímpar de varreduras, é o equivalente a fazer uma varredura só. Com isso, só precisamos saber a paridade de N para sabermos quais valores deveriam estar nas posições. Basicamente

* Se N for par, verificar se as strings de antes e depois são iguais;
* Se N for ímpar, verificar se a string depois tem todos os bits trocados com a string de antes.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int N;
    char antes[1024], depois[1024];

    scanf("%d\n%s\n%s\n", &N, antes, depois);

    N %= 2;

    if(!N){
        if(!strcmp(antes, depois)){
            printf("Deletion succeeded\n");
        }else{
            printf("Deletion failed\n");
        }
    }else{
        int i;
        for(i = 0; i < strlen(antes); ++i){
            if(antes[i] == depois[i]){
                printf("Deletion failed\n");
                break;
            }
        }
        if(i == strlen(antes))  printf("Deletion succeeded\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int N;
    string antes, depois;

    cin >> N >> antes >> depois;
    N %= 2;
    if(!N){
        if(antes == depois){
            cout << "Deletion succeeded" << endl;
        }else{
            cout << "Deletion failed" << endl;
        }
    }else{
        int i;
        for(i = 0; i < antes.length(); ++i){
            if(antes[i] == depois[i]){
                cout << "Deletion failed" << endl;
                break;
            }
        }
        if(i == antes.length()) cout << "Deletion succeeded" << endl;
    }

    return 0;
}
```

### Python 3.9
```python
n = int(input())
antes = input()
depois = input()

n %= 2
if(n == 0):
    print('Deletion succeeded' if(antes == depois) else 'Deletion failed')
else:
    succeeded = True
    for i in range(len(antes)):
        if(antes[i] == depois[i]):
            succeeded = False
            break
    print('Deletion succeeded' if(succeeded) else 'Deletion failed')

```