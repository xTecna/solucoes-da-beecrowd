# 1848 - Corvo Contador

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1848)

## Solução

O enunciado nos diz que as piscadas do corvo podem ser consideradas números em binário, com o `*` representando `1` e `-` representando `0`. Com isso, se seguirmos o algoritmo de conversão de bases apresentado [neste material](../../../base-teorica/matematica/base-numerica/README.md#conversão-de-qualquer-base-para-decimal), podemos descobrir qual seria o valor decimal e sempre somá-lo na nossa resposta.

### C99
```c
#include <string.h>
#include <stdio.h>

int valor(char simbolo){
    switch(simbolo){
        case '-':   return 0;
        case '*':   return 1;
    }
}

int converte(char *numero)
{
    int potencia = 1, resposta = 0;

    for(int i = strlen(numero) - 1; i > -1; --i){
        resposta += valor(numero[i]) * potencia;
        potencia *= 2;
    }

    return resposta;
}

int main()
{
    int soma = 0;
    char linha[10];

    while (scanf("%[^\n]\n", &linha) != EOF)
    {
        if (strcmp(linha, "caw caw") == 0)
        {
            printf("%d\n", soma);
            soma = 0;
        }
        else
        {
            soma += converte(linha);
        }
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int valor(char simbolo){
    switch(simbolo){
        case '-':   return 0;
        case '*':   return 1;
    }
}

int converte(string numero)
{
    int potencia = 1, resposta = 0;
    
    for(int i = numero.length() - 1; i > -1; --i){
        resposta += valor(numero[i]) * potencia;
        potencia *= 2;
    }
    
    return resposta;
}

int main()
{
    int soma = 0;
    string linha;

    while (getline(cin, linha))
    {
        if (linha == "caw caw")
        {
            cout << soma << endl;
            soma = 0;
        }
        else
        {
            soma += converte(linha);
        }
    }

    return 0;
}
```

### C#
```cs
using System;

class URI
{
    static int valor(char simbolo){
        switch(simbolo){
            case '-':   return 0;
            case '*':   return 1;
            default:    return 0;
        }
    }

    static int converte(string numero)
    {
        int potencia = 1, resposta = 0;

        for(int i = numero.Length - 1; i > -1; --i){
            resposta += valor(numero[i]) * potencia;
            potencia *= 2;
        }

        return resposta;
    }

    static void Main(string[] args)
    {
        int soma = 0;
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            if (entrada == "caw caw")
            {
                Console.WriteLine(soma);
                soma = 0;
            }
            else
            {
                soma += converte(entrada);
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
    public static int valor(char simbolo) {
        switch(simbolo){
            case '-':   return 0;
            case '*':   return 1;
        }
        return 0;
    }

    public static int converte(String numero) {
        int potencia = 1, resposta = 0;
        
        for(int i = numero.length() - 1; i > -1; --i){
            resposta += valor(numero.charAt(i)) * potencia;
            potencia *= 2;
        }
        
        return resposta;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int soma = 0;

        while (in.ready()) {
            String linha = in.readLine();

            if (linha.equals("caw caw")) {
                System.out.println(soma);
                soma = 0;
            } else {
                soma += converte(linha);
            }
        }
    }
}
```

### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const valor = (simbolo) => {
    switch(simbolo) {
        case '-':   return 0;
        case '*':   return 1;
    }
}

const converte = (numero) => {
    let potencia = 1, resposta = 0;
    
    for(let i = numero.length - 1; i > -1; --i){
        resposta += valor(numero[i]) * potencia;
        potencia *= 2;
    }
    
    return resposta;
};

let soma = 0;
while (lines.length) {
    let linha = lines.shift().trim();

    if (linha === 'caw caw') {
        console.log(soma);
        soma = 0;
    } else {
        soma += converte(linha);
    }
}
```

### Python 3.9
```py
def valor(simbolo):
    if simbolo == '-':
        return 0
    if simbolo == '*':
        return 1

def converte(numero):
    potencia, resposta = 1, 0
    
    for digito in numero[::-1]:
        resposta += valor(digito) * potencia
        potencia *= 2
        
    return resposta

soma = 0
while True:
    try:
        linha = input().strip()

        if(linha == 'caw caw'):
            print(soma)
            soma = 0
        else:
            soma += converte(linha)
    except EOFError:
        break
```