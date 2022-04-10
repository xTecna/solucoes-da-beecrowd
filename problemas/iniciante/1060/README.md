# 1060 - Números Positivos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1060)

## Solução

Leia cada número de cada vez e conte apenas os números que são maiores que zero incrementando uma variável de contagem.

### C99

```c
#include <stdio.h>

int main()
{
    double numero;
    int positivos;

    positivos = 0;
    for (int i = 0; i < 6; ++i)
    {
        scanf("%lf", &numero);

        if (numero > 0)
            ++positivos;
    }

    printf("%d valores positivos\n", positivos);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    double numero;
    int positivos;

    positivos = 0;
    for (int i = 0; i < 6; ++i)
    {
        cin >> numero;

        if (numero > 0)
            ++positivos;
    }

    cout << positivos << " valores positivos" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int positivos = 0;
        
        for(int i = 0; i < 6; ++i){
            double numero = double.Parse(Console.ReadLine());
            
            if(numero > 0)
                ++positivos;
        }
        
        Console.WriteLine($"{positivos} valores positivos");
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
        
        int positivos = 0;
        
        for(int i = 0; i < 6; ++i){
            double numero = Double.parseDouble(in.readLine());
            
            if(numero > 0)
                ++positivos;
        }
        
        System.out.printf("%d valores positivos\n", positivos);
    }
}
```

### JavaScript 12.18

```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let positivos = 0;
for(let i = 0; i < 6; ++i){
    let numero = parseFloat(lines.shift().trim());

    if(numero > 0)  ++positivos;
}

console.log(`${positivos} valores positivos`);
```

### Python 3.9

```python
positivos = sum([float(input()) > 0 for _ in range(6)])

print(f"{positivos} valores positivos")
```