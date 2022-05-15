# 1098 - Sequencia IJ 4

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1098)

## Solução

Aqui vemos que o valor de `I` e `J` são acrescidos de 0,2 toda vez, com o valor de `J` indo de 1 até 3.

> Para as linguagens Java, JavaScript e Python, precisei fazer alguns truques para imprimir os números da forma correta.

### C99

```c
#include <stdio.h>

int main()
{
    for (double i = 0; i <= 2; i += 0.2)
    {
        for (int j = 1; j <= 3; ++j)
        {
            printf("I=%g J=%g\n", i, j + i);
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    for (double i = 0; i <= 2; i += 0.2)
    {
        for (int j = 1; j <= 3; ++j)
        {
            cout << "I=" << i << " J=" << j + i << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        for(double i = 0; i <= 2; i += 0.2){
            for(int j = 1; j <= 3; ++j){
                Console.WriteLine($"I={i} J={j + i}");
            }
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.DecimalFormat;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        DecimalFormat df = new DecimalFormat("#.##");

        for(double i = 0; i <= 2; i += 0.2){
            for(int j = 1; j <= 3; ++j){
                System.out.println("I=" + df.format(i).replace(",", ".") + " J=" + df.format(j + i).replace(",", "."));
            }
        }
    }
}
```

### Javascript 12.18

```js
let format = (n) => {
    if (n % 10 === 0) {
        return `${Math.floor(n / 10)}`;
    } else {
        return `${Math.floor(n / 10)}.${n % 10}`;
    }
};

for (let i = 0; i <= 20; i += 2) {
    for (let j = 10; j <= 30; j += 10) {
        console.log(`I=${format(i)} J=${format(j + i)}`);
    }
}
```

### Python 3.9

```py
def formatNumber(x):
    if(x % 10 == 0):
        return f'{x//10}'
    else:
        return f'{x//10}.{x%10}'


for i in range(0, 21, 2):
    for j in range(10, 31, 10):
        print(f'I={formatNumber(i)} J={formatNumber(i + j)}')
```