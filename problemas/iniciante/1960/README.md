# 1960 - Numeração Romana para Números de Página

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1960)

## Solução

Vamos pensar na regra básica de numeração romana para números com apenas um dígito. Para um número com um dígito, a regra é a seguinte:

| Dígito | Conversão | Motivo |
| -- | -- | -- |
| 0 | _(nada)_ | Não existia o conceito de número zero na numeração romana. |
| 1 | `I` | `I` representa 1. |
| 2 | `II` | 1 + 1 |
| 3 | `III` | 1 + 1 + 1 |
| 4 | `IV` | O número quatro é representado com o número 5 e o número 1 que vem antes significa que devemos diminuir 1 desse 5, daí fica 4. |
| 5 | `V` | `V` representa 5. |
| 6 | `VI` | 5 + 1 |
| 7 | `VII` | 5 + 2 |
| 8 | `VIII` | 5 + 3 |
| 9 | `IX` | Mesmo raciocínio do quatro, representando o número 10 e o número 1 diminuindo 1 desse 10, aí fica 9. |

Com isso, podemos ver que temos 9 possibilidades diferentes envolvendo os símbolos `I`, `V` e `X`, com `I` representando 1, `V` representando 5 e `X` representando 10. Se você for reparar, se fizéssemos essa mesma tabela para os números de 0 até 90 pulando de 10 em 10, essa tabela não ficaria muito diferente, só mudariam os símbolos envolvidos. Vamos tentar?

| Número | Conversão |
| -- | -- |
| 0 | _(nada)_ |
| 10 | `X` |
| 20 | `XX` |
| 30 | `XXX` |
| 40 | `XL` |
| 50 | `L` |
| 60 | `LX` |
| 70 | `LXX` |
| 80 | `LXXX` |
| 90 | `LC` |

Uma tabela igualzinha à acima, só que envolvendo os símbolos `X` representando 10, `L` representando 50 e `C` representando 100.

Daí como faríamos para representar um número como 75? Basta concatenarmos as duas conversões pelas tabelas. Fazendo isso teríamos como resposta `LXXV`. E se fosse o número 86? `LXXXVI`. Com esse raciocínio, podemos pensar num algoritmo que tendo o dígito e os símbolos para representação de um, cinco e dez da ordem de grandeza, podemos descobrir sua conversão para números romanos.

### C99

```c
#include <stdio.h>

void escreve(int digito, char um, char cinco, char dez)
{
    if (digito == 9)
    {
        printf("%c%c", um, dez);
        return;
    }
    else if (digito == 4)
    {
        printf("%c%c", um, cinco);
        return;
    }

    if (digito > 4)
    {
        printf("%c", cinco);
        digito -= 5;
    }
    for (int i = 0; i < digito; ++i)
    {
        printf("%c", um);
    }
}

int main()
{
    int N;

    scanf("%d", &N);

    escreve(N / 100, 'C', 'D', 'M');
    N %= 100;
    escreve(N / 10, 'X', 'L', 'C');
    N %= 10;
    escreve(N, 'I', 'V', 'X');
    printf("\n");

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

string converte(int digito, string um, string cinco, string dez)
{
    if (digito == 9)
    {
        return um + dez;
    }
    else if (digito == 4)
    {
        return um + cinco;
    }

    string resposta = "";
    if (digito > 4)
    {
        resposta = cinco;
        digito -= 5;
    }
    for (int i = 0; i < digito; ++i)
    {
        resposta += um;
    }

    return resposta;
}

int main()
{
    int N;

    cin >> N;

    cout << converte(N / 100, "C", "D", "M");
    N %= 100;
    cout << converte(N / 10, "X", "L", "C");
    N %= 10;
    cout << converte(N, "I", "V", "X");
    cout << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static string converte(int digito, string um, string cinco, string dez)
    {
        if (digito == 9)
        {
            return um + dez;
        }
        else if (digito == 4)
        {
            return um + cinco;
        }

        string resposta = "";
        if (digito > 4)
        {
            resposta = cinco;
            digito -= 5;
        }
        for (int i = 0; i < digito; ++i)
        {
            resposta += um;
        }

        return resposta;
    }

    static void Main(string[] args)
    {
        int N = int.Parse(Console.ReadLine());

        Console.Write(converte(N / 100, "C", "D", "M"));
        N %= 100;
        Console.Write(converte(N / 10, "X", "L", "C"));
        N %= 10;
        Console.Write(converte(N, "I", "V", "X"));
        Console.WriteLine("");
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static String converte(int digito, String um, String cinco, String dez) {
        if (digito == 9) {
            return um + dez;
        } else if (digito == 4) {
            return um + cinco;
        }

        String resposta = "";

        if (digito > 4) {
            resposta = cinco;
            digito -= 5;
        }
        for (int i = 0; i < digito; ++i) {
            resposta += um;
        }

        return resposta;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());

        System.out.printf("%s", converte(N / 100, "C", "D", "M"));
        N %= 100;
        System.out.printf("%s", converte(N / 10, "X", "L", "C"));
        N %= 10;
        System.out.printf("%s\n", converte(N, "I", "V", "X"));
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const converte = (digito, um, cinco, dez) => {
    if (digito === 9) {
        return um + dez;
    } else if (digito === 4) {
        return um + cinco;
    }

    let resposta = '';

    if (digito > 4) {
        resposta = cinco;
        digito -= 5;
    }
    for (let i = 0; i < digito; ++i) {
        resposta += um;
    }

    return resposta;
};

let N = parseInt(lines.shift());

let resposta = '';

resposta += converte(Math.floor(N / 100), 'C', 'D', 'M');
N %= 100;
resposta += converte(Math.floor(N / 10), 'X', 'L', 'C');
N %= 10;
resposta += converte(N, 'I', 'V', 'X');

console.log(resposta);
```

### Python 3.9

```py
def converte(digito, um, cinco, dez):
    if(digito == 9):
        return um + dez
    elif(digito == 4):
        return um + cinco
    elif(digito > 4):
        return cinco + (digito - 5) * um
    else:
        return digito * um


N = int(input())

print(converte(N // 100, 'C', 'D', 'M'), end='')
N %= 100
print(converte(N // 10, 'X', 'L', 'C'), end='')
N %= 10
print(converte(N, 'I', 'V', 'X'))
```