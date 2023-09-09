# 1170 - Blobs

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1170)

## Solução

Saber quantas vezes precisamos dividir um número até que o resultado seja 1 ou menos é basicamente calcular o teto do logaritmo deste número.

Também é possível simular cada dia e quantos suprimentos Blobs terá ao final do dia caso não queira usar a fórmula direta. Se a quantidade de suprimento for menor ou igual a 1, pode parar o processo e imprimir a resposta. A entrada $C$ é pequena o suficiente para ser possível fazer isso dentro do tempo limite estipulado. Eu até tinha os códigos para isso aqui, mas a fórmula direta é só mais simples, então no final eu acabei tirando pra evitar a fadiga...

### C99
```c
#include <stdio.h>
#include <math.h>

int main()
{
    double C;
    int N, resposta;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%lf", &C);

        printf("%d dias\n", (int)ceil(log2(C)));
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
    double C;
    int N, resposta;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> C;

        cout << ceil(log2(C)) << " dias" << endl;
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
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            double C = double.Parse(Console.ReadLine());

            Console.WriteLine($"{Math.Ceiling(Math.Log(C, 2))} dias");
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            double C = Double.parseDouble(in.readLine());

            System.out.printf("%d dias\n", (int)Math.ceil(Math.log(C)/Math.log(2)));
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let C = parseFloat(lines.shift());

    console.log(`${Math.ceil(Math.log2(C))} dias`);
}
```

### Python 3.9
```python
import math

N = int(input())

for _ in range(N):
    C = float(input())

    print(f'{math.ceil(math.log2(C))} dias')
```