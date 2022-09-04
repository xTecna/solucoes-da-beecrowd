# 1155 - Sequência S

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1155)

## Solução

Um `for` somando cada uma das parcelas é o suficiente para se resolver esse problema, apenas assegurando que o resultado das divisões seja sempre um `double`.

### C99

```c
#include <stdio.h>

int main()
{
    double S = 0.0;
    for (int i = 1; i < 101; ++i)
    {
        S += 1.0 / i;
    }
    printf("%.2lf\n", S);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double S = 0.0;
    for (int i = 1; i < 101; ++i)
    {
        S += 1.0 / i;
    }
    cout << setprecision(2) << fixed << S << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        double S = 0.0;
        for(int i = 1; i < 101; ++i){
            S += 1.0/i;
        }
        Console.WriteLine($"{S:0.00}");
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
        double S = 0.0;
        for (int i = 1; i < 101; ++i) {
            S += 1.0 / i;
        }
        System.out.printf("%.2f\n", S);
    }
}
```

### Javascript 12.18

```js
let S = 0;
for (let i = 1; i < 101; ++i) {
    S += 1 / i;
}
console.log(`${S.toFixed(2)}`);
```

### Python 3.9

```py
S = 0.0
for i in range(1, 101):
    S += 1/i
print(f'{S:.2f}')
```