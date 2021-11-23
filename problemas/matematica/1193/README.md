# 1193 - Conversão entre Bases

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1193)

## Solução

Problema bem parecido com o [1199 - Conversão Simples de Base](../1199/README.md), mas aqui estamos usando cada função numericamente/lidando com strings, do jeito que era pra ser mesmo.

### C99
```c
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <ctype.h>

int binToDec(char *bin)
{
    int potencia = 1, resposta = 0;

    for (int i = strlen(bin) - 1; i > -1; --i)
    {
        resposta += potencia * (bin[i] - '0');
        potencia *= 2;
    }

    return resposta;
}

char *decToBin(int dec)
{
    int p = 0;
    char temp, *resposta = malloc(100 * sizeof(int));

    while (dec)
    {
        resposta[p++] = (dec % 2) + '0';
        dec /= 2;
    }
    resposta[p] = '\0';

    for (int i = 0; i < p / 2; ++i)
    {
        temp = resposta[i];
        resposta[i] = resposta[p - i - 1];
        resposta[p - i - 1] = temp;
    }

    return resposta;
}

int hexToDec(char *hex)
{
    int potencia = 1, resposta = 0;

    for (int i = strlen(hex) - 1; i > -1; --i)
    {
        if (isalpha(hex[i]))
        {
            resposta += potencia * (hex[i] - 'a' + 10);
        }
        else
        {
            resposta += potencia * (hex[i] - '0');
        }
        potencia *= 16;
    }

    return resposta;
}

char *decToHex(int dec)
{
    int p = 0;
    char temp, *resposta = malloc(100 * sizeof(int));

    while (dec)
    {
        if (dec % 16 > 9)
        {
            resposta[p++] = ((dec % 16) - 10) + 'a';
        }
        else
        {
            resposta[p++] = (dec % 16) + '0';
        }
        dec /= 16;
    }
    resposta[p] = '\0';

    for (int i = 0; i < p / 2; ++i)
    {
        temp = resposta[i];
        resposta[i] = resposta[p - i - 1];
        resposta[p - i - 1] = temp;
    }

    return resposta;
}

char *binToHex(char *bin)
{
    return decToHex(binToDec(bin));
}

char *hexToBin(char *hex)
{
    return decToBin(hexToDec(hex));
}

int main()
{
    int N, dec;
    char X[100], Y[5];

    scanf("%d\n", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%s %s\n", &X, &Y);

        printf("Case %d:\n", i + 1);
        if (strcmp(Y, "bin") == 0)
        {
            printf("%d dec\n", binToDec(X));
            printf("%s hex\n", binToHex(X));
        }
        else if (strcmp(Y, "dec") == 0)
        {
            sscanf(X, "%d", &dec);
            printf("%s hex\n", decToHex(dec));
            printf("%s bin\n", decToBin(dec));
        }
        else
        {
            printf("%d dec\n", hexToDec(X));
            printf("%s bin\n", hexToBin(X));
        }
        printf("\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <iomanip>
#include <sstream>
#include <cctype>

using namespace std;

int converte(string numero)
{
    int resposta;
    stringstream fluxo;

    fluxo << numero;
    fluxo >> resposta;

    return resposta;
}

int binToDec(string bin)
{
    int dec = 0, potencia = 1;

    for (int i = bin.length() - 1; i > -1; --i)
    {
        dec += potencia * (bin[i] - '0');
        potencia *= 2;
    }

    return dec;
}

string decToBin(int dec)
{
    string bin = "";

    while (dec)
    {
        bin = (char)(dec % 2 + '0') + bin;
        dec /= 2;
    }

    return bin;
}

string decToHex(int dec)
{
    string hex = "";

    while (dec)
    {
        if (dec % 16 > 9)
        {
            hex = (char)(dec % 16 + 'a' - 10) + hex;
        }
        else
        {
            hex = (char)(dec % 16 + '0') + hex;
        }
        dec /= 16;
    }

    return hex;
}

string binToHex(string bin)
{
    return decToHex(binToDec(bin));
}

int hexToDec(string hex)
{
    int dec = 0, potencia = 1;

    for (int i = hex.length() - 1; i > -1; --i)
    {
        if (isalpha(hex[i]))
        {
            dec += potencia * (hex[i] - 'a' + 10);
        }
        else
        {
            dec += potencia * (hex[i] - '0');
        }
        potencia *= 16;
    }

    return dec;
}

string hexToBin(string hex)
{
    return decToBin(hexToDec(hex));
}

int main()
{
    int N;
    string numero, base;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> numero >> base;

        cout << "Case " << i + 1 << ":" << endl;

        if (base == "dec")
        {
            cout << decToHex(converte(numero)) << " hex" << endl;
            cout << decToBin(converte(numero)) << " bin" << endl;
        }
        else if (base == "hex")
        {
            cout << hexToDec(numero) << " dec" << endl;
            cout << hexToBin(numero) << " bin" << endl;
        }
        else
        {
            cout << binToDec(numero) << " dec" << endl;
            cout << binToHex(numero) << " hex" << endl;
        }

        cout << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const convertePraLetra = (numero) => String.fromCharCode('a'.charCodeAt(0) + numero);

const convertePraNumero = (letra) => letra.charCodeAt(0) - 'a'.charCodeAt(0) + 10;

const binToDec = (bin) => {
    let potencia = 1;

    return bin.split('').reverse().reduce((acc, cur) => {
        let resposta = acc + parseInt(cur) * potencia;
        potencia *= 2;

        return resposta;
    }, 0);
};

const decToBin = (dec) => {
    let bin = "";

    while (dec) {
        bin = (dec % 2).toString() + bin;
        dec = Math.floor(dec / 2);
    }

    return bin;
};

const decToHex = (dec) => {
    let hex = "";

    while (dec) {
        if (dec % 16 > 9) {
            hex = convertePraLetra(dec % 16 - 10) + hex;
        } else {
            hex = (dec % 16).toString() + hex;
        }
        dec = Math.floor(dec / 16);
    }

    return hex;
};

const hexToDec = (hex) => {
    let potencia = 1;

    return hex.split('').reverse().reduce((acc, cur) => {
        let resposta = acc + (/[a-f]/.test(cur) ? convertePraNumero(cur) : parseInt(cur)) * potencia;
        potencia *= 16;

        return resposta;
    }, 0);
};

const binToHex = (bin) => decToHex(binToDec(bin));

const hexToBin = (hex) => decToBin(hexToDec(hex));

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let [numero, base] = lines.shift().trim().split(' ');

    console.log(`Case ${i + 1}:`);
    if (base === 'bin') {
        console.log(`${binToDec(numero)} dec`);
        console.log(`${binToHex(numero)} hex`);
    } else if (base === 'dec') {
        numero = parseInt(numero);
        console.log(`${decToHex(numero)} hex`);
        console.log(`${decToBin(numero)} bin`);
    } else {
        console.log(`${hexToDec(numero)} dec`);
        console.log(`${hexToBin(numero)} bin`);
    }
    console.log('');
}
```

