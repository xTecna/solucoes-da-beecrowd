# 1930 - Tomadas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1930)

## Solução

Considerando que cada régua extra vai ocupar uma posição na original (ou em outra régua, caso a original não tenha mais espaço), então podemos contar com a soma de todas as tomadas em todas as réguas menos 3, que é esse espaço ocupado pelas demais.

Note que não é preciso imaginar o caso em que deixar de usar uma régua é mais vantajoso. Como cada régua tem no mínimo duas tomadas e esta só ocupa uma tomada, o saldo é sempre positivo, então sempre vale a pena incluir todas as réguas.

### C99

```c
#include <stdio.h>

int main()
{
    int T1, T2, T3, T4;

    scanf("%d %d %d %d", &T1, &T2, &T3, &T4);
    printf("%d\n", T1 + T2 + T3 + T4 - 3);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int T1, T2, T3, T4;

    cin >> T1 >> T2 >> T3 >> T4;
    cout << T1 + T2 + T3 + T4 - 3 << endl;

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
        List<int> T = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        Console.WriteLine(T.Aggregate(0, (cur, acc) => acc + cur) - 3);
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
    
        String[] entrada = in.readLine().trim().split(" ");

        int soma = 0;
        for(int i = 0; i < 4; ++i){
            soma += Integer.parseInt(entrada[i]);
        }

        System.out.println(soma - 3);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = lines.shift().trim().split(' ').map((x) => parseInt(x));
console.log(T.reduce((acc, cur) => acc + cur, 0) - 3);
```

### Python 3.9

```py
T = [int(x) for x in input().strip().split(' ')]
print(sum(T) - 3)
```