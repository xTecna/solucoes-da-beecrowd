# 1071 - Soma de Impares Consecutivos I

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1071)

## Solução

### Alternativa 1 - Usando `for`

Para facilitar o `for`, você pode querer transformar os `X` e `Y` ambos em valores que você gostaria que fossem incluídos nessa soma. Nesse caso:

* Se `X` é par, o primeiro elemento da sequência é `X + 1`. Se `X` é ímpar, o primeiro elemento da sequência é `X + 2`.
* Se `Y` é par, o último elemento da sequência é `X - 1`. Se `Y` é ímpar, o último elemento da sequência é `Y - 2`.

> Eu usei o valor absoluto das variáveis para fazer a operação de mod porque o mod pode se provar problemático para números negativos.

#### C99

```c
#include <stdlib.h>
#include <stdio.h>

void swap(int *a, int *b)
{
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

int main()
{
    int X, Y, soma;

    scanf("%d %d", &X, &Y);
    if (X > Y)
    {
        swap(&X, &Y);
    }
    X += (abs(X) % 2) + 1;

    soma = 0;
    for (int i = X; i <= Y; i += 2)
    {
        soma += i;
    }

    printf("%d\n", soma);

    return 0;
}
```

#### C++17

```cpp
#include <iostream>
#include <cstdlib>

using namespace std;

int main()
{
    int X, Y, soma;

    cin >> X >> Y;

    if (X > Y)
    {
        swap(X, Y);
    }
    X += (abs(X) % 2) + 1;
    Y -= (abs(Y) % 2) + 1;

    soma = 0;
    for (int i = X; i <= Y; i += 2)
    {
        soma += i;
    }

    cout << soma << endl;

    return 0;
}
```

#### C#

```cs
using System;
using System.Runtime;

class URI {    
    static void Main(string[] args) {
        int X = int.Parse(Console.ReadLine());
        int Y = int.Parse(Console.ReadLine());
        
        if(X > Y){
            int temp = X;
            X = Y;
            Y = temp;
        }
        X += (Math.Abs(X) % 2) + 1;
        Y -= (Math.Abs(Y) % 2) + 1;
        
        int soma = 0;
        for(int i = X; i <= Y; i += 2){
            soma += i;
        }

        Console.WriteLine(soma);
    }
}
```

#### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int X = Integer.parseInt(in.readLine());
        int Y = Integer.parseInt(in.readLine());
        
        if(X > Y){
            int temp = X;
            X = Y;
            Y = temp;
        }
        X += (Math.abs(X) % 2) + 1;
        Y -= (Math.abs(Y) % 2) + 1;
        
        int soma = 0;
        for(int i = X; i <= Y; i += 2){
            soma += i;
        }

        System.out.println(soma);
    }
}
```

#### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const numeroImpares = (X, Y) => Math.floor((Y - X) / 2.0) + 1;
const somaPA = (X, Y) => Math.floor((X + Y) * numeroImpares(X, Y)) / 2.0;

let X = parseInt(lines.shift());
let Y = parseInt(lines.shift());

if (X > Y) {
    [X, Y] = [Y, X];
}
X += (Math.abs(X) % 2) + 1;
Y -= (Math.abs(Y) % 2) + 1;

let soma = 0;
for (let i = X; i <= Y; i += 2) {
    soma += i;
}

console.log(soma);
```

#### Python 3.9

```py
X = int(input())
Y = int(input())

if X > Y:
    X, Y = Y, X
X += (X % 2) + 1
Y -= (Y % 2) + 1

print(sum(range(X, Y + 1, 2)))
```

### Alternativa 2 - Usando a fórmula da soma de PA

Como essa sequência de números ímpares pode ser considerado uma progressão aritmética e como já sabemos o primeiro e o último elemento de tal sequência, então podemos usar a fórmula de progressão aritmética para calcular a soma com complexidade constante.

O único detalhe é que precisamos saber quantos números há entre `X` e `Y`. Se seguirmos a mesma ideia da alternativa 1 para estipularmos `X` e `Y`, podemos calcular a quantidade de números ímpares entre `X` e `Y` inclusive fazendo `(X - Y)/2 + 1`, já que ambos os valores são ímpares, restando apenas somar 1 para contar o elemento `X` ou `Y`.

#### C99

```c
#include <stdlib.h>
#include <stdio.h>

void swap(int *a, int *b)
{
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

int numeroImpares(int X, int Y)
{
    return (Y - X) / 2 + 1;
}

int somaPA(int X, int Y)
{
    return (X + Y) * numeroImpares(X, Y) / 2;
}

int main()
{
    int X, Y, soma;

    scanf("%d %d", &X, &Y);
    if (X > Y)
    {
        swap(&X, &Y);
    }
    X += (abs(X) % 2) + 1;
    Y -= (abs(Y) % 2) + 1;

    printf("%d\n", somaPA(X, Y));

    return 0;
}
```

#### C++17

```cpp
#include <iostream>
#include <cstdlib>

using namespace std;

int numeroImpares(int X, int Y)
{
    return (Y - X) / 2 + 1;
}

int somaPA(int X, int Y)
{
    return (X + Y) * numeroImpares(X, Y) / 2;
}

int main()
{
    int X, Y;

    cin >> X >> Y;

    if (X > Y)
    {
        swap(X, Y);
    }
    X += (abs(X) % 2) + 1;
    Y -= (abs(Y) % 2) + 1;

    cout << somaPA(X, Y) << endl;

    return 0;
}
```

#### C#

```cs
using System;
using System.Runtime;

class URI {
    static int numeroImpares(int X, int Y){
        return (Y - X)/2 + 1;
    }
    
    static int somaPA(int X, int Y){
        return (X + Y) * numeroImpares(X, Y)/2;
    }
    
    static void Main(string[] args) {
        int X = int.Parse(Console.ReadLine());
        int Y = int.Parse(Console.ReadLine());
        
        if(X > Y){
            int temp = X;
            X = Y;
            Y = temp;
        }
        X += (Math.Abs(X) % 2) + 1;
        Y -= (Math.Abs(Y) % 2) + 1;
        
        Console.WriteLine(somaPA(X, Y));
    }
}
```

#### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int numeroImpares(int X, int Y){
        return (Y - X)/2 + 1;
    }
    
    public static int somaPA(int X, int Y){
        return (X + Y) * numeroImpares(X, Y)/2;
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int X = Integer.parseInt(in.readLine());
        int Y = Integer.parseInt(in.readLine());
        
        if(X > Y){
            int temp = X;
            X = Y;
            Y = temp;
        }
        X += (Math.abs(X) % 2) + 1;
        Y -= (Math.abs(Y) % 2) + 1;
        
        System.out.println(somaPA(X, Y));
    }
}
```

#### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const numeroImpares = (X, Y) => Math.floor((Y - X) / 2.0) + 1;
const somaPA = (X, Y) => Math.floor((X + Y) * numeroImpares(X, Y)) / 2.0;

let X = parseInt(lines.shift());
let Y = parseInt(lines.shift());

if (X > Y) {
    [X, Y] = [Y, X];
}
X += (Math.abs(X) % 2) + 1;
Y -= (Math.abs(Y) % 2) + 1;

console.log(somaPA(X, Y));
```

#### Python 3.9

```py
def numeroImpares(X, Y):
    return (Y - X)//2 + 1


def somaPA(X, Y):
    return (X + Y) * numeroImpares(X, Y)//2


X = int(input())
Y = int(input())

if X > Y:
    X, Y = Y, X
X += (X % 2) + 1
Y -= (Y % 2) + 1

print(somaPA(X, Y))
```