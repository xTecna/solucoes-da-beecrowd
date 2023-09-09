# 2374 - Pneu

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2374)

## Solução

Vide [1007 - Diferença](../../iniciante/1007/README.md).

### C99
```c
#include <stdio.h>

int main(){
    int N, M;

    scanf("%d %d", &N, &M);

    printf("%d\n", N - M);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int N, M;

    cin >> N >> M;
    
    cout << N - M << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        int M = int.Parse(Console.ReadLine());

        Console.WriteLine(N - M);
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

        int N = Integer.parseInt(in.readLine());
        int M = Integer.parseInt(in.readLine());

        System.out.println(N - M);
    }
}
```

### JavaScript 12.18
```js
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let N = parseInt(lines.shift());
let M = parseInt(lines.shift());

console.log(N - M);
```

### Python 3.9
```py
N = int(input())
M = int(input())

print(N - M)
```