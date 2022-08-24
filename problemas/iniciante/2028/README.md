# 2028 - Sequência de Sequência

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2028)

## Solução

A quantidade de números presentes numa sequência até `N` é a [soma de uma progressão aritmética](../../../base-teorica/matematica/progressoes/README.md#soma-dos-termos-de-a1-até-an-de-uma-progressão-aritmética) que vai de 1 até `N` de razão 1 mais um. Isso acontece porque cada número é repetido seu próprio número de vezes, então temos um 1, dois 2, três 3, etc. Além disso, contamos mais um porque também temos um 0.

Já para imprimir a sequência completa, é uma boa imprimir o zero primeiro e depois imprimir o resto dos números usando dois _loop_ aninhados com um espaço na frente do número a ser impresso.

### C99

```c
#include <stdio.h>

int somaPA(int an)
{
    return (an * (an + 1)) / 2;
}

int main()
{
    int N, k;

    k = 1;
    while (scanf("%d", &N) != EOF)
    {
        printf("Caso %d: %d numero%s\n", k++, somaPA(N) + 1, N == 0 ? "" : "s");

        printf("0");
        for (int i = 1; i <= N; ++i)
        {
            for (int j = 0; j < i; ++j)
            {
                printf(" %d", i);
            }
        }
        printf("\n\n");
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int somaPA(int an)
{
    return (an * (an + 1)) / 2;
}

int main()
{
    int N, k;

    k = 1;
    while (cin >> N)
    {
        cout << "Caso " << k++ << ": " << somaPA(N) + 1 << " numero" << (N == 0 ? "" : "s") << endl;

        cout << 0;
        for (int i = 1; i <= N; ++i)
        {
            for (int j = 0; j < i; ++j)
            {
                cout << ' ' << i;
            }
        }
        cout << endl
             << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static int somaPA(int an)
    {
        return (an * (an + 1)) / 2;
    }

    static void Main(string[] args)
    {
        string entrada;

        int k = 1;
        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada.Trim());

            Console.WriteLine($"Caso {k++}: {somaPA(N) + 1} numero{(N == 0 ? "" : "s")}");

            List<int> resposta = new List<int>();
            resposta.Add(0);
            for (int i = 1; i <= N; ++i)
            {
                for (int j = 0; j < i; ++j)
                {
                    resposta.Add(i);
                }
            }
            Console.WriteLine(string.Join(" ", resposta));
            Console.WriteLine("");
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.BufferedWriter;

public class Main {
    public static int somaPA(int an) {
        return (an * (an + 1)) / 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        OutputStreamWriter osw = new OutputStreamWriter(System.out);
        BufferedWriter out = new BufferedWriter(osw);

        int k = 1;
        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());

            out.write(String.format("Caso %d: %d numero%s\n", k++, somaPA(N) + 1, N == 0 ? "" : "s"));

            out.write("0");
            for (int i = 1; i <= N; ++i) {
                for (int j = 0; j < i; ++j) {
                    out.write(String.format(" %d", i));
                }
            }
            out.write("\n\n");
        }

        out.close();
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const somaPA = (an) => Math.floor(an * (an + 1) / 2);

let k = 1;
while (lines.length) {
    let N = parseInt(lines.shift());

    console.log(`Caso ${k++}: ${somaPA(N) + 1} numero${N === 0 ? '' : 's'}`);

    let linha = '0';
    for (let i = 1; i <= N; ++i) {
        for (let j = 0; j < i; ++j) {
            linha += ` ${i}`;
        }
    }
    console.log(`${linha}\n`);
}
```

### Python 3.9

```py
def somaPA(an):
    return (an * (an + 1))//2


k = 1

while True:
    try:
        N = int(input())

        numero = 'numero' if N == 0 else 'numeros'
        print(f'Caso {k}: {somaPA(N) + 1} {numero}')
        k += 1

        resposta = '0'
        for i in range(1, N + 1):
            resposta += f' {i}' * i

        print(resposta)
        print('')
    except EOFError:
        break
```