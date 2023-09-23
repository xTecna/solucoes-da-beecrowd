# 1921 - Guilherme e Suas Pipas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1921)

## Solução

A quantidade de barbantes necessário para ligar todos os pares de pontas não vizinhas em uma pipa de $n$ lados é equivalente ao número de diagonais de um polígono de $n$ lados. O número de diagonais $d$ de tal polígono é $d = \frac{n(n - 3)}{2}$ que pode ser interpretado basicamente como cada ponta $n$ precisar ser ligada a outras $n - 3$ pontas (excluindo os dois vizinhos de cada lado e si mesmo), dividido por dois para não contar cada diagonal duas vezes.

> O limite superior de resposta para esse problema é na ordem dos 10 dígitos, então em algumas linguagens é importante evidenciar que se trata de um número _long_.

### C99
```c
#include <stdio.h>

int main()
{
    int n;

    scanf("%d", &n);

    printf("%lld\n", ((long long int)n * (n - 3)) / 2);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main()
{
    int n;

    cin >> n;

    cout << ((long long int)n * (n - 3)) / 2 << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        int n = int.Parse(Console.ReadLine());

        Console.WriteLine(((long)n * (n - 3)) / 2);
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

        int n = Integer.parseInt(in.readLine());

        System.out.println(((long)n * (n - 3)) / 2);
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let n = parseInt(lines.shift());

console.log((n * (n - 3)) / 2);
```

### Python 3.9
```py
n = int(input())

print((n * (n - 3))//2)
```