# 1142 - PUM

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1142)

## Solução

Você pode criar uma variável externa para ir contando o número atual toda vez que você passar pelo for interno e imprimir `"PUM"` quando este valor for divisível por 4.

Do jeito apresentado, eu quis calcular o valor direto, dependendo da linha a ser impressa e alterando `j` de 0 a 3 (pois são 3 números por linha), através da fórmula `4 * i + j + 1`, pois a `i`-ésima linha sempre começa com `4 * i + 1` e `j` contribui à fórmula com o deslocamento necessário a cada linha.

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        for (int j = 0; j < 3; ++j)
        {
            printf("%d ", 4 * i + 1 + j);
        }
        printf("PUM\n");
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

    for (int i = 0; i < N; ++i)
    {
        for (int j = 0; j < 3; ++j)
        {
            cout << 4 * i + 1 + j << ' ';
        }
        cout << "PUM" << endl;
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

        for(int i = 0; i < N; ++i){
            for(int j = 0; j < 3; ++j){
                Console.Write($"{4 * i + 1 + j} ");
            }
            Console.WriteLine("PUM");
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

        int i, j;
        for(i = 0; i < N; ++i){
            for(j = 0; j < 3; ++j){
                System.out.printf("%d ", 4 * i + 1 + j);
            }
            System.out.printf("PUM\n");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let linha = [];
    for (let j = 0; j < 3; ++j) {
        linha.push((4 * i + 1 + j).toString());
    }
    linha.push('PUM');
    console.log(linha.join(' '));
}
```

### Python 3.9

```py
N = int(input())

for i in range(N):
    linha = []
    for j in range(3):
        linha.append(str(4 * i + 1 + j))
    linha.append('PUM')
    print(' '.join(linha))
```