# 1197 - Volta à Faculdade de Física

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1197)

## Solução

> O problema menciona velocidade inicial e aceleração constante, dando a entender que se trata de um movimento uniformemente variado. Entretanto, na realidade, se trata de um movimento uniforme, sem aceleração.

Tecnicamente falando, o enunciado está de fato correto porque fala de aceleração constante, mas essa aceleração no caso é $0$. Você acabou de conhecer Shariah Manzoor, prazer.

Podemos calcular a distância percorrida por uma partícula em movimento uniforme da seguinte forma

$\Delta_s = vt$

Então, para calcularmos o deslocamento em $2t$, basta trocarmos $t$ por $2t$ na equação acima.

> Não me pergunte porque aquele ternário do JavaScript existe.

### C99
```c
#include <stdio.h>

int main()
{
    int v, t;

    while (scanf("%d %d", &v, &t) != EOF)
    {
        printf("%d\n", v * 2 * t);
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
    int v, t;

    while (cin >> v >> t)
    {
        cout << v * 2 * t << endl;
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
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> vt = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int v = vt[0];
            int t = vt[1];

            Console.WriteLine(v * 2 * t);
        }
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

        while(in.ready()){
            String[] vt = in.readLine().trim().split(" ");

            int v = Integer.parseInt(vt[0]);
            int t = Integer.parseInt(vt[1]);

            System.out.println(v * 2 * t);
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let [v, t] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(v * 2 * t === -0 ? 0 : v * 2 * t);
}
```

### Python 3.9
```py
while True:
    try:
        v, t = [int(x) for x in input().strip().split(' ')]

        print(v * 2 * t)
    except EOFError:
        break
```