### Python 3.9
```python
def binToDec(b):
    dec, potencia = 0, 1

    for digito in b[::-1]:
        dec += int(digito) * potencia
        potencia *= 2

    return dec


def decToBin(dec):
    b = ''

    while(dec):
        b = chr(ord('0') + (dec % 2)) + b
        dec //= 2

    return b


def decToHex(dec):
    h = ''

    while(dec):
        if(dec % 16 > 9):
            h = chr(ord('a') + (dec % 16 - 10)) + h
        else:
            h = chr(ord('0') + (dec % 16)) + h
        dec //= 16

    return h


def hexToDec(h):
    dec, potencia = 0, 1

    for digito in h[::-1]:
        if('a' <= digito <= 'f'):
            dec += (ord(digito) - ord('a') + 10) * potencia
        else:
            dec += int(digito) * potencia
        potencia *= 16

    return dec


def binToHex(b):
    return decToHex(binToDec(b))


def hexToBin(h):
    return decToBin(hexToDec(h))


N = int(input())

for i in range(N):
    numero, base = input().strip().split(' ')

    print(f'Case {i + 1}:')
    if(base == 'bin'):
        print(f'{binToDec(numero)} dec')
        print(f'{binToHex(numero)} hex')
    elif(base == 'dec'):
        numero = int(numero)
        print(f'{decToHex(numero)} hex')
        print(f'{decToBin(numero)} bin')
    else:
        print(f'{hexToDec(numero)} dec')
        print(f'{hexToBin(numero)} bin')
    print('')
```