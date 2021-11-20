# 1257 - Array Hash

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1257)

## Solução

Aqui podemos entender que todas as strings passadas formam como se fosse uma matriz, onde cada linha é uma string e cada coluna é uma letra. Entretanto, não temos necessidade de fazer uma matriz completa para esse problema, se só ficarmos com a matriz em mente e entendermos que temos então linha i e coluna j, então podemos organizar direitinho os for que vamos precisar para fazer o cálculo do modo mais fácil possível, usando a [tabela ASCII](../../../base-teorica/strings/ascii/README.md) para calcular rapidamente a posição de cada letra no alfabeto.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int N, L, hash;
    char frase[51];

    scanf("%d", &N);
    for(int k = 0; k < N; ++k){
        hash = 0;
        scanf("%d\n", &L);

        for(int i = 0; i < L; ++i){
            scanf("%s\n", &frase);

            for(int j = 0; j < strlen(frase); ++j){
                hash += (frase[j] - 'A') + i + j;
            }
        }

        printf("%d\n", hash);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    string frase;
    int N, L, hash;

    cin >> N;

    for(int k = 0; k < N; ++k){
        hash = 0;
        cin >> L;

        for(int i = 0; i < L; ++i){
            cin >> frase;

            for(int j = 0; j < frase.length(); ++j){
                hash += (frase[j] - 'A') + i + j;
            }
        }

        cout << hash << endl;
    }

    return 0;
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    valor = 0
    L = int(input())

    for i in range(L):
        frase = input()

        for j in range(len(frase)):
            valor += ord(frase[j]) - ord('A') + i + j
    
    print(valor)
```