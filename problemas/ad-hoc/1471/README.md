# 1471 - Mergulho

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1471)

## Solução

Podemos considerar dois caminhos: um usando vetor e outro usando conjuntos.

Pela solução com vetor, podemos utilizar um de $N$ posições, onde $N$ é o número de voluntários, para guardar informação sobre quais sobreviveram e quais não, assumindo que, a princípio ninguém voltou, mas marcando `true` para cada mergulhador que for lendo. Se o número de mergulhadores que retornaram é o mesmo que o número de voluntários, então imprimimos apenas um asterisco. Se o número for menor, precisamos percorrer o vetor imprimindo todos os índices cujo valor seja `false`.

Pela solução com conjunto, podemos criar um conjunto que inicialmente contem todos os voluntários de $1$ a $N$ e ir removendo os voluntários que voltarem da missão, imprimindo os que não sobreviveram ao final da leitura. Mas é importante notar que essa solução só é válida em linguagens que ordenam os elementos do conjunto. Nas soluções exibidas abaixo, veja as alternativas que eu escolhi para cada linguagem suportada aqui.

> Não é necessário fazer o tratamento da saída com espaço entre elementos, o problema pede para que você **sempre** inclua um espaço após todo mergulhador que não sobreviveu.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int N, R, mergulhador;
    int voluntarios[10001];

    while(scanf("%d %d", &N, &R) != EOF){
        memset(voluntarios, 0, sizeof(voluntarios));

        for(int i = 0; i < R; ++i){
            scanf("%d", &mergulhador);
            voluntarios[mergulhador] = 1;
        }

        if(N == R){
            printf("*\n");
        }else{
            for(int i = 1; i <= N; ++i){
                if(!voluntarios[i]) printf("%d ", i);
            }
            printf("\n");
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <set>

using namespace std;

int main(){
    int N, R, x;
    set<int> naoSobreviventes;

    while(cin >> N >> R){
        for(int i = 1; i <= N; ++i){
            naoSobreviventes.insert(i);
        }

        for(int i = 0; i < R; ++i){
            cin >> x;
            naoSobreviventes.erase(x);
        }

        if(naoSobreviventes.size() == 0){
            cout << '*' << endl;
        }else{
            for(set<int>::iterator it = naoSobreviventes.begin(); it != naoSobreviventes.end(); ++it){
                cout << *it << ' ';
            }
            cout << endl;
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
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            
            int N = numeros[0];
            int R = numeros[1];
            
            bool[] voluntarios = new bool[N + 1];
            numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            for(int i = 0; i < R; ++i){
                voluntarios[numeros[i]] = true;
            }
            
            if(N == R){
                Console.WriteLine("*");
            }else{
                for(int i = 1; i <= N; ++i){
                    if(!voluntarios[i]) Console.Write($"{i} ");
                }
                Console.WriteLine("");
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
            String[] entrada = in.readLine().trim().split(" ");

            int N = Integer.parseInt(entrada[0]);
            int R = Integer.parseInt(entrada[1]);

            boolean[] voluntarios = new boolean[N + 1];
            entrada = in.readLine().trim().split(" ");
            for(int i = 0; i < R; ++i){
                voluntarios[Integer.parseInt(entrada[i])] = true;
            }

            if(N == R){
                System.out.println("*");
            }else{
                for(int i = 1; i <= N; ++i){
                    if(!voluntarios[i]) System.out.printf("%d ", i);
                }
                System.out.println("");
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('./input.txt', 'utf8');
var lines = input.split('\n');

while(lines.length){
    let [N, R] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let naoSobreviventes = new Set();
    for(let i = 1; i <= N; ++i){
        naoSobreviventes.add(i);
    }

    let mergulhadores = lines.shift().trim().split(' ').map((x) => parseInt(x));
    mergulhadores.map((mergulhador) => naoSobreviventes.delete(mergulhador));

    naoSobreviventes = Array.from(naoSobreviventes);

    if(naoSobreviventes.length === 0)   console.log('*');
    else                                console.log(`${naoSobreviventes.join(' ')} `);
}
```

### Python 3.9
```py
while True:
    try:
        N, R = [int(x) for x in input().strip().split(' ')]

        voluntarios = [False for i in range(N + 1)]

        for mergulhador in [int(x) for x in input().strip().split(' ')]:
            voluntarios[mergulhador] = True

        if(N == R):
            print('*')
        else:
            for i in range(1, N + 1):
                if(not voluntarios[i]):
                    print(f'{i} ', end='')
            print()
    except EOFError:
        break
```