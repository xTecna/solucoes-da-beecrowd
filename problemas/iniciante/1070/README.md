# 1070 - Seis Números Ímpares

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1070)

## Solução

Vide problema [1067 - Números Ímpares](../1067/README.md) para entender o raciocínio por trás do `for`. Só é importante ressaltar que é necessário somar um se o número passado for par antes de começar o `for`.

### C99

```c
#include <stdio.h>

int main()
{
    int X;

    scanf("%d", &X);
    X += (X % 2 == 0);

    for (int i = 0; i < 12; i += 2)
    {
        printf("%d\n", X + i);
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
    int X;

    cin >> X;
    X += (X % 2 == 0);

    for (int i = 0; i < 12; i += 2)
    {
        cout << X + i << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int X = int.Parse(Console.ReadLine());
        X += 1 - (X % 2);

        for(int i = 0; i < 12; i += 2){
            Console.WriteLine(X + i);
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
        X += 1 - (X % 2);

        for(int i = 0; i < 12; i += 2){
            System.out.println(X + i);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let X = parseInt(lines.shift());
X += (X % 2 === 0);

for (let i = 0; i < 12; i += 2) {
    console.log(X + i);
}
```

### Python 3.9

```py
X = int(input())
X += (X % 2 == 0)

for i in range(0, 12, 2):
    print(X + i)
```