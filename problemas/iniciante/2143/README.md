# 2143 - A Volta do Radar

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2143)

## Solução

A grande questão desse problema é entender quantas pessoas sentam nas pontas, pois uma vez que descobrimos isso, basta contarmos um pedido para essas pessoas e dois pedidos para cada uma das restantes. Dito isso, temos que

* Se o número de pessoas é ímpar, apenas uma pessoa senta nas pontas, já que de acordo com a tradição lá, tem que ter um número de pessoas par fora das pontas;
* Se o número de pessoas é par, duas pessoas sentam nas pontas, de forma a minimizar o número de pedidos e continuar respeitando a tradição.

### C99

```c
#include <stdio.h>

int main()
{
    int T, N;

    while (scanf("%d", &T) != EOF)
    {
        for (int i = 0; i < T; ++i)
        {
            scanf("%d", &N);

            int pontas = 2 - (N % 2);
            printf("%d\n", pontas + 2 * (N - pontas));
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
    int T, N;

    while (cin >> T)
    {
        for (int i = 0; i < T; ++i)
        {
            cin >> N;

            int pontas = 2 - (N % 2);
            cout << pontas + 2 * (N - pontas) << endl;
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
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int T = int.Parse(entrada.Trim());
            
            for(int i = 0; i < T; ++i){
                int N = int.Parse(Console.ReadLine().Trim());

                int pontas = 2 - (N % 2);
                Console.WriteLine(pontas + 2 * (N - pontas));
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

        while (in.ready()) {
            int T = Integer.parseInt(in.readLine().trim());

            for (int i = 0; i < T; ++i) {
                int N = Integer.parseInt(in.readLine().trim());

                int pontas = 2 - (N % 2);
                System.out.println(pontas + 2 * (N - pontas));
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let T = parseInt(lines.shift());

    for (let i = 0; i < T; ++i) {
        let N = parseInt(lines.shift());

        let pontas = 2 - (N % 2);
        console.log(pontas + 2 * (N - pontas));
    }
}
```

### Python 3.9

```py
while True:
    try:
        T = int(input())

        for _ in range(T):
            N = int(input())

            pontas = 2 - (N % 2)
            print(pontas + 2 * (N - pontas))
    except EOFError:
        break
```