# 1075 - Resto 2

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1075)

## Solução

O número 2 dividido por qualquer número acima de 2 dá resto 2. Com isso, começamos a imprimir o número 2 e depois para sabermos o próximo número que dá resto 2, basta somarmos por $X$, já que $X \mod X = 0$ e isso implica em $(X + 2) \mod 0 = 2$, o que indica que somar $X$ não afeta o resultado do cálculo do resto da divisão do número por $X$. Com isso, tudo o que precisamos fazer é um `for` que começa em 2 e vai somando 2 até 10000.

Simplesmente não tratei o caso de $X$ menor ou igual a 2, o que indica que não teremos nenhum caso de teste com esses valores, então tudo certo.

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    scanf("%d\n", &N);

    for (int i = 2; i < 10000; i += N)
    {
        printf("%d\n", i);
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
    int N;

    cin >> N;

    for (int i = 2; i < 10000; i += N)
    {
        cout << i << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int N;

        N = int.Parse(Console.ReadLine());

        for(int i = 2; i < 10000; i += N){
            Console.WriteLine(i);
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
    
        int N = Integer.parseInt(in.readLine());

        for(int i = 2; i < 10000; i += N){
            System.out.println(i);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 2; i < 10000; i += N) {
    console.log(i);
}
```

### Python 3.9

```py
N = int(input())

for i in range(2, 10000, N):
    print(i)
```