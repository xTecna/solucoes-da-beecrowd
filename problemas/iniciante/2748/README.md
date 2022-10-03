# 2748 - Saída 2

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2748)

## Solução

Nada impede de copiar a saída e mandar o programa retornar apenas isso, mas aqui alteramos as funções do problema [2748 - Saída 1](../2748/README.md) para fazer uma solução mais sofisticada.

### C99

```c
#include <stdlib.h>
#include <stdio.h>

int max(int a, int b)
{
    return a > b ? a : b;
}

void imprimeLinha()
{
    for (int i = 0; i < 39; ++i)
    {
        printf("-");
    }
    printf("\n");
}

void imprimeMeio(char *texto, int indice)
{
    printf("|");
    for (int i = 0; i < indice - 2; ++i)
    {
        printf(" ");
    }
    printf("%s", texto);
    int resto = 37 - max(0, indice - 2) - strlen(texto);
    for (int i = 0; i < resto; ++i)
    {
        printf(" ");
    }
    printf("|\n");
}

int main()
{
    imprimeLinha();
    imprimeMeio("Roberto", 10);
    imprimeMeio("", 1);
    imprimeMeio("5786", 10);
    imprimeMeio("", 1);
    imprimeMeio("UNIFEI", 10);
    imprimeLinha();

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

void imprimirLinha()
{
    for (int i = 0; i < 39; ++i)
    {
        cout << '-';
    }
    cout << endl;
}

void imprimirMeio(string texto, int indice)
{
    cout << '|';
    for (int i = 0; i < indice - 2; ++i)
    {
        cout << ' ';
    }
    cout << texto;

    int resto = 37 - max(0, indice - 2) - texto.length();
    for (int i = 0; i < resto; ++i)
    {
        cout << ' ';
    }
    cout << '|' << endl;
}

int main()
{
    imprimirLinha();
    imprimirMeio("Roberto", 10);
    imprimirMeio("", 1);
    imprimirMeio("5786", 10);
    imprimirMeio("", 1);
    imprimirMeio("UNIFEI", 10);
    imprimirLinha();

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void imprimeLinha(){
        for(int i = 0; i < 39; ++i){
            Console.Write("-");
        }
        Console.WriteLine("");
    }

    static void imprimeMeio(string texto, int indice){
        Console.Write("|");
        for(int i = 0; i < indice - 2; ++i){
            Console.Write(" ");
        }
        Console.Write(texto);

        int resto = 37 - Math.Max(0, indice - 2) - texto.Length;
        for(int i = 0; i < resto; ++i){
            Console.Write(" ");
        }
        Console.WriteLine("|");
    }

    static void Main(string[] args) {
        imprimeLinha();
        imprimeMeio("Roberto", 10);
        imprimeMeio("", 1);
        imprimeMeio("5786", 10);
        imprimeMeio("", 1);
        imprimeMeio("UNIFEI", 10);
        imprimeLinha();
    }
}
```

### Java 14

```java
import java.io.IOException;

public class Main {
    public static void imprimeLinha() {
        for (int i = 0; i < 39; ++i) {
            System.out.print("-");
        }
        System.out.println("");
    }

    public static void imprimeMeio(String texto, int indice) {
        System.out.print("|");
        for (int i = 0; i < indice - 2; ++i) {
            System.out.print(" ");
        }
        System.out.print(texto);

        int resto = 37 - Math.max(0, indice - 2) - texto.length();
        for (int i = 0; i < resto; ++i) {
            System.out.print(" ");
        }
        System.out.println("|");
    }

    public static void main(String[] args) throws IOException {
        imprimeLinha();
        imprimeMeio("Roberto", 10);
        imprimeMeio("", 1);
        imprimeMeio("5786", 10);
        imprimeMeio("", 1);
        imprimeMeio("UNIFEI", 10);
        imprimeLinha();
    }
}
```

### Javascript 12.18

```js
const imprimeLinha = () => {
    let linha = '';
    for (let i = 0; i < 39; ++i) {
        linha += '-';
    }
    console.log(linha);
};

const imprimeMeio = (texto, indice) => {
    let espacos = Math.max(0, indice - 2) + texto.length;
    let resto = 37 - espacos + 1;
    console.log('|' + texto.padStart(espacos) + '|'.padStart(resto));
};

imprimeLinha();
imprimeMeio("Roberto", 10);
imprimeMeio("", 1);
imprimeMeio("5786", 10);
imprimeMeio("", 1);
imprimeMeio("UNIFEI", 10);
imprimeLinha();
```

### Python 3.9

```py
def imprimeLinha():
    print('-' * 39)


def imprimeMeio(texto, indice):
    print(
        f'|{" " * (indice - 2)}{texto}{" " * (37 - max(0, indice - 2) - len(texto))}|')


imprimeLinha()
imprimeMeio('Roberto', 10)
imprimeMeio('', 1)
imprimeMeio('5786', 10)
imprimeMeio('', 1)
imprimeMeio('UNIFEI', 10)
imprimeLinha()
```