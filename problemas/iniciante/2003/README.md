# 2003 - Domingo de Manhã

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2003)

## Solução

Converter a data para um padrão de minutos desde meia noite ajuda demais a calcular o número de minutos passados depois das oito. Se o horário é menor que oito horas entretanto, não há atraso. Isso pode ser resolvido colocando um limite inferior de 0 na resposta.

### C99

```c
#include <stdio.h>

int max(int a, int b)
{
    return a < b ? b : a;
}

int main()
{
    int hora, minuto;

    while (scanf("%d:%d\n", &hora, &minuto) != EOF)
    {
        int total = hora * 60 + minuto;
        printf("Atraso maximo: %d\n", max(0, total + 60 - 8 * 60));
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cstdio>

using namespace std;

int main()
{
    int hora, minuto;

    while (scanf("%d:%d\n", &hora, &minuto) != EOF)
    {
        int total = hora * 60 + minuto;
        printf("Atraso maximo: %d\n", max(0, total + 60 - 8 * 60));
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Linq;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        string entrada;

        while ((entrada = Console.ReadLine()) != null){
            int[] numeros = entrada.Trim().Split(':').Select(x => int.Parse(x)).ToArray();

            int total = numeros[0] * 60 + numeros[1];
            Console.WriteLine($"Atraso maximo: {Math.Max(0, total + 60 - 8 * 60)}");
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(":");
            int hora = Integer.parseInt(entrada[0]);
            int minuto = Integer.parseInt(entrada[1]);

            int total = hora * 60 + minuto;

            System.out.printf("Atraso maximo: %d\n", Math.max(0, total + 60 - 8 * 60));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let [hora, minuto] = lines.shift().trim().split(':').map(x => parseInt(x));

    let total = hora * 60 + minuto;
    console.log(`Atraso maximo: ${Math.max(0, total + 60 - 8 * 60)}`);
}
```

### Python 3.9

```py
while True:
    try:
        hora, minuto = [int(x) for x in input().strip().split(':')]
        total = hora * 60 + minuto
        print(f'Atraso maximo: {max(0, total + 60 - 8 * 60)}')
    except EOFError:
        break
```