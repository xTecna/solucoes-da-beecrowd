# 2174 - Coleção de Pomekon

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2174)

## Solução

Em todas as linguagens que possuem suporte para tal, você pode usar conjuntos para guardar os nomes de todos os Pomekons que você for encontrando e no final apenas subtrair 151 da quantidade de Pomekons diferentes que você encontrou.

Para linguagens que não possuem esse suporte, você pode ir colocando os Pomekons em um vetor e a cada novo Pomekon ver se ele já não está no vetor, mas tenha em mente que esse é um processo muito mais custoso do que usar conjuntos (complexidade de O(N²) versus O(N)). Felizmente, estamos lidando com apenas 1000 pomekons diferentes, então a complexidade quadrática é aceitável.

### C99
```c
#include <string.h>
#include <stdio.h>

char pomekons[1001][101];

int busca(char* pomekon, int n){
    for(int i = 0; i < n; ++i){
        if(!strcmp(pomekons[i], pomekon))   return i;
    }

    return -1;
}

int main(){
    int N, p;
    char S[1001];

    memset(pomekons, '\0', sizeof(pomekons));

    scanf("%d\n", &N);
    
    p = 0;
    for(int i = 0; i < N; ++i){
        scanf("%s\n", &S);

        if(busca(S, N) == -1)   strcpy(pomekons[p++], S);
    }

    printf("Falta(m) %d pomekon(s).\n", 151 - p);

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <set>

using namespace std;

int main(){
    int N;
    string S;
    set<string> pomekons;

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> S;
        
        pomekons.insert(S);
    }

    cout << "Falta(m) " << 151 - pomekons.size() << " pomekon(s)." << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

let pomekons = new Set();
for(let i = 0; i < N; ++i){
    let S = lines.shift().trim();

    pomekons.add(S);
}

console.log(`Falta(m) ${151 - pomekons.size} pomekon(s).`);
```

### Python 3.9
```python
N = int(input())

pomekons = set()
for _ in range(N):
    S = input()

    pomekons.add(S)

print(f"Falta(m) {151 - len(pomekons)} pomekon(s).")
```