# 2630 - Escala de Cinza

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2630)

## Solução

Você pode criar uma função para cada conversão diferente e fazer uma série de _if_ ou um _switch_ para decidir qual função chamar. Converter os resultados fracionados em inteiro é o suficiente para desprezar a parte decimal.

### C99

```c
#include <stdio.h>

int min(int r, int g, int b)
{
    if (r <= g && r <= b)
    {
        return r;
    }
    if (g <= b)
    {
        return g;
    }
    return b;
}

int mean(int r, int g, int b)
{
    return (r + g + b) / 3;
}

int max(int r, int g, int b)
{
    if (r >= g && r >= b)
    {
        return r;
    }
    if (g >= b)
    {
        return g;
    }
    return b;
}

int eye(int r, int g, int b)
{
    return 0.3 * r + 0.59 * g + 0.11 * b;
}

int main()
{
    int T, R, G, B;
    char conversao[10];

    while (scanf("%d\n", &T) != EOF)
    {
        for (int i = 1; i <= T; ++i)
        {
            scanf("%s\n", &conversao);
            scanf("%d %d %d\n", &R, &G, &B);

            printf("Caso #%d: ", i);
            if (strcmp(conversao, "eye") == 0)
            {
                printf("%d\n", eye(R, G, B));
            }
            else if (strcmp(conversao, "mean") == 0)
            {
                printf("%d\n", mean(R, G, B));
            }
            else if (strcmp(conversao, "min") == 0)
            {
                printf("%d\n", min(R, G, B));
            }
            else if (strcmp(conversao, "max") == 0)
            {
                printf("%d\n", max(R, G, B));
            }
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cmath>

using namespace std;

int min(int r, int g, int b)
{
    return min(r, min(g, b));
}

int max(int r, int g, int b)
{
    return max(r, max(g, b));
}

int mean(int r, int g, int b)
{
    return (r + g + b) / 3;
}

int eye(int r, int g, int b)
{
    return 0.3 * r + 0.59 * g + 0.11 * b;
}

int main()
{
    int T, R, G, B;
    string conversao;

    while (cin >> T)
    {
        for (int i = 1; i <= T; ++i)
        {
            cin >> conversao;
            cin >> R >> G >> B;

            cout << "Caso #" << i << ": ";
            if (conversao == "eye")
            {
                cout << eye(R, G, B) << endl;
            }
            else if (conversao == "mean")
            {
                cout << mean(R, G, B) << endl;
            }
            else if (conversao == "max")
            {
                cout << max(R, G, B) << endl;
            }
            else if (conversao == "min")
            {
                cout << min(R, G, B) << endl;
            }
        }
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;

class URI {
    static int eye(int r, int g, int b){
        return (int)(0.3 * r + 0.59 * g + 0.11 * b);
    }

    static int mean(int r, int g, int b){
        return (r + g + b)/3;
    }

    static int min(int r, int g, int b){
        return Math.Min(r, Math.Min(g, b));
    }

    static int max(int r, int g, int b){
        return Math.Max(r, Math.Max(g, b));
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int T = int.Parse(entrada);

            for(int i = 1; i <= T; ++i){
                string conversao = Console.ReadLine();
                string[] numeros = Console.ReadLine().Trim().Split(' ');
                int R = int.Parse(numeros[0]);
                int G = int.Parse(numeros[1]);
                int B = int.Parse(numeros[2]);

                Console.Write($"Caso #{i}: ");
                if(conversao == "eye"){
                    Console.WriteLine(eye(R, G, B));
                }else if(conversao == "mean"){
                    Console.WriteLine(mean(R, G, B));
                }else if(conversao == "min"){
                    Console.WriteLine(min(R, G, B));
                }else if(conversao == "max"){
                    Console.WriteLine(max(R, G, B));
                }
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
import java.lang.Math;

public class Main {
    public static int eye(int r, int g, int b) {
        return (int) (0.3 * r + 0.59 * g + 0.11 * b);
    }

    public static int mean(int r, int g, int b) {
        return (r + g + b) / 3;
    }

    public static int min(int r, int g, int b) {
        return Math.min(r, Math.min(g, b));
    }

    public static int max(int r, int g, int b) {
        return Math.max(r, Math.max(g, b));
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int T = Integer.parseInt(in.readLine());

            for (int i = 1; i <= T; ++i) {
                String conversao = in.readLine();
                String[] entrada = in.readLine().trim().split(" ");
                int R = Integer.parseInt(entrada[0]);
                int G = Integer.parseInt(entrada[1]);
                int B = Integer.parseInt(entrada[2]);

                System.out.printf("Caso #%d: ", i);
                if (conversao.equals("eye")) {
                    System.out.println(eye(R, G, B));
                } else if (conversao.equals("mean")) {
                    System.out.println(mean(R, G, B));
                } else if (conversao.equals("min")) {
                    System.out.println(min(R, G, B));
                } else if (conversao.equals("max")) {
                    System.out.println(max(R, G, B));
                }
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const eye = (r, g, b) => parseInt(0.3 * r + 0.59 * g + 0.11 * b);
const mean = (r, g, b) => parseInt((r + g + b) / 3);
const min = (r, g, b) => Math.min(r, Math.min(g, b));
const max = (r, g, b) => Math.max(r, Math.max(g, b));

while (lines.length) {
    let T = parseInt(lines.shift());

    for (let i = 1; i <= T; ++i) {
        let conversao = lines.shift().trim();
        let [R, G, B] = lines.shift().trim().split(' ').map(x => parseInt(x));

        let resposta = `Caso #${i}: `;
        if (conversao === "eye") {
            resposta += `${eye(R, G, B)}`;
        } else if (conversao === "mean") {
            resposta += `${mean(R, G, B)}`;
        } else if (conversao === "max") {
            resposta += `${max(R, G, B)}`;
        } else if (conversao === "min") {
            resposta += `${min(R, G, B)}`;
        }
        console.log(resposta);
    }
}
```

### Python 3.9

```py
def eye(r, g, b):
    return int(0.3 * r + 0.59 * g + 0.11 * b)


def mean(r, g, b):
    return int((r + g + b)//3)


while True:
    try:
        T = int(input())

        for i in range(1, T + 1):
            conversao = input()
            R, G, B = [int(x) for x in input().strip().split(' ')]

            print(f'Caso #{i}: ', end='')
            if(conversao == 'eye'):
                print(eye(R, G, B))
            elif(conversao == 'mean'):
                print(mean(R, G, B))
            elif(conversao == 'min'):
                print(min(R, G, B))
            elif(conversao == 'max'):
                print(max(R, G, B))
    except EOFError:
        break
```