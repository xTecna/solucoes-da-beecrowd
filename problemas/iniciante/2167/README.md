# 2167 - Falha do Motor

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2167)

## Solução

Muito parecido com o problema [2162 - Picos e Vales](../2162/README.md), mas esse aqui é bem mais simples no sentido de que você só precisa ver se o número que você está olhando é menor que o número anterior. Nem precisa guardar vetor, basta artificialmente ler o primeiro número, fazer um vetor começando em 1 e ir trocando as variáveis cada vez que fizer uma verificação.

### C99

```c
#include <stdio.h>

int main()
{
    int N, anterior, R, resposta;

    resposta = 0;
    scanf("%d\n%d", &N, &anterior);
    for (int i = 1; i < N; ++i)
    {
        scanf("%d", &R);

        if (R < anterior)
        {
            resposta = i + 1;
            break;
        }

        anterior = R;
    }

    printf("%d\n", resposta);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int N, anterior, R, resposta;

    resposta = 0;
    cin >> N >> anterior;
    for (int i = 1; i < N; ++i)
    {
        cin >> R;

        if (R < anterior)
        {
            resposta = i + 1;
            break;
        }

        anterior = R;
    }

    cout << resposta << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        List<int> R = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        int resposta = 0;
        for(int i = 1; i < N; ++i){
            if(R[i] < R[i - 1]){
                resposta = i + 1;
                break;
            }
        }

        Console.WriteLine(resposta);
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

        int resposta = 0;
        int N = Integer.parseInt(in.readLine());
        String[] R = in.readLine().trim().split(" ");
        for (int i = 1; i < N; ++i) {
            if (Integer.parseInt(R[i]) < Integer.parseInt(R[i - 1])) {
                resposta = i + 1;
                break;
            }
        }

        System.out.println(resposta);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let resposta = 0;
let N = parseInt(lines.shift());
let R = lines.shift().trim().split(' ').map(x => parseInt(x));
for (let i = 1; i < N; ++i) {
    if (R[i] < R[i - 1]) {
        resposta = i + 1;
        break;
    }
}

console.log(resposta);
```

### Python 3.9

```py
resposta = 0
N = int(input())
R = [int(x) for x in input().strip().split(' ')]
for i in range(1, N):
    if(R[i] < R[i - 1]):
        resposta = i + 1
        break

print(resposta)
```