# 1551 - Frase Completa

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1551)

## Solução

Para este problema, você pode usar um conjunto para acrescentar as letras, e apenas as letras, de cada frase e contar quantos elementos tem ao final para definir se a frase é completa, quase completa ou mal elaborada. Caso sua linguagem não tenha suporte a conjuntos, nada que um mapeamento em um vetor de 26 posições usando a [tabela ASCII](../../../base-teorica/strings/ascii/README.md) não resolva.

### C99
```c
#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main(){
    char frase[1001];
    int N, diferentes, contagem[26];

    scanf("%d\n", &N);

    for(int k = 0; k < N; ++k){
        memset(contagem, 0, sizeof(contagem));

        scanf("%[^\n]\n", &frase);

        for(int i = 0; i < strlen(frase); ++i){
            if(isalpha(frase[i])){
                contagem[frase[i] - 'a'] = 1;
            }
        }

        diferentes = 0;
        for(int i = 0; i < 26; ++i){
            if(contagem[i]) ++diferentes;
        }

        if(diferentes == 26)        printf("frase completa\n");
        else if(diferentes > 12)    printf("frase quase completa\n");
        else                        printf("frase mal elaborada\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cctype>
#include <set>

using namespace std;

int main(){
    int N;
    string frase;
    set<char> letras;

    cin >> N;
    cin.ignore();

    for(int k = 0; k < N; ++k){
        letras.clear();

        getline(cin, frase);

        for(int i = 0; i < frase.length(); ++i){
            if(isalpha(frase[i]))   letras.insert(frase[i]);
        }

        if(letras.size() == 26)     cout << "frase completa" << endl;
        else if(letras.size() > 12) cout << "frase quase completa" << endl;
        else                        cout << "frase mal elaborada" << endl;
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            string frase = Console.ReadLine();

            HashSet<char> letras = new HashSet<char>();
            for(int j = 0; j < frase.Length; ++j){
                if(char.IsLetter(frase[j])){
                    letras.Add(frase[j]);
                }
            }

            if(letras.Count == 26){
                Console.WriteLine("frase completa");
            }else if(letras.Count >= 13){
                Console.WriteLine("frase quase completa");
            }else{
                Console.WriteLine("frase mal elaborada");
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
import java.util.HashSet;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String frase = in.readLine();

            HashSet<Character> letras = new HashSet<Character>();
            for(int j = 0; j < frase.length(); ++j){
                if(Character.isAlphabetic(frase.charAt(j))){
                    letras.add(frase.charAt(j));
                }
            }

            if(letras.size() == 26){
                System.out.println("frase completa");
            }else if(letras.size() >= 13){
                System.out.println("frase quase completa");
            }else{
                System.out.println("frase mal elaborada");
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let k = 0; k < N; ++k){
    let frase = lines.shift().trim();

    let letras = new Set();

    for(let i = 0; i < frase.length; ++i){
        if(/[a-z]/.test(frase[i]))  letras.add(frase[i]);
    }

    if(letras.size == 26)       console.log("frase completa");
    else if(letras.size > 12)   console.log("frase quase completa");
    else                        console.log("frase mal elaborada");
}
```

### Python 2.7
```py
N = int(input())

for _ in range(N):
    frase = input().strip()

    letras = set()

    for letra in frase:
        if(letra.isalpha()):
            letras.add(letra)
    
    if(len(letras) == 26):
        print("frase completa")
    elif(len(letras) > 12):
        print("frase quase completa")
    else:
        print("frase mal elaborada")
```