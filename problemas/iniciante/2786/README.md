# 2786 - Piso da Escola

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2786)

## Solução

Se prestarmos atenção apenas às bordas da figura, podemos tirar as duas fórmulas que precisamos.

Dali podemos ver que há $4$ lajotas do tipo 2 na borda superior e $3$ do tipo 2 na borda esquerda, então o número de lajotas do tipo 2 pode ser tirado pela fórmula $2 \times ((L - 1) + (C - 1))$, para contar as quatro bordas. Simplificando, ficamos com $2 \times (L + C - 2)$.

Já para as lajotas do tipo 1, podemos ver que tem $5$ delas alinhadas na borda superior e $3$ alinhadas na borda esquerda, mas se fizermos apenas $L \times C$, repare que fica alguns buracos faltando serem preenchidos. Esses buracos são precisamente de $(L - 1) \times (C - 1)$, então o número total de lajotas do tipo 1 é $L \times C + (L - 1) \times (C - 1)$.

### C99
```c
#include <stdio.h>

int main()
{
    int L, C;

    scanf("%d %d", &L, &C);
    printf("%d\n%d\n", L * C + (L - 1) * (C - 1), 2 * (L + C - 2));

    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int main()
{
    int L, C;

    cin >> L >> C;
    cout << L * C + (L - 1) * (C - 1) << endl << 2 * (L + C - 2) << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        int L = int.Parse(Console.ReadLine());
        int C = int.Parse(Console.ReadLine());

        Console.WriteLine(L * C + (L - 1) * (C - 1));
        Console.WriteLine(2 * (L + C - 2));
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

        int L = Integer.parseInt(in.readLine());
        int C = Integer.parseInt(in.readLine());

        System.out.println(L * C + (L - 1) * (C - 1));
        System.out.println(2 * (L + C - 2));
    }
}
```

### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let L = parseInt(lines.shift());
let C = parseInt(lines.shift());

console.log(L * C + (L - 1) * (C - 1));
console.log(2 * (L + C - 2));
```

### Python 3.9
```py
L = int(input())
C = int(input())

print(L * C + (L - 1) * (C - 1))
print(2 * (L + C - 2))
```