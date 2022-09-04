# 2176 - Paridade

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2176)

## Solução

A ideia é você converter cada número para `0` ou `1` e somar todos os números para você ver se vai colocar um `0` ou um `1` no final.

### C99

```c
#include <string.h>
#include <stdio.h>

int main()
{
    int pares = 0;
    char bits[101];

    scanf("%s\n", &bits);
    for (int i = 0; i < strlen(bits); ++i)
    {
        pares += bits[i] - '0';
    }

    printf("%s%d\n", bits, pares % 2);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    string bits;
    int pares = 0;

    cin >> bits;
    for (int i = 0; i < bits.length(); ++i)
    {
        pares += bits[i] - '0';
    }

    cout << bits << (pares % 2) << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int pares = 0;
        string bits = Console.ReadLine();

        for(int i = 0; i < bits.Length; ++i){
            pares += bits[i] == '1' ? 1 : 0;
        }

        Console.WriteLine($"{bits}{pares % 2}");
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

        int pares = 0;
        String bits = in.readLine();
        for (int i = 0; i < bits.length(); ++i) {
            pares += bits.charAt(i) == '1' ? 1 : 0;
        }

        System.out.printf("%s%d\n", bits, pares % 2);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let bits = lines.shift().trim().split('');
let pares = bits.reduce((acc, cur) => acc + parseInt(cur), 0);

console.log(`${bits.join('')}${pares % 2}`);
```

### Python 3.9

```py
bits = input()
pares = sum([int(x) for x in bits])

print(f'{bits}{pares % 2}')
```