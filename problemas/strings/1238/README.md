# 1238 - Combinador

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1238)

## Solução

O jeito mais fácil de resolver esse problema é arrumar um _for_ para colocar duas letras por vez e depois pegar a string que sobrou e colocar ela toda. A ideia é simples, se temos duas strings, uma de tamanho 14 e outra de tamanho 10, então vamos fazer um for até 10 e depois pegar os 4 caracteres faltando da string maior.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int N, p, tam;
    char A[51], B[51], resposta[102];

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        scanf("%s %s\n", &A, &B);

        memset(resposta, '\0', sizeof(resposta));
        tam = strlen(A) < strlen(B) ? strlen(A) : strlen(B);
        p = 0;
        for(int j = 0; j < tam; ++j){
            resposta[p++] = A[j];
            resposta[p++] = B[j];
        }

        if(tam < strlen(A)){
            for(int j = tam; j < strlen(A); ++j){
                resposta[p++] = A[j];
            }
        }
        if(tam < strlen(B)){
            for(int j = tam; j < strlen(B); ++j){
                resposta[p++] = B[j];
            }
        }

        printf("%s\n", resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int N, tam;
    string A, B, resposta;

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> A >> B;

        resposta = "";
        tam = A.length() < B.length() ? A.length() : B.length();
        for(int j = 0; j < tam; ++j){
            resposta += A[j], resposta += B[j];
        }
        if(A.length() > 0)  resposta += A.substr(tam);
        if(B.length() > 0)  resposta += B.substr(tam);

        cout << resposta << endl;
    }

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            string[] palavras = Console.ReadLine().Trim().Split(' ');

            string A = palavras[0];
            string B = palavras[1];
            string resposta = "";

            int tam = A.Length < B.Length ? A.Length : B.Length;
            for(int j = 0; j < tam; ++j){
                resposta += A[j];
                resposta += B[j];
            }

            if(tam < A.Length){
                for(int j = tam; j < A.Length; ++j){
                    resposta += A[j];
                }
            }

            if(tam < B.Length){
                for(int j = tam; j < B.Length; ++j){
                    resposta += B[j];
                }
            }

            Console.WriteLine(resposta);
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

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String[] palavras = in.readLine().trim().split(" ");

            char[] A = palavras[0].toCharArray();
            char[] B = palavras[1].toCharArray();
            String resposta = "";

            int tam = Math.min(A.length, B.length);
            for(int j = 0; j < tam; ++j){
                resposta += A[j];
                resposta += B[j];
            }

            if(tam < A.length){
                for(int j = tam; j < A.length; ++j){
                    resposta += A[j];
                }
            }

            if(tam < B.length){
                for(int j = tam; j < B.length; ++j){
                    resposta += B[j];
                }
            }

            System.out.println(resposta);
        }
    }
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let [A, B] = lines.shift().trim().split(' ');

    let tam = Math.min(A.length, B.length);
    let resposta = '';
    for(let j = 0; j < tam; ++j){
        resposta += A[j] + B[j];
    }
    resposta += (A.length > tam) ? A.substring(tam) : B.substring(tam);

    console.log(resposta);
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    A, B = input().strip().split(' ')
    
    tam = min(len(A), len(B))
    resposta = ''.join([A[i] + B[i] for i in range(tam)])
    resposta = resposta + (A[tam:] if tam < len(A) else B[tam:])

    print(resposta)
```