# 2253 - Validador de Senhas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2253)

## Solução

É mais fácil pensar nesse problema como um `for` que passa em cada letra e no final do `for` você precisa ter algumas variáveis para verificar as regras 1 e 2.

* Se tivermos uma variável indicando se vimos algum caractere que não é letra nem número, no final queremos que a variável de quebra da regra 2 seja `true`.
* Se tivermos uma variável cada para indicar se vimos uma maiúscula, uma minúscula ou um número, queremos que todas essas variáveis no final sejam `true`.

Com esse raciocínio, se torna um pouquinho mais fácil fazer esse programa, apenas lembrando que se ele não tiver o tamanho recomendado, você não precisa perder seu tempo fazendo o `for`, pode ir direto para a próxima senha.

### C99
```c
#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main(){
    char S[101];
    int n, errado, maiuscula, minuscula, numero;

    while(gets(S) != NULL){
        n = strlen(S);

        if(n < 6 || n > 32){
            printf("Senha invalida.\n");
            continue;
        }

        errado = 0, maiuscula = 0, minuscula = 0, numero = 0;

        for(int i = 0; i < n; ++i){
            if(isalpha(S[i])){
                if(S[i] == tolower(S[i]))   minuscula = 1;
                else                        maiuscula = 1;
            }else if(isdigit(S[i]))         numero = 1;
            else{
                errado = 1;
                break;
            }
        }

        if(errado || !(maiuscula && minuscula && numero)){
            printf("Senha invalida.\n");
        }else{
            printf("Senha valida.\n");
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cctype>

using namespace std;

int main(){
    int n;
    string S;
    bool errado, maiuscula, minuscula, numero;

    while(getline(cin, S)){
        n = S.length();

        if(n < 6 || n > 32){
            cout << "Senha invalida." << endl;
            continue;
        }

        errado = false, maiuscula = false, minuscula = false, numero = false;

        for(int i = 0; i < n; ++i){
            if(isalpha(S[i])){
                if(isupper(S[i]))   maiuscula = true;
                else                minuscula = true;
            }else if(isdigit(S[i])) numero = true;
            else{
                errado = true;
                break;
            }
        }

        if(errado || !(maiuscula && minuscula && numero)){
            cout << "Senha invalida." << endl;
        }else{
            cout << "Senha valida." << endl;
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
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            if(entrada.Length < 6 || entrada.Length > 32){
                Console.WriteLine("Senha invalida.");
                continue;
            }
            
            bool maiuscula = false;
            bool minuscula = false;
            bool numero = false;
            bool errado = false;
            for(int i = 0; i < entrada.Length; ++i){
                if(char.IsLetter(entrada[i])){
                    if(char.IsUpper(entrada[i]))    maiuscula = true;
                    else                            minuscula = true;
                }else if(char.IsNumber(entrada[i])){
                    numero = true;
                }else{
                    errado = true;
                    break;
                }
            }
            
            if(errado || !(maiuscula && minuscula && numero)){
                Console.WriteLine("Senha invalida.");
            }else{
                Console.WriteLine("Senha valida.");
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
            String senha = in.readLine();

            if(senha.length() < 6 || senha.length() > 32){
                System.out.println("Senha invalida.");
                continue;
            }

            boolean maiuscula = false;
            boolean minuscula = false;
            boolean numero = false;
            boolean errado = false;
            for(int i = 0; i < senha.length(); ++i){
                if(Character.isAlphabetic(senha.charAt(i))){
                    if(Character.isUpperCase(senha.charAt(i)))  maiuscula = true;
                    else                                        minuscula = true;
                }else if(Character.isDigit(senha.charAt(i))){
                    numero = true;
                }else{
                    errado = true;
                    break;
                }
            }

            if(errado || !(maiuscula && minuscula && numero)){
                System.out.println("Senha invalida.");
            }else{
                System.out.println("Senha valida.");
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
    let S = lines.shift();

    if(S.length < 6 || S.length > 32){
        console.log("Senha invalida.");
        continue;
    }

    let errado = false, maiuscula = false, minuscula = false, numero = false;
    for(let i = 0; i < S.length; ++i){
        if(/[A-Z]/.test(S[i])){
            maiuscula = true;
        }else if(/[a-z]/.test(S[i])){
            minuscula = true;
        }else if(/[0-9]/.test(S[i])){
            numero = true;
        }else{
            errado = true;
            break;
        }
    }

    if(errado || !(maiuscula && minuscula && numero)){
        console.log("Senha invalida.");
    }else{
        console.log("Senha valida.");
    }
}
```

### Python 3.9
```py
while True:
    try:
        S = input()

        if(len(S) < 6 or len(S) > 32):
            print("Senha invalida.")
            continue
        
        errado, maiuscula, minuscula, numero = False, False, False, False
        for letra in S:
            if(letra.isalpha()):
                if(letra.isupper()):
                    maiuscula = True
                else:
                    minuscula = True
            elif(letra.isdigit()):
                numero = True
            else:
                errado = True
                break
        
        if(errado or not (maiuscula and minuscula and numero)):
            print("Senha invalida.")
        else:
            print("Senha valida.")
    except EOFError:
        break
```