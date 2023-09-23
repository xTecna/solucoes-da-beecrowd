# 1585 - Fazendo Pandorgas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1585)

## Solução

A pipa é formada por dois bambus que são amarrados em formato de cruz, como diz a observação do enunciado. Com isso, para calcular a área do losango com base em suas diagonais, podemos pensar no losango como dois triângulos de mesma base, mas altura diferente. Se tivermos por exemplo dimensões de diagonais $X$ e $Y$, podemos considerar a base de ambos os triângulos como $X$ e as alturas dos dois triângulos $W$ e $Z$ tal que $Y = W + Z$. Com isso, a soma das áreas dos dois triângulos será

$$\begin{split}
A & = \frac{XW}{2} + \frac{XZ}{2} \\
A & = \frac{XW + XZ}{2} \\
A & = \frac{X(W + Z)}{2} \\
A & = \frac{XY}{2}
\end{split}$$

### C99
```c
#include <stdio.h>

int main()
{
    int N, x, y;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &x, &y);

        printf("%d cm2\n", (x * y) / 2);
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
    int N, x, y;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> x >> y;

        cout << (x * y) / 2 << " cm2" << endl;
    }

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string[] entrada = Console.ReadLine().Trim().Split(' ');

            int x = int.Parse(entrada[0]);
            int y = int.Parse(entrada[1]);

            Console.WriteLine($"{(x * y) / 2} cm2");
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

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String[] entrada = in.readLine().trim().split(" ");

            int x = Integer.parseInt(entrada[0]);
            int y = Integer.parseInt(entrada[1]);

            System.out.printf("%d cm2\n", (x * y) / 2);
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let [x, y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(`${Math.floor((x * y) / 2)} cm2`);
}
```

### Python 3.9
```py
N = int(input())

for _ in range(N):
    x, y = [int(x) for x in input().strip().split(' ')]

    print(f'{(x * y)//2} cm2')
```