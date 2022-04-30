# 1101 - Sequência de Números e Soma

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1101)

## Solução

Você pode resolver esse problema calculando a soma como a soma de uma progressão aritmética com `a1 = min(M, N)`, `an = max(M, N)` e `n = |M - N|` (vide [progressão aritmética](../../../base-teorica/matematica/progressoes/README.md#progressão-aritmética) para entender mais). Neste caso, como a gente já precisaria imprimir os números em si mesmo, resolvi evitar a fadiga.

### C99

```c
#include <stdio.h>

int main()
{
    int M, N;

    while (scanf("%d %d", &M, &N) != EOF)
    {
        if (M <= 0 || N <= 0)
        {
            break;
        }

        if (M > N)
        {
            int temp = M;
            M = N;
            N = temp;
        }

        int soma = 0;
        for (int i = M; i <= N; ++i)
        {
            printf("%d ", i);
            soma += i;
        }
        printf("Sum=%d\n", soma);
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
    int M, N;

    while (cin >> M >> N)
    {
        if (M <= 0 || N <= 0)
        {
            break;
        }

        if (M > N)
        {
            swap(M, N);
        }

        int soma = 0;
        for (int i = M; i <= N; ++i)
        {
            cout << i << " ";
            soma += i;
        }
        cout << "Sum=" << soma << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            string[] numeros = entrada.Trim().Split(' ');
            int M = int.Parse(numeros[0]);
            int N = int.Parse(numeros[1]);

            if(M <= 0 || N <= 0){
                break;
            }

            if(M > N){
                int temp = M;
                M = N;
                N = temp;
            }

            int soma = 0;
            for(int i = M; i <= N; ++i){
                Console.Write($"{i} ");
                soma += i;
            }
            Console.WriteLine($"Sum={soma}");
        }
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
    
        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");
            int M = Integer.parseInt(entrada[0]);
            int N = Integer.parseInt(entrada[1]);

            if(M <= 0 || N <= 0){
                break;
            }

            if(M > N){
                int temp = M;
                M = N;
                N = temp;
            }

            int soma = 0;
            for(int i = M; i <= N; ++i){
                System.out.printf("%d ", i);
                soma += i;
            }
            System.out.printf("Sum=%d\n", soma);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let [M, N] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if (M <= 0 || N <= 0) {
        break;
    }

    if (M > N) {
        [M, N] = [N, M];
    }

    let V = [];
    let soma = 0;
    for (let i = M; i <= N; ++i) {
        V.push(i.toString());
        soma += i;
    }
    console.log(`${V.join(' ')} Sum=${soma}`);
}
```

### Python 3.9

```py
while True:
    try:
        M, N = [int(x) for x in input().strip().split(' ')]

        if(M <= 0 or N <= 0):
            break

        if(M > N):
            M, N = N, M

        print(f'{" ".join([str(x) for x in range(M, N + 1)])} Sum={sum(range(M, N + 1))}')
    except EOFError:
        break
```