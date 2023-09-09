# 1259 - Pares e Ímpares

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1259)

## Solução

Veja a página de [ordenação](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md#customização-de-critérios) para entender como fazer critérios avançados para a ordenação de elementos. A ideia aqui é verificar se cada um dos números é par ou ímpar e comparar de acordo, tudo no mesmo vetor.

> Na versão em JavaScript, usar `lines.shift()` é lento demais, então tive que utilizar o acesso direto.

> Nas versões em Java, JavaScript e Python, usamos dois vetores por eu não ter conseguido pensar em uma função que ordenasse os dois tipos de número no mesmo vetor. Entretanto, perceba como podemos usar a mesma função em dois vetores diferentes, mudando apenas o parâmetro `reverse`.

### C99
```c
#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b)
{
    int A = *(int *)a, B = *(int *)b;

    if (A % 2 == 0)
        if (B % 2 == 0)
            return A - B;
        else
            return -1;
    else if (B % 2 == 0)
        return 1;
    else
        return B - A;
}

int main()
{
    int n, numeros[100000];

    scanf("%d", &n);

    for (int i = 0; i < n; ++i)
    {
        scanf("%d", &numeros[i]);
    }

    qsort(numeros, n, sizeof(int), comp);

    for (int i = 0; i < n; ++i)
    {
        printf("%d\n", numeros[i]);
    }

    return 0;
}
```

### C++17
```cpp
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

bool comp(int a, int b)
{
    if (a % 2 == 0)
        if (b % 2 == 0)
            return a < b;
        else
            return true;
    else if (b % 2 == 0)
        return false;
    else
        return a > b;
}

int main()
{
    int N;
    vector<int> numeros;

    cin >> N;
    numeros.assign(N, 0);
    for (int i = 0; i < N; ++i)
    {
        cin >> numeros[i];
    }

    sort(numeros.begin(), numeros.end(), comp);

    for (int i = 0; i < N; ++i)
    {
        cout << numeros[i] << endl;
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Collections.Generic;

class URI {
    static int Comp(int a, int b){
        if(a % 2 == 0){
            if(b % 2 == 0){
                return a - b;
            }else{
                return -1;
            }
        }else{
            if(b % 2 == 0){
                return 1;
            }else{
                return b - a;
            }
        }
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        List<int> V = new List<int>();
        for(int i = 0; i < N; ++i){
            V.Add(int.Parse(Console.ReadLine()));
        }

        V.Sort(Comp);

        for(int i = 0; i < N; ++i){
            Console.WriteLine(V[i]);
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        ArrayList<Integer> pares = new ArrayList<Integer>();
        ArrayList<Integer> impares = new ArrayList<Integer>();
        for(int i = 0; i < N; ++i){
            int x = Integer.parseInt(in.readLine());

            if(x % 2 == 0){
                pares.add(x);
            }else{
                impares.add(x);
            }
        }

        Collections.sort(pares);
        Collections.sort(impares, Collections.reverseOrder());

        for(int i = 0; i < pares.size(); ++i){
            System.out.println(pares.get(i));
        }
        for(int i = 0; i < impares.size(); ++i){
            System.out.println(impares.get(i));
        }
    }
}
```

### JavaScript
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const compCrescente = (a, b) => {
    return a - b;
};
const compDecrescente = (a, b) => {
    return b - a;
};

let p = 0;
let n = parseInt(lines[p++]);

let [pares, impares] = [[], []];
for(let i = 0; i < n; ++i){
    let numero = parseInt(lines[p++].trim());
    
    if(numero % 2 === 0)    pares.push(numero);
    else                    impares.push(numero);
}

pares.sort(compCrescente);
impares.sort(compDecrescente);

for(let i = 0; i < pares.length; ++i){
    console.log(pares[i]);
}
for(let i = 0; i < impares.length; ++i){
    console.log(impares[i]);
}
```

### Python 3.9
```py
def comp(a):
    return a


n = int(input())

pares = []
impares = []
for _ in range(n):
    numero = int(input())

    if (numero % 2 == 0):
        pares.append(numero)
    else:
        impares.append(numero)

pares.sort(key=comp)
impares.sort(key=comp, reverse=True)

for numero in pares:
    print(numero)
for numero in impares:
    print(numero)
```