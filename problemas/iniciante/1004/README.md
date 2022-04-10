# 1004 - Produto Simples

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1004)

## Solução

Vide problemas [1001 - Extremamente Básico](../1001/README.md) e [1003 - Soma Simples](../1003/README.md).

### C99

```c
#include <stdio.h>

int main(){
    int A, B;

    scanf("%d\n%d", &A, &B);
    
    printf("PROD = %d\n", A * B);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    int A, B;

    cin >> A >> B;
    
    cout << "PROD = " << A * B << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        int A = int.Parse(Console.ReadLine());
        int B = int.Parse(Console.ReadLine());
        
        Console.WriteLine($"PROD = {A * B}");
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

        int A = Integer.parseInt(in.readLine());
        int B = Integer.parseInt(in.readLine());
        
        System.out.printf("PROD = %d\n", A * B);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let A = parseInt(lines.shift());
let B = parseInt(lines.shift());

console.log(`PROD = ${A * B}`);
```

### Python 3.9

```python
A = int(input())
B = int(input())

print(f"PROD = {A * B}")
```