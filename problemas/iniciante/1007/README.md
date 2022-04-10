# 1007 - Diferença

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1007)

## Solução

Problema muito parecido com os problemas [1001 - Extremamente Básico](../1001/README.md), [1003 - Soma Simples](../1003/README.md) e [1004 - Produto Simples](../1004/README.md).

### C99

```c
#include <stdio.h>

int main(){
    int A, B, C, D, diferenca;

    scanf("%d\n%d\n%d\n%d", &A, &B, &C, &D);

    diferenca = A * B - C * D;

    printf("DIFERENCA = %d\n", diferenca);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    int A, B, C, D, diferenca;

    cin >> A >> B >> C >> D;

    diferenca = A * B - C * D;

    cout << "DIFERENCA = " << diferenca << endl;

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
        int C = int.Parse(Console.ReadLine());
        int D = int.Parse(Console.ReadLine());

        int diferenca = (A * B - C * D);

        Console.WriteLine($"DIFERENCA = {diferenca}");
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
        int C = Integer.parseInt(in.readLine());
        int D = Integer.parseInt(in.readLine());

        int diferenca = (A * B - C * D);
        
        System.out.printf("DIFERENCA = %d\n", diferenca);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let A = parseInt(lines.shift());
let B = parseInt(lines.shift());
let C = parseInt(lines.shift());
let D = parseInt(lines.shift());

let diferenca = A * B - C * D;

console.log(`DIFERENCA = ${diferenca}`);
```

### Python 3.9

```python
A = int(input())
B = int(input())
C = int(input())
D = int(input())

diferenca = A * B - C * D

print(f"DIFERENCA = {diferenca}")
```