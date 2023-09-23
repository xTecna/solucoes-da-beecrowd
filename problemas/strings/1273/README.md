# 1273 - Justificador

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1273)

## Solução

Este problema se resume a imprimir cada palavra do texto gastando o mesmo espaço que a maior palavra. Linhas que têm menos letras que a maior palavra precisam apenas exibir espaços à esquerda.

Algumas linguagens possuem recursos especiais para fazer o espaçamento, confira como lidamos com isso na sua linguagem.

> Em Java, usei encadeamento de formatações para conseguir um espaçamento dinâmico, baseado na maior palavra.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char linhas[50][51];
    int N, n, maior, first;

    first = 1;
    while(scanf("%d\n", &N)){
        if(!N)  break;

        if(first)   first = 0;
        else        printf("\n");

        maior = 0;
        for(int i = 0; i < N; ++i){
            scanf("%s\n", &linhas[i]);
            maior = maior < strlen(linhas[i]) ? strlen(linhas[i]) : maior;
        }

        for(int i = 0; i < N; ++i){
            n = strlen(linhas[i]);
            for(int j = 0; j < maior - n; ++j)  printf(" ");
            printf("%s\n", linhas[i]);
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    bool first;
    int N, maior;
    string linhas[51];

    first = true;
    while(cin >> N){
        if(!N)  break;

        if(first)   first = false;
        else        cout << endl;

        maior = 0;
        for(int i = 0; i < N; ++i){
            cin >> linhas[i];
            maior = maior < linhas[i].length() ? linhas[i].length() : maior;
        }

        for(int i = 0; i < N; ++i){
            cout << setw(maior) << setfill(' ') << right << linhas[i] << endl;
        }
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        bool first = true;
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            if(N == 0){
                break;
            }

            if(first)   first = false;
            else        Console.WriteLine("");

            int maior = 0;
            string[] palavras = new string[N];
            for(int i = 0; i < N; ++i){
                palavras[i] = Console.ReadLine().Trim();
                maior = Math.Max(maior, palavras[i].Length);
            }

            for(int i = 0; i < N; ++i){
                Console.WriteLine(palavras[i].PadLeft(maior));
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
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        boolean first = true;

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            if(N == 0){
                break;
            }

            if(first)   first = false;
            else        System.out.println("");

            int maior = 0;
            String[] palavras = new String[N];
            for(int k = 0; k < N; ++k){
                palavras[k] = in.readLine().trim();
                maior = Math.max(maior, palavras[k].length());
            }

            for(int k = 0; k < N; ++k){
                System.out.println(String.format(String.format("%%%ds", maior), palavras[k]));
            }
        }

    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let first = true;
while(lines.length){
    let N = parseInt(lines.shift());

    if(!N)  break;

    if(first)   first = false;
    else        console.log('');

    let frases = [];
    for(let i = 0; i < N; ++i){
        frases.push(lines.shift().trim());
    }

    let maior = frases.reduce((acc, cur) => acc < cur.length ? cur.length : acc, 0);

    for(let i = 0; i < N; ++i){
        console.log(frases[i].padStart(maior));
    }
}
```

### Python 3.9
```py
first = True
while True:
    try:
        N = int(input())

        if(N == 0):
            break

        if(first):
            first = False
        else:
            print('')
        
        maior = 0
        linhas = []
        for _ in range(N):
            frase = input()
            maior = len(frase) if maior < len(frase) else maior
            linhas.append(frase)
        
        for frase in linhas:
            print(f"{(maior - len(frase)) * ' '}{frase}")
    except EOFError:
        break
```