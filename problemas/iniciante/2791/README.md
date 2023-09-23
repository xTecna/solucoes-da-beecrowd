# 2791 - Feijão

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2791)

## Solução

Aqui existem várias soluções diferenciadas, incluindo uma que você nem precisa de `for`, se aproveitando do fato de os valores serem apenas `0` e `1` para imprimir $1 \times C_{1} + 2 \times C_{2} + 3 \times C_{3} + 4 \times C_{4}$.

No nosso caso, fizemos com `for` mesmo.

### C99

```c
#include <stdio.h>

int main()
{
    int C;

    for(int i = 1; i <= 4; ++i){
        scanf("%d", &C);
        
        if(C == 1){
            printf("%d\n", i);
            break;
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
    int C;

    for(int i = 1; i <= 4; ++i){
        cin >> C;

        if(C == 1){
            cout << i << endl;
            break;
        }
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int[] numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToArray();

        for(int i = 0; i < 4; ++i){
            if(numeros[i] == 1){
                Console.WriteLine(i + 1);
                break;
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

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] numeros = in.readLine().trim().split(" ");
        
        for(int i = 0; i < 4; ++i){
            if(Integer.parseInt(numeros[i]) == 1){
                System.out.println(i + 1);
                break;
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let C = lines.shift().trim().split(' ').map(x => parseInt(x));

for(let i = 0; i < 4; ++i){
    if(C[i] === 1){
        console.log(i + 1);
        break;
    }
}
```

### Python 3.9

```py
C = [int(x) for x in input().strip().split(' ')]

for i in range(4):
    if(C[i] == 1):
        print(i + 1)
        break
```