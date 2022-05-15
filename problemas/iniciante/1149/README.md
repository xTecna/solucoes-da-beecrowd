# 1149 - Somando Inteiros Consecutivos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1149)

## Solução

Podemos usar a [fórmula da soma de progressão aritmética](../../../base-teorica/matematica/progressoes/README.md#soma-dos-termos-de-a1-até-an-de-uma-progressão-aritmética) para uma progressão aritmética onde `a0 = N`, `r = 1` e queremos somar os primeiros `N` elementos.

### C99

```c
#include <stdio.h>

int somaPA(int a0, int n)
{
    int an = (a0 + n - 1);

    return (a0 + an) * n / 2;
}

int main()
{
    int A, N;

    scanf("%d", &A);

    while (scanf("%d", &N) != EOF)
    {
        if (N > 0)
        {
            break;
        }
    }

    printf("%d\n", somaPA(A, N));

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int somaPA(int a0, int n)
{
    int an = a0 + n - 1;

    return (a0 + an) * n / 2;
}

int main()
{
    int A, N;

    cin >> A;

    while (cin >> N)
    {
        if (N > 0)
        {
            break;
        }
    }

    cout << somaPA(A, N) << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static int somaPA(int a0, int n){
        int an = a0 + n - 1;

        return (a0 + an) * n / 2;
    }

    static void Main(string[] args) {
        string[] entrada = Console.ReadLine().Trim().Split(' ');
        int A = int.Parse(entrada[0]);
        
        int N = 0;
        for (int i = 1; i < entrada.Length; ++i){
            N = int.Parse(entrada[i]);

            if(N > 0){
                break;
            }
        }

        Console.WriteLine(somaPA(A, N));
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int somaPA(int a0, int n){
        int an = a0 + n - 1;

        return (a0 + an) * n / 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        String[] entrada = in.readLine().trim().split(" ");
        int A = Integer.parseInt(entrada[0]);

        int N = 0;
        for(int i = 1; i < entrada.length; ++i){
            N = Integer.parseInt(entrada[i]);

            if(N > 0){
                break;
            }
        }

        System.out.printf("%d\n", somaPA(A, N));
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let somaPA = (a0, n) => {
    let an = a0 + n - 1;

    return Math.floor((a0 + an) * n / 2);
};

let entrada = lines.shift().trim().split(' ').map((x) => parseInt(x));

let A = entrada.shift();
let N = 0;
for (let i = 0; i < entrada.length; ++i) {
    if (entrada[i] > 0) {
        N = entrada[i];
        break;
    }
}

console.log(somaPA(A, N));
```

### Python 3.9

```py
def somaPA(a0, n):
    an = a0 + n - 1

    return (a0 + an) * n // 2


entrada = [int(x) for x in input().strip().split(' ')]
A = entrada[0]

N = 0
for i in range(1, len(entrada)):
    if(entrada[i] > 0):
        N = entrada[i]
        break

print(somaPA(A, N))
```