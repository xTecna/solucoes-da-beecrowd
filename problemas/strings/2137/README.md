# 2137 - A Biblioteca do Senhor Severino

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2137)

## Solução

O problema é bem direto, ordenar e apresentar os livros cadastrados por ordem de identificação. Você pode usar funções de ordenação prontas da sua linguagem de escolha. Ver [ordenação](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md) para aprender mais sobre o assunto.

### C99
```c
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int comp(const void* a, const void* b){
    return strcmp((char*)a, (char*)b);
}

int main(){
    int N;
    char livros[1001][5];

    while(scanf("%d\n", &N) != EOF){
        memset(livros, '\0', sizeof(livros));

        for(int i = 0; i < N; ++i){
            scanf("%s", &livros[i]);
        }

        qsort(livros, N, sizeof(char) * 5, comp);

        for(int i = 0; i < N; ++i){
            printf("%s\n", livros[i]);
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <algorithm>
#include <iostream>

using namespace std;

int main(){
    int N;
    string livros[1001];

    while(cin >> N){
        for(int i = 0; i < N; ++i){
            cin >> livros[i];
        }

        sort(livros, livros + N);

        for(int i = 0; i < N; ++i){
            cout << livros[i] << endl;
        }
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            List<string> codigos = new List<string>();
            for(int i = 0; i < N; ++i){
                codigos.Add(Console.ReadLine().Trim());
            }

            codigos.Sort();

            for(int i = 0; i < N; ++i){
                Console.WriteLine(codigos[i]);
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
import java.util.Arrays;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            String[] codigos = new String[N];
            for(int i = 0; i < N; ++i){
                codigos[i] = in.readLine().trim();
            }

            Arrays.sort(codigos);

            for(int i = 0; i < N; ++i){
                System.out.println(codigos[i]);
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
    let N = parseInt(lines.shift());

    let livros = [];
    for(let i = 0; i < N; ++i){
        livros.push(lines.shift().trim());
    }

    livros.sort();

    for(let i = 0; i < N; ++i){
        console.log(livros[i]);
    }
}
```

### Python 3.9
```py
while True:
    try:
        N = int(input())

        livros = []
        for _ in range(N):
            livros.append(input())
        
        livros.sort()

        for i in range(N):
            print(livros[i])
    except EOFError:
        break
```