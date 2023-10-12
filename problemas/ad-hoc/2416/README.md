# 2416 - Corrida

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2416)

## Solução

Basta fazermos $C \mod N$, pois a pista é circular, então se $C$ for maior que $N$, não importa o número de voltas, importa apenas a distância percorrida na última volta.

### C99
```c
#include <stdio.h>

int main(){
    int C, N;

    scanf("%d %d", &C, &N);

    printf("%d\n", C % N);

    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int main(){
    int C, N;

    cin >> C >> N;

    cout << C % N << endl;

    return 0;
}
```

### C#
```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> CN = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        Console.WriteLine(CN[0] % CN[1]);
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
        System.out.println(Integer.parseInt(entrada[0]) % Integer.parseInt(entrada[1]));
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [C, N] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(C % N);
```

### Python 3.9
```py
C, N = [int(x) for x in input().strip().split(' ')]

print(C % N)
```