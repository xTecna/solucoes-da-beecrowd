# 1020 - Idade em Dias

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1020)

## Solução

Vide [1019 - Conversão de Tempo](../1019/README.md).

### C99

```c
#include <stdio.h>

int main(){
    int dias, anos, meses;

    scanf("%d", &dias);

    anos = dias/365;
    dias %= 365;
    meses = dias/30;
    dias %= 30;

    printf("%d ano(s)\n%d mes(es)\n%d dia(s)\n", anos, meses, dias);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    int dias, anos, meses;

    cin >> dias;

    anos = dias/365;
    dias %= 365;
    meses = dias/30;
    dias %= 30;

    cout << anos << " ano(s)" << endl;
    cout << meses << " mes(es)" << endl;
    cout << dias << " dia(s)" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int dias = int.Parse(Console.ReadLine());
        
        int anos = dias/365;
        dias %= 365;
        int meses = dias/30;
        dias %= 30;
        
        Console.WriteLine($"{anos} ano(s)");
        Console.WriteLine($"{meses} mes(es)");
        Console.WriteLine($"{dias} dia(s)");
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
        
        int dias = Integer.parseInt(in.readLine());
        
        int anos = dias/365;
        dias %= 365;
        int meses = dias/30;
        dias %= 30;
        
        System.out.printf("%d ano(s)\n", anos);
        System.out.printf("%d mes(es)\n", meses);
        System.out.printf("%d dia(s)\n", dias);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let dias = parseInt(lines.shift());

let anos = Math.floor(dias / 365);
dias %= 365;
let meses = Math.floor(dias / 30);
dias %= 30;

console.log(`${anos} ano(s)`);
console.log(`${meses} mes(es)`);
console.log(`${dias} dia(s)`);
```

### Python 3.9

```python
dias = int(input())

anos = dias//365
dias %= 365
meses = dias//30
dias %= 30

print(f"{anos} ano(s)")
print(f"{meses} mes(es)")
print(f"{dias} dia(s)")
```