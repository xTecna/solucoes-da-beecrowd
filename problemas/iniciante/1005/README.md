# 1005 - Média 1

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1005)

## Solução

Dado $M$ como a média ponderada, precisamos calcular $M = \frac{3,5A + 7,5B}{11}$.

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

### C++20
```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main() {
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

### Java 19
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
```js
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let A = parseFloat(lines.shift());
let B = parseFloat(lines.shift());

let media = (3.5 * A + 7.5 * B) / 11;

console.log(`MEDIA = ${media.toFixed(5)}`);
```

### Python 3.9
```py
A = float(input())
B = float(input())

media = (3.5 * A + 7.5 * B)/11

print(f"MEDIA = {media:.5f}")
```

### Ruby 2.7
```rb
A = gets.to_f
B = gets.to_f

puts "MEDIA = %.5f" % ((3.5 * A + 7.5 * B) / 11)
```