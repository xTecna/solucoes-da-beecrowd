# 1105 - Sub-prime

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1105)

## Solução

Para este problema, basta simularmos todas as transações, lembrando de arrumar os valores iniciais de acordo com os indicados pela entrada e, ao final, ver se todos os bancos estão no azul. Se algum banco possui saldo negativo ao final de todas as operações, então não é possível liquidar todas as debêntures sem a intervenção do Banco Central.

### C99
```c
#include <stdio.h>

int main(){
    int saldos[21];
    int B, N, devedor, credor, valor, possivel;

    while(scanf("%d %d", &B, &N)){
        if(!B && !N)    break;

        for(int i = 1; i <= B; ++i){
            scanf("%d", &saldos[i]);
        }

        for(int i = 0; i < N; ++i){
            scanf("%d %d %d", &devedor, &credor, &valor);

            saldos[devedor] -= valor;
            saldos[credor] += valor;
        }

        possivel = 1;
        for(int i = 1; i <= B; ++i){
            if(saldos[i] < 0){
                possivel = 0;
                break;
            }
        }

        printf("%c\n", possivel ? 'S' : 'N');
    }
    
    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int main(){
    bool possivel;
    int saldos[21];
    int B, N, devedor, credor, valor;

    while(cin >> B >> N){
        if(!B && !N)    break;

        for(int i = 1; i <= B; ++i){
            cin >> saldos[i];
        }

        for(int i = 0; i < N; ++i){
            cin >> devedor >> credor >> valor;

            saldos[devedor] -= valor;
            saldos[credor] += valor;
        }

        possivel = true;
        for(int i = 1; i <= B; ++i){
            if(saldos[i] < 0){
                possivel = false;
                break;
            }
        }

        cout << (char) (possivel ? 'S' : 'N') << endl;
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
            List<int> BN = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int B = BN[0];
            int N = BN[1];

            if(B == 0 && N == 0){
                break;
            }

            List<int> saldos = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            saldos.Insert(0, 0);
            for(int i = 0; i < N; ++i){
                List<int> DCV = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                int D = DCV[0];
                int C = DCV[1];
                int V = DCV[2];

                saldos[D] -= V;
                saldos[C] += V;
            }

            bool possivel = true;
            for(int i = 1; i <= B; ++i){
                if(saldos[i] < 0){
                    possivel = false;
                    break;
                }
            }

            if(possivel){
                Console.WriteLine("S");
            }else{
                Console.WriteLine("N");
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
            String[] BN = in.readLine().trim().split(" ");
            int B = Integer.parseInt(BN[0]);
            int N = Integer.parseInt(BN[1]);

            if(B == 0 && N == 0){
                break;
            }

            String[] entrada = in.readLine().trim().split(" ");
            int[] saldos = new int[B + 1];
            for(int i = 1; i <= B; ++i){
                saldos[i] = Integer.parseInt(entrada[i - 1]);
            }

            for(int i = 0; i < N; ++i){
                String[] DCV = in.readLine().trim().split(" ");
                int D = Integer.parseInt(DCV[0]);
                int C = Integer.parseInt(DCV[1]);
                int V = Integer.parseInt(DCV[2]);

                saldos[D] -= V;
                saldos[C] += V;
            }

            boolean possivel = true;
            for(int i = 1; i <= B; ++i){
                if(saldos[i] < 0){
                    possivel = false;
                    break;
                }
            }

            if(possivel){
                System.out.println("S");
            }else{
                System.out.println("N");
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while(lines.length){
    let [B, N] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let saldos = lines.shift().trim().split(' ').map((x) => parseInt(x));
    saldos.unshift(0);

    for(let i = 0; i < N; ++i){
        let [devedor, credor, valor] = lines.shift().trim().split(' ').map((x) => parseInt(x));

        saldos[devedor] -= valor;
        saldos[credor] += valor;
    }

    let possivel = saldos.every((x) => x >= 0);

    console.log(`${possivel ? 'S' : 'N'}`);
}
```

### Python 3.9
```py
while True:
    try:
        B, N = [int(x) for x in input().strip().split(' ')]

        saldos = [int(x) for x in input().strip().split(' ')]
        saldos.insert(0, 0)

        for _ in range(N):
            devedor, credor, valor = [int(x)
                                      for x in input().strip().split(' ')]

            saldos[devedor] -= valor
            saldos[credor] += valor

        possivel = len([saldo for saldo in saldos if saldo < 0]) == 0

        print('S' if possivel else 'N')
    except EOFError:
        break
```