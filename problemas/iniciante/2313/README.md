# 2313 - Qual Triângulo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2313)

## Solução

Eu escrevi aqui um código mais extenso para explicitar bem as verificações que você precisa fazer para:

* Ver se os três lados formam um triângulo;
* Qual o tipo de triângulo que os três lados formam;
* Se esse é um triângulo retângulo ou não.

### C99

```c
#include <stdio.h>
#include <math.h>

void swap(int *a, int *b)
{
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

int testaLado(int a, int b, int c)
{
    return abs(b - c) < a && a < b + c;
}

int triangulo(int a, int b, int c)
{
    return testaLado(a, b, c) && testaLado(b, a, c) && testaLado(c, a, b);
}

char *classificacao(int a, int b, int c)
{
    if (a == b && b == c)
    {
        return "Equilatero";
    }
    if (a == b || a == c || b == c)
    {
        return "Isoceles";
    }
    return "Escaleno";
}

int retangulo(int a, int b, int c)
{
    return a % 3 == 0 && b % 4 == 0 && c % 5 == 0;
}

int main()
{
    int A, B, C;

    scanf("%d %d %d\n", &A, &B, &C);

    if (A > B)
    {
        swap(&A, &B);
    }
    if (B > C)
    {
        swap(&B, &C);
        if (A > B)
        {
            swap(&A, &B);
        }
    }

    if (triangulo(A, B, C))
    {
        printf("Valido-%s\n", classificacao(A, B, C));
        printf("Retangulo: %c\n", retangulo(A, B, C) ? 'S' : 'N');
    }
    else
    {
        printf("Invalido\n");
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cmath>

using namespace std;

bool testaLado(int a, int b, int c)
{
    return abs(b - c) < a && a < b + c;
}

bool triangulo(int a, int b, int c)
{
    return testaLado(a, b, c) && testaLado(b, a, c) && testaLado(c, a, b);
}

string classificacao(int a, int b, int c)
{
    if (a == b && b == c)
    {
        return "Equilatero";
    }
    if (a == b || a == c || b == c)
    {
        return "Isoceles";
    }
    return "Escaleno";
}

bool retangulo(int a, int b, int c)
{
    return a % 3 == 0 && b % 4 == 0 && c % 5 == 0;
}

int main()
{
    int A, B, C;

    cin >> A >> B >> C;

    if (A > B)
    {
        swap(A, B);
    }
    if (B > C)
    {
        swap(B, C);
        if (A > B)
        {
            swap(A, B);
        }
    }

    if (triangulo(A, B, C))
    {
        cout << "Valido-" << classificacao(A, B, C) << endl;
        cout << "Retangulo: " << ((char)retangulo(A, B, C) ? 'S' : 'N') << endl;
    }
    else
    {
        cout << "Invalido" << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI {
    static bool testaLado(int a, int b, int c){
        return Math.Abs(b - c) < a && a < b + c;
    }

    static bool triangulo(List<int> lados){
        return testaLado(lados[0], lados[1], lados[2]) && testaLado(lados[1], lados[0], lados[2]) && testaLado(lados[2], lados[0], lados[1]);
    }

    static string classificacao(List<int> lados){
        if(lados[0] == lados[1] && lados[1] == lados[2]){
            return "Equilatero";
        }
        if(lados[0] == lados[1] || lados[0] == lados[2] || lados[1] == lados[2]){
            return "Isoceles";
        }
        return "Escaleno";
    }

    static bool retangulo(List<int> lados){
        return lados[0] % 3 == 0 && lados[1] % 4 == 0 && lados[2] % 5 == 0;
    }

    static void Main(string[] args) {
        List<int> lados = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        lados.Sort();

        if(triangulo(lados)){
            Console.WriteLine($"Valido-{classificacao(lados)}");
            Console.WriteLine($"Retangulo: {(retangulo(lados) ? 'S' : 'N')}");
        }else{
            Console.WriteLine("Invalido");
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;
import java.util.Arrays;

public class Main {
    public static boolean testaLado(int a, int b, int c) {
        return Math.abs(b - c) < a && a < b + c;
    }

    public static boolean triangulo(int[] lados) {
        return testaLado(lados[0], lados[1], lados[2]) && testaLado(lados[1], lados[0], lados[2])
                && testaLado(lados[2], lados[0], lados[1]);
    }

    public static String classificacao(int[] lados) {
        if (lados[0] == lados[1] && lados[1] == lados[2]) {
            return "Equilatero";
        }
        if (lados[0] == lados[1] || lados[0] == lados[2] || lados[1] == lados[2]) {
            return "Isoceles";
        }
        return "Escaleno";
    }

    public static boolean retangulo(int[] lados) {
        return lados[0] % 3 == 0 && lados[1] % 4 == 0 && lados[2] % 5 == 0;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int[] lados = new int[3];
        for (int i = 0; i < 3; ++i) {
            lados[i] = Integer.parseInt(entrada[i]);
        }
        Arrays.sort(lados);

        if (triangulo(lados)) {
            System.out.printf("Valido-%s\n", classificacao(lados));
            System.out.printf("Retangulo: %c\n", retangulo(lados) ? 'S' : 'N');
        } else {
            System.out.println("Invalido");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const comp = (a, b) => a - b;

const testaLado = (a, b, c) => {
    return Math.abs(b - c) < a && a < b + c;
};

const triangulo = (lados) => testaLado(lados[0], lados[1], lados[2]) && testaLado(lados[1], lados[0], lados[2]) && testaLado(lados[2], lados[0], lados[1]);

const classificacao = (lados) => {
    if (lados[0] === lados[1] && lados[1] === lados[2]) {
        return "Equilatero";
    }
    if (lados[0] === lados[1] || lados[0] === lados[2] || lados[1] === lados[2]) {
        return "Isoceles";
    }
    return "Escaleno";
};

const retangulo = (lados) => lados[0] % 3 === 0 && lados[1] % 4 === 0 && lados[2] % 5 === 0;

let lados = lines.shift().trim().split(' ').map(x => parseInt(x));
lados.sort(comp);

if (triangulo(lados)) {
    console.log(`Valido-${classificacao(lados)}`);
    console.log(`Retangulo: ${retangulo(lados) ? 'S' : 'N'}`);
} else {
    console.log('Invalido');
}
```

### Python 3.9

```py
def testaLado(a, b, c):
    return abs(b - c) < a < b + c


def triangulo(lados):
    return testaLado(lados[0], lados[1], lados[2]) and testaLado(lados[1], lados[0], lados[2]) and testaLado(lados[2], lados[0], lados[1])


def classificacao(lados):
    if(lados[0] == lados[1] == lados[2]):
        return 'Equilatero'
    if(lados[0] == lados[1] or lados[0] == lados[2] or lados[1] == lados[2]):
        return 'Isoceles'
    return 'Escaleno'


def retangulo(lados):
    return lados[0] % 3 == 0 and lados[1] % 4 == 0 and lados[2] % 5 == 0


lados = [int(x) for x in input().strip().split(' ')]
lados.sort()

if(triangulo(lados)):
    print(f'Valido-{classificacao(lados)}')
    ret = 'S' if retangulo(lados) else 'N'
    print(f'Retangulo: {ret}')
else:
    print('Invalido')
```