# 1237 - Comparação de Substring

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1237)

## Solução

Este problema quer saber apenas o tamanho da maior _substring_ comum possível entre duas _strings_ de entrada, problema que possui um algoritmo conhecido. Confira a página [Maior Subsequência Comum](../../../base-teorica/strings/lcs/README.md) para entender como o algoritmo funciona.

> A solução em Python ainda não está disponível no momento. :(

### C99
```c
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int LCS(char* A, char* B){
    int** T;
    int n, m, resultado;
    
    n = strlen(A), m = strlen(B);
    
    T = (int**) malloc(sizeof(int*) * (n + 1));
    for(int i = 0; i <= n; ++i){
        T[i] = (int*) malloc(sizeof(int) * (m + 1));
        for(int j = 0; j <= m; ++j){
            T[i][j] = 0;
        }
    }
    
    resultado = 0;
    for(int i = 1; i <= n; ++i){
        for(int j = 1; j <= m; ++j){
            if(A[i - 1] == B[j - 1]){
                T[i][j] = T[i - 1][j - 1] + 1;
                resultado = resultado < T[i][j] ? T[i][j] : resultado;
            }
        }
    }
    
    return resultado;
}

int main(){
    char A[51], B[51];

    while(scanf("%[^\n]\n%[^\n]\n", &A, &B) != EOF){
        printf("%d\n", LCS(A, B));
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <vector>

using namespace std;

int LCS(string A, string B){
    int n, m, resposta;
    vector<vector<int> > T;

    n = A.length(), m = B.length();

    T.assign(n + 1, vector<int>());
    for(int i = 0; i <= n; ++i){
        T[i].assign(m + 1, 0);
    }

    resposta = 0;
    for(int i = 1; i <= n; ++i){
        for(int j = 1; j <= m; ++j){
            if(A[i - 1] == B[j - 1]){
                T[i][j] = T[i - 1][j - 1] + 1;
                resposta = max(resposta, T[i][j]);
            }
        }
    }

    return resposta;
}

int main(){
    string A, B;

    while(getline(cin, A)){
        getline(cin, B);

        cout << LCS(A, B) << endl;
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Runtime;

class URI {
    static int LCS(string A, string B) {
        int n = A.Length, m = B.Length;
        int[,] T = new int[n + 1, m + 1];

        for(int i = 0; i <= n; ++i){
            for(int j = 0; j <= m; ++j){
                T[i, j] = 0;
            }
        }

        int resultado = 0;
        for(int i = 1; i <= n; ++i){
            for(int j = 1; j <= m; ++j){
                if(A[i - 1] == B[j - 1]){
                    T[i, j] = T[i - 1, j - 1] + 1;
                    resultado = Math.Max(resultado, T[i, j]);
                }
            }
        }

        return resultado;
    }

    static void Main(string[] args) {
        string A, B;

        while((A = Console.ReadLine()) != null){
            B = Console.ReadLine();
            Console.WriteLine(LCS(A, B));
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
    public static int LCS(String A, String B) {
        int n = A.length(), m = B.length();
        int[][] T = new int[n + 1][m + 1];

        for(int i = 0; i <= n; ++i){
            for(int j = 0; j <= m; ++j){
                T[i][j] = 0;
            }
        }

        int resultado = 0;
        for(int i = 1; i <= n; ++i){
            for(int j = 1; j <= m; ++j){
                if(A.charAt(i - 1) == B.charAt(j - 1)){
                    T[i][j] = T[i - 1][j - 1] + 1;
                    resultado = Math.max(resultado, T[i][j]);
                }
            }
        }

        return resultado;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String A = in.readLine();
            String B = in.readLine();

            System.out.println(LCS(A, B));
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const LCS = (A, B) => {
    let n = A.length, m = B.length;
    let T = Array(n + 1);
    for(let i = 0; i <= n; ++i){
        T[i] = Array(m + 1);
        T[i].fill(0);
    }

    let resposta = 0;
    for(let i = 1; i <= n; ++i){
        for(let j = 1; j <= m; ++j){
            if(A[i - 1] === B[j - 1]){
                T[i][j] = T[i - 1][j - 1] + 1;
                resposta = Math.max(resposta, T[i][j]);
            }
        }
    }

    return resposta;
}

while(lines.length){
    let A = lines.shift().trim();
    let B = lines.shift().trim();

    console.log(LCS(A, B));
}
```