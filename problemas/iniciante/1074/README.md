# 1074 - Par ou Ímpar

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1074)

## Solução

Eu escolhi primeiro testar se é positivo ou negativo porque para algumas linguagens, é problemático conseguir o módulo de um número negativo. Desta maneira, eu pude pegar o valor absoluto do número para fazer o teste de par ou ímpar corretamente.

### C99

```c
#include <stdio.h>

int main()
{
    int N, X;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &X);

        if (X == 0)
        {
            printf("NULL\n");
        }
        else if (X > 0)
        {
            if (X % 2)
            {
                printf("ODD");
            }
            else
            {
                printf("EVEN");
            }
            printf(" POSITIVE\n");
        }
        else
        {
            if (-X % 2)
            {
                printf("ODD");
            }
            else
            {
                printf("EVEN");
            }
            printf(" NEGATIVE\n");
        }
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
    int N, X;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        if (X == 0)
        {
            cout << "NULL" << endl;
        }
        else if (X > 0)
        {
            if (X % 2)
            {
                cout << "ODD";
            }
            else
            {
                cout << "EVEN";
            }
            cout << " POSITIVE" << endl;
        }
        else
        {
            if (-X % 2)
            {
                cout << "ODD";
            }
            else
            {
                cout << "EVEN";
            }
            cout << " NEGATIVE" << endl;
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
        int N, X;

        N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            X = int.Parse(Console.ReadLine());

            if(X == 0){
                Console.WriteLine("NULL");
            }else if(X > 0){
                if(X % 2 == 1){
                    Console.Write("ODD");
                }else{
                    Console.Write("EVEN");
                }
                Console.WriteLine(" POSITIVE");
            }else{
                if(-X % 2 == 1){
                    Console.Write("ODD");
                }else{
                    Console.Write("EVEN");
                }
                Console.WriteLine(" NEGATIVE");
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
        
        int N, X;

        N = Integer.parseInt(in.readLine());

        for(int i = 0; i < N; ++i){
            X = Integer.parseInt(in.readLine());

            if(X == 0){
                System.out.println("NULL");
            }else if(X > 0){
                if(X % 2 == 1){
                    System.out.print("ODD");
                }else{
                    System.out.print("EVEN");
                }
                System.out.println(" POSITIVE");
            }else{
                if(-X % 2 == 1){
                    System.out.print("ODD");
                }else{
                    System.out.print("EVEN");
                }
                System.out.println(" NEGATIVE");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    let retorno = "";
    if (X === 0) {
        retorno += "NULL";
    } else if (X > 0) {
        if (X % 2) {
            retorno += "ODD";
        } else {
            retorno += "EVEN";
        }
        retorno += " POSITIVE";
    } else {
        if (-X % 2) {
            retorno += "ODD";
        } else {
            retorno += "EVEN";
        }
        retorno += " NEGATIVE";
    }

    console.log(retorno);
}
```

### Python 3.9

```py
N = int(input())

for _ in range(N):
    X = int(input())

    retorno = ''
    if(X == 0):
        retorno += 'NULL'
    elif(X > 0):
        if(X % 2):
            retorno += 'ODD'
        else:
            retorno += 'EVEN'
        retorno += ' POSITIVE'
    else:
        if(X % 2):
            retorno += 'ODD'
        else:
            retorno += 'EVEN'
        retorno += ' NEGATIVE'

    print(retorno)
```