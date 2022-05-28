# 1031 - Crise de Energia

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1031)

## Solução

Vide problema [1030 - A Lenda de Flavious Josephus](../1030/README.md) para entender melhor o problema a ser resolvido e a nossa abordagem.

Exceto que neste caso, é como se nós já tivéssemos escolhido nosso sobrevivente, a posição 12, e só estamos interessados em saber de quantos em quantos pulos ele é o último a ficar vivo. Neste caso, podemos experimentar diversos valores de $k$ até que a função retorne o valor 12, o que é perfeitamente possível pois cada análise tem complexidade de $O(n)$ e sabemos (na verdade não sabemos) que os valores de $n$ que vamos encontrar não estão muito longe dos limites estabelecidos pelo enunciado, ou seja, não vamos lidar com resultados gigantescos.

> Entretanto, atenção: a forma de desligar as cidades é diferenciada. Ao contrário do problema do Josephus, que começa matando o soldado $m$, aqui sempre começamos desligando a cidade 1, então precisamos chamar nossa recorrência com $(T(n - 1, k) + 1) \mod n$, já considerando que a cidade 1 não existe mais. Isso é equivalente a forçar o primeiro passo a desligar a primeira cidade.

Com isso, podemos implementar uma função que pesquisa para cada número se o sobrevivente é 12 e retorna caso tenha um resultado positivo. Podemos usar memorização para evitar refazer alguns dos cálculos, mas no geral, é isso.

> Para os casos apresentados aqui, a pilha de recursão do Python não estoura, então podemos seguir com a versão recursiva.

### C99

```c
#include <stdio.h>

int T[101][1001];

int sobrevivente(int n, int k)
{
    if (T[n][k] == -1)
    {
        T[n][k] = (sobrevivente(n - 1, k) + k) % n;
    }
    return T[n][k];
}

int main()
{
    int N, m;

    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 1001; ++j)
        {
            T[i][j] = 0;
        }
    }
    for (int i = 2; i < 101; ++i)
    {
        for (int j = 0; j < 1001; ++j)
        {
            T[i][j] = -1;
        }
    }

    while (scanf("%d", &N) != EOF)
    {
        if (N == 0)
        {
            break;
        }

        m = 1;
        while ((sobrevivente(N - 1, m) + 1) % N != 12)
        {
            ++m;
        }

        printf("%d\n", m);
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int T[101][1001];

int sobrevivente(int n, int k)
{
    if (T[n][k] == -1)
    {
        T[n][k] = (sobrevivente(n - 1, k) + k) % n;
    }
    return T[n][k];
}

int main()
{
    int N, m;

    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 1001; ++j)
        {
            T[i][j] = 0;
        }
    }
    for (int i = 2; i < 101; ++i)
    {
        for (int j = 0; j < 1001; ++j)
        {
            T[i][j] = -1;
        }
    }

    while (cin >> N)
    {
        if (N == 0)
        {
            break;
        }

        m = 1;
        while ((sobrevivente(N - 1, m) + 1) % N != 12)
        {
            ++m;
        }

        cout << m << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static int[,] T;

    static int sobrevivente(int n, int k)
    {
        if (T[n, k] == -1)
        {
            T[n, k] = (sobrevivente(n - 1, k) + k) % n;
        }
        return T[n, k];
    }

    static void Main(string[] args)
    {
        string entrada;

        T = new int[101, 1001];
        for (int i = 0; i < 2; ++i)
        {
            for (int j = 0; j < 1001; ++j)
            {
                T[i, j] = 0;
            }
        }
        for (int i = 2; i < 101; ++i)
        {
            for (int j = 0; j < 1001; ++j)
            {
                T[i, j] = -1;
            }
        }

        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada);

            if (N == 0)
            {
                break;
            }

            int m = 1;
            while ((sobrevivente(N - 1, m) + 1) % N != 12)
            {
                ++m;
            }

            Console.WriteLine(m);
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
    public static int[][] T;

    public static int sobrevivente(int n, int k) {
        if (T[n][k] == -1) {
            T[n][k] = (sobrevivente(n - 1, k) + k) % n;
        }
        return T[n][k];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        T = new int[101][1001];
        for (int i = 0; i < 2; ++i) {
            for (int j = 0; j < 1001; ++j) {
                T[i][j] = 0;
            }
        }
        for (int i = 2; i < 101; ++i) {
            for (int j = 0; j < 1001; ++j) {
                T[i][j] = -1;
            }
        }

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());

            if (N == 0) {
                break;
            }

            int m = 1;
            while ((sobrevivente(N - 1, m) + 1) % N != 12) {
                ++m;
            }

            System.out.println(m);
        }
    }
}
```

### JavaScript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let T = [];
for(let i = 0; i < 2; ++i){
    T[i] = Array(1001);
    T[i].fill(0);
}
for(let i = 2; i < 101; ++i){
    T[i] = Array(1001);
    T[i].fill(-1);
}

const sobrevivente = (n, k) => {
    if(T[n][k] === -1){
        T[n][k] = (sobrevivente(n - 1, k) + k) % n;
    }
    return T[n][k];
};

lines.pop();

while(lines.length){
    let N = parseInt(lines.shift().trim());

    let m = 1;
    while((sobrevivente(N - 1, m) + 1) % N != 12){
        ++m;
    }

    console.log(m);
}
```

### Python 3.9

```py
T = [[-1 for _ in range(1001)] for _ in range(101)]

for i in range(2):
    T[i] = [0 for _ in range(1001)]


def sobrevivente(n, k):
    if(T[n][k] == -1):
        T[n][k] = (sobrevivente(n - 1, k) + k) % n
    return T[n][k]


while True:
    try:
        N = int(input())

        if(N == 0):
            break

        m = 1
        while((sobrevivente(N - 1, m) + 1) % N != 12):
            m += 1

        print(m)
    except EOFError:
        break
```