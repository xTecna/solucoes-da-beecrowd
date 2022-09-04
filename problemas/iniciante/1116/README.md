# 1116 - Dividindo X por Y

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1116)

## Solução

Antes de dividir, apenas verifique se `Y` é igual a 0. Caso seja, a divisão é impossível (e em algumas linguagens, até dá erro e interrompe a execução).

### C99

```c
#include <stdio.h>

int main()
{
    int N, X, Y;

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &X, &Y);

        if (Y == 0)
        {
            printf("divisao impossivel\n");
        }
        else
        {
            printf("%.1lf\n", (double)X / Y);
        }
    }

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
    int N, X, Y;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> X >> Y;

        if (Y == 0)
        {
            cout << "divisao impossivel" << endl;
        }
        else
        {
            cout << setprecision(1) << fixed << (double)X / Y << endl;
        }
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
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

            if(entrada[1] == 0){
                Console.WriteLine("divisao impossivel");
            }else{
                Console.WriteLine($"{(double)entrada[0]/entrada[1]:0.0}");
            }
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

        int N = Integer.parseInt(in.readLine());

        for (int i = 0; i < N; ++i) {
            String[] entrada = in.readLine().trim().split(" ");

            int X = Integer.parseInt(entrada[0]);
            int Y = Integer.parseInt(entrada[1]);

            if (Y == 0) {
                System.out.println("divisao impossivel");
            } else {
                System.out.printf("%.1f\n", (double) X / Y);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
for (let i = 0; i < N; ++i) {
    let [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if (Y === 0) {
        console.log("divisao impossivel");
    } else {
        console.log((X / Y).toFixed(1));
    }
}
```

### Python 3.9

```py
N = int(input())
for _ in range(N):
    X, Y = [int(x) for x in input().strip().split(' ')]

    if(Y == 0):
        print('divisao impossivel')
    else:
        print(f'{X/Y:.1f}')
```