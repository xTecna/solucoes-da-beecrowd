# 1827 - Matriz Quadrada IV

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1827)

## Solução

Vide problema [1534 - Matriz 123](../1534/README.md) para entender o raciocínio para detectar a diagonal principal, a diagonal secundária e a lógica da ordem das verificações em si.

Aqui vamos focar apenas em descobrir quais valores precisam ser preenchidos pelo valor `1`. Para o valor `1`, o problema nos indica que o quadrado com `1` sempre começa na posição `tamanho/3` tanto na largura quanto na altura. Isso quer dizer que qualquer célula entre `N/3` e `N - N/3` vai ter o valor `1`, em ambas as coordenadas `x` e `y`. Como a posição `N` não existe, então o limite superior não é incluído, mas o `N/3` é sim incluído.

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            for (int j = 0; j < N; ++j)
            {
                if (i == N / 2 && j == N / 2)
                {
                    printf("4");
                }
                else if (N / 3 <= i && i < N - N / 3 && N / 3 <= j && j < N - N / 3)
                {
                    printf("1");
                }
                else if (i == j)
                {
                    printf("2");
                }
                else if (i == N - 1 - j)
                {
                    printf("3");
                }
                else
                {
                    printf("0");
                }
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

using namespace std;

int main()
{
    int N;

    while (cin >> N)
    {
        for (int i = 0; i < N; ++i)
        {
            for (int j = 0; j < N; ++j)
            {
                if (i == N / 2 && j == N / 2)
                {
                    cout << 4;
                }
                else if (N / 3 <= i && i < N - N / 3 && N / 3 <= j && j < N - N / 3)
                {
                    cout << 1;
                }
                else if (i == j)
                {
                    cout << 2;
                }
                else if (i == N - 1 - j)
                {
                    cout << 3;
                }
                else
                {
                    cout << 0;
                }
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

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada);

            for (int i = 0; i < N; ++i)
            {
                for (int j = 0; j < N; ++j)
                {
                    if (i == N / 2 && j == N / 2)
                    {
                        Console.Write(4);
                    }
                    else if (N / 3 <= i && i < N - N / 3 && N / 3 <= j && j < N - N / 3)
                    {
                        Console.Write(1);
                    }
                    else if (i == j)
                    {
                        Console.Write(2);
                    }
                    else if (i == N - 1 - j)
                    {
                        Console.Write(3);
                    }
                    else
                    {
                        Console.Write(0);
                    }
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

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());

            for (int i = 0; i < N; ++i) {
                for (int j = 0; j < N; ++j) {
                    if (i == N / 2 && j == N / 2) {
                        System.out.print(4);
                    } else if (N / 3 <= i && i < N - N / 3 && N / 3 <= j && j < N - N / 3) {
                        System.out.print(1);
                    } else if (i == j) {
                        System.out.print(2);
                    } else if (i == N - 1 - j) {
                        System.out.print(3);
                    } else {
                        System.out.print(0);
                    }
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
var lines = input.trim().split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());

    for (let i = 0; i < N; ++i) {
        let linha = '';
        for (let j = 0; j < N; ++j) {
            if (i == Math.floor(N / 2) && j === Math.floor(N / 2)) {
                linha += '4';
            } else if (Math.floor(N / 3) <= i && i < N - Math.floor(N / 3) && Math.floor(N / 3) <= j && j < N - Math.floor(N / 3)) {
                linha += '1';
            } else if (i === j) {
                linha += '2';
            } else if (i === N - 1 - j) {
                linha += '3';
            } else {
                linha += '0';
            }
        }
        console.log(linha);
    }
    console.log('');
}
```

### Python 3.9

```py
while True:
    try:
        N = int(input())

        for i in range(N):
            for j in range(N):
                if (i == N // 2 and j == N // 2):
                    print(4, end='')
                elif (N // 3 <= i < N - N // 3 and N // 3 <= j < N - N // 3):
                    print(1, end='')
                elif (i == j):
                    print(2, end='')
                elif (i == N - 1 - j):
                    print(3, end='')
                else:
                    print(0, end='')
            print('')
        print('')
    except EOFError:
        break
```