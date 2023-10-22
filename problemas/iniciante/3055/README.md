# 3055 - Nota Esquecida

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3055)

## Solução

Dado que a média $M$ é tal que $M = \frac{A + B}{2}$ e são dados os valores de $A$ e $M$, para descobrirmos $B$ fazemos

$$\begin{split}
M & = \frac{A + B}{2} \\
2M & = A + B \\
B & = 2M - A
\end{split}$$

### C99
```c
#include <stdio.h>

int main(void) {
    int A, M;

    scanf("%d\n", &A);
    scanf("%d\n", &M);

    printf("%d\n", 2 * M - A);

    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int main() {
    int A, M;

    cin >> A;
    cin >> M;

    cout << 2 * M - A << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        int A = int.Parse(Console.ReadLine());
        int M = int.Parse(Console.ReadLine());

        Console.WriteLine(2 * M - A);
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int A = Integer.parseInt(in.readLine());
        int M = Integer.parseInt(in.readLine());

        System.out.println(2 * M - A);
    }
}
```

### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let A = parseInt(lines.shift());
let M = parseInt(lines.shift());

console.log(2 * M - A);
```

### Python 3.9
```py
A = int(input())
M = int(input())

print(2 * M - A)
```