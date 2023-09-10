# 2763 - Entrada e Saída CPF

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2763)

## Solução

Verifique cada código para entender como receber a entrada, seja por formatação ou usando a função `split` para diversos separadores.

Esse problema é uma versão mais complicada do problema [2764 - Entrada e Saída de Data](../2764/README.md), por conter um separador a mais.

### C99

```c
#include <stdio.h>

int main()
{
    int X, Y, Z, D;

    scanf("%d.%d.%d-%d", &X, &Y, &Z, &D);
    printf("%03d\n%03d\n%03d\n%02d\n", X, Y, Z, D);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int X, Y, Z, D;
    char caractere;

    cin >> X >> caractere >> Y >> caractere >> Z >> caractere >> D;
    cout << setw(3) << setfill('0') << X << endl;
    cout << setw(3) << setfill('0') << Y << endl;
    cout << setw(3) << setfill('0') << Z << endl;
    cout << setw(2) << setfill('0') << D << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string[] CPF = Console.ReadLine().Trim().Split(new char[] {'.', '-'});
        foreach (var trecho in CPF){
            Console.WriteLine(trecho);
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

        String[] CPF = in.readLine().trim().split("[\\.-]");
        for (String trecho : CPF) {
            System.out.println(trecho);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let CPF = lines.shift().trim().split(/[\\.-]/);
for (let trecho of CPF) {
    console.log(trecho);
}
```

### Python 3.9

```py
import re

CPF = re.split('[\\.-]', input().strip())
for trecho in CPF:
    print(trecho)
```