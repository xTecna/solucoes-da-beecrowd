# 1005 - Média 1

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1005)

## Solução

Só precisamos aqui fazer o cálculo direto da média ponderada, ou seja, calcular a expressão <img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;\text{Media}&space;=&space;\frac{3,5&space;\times&space;A&space;+&space;7,5&space;\times&space;B}{11}" title="\bg_white \text{Media} = \frac{3,5 \times A + 7,5 \times B}{11}" />.

### C99

```c
#include <stdio.h>

int main(){
    double A, B, media;

    scanf("%lf\n%lf", &A, &B);

    media = (3.5 * A + 7.5 * B)/11.0;

    printf("MEDIA = %.5lf\n", media);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    double A, B, media;

    cin >> A >> B;

    media = (3.5 * A + 7.5 * B)/11.0;

    cout << "MEDIA = " << setprecision(5) << fixed << media << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        double A = double.Parse(Console.ReadLine());
        double B = double.Parse(Console.ReadLine());

        double media = (3.5 * A + 7.5 * B) / 11;

        Console.WriteLine($"MEDIA = {media:0.00000}");
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

        double A = Double.parseDouble(in.readLine());
        double B = Double.parseDouble(in.readLine());
        
        double media = (3.5 * A + 7.5 * B)/11;

        System.out.printf("MEDIA = %.5f\n", media);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let A = parseFloat(lines.shift());
let B = parseFloat(lines.shift());

let media = (3.5 * A + 7.5 * B) / 11;

console.log(`MEDIA = ${media.toFixed(5)}`);
```

### Python 3.9

```python
A = float(input())
B = float(input())

media = (3.5 * A + 7.5 * B)/11

print(f"MEDIA = {media:.5f}")
```