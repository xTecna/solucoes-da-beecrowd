# 1193 - Conversão entre Bases

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1193)

## Solução

Problema bem parecido com o [1199 - Conversão Simples de Base](../1199/README.md), mas aqui estamos usando cada função numericamente/lidando com strings, do jeito que era pra ser mesmo.

Para entender melhor as interações para transformar de caractere para número e vice-versa consulte [código ASCII](../../../base-teorica/strings/ascii/README.md).

### C99
```c
#include <ctype.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int valor(char simbolo) {
    if (isalpha(simbolo)) {
        return simbolo - 'a' + 10;
    } else {
        return simbolo - '0';
    }
}

char simbolo(int valor) {
    if (valor > 9) {
        return valor - 10 + 'a';
    } else {
        return valor + '0';
    }
}

int converteParaDecimal(char *numero, int base) {
    int potencia = 1, resposta = 0;

    for (int i = strlen(numero) - 1; i > -1; --i) {
        resposta += valor(numero[i]) * potencia;
        potencia *= base;
    }

    return resposta;
}

char *converteDeDecimal(int decimal, int base) {
    int posicao = 0;
    int digitos = floor(log(decimal) / log(base)) + 2;
    char *numero = (char *)malloc(digitos * sizeof(char));

    while (decimal > 0) {
        numero[posicao++] = simbolo(decimal % base);
        decimal /= base;
    }
    for (int i = 0; i < posicao / 2; ++i) {
        char temp = numero[i];
        numero[i] = numero[posicao - i - 1];
        numero[posicao - i - 1] = temp;
    }
    numero[posicao] = '\0';

    return numero;
}

int main(void) {
    int N;
    char numero[100], base[100];

    scanf("%d\n", &N);
    for (int k = 1; k <= N; ++k) {
        scanf("%s %s\n", numero, base);

        printf("Case %d:\n", k);
        if (strcmp(base, "bin") == 0) {
            int dec = converteParaDecimal(numero, 2);
            char *hex = converteDeDecimal(dec, 16);
            printf("%d dec\n", dec);
            printf("%s hex\n", hex);
            free(hex);
        } else if (strcmp(base, "dec") == 0) {
            int dec = converteParaDecimal(numero, 10);
            char *hex = converteDeDecimal(dec, 16);
            char *bin = converteDeDecimal(dec, 2);
            printf("%s hex\n", hex);
            printf("%s bin\n", bin);
            free(hex);
            free(bin);
        } else if (strcmp(base, "hex") == 0) {
            int dec = converteParaDecimal(numero, 16);
            char *bin = converteDeDecimal(dec, 2);
                printf("%d dec\n", dec);
                printf("%s bin\n", bin);
                free(bin);
        }
        printf("\n");
    }

    return 0;
}
```

