# 1234 - Sentença Dançante

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1234)

## Solução

A maior questão desse problema é entender que não se pode fazer qualquer tipo de `trim()`, `strip()` e outros tipos de manipulação de entrada que ignorem espaços antes e após a linha a ser lida. Em C, usei a função `gets()` para entrada por esse motivo também. Após lidar com a entrada problemática, outro detalhe é que só muda o estado de maiúscula para minúscula quando encontramos uma letra, espaços devem ser ignorados neste tratamento.

### C99
```c
#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main(){
    int n, maiuscula;
    char sentenca[51];

    while(gets(sentenca) != NULL){
        maiuscula = 1;
        n = strlen(sentenca);

        for(int i = 0; i < n; ++i){
            if(!isalpha(sentenca[i]))  continue;

            if(maiuscula)   sentenca[i] = toupper(sentenca[i]);
            else            sentenca[i] = tolower(sentenca[i]);
            maiuscula = 1 - maiuscula;
        }

        printf("%s\n", sentenca);
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
    bool maiuscula;
    string sentenca;

    while(getline(cin, sentenca)){
        maiuscula = true;

        for(int i = 0; i < sentenca.length(); ++i){
            if(!isalpha(sentenca[i]))   continue;

            if(maiuscula)   sentenca[i] = toupper(sentenca[i]);
            else            sentenca[i] = tolower(sentenca[i]);

            maiuscula = !maiuscula;
        }

        cout << sentenca << endl;
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
            bool maiuscula = true;

            for(int i = 0; i < entrada.Length; ++i){
                if(!char.IsLetter(entrada[i])){
                    Console.Write(entrada[i]);
                    continue;
                }

                if(maiuscula){
                    Console.Write(entrada[i].ToString().ToUpper());
                }else{
                    Console.Write(entrada[i].ToString().ToLower());
                }
                maiuscula = !maiuscula;
            }
            Console.WriteLine("");
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
            char[] entrada = in.readLine().toCharArray();

            boolean maiuscula = true;
            for(int i = 0; i < entrada.length; ++i){
                if(!Character.isAlphabetic(entrada[i])){
                    System.out.print(entrada[i]);
                    continue;
                }

                if(maiuscula){
                    System.out.print(Character.toUpperCase(entrada[i]));
                }else{
                    System.out.print(Character.toLowerCase(entrada[i]));
                }
                maiuscula = !maiuscula;
            }
            System.out.println("");
        }
    }
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while(lines.length){
    let sentenca = lines.shift();

    let maiuscula = true;
    let resposta = sentenca.split('').map((x) => {
        let letra = x;

        if(/[A-Za-z]/.test(x)){
            if(maiuscula)   letra = letra.toUpperCase();
            else            letra = letra.toLowerCase();
            maiuscula = !maiuscula;
        }
        
        return letra;
    }).join('');

    console.log(resposta);
}
```

### Python 3.9
```python
while True:
    try:
        sentenca = input()

        maiuscula = True
        resposta = ""
        for letra in sentenca:
            if(letra.isalpha()):
                resposta += letra.upper() if maiuscula else letra.lower()
                maiuscula = not maiuscula
            else:
                resposta += letra
        print(resposta)
    except EOFError:
        break
```