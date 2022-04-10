# 1001 - Extremamente Básico

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1001)

## Solução

Um problema bem simples que envolve ler dois valores e imprimir a soma dos dois valores lidos. Nesta [página da beecrowd](https://www.beecrowd.com.br/judge/pt/faqs/about/examples) ela oferece as soluções deste problema para diversas linguagens.

A diferença entre os exemplos apresentados acima e os apresentados abaixo é que lá tem em muito mais linguagens do que aqui e que lá eles levam em consideração a variável X, que não é necessária, mas que pode ser bom incluir para fins educativos.

### C99

```c
#include <stdio.h>

int main(){
    int A, B;

    scanf("%d\n%d", &A, &B);
    
    printf("X = %d\n", A + B);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    int A, B;

    cin >> A >> B;
    
    cout << "X = " << A + B << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        int A = int.Parse(Console.ReadLine());
        int B = int.Parse(Console.ReadLine());
        
        Console.WriteLine($"X = {A + B}");
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

        int A = Integer.parseInt(in.readLine());
        int B = Integer.parseInt(in.readLine());
        
        System.out.printf("X = %d\n", A + B);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

A = parseInt(lines.shift());
B = parseInt(lines.shift());
console.log(`X = ${A + B}`);
```

### Python 3.9

```python
A = int(input())
B = int(input())

print(f"X = {A + B}")
```