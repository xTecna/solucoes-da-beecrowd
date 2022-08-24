# 1957 - Converter para Hexadecimal

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1957)

## Solução

Apesar de termos um material sobre [bases numéricas](../../../base-teorica/matematica/base-numerica/README.md), todos os códigos abaixo apresentam truques que podem ser usados em cada linguagem para resolver o problema com o menor número de linhas possível aproveitando os recursos que cada linguagem tem para representar números em diferentes bases numéricas.

Esse método funciona porque apesar dos números serem recebidos como números decimais, o computador na verdade os armazena como números binários e na hora de imprimir, ele pode imprimir no formato que desejarmos. O número permanece sendo o mesmo, a única coisa que mudamos é a forma como ele é exibido no sistema (por isso que todas essas "conversões" estão sendo feitas nos métodos de impressão das linguagens).

### C99

```c
#include <stdio.h>

int main()
{
    int V;

    scanf("%d", &V);
    printf("%X\n", V);

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
    int V;

    cin >> V;
    cout << hex << uppercase << V << endl;

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
        int V = int.Parse(Console.ReadLine());
        Console.WriteLine($"{V:X}");
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

        int V = Integer.parseInt(in.readLine());
        System.out.println(String.format("%X", V));
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let V = parseInt(lines.shift());
console.log(V.toString(16).toUpperCase());
```

### Python 3.9

```py
V = int(input())
print(f'{V:X}')
```