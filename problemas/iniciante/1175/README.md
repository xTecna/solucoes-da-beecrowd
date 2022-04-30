# 1175 - Troca em Vetor I

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1175)

## Solução

Preste atenção no jeito como o enunciado descreve as trocas: trocar o primeiro com o último, o segundo com o penúltimo, e assim por diante, até trocar o décimo com o décimo primeiro. Com isso, temos uma dica importante, só precisamos trocar até o décimo elemento, já que se seguíssemos trocando do primeiro até o último, à partir da segunda metade nós estaríamos desfazendo as trocas que fizemos na primeira metade. Então, faça um `for` só até metade do vetor.

Com isso, para trocar um dado elemento `i` na primeira metade com seu correspondente na segunda metade, basta trocamos com o elemento na posição `19 - i`. Para ver como isso vale, basta fazermos alguns testes: `0` troca com `19`, `1` troca com `18`, `2` troca com `17`, assim por diante, até `9` trocar com `10`, tudo certo.

Um detalhe interessante do problema é que todo o processo que ele descreve é a mesma coisa que inverter um vetor, então você pode usar as funções prontas das linguagens pra inverter vetores, mas eu decidi seguir com o algoritmo descrito no enunciado por desencargo de consciência.

### C99

```c
#include <stdio.h>

int main()
{
    int N[20];

    for (int i = 0; i < 20; ++i)
    {
        scanf("%d", &N[i]);
    }

    for (int i = 0; i < 10; ++i)
    {
        int temp = N[i];
        N[i] = N[19 - i];
        N[19 - i] = temp;
    }

    for (int i = 0; i < 20; ++i)
    {
        printf("N[%d] = %d\n", i, N[i]);
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
    int N[20];

    for (int i = 0; i < 20; ++i)
    {
        cin >> N[i];
    }

    for (int i = 0; i < 10; ++i)
    {
        int temp = N[i];
        N[i] = N[19 - i];
        N[19 - i] = temp;
    }

    for (int i = 0; i < 20; ++i)
    {
        cout << "N[" << i << "] = " << N[i] << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int[] N = new int[20];

        for(int i = 0; i < 20; ++i){
            N[i] = int.Parse(Console.ReadLine());
        }

        for(int i = 0; i < 10; ++i){
            int temp = N[i];
            N[i] = N[19 - i];
            N[19 - i] = temp;
        }

        for(int i = 0; i < 20; ++i){
            Console.WriteLine($"N[{i}] = {N[i]}");
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
    
        int[] N = new int[20];

        for(int i = 0; i < 20; ++i){
            N[i] = Integer.parseInt(in.readLine());
        }

        for(int i = 0; i < 10; ++i){
            int temp = N[i];
            N[i] = N[19 - i];
            N[19 - i] = temp;
        }

        for(int i = 0; i < 20; ++i){
            System.out.printf("N[%d] = %d\n", i, N[i]);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = [];

for (let i = 0; i < 20; ++i) {
    N.push(parseInt(lines.shift().trim()));
}

for (let i = 0; i < 10; ++i) {
    [N[i], N[19 - i]] = [N[19 - i], N[i]];
}

for (let i = 0; i < 20; ++i) {
    console.log(`N[${i}] = ${N[i]}`);
}
```

### Python 3.9

```py
N = []

for _ in range(20):
    N.append(int(input()))

for i in range(10):
    N[i], N[19 - i] = N[19 - i], N[i]

for i in range(20):
    print(f'N[{i}] = {N[i]}')
```