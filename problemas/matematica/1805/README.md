# 1805 - Soma Natural

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1805)

## Solução

Os números naturais são uma [progressão aritmética](../../../base-teorica/matematica/progressoes/README.md#progressão-aritmética) com $a_{1} = 1$ e $q = 1$. Logo, podemos usar a fórmula de soma de termos para calcular a soma dos números naturais de `A` até `B` sem a necessidade de um _looping_.

### C99
```c
#include <stdio.h>

long long int somaPA(int a0, int an, int n)
{
    return ((long long int)(a0 + an) * n) / 2;
}

int main()
{
    int A, B;

    scanf("%d %d", &A, &B);

    printf("%lld\n", somaPA(A, B, B - A + 1));

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

long long int somaPA(int a0, int an, int n)
{
    return ((long long int)(a0 + an) * n) / 2;
}

int main()
{
    int A, B;

    cin >> A >> B;

    cout << somaPA(A, B, B - A + 1) << endl;

    return 0;
}
```

### C#
```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static long somaPA(int a0, int an, int n){
        return ((long)(a0 + an) * n) / 2;
    }

    static void Main(string[] args) {
        List<int> AB = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        Console.WriteLine(somaPA(AB[0], AB[1], AB[1] - AB[0] + 1));
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static long somaPA(int a1, int an, int n){
        return ((long)(a1 + an) * n) / 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] AB = in.readLine().trim().split(" ");
        int A = Integer.parseInt(AB[0]);
        int B = Integer.parseInt(AB[1]);

        System.out.println(somaPA(A, B, B - A + 1));
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const somaPA = (a0, an, n) => Math.floor(((a0 + an) * n) / 2);

let [A, B] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(somaPA(A, B, B - A + 1));
```

### Python 3.9
```py
def somaPA(a0, an, n):
    return ((a0 + an) * n) // 2


A, B = [int(x) for x in input().strip().split(' ')]

print(somaPA(A, B, B - A + 1))
```