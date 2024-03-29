# 1221 - Primo Rápido

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1221)

## Solução

Confira a página [Números primos](../base-teorica/matematica/numeros-primos.md) para entender como calcular a primalidade de números até $2^{31}$, que por ser um valor consideravelmente alto, não é possível criar um vetor com tantas posições. Por isso, vamos fazer o crivo até um valor um pouco maior do que a raiz quadrada de $2^{31}$ (aqui escolhemos $2^{16}$) e depois testar do jeito convencional.

### C99
```c
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int Crivo(int *C, int *primos, int n)
{
    int p = 0;

    for (int i = 0; i < n; ++i)
    {
        C[i] = 1;
    }
    C[1] = 0;
    primos[p++] = 2;

    for (int i = 4; i < n; i += 2)
    {
        C[i] = 0;
    }

    for (int i = 3; i < n; i += 2)
    {
        if (C[i] == 1)
        {
            primos[p++] = i;

            for (int j = i * 3; j < n; j += 2 * i)
            {
                C[j] = 0;
            }
        }
    }

    return p;
}

int ehPrimo(int *primos, int p, int n)
{
    int limite = sqrt(n) + 1;

    for (int i = 0; i < p && primos[i] < limite; ++i)
    {
        if (n % primos[i] == 0)
        {
            if (n == primos[i])
                return 1;
            return 0;
        }
    }

    return 1;
}

int main()
{
    int N, X, numeroPrimos, C[65536], primos[65536];

    numeroPrimos = Crivo(C, primos, 65536);

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &X);

        printf("%s\n", ehPrimo(primos, numeroPrimos, X) ? "Prime" : "Not Prime");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

void Crivo(vector<bool> &C, vector<int> &primos, int n)
{
    C.assign(n, true);

    C[1] = false;
    primos.push_back(2);

    for (int i = 4; i < n; i += 2)
    {
        C[i] = false;
    }

    for (int i = 3; i < n; i += 2)
    {
        if (C[i])
        {
            primos.push_back(i);

            for (int j = i * 3; j < n; j += 2 * i)
            {
                C[j] = false;
            }
        }
    }
}

bool ehPrimo(vector<int> &primos, int n)
{
    int p = primos.size();
    int limite = sqrt(n) + 1;

    for (int i = 0; i < p && primos[i] < limite; ++i)
    {
        if (n % primos[i] == 0)
        {
            return (n == primos[i]);
        }
    }

    return true;
}

int main()
{
    int N, X;
    vector<bool> C;
    vector<int> primos;

    Crivo(C, primos, 65536);

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        cout << (string)(ehPrimo(primos, X) ? "Prime" : "Not Prime") << endl;
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Collections.Generic;

class URI {
    static void Crivo(ref List<bool> C, ref List<int> primos, int n){
        for(int i = 0; i < n; ++i){
            C.Add(true);
        }
        
        C[1] = false;
        primos.Add(2);
        
        for(int i = 4; i < n; i += 2){
            C[i] = false;
        }
        
        for(int i = 3; i < n; i += 2){
            if(C[i]){
                primos.Add(i);
                
                for(int j = i * 3; j < n; j += 2 * i){
                    C[j] = false;
                }
            }
        }
    }

    static bool ehPrimo(ref List<int> primos, int n){
        int p = primos.Count;
        int limite = (int)Math.Sqrt(n) + 1;
        
        for(int i = 0; i < p && primos[i] < limite; ++i){
            if(n % primos[i] == 0){
                return (n == primos[i]);
            }
        }
        
        return true;
    }

    static void Main(string[] args) {
        int limite = 65536;
        List<bool> C = new List<bool>(limite);
        List<int> primos = new List<int>();

        Crivo(ref C, ref primos, limite);

        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            int X = int.Parse(Console.ReadLine());
            
            if(ehPrimo(ref primos, X)){
                Console.WriteLine("Prime");
            }else{
                Console.WriteLine("Not Prime");
            }
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class Main {
    public static void Crivo(ArrayList<Boolean>C, ArrayList<Integer> primos, int n){
        for(int i = 0; i < n; ++i){
            C.add(true);
        }
        
        C.set(1, false);
        primos.add(2);
        
        for(int i = 4; i < n; i += 2){
            C.set(i, false);
        }
        
        for(int i = 3; i < n; i += 2){
            if(C.get(i)){
                primos.add(i);
                
                for(int j = i * 3; j < n; j += 2 * i){
                    C.set(j, false);
                }
            }
        }
    }

    public static boolean ehPrimo(ArrayList<Integer> primos, int n){
        int p = primos.size();
        int limite = (int)Math.sqrt(n) + 1;
        
        for(int i = 0; i < p && primos.get(i) < limite; ++i){
            if(n % primos.get(i) == 0){
                return (n == primos.get(i));
            }
        }
        
        return true;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int limite = 65536;
        ArrayList<Boolean> C = new ArrayList<Boolean>();
        ArrayList<Integer> primos = new ArrayList<Integer>();
        Crivo(C, primos, limite);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            int X = Integer.parseInt(in.readLine());

            if(ehPrimo(primos, X)){
                System.out.println("Prime");
            }else{
                System.out.println("Not Prime");
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const Crivo = (n) => {
    let C = Array(n);
    C.fill(true);

    let primos = [];

    C[1] = false;
    primos.push(2);

    for (let i = 4; i < n; i += 2) {
        C[i] = false;
    }

    for (let i = 3; i < n; i += 2) {
        if (C[i]) {
            primos.push(i);

            for (let j = i * 3; j < n; j += 2 * i) {
                C[j] = false;
            }
        }
    }

    return primos;
};

const ehPrimo = (primos, n) => {
    let limite = Math.ceil(Math.sqrt(n));

    for (let i = 0; i < primos.length && primos[i] < limite; ++i) {
        if (n % primos[i] === 0) {
            return (n === primos[i]);
        }
    }

    return true;
};

let primos = Crivo(65536);

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    console.log(`${ehPrimo(primos, X) ? 'Prime' : 'Not Prime'}`);
}
```

### Python 3.9
```py
import math


def Crivo(n):
    C = [True for _ in range(n)]
    primos = []

    C[1] = False
    primos.append(2)

    for i in range(4, n, 2):
        C[i] = False

    for i in range(3, n, 2):
        if(C[i]):
            primos.append(i)

            for j in range(i * 3, n, 2 * i):
                C[j] = False

    return primos


def ehPrimo(primos, n):
    limite = math.ceil(math.sqrt(n))

    for primo in primos:
        if(primo > limite):
            return True
        elif(n % primo == 0):
            return (n == primo)

    return True


primos = Crivo(65536)

N = int(input())

for _ in range(N):
    X = int(input())

    print('Prime' if ehPrimo(primos, X) else 'Not Prime')
```