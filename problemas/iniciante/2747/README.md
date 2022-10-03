# 2747 - Saída 1

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2747)

## Solução

Nada te impede de só copiar a saída e mandar imprimir, mas aqui eu quis fazer bonitinho, separando as funções pra impressão. Isso vai nos ajudar nos problemas [2748 - Saída 2](../2748/README.md) e [2749 - Saída 3](../2749/README.md).

### C99

```c
#include <stdio.h>

void imprimeLinha()
{
    for (int i = 0; i < 39; ++i)
    {
        printf("-");
    }
    printf("\n");
}

void imprimeMeio()
{
    printf("|");
    for (int i = 0; i < 37; ++i)
    {
        printf(" ");
    }
    printf("|\n");
}

int main()
{
    imprimeLinha();
    for (int i = 0; i < 5; ++i)
    {
        imprimeMeio();
    }
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

void imprimirMeio()
{
    cout << '|';
    for (int i = 0; i < 37; ++i)
    {
        cout << ' ';
    }
    cout << '|' << endl;
}

int main()
{
    imprimirLinha();
    for (int i = 0; i < 5; ++i)
    {
        imprimirMeio();
    }
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
            Console.Write('-');
        }
        Console.Write('\n');
    }

    static void imprimeMeio(){
        Console.Write('|');
        for(int i = 0; i < 37; ++i){
            Console.Write(' ');
        }
        Console.Write("|\n");
    }

    static void Main(string[] args) {
        imprimeLinha();
        for(int i = 0; i < 5; ++i){
            imprimeMeio();
        }
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
            System.out.print('-');
        }
        System.out.print('\n');
    }

    public static void imprimeMeio() {
        System.out.print('|');
        for (int i = 0; i < 37; ++i) {
            System.out.print(' ');
        }
        System.out.print("|\n");
    }

    public static void main(String[] args) throws IOException {
        imprimeLinha();
        for (int i = 0; i < 5; ++i) {
            imprimeMeio();
        }
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
    let linha = '|';
    for (let i = 0; i < indice - 2; ++i) {
        linha += ' ';
    }
    linha += texto;

    let resto = 37 - Math.max(0, indice - 2) - texto.length;
    for (let i = 0; i < resto; ++i) {
        linha += ' ';
    }
    linha += '|';
    console.log(linha);
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


def imprimeMeio():
    print(f'|{" " * 37}|')


imprimeLinha()
for _ in range(5):
    imprimeMeio()
imprimeLinha()
```