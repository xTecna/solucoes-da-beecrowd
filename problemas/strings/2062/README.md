# 2062 - OBI URI

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2062)

## Solução

Basta apenas verificar se para cada palavra, a palavra tem tamanho 3 e se ela começa com uma das duas substrings apresentadas no enunciado para ser corrigida de acordo. Algumas linguagens têm suporte a ver se uma string começa com outra substring, mas para esse caso é bem tranquilo fazer manualmente também.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int N;
    char palavra[21];

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        scanf("%s", &palavra);

        if(i)   printf(" ");
        if(strlen(palavra) == 3){
            if(palavra[0] == 'O' && palavra[1] == 'B')
                printf("OBI");
            else if(palavra[0] == 'U' && palavra[1] == 'R')
                printf("URI");
            else
                printf("%s", palavra);
        }else{
            printf("%s", palavra);
        }
    }
    
    printf("\n");

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int N;
    string palavra;

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> palavra;

        if(i)   cout << ' ';
        if(palavra.length() == 3){
            if(palavra[0] == 'O' && palavra[1] == 'B')
                cout << "OBI";
            else if(palavra[0] == 'U' && palavra[1] == 'R')
                cout << "URI";
            else
                cout << palavra;
        }else{
            cout << palavra;
        }
    }
    cout << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

let palavras = lines.shift().trim().split(" ");

palavras = palavras.map((x) => {
    if(x.length === 3){
        if(x.startsWith("OB"))      return "OBI";
        else if(x.startsWith("UR")) return "URI";
    }
    return x;
});

console.log(palavras.join(' '));
```

### Python 3.9
```python
N = int(input())

palavras = input().strip().split(' ')

resposta = []
for palavra in palavras:
    if(len(palavra) == 3):
        if(palavra.startswith("OB")):
            resposta.append("OBI")
        elif(palavra.startswith("UR")):
            resposta.append("URI")
        else:
            resposta.append(palavra)
    else:
        resposta.append(palavra)

print(' '.join(resposta))
```