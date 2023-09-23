# 1436 - Jogo do Tijolo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1436)

## Solução

O capitão deve ser uma pessoa cuja idade faça com que exista um número igual de pessoas mais novas e mais velhas que ela. Logo, o capitão precisa ser o que tem a idade equivalente à mediana das idades presentes na equipe. A entrada que vamos receber pode estar ordenada tanto do maior pro menor quanto do menor pro maior, mas isso para nós não importa, pois a mediana sempre vai ser o valor do meio. Por isso, só precisamos retornar a idade do jogador na posição do meio.

> Em Java, o vetor de idades vem todo junto na mesma linha com o tamanho, então eu precisei fazer o cálculo considerando um elemento a menos e todos ajustados pra direita, por isso precisei somar 1 no final.

### C99
```c
#include <stdio.h>

int main()
{
    int T, N, idade, resposta;

    scanf("%d", &T);

    for (int k = 0; k < T; ++k)
    {
        scanf("%d", &N);

        for (int i = 0; i < N / 2; ++i)
        {
            scanf("%d", &idade);
        }
        scanf("%d", &resposta);
        for (int i = N / 2 + 1; i < N; ++i)
        {
            scanf("%d", &idade);
        }

        printf("Case %d: %d\n", k + 1, resposta);
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
    int T, N, idade, resposta;

    cin >> T;

    for (int k = 0; k < T; ++k)
    {
        cin >> N;

        for (int i = 0; i < N / 2; ++i)
        {
            cin >> idade;
        }
        cin >> resposta;
        for (int i = N / 2 + 1; i < N; ++i)
        {
            cin >> idade;
        }

        cout << "Case " << k + 1 << ": " << resposta << endl;
    }

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
        int T = int.Parse(Console.ReadLine());
        for(int k = 1; k <= T; ++k){
            List<int> idades = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).Skip(1).ToList();
            
            Console.WriteLine($"Case {k}: {idades[idades.Count / 2]}");
        }
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

        int T = Integer.parseInt(in.readLine());
        for(int k = 1; k <= T; ++k){
            String[] idades = in.readLine().trim().split(" ");

            System.out.printf("Case %d: %s\n", k, idades[((idades.length - 1) / 2) + 1]);
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift());

for (let k = 0; k < T; ++k) {
    let idades = lines.shift().trim().split(' ').map((x) => parseInt(x));
    idades.shift();

    console.log(`Case ${k + 1}: ${idades[Math.floor(idades.length / 2)]}`);
}
```

### Python 3.9
```py
T = int(input())

for i in range(T):
    idades = [int(x) for x in input().strip().split(' ')]
    idades.pop(0)

    print(f'Case {i + 1}: {idades[len(idades)//2]}')
```