### C++20
```cpp
#include <cctype>
#include <iostream>

using namespace std;

int valor(char simbolo) {
    if (isalpha(simbolo)) {
        return simbolo - 'a' + 10;
    } else {
        return simbolo - '0';
    }
}

char simbolo(int valor) {
    if (valor > 9) {
        return valor - 10 + 'a';
    } else {
        return valor + '0';
    }
}

int converteParaDecimal(string numero, int base) {
    int potencia = 1, resposta = 0;

    for (int i = numero.length() - 1; i > -1; --i) {
        resposta += valor(numero[i]) * potencia;
        potencia *= base;
    }

    return resposta;
}

string converteDeDecimal(int decimal, int base) {
    string numero = "";

    while (decimal > 0) {
        numero = simbolo(decimal % base) + numero;
        decimal /= base;
    }

    return numero;
}

int main() {
    int N;
    string numero, base;

    cin >> N;
    for (int i = 0; i < N; ++i) {
        cin >> numero >> base;

        cout << "Case " << i + 1 << ":" << endl;

        if (base == "bin") {
            int dec = converteParaDecimal(numero, 2);
            cout << dec << " dec" << endl;
            cout << converteDeDecimal(dec, 16) << " hex" << endl;
        } else if (base == "dec") {
            int dec = converteParaDecimal(numero, 10);
            cout << converteDeDecimal(dec, 16) << " hex" << endl;
            cout << converteDeDecimal(dec, 2) << " bin" << endl;
        } else if (base == "hex") {
            int dec = converteParaDecimal(numero, 16);
            cout << dec << " dec" << endl;
            cout << converteDeDecimal(dec, 2) << " bin" << endl;
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
    static int valor(char simbolo){
        if(Char.IsLetter(simbolo)){
            return simbolo - 'a' + 10;
        }else{
            return simbolo - '0';
        }
    }

    static char simbolo(int valor){
        if(valor > 9){
            return (char)(valor - 10 + 'a');
        }else{
            return (char)(valor + '0');
        }
    }
    
    static int converteParaDecimal(string numero, int baseNumerica){
        int potencia = 1, resposta = 0;

        for(int i = numero.Length - 1; i > -1; --i){
            resposta += valor(numero[i]) * potencia;
            potencia *= baseNumerica;
        }

        return resposta;
    }
    
    static string converteDeDecimal(int numero, int baseNumerica){
        string resposta = "";

        while(numero > 0){
            resposta = simbolo(numero % baseNumerica) + resposta;
            numero /= baseNumerica;
        }

        return resposta;
    }
    
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 1; i <= N; ++i){
            string[] partes = Console.ReadLine().Trim().Split(' ');

            Console.WriteLine($"Case {i}:");
            if(partes[1] == "bin"){
                int dec = converteParaDecimal(partes[0], 2);
                Console.WriteLine($"{dec} dec");
                Console.WriteLine($"{converteDeDecimal(dec, 16)} hex");
            }else if(partes[1] == "dec"){
                int dec = converteParaDecimal(partes[0], 10);
                Console.WriteLine($"{converteDeDecimal(dec, 16)} hex");
                Console.WriteLine($"{converteDeDecimal(dec, 2)} bin");
            }else if(partes[1] == "hex"){
                int dec = converteParaDecimal(partes[0], 16);
                Console.WriteLine($"{dec} dec");
                Console.WriteLine($"{converteDeDecimal(dec, 2)} bin");
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
    public static int valor(char simbolo){
        if(Character.isLetter(simbolo)){
            return simbolo - 'a' + 10;
        }else{
            return simbolo - '0';
        }
    }

    public static char simbolo(int valor){
        if(valor > 9){
            return (char)(valor - 10 + 'a');
        }else{
            return (char)(valor + '0');
        }
    }
    
    public static int converteParaDecimal(String numero, int base){
        int potencia = 1, resposta = 0;

        for(int i = numero.length() - 1; i > -1; --i){
            resposta += valor(numero.charAt(i)) * potencia;
            potencia *= base;
        }

        return resposta;
    }

    public static String converteDeDecimal(int decimal, int base){
        String resposta = "";

        while(decimal > 0){
            resposta = simbolo(decimal % base) + resposta;
            decimal /= base;
        }

        return resposta;
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int k = 1; k <= N; ++k){
            String[] partes = in.readLine().trim().split(" ");

            System.out.printf("Case %d:\n", k);
            if(partes[1].equals("bin")){
                int dec = converteParaDecimal(partes[0], 2);
                System.out.printf("%d dec\n", dec);
                System.out.printf("%s hex\n\n", converteDeDecimal(dec, 16));
            }else if(partes[1].equals("dec")){
                int dec = converteParaDecimal(partes[0], 10);
                System.out.printf("%s hex\n", converteDeDecimal(dec, 16));
                System.out.printf("%s bin\n\n", converteDeDecimal(dec, 2));
            }else if(partes[1].equals("hex")){
                int dec = converteParaDecimal(partes[0], 16);
                System.out.printf("%d dec\n", dec);
                System.out.printf("%s bin\n\n", converteDeDecimal(dec, 2));
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const valor = (simbolo) => {
    if (simbolo.match(/[a-z]/i)){
        return simbolo.charCodeAt(0) - 'a'.charCodeAt(0) + 10;
    } else {
        return simbolo.charCodeAt(0) - '0'.charCodeAt(0);
    }
}

const simbolo = (valor) => {
    if (valor > 9){
        return String.fromCharCode('a'.charCodeAt(0) + valor - 10);
    } else {
        return String.fromCharCode('0'.charCodeAt(0) + valor);
    }
}

const converteParaDecimal = (numero, base) => {
    let potencia = 1, resposta = 0;

    for(let i = numero.length - 1; i > -1; --i){
        resposta += valor(numero[i]) * potencia;
        potencia *= base;
    }

    return resposta;
}

const converteDeDecimal = (decimal, base) => {
    let resposta = "";

    while(decimal > 0){
        resposta = simbolo(decimal % base) + resposta;
        decimal = parseInt(Math.floor(decimal / base));
    }

    return resposta;
}

let N = parseInt(lines.shift());
for(let k = 1; k <= N; ++k){
    let [numero, base] = lines.shift().trim().split(' ');

    console.log(`Case ${k}:`);
    if(base === 'bin'){
        let dec = converteParaDecimal(numero, 2);
        console.log(`${dec} dec`);
        console.log(`${converteDeDecimal(dec, 16)} hex`);
    }else if(base === 'dec'){
        let dec = converteParaDecimal(numero, 10);
        console.log(`${converteDeDecimal(dec, 16)} hex`);
        console.log(`${converteDeDecimal(dec, 2)} bin`);        
    }else if(base === 'hex'){
        let dec = converteParaDecimal(numero, 16);
        console.log(`${dec} dec`);
        console.log(`${converteDeDecimal(dec, 2)} bin`);
    }
    console.log('');
}
```

### Python 3.9
```py
def valor(simbolo):
    if simbolo.isalpha():
        return ord(simbolo) - ord('a') + 10
    else:
        return ord(simbolo) - ord('0')

def simbolo(valor):
    if valor > 9:
        return chr(valor - 10 + ord('a'))
    else:
        return chr(valor + ord('0'))

def converteParaDecimal(numero, base):
    potencia, resposta = 1, 0

    for digito in numero[::-1]:
        resposta += valor(digito) * potencia
        potencia *= base

    return resposta

def converteDeDecimal(decimal, base):
    resposta = ''

    while (decimal > 0):
        resposta = simbolo(decimal % base) + resposta
        decimal //= base

    return resposta

N = int(input())

for i in range(1, N + 1):
    numero, base = input().strip().split(' ')

    print(f'Case {i}:')
    if (base == 'bin'):
        dec = converteParaDecimal(numero, 2)
        print(f'{dec} dec')
        print(f'{converteDeDecimal(dec, 16)} hex')
    elif (base == 'dec'):
        dec = converteParaDecimal(numero, 10)
        print(f'{converteDeDecimal(dec, 16)} hex')
        print(f'{converteDeDecimal(dec, 2)} bin')
    elif (base == 'hex'):
        dec = converteParaDecimal(numero, 16)
        print(f'{dec} dec')
        print(f'{converteDeDecimal(dec, 2)} bin')
    print('')
```