# 1218 - Getline Three - Calçados

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1218)

## Solução

> Podemos considerar que a entrada sempre vai ter o formato de um número entre `20` e `44` (ou seja, sempre dois dígitos), um caractere de espaço, uma letra (`M` ou `F`) e outro caractere de espaço, num total de 5 caracteres para cada sapato.

Com isso, podemos usar uma tática parecida com a do problema [1217 - Getline Two - Frutas](../1217/README.md) para a obtenção das informações em linguagens de baixo nível.

### C99
```c
#include <string.h>
#include <stdio.h>

int main()
{
    char genero, linha[1000];
    int caso, tamanho_desejado, masculino, feminino, tamanho;

    caso = 0;
    while (scanf("%d\n", &tamanho_desejado) != EOF)
    {
        if (caso > 0)
            printf("\n");

        scanf("%[^\n]\n", &linha);

        masculino = feminino = 0;
        for (int i = 0; i < strlen(linha); i += 5)
        {
            tamanho = 10 * (linha[i] - '0') + (linha[i + 1] - '0');
            genero = linha[i + 3];

            if (tamanho == tamanho_desejado)
            {
                if (genero == 'F')
                    ++feminino;
                else
                    ++masculino;
            }
        }

        printf("Caso %d:\n", ++caso);
        printf("Pares Iguais: %d\nF: %d\nM: %d\n", feminino + masculino, feminino, masculino);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <sstream>

using namespace std;

int main()
{
    char genero;
    string linha;
    stringstream fluxo;
    int caso, tamanho_desejado, feminino, masculino, tamanho;

    caso = 0;
    while (cin >> tamanho_desejado)
    {
        if (caso > 0)
            cout << endl;

        cin.ignore();
        getline(cin, linha);

        feminino = masculino = 0;

        fluxo.clear();
        fluxo << linha;
        while (fluxo >> tamanho >> genero)
        {
            if (tamanho == tamanho_desejado)
            {
                if (genero == 'F')
                    ++feminino;
                else
                    ++masculino;
            }
        }

        cout << "Caso " << ++caso << ':' << endl;
        cout << "Pares Iguais: " << feminino + masculino << endl;
        cout << "F: " << feminino << endl;
        cout << "M: " << masculino << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let caso = 0;

while(lines.length){
    if(caso > 0)    console.log('');

    let tamanho_desejado = parseInt(lines.shift().trim());
    let sapatos = lines.shift().trim().split(' ');

    let [feminino, masculino] = [0, 0];
    for(let i = 0; i < sapatos.length; i += 2){
        let [tamanho, genero] = [parseInt(sapatos[i]), sapatos[i + 1]];

        if(tamanho === tamanho_desejado){
            if(genero === 'F')  ++feminino;
            else                ++masculino;
        }
    }

    console.log(`Caso ${++caso}:`);
    console.log(`Pares Iguais: ${feminino + masculino}`);
    console.log(`F: ${feminino}`);
    console.log(`M: ${masculino}`);
}
```

### Python 3.9
```python
caso = 0

while True:
    try:
        tamanho_desejado = int(input())
        sapatos = input().strip().split(' ')
        
        if(caso > 0):
            print("")

        feminino, masculino = 0, 0

        for i in range(0, len(sapatos), 2):
            tamanho, genero = int(sapatos[i]), sapatos[i + 1]

            if(tamanho == tamanho_desejado):
                if(genero == "F"):
                    feminino += 1
                else:
                    masculino += 1
        
        caso += 1
        print(f"Caso {caso}:")
        print(f"Pares Iguais: {feminino + masculino}")
        print(f"F: {feminino}")
        print(f"M: {masculino}")
    except EOFError:
        break
```