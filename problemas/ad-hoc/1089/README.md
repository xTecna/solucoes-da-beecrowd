# 1089 - Loop Musical

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1089)

## Solução

Para cada magnitude de uma amostra, para considerarmos elas um pico, basta que ela cumpra uma dessas duas condições:

* A magnitude seja menor que seus dois vizinhos;
* A magnitude seja maior que seus dois vizinhos.

Como se trata de um vetor circular, o vizinho à esquerda da primeira magnitude é a última e o vizinho à direita da última magnitude é a primeira. Confira a página [Deslocar dentro de um intervalo \[0, N - 1\]](../../../base-teorica/matematica/macetes/README.md#deslocar-dentro-de-um-intervalo-0-n-1) para entender melhor porque as operações $(i + 1) \mod N$ e $((i - 1) + N) \mod N$ funcionam para acessarmos os vizinhos da direita e da esquerda respectivamente.

### C99
```c
#include <stdio.h>

int main(){
    int amostras[10001];
    int N, anterior, proximo, picos;

    while(scanf("%d", &N)){
        if(!N)  break;

        for(int i = 0; i < N; ++i){
            scanf("%d", &amostras[i]);
        }

        picos = 0;
        for(int i = 0; i < N; ++i){
            anterior = amostras[((i - 1) + N) % N];
            proximo = amostras[(i + 1) % N];

            if((amostras[i] < anterior && amostras[i] < proximo) || (amostras[i] > anterior && amostras[i] > proximo))  ++picos;
        }

        printf("%d\n", picos);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <vector>

using namespace std;

int main(){
    vector<int> amostras;
    int N, anterior, proximo, picos;

    while(cin >> N){
        if(!N)  break;

        amostras.assign(N, 0);
        for(int i = 0; i < N; ++i){
            cin >> amostras[i];
        }

        picos = 0;
        for(int i = 0; i < N; ++i){
            anterior = amostras[((i - 1) + N) % N];
            proximo = amostras[(i + 1) % N];

            if((amostras[i] < anterior && amostras[i] < proximo) || (amostras[i] > anterior && amostras[i] > proximo))  ++picos;
        }

        cout << picos << endl;
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
            
            if(N == 0){
                break;
            }
            
            List<int> H = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int picos = 0;
            for(int i = 0; i < N; ++i){
                int anterior = H[((i - 1) + N) % N];
                int proximo = H[(i + 1) % N];
                
                if((H[i] < anterior && H[i] < proximo) || (H[i] > anterior && H[i] > proximo)){
                    ++picos;
                }
            }
            
            Console.WriteLine(picos);
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
            int N = Integer.parseInt(in.readLine());

            if(N == 0){
                break;
            }

            String[] H = in.readLine().trim().split(" ");
            int[] amostras = new int[N];
            for(int i = 0; i < N; ++i){
                amostras[i] = Integer.parseInt(H[i]);
            }

            int picos = 0;
            for(int i = 0; i < N; ++i){
                int anterior = amostras[((i - 1) + N) % N];
                int proximo = amostras[(i + 1) % N];

                if((amostras[i] < anterior && amostras[i] < proximo) || (amostras[i] > anterior && amostras[i] > proximo)){
                    ++picos;
                }
            }

            System.out.println(picos);
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
  let N = parseInt(lines.shift());

  let amostras = lines.shift().trim().split(" ").map((x) => parseInt(x));

  let picos = amostras.filter((atual, i) => {
    let anterior = amostras[(i - 1 + N) % N];
    let proximo = amostras[(i + 1) % N];

    return (atual < anterior && atual < proximo) || (atual > anterior && atual > proximo);
  });

  console.log(picos.length);
}
```

### Python 3.9
```py
while True:
    try:
        N = int(input())

        if(not N):
            break
        
        amostras = [int(x) for x in input().strip().split(' ')]

        picos = 0
        for i in range(len(amostras)):
            anterior = amostras[((i - 1) + N) % N]
            proximo = amostras[(i + 1) % N]

            if((amostras[i] < anterior and amostras[i] < proximo) or (amostras[i] > anterior and amostras[i] > proximo)):
                picos += 1
        
        print(picos)
    except EOFError:
        break
```