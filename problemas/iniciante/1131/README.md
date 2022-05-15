# 1131 - Grenais

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1131)

## Solução

Comece recebendo os gols do Grêmio e do Inter e só a partir dessa primeira entrada, pergunte se vai ter outra no final do `while`, pra ver se você vai dar `break` ou não. Após isso, o cálculo de quem é o campeão é bem direto.

### C99

```c
#include <stdio.h>

int main()
{
    int codigo, pt_inter, pt_gremio, inter, gremio, empate;

    inter = 0;
    gremio = 0;
    empate = 0;
    while (scanf("%d %d", &pt_inter, &pt_gremio) != EOF)
    {
        if (pt_inter > pt_gremio)
        {
            ++inter;
        }
        else if (pt_inter == pt_gremio)
        {
            ++empate;
        }
        else
        {
            ++gremio;
        }

        printf("Novo grenal (1-sim 2-nao)\n");
        scanf("%d", &codigo);
        if (codigo != 1)
        {
            break;
        }
    }

    printf("%d grenais\n", inter + gremio + empate);
    printf("Inter:%d\n", inter);
    printf("Gremio:%d\n", gremio);
    printf("Empates:%d\n", empate);

    if (inter > gremio)
    {
        printf("Inter venceu mais\n");
    }
    else if (inter == gremio)
    {
        printf("Nao houve vencedor\n");
    }
    else
    {
        printf("Gremio venceu mais\n");
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int codigo, pt_inter, pt_gremio, inter, gremio, empate;

    inter = 0;
    gremio = 0;
    empate = 0;
    while (cin >> pt_inter >> pt_gremio)
    {
        if (pt_inter > pt_gremio)
        {
            ++inter;
        }
        else if (pt_inter == pt_gremio)
        {
            ++empate;
        }
        else
        {
            ++gremio;
        }

        cout << "Novo grenal (1-sim 2-nao)" << endl;
        cin >> codigo;
        if (codigo != 1)
        {
            break;
        }
    }

    cout << inter + gremio + empate << " grenais" << endl;
    cout << "Inter:" << inter << endl;
    cout << "Gremio:" << gremio << endl;
    cout << "Empates:" << empate << endl;

    if (inter > gremio)
    {
        cout << "Inter venceu mais" << endl;
    }
    else if (inter == gremio)
    {
        cout << "Nao houve vencedor" << endl;
    }
    else
    {
        cout << "Gremio venceu mais" << endl;
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
        int pt_inter, pt_gremio, inter, gremio, empate;

        inter = 0;
        gremio = 0;
        empate = 0;
        while((entrada = Console.ReadLine()) != null){
            pt_inter = int.Parse(entrada.Split(' ')[0]);
            pt_gremio = int.Parse(entrada.Split(' ')[1]);

            if(pt_inter > pt_gremio){
                ++inter;
            }else if(pt_inter == pt_gremio){
                ++empate;
            }else{
                ++gremio;
            }

            Console.WriteLine("Novo grenal (1-sim 2-nao)");
            entrada = Console.ReadLine().Trim();
            if(entrada != "1"){
                break;
            }
        }

        Console.WriteLine($"{inter + gremio + empate} grenais");
        Console.WriteLine($"Inter:{inter}");
        Console.WriteLine($"Gremio:{gremio}");
        Console.WriteLine($"Empates:{empate}");

        if(inter > gremio){
            Console.WriteLine("Inter venceu mais");
        }else if(inter == gremio){
            Console.WriteLine("Nao houve vencedor");
        }else{
            Console.WriteLine("Gremio venceu mais");
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
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int inter, gremio, empate;
    
        inter = 0;
        gremio = 0;
        empate = 0;
        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");
            int pt_inter = Integer.parseInt(entrada[0]);
            int pt_gremio = Integer.parseInt(entrada[1]);

            if(pt_inter > pt_gremio){
                ++inter;
            }else if(pt_inter == pt_gremio){
                ++empate;
            }else{
                ++gremio;
            }

            System.out.println("Novo grenal (1-sim 2-nao)");
            String codigo = in.readLine();
            if(!codigo.equals("1")){
                break;
            }
        }

        System.out.printf("%d grenais\n", inter + gremio + empate);
        System.out.printf("Inter:%d\n", inter);
        System.out.printf("Gremio:%d\n", gremio);
        System.out.printf("Empates:%d\n", empate);
        
        if(inter > gremio){
            System.out.println("Inter venceu mais");
        }else if(inter == gremio){
            System.out.println("Nao houve vencedor");
        }else{
            System.out.println("Gremio venceu mais");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [inter, gremio, empate] = [0, 0, 0];
while (lines.length) {
    let [pt_inter, pt_gremio] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if (pt_inter > pt_gremio) {
        ++inter;
    } else if (pt_inter === pt_gremio) {
        ++empate;
    } else {
        ++gremio;
    }

    console.log('Novo grenal (1-sim 2-nao)');
    let codigo = lines.shift().trim();
    if (codigo !== '1') {
        break;
    }
}

console.log(`${inter + gremio + empate} grenais`);
console.log(`Inter:${inter}`);
console.log(`Gremio:${gremio}`);
console.log(`Empates:${empate}`);

if (inter > gremio) {
    console.log('Inter venceu mais');
} else if (inter === gremio) {
    console.log('Nao houve vencedor');
} else {
    console.log('Gremio venceu mais');
}
```

### Python 3.9

```py
inter, gremio, empate = 0, 0, 0

while True:
    try:
        pt_inter, pt_gremio = [int(x) for x in input().strip().split(' ')]

        if(pt_inter > pt_gremio):
            inter += 1
        elif(pt_inter == pt_gremio):
            empate += 1
        else:
            gremio += 1

        print('Novo grenal (1-sim 2-nao)')
        codigo = input()
        if(codigo != '1'):
            break
    except EOFError:
        break

print(f'{inter + gremio + empate} grenais')
print(f'Inter:{inter}')
print(f'Gremio:{gremio}')
print(f'Empates:{empate}')

if(inter > gremio):
    print('Inter venceu mais')
elif(inter == gremio):
    print('Nao houve vencedor')
else:
    print('Gremio venceu mais')

```