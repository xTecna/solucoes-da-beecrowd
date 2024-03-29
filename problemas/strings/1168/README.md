# 1168 - LED

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1168)

## Solução

A primeira coisa importante de reparar nesse problema é que apesar do problema envolver números, os números que podem vir na entrada vão de $1$ até $10^{100}$, o que significa que podemos receber números de até 100 dígitos, um valor que definitivamente não cabe em inteiros computacionalmente. Com isso, a categoria do nosso problema nos traz uma dica: para ler esses números, precisamos interpretá-los como _strings_.

A partir daí, você pode decidir se vai usar mapa ou se vai de alguma forma converter cada dígito para número e usar um vetor. Eu decidi pela segunda ideia, mas isso fica a seu critério. Nas linguagens C99 e C++17, eu usei a ideia de conversão com [tabela ASCII](../../../base-teorica/strings/ascii/README.md) para poder acessar a posição correta do vetor.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char V[101];
    int N, resposta;
    int leds[10] = {6, 2, 5, 5, 4, 5, 6, 3, 7, 6};

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        scanf("%s", &V);

        resposta = 0;
        for(int j = 0; j < strlen(V); ++j){
            resposta += leds[V[j] - '0'];
        }

        printf("%d leds\n", resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    string V;
    int N, resposta;
    int leds[10] = {6, 2, 5, 5, 4, 5, 6, 3, 7, 6};

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> V;

        resposta = 0;
        for(int j = 0; j < V.length(); ++j){
            resposta += leds[V[j] - '0'];
        }

        cout << resposta << " leds" << endl;
    }

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static int[] leds = new int[] {6, 2, 5, 5, 4, 5, 6, 3, 7, 6};

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            char[] V = Console.ReadLine().ToCharArray();

            int resposta = 0;
            for(int j = 0; j < V.Length; ++j){
                resposta += leds[((int)V[j]) - ((int)'0')];
            }

            Console.WriteLine($"{resposta} leds");
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
    public static int[] leds = new int[] {6, 2, 5, 5, 4, 5, 6, 3, 7, 6, 6};
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            char[] V = in.readLine().trim().toCharArray();

            int resposta = 0;
            for(int j = 0; j < V.length; ++j){
                resposta += leds[V[j] - ((int)'0')];
            }

            System.out.printf("%d leds\n", resposta);
        }
    }
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const leds = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6];

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let V = lines.shift().trim().split('').map((x) => parseInt(x));

    let resposta = V.reduce((acc, cur) => acc + leds[cur], 0);

    console.log(`${resposta} leds`);
}
```

### Python 3.9
```python
leds = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]

N = int(input())

for _ in range(N):
    V = input().strip()

    resposta = 0
    for numero in V:
        resposta += leds[int(numero)]

    print(f"{resposta} leds")
```