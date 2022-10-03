# 2750 - Saída 4

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2750)

## Solução

Nada te impede de só copiar a saída e mandar imprimir, mas aqui eu quis fazer bonitinho, separando as funções pra impressão. É possível converter os números para impressão apenas com formatação, não há necessidade de converter os números em si.

### C99

```c
#include <stdio.h>

void imprimeLinhaHorizontal()
{
    for (int i = 0; i < 39; ++i)
    {
        printf("-");
    }
    printf("\n");
}

void imprimeCabecalho()
{
    imprimeLinhaHorizontal();
    printf("|  decimal  |  octal  |  Hexadecimal  |\n");
    imprimeLinhaHorizontal();
}

void imprimeLinha(int numero)
{
    printf("|%7d    |%5o    |%8X       |\n", numero, numero, numero);
}

int main()
{
    imprimeCabecalho();
    for (int i = 0; i < 16; ++i)
    {
        imprimeLinha(i);
    }
    imprimeLinhaHorizontal();

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

void imprimeLinhaHorizontal()
{
    for (int i = 0; i < 39; ++i)
    {
        cout << '-';
    }
    cout << endl;
}

void imprimeCabecalho()
{
    imprimeLinhaHorizontal();
    cout << "|  decimal  |  octal  |  Hexadecimal  |" << endl;
    imprimeLinhaHorizontal();
}

void imprimeLinha(int numero)
{
    cout << '|';
    cout << setw(7) << setfill(' ') << dec << numero;
    cout << "    |";
    cout << setw(5) << setfill(' ') << oct << numero;
    cout << "    |";
    cout << setw(8) << setfill(' ') << hex << uppercase << numero;
    cout << "       |" << endl;
}

int main()
{
    imprimeCabecalho();
    for (int i = 0; i < 16; ++i)
    {
        imprimeLinha(i);
    }
    imprimeLinhaHorizontal();

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void imprimeLinhaHorizontal(){
        for(int i = 0; i < 39; ++i){
            Console.Write("-");
        }
        Console.WriteLine("");
    }

    static void imprimeCabecalho(){
        imprimeLinhaHorizontal();
        Console.WriteLine("|  decimal  |  octal  |  Hexadecimal  |");
        imprimeLinhaHorizontal();
    }

    static void imprimeLinha(int numero){
        Console.Write("|");

        string formato = numero.ToString();
        int espacos = 7 - formato.Length;
        for(int i = 0; i < espacos; ++i){
            Console.Write(" ");
        }
        Console.Write($"{formato}    |");

        formato = Convert.ToString(numero, 8);
        espacos = 5 - formato.Length;
        for(int i = 0; i < espacos; ++i){
            Console.Write(" ");
        }
        Console.Write($"{formato}    |");

        formato = Convert.ToString(numero, 16).ToUpper();
        espacos = 8 - formato.Length;
        for(int i = 0; i < espacos; ++i){
            Console.Write(" ");
        }
        Console.WriteLine($"{formato}       |");
    }

    static void Main(string[] args) {
        imprimeCabecalho();
        for(int i = 0; i < 16; ++i){
            imprimeLinha(i);
        }
        imprimeLinhaHorizontal();
    }
}
```

### Java 14

```java
import java.io.IOException;

public class Main {
    public static void imprimeLinhaHorizontal() {
        for (int i = 0; i < 39; ++i) {
            System.out.print("-");
        }
        System.out.println("");
    }

    public static void imprimeCabecalho() {
        imprimeLinhaHorizontal();
        System.out.println("|  decimal  |  octal  |  Hexadecimal  |");
        imprimeLinhaHorizontal();
    }

    public static void imprimeLinha(int numero) {
        System.out.printf("|%7d    |%5o    |%8X       |\n", numero, numero, numero);
    }

    public static void main(String[] args) throws IOException {
        imprimeCabecalho();
        for (int i = 0; i < 16; ++i) {
            imprimeLinha(i);
        }
        imprimeLinhaHorizontal();
    }
}
```

### Javascript 12.18

```js
const imprimeLinhaHorizontal = () => {
    let linha = '';
    for (let i = 0; i < 39; ++i) {
        linha += '-';
    }
    console.log(linha);
};

const imprimeCabecalho = () => {
    imprimeLinhaHorizontal();
    console.log("|  decimal  |  octal  |  Hexadecimal  |");
    imprimeLinhaHorizontal();
};

const imprimeLinha = (numero) => {
    let linha = '|';

    let formato = numero.toString();
    linha += formato.padStart(7);
    linha += '|'.padStart(5);

    formato = numero.toString(8);
    linha += formato.padStart(5);
    linha += '|'.padStart(5);

    formato = numero.toString(16).toUpperCase();
    linha += formato.padStart(8);
    linha += '|'.padStart(8);

    console.log(linha);
};

imprimeCabecalho();
for (let i = 0; i < 16; ++i) {
    imprimeLinha(i);
}
imprimeLinhaHorizontal();
```

### Python 3.9

```py
def imprimeLinhaHorizontal():
    print('-' * 39)


def imprimeCabecalho():
    imprimeLinhaHorizontal()
    print('|  decimal  |  octal  |  Hexadecimal  |')
    imprimeLinhaHorizontal()


def imprimeLinha(numero):
    print(f'|{numero:7d}    |{numero:5o}    |{numero:8X}       |')


imprimeCabecalho()
for i in range(16):
    imprimeLinha(i)
imprimeLinhaHorizontal()
```