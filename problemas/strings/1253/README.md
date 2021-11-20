# 1253 - Cifra de César

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1253)

## Solução

Basta fazer um for deslocando cada letra as posições para **esquerda** (lembre-se que a descrição diz como que criptografa, aqui a gente quer descriptografar). Daí, só utilizar o seguinte artifício para deslocar uma letra `x` para esquerda dentro do intervalo `[0,25]`, ou seja, no intervalo de `'A'` a `'Z'`:

```
Esquerda(x) = ((ASCII(x) - ASCII('A') - deslocamento + 26) % 26) + ASCII('A')
```

Dê uma olhada nas páginas [Tabela ASCII](../../../base-teorica/strings/ascii/README.md) e [Deslocar dentro de um intervalo \[0, N - 1\]](../../../base-teorica/matematica/macetes/README.md#deslocar-dentro-de-um-intervalo-0-n-1) para entender por que essa operação acima funciona. Ao final teremos um número no intervalo `[0,25]` onde basta adicionarmos novamente o código ASCII da letra A para descobrirmos a letra resultante do deslocamento.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char alfabeto[51];
    int N, deslocamento;

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        scanf("%[^\n]\n", &alfabeto);
        scanf("%d\n", &deslocamento);

        for(int j = 0; j < strlen(alfabeto); ++j){
            alfabeto[j] = ((alfabeto[j] - 'A' - deslocamento + 26) % 26) + 'A';
        }

        printf("%s\n", alfabeto);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    string alfabeto;
    int N, deslocamento;

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> alfabeto >> deslocamento;

        for(int j = 0; j < alfabeto.length(); ++j){
            alfabeto[j] = ((alfabeto[j] - 'A' - deslocamento + 26) % 26) + 'A';
        }

        cout << alfabeto << endl;
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
    let alfabeto = lines.shift();
    let deslocamento = parseInt(lines.shift());

    let resposta = alfabeto.trim().split('').map((x) => String.fromCharCode(((x.charCodeAt(0) - 65 - deslocamento + 26) % 26) + 65)).join('');

    console.log(resposta);
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    alfabeto = input()
    deslocamento = int(input())

    resposta = ''.join([chr(((ord(letra) - 65 - deslocamento + 26) % 26) + 65) for letra in alfabeto])

    print(resposta)
```