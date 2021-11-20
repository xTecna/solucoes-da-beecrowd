# 1607 - Avance as Letras

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1607)

## Solução

Para entendermos o que o problema quer, vamos analisar quantos passos vamos precisar para que uma letra se transforme em outra letra. Por exemplo, vamos supor que queiramos saber quantos passos precisamos para ir de `'a'` até `'d'`. Essa resposta é tranquila, precisamos de 3 passos: `'a' -> 'b' -> 'c' -> 'd'`. Isso é facilmente obtido se fizermos `ASCII('d') - ASCII('a')` (ver página [Tabela ASCII](../base-teorica/strings/tabela-ascii.md)). Entretanto, quantos passos precisamos para ir de `'x'` até `'a'`? Também 3 passos, pois fazemos `'x' -> 'y' -> 'z' -> 'a'`. Esse aspecto de poder voltar à letra 'a' quando avançamos 'z' pode tornar nosso cálculo um pouco mais difícil, mas isso é facilmente contornado se ao invés de calcularmos ASCII('a') - ASCII('x'), que daria um número negativo, podemos fazer `(ASCII('a') - ASCII('x') + 26) % 26` (ver página [Deslocar dentro de um intervalo \[0, N - 1\]](../base-teorica/matematica/macetes-matematicos.md#deslocar-dentro-de-um-intervalo-0-n-1) para entender porque este cálculo funciona).

Logo, para termos o número mínimo de operações entre uma string e outra, basta apenas calcular a soma do número de operações de uma letra para outra, na ordem.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int T, diferenca;
    char A[10001], B[10001];

    scanf("%d\n", &T);

    for(int i = 0; i < T; ++i){
        scanf("%s %s\n", &A, &B);

        diferenca = 0;
        for(int j = 0; j < strlen(A); ++j){
            diferenca += (B[j] - A[j] + 26) % 26;
        }

        printf("%d\n", diferenca);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    string A, B;
    int T, diferencas;

    cin >> T;

    for(int i = 0; i < T; ++i){
        cin >> A >> B;

        diferencas = 0;
        for(int j = 0; j < A.length(); ++j){
            diferencas += (B[j] - A[j] + 26) % 26;
        }

        cout << diferencas << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift());

for(let i = 0; i < T; ++i){
    let [A, B] = lines.shift().trim().split(' ');

    let diferenca = 0;
    for(let j = 0; j < A.length; ++j){
        diferenca += (B.charCodeAt(j) - A.charCodeAt(j) + 26) % 26;
    }

    console.log(diferenca);
}
```

### Python 3.9
```python
T = int(input())

for _ in range(T):
    A, B = input().strip().split(' ')

    diferenca = sum([(ord(B[j]) - ord(A[j]) + 26) % 26 for j in range(len(A))])
    
    print(diferenca)
```