# 1153 - Fatorial Simples

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1153)

## Solução

Aqui neste problema proponho uma mudança simples no algoritmo basicão de fatorial que aumenta bastante a eficiência do algoritmo. Por favor, dê uma olhada em [memorização](../../../base-teorica/paradigmas/memorizacao/README.md) para entender como essa técnica funciona e o porquê dela ser tão eficiente.

### C99

```c
#include <string.h>
#include <stdio.h>

int F[14];

int Fatorial(int n)
{
    if (F[n] == -1)
    {
        F[n] = Fatorial(n - 1) * n;
    }
    return F[n];
}

int main()
{
    int N;

    memset(F, -1, sizeof(F));
    F[0] = 1;

    scanf("%d", &N);

    printf("%d\n", Fatorial(N));

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <vector>

using namespace std;

vector<int> F;

int Fatorial(int n)
{
    if (F[n] == -1)
    {
        F[n] = Fatorial(n - 1) * n;
    }
    return F[n];
}

int main()
{
    int N;

    F.assign(14, -1);
    F[0] = 1;

    cin >> N;

    cout << Fatorial(N) << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static int[] F;

    static int Fatorial(int n){
        if(F[n] == -1){
            F[n] = Fatorial(n - 1) * n;
        }
        return F[n];
    }
    
    static void Main(string[] args) {
        F = new int[14];
        
        F[0] = 1;
        for(int i = 1; i < 14; ++i){
            F[i] = -1;
        }

        int N = int.Parse(Console.ReadLine());

        Console.WriteLine(Fatorial(N));
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int[] F;

    public static int Fatorial(int n){
        if(F[n] == -1){
            F[n] = Fatorial(n - 1) * n;
        }
        return F[n];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        F = new int[14];
        F[0] = 1;
        for(int i = 1; i < 14; ++i){
            F[i] = -1;
        }

        int N = Integer.parseInt(in.readLine());

        System.out.println(Fatorial(N));
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let F = [];

let Fatorial = (n) => {
    if (F[n] === -1) {
        F[n] = Fatorial(n - 1) * n;
    }
    return F[n];
};

F[0] = 1;
for (let i = 1; i < 14; ++i) {
    F[i] = -1;
}

let N = parseInt(lines.shift().trim());

console.log(Fatorial(N));
```

### Python 3.9

```py
def Fatorial(n):
    if(F[n] == -1):
        F[n] = Fatorial(n - 1) * n
    return F[n]


F = [-1 for _ in range(14)]
F[0] = 1

N = int(input())

print(Fatorial(N))

```