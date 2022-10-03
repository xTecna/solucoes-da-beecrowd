# 2727 - Código Secreto

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2727)

## Solução

A letra do código depende de duas coisas:

1. Do número de pontos (1, 2 ou 3 pontos);
2. Da quantidade de vezes que esse pontos são repetidos.

O fator 2 cresce a cada três letras, com as letras `a`, `b` e `c` repetindo uma vez só, `d`, `e` e `f` repetindo duas vezes, e assim por diante. Com isso, se quisermos representar cada letra como um número no intervalo $[0, 25]$, precisamos ter em mente que o fator 2 seria representado na nossa fórmula como $3 \times (r - 1)$, onde $r$ seria o número de vezes que os pontos são repetidos. Daí, para por fim diferenciar entre as três letras de dentro e sabendo que os pontos se repetem apenas entre três valores (`1`, `2` ou `3`), podemos completar a fórmula com $3 \times (r - 1) + t - 1$, onde $t$ é o número de pontos.

Confira [tabela ASCII](../../../base-teorica/strings/ascii/README.md) para conferir como transformar um número no intervalo $[0, 25]$ na sua letra correspondente.

### C99

```c
#include <stdio.h>

int main()
{
    int N;
    char frase[1001];

    while (scanf("%d\n", &N) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            scanf("%[^\n]\n", &frase);

            int qtd = 0, tamanho = 0;
            char *p = strtok(frase, " ");
            while (p != NULL)
            {
                ++qtd;
                tamanho = strlen(p);

                p = strtok(NULL, " ");
            }

            printf("%c\n", 'a' + (3 * (qtd - 1) + tamanho - 1));
        }
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
    int N;
    string frase;

    while (cin >> N)
    {
        cin.ignore();

        for (int i = 0; i < N; ++i)
        {
            getline(cin, frase);

            stringstream ss;
            ss << frase;

            string pontos;
            int qtd = 0, tamanho = 0;
            while (ss >> pontos)
            {
                ++qtd;
                tamanho = pontos.length();
            }

            cout << (char)('a' + (3 * (qtd - 1) + tamanho - 1)) << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            for(int i = 0; i < N; ++i){
                String[] pontos = Console.ReadLine().Trim().Split(' ');
                Console.WriteLine((char) (97 + 3 * (pontos.Length - 1) + pontos[0].Length - 1));
            }
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());

            for (int i = 0; i < N; ++i) {
                String[] pontos = in.readLine().trim().split(" ");
                System.out.println((char) (97 + 3 * (pontos.length - 1) + pontos[0].length() - 1));
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());

    for (let i = 0; i < N; ++i) {
        let pontos = lines.shift().trim().split(' ');
        console.log(String.fromCharCode(97 + 3 * (pontos.length - 1) + pontos[0].length - 1));
    }
}
```

### Python 3.9

```py
while True:
    try:
        N = int(input())

        for _ in range(N):
            pontos = input().strip().split(' ')
            print(chr(ord('a') + 3 * (len(pontos) - 1) + len(pontos[0]) - 1))
    except EOFError:
        break
```