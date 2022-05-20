# 1557 - Matriz Quadrada III

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1557)

## Solução

Para este problema, fiz algumas gambiarras com as linguagens C, Java 14 e Python 3.9. Se alguém conhecer alguma solução melhor para essas linguagens, por favor, faça um pull request. ❤ Perceba que essa abordagem faz o problema [1478 - Matriz Quadrada II](../1478/README.md) passar em Java 14.

Para dúvidas de formatação, consulte o problema [1435 - Matriz Quadrada I](../1435/README.md). Para as linguagens C, Java 14 e Python 3.9, tudo que eu fiz foi construir cada célula baseada no seu valor e no espaçamento.

O espaçamento é calculado através do maior valor possível de ser alcançado na célula (`2^(2 * n - 2)`, o que pode ser simplificado para `4^(n - 1)`, mas a expressão anterior é bem mais fácil de calcular). Tendo o valor máximo, sabemos que a quantidade de dígitos de um número maior que zero é sempre o piso do seu logaritmo na base 10 (estamos usando números na base decimal) mais 1 (não é exatamente o teto porque temos que considerar os números `10` e `100` como números com `2` e `3` dígitos, por exemplo).

### C99

```c
#include <stdio.h>
#include <math.h>

int digitos(int numero)
{
    return floor(log10(numero)) + 1;
}

void imprime(int numero, int espaco_maximo)
{
    char *resultado = (char *)malloc((espaco_maximo + 1) * sizeof(char));

    int i = espaco_maximo - 1;
    while (numero > 0)
    {
        resultado[i--] = (numero % 10) + '0';
        numero /= 10;
    }
    for (; i > -1; --i)
    {
        resultado[i] = ' ';
    }
    resultado[espaco_maximo] = '\0';

    printf("%s", resultado);
    free(resultado);
}

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        if (N == 0)
        {
            break;
        }

        int limite = digitos(1 << (2 * N - 2));

        for (int i = 0; i < N; ++i)
        {
            imprime(1 << i, limite);
            for (int j = 1; j < N; ++j)
            {
                printf(" ");
                imprime(1 << (i + j), limite);
            }
            printf("\n");
        }
        printf("\n");
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

int digitos(int numero)
{
    return floor(log10(numero)) + 1;
}

int main()
{
    int N;

    while (cin >> N)
    {
        if (N == 0)
        {
            break;
        }

        int limite = digitos(1 << (2 * N - 2));

        for (int i = 0; i < N; ++i)
        {
            cout << setw(limite) << setfill(' ') << (1 << i);
            for (int j = 1; j < N; ++j)
            {
                cout << " " << setw(limite) << setfill(' ') << (1 << i + j);
            }
            cout << endl;
        }
        cout << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;

class URI
{
    static int digitos(int numero)
    {
        return (int)Math.Floor(Math.Log10(numero)) + 1;
    }

    static string espaco(int numero, int limite)
    {
        string resposta = numero.ToString();

        int espacos = limite - resposta.Length;
        for (int i = 0; i < espacos; ++i)
        {
            resposta = " " + resposta;
        }

        return resposta;
    }

    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada);

            if (N == 0)
            {
                break;
            }

            int limite = digitos(1 << (2 * N - 2));

            for (int i = 0; i < N; ++i)
            {
                Console.Write((1 << i).ToString().padLeft(limite));
                for (int j = 1; j < N; ++j)
                {
                    Console.Write($" {(1 << (i + j)).ToString().PadLeft(limite)}");
                }
                Console.WriteLine("");
            }
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
import java.lang.Math;

public class Main {
    public static int digitos(int numero) {
        return (int) Math.floor(Math.log10(numero)) + 1;
    }

    public static String espaco(int numero, int limite) {
        String resposta = Integer.toString(numero);

        int espacos = limite - resposta.length();
        for (int i = 0; i < espacos; ++i) {
            resposta = " " + resposta;
        }

        return resposta;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());

            if (N == 0) {
                break;
            }

            int limite = digitos(1 << (2 * N - 2));

            for (int i = 0; i < N; ++i) {
                System.out.print(espaco(1 << i, limite));
                for (int j = 1; j < N; ++j) {
                    System.out.printf(" %s", espaco(1 << (i + j), limite));
                }
                System.out.println("");
            }
            System.out.println("");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let digitos = (numero) => Math.floor(Math.log10(numero)) + 1;

while (lines.length) {
    let N = parseInt(lines.shift());

    if (N === 0) {
        break;
    }

    let limite = digitos(1 << (2 * N - 2));

    for (let i = 0; i < N; ++i) {
        let linha = [];
        linha.push((1 << i).toString().padStart(limite));
        for (let j = 1; j < N; ++j) {
            linha.push((1 << (i + j)).toString().padStart(limite));
        }
        console.log(linha.join(' '));
    }

    console.log('');
}
```

### Python 3.9

```py
import math


def digitos(numero):
    return math.floor(math.log10(numero)) + 1


def espaco(numero, limite):
    return ' ' * (limite - len(str(numero))) + str(numero)


while True:
    try:
        N = int(input())

        if(N == 0):
            break

        limite = digitos(1 << (2 * N - 2))

        for i in range(N):
            print(espaco(1 << i, limite), end='')
            for j in range(1, N):
                print(f' {espaco(1 << (i + j), limite)}', end='')
            print('')
        print('')
    except EOFError:
        break
```