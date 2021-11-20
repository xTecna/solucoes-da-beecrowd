# 1581 - Conversa Internacional

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1581)

## Solução

Temos dois casos com inputs diferenciados aqui:

* Se todas as pessoas falam o mesmo idioma, a resposta deve ser esse idioma;
* Se pelo menos uma pessoa falar um idioma diferente, a resposta deve ser `ingles`.

Com isso, como temos pelo menos duas pessoas em todo grupo, podemos primeiro ler unicamente o idioma da primeira pessoa e a partir dela, conferir se todas as outras pessoas falam a mesma língua que a primeira. Se sim, então esse é o idioma dominante, mas se pelo menos uma pessoa falar um idioma diferente da primeira pessoa, então já podemos partir para o Inglês como segundo recurso.

Uma coisa importante desse problema é que se você decidir ir fazendo essa decisão enquanto lê a entrada, que é inclusive uma excelente ideia, note que você vai precisar ler todos os idiomas antes de entregar seu veredito, ou você pode confundir os casos de teste. Por isso, é importante manter uma variável para indicar se você já viu um idioma diferente ou não.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int N, K, mesmoIdioma;
    char idioma[21], S[21];

    scanf("%d", &N);

    for(int k = 0; k < N; ++k){
        scanf("%d\n", &K);

        mesmoIdioma = 1;
        scanf("%s\n", &idioma);
        for(int i = 1; i < K; ++i){
            scanf("%s\n", &S);

            if(strcmp(idioma, S))   mesmoIdioma = 0;
        }

        if(mesmoIdioma) printf("%s\n", idioma);
        else            printf("ingles\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int N, K;
    bool mesmoIdioma;
    string idioma, S;

    cin >> N;

    for(int k = 0; k < N; ++k){
        cin >> K;

        cin >> idioma;
        mesmoIdioma = true;
        for(int i = 1; i < K; ++i){
            cin >> S;

            if(S != idioma) mesmoIdioma = false;
        }

        if(mesmoIdioma) cout << idioma << endl;
        else            cout << "ingles" << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let k = 0; k < N; ++k){
    let K = parseInt(lines.shift());

    let mesmoIdioma = true;
    let idioma = lines.shift().trim();
    for(let i = 1; i < K; ++i){
        let S = lines.shift().trim();

        if(S !== idioma)    mesmoIdioma = false;
    }

    if(mesmoIdioma) console.log(idioma);
    else            console.log("ingles");
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    K = int(input())

    idioma = input()
    mesmoIdioma = True
    for i in range(1, K):
        S = input()
        
        if(S != idioma):
            mesmoIdioma = False
    
    print("ingles" if not mesmoIdioma else idioma)
```