# 1157 - Divisores I

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1157)

## Solução

O valor de `N` não é tão grande, então é possível percorrer todos os números de `1` até `N` perguntando quais destes são divisores de `N`.

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    scanf("%d", &N);

    for (int i = 1; i <= N; ++i)
    {
        if (N % i == 0)
        {
            printf("%d\n", i);
        }
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
    int N;

    cin >> N;

    for (int i = 1; i <= N; ++i)
    {
        if (N % i == 0)
        {
            cout << i << endl;
        }
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

        for(int i = 1; i <= N; ++i){
            if(N % i == 0){
                Console.WriteLine(i);
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

        for(int i = 1; i <= N; ++i){
            if(N % i == 0){
                System.out.println(i);
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

for (let i = 1; i <= N; ++i) {
    if (N % i === 0) {
        console.log(i);
    }
}
```

### Python 3.9

```py
N = int(input())

for i in range(1, N + 1):
    if(N % i == 0):
        print(i)
```