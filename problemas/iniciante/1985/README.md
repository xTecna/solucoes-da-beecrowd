# 1985 - MacPRONALTS

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1985)

## Solução

Como todos os códigos são sequenciais, é possível colocar todos os preços num vetor e diminuir 1001 do código para ver qual é o preço de cada produto.

### C99

```c
#include <stdio.h>

int main()
{
    double total, precos[5] = {1.5, 2.5, 3.5, 4.5, 5.5};
    int N, codigo, preco;

    scanf("%d", &N);
    total = 0.0;
    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &codigo, &preco);

        total += preco * precos[codigo - 1001];
    }

    printf("%.2lf\n", total);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double total, precos[5] = {1.5, 2.5, 3.5, 4.5, 5.5};
    int N, codigo, qtd;

    cin >> N;
    total = 0.0;
    for (int i = 0; i < N; ++i)
    {
        cin >> codigo >> qtd;

        total += qtd * precos[codigo - 1001];
    }

    cout << setprecision(2) << fixed << total << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static void Main(string[] args)
    {
        double[] precos = new double[] { 1.5, 2.5, 3.5, 4.5, 5.5 };

        int N = int.Parse(Console.ReadLine());
        double total = 0.0;
        for (int i = 0; i < N; ++i)
        {
            string[] entrada = Console.ReadLine().Trim().Split(' ');

            total += int.Parse(entrada[1]) * precos[int.Parse(entrada[0]) - 1001];
        }

        Console.WriteLine($"{total:0.00}");
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

        double[] precos = { 1.5, 2.5, 3.5, 4.5, 5.5 };

        int N = Integer.parseInt(in.readLine());
        double total = 0.0;
        for (int i = 0; i < N; ++i) {
            String[] entrada = in.readLine().trim().split(" ");

            total += Integer.parseInt(entrada[1]) * precos[Integer.parseInt(entrada[0]) - 1001];
        }

        System.out.printf("%.2f\n", total);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let precos = [1.5, 2.5, 3.5, 4.5, 5.5];

let N = parseInt(lines.shift());
let total = 0.0;
for (let i = 0; i < N; ++i) {
    let [codigo, qtd] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    total += qtd * precos[codigo - 1001];
}

console.log(total.toFixed(2));
```

### Python 3.9

```py
precos = [1.5, 2.5, 3.5, 4.5, 5.5]
N = int(input())

total = 0.0
for _ in range(N):
    codigo, qtd = [int(x) for x in input().strip().split(' ')]

    total += qtd * precos[codigo - 1001]

print(f'{total:.2f}')
```