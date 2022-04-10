# 1072 - Intervalo 2

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1072)

## Solução

Só é preciso contar o número de `in`, já que o `out` pode ser calculado como `N - in`.

### C99

```c
#include <stdio.h>

int main()
{
    int N, X, in;

    scanf("%d", &N);

    in = 0;
    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &X);

        if (10 <= X && X <= 20)
        {
            ++in;
        }
    }

    printf("%d in\n%d out\n", in, N - in);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int N, X, in;

    cin >> N;

    in = 0;
    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        if (10 <= X && X <= 20)
        {
            ++in;
        }
    }

    cout << in << " in" << endl;
    cout << N - in << " out" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int N, X;

        N = int.Parse(Console.ReadLine());

        int incluso = 0;
        for(int i = 0; i < N; ++i){
            X = int.Parse(Console.ReadLine());

            if(10 <= X && X <= 20){
                ++incluso;
            }
        }

        Console.WriteLine($"{incluso} in");
        Console.WriteLine($"{N - incluso} out");
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
        
        int N, X;

        N = Integer.parseInt(in.readLine());

        int incluso = 0;
        for(int i = 0; i < N; ++i){
            X = Integer.parseInt(in.readLine());

            if(10 <= X && X <= 20){
                ++incluso;
            }
        }

        System.out.printf("%d in\n%d out\n", incluso, N - incluso);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

let incluso = 0;
for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    if (10 <= X && X <= 20) {
        ++incluso;
    }
}

console.log(`${incluso} in`);
console.log(`${N - incluso} out`);
```

### Python 3.9

```py
N = int(input())

incluso = 0
for _ in range(N):
    X = int(input())

    if(10 <= X <= 20):
        incluso += 1

print(f'{incluso} in')
print(f'{N - incluso} out')
```