# 1383 - Sudoku

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1383)

## Solução

Eu decidi separar o conjunto de regras em três funções diferentes:

1. Verificação de linha: verificar se todos os números aparecem na linha uma e apenas uma vez;
2. Verificação de coluna: verificar se todos os números aparecem na coluna uma e apenas uma vez;
3. Verificação de quadrado: verificar se todos os números aparecem no quadrado uma e apenas uma vez.

Daí executar o programa para cada uma das 9 linhas, 9 colunas e 9 quadrados.

Nas linguagens de programação onde era permitido, utilizei conjuntos para adicionar todos os números de uma determinada linha, coluna ou quadrado e depois verificar se tal conjunto tinha tamanho exatamente 9. Para linguagens onde tal estrutura não é trivial, utilizei um vetor para marcar cada número e se fosse marcar um número já marcado, apontar a irregularidade.

Para definir onde começa cada quadrado, onde `x` é o identificador do quadrado, fiz `3*(x/3)` para definir a linha e `3*(x%3)` para definir a coluna da coordenada de cada quadrado. Dessa maneira, temos as seguintes coordenadas para os 9 quadrados:

| Quadrado | Coordenada |
| -------- | ---------- |
| 0        | (0, 0)     |
| 1        | (0, 3)     |
| 2        | (0, 6)     |
| 3        | (3, 0)     |
| 4        | (3, 3)     |
| 5        | (3, 6)     |
| 6        | (6, 0)     |
| 7        | (6, 3)     |
| 8        | (6, 6)     |

### C99
```c
#include <stdio.h>

int sudoku[9][9];

int verificaLinha(int x){
    int numeros[10];

    for(int i = 0; i < 10; ++i){
        numeros[i] = 0;
    }

    for(int i = 0; i < 9; ++i){
        if(numeros[sudoku[x][i]])   return 0;
        numeros[sudoku[x][i]] += 1;
    }

    return 1;
}

int verificaColuna(int x){
    int numeros[10];

    for(int i = 0; i < 10; ++i){
        numeros[i] = 0;
    }

    for(int i = 0; i < 9; ++i){
        if(numeros[sudoku[i][x]])   return 0;
        numeros[sudoku[i][x]] += 1;
    }

    return 1;
}

int verificaQuadrado(int x){
    int numeros[10];
    int linha = 3*(x/3), coluna = 3*(x%3);

    for(int i = 0; i < 10; ++i){
        numeros[i] = 0;
    }

    for(int i = 0; i < 3; ++i){
        for(int j = 0; j < 3; ++j){
            if(numeros[sudoku[linha + i][coluna + j]])  return 0;
            numeros[sudoku[linha + i][coluna + j]] += 1;
        }
    }

    return 1;
}

int main(){
    int n;
    char* resposta;

    scanf("%d", &n);

    for(int k = 1; k <= n; ++k){
        for(int i = 0; i < 9; ++i){
            for(int j = 0; j < 9; ++j){
                scanf("%d", &sudoku[i][j]);
            }
        }

        printf("Instancia %d\n", k);

        resposta = "SIM";
        for(int i = 0; i < 9; ++i){
            if(!verificaLinha(i) || !verificaColuna(i) || !verificaQuadrado(i)){
                resposta = "NAO";
                break;
            }
        }

        printf("%s\n\n", resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <set>

using namespace std;

int sudoku[9][9];

bool verificaLinha(int x){
    set<int> numeros;

    for(int i = 0; i < 9; ++i){
        numeros.insert(sudoku[x][i]);
    }

    return numeros.size() == 9;
}

bool verificaColuna(int x){
    set<int> numeros;

    for(int i = 0; i < 9; ++i){
        numeros.insert(sudoku[i][x]);
    }

    return numeros.size() == 9;
}

bool verificaQuadrado(int x){
    set<int> numeros;
    int linha = 3*(x/3), coluna = 3*(x%3);

    for(int i = 0; i < 3; ++i){
        for(int j = 0; j < 3; ++j){
            numeros.insert(sudoku[linha + i][coluna + j]);
        }
    }

    return numeros.size() == 9;
}

int main(){
    int n;
    string resposta;

    cin >> n;
    for(int k = 1; k <= n; ++k){
        for(int i = 0; i < 9; ++i){
            for(int j = 0; j < 9; ++j){
                cin >> sudoku[i][j];
            }
        }

        cout << "Instancia " << k << endl;

        resposta = "SIM";
        for(int i = 0; i < 9; ++i){
            if(!verificaLinha(i) || !verificaColuna(i) || !verificaQuadrado(i)){
                resposta = "NAO";
                break;
            }
        }

        cout << resposta << endl << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const verificaLinha = (sudoku, x) => {
    const numeros = new Set(sudoku[x]);
    return numeros.size === 9;
};

const verificaColuna = (sudoku, x) => {
    const numeros = new Set(sudoku.map((linha) => linha[x]));
    return numeros.size === 9;
}

const verificaQuadrado = (sudoku, x) => {
    let numeros = new Set();
    const linha = 3*(Math.floor(x/3)), coluna = 3*(x%3);

    for(let i = 0; i < 3; ++i){
        for(let j = 0; j < 3; ++j){
            numeros.add(sudoku[linha + i][coluna + j]);
        }
    }

    return numeros.size === 9;
}

let n = lines.shift();

for(let k = 1; k <= n; ++k){
    let sudoku = [];

    for(let i = 0; i < 9; ++i){
        sudoku.push(lines.shift().trim().split(' ').map((x) => parseInt(x)));
    }

    console.log(`Instancia ${k}`);

    let resposta = "SIM";
    for(let i = 0; i < 9; ++i){
        if(!verificaLinha(sudoku, i) || !verificaColuna(sudoku, i) || !verificaQuadrado(sudoku, i)){
            resposta = "NAO";
            break;
        }
    }

    console.log(resposta);
    console.log();
}
```

### Python 3.9
```python
def verificaLinha(sudoku, x):
    numeros = set(sudoku[x])
    return len(numeros) == 9


def verificaColuna(sudoku, x):
    numeros = set([sudoku[i][x] for i in range(9)])
    return len(numeros) == 9


def verificaQuadrado(sudoku, x):
    linha, coluna = 3*(x//3), 3*(x % 3)
    numeros = set([sudoku[linha+i][coluna+j]
                  for i in range(3) for j in range(3)])
    return len(numeros) == 9


n = int(input())
for k in range(1, n + 1):
    sudoku = []

    for i in range(9):
        sudoku.append([int(x) for x in input().strip().split(' ')])

    print(f"Instancia {k}")

    resposta = "SIM"
    for i in range(9):
        if(not verificaLinha(sudoku, i) or not verificaColuna(sudoku, i) or not verificaQuadrado(sudoku, i)):
            resposta = "NAO"

    print(resposta)
    print()
```