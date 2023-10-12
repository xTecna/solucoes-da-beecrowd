# 2762 - Entrada e Saída 6

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2762)

## Solução

Leia a entrada como se fosse uma _string_ que precisa ser dividida por um ponto para pegar as duas partes. Convertendo cada metade em inteiro, podemos inverter na impressão sem se preocupar com zeros à esquerda.

### C99
```c
#include <stdio.h>

int main()
{
    int A, B;

    scanf("%d.%d", &A, &B);
    printf("%d.%d\n", B, A);

    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int main()
{
    int A, B;
    char ponto;

    cin >> A >> ponto >> B;
    cout << B << ponto << A << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        string[] entrada = Console.ReadLine().Trim().Split('.');
        Console.WriteLine($"{int.Parse(entrada[1])}.{int.Parse(entrada[0])}");
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

        String[] entrada = in.readLine().trim().split("\\.");
        System.out.printf("%d.%d\n", Integer.parseInt(entrada[1]), Integer.parseInt(entrada[0]));
    }
}
```

### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B] = lines.shift().trim().split('.').map(x => parseInt(x));
console.log(`${B}.${A}`);
```

### Python 3.9
```py
A, B = [int(x) for x in input().strip().split('.')]
print(f'{B}.{A}')
```