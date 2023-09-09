# 1467 - Zerinho ou Um

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1467)

## Solução

Existem várias formas de resolver esse problema, incluindo fazer todos os _if_s prováveis para decidir cada vitória. No caso dos códigos abaixo, segui uma abordagem de primeiro contar a soma de todos os números. Se a soma der 1, significa que só uma pessoa colocou 1. Se a soma der 2, significa que só uma pessoa colocou 0. Logo, primeiro fazemos a soma e depois perguntamos quem foi a pessoa que colocou 1 ou 0.

### C99
```c
#include <stdio.h>

int main()
{
    int A, B, C;

    while (scanf("%d %d %d", &A, &B, &C) != EOF)
    {
        if (A + B + C == 1)
        {
            if (A == 1)
                printf("A\n");
            else if (B == 1)
                printf("B\n");
            else
                printf("C\n");
        }
        else if (A + B + C == 2)
        {
            if (A == 0)
                printf("A\n");
            else if (B == 0)
                printf("B\n");
            else
                printf("C\n");
        }
        else
            printf("*\n");
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
    int A, B, C;

    while (cin >> A >> B >> C)
    {
        if (A + B + C == 1)
        {
            if (A == 1)
                cout << 'A' << endl;
            else if (B == 1)
                cout << 'B' << endl;
            else
                cout << 'C' << endl;
        }
        else if (A + B + C == 2)
        {
            if (A == 0)
                cout << 'A' << endl;
            else if (B == 0)
                cout << 'B' << endl;
            else
                cout << 'C' << endl;
        }
        else
        {
            cout << '*' << endl;
        }
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> jogadas = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int A = jogadas[0];
            int B = jogadas[1];
            int C = jogadas[2];

            if(A + B + C == 1){
                if(A == 1)  Console.WriteLine("A");
                if(B == 1)  Console.WriteLine("B");
                if(C == 1)  Console.WriteLine("C");
            }else if(A + B + C == 2){
                if(A == 0)  Console.WriteLine("A");
                if(B == 0)  Console.WriteLine("B");
                if(C == 0)  Console.WriteLine("C");
            }else{
                Console.WriteLine("*");
            }
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");

            int A = Integer.parseInt(entrada[0]);
            int B = Integer.parseInt(entrada[1]);
            int C = Integer.parseInt(entrada[2]);

            if(A + B + C == 1){
                if(A == 1)  System.out.println("A");
                if(B == 1)  System.out.println("B");
                if(C == 1)  System.out.println("C");
            }else if(A + B + C == 2){
                if(A == 0)  System.out.println("A");
                if(B == 0)  System.out.println("B");
                if(C == 0)  System.out.println("C");
            }else{
                System.out.println("*");
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
  let [A, B, C] = lines.shift().trim().split(" ").map((x) => parseInt(x));

  if (A + B + C === 1) {
    if (A === 1) console.log("A");
    else if (B === 1) console.log("B");
    else console.log("C");
  } else if (A + B + C == 2) {
    if (A === 0) console.log("A");
    else if (B === 0) console.log("B");
    else console.log("C");
  } else console.log("*");
}
```

### Python 3.9
```py
while True:
    try:
        A, B, C = [int(x) for x in input().strip().split(' ')]

        if(A + B + C == 1):
            if(A == 1):
                print('A')
            elif(B == 1):
                print('B')
            else:
                print('C')
        elif(A + B + C == 2):
            if(A == 0):
                print('A')
            elif(B == 0):
                print('B')
            else:
                print('C')
        else:
            print('*')
    except EOFError:
        break
```