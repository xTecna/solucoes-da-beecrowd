# 1067 - Números Ímpares

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1067)

## Solução

É possível trocar o terceiro termo para somar `i` por 2. Com isso, começando pelo número 1 e pulando de 2 em 2, garantimos que `i` sempre será ímpar.

### C99

```c
#include <stdio.h>

int main()
{
    int X;

    scanf("%d", &X);

    for (int i = 1; i <= X; i += 2)
    {
        printf("%d\n", i);
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
    int x;

    cin >> x;

    for (int i = 1; i <= x; i += 2)
    {
        cout << i << endl;
    }

    return 0;
}
```

### C#

```cpp
using System;

class URI {
    static void Main(string[] args) {
        int X = int.Parse(Console.ReadLine());
        
        for(int i = 1; i <= X; i += 2){
            Console.WriteLine(i);
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
        
        int X = Integer.parseInt(in.readLine());
        
        for(int i = 1; i <= X; i+=2){
            System.out.println(i);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let X = parseInt(lines.shift());

for (let i = 1; i <= X; i += 2)
    console.log(i);
```

### Python 3.9

```py
X = int(input())

for i in range(1, X + 1, 2):
    print(i)
```