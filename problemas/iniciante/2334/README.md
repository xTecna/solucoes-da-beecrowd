# 2334 - Patinhos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2334)

## Solução

Esse problema só é trivial em Python, em outras linguagens é necessário fazer operações com `BigInt`. Em todos os códigos eu fiz essas operações manualmente, como você diminuiria um em uma subtração normal, mas existem bibliotecas que podem ser usadas em Java e JavaScript para tal.

### C99

```c
#include <string.h>
#include <stdio.h>

int main()
{
    char P[21];

    while (scanf("%s\n", &P) != EOF)
    {
        if (strcmp(P, "-1") == 0)
        {
            break;
        }

        if (strcmp(P, "0") != 0)
        {
            int n = strlen(P) - 1;
            while (P[n] == '0')
            {
                P[n--] = '9';
            }
            --P[n];
        }

        int n = 0;
        if (strlen(P) > 1 && P[0] == '0')
        {
            n = 1;
        }

        printf("%s\n", P + n);
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
    string P;

    while (cin >> P)
    {
        if (P == "-1")
        {
            break;
        }

        if (P != "0")
        {
            int n = P.length() - 1;
            while (P[n] == '0')
            {
                P[n--] = '9';
            }
            --P[n];
        }

        if (P.length() > 1 && P[0] == '0')
        {
            P = P.substr(1);
        }

        cout << P << endl;
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
            if(entrada == "-1"){
                break;
            }

            List<char> P = entrada.Trim().ToCharArray().ToList();

            if(entrada != "0"){
                int n = P.Count() - 1;
                while(P[n] == '0'){
                    P[n--] = '9';
                }
                --P[n];
            }

            if(P.Count() > 1 && P[0] == '0'){
                P.RemoveAt(0);
            }

            Console.WriteLine(string.Join("", P));
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String entrada = in.readLine();

            if (entrada.equals("-1")) {
                break;
            }

            char[] P = entrada.trim().toCharArray();

            if (!entrada.equals("0")) {
                int n = P.length - 1;
                while (P[n] == '0') {
                    P[n--] = '9';
                }
                --P[n];
            }

            if (entrada.length() > 1 && P[0] == '0') {
                P = Arrays.copyOfRange(P, 1, P.length);
            }

            System.out.println(P);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');
lines.pop();

let p = 0;
while (p < lines.length) {
    let entrada = lines[p++].trim();
    let P = entrada.split('');

    if (entrada !== '0') {
        let n = P.length - 1;
        while (P[n] === '0') {
            P[n--] = '9';
        }
        P[n] = (parseInt(P[n]) - 1).toString();
    }

    if (entrada.length > 1 && P[0] === '0') {
        P = P.splice(1);
    }

    console.log(P.join(''));
}
```

### Python 3.9

```py
while True:
    try:
        P = int(input())

        if(P == -1):
            break

        print(max(0, P - 1))
    except EOFError:
        break
```