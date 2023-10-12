# 1263 - Aliteração

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1263)

## Solução

Para este problema, podemos primeiro pegar a primeira letra da primeira palavra como nossa letra atual e ir seguindo de palavra em palavra com a seguinte ideia:

1. Se a palavra começa com a mesma letra da anterior, então está na mesma aliteração;
2. Se a palavra começa com uma letra diferente da anterior, então mudamos de aliteração;
  a. Com isso, checamos a aliteração anterior. Se ela tem mais de uma palavra, então pode ser considerada uma aliteração válida.

Perceba que com esse algoritmo, no final temos que ver se a última aliteração obtida tem mais de uma palavra para obtermos o nosso resultado final.

Lembrando de tornar minúsculas todas as letras da frase para que todas as comparações deem certo.

### C99
```c
#include <ctype.h>
#include <stdio.h>
#include <string.h>

int main() {
    int i;
    char frase[5100];

    while(scanf("%[^\n]\n", &frase) != EOF){
        int aliteracoes = 0;
        
        int proximaPalavra = 0;
        int tamanhoAliteracao = 1;
        char letraAtual = tolower(frase[0]);
        for(i = 1; i < strlen(frase); ++i){
            frase[i] = tolower(frase[i]);
            if(frase[i] == ' '){
                proximaPalavra = 1;
            }else if(proximaPalavra){
                if(frase[i] == letraAtual){
                    tamanhoAliteracao += 1;
                }else{
                    if(tamanhoAliteracao > 1){
                        aliteracoes += 1;
                    }
                    tamanhoAliteracao = 1;
                    letraAtual = frase[i];
                }
                proximaPalavra = 0;
            }
        }
        if(tamanhoAliteracao > 1){
            aliteracoes += 1;
        }

        printf("%d\n", aliteracoes);
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <string>

using namespace std;

int main() {
    string frase;

    while(getline(cin, frase)){
        int aliteracoes = 0;

        bool proximaPalavra = false;
        int tamanhoAliteracao = 1;
        char letraAtual = tolower(frase[0]);
        for(int i = 1; i < frase.length(); ++i){
            frase[i] = tolower(frase[i]);
            if(frase[i] == ' '){
                proximaPalavra = true;
            }else if(proximaPalavra){
                if(frase[i] == letraAtual){
                    tamanhoAliteracao += 1;
                }else{
                    if(tamanhoAliteracao > 1){
                        aliteracoes += 1;
                    }
                    tamanhoAliteracao = 1;
                    letraAtual = frase[i];
                }
                proximaPalavra = !proximaPalavra;
            }
        }
        if(tamanhoAliteracao > 1){
            aliteracoes += 1;
        }

        cout << aliteracoes << endl;
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            string[] palavras = entrada.ToLower().Trim().Split(' ');

            int aliteracoes = 0;

            char letraAtual = palavras[0][0];
            int tamanhoAliteracao = 1;
            for(int i = 1; i < palavras.Length; ++i){
                if(palavras[i][0] != letraAtual){
                    if(tamanhoAliteracao > 1){
                        aliteracoes += 1;
                    }
                    letraAtual = palavras[i][0];
                    tamanhoAliteracao = 1;
                }else{
                    tamanhoAliteracao += 1;
                }
            }
            if(tamanhoAliteracao > 1){
                aliteracoes += 1;
            }

            Console.WriteLine(aliteracoes);
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
            String[] palavras = in.readLine().toLowerCase().trim().split(" ");

            int aliteracoes = 0;

            char letraAtual = palavras[0].charAt(0);
            int tamanhoAliteracao = 1;
            for(int i = 1; i < palavras.length; ++i){
                if(palavras[i].charAt(0) != letraAtual){
                    if(tamanhoAliteracao > 1){
                        aliteracoes += 1;
                    }
                    letraAtual = palavras[i].charAt(0);
                    tamanhoAliteracao = 1;
                }else{
                    tamanhoAliteracao += 1;
                }
            }
            if(tamanhoAliteracao > 1){
                aliteracoes += 1;
            }

            System.out.println(aliteracoes);
        }
    }
}
```

### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while(lines.length){
    let palavras = lines.shift().toLowerCase().trim().split(' ');

    let aliteracoes = 0;

    let letraAtual = palavras[0][0];
    let tamanhoAliteracao = 1;
    for(let i = 1; i < palavras.length; ++i){
        if(palavras[i][0] !== letraAtual){
            if(tamanhoAliteracao > 1){
                aliteracoes += 1;
            }
            letraAtual = palavras[i][0];
            tamanhoAliteracao = 1;
        }else{
            tamanhoAliteracao += 1;
        }
    }
    if(tamanhoAliteracao > 1){
        aliteracoes += 1;
    }

    console.log(aliteracoes);
}
```

### Python 3.9
```py
while True:
    try:
        palavras = [x for x in input().lower().strip().split(' ')]

        aliteracoes = 0

        tamanhoAliteracao = 1
        letraAtual = palavras[0][0]
        for palavra in palavras[1:]:
            if(palavra[0] != letraAtual):
                if(tamanhoAliteracao > 1):
                    aliteracoes += 1
                letraAtual = palavra[0]
                tamanhoAliteracao = 1
            else:
                tamanhoAliteracao += 1
        if tamanhoAliteracao > 1:
            aliteracoes += 1
        
        print(aliteracoes)
    except EOFError:
        break
```