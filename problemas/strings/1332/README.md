# 1332 - Um-Dois-Três

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1332)

## Solução

Primeiro aspecto importante desse problema é confiar que o tamanho das strings está sempre correto, ou seja, os tamanhos só podem ser 3 ou 5. Com esse conhecimento, vemos rapidamente então que se o tamanho é 5, então a resposta é 3. Entretanto, se o tamanho é 3, então é preciso verificar cada letra para ver se a palavra é mais semelhante à palavra `"one"` ou à palavra `"two"`. No caso da minha solução, foquei na palavra `"one"` e tudo que não tiver mais do que 1 semelhança com `"one"` é classificado como `"two"`.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int palavras, semelhancas;
    char palavra[11], *um = "one";

    scanf("%d\n", &palavras);

    for(int i = 0; i < palavras; ++i){
        scanf("%s\n", &palavra);

        if(strlen(palavra) == 5)    printf("3\n");
        else{
            semelhancas = 0;
            for(int j = 0; j < 3; ++j){
                if(palavra[j] == um[j]) ++semelhancas;
            }

            if(semelhancas > 1) printf("1\n");
            else                printf("2\n");
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
    int palavras, semelhancas;
    string palavra, um = "one";

    cin >> palavras;

    for(int i = 0; i < palavras; ++i){
        cin >> palavra;

        if(palavra.length() == 5)   cout << 3 << endl;
        else{
            semelhancas = 0;
            for(int j = 0; j < 3; ++j){
                if(palavra[j] == um[j]) ++semelhancas;
            }

            if(semelhancas > 1) cout << 1 << endl;
            else                cout << 2 << endl;
        }
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const um = "one";

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let palavra = lines.shift();

    if(palavra.length === 5)    console.log(3);
    else{
        let semelhancas = palavra.trim().split('').map((x, i) => [palavra[i], um[i]]).reduce((acc, cur) => (cur[0] === cur[1]) ? acc + 1 : acc, 0);
        if(semelhancas > 1) console.log(1);
        else                console.log(2);
    }
}
```

### Python 3.9
```python
um = "one"

palavras = int(input())

for _ in range(palavras):
    palavra = input()

    if(len(palavra) == 5):
        print(3)
    else:
        semelhancas = sum([1 if palavra[i] == um[i] else 0 for i in range(3)])
        if(semelhancas > 1):
            print(1)
        else:
            print(2)
```