# 2413 - Busca na Internet

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2413)

## Solução

Vamos considerar que o número de pessoas que clicam no terceiro link é $x$.

De acordo com o que João leu anteriormente, o número de pessoas que clicam no segundo link listado é o dobro do número de pessoas que clicam no terceiro link. Logo, o número de pessoas que clicam no segundo link é $2x$.

Já o número de pessoas que clicam no segundo link é a metade do número de pessoas que clicam no primeiro link. Se $2x$ é a metade, então o total de número de pessoas que clicam no primeiro link é $2 \cdot 2x$. Desta maneira, para calcular o número de pessoas que clicam no primeiro link a partir do número de pessoas que clicam no terceiro link, basta calcularmos $4x$.

### C99
```c
#include <stdio.h>

int main(){
    int t;

    scanf("%d", &t);

    printf("%d\n", 4 * t);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int t;

    cin >> t;
    
    cout << 4 * t << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        int t = int.Parse(Console.ReadLine());

        Console.WriteLine(4 * t);
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

        int t = Integer.parseInt(in.readLine());

        System.out.println(4 * t);
    }
}
```

### JavaScript 12.18
```js
let input = require('fs').readFileSync('/dev/stdin', 'utf8');
let lines = input.split('\n');

let t = parseInt(lines.shift());

console.log(4 * t);
```

### Python 3.9
```py
t = int(input())

print(4 * t)
```