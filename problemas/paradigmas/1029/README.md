# 1029 - Fibonacci, Quantas Chamadas?

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1029)

## Solução

Uma coisa interessante desse problema é como ele explica com detalhes como as chamadas recursivas do algoritmo comumente usado para calcular o k-ésimo número de Fibonacci. Nós vamos usar exatamente essa mesma ideia para calcular não só o número de Fibonacci como normalmente calculamos, mas também para calcular o número de chamadas que o nosso algoritmo vai fazer.

Primeiramente, a recorrência de Fibonacci que todos nós conhecemos

$$F(n) = \begin{cases}
0 \text{, se } n = 0\\
1 \text{, se } n = 1\\
F(i - 1) + F(i - 2) \text{, caso contrário}
\end{cases}$$

que é inclusive a que está no enunciado. Vamos usar essa recorrência para calcular no número de Fibonacci e em conjunto a isso, faremos também a recorrência para o número de chamadas

$$CF(n) = \begin{cases}
1 \text{, se } n = 0\\
1 \text{, se } n = 1\\
CF(n - 1) + CF(n - 2) + 1 \text{, caso contrário}
\end{cases}$$

com o mais um porque contamos a própria chamada representada por $CF(n)$.

> Perceba que o número de chamadas recursivas envolve todas as chamadas **exceto a chamada inicial**, o que significa que, para nossa recorrência, é importante manter essa fórmula, mas para a resposta final, é necessário remover 1 para não contar a chamada inicial.

Com isso, no nosso código, podemos fazer o cálculo de ambos os valores ao mesmo tempo, pois precisamos tanto do Fibonacci quanto do número de chamadas.

Perceba que como temos apenas 39 valores diferentes, podemos inclusive pré-processar todos os casos antes de começarmos a receber as requisições ou podemos ir atendendo pela demanda, fica a seu critério. No meu código eu decidi fazer por demanda; para pré-processar todos os casos, basta acrescentar uma chamada `calcula(39)` na frente da leitura do input.

> Por algum motivo, o problem setter achou legal trocar o Fibonacci e o número de chamadas de lugar, então fique ciente disso quando você for apresentar o output do seu problema.

### C99

```c
#include <stdio.h>

int F[40], CF[40];

void calcula(int n){
    if(F[n] == -1){
        calcula(n - 1);
        calcula(n - 2);

        F[n] = F[n - 1] + F[n - 2];
        CF[n] = CF[n - 1] + CF[n - 2] + 1;
    }
}

int main(){
    int N, X;

    F[0] = 0;
    F[1] = 1;

    CF[0] = 1;
    CF[1] = 1;

    for(int i = 2; i < 40; ++i){
        F[i] = -1;
        CF[i] = -1;
    }

    scanf("%d", &N);
    for(int i = 0; i < N; ++i){
        scanf("%d", &X);
        calcula(X);
        printf("fib(%d) = %d calls = %d\n", X, CF[X] - 1, F[X]);
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int F[40], CF[40];

void calcula(int n){
    if(F[n] == -1){
        calcula(n - 1);
        calcula(n - 2);

        F[n] = F[n - 1] + F[n - 2];
        CF[n] = CF[n - 1] + CF[n - 2] + 1;
    }
}

int main(){
    int N, X;

    F[0] = 0;
    F[1] = 1;

    CF[0] = 1;
    CF[1] = 1;

    for(int i = 2; i < 40; ++i){
        F[i] = -1;
        CF[i] = -1;
    }

    cin >> N;
    for(int i = 0; i < N; ++i){
        cin >> X;
        calcula(X);
        cout << "fib(" << X << ") = " << CF[X] - 1 << " calls = " << F[X] << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static int[] F;
    static int[] CF;

    static (int result, int num_calls) calcula(int n)
    {
        if (F[n] == -1)
        {
            (int result1, int num_calls1) = calcula(n - 1);
            (int result2, int num_calls2) = calcula(n - 2);

            F[n] = result1 + result2;
            CF[n] = num_calls1 + num_calls2 + 1;
        }
        return (F[n], CF[n]);
    }

    static void Main(string[] args)
    {
        F = new int[40];
        F[0] = 0;
        F[1] = 1;
        CF = new int[40];
        CF[0] = 1;
        CF[1] = 1;

        for (int i = 2; i < 40; ++i)
        {
            F[i] = -1;
            CF[i] = -1;
        }

        int N = int.Parse(Console.ReadLine());
        for (int i = 0; i < N; ++i)
        {
            int X = int.Parse(Console.ReadLine());
            (int result, int num_calls) = calcula(X);
            Console.WriteLine($"fib({X}) = {num_calls - 1} calls = {result}");
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
    public static int[] F;
    public static int[] CF;

    public static void calcula(int n) {
        if (F[n] == -1) {
            calcula(n - 1);
            calcula(n - 2);

            F[n] = F[n - 1] + F[n - 2];
            CF[n] = CF[n - 1] + CF[n - 2] + 1;
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        F = new int[40];
        F[0] = 0;
        F[1] = 1;
        CF = new int[40];
        CF[0] = 1;
        CF[1] = 1;

        for (int i = 2; i < 40; ++i) {
            F[i] = -1;
            CF[i] = -1;
        }

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            int X = Integer.parseInt(in.readLine());
            calcula(X);
            System.out.printf("fib(%d) = %d calls = %d\n", X, CF[X] - 1, F[X]);
        }
    }
}
```

### JavaScript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let F = Array(40);
let CF = Array(40);

const calcula = (n) => {
    if (F[n] === -1) {
        let [result1, num_calls1] = calcula(n - 1);
        let [result2, num_calls2] = calcula(n - 2);

        F[n] = result1 + result2;
        CF[n] = num_calls1 + num_calls2 + 1;
    }

    return [F[n], CF[n]];
};

F.fill(-1);
CF.fill(-1);

F[0] = 0;
F[1] = 1;

CF[0] = 1;
CF[1] = 1;

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    let [result, num_calls] = calcula(X);

    console.log(`fib(${X}) = ${num_calls - 1} calls = ${result}`);
}
```

### Python 3.9

```py
F = [-1 for _ in range(40)]
CF = [-1 for _ in range(40)]

F[0] = 0
F[1] = 1

CF[0] = 1
CF[1] = 1

def calcula(n):
    if(F[n] == -1):
        result1, num_calls1 = calcula(n - 1)
        result2, num_calls2 = calcula(n - 2)
        F[n] = result1 + result2
        CF[n] = num_calls1 + num_calls2 + 1
    return (F[n], CF[n])

N = int(input())

for _ in range(N):
    X = int(input())
    result, num_calls = calcula(X)
    print(f'fib({X}) = {num_calls - 1} calls = {result}')
```