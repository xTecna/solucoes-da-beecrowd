# 2339 - Aviões de Papel

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2339)

## Solução

Se temos `C` competidores e cada um precisa receber `F` folhas de papel especial, então para o número `P` de folhas compradas pela diretora seja o suficiente para todos, é necessário que $P \geq C \dot F$.

### C99
```c
#include <stdio.h>

int main(){
    int C, P, F;

    scanf("%d %d %d", &C, &P, &F);

    printf("%c\n", P >= C * F ? 'S' : 'N');

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int C, P, F;

    cin >> C >> P >> F;

    cout << (char) (P >= C * F ? 'S' : 'N') << endl;

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
        List<int> CPF = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        int C = CPF[0];
        int P = CPF[1];
        int F = CPF[2];

        Console.WriteLine(P >= C * F ? 'S' : 'N');
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

        String[] CPF = in.readLine().trim().split(" ");
        int C = Integer.parseInt(CPF[0]);
        int P = Integer.parseInt(CPF[1]);
        int F = Integer.parseInt(CPF[2]);

        System.out.println(P >= C * F ? 'S' : 'N');
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [C, P, F] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(P >= C * F ? 'S' : 'N');
```

### Python 3.9
```py
C, P, F = [int(x) for x in input().strip().split(' ')]

print('S' if P >= C * F else 'N')
```