# 1255 - Frequência de Letras

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1255)

## Solução

Você pode usar o [código ASCII](../../../base-teorica/strings/ascii/README.md) para te ajudar a mapear as frequências em apenas um vetor de 26 posições ou usar um dicionário para depois descobrir qual é o maior número e depois as letras que tem as maiores frequências.

### C99
```c
#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main(){
    int N;
    char frase[201];
    int maior, frequencias[26];

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        memset(frequencias, 0, sizeof(frequencias));

        scanf("%[^\n]\n", &frase);

        for(int j = 0; j < strlen(frase); ++j){
            if(isalpha(frase[j]))   frequencias[tolower(frase[j]) - 'a']++;
        }

        maior = 0;
        for(int j = 0; j < 26; ++j){
            if(maior < frequencias[j])  maior = frequencias[j];
        }

        for(int j = 0; j < 26; ++j){
            if(frequencias[j] == maior) printf("%c", j + 'a');
        }
        printf("\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cctype>
#include <map>

using namespace std;

int main(){
    int N, maior;
    string frase;
    map<char, int> frequencias;

    cin >> N;
    cin.ignore();

    for(int i = 0; i < N; ++i){
        frequencias.clear();

        getline(cin, frase);

        for(int j = 0; j < frase.length(); ++j){
            if(isalpha(frase[j])){
                frase[j] = tolower(frase[j]);
                if(!frequencias.count(frase[j]))    frequencias[frase[j]] = 0;
                frequencias[frase[j]]++;
            }
        }

        maior = 0;
        for(map<char, int>::iterator it = frequencias.begin(); it != frequencias.end(); ++it){
            if(it->second > maior)  maior = it->second;
        }

        for(map<char, int>::iterator it = frequencias.begin(); it != frequencias.end(); ++it){
            if(it->second == maior) cout << it->first;
        }
        cout << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let frase = lines.shift().trim().toLowerCase().split('');

    let frequencias = frase.reduce((acc, cur) => {
        if(/[A-Za-z]/.test(cur)){
            if(!(cur in acc)) acc[cur] = 0;
            acc[cur] += 1;
        }
        return acc;
    }, {});
    let maior = Object.values(frequencias).reduce((acc, cur) => acc < cur ? cur : acc, 0);
    
    let resposta = [];
    for (let letra in frequencias){
        if(frequencias[letra] === maior)    resposta.push(letra);
    }

    resposta.sort();
    console.log(resposta.join(''));
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    frase = input().strip().lower()

    frequencias = {}
    for letra in frase:
        if(letra.isalpha()):
            if(not letra in frequencias):
                frequencias[letra] = 0
            frequencias[letra] += 1
    
    maior = 0
    for letra in frequencias:
        maior = frequencias[letra] if frequencias[letra] > maior else maior
    
    resposta = []
    for letra in frequencias:
        if(frequencias[letra] == maior):
            resposta.append(letra)
    
    resposta.sort()
    print(''.join(resposta))

```