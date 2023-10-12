# 1140 - Flores Florescem da França

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1140)

## Solução

Em certas linguagens de programação, esse problema é bem mais fácil do que em outras. A ideia é ter uma forma de separar palavras de uma frase e conferir se todas as palavras começam com a mesma letra, o que é uma tarefa mais fácil se pegarmos a primeira palavra e considerarmos que todo as outras têm que começar com essa letra. Detalhe apenas para o formato que esse problema não distingue entre maiúsculas e minúsculas, então é preciso converter todas as primeiras letras para minúscula ou maiúscula para fazer a comparação.

### C99
```c
#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main(){
    char letra, frase[1001];
    int n, tautograma, primeiro;

    while(scanf("%[^\n]\n", &frase) != EOF){
        if(frase[0] == '*') break;

        primeiro = 1;
        tautograma = 1;
        n = strlen(frase);
        letra = tolower(frase[0]);
        for(int i = 0; i < n; ++i){
            if(primeiro){
                if(tolower(frase[i]) != letra){
                    tautograma = 0;
                    break;
                }
                primeiro = 0;
            }else if(frase[i] == ' '){
                primeiro = 1;
            }
        }

        printf("%c\n", tautograma ? 'Y' : 'N');
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <sstream>

using namespace std;

int main(){
    char letra;
    bool tautograma;
    stringstream fluxo;
    string palavra, frase;

    while(getline(cin, frase)){
        if(frase == "*")    break;

        fluxo << frase;

        tautograma = true;
        letra = tolower(frase[0]);
        while(fluxo >> palavra){
            if(tolower(palavra[0]) != letra){
                tautograma = false;
                break;
            }
        }
        fluxo.str("");
        fluxo.clear();

        cout << (tautograma ? 'Y' : 'N') << endl;
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            if(entrada == "*"){
                break;
            }
            
            string[] palavras = entrada.Trim().ToLower().Split(' ');
            
            char letra = palavras[0][0];
            bool tautograma = palavras.All(x => x[0] == letra);
            
            if(tautograma){
                Console.WriteLine("Y");
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
            String frase = in.readLine().toLowerCase();

            if(frase.equals("*")){
                break;
            }

            String[] palavras = frase.split(" ");
            char letra = palavras[0].charAt(0);

            boolean tautograma = true;
            for(int i = 0; i < palavras.length; ++i){
                if(palavras[i].charAt(0) != letra){
                    tautograma = false;
                    break;
                }
            }

            if(tautograma){
                System.out.println("Y");
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
var lines = input.split('\n');

lines.pop();

while (lines.length) {
    let frase = lines.shift();

    if(frase === '*'){
        break;
    }

    let palavras = frase.trim().split(' ');
    let letra = frase[0].toLowerCase();

    let tautograma = palavras.every((x) => x[0].toLowerCase() === letra);
    console.log(`${tautograma ? 'Y' : 'N'}`);
}
```

### Python 3.9
```py
while True:
    try:
        frase = input().strip()

        if(frase == '*'):
            break

        palavras = frase.strip().split(' ')
        letra = frase[0].lower()
        tautograma = True

        for palavra in palavras:
            if(palavra[0].lower() != letra):
                tautograma = False
                break
        
        print('Y' if tautograma else 'N')
    except EOFError:
        break
```