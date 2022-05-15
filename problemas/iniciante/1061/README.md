# 1061 - Tempo de um Evento

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1061)

## Solução

Vide problema [1047 - Tempo de Jogo com Minutos](../1047/README.md).

### C99

```c
#include <stdio.h>

int converte(int dia, int hora, int minutos, int segundos)
{
    return (24 * 60 * 60 * dia) + (60 * 60 * hora) + (60 * minutos) + segundos;
}

int main()
{
    int d_inicial, h_inicial, m_inicial, s_inicial, d_final, h_final, m_final, s_final;

    scanf("Dia %d\n", &d_inicial);
    scanf("%d : %d : %d\n", &h_inicial, &m_inicial, &s_inicial);
    scanf("Dia %d\n", &d_final);
    scanf("%d : %d : %d\n", &h_final, &m_final, &s_final);

    int inicial = converte(d_inicial, h_inicial, m_inicial, s_inicial);
    int final = converte(d_final, h_final, m_final, s_final);
    int duracao = final - inicial;

    printf("%d dia(s)\n", duracao / (24 * 60 * 60));
    duracao %= 24 * 60 * 60;
    printf("%d hora(s)\n", duracao / (60 * 60));
    duracao %= 60 * 60;
    printf("%d minuto(s)\n", duracao / 60);
    duracao %= 60;
    printf("%d segundo(s)\n", duracao);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int converte(int dia, int hora, int minuto, int segundo)
{
    return (24 * 60 * 60) * dia + (60 * 60) * hora + 60 * minuto + segundo;
}

int main()
{
    string lixo;
    int d_inicial, h_inicial, m_inicial, s_inicial, d_final, h_final, m_final, s_final;

    cin >> lixo >> d_inicial;
    cin >> h_inicial >> lixo >> m_inicial >> lixo >> s_inicial;
    cin >> lixo >> d_final;
    cin >> h_final >> lixo >> m_final >> lixo >> s_final;

    int inicial = converte(d_inicial, h_inicial, m_inicial, s_inicial);
    int final = converte(d_final, h_final, m_final, s_final);

    int duracao = final - inicial;

    cout << duracao / (24 * 60 * 60) << " dia(s)" << endl;
    duracao %= (24 * 60 * 60);
    cout << duracao / (60 * 60) << " hora(s)" << endl;
    duracao %= (60 * 60);
    cout << duracao / 60 << " minuto(s)" << endl;
    duracao %= 60;
    cout << duracao << " segundo(s)" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static int converte(int dia, int hora, int minuto, int segundo){
        return (24 * 60 * 60) * dia + (60 * 60) * hora + 60 * minuto + segundo;
    }

    static void Main(string[] args) {
        string[] entrada;
        int d_inicial, h_inicial, m_inicial, s_inicial, d_final, h_final, m_final, s_final;

        d_inicial = int.Parse(Console.ReadLine().Trim().Split(' ')[1]);
        entrada = Console.ReadLine().Trim().Split(':');
        h_inicial = int.Parse(entrada[0].Trim());
        m_inicial = int.Parse(entrada[1].Trim());
        s_inicial = int.Parse(entrada[2].Trim());
        d_final = int.Parse(Console.ReadLine().Trim().Split(' ')[1]);
        entrada = Console.ReadLine().Trim().Split(':');
        h_final = int.Parse(entrada[0].Trim());
        m_final = int.Parse(entrada[1].Trim());
        s_final = int.Parse(entrada[2].Trim());

        int inicial = converte(d_inicial, h_inicial, m_inicial, s_inicial);
        int final = converte(d_final, h_final, m_final, s_final);

        int duracao = final - inicial;

        Console.WriteLine($"{duracao/(24 * 60 * 60)} dia(s)");
        duracao %= (24 * 60 * 60);
        Console.WriteLine($"{duracao/(60 * 60)} hora(s)");
        duracao %= (60 * 60);
        Console.WriteLine($"{duracao/60} minuto(s)");
        duracao %= 60;
        Console.WriteLine($"{duracao} segundo(s)");
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int converte(int dia, int hora, int minuto, int segundo){
        return (24 * 60 * 60) * dia + (60 * 60) * hora + 60 * minuto + segundo;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        String[] entrada;
        int d_inicial, h_inicial, m_inicial, s_inicial, d_final, h_final, m_final, s_final;

        d_inicial = Integer.parseInt(in.readLine().split(" ")[1]);
        entrada = in.readLine().split(":");
        h_inicial = Integer.parseInt(entrada[0].trim());
        m_inicial = Integer.parseInt(entrada[1].trim());
        s_inicial = Integer.parseInt(entrada[2].trim());
        d_final = Integer.parseInt(in.readLine().split(" ")[1]);
        entrada = in.readLine().split(":");
        h_final = Integer.parseInt(entrada[0].trim());
        m_final = Integer.parseInt(entrada[1].trim());
        s_final = Integer.parseInt(entrada[2].trim());

        int comeco = converte(d_inicial, h_inicial, m_inicial, s_inicial);
        int fim = converte(d_final, h_final, m_final, s_final);

        int duracao = fim - comeco;

        System.out.printf("%d dia(s)\n", duracao / (24 * 60 * 60));
        duracao %= (24 * 60 * 60);
        System.out.printf("%d hora(s)\n", duracao / (60 * 60));
        duracao %= (60 * 60);
        System.out.printf("%d minuto(s)\n", duracao / 60);
        duracao %= 60;
        System.out.printf("%d segundo(s)\n", duracao);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let converte = (dia, hora, minuto, segundo) => (24 * 60 * 60) * dia + (60 * 60) * hora + 60 * minuto + segundo;

let d_inicial = parseInt(lines.shift().split(' ')[1]);
let [h_inicial, m_inicial, s_inicial] = lines.shift().split(':').map((x) => parseInt(x.trim()));
let d_final = parseInt(lines.shift().split(' ')[1]);
let [h_final, m_final, s_final] = lines.shift().split(':').map((x) => parseInt(x.trim()));

let inicial = converte(d_inicial, h_inicial, m_inicial, s_inicial);
let final = converte(d_final, h_final, m_final, s_final);

let duracao = final - inicial;

console.log(`${Math.floor(duracao / (24 * 60 * 60))} dia(s)`);
duracao %= (24 * 60 * 60);
console.log(`${Math.floor(duracao / (60 * 60))} hora(s)`);
duracao %= (60 * 60);
console.log(`${Math.floor(duracao / 60)} minuto(s)`);
duracao %= 60;
console.log(`${duracao} segundo(s)`);
```

### Python 3.9

```py
def converte(dia, hora, minuto, segundo):
    return (24 * 60 * 60) * dia + (60 * 60) * hora + 60 * minuto + segundo


d_inicial = int(input().split(' ')[1])
h_inicial, m_inicial, s_inicial = [int(x) for x in input().split(' : ')]
d_final = int(input().split(' ')[1])
h_final, m_final, s_final = [int(x) for x in input().split(' : ')]

inicial = converte(d_inicial, h_inicial, m_inicial, s_inicial)
final = converte(d_final, h_final, m_final, s_final)

duracao = final - inicial

print(f'{duracao//(24 * 60 * 60)} dia(s)')
duracao %= (24 * 60 * 60)
print(f'{duracao//(60 * 60)} hora(s)')
duracao %= (60 * 60)
print(f'{duracao//60} minuto(s)')
duracao %= 60
print(f'{duracao} segundo(s)')
```