# 1546 - Feedback

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1546)

## Solução

Aqui apenas direcionar cada número à pessoa correta é o bastante para resolver este problema. Você pode usar cadeia de _if_s, _switch_es, vetores, escolha sua abordagem preferida dependendo da sua linguagem.

### C99
```c
#include <stdio.h>

int main(){
    int N, K, feedback;

    scanf("%d", &N);
    
    for(int i = 0; i < N; ++i){
        scanf("%d", &K);

        for(int j = 0; j < K; ++j){
            scanf("%d", &feedback);

            switch(feedback){
                case 1: printf("Rolien\n");
                        break;
                case 2: printf("Naej\n");
                        break;
                case 3: printf("Elehcim\n");
                        break;
                case 4: printf("Odranoel\n");
                        break;
            }
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
    int N, K, feedback;
    string nomes[4] = {"Rolien", "Naej", "Elehcim", "Odranoel"};

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> K;
        
        for(int j = 0; j < K; ++j){
            cin >> feedback;

            cout << nomes[feedback - 1] << endl;
        }
    }

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        string[] responsaveis = new string[] {"Rolien", "Naej", "Elehcim", "Odranoel"};
        
        int N = int.Parse(Console.ReadLine());
        
        for(int k = 0; k < N; ++k){
            int K = int.Parse(Console.ReadLine());
            
            for(int i = 0; i < K; ++i){
                int feedback = int.Parse(Console.ReadLine());
                Console.WriteLine(responsaveis[feedback - 1]);
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
        String[] responsaveis = new String[] { "Rolien", "Naej", "Elehcim", "Odranoel" };

        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());

        for(int k = 0; k < N; ++k){
            int K = Integer.parseInt(in.readLine());

            for(int i = 0; i < K; ++i){
                int feedback = Integer.parseInt(in.readLine());
                System.out.println(responsaveis[feedback - 1]);
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const nomes = ["Rolien", "Naej", "Elehcim", "Odranoel"];

let N = lines.shift();

for(let i = 0; i < N; ++i){
  let K = lines.shift();

  for (let j = 0; j < K; ++j) {
    let feedback = lines.shift();

    console.log(nomes[feedback - 1]);
  }
}
```

### Python 3.9
```py
nomes = ['Rolien', 'Naej', 'Elehcim', 'Odranoel']

N = int(input())

for _ in range(N):
    K = int(input())

    for _ in range(K):
        feedback = int(input())

        print(nomes[feedback - 1])
```