# 1047 - Tempo de Jogo com Minutos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1047)

## Solução

Esse problema é uma mistura dos problemas [1103 - Alarme Despertador](../../ad-hoc/1103/README.md) e [1019 - Conversão de Tempo](../1019/README.md).

### C99

```c
#include <stdio.h>

int main()
{
    int h_inicio, m_inicio, h_final, m_final;

    scanf("%d %d %d %d\n", &h_inicio, &m_inicio, &h_final, &m_final);

    int inicio = h_inicio * 60 + m_inicio;
    int final = h_final * 60 + m_final;

    if (final <= inicio)
    {
        final += 24 * 60;
    }

    printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n", (final - inicio) / 60, (final - inicio) % 60);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int h_inicial, m_inicial, h_final, m_final;

    cin >> h_inicial >> m_inicial >> h_final >> m_final;

    int inicial = h_inicial * 60 + m_inicial;
    int final = h_final * 60 + m_final;

    if (final <= inicial)
    {
        final += 24 * 60;
    }

    cout << "O JOGO DUROU " << (final - inicial) / 60 << " HORA(S) E " << (final - inicial) % 60 << " MINUTO(S)" << endl;

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
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

        int inicial = entrada[0] * 60 + entrada[1];
        int final = entrada[2] * 60 + entrada[3];

        if(final <= inicial){
            final += 24 * 60;
        }

        Console.WriteLine($"O JOGO DUROU {(final - inicial) / 60} HORA(S) E {(final - inicial) % 60} MINUTO(S)");
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
    
        String[] entrada = in.readLine().trim().split(" ");

        int h_inicial = Integer.parseInt(entrada[0]);
        int m_inicial = Integer.parseInt(entrada[1]);
        int h_final = Integer.parseInt(entrada[2]);
        int m_final = Integer.parseInt(entrada[3]);

        int comeco = h_inicial * 60 + m_inicial;
        int fim = h_final * 60 + m_final;

        if(fim <= comeco){
            fim += 24 * 60;
        }

        System.out.printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n", (fim - comeco) / 60, (fim - comeco) % 60);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [h_inicial, m_inicial, h_final, m_final] = lines.shift().trim().split(' ').map((x) => parseInt(x));

let inicial = h_inicial * 60 + m_inicial;
let final = h_final * 60 + m_final;

if (final <= inicial) {
    final += 24 * 60;
}

console.log(`O JOGO DUROU ${Math.floor((final - inicial) / 60)} HORA(S) E ${(final - inicial) % 60} MINUTO(S)`);
```

### Python 3.9

```py
[h_inicial, m_inicial, h_final, m_final] = [
    int(x) for x in input().strip().split(' ')]

inicial = h_inicial * 60 + m_inicial
final = h_final * 60 + m_final

if(final <= inicial):
    final += 24 * 60

print(
    f'O JOGO DUROU {(final - inicial) // 60} HORA(S) E {(final - inicial) % 60} MINUTO(S)')
```