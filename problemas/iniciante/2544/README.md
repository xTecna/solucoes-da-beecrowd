# 2544 - Kage Bunshin no Jutsu

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2544)

## Solução

O problema fala sobre `N` cópias de um ninja, mas acho que o termo mais correto seria `N` ninjas, já que pelo próprio caso de teste podemos ver que pra 1 ninja, a técnica foi feita 0 vezes. Se fosse 1 cópia de ninja, a técnica teria sido feita 1 vez, pois teria o próprio ninja e uma cópia dele.

Dito isso, saber quantas vezes a técnica foi aplicada é uma questão de tirar o logaritmo na base 2 do número de ninjas, já que cada vez que a técnica é usada, o número de ninjas dobra. Ou seja, a resposta é $\log_{2}(N)$.

### C99

```c
#include <stdio.h>
#include <math.h>

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        printf("%d\n", (int)(log(N) / log(2)));
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int N;

    while (cin >> N)
    {
        cout << (int)(log(N) / log(2)) << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            Console.WriteLine((int)(Math.Log(int.Parse(entrada))/Math.Log(2)));
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
            int N = Integer.parseInt(in.readLine());
            System.out.println((int) (Math.log(N) / Math.log(2)));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());
    console.log(Math.floor(Math.log(N) / Math.log(2)).toFixed(0));
}
```

### Python 3.9

```py
import math

while True:
    try:
        N = int(input())
        print(int(math.log(N, 2)))
    except EOFError:
        break
```