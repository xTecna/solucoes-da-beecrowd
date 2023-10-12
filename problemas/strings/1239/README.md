# 1239 - Atalhos Bloggo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1239)

## Solução

Aqui não precisamos nos preocupar com código HTML inválido, não precisamos nos preocupar com aba aberta sem fechar, vivemos no mais puro paraíso. Com isso, o que precisamos fazer é só substituir os _underlines_ por _tags_ itálico e os asteriscos por _tags_ negrito, guardando em uma variável se já abrimos uma _tag_ dessas antes ou não. Essa variável é consultada antes de colocarmos a _tag_ e o valor dela troca sempre após colocarmos a _tag_ apropriada.

Um detalhe interessante para as linguagens C#, Java, JavaScript e Python é que eu não uso o replace indiscriminadamente porque alguns dos underlines abrem e outros fecham, mesma coisa para os asteriscos, então precisa-se trocar com certo critério.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char frase[51];
    int n, negrito, italico;

    while(gets(frase) != NULL){
        negrito = 0;
        italico = 0;
        n = strlen(frase);
        for(int i = 0; i < n; ++i){
            if(frase[i] == '_'){
                printf("%s", italico ? "</i>" : "<i>");
                italico = 1 - italico;
            }else if(frase[i] == '*'){
                printf("%s", negrito ? "</b>" : "<b>");
                negrito = 1 - negrito;
            }else{
                printf("%c", frase[i]);
            }
        }
        printf("\n");
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int main(){
    int n;
    string frase;
    bool negrito, italico;

    while(getline(cin, frase)){
        negrito = false;
        italico = false;
        n = frase.length();
        for(int i = 0; i < n; ++i){
            if(frase[i] == '_'){
                cout << (italico ? "</i>" : "<i>");
                italico = !italico;
            }else if(frase[i] == '*'){
                cout << (negrito ? "</b>" : "<b>");
                negrito = !negrito;
            }else{
                cout << frase[i];
            }
        }
        cout << endl;
    }

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        string frase;

        while((frase = Console.ReadLine()) != null){
            string resposta = "";

            bool negrito = false;
            bool italico = false;
            for(int i = 0; i < frase.Length; ++i){
                if(frase[i] == '_'){
                    if(italico){
                        resposta += "</i>";
                    }else{
                        resposta += "<i>";
                    }
                    italico = !italico;
                }else if(frase[i] == '*'){
                    if(negrito){
                        resposta += "</b>";
                    }else{
                        resposta += "<b>";
                    }
                    negrito = !negrito;
                }else{
                    resposta += frase[i];
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

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String frase = in.readLine();

            String resposta = "";
            boolean negrito = false;
            boolean italico = false;
            for(int i = 0; i < frase.length(); ++i){
                if(frase.charAt(i) == '_'){
                    if(italico){
                        resposta += "</i>";
                    }else{
                        resposta += "<i>";
                    }
                    italico = !italico;
                }else if(frase.charAt(i) == '*'){
                    if(negrito){
                        resposta += "</b>";
                    }else{
                        resposta += "<b>";
                    }
                    negrito = !negrito;
                }else{
                    resposta += frase.charAt(i);
                }
            }

            System.out.println(resposta);
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const replaceAll = (frase, simbolo, tagAberta, tagFechada) => {
    let novaFrase = frase.replace(simbolo, tagAberta);
    let aberta = true;
    while(novaFrase !== frase){
        frase = novaFrase;
        novaFrase = frase.replace(simbolo, aberta ? tagFechada : tagAberta);
        aberta = !aberta;
    }

    return frase;
}

while(lines.length){
    let frase = lines.shift();

    frase = replaceAll(frase, '_', '<i>', '</i>');
    frase = replaceAll(frase, '*', '<b>', '</b>');

    console.log(frase);
}
```

### Python 3.9
```py
def replaceAll(frase, simbolo, tagAberta, tagFechada):
    novaFrase = frase.replace(simbolo, tagAberta, 1)
    aberta = True
    while(novaFrase != frase):
        frase = novaFrase
        novaFrase = frase.replace(simbolo, tagFechada if aberta else tagAberta, 1)
        aberta = not aberta

    return frase

while True:
    try:
        frase = input()

        frase = replaceAll(frase, '_', '<i>', '</i>')
        frase = replaceAll(frase, '*', '<b>', '</b>')

        print(frase)
    except EOFError:
        break
```