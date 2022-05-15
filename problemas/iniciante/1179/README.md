# 1179 - Preenchimento de Vetor IV

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1179)

## Solução

Esse problema se torna muito mais fácil se você fizer uma função só para imprimir os vetores, porque daí toda vez que o vetor tiver 5 elementos, você executa a função e limpa o vetor, lembrando de ao final do programa imprimir o vetor novamente. Só lembrar de não imprimir nada caso o vetor esteja vazio.

### C99

```c
#include <stdlib.h>
#include <stdio.h>

void imprime(char *nome, int *vetor, int n)
{
    for (int i = 0; i < n; ++i)
    {
        printf("%s[%d] = %d\n", nome, i, vetor[i]);
    }
}

int main()
{
    int valor, par[5], impar[5], n_par, n_impar;

    n_par = 0;
    n_impar = 0;
    for (int i = 0; i < 15; ++i)
    {
        scanf("%d", &valor);

        if (abs(valor) % 2)
        {
            impar[n_impar++] = valor;

            if (n_impar == 5)
            {
                imprime("impar", impar, n_impar);
                n_impar = 0;
            }
        }
        else
        {
            par[n_par++] = valor;

            if (n_par == 5)
            {
                imprime("par", par, n_par);
                n_par = 0;
            }
        }
    }

    imprime("impar", impar, n_impar);
    imprime("par", par, n_par);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cstdlib>
#include <vector>

using namespace std;

void imprime(string nome, vector<int> vetor)
{
    for (int i = 0; i < vetor.size(); ++i)
    {
        cout << nome << "[" << i << "] = " << vetor[i] << endl;
    }
}

int main()
{
    int valor;
    vector<int> impar, par;

    for (int i = 0; i < 15; ++i)
    {
        cin >> valor;

        if (abs(valor) % 2)
        {
            impar.push_back(valor);

            if (impar.size() == 5)
            {
                imprime("impar", impar);
                impar.clear();
            }
        }
        else
        {
            par.push_back(valor);

            if (par.size() == 5)
            {
                imprime("par", par);
                par.clear();
            }
        }
    }

    imprime("impar", impar);
    imprime("par", par);

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Runtime;

class URI {
    static void imprime(string nome, List<int> vetor){
        for(int i = 0; i < vetor.Count; ++i){
            Console.WriteLine($"{nome}[{i}] = {vetor[i]}");
        }
    }

    static void Main(string[] args) {
        List<int> impar, par;

        impar = new List<int>();
        par = new List<int>();
        for(int i = 0; i < 15; ++i){
            int valor = int.Parse(Console.ReadLine());
            
            if(Math.Abs(valor) % 2 == 0){
                par.Add(valor);

                if(par.Count == 5){
                    imprime("par", par);
                    par.Clear();
                }
            }else{
                impar.Add(valor);

                if(impar.Count == 5){
                    imprime("impar", impar);
                    impar.Clear();
                }
            }
        }

        imprime("impar", impar);
        imprime("par", par);
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void imprime(String nome, int[] vetor, int n){
        for(int i = 0; i < n; ++i){
            System.out.printf("%s[%d] = %d\n", nome, i, vetor[i]);
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int n_impar, n_par;
        int[] impar, par;

        n_impar = 0;
        n_par = 0;
        impar = new int[5];
        par = new int[5];
        for(int i = 0; i < 15; ++i){
            int valor = Integer.parseInt(in.readLine());

            if(Math.abs(valor) % 2 == 1){
                impar[n_impar++] = valor;

                if(n_impar == 5){
                    imprime("impar", impar, n_impar);
                    n_impar = 0;
                }
            }else{
                par[n_par++] = valor;

                if(n_par == 5){
                    imprime("par", par, n_par);
                    n_par = 0;
                }
            }
        }

        imprime("impar", impar, n_impar);
        imprime("par", par, n_par);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let imprime = (nome, vetor) => {
    for (let i = 0; i < vetor.length; ++i) {
        console.log(`${nome}[${i}] = ${vetor[i]}`);
    }
};

let impar = [];
let par = [];
for (let i = 0; i < 15; ++i) {
    let valor = parseInt(lines.shift());

    if (Math.abs(valor) % 2) {
        impar.push(valor);

        if (impar.length === 5) {
            imprime("impar", impar);
            impar = [];
        }
    } else {
        par.push(valor);

        if (par.length === 5) {
            imprime("par", par);
            par = [];
        }
    }
}

imprime("impar", impar);
imprime("par", par);
```

### Python 3.9

```py
def imprime(nome, vetor):
    for i, valor in enumerate(vetor):
        print(f'{nome}[{i}] = {valor}')


impar = []
par = []
for _ in range(15):
    valor = int(input())

    if(abs(valor) % 2 == 1):
        impar.append(valor)

        if(len(impar) == 5):
            imprime("impar", impar)
            impar = []
    else:
        par.append(valor)

        if(len(par) == 5):
            imprime("par", par)
            par = []

imprime("impar", impar)
imprime("par", par)
```