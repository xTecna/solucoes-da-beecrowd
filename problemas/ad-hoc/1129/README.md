# 1129 - Leitura Ótica

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1129)

## Solução

Aqui precisamos verificar dentre as cores qual delas são pretas, e descartar casos onde nenhuma ou mais de uma cor preta foi encontrada. Em linguagens funcionais, é perfeitamente plausível usar `filter` para esse objetivo. Entender o [código ASCII](../../../base-teorica/strings/ascii/README.md) também vai te dar uma maneira muito mais fácil de imprimir a saída (no nosso código, por exemplo, o número `65` se refere ao caractere `'A'`).

### C99
```c
#include <stdio.h>

int main(){
    int N, cor, opcao, corretos;

    while(scanf("%d", &N)){
        if(!N)  break;

        for(int i = 0; i < N; ++i){
            opcao = -1, corretos = 0;

            for(int k = 0; k < 5; ++k){
                scanf("%d", &cor);

                if(cor <= 127){
                    opcao = k;
                    ++corretos;
                }
            }

            if(corretos == 1)   printf("%c\n", 'A' + opcao);
            else                printf("*\n");
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int N, cor, opcao, corretos;

    while(cin >> N){
        if(!N)  break;

        for(int i = 0; i < N; ++i){
            opcao = -1, corretos = 0;

            for(int k = 0; k < 5; ++k){
                cin >> cor;

                if(cor <= 127){
                    opcao = k;
                    ++corretos;
                }
            }

            if(corretos == 1)   cout << (char) ('A' + opcao) << endl;
            else                cout << '*' << endl;
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
            
            if(N == 0){
                break;
            }
            
            for(int k = 0; k < N; ++k){
                List<int> folha = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                
                int opcao = -1;
                int corretos = 0;
                for(int i = 0; i < 5; ++i){
                    if(folha[i] <= 127){
                        opcao = i;
                        ++corretos;
                    }
                }
                
                if(corretos == 1){
                    Console.WriteLine((char)(opcao + (int)'A'));
                }else{
                    Console.WriteLine("*");
                }
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

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            if(N == 0){
                break;
            }

            for(int k = 0; k < N; ++k){
                String[] folha = in.readLine().trim().split(" ");

                int opcao = -1;
                int corretos = 0;
                for(int i = 0; i < 5; ++i){
                    if(Integer.parseInt(folha[i]) <= 127){
                        opcao = i;
                        ++corretos;
                    }
                }

                if(corretos == 1){
                    System.out.println((char)(opcao + (int)'A'));
                }else{
                    System.out.println("*");
                }
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

  if(!N)  break;

  for (let i = 0; i < N; ++i) {
    corretos = lines.shift().trim().split(" ").map((x, i) => [parseInt(x), i]).filter((x) => x[0] <= 127);

    if (corretos.length === 1)  console.log(String.fromCharCode(65 + corretos[0][1]));
    else                        console.log("*");
  }
}
```

### Python 3.9
```py
while True:
    try:
        N = int(input())

        for _ in range(N):
            cores = [(i, int(x)) for i, x in enumerate(input().strip().split(' '))]
            opcoes = list(filter(lambda x: x[1] <= 127, cores))

            if(len(opcoes) == 1):
                print(chr(65 + opcoes[0][0]))
            else:
                print('*')
    except EOFError:
        break
```