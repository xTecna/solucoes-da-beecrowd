# 1848 - Corvo Contador

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1848)

## Solução

O enunciado nos diz que as piscadas do corvo podem ser consideradas números em binário, com o `*` representando `1` e `-` representando `0`. Com isso, se seguirmos o algoritmo de conversão de bases apresentado [neste material](../../../base-teorica/matematica/base-numerica/README.md#conversão-de-qualquer-base-para-decimal), podemos descobrir qual seria o valor decimal e sempre somá-lo na nossa resposta.

### C99

```c
#include <string.h>
#include <stdio.h>

int converte(char *linha)
{
    int soma = 0, n = strlen(linha);

    for (int i = 0; i < n; ++i)
    {
        if (linha[i] == '*')
        {
            soma += 1 << (n - i - 1);
        }
    }

    return soma;
}

int main()
{
    int soma = 0;
    char linha[10];

    while (scanf("%[^\n]\n", &linha) != EOF)
    {
        if (strcmp(linha, "caw caw") == 0)
        {
            printf("%d\n", soma);
            soma = 0;
        }
        else
        {
            soma += converte(linha);
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int converte(string linha)
{
    int soma = 0, n = linha.length();

    for (int i = 0; i < n; ++i)
    {
        if (linha[i] == '*')
        {
            soma += 1 << (n - i - 1);
        }
    }

    return soma;
}

int main()
{
    int soma = 0;
    string linha;

    while (getline(cin, linha))
    {
        if (linha == "caw caw")
        {
            cout << soma << endl;
            soma = 0;
        }
        else
        {
            soma += converte(linha);
        }
    }

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static int converte(string linha)
    {
        int soma = 0, n = linha.Length;

        for (int i = 0; i < n; ++i)
        {
            if (linha[i] == '*')
            {
                soma += 1 << (n - i - 1);
            }
        }

        return soma;
    }

    static void Main(string[] args)
    {
        int soma = 0;
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            if (entrada == "caw caw")
            {
                Console.WriteLine(soma);
                soma = 0;
            }
            else
            {
                soma += converte(entrada);
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
    public static int converte(String linha) {
        int soma = 0, n = linha.length();

        for (int i = 0; i < n; ++i) {
            if (linha.charAt(i) == '*') {
                soma += 1 << (n - i - 1);
            }
        }

        return soma;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int soma = 0;

        while (in.ready()) {
            String linha = in.readLine();

            if (linha.equals("caw caw")) {
                System.out.println(soma);
                soma = 0;
            } else {
                soma += converte(linha);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const converte = (linha) => {
    let soma = 0, n = linha.length;

    for (let i = 0; i < n; ++i) {
        if (linha[i] === '*') {
            soma += 1 << (n - i - 1);
        }
    }

    return soma;
};

let soma = 0;
while (lines.length) {
    let linha = lines.shift().trim();

    if (linha === 'caw caw') {
        console.log(soma);
        soma = 0;
    } else {
        soma += converte(linha);
    }
}
```

### Python 3.9

```py
def converte(linha):
    return sum([1 << (len(linha) - i - 1) for i in range(len(linha)) if linha[i] == '*'])


soma = 0
while True:
    try:
        linha = input().strip()

        if(linha == 'caw caw'):
            print(soma)
            soma = 0
        else:
            soma += converte(linha)
    except EOFError:
        break
```