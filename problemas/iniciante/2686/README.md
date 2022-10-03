# 2686 - A Mudança Continua!!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2686)

## Solução

Vide problema [2685 - A Mudança](../2685/README.md) para entender como é feita a classificação entre dia, tarde, noite e madrugada, com a única ressalva de que agora é necessário ver o caso em que $M = 360$, já que não é possível fazer módulo em ponto flutuante.

Cada ângulo significa $240$ segundos no dia (já que $360º$ representa um dia inteiro e um dia tem $86400$ segundos), com isso, para tirarmos o dia podemos ver a quantidade de segundos que se passou pelo ângulo e converter novamente em um horário no formato correto em horas, minutos e segundos (vide problema [1019 - Conversão de Tempo](./1019/README.md) para entender como isso funciona). Um detalhe é que o ângulo $0º$ representa $06:00:00$, então é preciso somar os segundos decorridos a partir das $06:00:00$ (que seriam $21600$ segundos) e, para não passar de $24$ horas, é preciso normalizar a quantidade de segundos antes de fazer a conversão, ou seja, fazer módulo $84600$ (a quantidade de segundos no dia). Como eu não lembro desses dois números de cabeça, eu evitei a fadiga e só apliquei a própria função aos ângulos corretos ($90º$ e $360º$).

### C99

```c
#include <stdio.h>

int tempoDecorrido(double angulo)
{
    return angulo * 240;
}

int converte(double angulo)
{
    return (tempoDecorrido(angulo) + tempoDecorrido(90)) % tempoDecorrido(360);
}

int main()
{
    double M;

    while (scanf("%lf", &M) != EOF)
    {
        if (M < 90.0 || M == 360.0)
        {
            printf("Bom Dia!!\n");
        }
        else if (M < 180.0)
        {
            printf("Boa Tarde!!\n");
        }
        else if (M < 270.0)
        {
            printf("Boa Noite!!\n");
        }
        else
        {
            printf("De Madrugada!!\n");
        }

        int tempo = converte(M);
        int horas = tempo / 3600;
        tempo %= 3600;
        int minutos = tempo / 60;
        int segundos = tempo % 60;

        printf("%02d:%02d:%02d\n", horas, minutos, segundos);
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int tempoDecorrido(double angulo)
{
    return angulo * 240;
}

int converte(double angulo)
{
    return (tempoDecorrido(angulo) + tempoDecorrido(90)) % tempoDecorrido(360);
}

int main()
{
    double M;

    while (cin >> M)
    {
        if (M < 90.0 || M == 360.0)
        {
            cout << "Bom Dia!!" << endl;
        }
        else if (M < 180.0)
        {
            cout << "Boa Tarde!!" << endl;
        }
        else if (M < 270.0)
        {
            cout << "Boa Noite!!" << endl;
        }
        else
        {
            cout << "De Madrugada!!" << endl;
        }

        int tempo = converte(M);
        int horas = tempo / 3600;
        tempo %= 3600;
        int minutos = tempo / 60;
        int segundos = tempo % 60;

        cout << setw(2) << setfill('0') << horas << ':' << setw(2) << setfill('0') << minutos << ':' << setw(2) << setfill('0') << segundos << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static int converte(double angulo){
        return (int)(angulo * 240);
    }

    static int tempoDecorrido(double angulo){
        return (converte(angulo) + converte(90)) % converte(360);
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            double M = double.Parse(entrada);

            if (M < 90.0 || M == 360.0)
            {
                Console.WriteLine("Bom Dia!!");
            }
            else if (M < 180.0)
            {
                Console.WriteLine("Boa Tarde!!");
            }
            else if (M < 270.0)
            {
                Console.WriteLine("Boa Noite!!");
            }
            else
            {
                Console.WriteLine("De Madrugada!!");
            }

            int tempo = tempoDecorrido(M);
            int horas = tempo / 3600;
            tempo %= 3600;
            int minutos = tempo / 60;
            int segundos = tempo % 60;

            Console.WriteLine($"{horas:D2}:{minutos:D2}:{segundos:D2}");
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int tempoDecorrido(double angulo) {
        return (int) (angulo * 240);
    }

    public static int converte(double angulo) {
        return (tempoDecorrido(angulo) + tempoDecorrido(90)) % tempoDecorrido(360);
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            double M = Double.parseDouble(in.readLine());

            if (M < 90.0 || M == 360.0) {
                System.out.println("Bom Dia!!");
            } else if (M < 180.0) {
                System.out.println("Boa Tarde!!");
            } else if (M < 270.0) {
                System.out.println("Boa Noite!!");
            } else {
                System.out.println("De Madrugada!!");
            }

            int tempo = converte(M);
            int horas = tempo / 3600;
            tempo %= 3600;
            int minutos = tempo / 60;
            int segundos = tempo % 60;

            System.out.printf("%02d:%02d:%02d\n", horas, minutos, segundos);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const converte = (angulo) => angulo * 240;
const tempoDecorrido = (angulo) => (converte(angulo) + converte(90)) % converte(360);

while (lines.length) {
    let M = parseFloat(lines.shift());

    if (M < 90.0 || M === 360.0) {
        console.log('Bom Dia!!');
    } else if (M < 180.0) {
        console.log('Boa Tarde!!');
    } else if (M < 270.0) {
        console.log('Boa Noite!!');
    } else {
        console.log('De Madrugada!!');
    }

    let tempo = tempoDecorrido(M);
    let horas = Math.floor(tempo / 3600);
    tempo %= 3600;
    let minutos = Math.floor(tempo / 60);
    let segundos = tempo % 60;

    console.log(`${horas.toString().padStart(2, '0')}:${minutos.toString().padStart(2, '0')}:${segundos.toString().padStart(2, '0')}`);
}
```

### Python 3.9

```py
def converte(angulo):
    return int(angulo * 240)


def tempoDecorrido(angulo):
    return (converte(angulo) + converte(90)) % converte(360)


while True:
    try:
        M = float(input())

        if(M < 90.0 or M == 360.0):
            print('Bom Dia!!')
        elif(M < 180.0):
            print('Boa Tarde!!')
        elif(M < 270.0):
            print('Boa Noite!!')
        else:
            print('De Madrugada!!')

        tempo = tempoDecorrido(M)
        horas = tempo // 3600
        tempo %= 3600
        minutos = tempo // 60
        segundos = tempo % 60

        print(f'{horas:02d}:{minutos:02d}:{segundos:02d}')
    except EOFError:
        break
```