# 2987 - Balão de Honra

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2987)

## Solução

Veja a página sobre [código ASCII](../../../base-teorica/strings/ascii/README.md) para entender porque o código abaixo funciona.

### C99
```c
#include <stdio.h>

int main() {
    char L;

    scanf("%c", &L);
    printf("%d\n", L - 'A' + 1);

    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int main() {
    char L;

    cin >> L;
    cout << L - 'A' + 1 << endl;
    
    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        char L = Console.ReadLine()[0];
        Console.WriteLine(L - 'A' + 1);
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

        char L = in.readLine().charAt(0);
        System.out.println(L - 'A' + 1);
    }
}
```

### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let L = lines.shift();
console.log(L.charCodeAt(0) - 'A'.charCodeAt(0) + 1);
```

### Python 3.9
```py
L = input()
print(ord(L) - ord('A') + 1)
```