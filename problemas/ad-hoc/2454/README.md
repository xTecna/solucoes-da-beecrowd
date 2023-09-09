# 2454 - Flíper

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2454)

## Solução

Por questão de simplicidade, usei ternários em todos os códigos apresentados abaixo.

### C99
```c
#include <stdio.h>

int main(){
    int P, R;

    scanf("%d %d", &P, &R);

    printf("%c\n", P ? (R ? 'A' : 'B') : 'C');

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int P, R;

    cin >> P >> R;

    cout << (P ? (R ? 'A' : 'B') : 'C') << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        string[] PR = Console.ReadLine().Trim().Split(' ');
        int P = int.Parse(PR[0]);
        int R = int.Parse(PR[1]);
        
        Console.WriteLine(P == 1 ? (R == 1 ? 'A' : 'B') : 'C');
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

        String[] entrada = in.readLine().trim().split(" ");
        int P = Integer.parseInt(entrada[0]);
        int R = Integer.parseInt(entrada[1]);

        System.out.println(P == 1 ? (R == 1 ? 'A' : 'B') : 'C');
    }
}
```

### JavaScript 12.18
```js
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [P, R] = lines.shift().trim().split(" ").map((x) => parseInt(x));

console.log(`${P ? (R ? "A" : "B") : "C"}`);
```

### Python 3.9
```py
[P, R] = [int(x) for x in input().strip().split(' ')]

print(f"{('A' if R else 'B') if P else 'C'}")
```