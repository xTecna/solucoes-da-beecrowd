# 1318 - Bilhetes Falsos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1318)

## Solução

Como esse problema envolve saber a quantidade de identificadores que foram duplicados, uma simples operação com conjuntos não conseguirá resolver o problema. Entretanto, a solução continua simples, basta usar um vetor para monitorar quantos bilhetes daquele identificador já foram lidos até o momento e contabilizar que tal identificador foi duplicado quando, e somente quando, encontrarmos o mesmo bilhete pela **segunda vez**. Isso é porque nós só precisamos saber se ele foi duplicado e, para isso, apenas dois bilhetes bastam.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int bilhetes[10001];
    int N, M, T, resposta;

    while(scanf("%d %d", &N, &M)){
        if(!N && !M)    break;

        resposta = 0;
        memset(bilhetes, 0, sizeof(bilhetes));

        for(int i = 0; i < M; ++i){
            scanf("%d", &T);
            ++bilhetes[T];
            if(bilhetes[T] == 2)    ++resposta;
        }

        printf("%d\n", resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cstring>

using namespace std;

int main(){
    int bilhetes[10001];
    int N, M, T, resposta;

    while(cin >> N >> M){
        if(!N && !M)    break;

        resposta = 0;
        memset(bilhetes, 0, sizeof(bilhetes));

        for(int i = 0; i < M; ++i){
            cin >> T;
            ++bilhetes[T];
            if(bilhetes[T] == 2)    ++resposta;
        }

        cout << resposta << endl;
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
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            
            int N = numeros[0];
            int M = numeros[1];
            
            if(N == 0 && M == 0){
                break;
            }
            
            int repetidos = 0;
            int[] bilhetes = new int[N + 1];
            numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            for(int i = 0; i < M; ++i){
                bilhetes[numeros[i]] += 1;
                if(bilhetes[numeros[i]] == 2){
                    ++repetidos;
                }
            }
            
            Console.WriteLine(repetidos);
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] numeros = in.readLine().trim().split(" ");

            int N = Integer.parseInt(numeros[0]);
            int M = Integer.parseInt(numeros[1]);

            if(N == 0 && M == 0){
                break;
            }

            int repetidos = 0;
            int[] contador = new int[N + 1];
            String[] bilhetes = in.readLine().trim().split(" ");
            for(int i = 0; i < M; ++i){
                int bilhete = Integer.parseInt(bilhetes[i]);
                contador[bilhete] += 1;
                if(contador[bilhete] == 2){
                    ++repetidos;
                }
            }

            System.out.println(repetidos);
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
    let [N, M] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if(!N && !M)    break;

    let bilhetes = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let resposta = 0;
    let contador = Array(N + 1);
    contador.fill(0);

    bilhetes.forEach((bilhete) => {
        contador[bilhete] += 1;
        
        if(contador[bilhete] === 2) resposta += 1;
    });

    console.log(resposta);
}
```

### Python 3.9
```py
while True:
    try:
        N, M = [int(x) for x in input().strip().split(' ')]
        if(not N and not M):
            break

        bilhetes = [int(x) for x in input().strip().split(' ')]

        resposta = 0
        contador = [0 for i in range(N + 1)]

        for bilhete in bilhetes:
            contador[bilhete] += 1
            if(contador[bilhete] == 2):
                resposta += 1
        
        print(resposta)
    except EOFError:
        break
```