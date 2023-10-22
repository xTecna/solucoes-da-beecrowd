# 1547 - Adivinha

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1547)

## Solução

Para resolver este problema, basta simular o processo, lendo cada palpite de cada aluno e verificando se tal palpite é mais próximo do número real que os demais alunos. É importante notar que quando um aluno consegue acertar o número, mesmo assim é necessário ler os palpites dos alunos posteriores para não bagunçar a entrada do programa.

Quando não sabemos que limite colocarmos a princípio, uma boa ideia é assumir que o primeiro aluno tem o melhor palpite e ver se os outros alunos provam o contrário. Outra alternativa é tentar procurar no enunciado qual a maior diferença possível entre os dois números passados, o que neste caso, sabemos que é $100$, pois todos os palpites (e o número desejado) estão no intervalo $[1, 100]$. Com isso, um bom limite inicial seria $101$.

### C99
```c
#include <stdlib.h>
#include <stdio.h>

int main(){
    int N, QT, S, palpite, menor_diferenca, melhor_palpite;

    scanf("%d", &N);

    for(int i = 0; i < N; ++i){
        scanf("%d %d", &QT, &S);

        scanf("%d", &palpite);
        melhor_palpite = 0;
        menor_diferenca = abs(S - palpite);

        for(int j = 1; j < QT; ++j){
            scanf("%d", &palpite);

            if(menor_diferenca > abs(S - palpite)){
                melhor_palpite = j;
                menor_diferenca = abs(S - palpite);
            }
        }

        printf("%d\n", melhor_palpite + 1);
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <cmath>

using namespace std;

int main(){
    int N, QT, S, palpite, menor_diferenca, melhor_palpite;

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> QT >> S;

        cin >> palpite;
        melhor_palpite = 0;
        menor_diferenca = abs(S - palpite);

        for(int j = 1; j < QT; ++j){
            cin >> palpite;

            if(menor_diferenca > abs(S - palpite)){
                melhor_palpite = j;
                menor_diferenca = abs(S - palpite);
            }
        }

        cout << melhor_palpite + 1 << endl;
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
        int N = int.Parse(Console.ReadLine());

        for(int k = 0; k < N; ++k){
            List<int> QTS = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int QT = QTS[0];
            int S = QTS[1];

            List<int> palpites = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int melhor_palpite = 0;
            int melhor_aproximacao = Math.Abs(palpites[0] - S);
            for(int i = 1; i < QT; ++i){
                int aproximacao = Math.Abs(palpites[i] - S);
                
                if(aproximacao < melhor_aproximacao){
                    melhor_palpite = i;
                    melhor_aproximacao = aproximacao;
                }
            }

            Console.WriteLine(melhor_palpite + 1);
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
        for(int k = 0; k < N; ++k){
            String[] QTS = in.readLine().trim().split(" ");

            int QT = Integer.parseInt(QTS[0]);
            int S = Integer.parseInt(QTS[1]);

            String[] palpites = in.readLine().trim().split(" ");
            int melhor_palpite = 0;
            int melhor_aproximacao = Math.abs(Integer.parseInt(palpites[0]) - S);
            for(int i = 1; i < QT; ++i){
                int aproximacao = Math.abs(Integer.parseInt(palpites[i]) - S);
                if(aproximacao < melhor_aproximacao){
                    melhor_palpite = i;
                    melhor_aproximacao = aproximacao;
                }
            }

            System.out.println(melhor_palpite + 1);
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());

for(let i = 0; i < N; ++i){
    let [QT, S] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let palpites = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let melhor_palpite = palpites.reduce((acc, cur, i) => Math.abs(cur - S) < acc[1] ? [i, Math.abs(cur - S)] : acc, [0, 101])[0] + 1;

    console.log(melhor_palpite);
}
```

### Python 3.9
```py
N = int(input().strip())

for _ in range(N):
    QT, S = [int(x) for x in input().strip().split(' ')]

    palpites = [int(x) for x in input().strip().split(' ')]

    melhor_palpite = 0
    menor_diferenca = abs(S - palpites[0])

    for i in range(1, QT):
        if(menor_diferenca > abs(S - palpites[i])):
            melhor_palpite = i
            menor_diferenca = abs(S - palpites[i])
    
    print(melhor_palpite + 1)
```