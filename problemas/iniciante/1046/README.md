# 1046 - Tempo de Jogo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1046)

## Solução

Vide problema [1103 - Alarme Despertador](../../ad-hoc/1103/README.md) para entender a lógica para resolver este problema, exceto que este daqui é mais simples pois só pede por diferença entre horas, enquanto no outro é diferença entre horas e minutos.

### C99

```c
#include <stdio.h>

int main()
{
    int hora_inicial, hora_final;

    scanf("%d %d", &hora_inicial, &hora_final);

    if (hora_final <= hora_inicial)
        hora_final += 24;

    printf("O JOGO DUROU %d HORA(S)\n", hora_final - hora_inicial);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int inicio, fim;

    cin >> inicio >> fim;

    if (inicio > fim)
    {
        fim += 24;
    }

    if (fim == inicio)
    {
        cout << "O JOGO DUROU 24 HORA(S)" << endl;
    }
    else
    {
        cout << "O JOGO DUROU " << fim - inicio << " HORA(S)" << endl;
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
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        int hora_inicial = entrada[0];
        int hora_final = entrada[1];
        
        if(hora_final <= hora_inicial)
            hora_final += 24;
        
        Console.WriteLine($"O JOGO DUROU {hora_final - hora_inicial} HORA(S)");
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
        int hora_inicial = Integer.parseInt(entrada[0]);
        int hora_final = Integer.parseInt(entrada[1]);
        
        if(hora_final <= hora_inicial)
            hora_final += 24;
        
        System.out.printf("O JOGO DUROU %d HORA(S)\n", hora_final - hora_inicial);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [hora_inicial, hora_final] = lines.shift().split(' ').map((x) => parseInt(x));

if (hora_final <= hora_inicial)
    hora_final += 24;

console.log(`O JOGO DUROU ${hora_final - hora_inicial} HORA(S)`);
```

### Python 3.9

```py
hora_inicial, hora_final = [int(x) for x in input().split(' ')]

if(hora_final <= hora_inicial):
    hora_final += 24

print(f'O JOGO DUROU {hora_final - hora_inicial} HORA(S)')
```