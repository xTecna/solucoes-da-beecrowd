# 1013 - O Maior

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1013)

## Solução

Uma forma de conseguir o maior de três elementos usando uma função que só aceita dois elementos é fazer uma composição da seguinte forma:

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;max(a,&space;max(b,&space;c))" title="\bg_white max(a, max(b, c))" />

Com isso, o `max(b, c)` de dentro vai ser executado primeiro, trazendo o maior entre os números `b` e `c`; e depois vai ser executado o `max` de fora, onde vai ser escolhido o máximo entre `a` e o máximo escolhido entre `b` e `c` antes.

### Por que a fórmula funciona?

Considerando que a é o maior número e b é o menor, temos que

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;max(a,&space;b)&space;=&space;\frac{a&space;&plus;&space;b&space;&plus;&space;abs(a&space;-&space;b)}{2}&space;\\\text{}\\max(a,&space;b)&space;=&space;\frac{a&space;&plus;&space;b&space;&plus;&space;a&space;-&space;b}{2}&space;\\\text{}\\max(a,&space;b)&space;=&space;\frac{2a}{2}&space;\\\text{}\\max(a,&space;b)&space;=&space;a" title="\bg_white max(a, b) = \frac{a + b + abs(a - b)}{2} \\\text{}\\max(a, b) = \frac{a + b + a - b}{2} \\\text{}\\max(a, b) = \frac{2a}{2} \\\text{}\\max(a, b) = a" />

como queríamos demonstrar.

### C99

```c
#include <stdio.h>
#include <stdlib.h>

int maior(int a, int b){
    return (a + b + abs(a - b))/2;
}

int main(){
    int a, b, c, resposta;

    scanf("%d %d %d", &a, &b, &c);
    
    resposta = maior(a, maior(b, c));

    printf("%d eh o maior\n", resposta);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cstdlib>

using namespace std;

int maior(int a, int b){
    return (a + b + abs(a - b))/2;
}

int main(){
    int a, b, c, resposta;

    cin >> a >> b >> c;

    resposta = maior(a, maior(b, c));

    cout << resposta << " eh o maior" << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int max(int a, int b){
        return (a + b + Math.Abs(a - b))/2;
    }
    
    static void Main(string[] args) {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        int a = entrada[0];
        int b = entrada[1];
        int c = entrada[2];
        
        Console.WriteLine($"{max(a, max(b, c))} eh o maior");
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int max(int a, int b){
        return (a + b + Math.abs(a - b))/2;
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        int a = Integer.parseInt(entrada[0]);
        int b = Integer.parseInt(entrada[1]);
        int c = Integer.parseInt(entrada[2]);
        
        System.out.printf("%d eh o maior\n", max(a, max(b, c)));
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

const maior = (a, b) => (a + b + Math.abs(a - b)) / 2;

let [a, b, c] = lines.shift().split(" ").map((x) => parseInt(x));

let resposta = maior(a, maior(b, c));

console.log(`${resposta} eh o maior`);
```

### Python 3.9

```python
maior = lambda a, b: (a + b + abs(a - b))//2

a, b, c = [int(x) for x in input().split(' ')]

resposta = maior(a, maior(b, c))

print(f"{resposta} eh o maior")
```