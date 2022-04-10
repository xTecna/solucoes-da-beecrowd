# 1016 - Distância

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1016)

## Solução

No enunciado, está dizendo que o carro Y se distancia do carro X um quilômetro a cada 2 minutos. Logo, cada quilômetro de distância significa 2 minutos que se passaram.

### C99

```c
#include <stdio.h>

int main(){
    int X;

    scanf("%d", &X);

    printf("%d minutos\n", 2 * X);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    int X;

    cin >> X;

    cout << 2 * X << " minutos" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int X = int.Parse(Console.ReadLine());
        
        Console.WriteLine($"{X * 2} minutos");
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
        
        System.out.printf("%d minutos\n", X * 2);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let X = parseInt(lines.shift());

console.log(`${2 * X} minutos`);
```

### Python 3.9

```python
X = int(input())

print(f"{2 * X} minutos")
```