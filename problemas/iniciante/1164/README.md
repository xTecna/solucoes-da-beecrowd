# 1164 - Número Perfeito

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1164)

## Solução

A soma dos divisores de um número pode ser calculado através dos seus fatores primos. Se um número <img src="https://latex.codecogs.com/png.image?\dpi{110} \bg_white X = a^{i} \cdot b^{j} \ldots \cdot c^{k}" title="\bg_white X = a^{i} \cdot b^{j} \cdot \cdots \cdot c^{k}" />, então a soma de seus divisores é <img src="https://latex.codecogs.com/png.image?\dpi{110} \bg_white somaDivisores(X) = \frac{a^{i + 1} - 1}{a - 1} \times \frac{b^{j + 1} - 1}{b - 1} \times \ldots \times \frac{c^{k + 1} - 1}{c - 1}" title="\bg_white somaDivisores(X) = \frac{a^{i + 1} - 1}{a - 1} \times \frac{b^{j + 1} - 1}{b - 1} \times \ldots \times \frac{c^{k + 1} - 1}{c - 1}" />.

Vide [crivo de Eratóstenes](../../../base-teorica/matematica/primos/README.md#crivo-de-eratóstenes---complexidade-om-log-log-m-para-todos-os-números-entre-1-e-m-com-m-até-107) e [potenciação modular](../../../base-teorica/matematica/macetes/README.md#potentiação-rápida) para entender melhor os algoritmos usados neste problema.


### C99

```c
#include <stdio.h>
#define NMAX 10001

int n_primos, C[NMAX], primos[NMAX];

void Crivo()
{
    n_primos = 0;
    C[0] = 0;
    C[1] = 0;
    C[2] = 1;
    primos[n_primos++] = 2;
    for (int i = 4; i < NMAX; i += 2)
    {
        C[i] = 0;
    }
    for (int i = 3; i < NMAX; i += 2)
    {
        C[i] = 1;
    }

    for (int i = 3; i < NMAX; i += 2)
    {
        if (C[i])
        {
            primos[n_primos++] = i;
            for (int j = 3 * i; j < NMAX; j += 2 * i)
            {
                C[j] = 0;
            }
        }
    }
}

long long int potencia(int base, int expoente)
{
    if (expoente == 0)
    {
        return 1;
    }
    else if (expoente % 2)
    {
        return base * potencia(base, expoente - 1);
    }
    else
    {
        long long int pot = potencia(base, expoente / 2);
        return pot * pot;
    }
}

long long int sumDiv(int N)
{
    int i_primo = 0;
    int primo = primos[i_primo];
    long long int resposta = 1;

    while (primo * primo <= N)
    {
        int pot = 0;

        while (N % primo == 0)
        {
            N /= primo;
            ++pot;
        }

        resposta *= (potencia(primo, pot + 1) - 1) / (primo - 1);
        primo = primos[++i_primo];
    }

    if (N != 1)
    {
        resposta *= (potencia(N, 2) - 1) / (N - 1);
    }

    return resposta;
}

int main()
{
    Crivo();

    int N, X;

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &X);

        if (X == sumDiv(X) - X)
        {
            printf("%lld eh perfeito\n", X);
        }
        else
        {
            printf("%lld nao eh perfeito\n", X);
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#define NMAX 10001

using namespace std;

bool C[NMAX];
int n_primos, primos[NMAX];

void Crivo()
{
    n_primos = 0;
    C[0] = false;
    C[1] = false;
    C[2] = true;
    primos[n_primos++] = 2;
    for (int i = 4; i < NMAX; i += 2)
    {
        C[i] = false;
    }
    for (int i = 3; i < NMAX; i += 2)
    {
        C[i] = true;
    }

    for (int i = 3; i < NMAX; i += 2)
    {
        if (C[i])
        {
            primos[n_primos++] = i;
            for (int j = 3 * i; j < NMAX; j += 2 * i)
            {
                C[j] = false;
            }
        }
    }
}

long long int potencia(int base, int expoente)
{
    if (expoente == 0)
    {
        return 1;
    }
    else if (expoente % 2)
    {
        return base * potencia(base, expoente - 1);
    }
    else
    {
        int pot = potencia(base, expoente / 2);
        return pot * pot;
    }
}

long long int sumDiv(int N)
{
    int i_primo = 0;
    int primo = primos[i_primo];
    long long int resposta = 1;

    while (primo * primo <= N)
    {
        int pot = 0;

        while (N % primo == 0)
        {
            N /= primo;
            ++pot;
        }

        resposta *= (potencia(primo, pot + 1) - 1) / (primo - 1);
        primo = primos[++i_primo];
    }

    if (N != 1)
    {
        resposta *= (potencia(N, 2) - 1) / (N - 1);
    }

    return resposta;
}

int main()
{
    Crivo();

    int N, X;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        if (X == sumDiv(X) - X)
        {
            cout << X << " eh perfeito" << endl;
        }
        else
        {
            cout << X << " nao eh perfeito" << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;

class URI {
    static bool[] C;
    static List<int> primos;
    static int NMAX = 10001;

    static void Crivo(){
        primos = new List<int>();
        C = new bool[NMAX];

        C[0] = false;
        C[1] = false;
        C[2] = true;
        primos.Add(2);
        for(int i = 4; i < NMAX; i += 2){
            C[i] = false;
        }
        for(int i = 3; i < NMAX; i += 2){
            C[i] = true;
        }

        for(int i = 3; i < NMAX; i += 2){
            if(C[i]){
                primos.Add(i);
                for(int j = 3 * i; j < NMAX; j += 2 * i){
                    C[j] = false;
                }
            }
        }
    }

    static long potencia(int numero, int expoente){
        if(expoente == 0){
            return 1;
        }else if(expoente % 2 == 1){
            return numero * potencia(numero, expoente - 1);
        }else{
            long pot = potencia(numero, expoente / 2);
            return pot * pot;
        }
    }

    static long sumDiv(int N){
        int i_primos = 0;
        int primo = primos[i_primos];
        long resposta = 1;

        while(primo * primo <= N){
            int pot = 0;

            while(N % primo == 0){
                N /= primo;
                ++pot;
            }

            resposta *= (potencia(primo, pot + 1) - 1) / (primo - 1);
            primo = primos[++i_primos];
        }

        if(N != 1){
            resposta *= (potencia(N, 2) - 1)/(N - 1);
        }

        return resposta;
    }

    static void Main(string[] args) {
        Crivo();

        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            int X = int.Parse(Console.ReadLine());

            if(X == sumDiv(X) - X){
                Console.WriteLine($"{X} eh perfeito");
            }else{
                Console.WriteLine($"{X} nao eh perfeito");
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
    public static int NMAX = 10001;
    public static int[] primos;
    public static boolean[] C;
    public static int n_primos;

    public static void Crivo(){
        C = new boolean[NMAX];
        primos = new int[NMAX];
        n_primos = 0;

        C[0] = false;
        C[1] = false;
        C[2] = true;
        primos[n_primos++] = 2;
        for(int i = 4; i < NMAX; i += 2){
            C[i] = false;
        }
        for(int i = 3; i < NMAX; i += 2){
            C[i] = true;
        }

        for(int i = 3; i < NMAX; i += 2){
            if(C[i]){
                primos[n_primos++] = i;
                for(int j = 3 * i; j < NMAX; j += 2 * i){
                    C[j] = false;
                }
            }
        }
    }

    public static long potencia(int base, int expoente){
        if(expoente == 0){
            return 1;
        }else if(expoente % 2 == 1){
            return base * potencia(base, expoente - 1);
        }else{
            long pot = potencia(base, expoente / 2);
            return pot * pot;
        }
    }

    public static long sumDiv(int N){
        int i_primos = 0;
        int primo = primos[i_primos];
        long resposta = 1;

        while(primo * primo <= N){
            int pot = 0;

            while(N % primo == 0){
                N /= primo;
                ++pot;
            }

            resposta *= (potencia(primo, pot + 1) - 1)/(primo - 1);
            primo = primos[++i_primos];
        }

        if(N != 1){
            resposta *= (potencia(N, 2) - 1)/(N - 1);
        }

        return resposta;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        Crivo();

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            int X = Integer.parseInt(in.readLine());

            if(X == sumDiv(X) - X){
                System.out.printf("%d eh perfeito\n", X);
            }else{
                System.out.printf("%d nao eh perfeito\n", X);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let NMAX = 10001;
let C = Array(NMAX);
let primos = [];

let Crivo = () => {
    C[0] = false;
    C[1] = false;
    C[2] = true;
    primos.push(2);
    for (let i = 4; i < NMAX; i += 2) {
        C[i] = false;
    }
    for (let i = 3; i < NMAX; i += 2) {
        C[i] = true;
    }

    for (let i = 3; i < NMAX; i += 2) {
        if (C[i]) {
            primos.push(i);
            for (let j = 3 * i; j < NMAX; j += 2 * i) {
                C[j] = false;
            }
        }
    }
};

let potencia = (base, expoente) => {
    if (expoente === 0) {
        return 1;
    } else if (expoente % 2 === 1) {
        return base * potencia(base, expoente - 1);
    } else {
        let pot = potencia(base, Math.floor(expoente / 2));
        return pot * pot;
    }
};

let sumDiv = (N) => {
    let i_primos = 0;
    let primo = primos[i_primos];
    let resposta = 1;

    while (primo * primo <= N) {
        let pot = 0;

        while (N % primo == 0) {
            N /= primo;
            ++pot;
        }

        resposta *= (potencia(primo, pot + 1) - 1) / (primo - 1);
        primo = primos[++i_primos];
    }

    if (N !== 1) {
        resposta *= (potencia(N, 2) - 1) / (N - 1);
    }

    return resposta;
};

Crivo();

let N = parseInt(lines.shift());
for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    if (X === sumDiv(X) - X) {
        console.log(`${X} eh perfeito`);
    } else {
        console.log(`${X} nao eh perfeito`);
    }
}
```

### Python 3.9

```py
NMAX = 10001
C = [False for _ in range(NMAX)]
primos = []


def Crivo():
    C[2] = True
    primos.append(2)
    for i in range(3, NMAX, 2):
        C[i] = True

    for i in range(3, NMAX, 2):
        if(C[i]):
            primos.append(i)
            for j in range(3 * i, NMAX, 2 * i):
                C[j] = False


def potencia(base, expoente):
    if(expoente == 0):
        return 1
    elif(expoente % 2 == 1):
        return base * potencia(base, expoente - 1)
    else:
        pot = potencia(base, expoente//2)
        return pot * pot


def sumDiv(N):
    i_primos = 0
    primo = primos[i_primos]
    resposta = 1

    while(primo * primo <= N):
        pot = 0

        while(N % primo == 0):
            N /= primo
            pot += 1

        resposta *= (potencia(primo, pot + 1) - 1)//(primo - 1)
        i_primos += 1
        primo = primos[i_primos]

    if(N != 1):
        resposta *= (potencia(N, 2) - 1)//(N - 1)

    return resposta


Crivo()

N = int(input())
for _ in range(N):
    X = int(input())

    if(X == sumDiv(X) - X):
        print(f'{X} eh perfeito')
    else:
        print(f'{X} nao eh perfeito')

```