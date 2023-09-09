# 1198 - O Bravo Guerreiro Hashmat

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1198)

## Solução

Basicamente calcular a diferença absoluta de soldados entre os dois exércitos.

> Este problema envolve números grandes, então tome as precauções necessárias para evitar overflow na sua linguagem de programação escolhida.

> Dito isso, não é necessário usar BigInt em JavaScript!

### C99
```c
#include <stdlib.h>
#include <stdio.h>

int main()
{
    long long int hashmat, oponente;

    while (scanf("%lld %lld", &hashmat, &oponente) != EOF)
    {
        printf("%lld\n", hashmat > oponente ? hashmat - oponente : oponente - hashmat);
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
    unsigned long long int a, b;

    while (cin >> a >> b)
    {
        cout << (a > b ? a - b : b - a) << endl;
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            List<long> guerreiros = entrada.Trim().Split(' ').Select(x => long.Parse(x)).ToList();
            Console.WriteLine(Math.Abs(guerreiros[0] - guerreiros[1]));
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] guerreiros = in.readLine().trim().split(" ");

            long hashmat = Long.parseLong(guerreiros[0]);
            long oponente = Long.parseLong(guerreiros[1]);

            System.out.println(Math.abs(hashmat - oponente));
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

lines.pop();

let p = 0;
while (p < lines.length) {
    let [hashmat, oponente] = lines[p++].trim().split(' ').map((x) => parseInt(x));

    console.log(`${hashmat > oponente ? hashmat - oponente : oponente - hashmat}`);
}
```

### Python 3.9
```py
while True:
    try:
        hashmat, oponente = [int(x) for x in input().strip().split(' ')]

        print(f'{hashmat - oponente if hashmat > oponente else oponente - hashmat}')
    except EOFError:
        break
```