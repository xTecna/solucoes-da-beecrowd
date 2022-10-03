# 2670 - Máquina de Café

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2670)

## Solução

Como só tem três lugares possíveis para colocar a máquina, podemos pegar o valor mínimo entre essas três possiblidades.

* Se a máquina estiver em $A_{1}$, então o gasto de minutos é de $A_{2} + 2 A_{3}$, já que o pessoal do $A_{3}$ vai ter que subir dois andares.
* Se a máquina estiver em $A_{2}$, então o gasto de minutos é de $A_{1} + A_{3}$, que estão igualmente distantes de $A_{2}$.
* Se a máquina estiver em $A_{3}$, então o gasto de minutos é de $2 A_{1} + A_{2}$, em raciocínio análogo a se a máquina estivesse em $A_{1}$.

No final, multiplique tudo por $2$ por ser caminho de ida e volta.

### C99

```c
#include <stdio.h>

int min(int a, int b)
{
    return a < b ? a : b;
}

int main()
{
    int A1, A2, A3;

    scanf("%d\n%d\n%d\n", &A1, &A2, &A3);
    printf("%d\n", 2 * min(A2 + 2 * A3, min(A1 + A3, 2 * A1 + A2)));

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int A1, A2, A3;

    cin >> A1 >> A2 >> A3;
    cout << 2 * min(A2 + 2 * A3, min(A1 + A3, 2 * A1 + A2)) << endl;

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
        int A1 = int.Parse(Console.ReadLine());
        int A2 = int.Parse(Console.ReadLine());
        int A3 = int.Parse(Console.ReadLine());

        Console.WriteLine(2 * Math.Min(A2 + 2 * A3, Math.Min(A1 + A3, 2 * A1 + A2)));
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

        int A1 = Integer.parseInt(in.readLine());
        int A2 = Integer.parseInt(in.readLine());
        int A3 = Integer.parseInt(in.readLine());

        System.out.println(2 * Math.min(A2 + 2 * A3, Math.min(A1 + A3, 2 * A1 + A2)));
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let A1 = parseInt(lines.shift());
let A2 = parseInt(lines.shift());
let A3 = parseInt(lines.shift());

console.log(2 * Math.min(A2 + 2 * A3, A1 + A3, 2 * A1 + A2));
```

### Python 3.9

```py
A1 = int(input())
A2 = int(input())
A3 = int(input())

print(2 * min(A2 + 2 * A3, A1 + A3, 2 * A1 + A2))
```